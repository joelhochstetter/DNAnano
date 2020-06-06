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
	<24.442875, 35.105896, 34.530483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.500338, 34.898956, 34.867935>,  <24.534815, 34.774792, 35.070408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.500338, 34.898956, 34.867935>,  <24.442875, 35.105896, 34.530483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.500338, 34.898956, 34.867935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975126, 0.219399, -0.031506,
		-0.168792, 0.827171, 0.536002,
		0.143659, -0.517351, 0.843629,
		24.543436, 34.743752, 35.121025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.414314, 35.801620, 34.313694>,  <24.442875, 35.105896, 34.530483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.414314, 35.801620, 34.313694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724197, 35.746761, 34.560600>,  <24.910128, 35.713844, 34.708744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724197, 35.746761, 34.560600>,  <24.414314, 35.801620, 34.313694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.724197, 35.746761, 34.560600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384746, 0.876931, -0.288034,
		-0.501794, 0.460632, 0.732134,
		0.774709, -0.137152, 0.617265,
		24.956610, 35.705616, 34.745781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.553253, 36.511520, 34.687893>,  <24.414314, 35.801620, 34.313694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.553253, 36.511520, 34.687893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894156, 36.303745, 34.712681>,  <25.098698, 36.179081, 34.727554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.894156, 36.303745, 34.712681>,  <24.553253, 36.511520, 34.687893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.894156, 36.303745, 34.712681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518402, 0.822741, -0.233148,
		0.070117, 0.230829, 0.970465,
		0.852258, -0.519438, 0.061974,
		25.149834, 36.147915, 34.731274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.967222, 37.065388, 34.960667>,  <24.553253, 36.511520, 34.687893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.967222, 37.065388, 34.960667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.222689, 36.780415, 34.844360>,  <25.375969, 36.609428, 34.774578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.222689, 36.780415, 34.844360>,  <24.967222, 37.065388, 34.960667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.222689, 36.780415, 34.844360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701623, 0.694324, -0.160122,
		0.315960, -0.101741, 0.943302,
		0.638666, -0.712435, -0.290763,
		25.414288, 36.566685, 34.757130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.609192, 37.222095, 35.314896>,  <24.967222, 37.065388, 34.960667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.609192, 37.222095, 35.314896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718225, 36.977005, 35.018177>,  <25.783646, 36.829952, 34.840145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718225, 36.977005, 35.018177>,  <25.609192, 37.222095, 35.314896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718225, 36.977005, 35.018177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824490, 0.546140, -0.148143,
		0.495896, -0.571223, 0.654057,
		0.272584, -0.612728, -0.741797,
		25.800001, 36.793186, 34.795639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333546, 37.007622, 35.451546>,  <25.609192, 37.222095, 35.314896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333546, 37.007622, 35.451546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234213, 36.979012, 35.065132>,  <26.174612, 36.961845, 34.833286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234213, 36.979012, 35.065132>,  <26.333546, 37.007622, 35.451546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234213, 36.979012, 35.065132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753112, 0.612953, -0.238980,
		0.609225, -0.786875, -0.098347,
		-0.248329, -0.071527, -0.966031,
		26.159714, 36.957554, 34.775322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.850878, 37.354511, 34.979088>,  <26.333546, 37.007622, 35.451546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.850878, 37.354511, 34.979088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595081, 37.412453, 34.677078>,  <26.441603, 37.447216, 34.495872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595081, 37.412453, 34.677078>,  <26.850878, 37.354511, 34.979088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595081, 37.412453, 34.677078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671042, 0.584421, -0.456239,
		0.375169, -0.798417, -0.470933,
		-0.639493, 0.144850, -0.755028,
		26.403233, 37.455906, 34.450569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256594, 37.291260, 34.360142>,  <26.850878, 37.354511, 34.979088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256594, 37.291260, 34.360142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942577, 37.518604, 34.261612>,  <26.754168, 37.655010, 34.202492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942577, 37.518604, 34.261612>,  <27.256594, 37.291260, 34.360142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942577, 37.518604, 34.261612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619335, 0.727633, -0.294914,
		0.011617, -0.384078, -0.923227,
		-0.785041, 0.568361, -0.246326,
		26.707066, 37.689114, 34.187714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192013, 37.542202, 33.569462>,  <27.256594, 37.291260, 34.360142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192013, 37.542202, 33.569462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976620, 37.816227, 33.765717>,  <26.847383, 37.980640, 33.883469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.976620, 37.816227, 33.765717>,  <27.192013, 37.542202, 33.569462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.976620, 37.816227, 33.765717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509379, 0.728477, -0.458099,
		-0.671247, 0.003244, -0.741227,
		-0.538480, 0.685063, 0.490640,
		26.815075, 38.021748, 33.912907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145252, 38.037369, 33.111172>,  <27.192013, 37.542202, 33.569462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.145252, 38.037369, 33.111172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053373, 38.222591, 33.453590>,  <26.998245, 38.333725, 33.659042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053373, 38.222591, 33.453590>,  <27.145252, 38.037369, 33.111172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053373, 38.222591, 33.453590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589665, 0.765967, -0.256104,
		-0.774296, 0.445955, -0.448987,
		-0.229699, 0.463053, 0.856050,
		26.984465, 38.361507, 33.710403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841167, 38.626694, 32.886139>,  <27.145252, 38.037369, 33.111172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841167, 38.626694, 32.886139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965425, 38.707050, 33.257763>,  <27.039980, 38.755264, 33.480736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965425, 38.707050, 33.257763>,  <26.841167, 38.626694, 32.886139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965425, 38.707050, 33.257763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623188, 0.694988, -0.358648,
		-0.717731, 0.690388, 0.090704,
		0.310645, 0.200887, 0.929056,
		27.058619, 38.767315, 33.536480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829853, 39.398067, 32.976540>,  <26.841167, 38.626694, 32.886139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829853, 39.398067, 32.976540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085182, 39.206974, 33.217972>,  <27.238380, 39.092319, 33.362831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085182, 39.206974, 33.217972>,  <26.829853, 39.398067, 32.976540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085182, 39.206974, 33.217972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718829, 0.650439, -0.245384,
		-0.275367, 0.590508, 0.758599,
		0.638324, -0.477733, 0.603584,
		27.276680, 39.063656, 33.399048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073624, 39.821476, 33.515835>,  <26.829853, 39.398067, 32.976540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073624, 39.821476, 33.515835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373236, 39.568012, 33.438442>,  <27.553003, 39.415936, 33.392006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373236, 39.568012, 33.438442>,  <27.073624, 39.821476, 33.515835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373236, 39.568012, 33.438442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656123, 0.749981, 0.083850,
		0.091976, -0.189755, 0.977514,
		0.749028, -0.633657, -0.193483,
		27.597944, 39.377914, 33.380398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594538, 39.607067, 34.107513>,  <27.073624, 39.821476, 33.515835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.594538, 39.607067, 34.107513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748451, 39.633705, 33.739273>,  <27.840799, 39.649689, 33.518330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748451, 39.633705, 33.739273>,  <27.594538, 39.607067, 34.107513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748451, 39.633705, 33.739273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468396, 0.845336, 0.256927,
		0.795327, -0.530068, 0.294080,
		0.384786, 0.066595, -0.920600,
		27.863888, 39.653683, 33.463093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245745, 39.391197, 33.919197>,  <27.594538, 39.607067, 34.107513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245745, 39.391197, 33.919197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123217, 39.698650, 33.694569>,  <28.049700, 39.883121, 33.559792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123217, 39.698650, 33.694569>,  <28.245745, 39.391197, 33.919197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123217, 39.698650, 33.694569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545577, 0.625189, 0.558108,
		0.780072, -0.135422, -0.610859,
		-0.306322, 0.768635, -0.561576,
		28.031321, 39.929241, 33.526096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031097, 38.856220, 34.315205>,  <28.245745, 39.391197, 33.919197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031097, 38.856220, 34.315205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757587, 38.971146, 34.046906>,  <27.593481, 39.040100, 33.885925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.757587, 38.971146, 34.046906>,  <28.031097, 38.856220, 34.315205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757587, 38.971146, 34.046906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693055, -0.543325, 0.473785,
		-0.228310, 0.788828, 0.570636,
		-0.683776, 0.287312, -0.670748,
		27.552454, 39.057339, 33.845680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438032, 39.097130, 34.700668>,  <28.031097, 38.856220, 34.315205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438032, 39.097130, 34.700668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316004, 38.976322, 34.339401>,  <27.242786, 38.903839, 34.122639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316004, 38.976322, 34.339401>,  <27.438032, 39.097130, 34.700668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316004, 38.976322, 34.339401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738370, -0.523942, 0.424611,
		-0.601448, 0.796411, -0.063160,
		-0.305073, -0.302017, -0.903170,
		27.224482, 38.885715, 34.068451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660915, 39.074223, 34.755123>,  <27.438032, 39.097130, 34.700668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.660915, 39.074223, 34.755123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767159, 38.868446, 34.428982>,  <26.830904, 38.744980, 34.233295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767159, 38.868446, 34.428982>,  <26.660915, 39.074223, 34.755123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767159, 38.868446, 34.428982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743682, -0.647521, 0.166292,
		-0.613506, 0.562194, -0.554570,
		0.265607, -0.514445, -0.815351,
		26.846840, 38.714111, 34.184376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078897, 38.876652, 34.632122>,  <26.660915, 39.074223, 34.755123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078897, 38.876652, 34.632122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.287720, 38.632370, 34.393959>,  <26.413013, 38.485802, 34.251060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.287720, 38.632370, 34.393959>,  <26.078897, 38.876652, 34.632122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.287720, 38.632370, 34.393959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714195, -0.694613, 0.086247,
		-0.466245, 0.380208, -0.798785,
		0.522054, -0.610700, -0.595403,
		26.444336, 38.449162, 34.215340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.598242, 38.511795, 34.080402>,  <26.078897, 38.876652, 34.632122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.598242, 38.511795, 34.080402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921278, 38.282608, 34.136272>,  <26.115099, 38.145096, 34.169796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921278, 38.282608, 34.136272>,  <25.598242, 38.511795, 34.080402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921278, 38.282608, 34.136272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569105, -0.819262, -0.070204,
		0.154655, -0.022794, -0.987705,
		0.807589, -0.572966, 0.139675,
		26.163555, 38.110718, 34.178177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.417482, 37.945717, 33.664066>,  <25.598242, 38.511795, 34.080402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.417482, 37.945717, 33.664066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720333, 37.808681, 33.886559>,  <25.902044, 37.726460, 34.020054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720333, 37.808681, 33.886559>,  <25.417482, 37.945717, 33.664066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720333, 37.808681, 33.886559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423527, -0.905691, 0.018677,
		0.497375, -0.249719, -0.830818,
		0.757128, -0.342584, 0.556230,
		25.947472, 37.705906, 34.053429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.194056, 37.298012, 33.830837>,  <25.417482, 37.945717, 33.664066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.194056, 37.298012, 33.830837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569035, 37.261929, 33.965332>,  <25.794022, 37.240280, 34.046028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569035, 37.261929, 33.965332>,  <25.194056, 37.298012, 33.830837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569035, 37.261929, 33.965332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191527, -0.940176, 0.281757,
		0.290710, -0.328532, -0.898640,
		0.937446, -0.090205, 0.336242,
		25.850267, 37.234867, 34.066204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.643927, 36.735325, 33.587952>,  <25.194056, 37.298012, 33.830837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.643927, 36.735325, 33.587952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.820150, 36.818909, 33.937176>,  <25.925884, 36.869061, 34.146709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.820150, 36.818909, 33.937176>,  <25.643927, 36.735325, 33.587952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820150, 36.818909, 33.937176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148038, -0.942307, 0.300237,
		0.885433, -0.261520, -0.384209,
		0.440561, 0.208962, 0.873064,
		25.952318, 36.881596, 34.199097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432028, 36.720352, 33.463604>,  <25.643927, 36.735325, 33.587952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432028, 36.720352, 33.463604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344240, 36.703732, 33.853497>,  <26.291567, 36.693760, 34.087433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.344240, 36.703732, 33.853497>,  <26.432028, 36.720352, 33.463604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344240, 36.703732, 33.853497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585602, -0.793486, -0.165681,
		0.780322, -0.607168, 0.149813,
		-0.219470, -0.041553, 0.974734,
		26.278399, 36.691265, 34.145916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.157095, 36.047081, 33.759777>,  <26.432028, 36.720352, 33.463604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.157095, 36.047081, 33.759777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048124, 36.268520, 34.074562>,  <25.982742, 36.401382, 34.263435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.048124, 36.268520, 34.074562>,  <26.157095, 36.047081, 33.759777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048124, 36.268520, 34.074562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534936, -0.766988, 0.354362,
		0.799766, -0.324437, 0.505088,
		-0.272429, 0.553597, 0.786965,
		25.966396, 36.434601, 34.310650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247002, 35.619930, 34.364933>,  <26.157095, 36.047081, 33.759777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247002, 35.619930, 34.364933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996223, 35.912838, 34.471310>,  <25.845757, 36.088581, 34.535137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996223, 35.912838, 34.471310>,  <26.247002, 35.619930, 34.364933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996223, 35.912838, 34.471310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637275, -0.678391, 0.365603,
		0.448131, 0.059735, 0.891970,
		-0.626944, 0.732268, 0.265940,
		25.808140, 36.132519, 34.551090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.167179, 35.646095, 35.138119>,  <26.247002, 35.619930, 34.364933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.167179, 35.646095, 35.138119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.833223, 35.764923, 34.952770>,  <25.632851, 35.836220, 34.841560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.833223, 35.764923, 34.952770>,  <26.167179, 35.646095, 35.138119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.833223, 35.764923, 34.952770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509782, -0.734804, 0.447421,
		-0.207570, 0.609764, 0.764920,
		-0.834888, 0.297071, -0.463370,
		25.582758, 35.854046, 34.813759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620632, 35.720940, 35.694572>,  <26.167179, 35.646095, 35.138119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620632, 35.720940, 35.694572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488249, 35.632851, 35.327538>,  <25.408819, 35.579998, 35.107315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.488249, 35.632851, 35.327538>,  <25.620632, 35.720940, 35.694572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488249, 35.632851, 35.327538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428062, -0.831547, 0.353968,
		-0.840969, 0.509934, 0.180940,
		-0.330960, -0.220223, -0.917588,
		25.388962, 35.566784, 35.052261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.269897, 35.417294, 35.851425>,  <25.620632, 35.720940, 35.694572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.269897, 35.417294, 35.851425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627703, 35.273518, 35.745106>,  <26.842386, 35.187252, 35.681313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627703, 35.273518, 35.745106>,  <26.269897, 35.417294, 35.851425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627703, 35.273518, 35.745106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446910, 0.704481, 0.551342,
		-0.010923, -0.611971, 0.790804,
		0.894512, -0.359441, -0.265801,
		26.896057, 35.165684, 35.665367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635015, 35.540741, 36.443291>,  <26.269897, 35.417294, 35.851425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635015, 35.540741, 36.443291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866940, 35.520470, 36.118019>,  <27.006094, 35.508308, 35.922855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866940, 35.520470, 36.118019>,  <26.635015, 35.540741, 36.443291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866940, 35.520470, 36.118019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538499, 0.772825, 0.335799,
		0.611424, -0.632593, 0.475380,
		0.579810, -0.050676, -0.813174,
		27.040882, 35.505268, 35.874065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351635, 35.413082, 36.694923>,  <26.635015, 35.540741, 36.443291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351635, 35.413082, 36.694923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367731, 35.576050, 36.329983>,  <27.377390, 35.673828, 36.111019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367731, 35.576050, 36.329983>,  <27.351635, 35.413082, 36.694923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367731, 35.576050, 36.329983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550487, 0.752983, 0.360527,
		0.833873, -0.516748, -0.193976,
		0.040242, 0.407415, -0.912356,
		27.379805, 35.698273, 36.056274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033543, 35.589005, 36.694084>,  <27.351635, 35.413082, 36.694923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033543, 35.589005, 36.694084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825974, 35.809616, 36.432846>,  <27.701431, 35.941982, 36.276104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825974, 35.809616, 36.432846>,  <28.033543, 35.589005, 36.694084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825974, 35.809616, 36.432846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392073, 0.832474, 0.391492,
		0.759604, -0.052906, -0.648231,
		-0.518923, 0.551532, -0.653093,
		27.670296, 35.975075, 36.236919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505449, 36.067524, 36.473679>,  <28.033543, 35.589005, 36.694084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505449, 36.067524, 36.473679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150358, 36.227501, 36.382477>,  <27.937304, 36.323486, 36.327755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150358, 36.227501, 36.382477>,  <28.505449, 36.067524, 36.473679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150358, 36.227501, 36.382477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281005, 0.863040, 0.419760,
		0.364659, 0.308561, -0.878529,
		-0.887728, 0.399940, -0.228008,
		27.884041, 36.347485, 36.314075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571320, 36.733593, 36.025070>,  <28.505449, 36.067524, 36.473679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571320, 36.733593, 36.025070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235989, 36.742752, 36.242943>,  <28.034790, 36.748249, 36.373665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235989, 36.742752, 36.242943>,  <28.571320, 36.733593, 36.025070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235989, 36.742752, 36.242943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306634, 0.845901, 0.436380,
		-0.450755, 0.532848, -0.716166,
		-0.838329, 0.022900, 0.544683,
		27.984489, 36.749622, 36.406349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201599, 37.359840, 35.848595>,  <28.571320, 36.733593, 36.025070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201599, 37.359840, 35.848595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146927, 37.223160, 36.220520>,  <28.114124, 37.141151, 36.443676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146927, 37.223160, 36.220520>,  <28.201599, 37.359840, 35.848595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146927, 37.223160, 36.220520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391315, 0.843666, 0.367560,
		-0.910050, 0.414090, 0.018400,
		-0.136680, -0.341698, 0.929818,
		28.105923, 37.120651, 36.499466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012917, 37.951340, 36.363567>,  <28.201599, 37.359840, 35.848595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012917, 37.951340, 36.363567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735519, 37.700867, 36.506100>,  <27.569082, 37.550583, 36.591618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735519, 37.700867, 36.506100>,  <28.012917, 37.951340, 36.363567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735519, 37.700867, 36.506100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148681, 0.359550, 0.921205,
		-0.704957, 0.691826, -0.156243,
		-0.693491, -0.626179, 0.356329,
		27.527472, 37.513012, 36.612999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399244, 38.369057, 36.582794>,  <28.012917, 37.951340, 36.363567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399244, 38.369057, 36.582794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503847, 38.032715, 36.772354>,  <27.566608, 37.830910, 36.886089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503847, 38.032715, 36.772354>,  <27.399244, 38.369057, 36.582794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503847, 38.032715, 36.772354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215372, 0.529437, 0.820555,
		-0.940866, -0.112517, 0.319548,
		0.261508, -0.840854, 0.473896,
		27.582300, 37.780460, 36.914524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967703, 38.255219, 37.230602>,  <27.399244, 38.369057, 36.582794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967703, 38.255219, 37.230602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309895, 38.053112, 37.275955>,  <27.515209, 37.931847, 37.303165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.309895, 38.053112, 37.275955>,  <26.967703, 38.255219, 37.230602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309895, 38.053112, 37.275955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231370, 0.568834, 0.789237,
		-0.463272, -0.648945, 0.603531,
		0.855481, -0.505270, 0.113378,
		27.566538, 37.901531, 37.309967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079588, 38.205379, 37.952637>,  <26.967703, 38.255219, 37.230602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079588, 38.205379, 37.952637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446766, 38.161549, 37.800125>,  <27.667072, 38.135250, 37.708618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446766, 38.161549, 37.800125>,  <27.079588, 38.205379, 37.952637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446766, 38.161549, 37.800125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360538, 0.631392, 0.686554,
		0.165503, -0.767683, 0.619090,
		0.917944, -0.109579, -0.381277,
		27.722149, 38.128674, 37.685741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454382, 38.572514, 38.536491>,  <27.079588, 38.205379, 37.952637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454382, 38.572514, 38.536491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845942, 38.576099, 38.618153>,  <28.080877, 38.578251, 38.667149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845942, 38.576099, 38.618153>,  <27.454382, 38.572514, 38.536491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845942, 38.576099, 38.618153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118419, -0.839078, -0.530966,
		0.166538, 0.543937, -0.822434,
		0.978898, 0.008966, 0.204151,
		28.139610, 38.578789, 38.679398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983999, 38.871243, 38.040482>,  <27.454382, 38.572514, 38.536491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983999, 38.871243, 38.040482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066933, 38.551834, 38.266533>,  <28.116693, 38.360188, 38.402164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.066933, 38.551834, 38.266533>,  <27.983999, 38.871243, 38.040482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066933, 38.551834, 38.266533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089391, -0.590729, -0.801903,
		0.974178, 0.115743, -0.193859,
		0.207333, -0.798526, 0.565128,
		28.129133, 38.312275, 38.436073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402443, 38.469250, 37.569706>,  <27.983999, 38.871243, 38.040482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402443, 38.469250, 37.569706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235680, 38.240776, 37.852531>,  <28.135622, 38.103691, 38.022228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235680, 38.240776, 37.852531>,  <28.402443, 38.469250, 37.569706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235680, 38.240776, 37.852531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182070, -0.709647, -0.680625,
		0.890527, -0.412493, 0.191862,
		-0.416908, -0.571183, 0.707063,
		28.110607, 38.069420, 38.064651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736437, 37.806568, 37.470192>,  <28.402443, 38.469250, 37.569706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736437, 37.806568, 37.470192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369413, 37.776718, 37.626404>,  <28.149199, 37.758808, 37.720131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369413, 37.776718, 37.626404>,  <28.736437, 37.806568, 37.470192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369413, 37.776718, 37.626404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270035, -0.603970, -0.749868,
		0.291831, -0.793505, 0.534026,
		-0.917560, -0.074629, 0.390531,
		28.094145, 37.754330, 37.743565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549967, 37.134319, 37.560329>,  <28.736437, 37.806568, 37.470192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549967, 37.134319, 37.560329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230936, 37.369301, 37.505539>,  <28.039516, 37.510292, 37.472664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230936, 37.369301, 37.505539>,  <28.549967, 37.134319, 37.560329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230936, 37.369301, 37.505539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306328, -0.590073, -0.746978,
		-0.519643, -0.553814, 0.650585,
		-0.797580, 0.587455, -0.136979,
		27.991663, 37.545536, 37.464443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937119, 36.695744, 37.523567>,  <28.549967, 37.134319, 37.560329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937119, 36.695744, 37.523567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827192, 37.031387, 37.335793>,  <27.761236, 37.232773, 37.223129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.827192, 37.031387, 37.335793>,  <27.937119, 36.695744, 37.523567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.827192, 37.031387, 37.335793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424347, -0.543959, -0.723905,
		-0.862790, 0.000263, 0.505563,
		-0.274815, 0.839112, -0.469434,
		27.744747, 37.283119, 37.194962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173672, 36.814842, 37.353291>,  <27.937119, 36.695744, 37.523567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173672, 36.814842, 37.353291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416302, 36.977024, 37.079742>,  <27.561880, 37.074333, 36.915615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.416302, 36.977024, 37.079742>,  <27.173672, 36.814842, 37.353291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.416302, 36.977024, 37.079742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462904, -0.519219, -0.718423,
		-0.646363, 0.752343, -0.127260,
		0.606576, 0.405453, -0.683867,
		27.598274, 37.098660, 36.874584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807623, 37.153835, 36.691536>,  <27.173672, 36.814842, 37.353291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807623, 37.153835, 36.691536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.171379, 37.026058, 36.584976>,  <27.389633, 36.949394, 36.521042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.171379, 37.026058, 36.584976>,  <26.807623, 37.153835, 36.691536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.171379, 37.026058, 36.584976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407887, -0.559396, -0.721598,
		0.081485, 0.764875, -0.639005,
		0.909389, -0.319441, -0.266400,
		27.444197, 36.930225, 36.505054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798378, 36.931171, 35.997871>,  <26.807623, 37.153835, 36.691536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798378, 36.931171, 35.997871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140911, 36.746944, 36.091312>,  <27.346432, 36.636410, 36.147377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140911, 36.746944, 36.091312>,  <26.798378, 36.931171, 35.997871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140911, 36.746944, 36.091312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287914, -0.801303, -0.524422,
		0.428715, 0.381824, -0.818788,
		0.856334, -0.460568, 0.233598,
		27.397812, 36.608772, 36.161392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102810, 36.746101, 35.364216>,  <26.798378, 36.931171, 35.997871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102810, 36.746101, 35.364216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286808, 36.504898, 35.624920>,  <27.397207, 36.360176, 35.781342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.286808, 36.504898, 35.624920>,  <27.102810, 36.746101, 35.364216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286808, 36.504898, 35.624920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149426, -0.776130, -0.612611,
		0.875257, 0.184409, -0.447122,
		0.459996, -0.603004, 0.651758,
		27.424807, 36.323997, 35.820446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725636, 36.332218, 35.041576>,  <27.102810, 36.746101, 35.364216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725636, 36.332218, 35.041576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554090, 36.152657, 35.355152>,  <27.451164, 36.044922, 35.543297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554090, 36.152657, 35.355152>,  <27.725636, 36.332218, 35.041576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554090, 36.152657, 35.355152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185887, -0.805376, -0.562863,
		0.884038, -0.387116, 0.261950,
		-0.428861, -0.448900, 0.783943,
		27.425432, 36.017986, 35.590336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753069, 35.655418, 34.744141>,  <27.725636, 36.332218, 35.041576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753069, 35.655418, 34.744141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524834, 35.620945, 35.070824>,  <27.387894, 35.600262, 35.266834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524834, 35.620945, 35.070824>,  <27.753069, 35.655418, 34.744141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524834, 35.620945, 35.070824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373468, -0.858463, -0.351514,
		0.731405, -0.505581, 0.457639,
		-0.570586, -0.086186, 0.816703,
		27.353659, 35.595089, 35.315834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766390, 34.958282, 34.846264>,  <27.753069, 35.655418, 34.744141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766390, 34.958282, 34.846264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474018, 35.083187, 35.088993>,  <27.298595, 35.158131, 35.234631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474018, 35.083187, 35.088993>,  <27.766390, 34.958282, 34.846264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474018, 35.083187, 35.088993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501552, -0.848785, -0.167360,
		0.462804, -0.426683, 0.777016,
		-0.730929, 0.312259, 0.606825,
		27.254740, 35.176865, 35.271042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444880, 34.348244, 35.151428>,  <27.766390, 34.958282, 34.846264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444880, 34.348244, 35.151428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175415, 34.640812, 35.193760>,  <27.013737, 34.816353, 35.219158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175415, 34.640812, 35.193760>,  <27.444880, 34.348244, 35.151428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175415, 34.640812, 35.193760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735155, -0.648545, -0.197322,
		-0.075691, -0.210729, 0.974610,
		-0.673660, 0.731425, 0.105830,
		26.973316, 34.860241, 35.225510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713345, 34.633141, 35.789169>,  <27.444880, 34.348244, 35.151428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713345, 34.633141, 35.789169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095024, 34.607594, 35.906082>,  <28.324032, 34.592266, 35.976231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095024, 34.607594, 35.906082>,  <27.713345, 34.633141, 35.789169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095024, 34.607594, 35.906082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172073, -0.916342, 0.361536,
		0.244741, -0.395271, -0.885360,
		0.954198, -0.063864, 0.292282,
		28.381283, 34.588436, 35.993767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182268, 34.230251, 35.419292>,  <27.713345, 34.633141, 35.789169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182268, 34.230251, 35.419292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.284929, 34.225750, 35.805866>,  <28.346525, 34.223049, 36.037811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.284929, 34.225750, 35.805866>,  <28.182268, 34.230251, 35.419292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284929, 34.225750, 35.805866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016905, -0.999727, -0.016133,
		0.966356, 0.020478, -0.256391,
		0.256651, -0.011256, 0.966439,
		28.361925, 34.222374, 36.095798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752567, 33.897995, 35.346970>,  <28.182268, 34.230251, 35.419292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752567, 33.897995, 35.346970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585096, 33.854343, 35.707592>,  <28.484613, 33.828152, 35.923965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585096, 33.854343, 35.707592>,  <28.752567, 33.897995, 35.346970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585096, 33.854343, 35.707592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008350, -0.992249, -0.123985,
		0.908096, -0.059438, 0.414522,
		-0.418679, -0.109129, 0.901554,
		28.459492, 33.821606, 35.978058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.592445, 33.230522, 35.630123>,  <28.752567, 33.897995, 35.346970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.592445, 33.230522, 35.630123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468138, 33.095047, 35.274887>,  <28.393553, 33.013763, 35.061745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468138, 33.095047, 35.274887>,  <28.592445, 33.230522, 35.630123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468138, 33.095047, 35.274887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781596, -0.622744, -0.036012,
		-0.540859, -0.705323, 0.458249,
		-0.310772, -0.338688, -0.888094,
		28.374907, 32.993443, 35.008457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946081, 33.171608, 36.307953>,  <28.592445, 33.230522, 35.630123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946081, 33.171608, 36.307953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573881, 33.317429, 36.322212>,  <28.350561, 33.404922, 36.330769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573881, 33.317429, 36.322212>,  <28.946081, 33.171608, 36.307953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573881, 33.317429, 36.322212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329979, 0.792036, 0.513608,
		0.159001, 0.489676, -0.857284,
		-0.930501, 0.364550, 0.035648,
		28.294731, 33.426792, 36.332905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017225, 33.879272, 36.217209>,  <28.946081, 33.171608, 36.307953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017225, 33.879272, 36.217209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672712, 33.820152, 36.411671>,  <28.466005, 33.784679, 36.528347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672712, 33.820152, 36.411671>,  <29.017225, 33.879272, 36.217209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672712, 33.820152, 36.411671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222587, 0.750335, 0.622456,
		-0.456781, 0.644323, -0.613351,
		-0.861282, -0.147802, 0.486157,
		28.414328, 33.775810, 36.557518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157322, 34.632229, 36.004173>,  <29.017225, 33.879272, 36.217209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157322, 34.632229, 36.004173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180578, 35.031422, 36.014446>,  <29.194532, 35.270935, 36.020611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.180578, 35.031422, 36.014446>,  <29.157322, 34.632229, 36.004173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180578, 35.031422, 36.014446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294352, 0.007449, -0.955668,
		-0.953927, 0.063123, -0.293324,
		0.058140, 0.997978, 0.025687,
		29.198021, 35.330814, 36.022152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965334, 34.867085, 35.367836>,  <29.157322, 34.632229, 36.004173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965334, 34.867085, 35.367836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185781, 35.174171, 35.498604>,  <29.318050, 35.358425, 35.577065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185781, 35.174171, 35.498604>,  <28.965334, 34.867085, 35.367836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185781, 35.174171, 35.498604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420506, 0.082873, -0.903497,
		-0.720722, 0.635408, -0.277156,
		0.551121, 0.767716, 0.326921,
		29.351118, 35.404488, 35.596680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825521, 35.523262, 34.994999>,  <28.965334, 34.867085, 35.367836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825521, 35.523262, 34.994999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214495, 35.528576, 35.088120>,  <29.447880, 35.531765, 35.143990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214495, 35.528576, 35.088120>,  <28.825521, 35.523262, 34.994999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214495, 35.528576, 35.088120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232935, -0.100651, -0.967270,
		0.010581, 0.994833, -0.100971,
		0.972435, 0.013285, 0.232797,
		29.506226, 35.532562, 35.157959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207716, 36.048508, 34.571255>,  <28.825521, 35.523262, 34.994999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207716, 36.048508, 34.571255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441502, 35.743172, 34.681313>,  <29.581774, 35.559971, 34.747349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441502, 35.743172, 34.681313>,  <29.207716, 36.048508, 34.571255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441502, 35.743172, 34.681313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332149, -0.084311, -0.939451,
		0.740322, 0.640467, 0.204267,
		0.584466, -0.763344, 0.275147,
		29.616842, 35.514168, 34.763855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983257, 36.090927, 34.309135>,  <29.207716, 36.048508, 34.571255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983257, 36.090927, 34.309135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842834, 35.718616, 34.349957>,  <29.758581, 35.495232, 34.374451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842834, 35.718616, 34.349957>,  <29.983257, 36.090927, 34.309135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842834, 35.718616, 34.349957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118802, -0.152385, -0.981155,
		0.928788, -0.332315, 0.164074,
		-0.351055, -0.930777, 0.102054,
		29.737518, 35.439384, 34.380573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389894, 35.398052, 34.013306>,  <29.983257, 36.090927, 34.309135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389894, 35.398052, 34.013306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992115, 35.362633, 33.990582>,  <29.753447, 35.341381, 33.976948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992115, 35.362633, 33.990582>,  <30.389894, 35.398052, 34.013306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992115, 35.362633, 33.990582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076804, -0.241982, -0.967236,
		0.071901, -0.966232, 0.247440,
		-0.994450, -0.088550, -0.056811,
		29.693779, 35.336067, 33.973537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231970, 34.866535, 33.583294>,  <30.389894, 35.398052, 34.013306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231970, 34.866535, 33.583294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894814, 35.078403, 33.545368>,  <29.692520, 35.205524, 33.522614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894814, 35.078403, 33.545368>,  <30.231970, 34.866535, 33.583294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894814, 35.078403, 33.545368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066813, -0.277870, -0.958293,
		-0.533925, -0.801399, 0.269602,
		-0.842889, 0.529669, -0.094818,
		29.641947, 35.237305, 33.516922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514217, 34.490204, 33.520370>,  <30.231970, 34.866535, 33.583294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514217, 34.490204, 33.520370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599640, 34.807014, 33.291603>,  <29.650894, 34.997101, 33.154343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599640, 34.807014, 33.291603>,  <29.514217, 34.490204, 33.520370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599640, 34.807014, 33.291603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057177, -0.574289, -0.816653,
		-0.975256, 0.207102, -0.077357,
		0.213556, 0.792023, -0.571920,
		29.663708, 35.044621, 33.120026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979837, 34.666439, 32.955856>,  <29.514217, 34.490204, 33.520370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979837, 34.666439, 32.955856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331026, 34.808525, 32.827488>,  <29.541739, 34.893776, 32.750469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331026, 34.808525, 32.827488>,  <28.979837, 34.666439, 32.955856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331026, 34.808525, 32.827488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174813, -0.386177, -0.905708,
		-0.445653, 0.851287, -0.276956,
		0.877972, 0.355216, -0.320917,
		29.594418, 34.915089, 32.731213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839436, 35.035973, 32.308132>,  <28.979837, 34.666439, 32.955856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839436, 35.035973, 32.308132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233585, 34.968502, 32.298462>,  <29.470076, 34.928020, 32.292660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233585, 34.968502, 32.298462>,  <28.839436, 35.035973, 32.308132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233585, 34.968502, 32.298462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093947, -0.419383, -0.902935,
		0.142163, 0.892001, -0.429096,
		0.985375, -0.168676, -0.024180,
		29.529198, 34.917900, 32.291206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007362, 35.350513, 31.708059>,  <28.839436, 35.035973, 32.308132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007362, 35.350513, 31.708059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300991, 35.087223, 31.774837>,  <29.477169, 34.929249, 31.814905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300991, 35.087223, 31.774837>,  <29.007362, 35.350513, 31.708059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300991, 35.087223, 31.774837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073328, -0.321241, -0.944154,
		0.675100, 0.680836, -0.284081,
		0.734073, -0.658229, 0.166946,
		29.521214, 34.889755, 31.824921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398052, 35.559727, 31.267105>,  <29.007362, 35.350513, 31.708059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398052, 35.559727, 31.267105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501684, 35.179600, 31.336136>,  <29.563864, 34.951523, 31.377554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501684, 35.179600, 31.336136>,  <29.398052, 35.559727, 31.267105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501684, 35.179600, 31.336136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177913, -0.128664, -0.975599,
		0.949328, 0.283463, 0.135739,
		0.259082, -0.950313, 0.172576,
		29.579409, 34.894505, 31.387909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112226, 35.391487, 30.963457>,  <29.398052, 35.559727, 31.267105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112226, 35.391487, 30.963457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915237, 35.046757, 31.012005>,  <29.797043, 34.839920, 31.041134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915237, 35.046757, 31.012005>,  <30.112226, 35.391487, 30.963457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915237, 35.046757, 31.012005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256578, -0.277018, -0.925974,
		0.831647, -0.424878, 0.357550,
		-0.492474, -0.861823, 0.121367,
		29.767496, 34.788208, 31.048414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497339, 34.952072, 30.751408>,  <30.112226, 35.391487, 30.963457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497339, 34.952072, 30.751408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150070, 34.756454, 30.717678>,  <29.941710, 34.639084, 30.697441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150070, 34.756454, 30.717678>,  <30.497339, 34.952072, 30.751408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150070, 34.756454, 30.717678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236031, -0.257444, -0.937023,
		0.436538, -0.833401, 0.338936,
		-0.868172, -0.489046, -0.084324,
		29.889618, 34.609741, 30.692381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732607, 34.299759, 30.479040>,  <30.497339, 34.952072, 30.751408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732607, 34.299759, 30.479040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340467, 34.313522, 30.401340>,  <30.105185, 34.321781, 30.354721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.340467, 34.313522, 30.401340>,  <30.732607, 34.299759, 30.479040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340467, 34.313522, 30.401340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147030, -0.529038, -0.835763,
		-0.131526, -0.847900, 0.513582,
		-0.980348, 0.034412, -0.194249,
		30.046364, 34.323845, 30.343065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554157, 33.666813, 30.342113>,  <30.732607, 34.299759, 30.479040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554157, 33.666813, 30.342113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241220, 33.859970, 30.184755>,  <30.053459, 33.975864, 30.090342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241220, 33.859970, 30.184755>,  <30.554157, 33.666813, 30.342113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241220, 33.859970, 30.184755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191591, -0.414406, -0.889697,
		-0.592651, -0.771417, 0.231689,
		-0.782341, 0.482891, -0.393394,
		30.006517, 34.004837, 30.066736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310751, 33.184731, 29.862568>,  <30.554157, 33.666813, 30.342113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310751, 33.184731, 29.862568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122929, 33.520782, 29.753979>,  <30.010235, 33.722412, 29.688826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122929, 33.520782, 29.753979>,  <30.310751, 33.184731, 29.862568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122929, 33.520782, 29.753979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003065, -0.309029, -0.951048,
		-0.882898, -0.445738, 0.147681,
		-0.469556, 0.840131, -0.271475,
		29.982061, 33.772823, 29.672537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758970, 32.981350, 29.525040>,  <30.310751, 33.184731, 29.862568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758970, 32.981350, 29.525040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810595, 33.354359, 29.390139>,  <29.841568, 33.578163, 29.309198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810595, 33.354359, 29.390139>,  <29.758970, 32.981350, 29.525040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810595, 33.354359, 29.390139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037388, -0.335279, -0.941377,
		-0.990932, 0.134102, -0.008406,
		0.129059, 0.932526, -0.337252,
		29.849312, 33.634117, 29.288963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234425, 33.022102, 29.002514>,  <29.758970, 32.981350, 29.525040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234425, 33.022102, 29.002514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536263, 33.278267, 28.945301>,  <29.717365, 33.431965, 28.910975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536263, 33.278267, 28.945301>,  <29.234425, 33.022102, 29.002514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536263, 33.278267, 28.945301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012593, -0.232062, -0.972619,
		-0.656072, 0.732131, -0.183177,
		0.754593, 0.640415, -0.143030,
		29.762640, 33.470390, 28.902391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157967, 33.204502, 28.395166>,  <29.234425, 33.022102, 29.002514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157967, 33.204502, 28.395166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541750, 33.294456, 28.463129>,  <29.772020, 33.348427, 28.503906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541750, 33.294456, 28.463129>,  <29.157967, 33.204502, 28.395166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541750, 33.294456, 28.463129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207282, -0.154528, -0.965999,
		-0.190981, 0.962054, -0.194878,
		0.959458, 0.224882, 0.169905,
		29.829588, 33.361919, 28.514101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281395, 33.712536, 27.820269>,  <29.157967, 33.204502, 28.395166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281395, 33.712536, 27.820269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632336, 33.581062, 27.960112>,  <29.842899, 33.502178, 28.044018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632336, 33.581062, 27.960112>,  <29.281395, 33.712536, 27.820269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632336, 33.581062, 27.960112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365939, -0.012984, -0.930548,
		0.310395, 0.944351, 0.108886,
		0.877350, -0.328683, 0.349605,
		29.895540, 33.482456, 28.064993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778854, 34.080544, 27.502594>,  <29.281395, 33.712536, 27.820269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778854, 34.080544, 27.502594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010204, 33.784424, 27.639669>,  <30.149014, 33.606750, 27.721914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010204, 33.784424, 27.639669>,  <29.778854, 34.080544, 27.502594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010204, 33.784424, 27.639669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501930, -0.008210, -0.864869,
		0.643079, 0.672223, 0.366832,
		0.578373, -0.740303, 0.342689,
		30.183716, 33.562332, 27.742476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508959, 34.348255, 27.433382>,  <29.778854, 34.080544, 27.502594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508959, 34.348255, 27.433382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443066, 33.954094, 27.416208>,  <30.403530, 33.717598, 27.405905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443066, 33.954094, 27.416208>,  <30.508959, 34.348255, 27.433382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443066, 33.954094, 27.416208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409997, -0.028821, -0.911631,
		0.897087, -0.167778, 0.408760,
		-0.164733, -0.985403, -0.042934,
		30.393646, 33.658474, 27.403328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139416, 34.097267, 27.145218>,  <30.508959, 34.348255, 27.433382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139416, 34.097267, 27.145218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862574, 33.811214, 27.106087>,  <30.696468, 33.639584, 27.082609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862574, 33.811214, 27.106087>,  <31.139416, 34.097267, 27.145218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862574, 33.811214, 27.106087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325924, -0.188706, -0.926371,
		0.644020, -0.673032, 0.363685,
		-0.692107, -0.715135, -0.097827,
		30.654942, 33.596672, 27.076738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444237, 33.633400, 26.755512>,  <31.139416, 34.097267, 27.145218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444237, 33.633400, 26.755512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064766, 33.509903, 26.728132>,  <30.837084, 33.435802, 26.711704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064766, 33.509903, 26.728132>,  <31.444237, 33.633400, 26.755512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064766, 33.509903, 26.728132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217880, -0.481238, -0.849081,
		0.229209, -0.820418, 0.523810,
		-0.948679, -0.308744, -0.068449,
		30.780163, 33.417278, 26.707598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401890, 32.962803, 26.550064>,  <31.444237, 33.633400, 26.755512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401890, 32.962803, 26.550064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064714, 33.131001, 26.415819>,  <30.862410, 33.231918, 26.335272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064714, 33.131001, 26.415819>,  <31.401890, 32.962803, 26.550064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064714, 33.131001, 26.415819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200177, -0.333892, -0.921111,
		-0.499385, -0.843621, 0.197276,
		-0.842937, 0.420499, -0.335615,
		30.811832, 33.257149, 26.315134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295031, 32.677406, 25.969387>,  <31.401890, 32.962803, 26.550064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295031, 32.677406, 25.969387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977005, 32.916122, 25.926092>,  <30.786190, 33.059353, 25.900114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977005, 32.916122, 25.926092>,  <31.295031, 32.677406, 25.969387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977005, 32.916122, 25.926092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079336, -0.279254, -0.956934,
		-0.601312, -0.752238, 0.269373,
		-0.795066, 0.596787, -0.108239,
		30.738485, 33.095158, 25.893620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758102, 32.254768, 25.552917>,  <31.295031, 32.677406, 25.969387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758102, 32.254768, 25.552917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649199, 32.639465, 25.540703>,  <30.583857, 32.870281, 25.533375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649199, 32.639465, 25.540703>,  <30.758102, 32.254768, 25.552917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649199, 32.639465, 25.540703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264693, -0.105367, -0.958559,
		-0.925102, -0.252893, 0.283253,
		-0.272258, 0.961740, -0.030536,
		30.567520, 32.927986, 25.531542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038235, 32.276077, 25.312883>,  <30.758102, 32.254768, 25.552917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038235, 32.276077, 25.312883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220839, 32.621815, 25.228487>,  <30.330400, 32.829258, 25.177849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220839, 32.621815, 25.228487>,  <30.038235, 32.276077, 25.312883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220839, 32.621815, 25.228487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212637, -0.124280, -0.969196,
		-0.863937, 0.487309, 0.127056,
		0.456507, 0.864340, -0.210990,
		30.357790, 32.881115, 25.165190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660347, 32.491734, 24.834248>,  <30.038235, 32.276077, 25.312883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660347, 32.491734, 24.834248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977085, 32.733662, 24.800377>,  <30.167128, 32.878819, 24.780054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977085, 32.733662, 24.800377>,  <29.660347, 32.491734, 24.834248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977085, 32.733662, 24.800377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067878, -0.050634, -0.996408,
		-0.606939, 0.794748, 0.000960,
		0.791844, 0.604824, -0.084677,
		30.214638, 32.915108, 24.774973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481920, 33.180016, 24.498495>,  <29.660347, 32.491734, 24.834248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481920, 33.180016, 24.498495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866528, 33.111526, 24.412552>,  <30.097292, 33.070435, 24.360987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866528, 33.111526, 24.412552>,  <29.481920, 33.180016, 24.498495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866528, 33.111526, 24.412552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213150, 0.028526, -0.976603,
		0.173345, 0.984820, -0.009067,
		0.961519, -0.171222, -0.214859,
		30.154984, 33.060162, 24.348095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568842, 33.450916, 23.862961>,  <29.481920, 33.180016, 24.498495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568842, 33.450916, 23.862961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892553, 33.217445, 23.889458>,  <30.086781, 33.077362, 23.905355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892553, 33.217445, 23.889458>,  <29.568842, 33.450916, 23.862961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892553, 33.217445, 23.889458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027739, -0.150615, -0.988203,
		0.586769, 0.797895, -0.138080,
		0.809279, -0.583677, 0.066244,
		30.135338, 33.042343, 23.909330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069101, 33.648499, 23.312105>,  <29.568842, 33.450916, 23.862961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069101, 33.648499, 23.312105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188065, 33.290039, 23.443848>,  <30.259441, 33.074963, 23.522892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188065, 33.290039, 23.443848>,  <30.069101, 33.648499, 23.312105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188065, 33.290039, 23.443848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052426, -0.329114, -0.942834,
		0.953310, 0.297672, -0.050899,
		0.297406, -0.896145, 0.329354,
		30.277287, 33.021194, 23.542654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685181, 33.591663, 22.986509>,  <30.069101, 33.648499, 23.312105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685181, 33.591663, 22.986509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543938, 33.232784, 23.092604>,  <30.459192, 33.017456, 23.156260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543938, 33.232784, 23.092604>,  <30.685181, 33.591663, 22.986509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543938, 33.232784, 23.092604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004200, -0.281974, -0.959413,
		0.935573, -0.339891, 0.095799,
		-0.353109, -0.897198, 0.265235,
		30.438005, 32.963623, 23.172174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130049, 33.201962, 22.591633>,  <30.685181, 33.591663, 22.986509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130049, 33.201962, 22.591633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816801, 32.974873, 22.693153>,  <30.628853, 32.838619, 22.754065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816801, 32.974873, 22.693153>,  <31.130049, 33.201962, 22.591633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816801, 32.974873, 22.693153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059824, -0.475007, -0.877946,
		0.618987, -0.672353, 0.405951,
		-0.783119, -0.567724, 0.253800,
		30.581865, 32.804554, 22.769293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305422, 32.434067, 22.336252>,  <31.130049, 33.201962, 22.591633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305422, 32.434067, 22.336252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910828, 32.491566, 22.367699>,  <30.674070, 32.526066, 22.386566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910828, 32.491566, 22.367699>,  <31.305422, 32.434067, 22.336252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910828, 32.491566, 22.367699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135025, -0.441523, -0.887032,
		-0.092797, -0.885661, 0.454966,
		-0.986487, 0.143746, 0.078615,
		30.614882, 32.534691, 22.391283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994850, 31.813446, 22.139275>,  <31.305422, 32.434067, 22.336252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994850, 31.813446, 22.139275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694368, 32.073151, 22.091696>,  <30.514078, 32.228973, 22.063148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694368, 32.073151, 22.091696>,  <30.994850, 31.813446, 22.139275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694368, 32.073151, 22.091696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196288, -0.391784, -0.898875,
		-0.630207, -0.651893, 0.421753,
		-0.751206, 0.649262, -0.118946,
		30.469006, 32.267929, 22.056011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409245, 31.422617, 21.907568>,  <30.994850, 31.813446, 22.139275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409245, 31.422617, 21.907568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338186, 31.805840, 21.817616>,  <30.295551, 32.035774, 21.763645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338186, 31.805840, 21.817616>,  <30.409245, 31.422617, 21.907568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338186, 31.805840, 21.817616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413756, -0.280049, -0.866244,
		-0.892888, -0.060840, 0.446151,
		-0.177646, 0.958056, -0.224880,
		30.284893, 32.093258, 21.750151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900599, 31.345087, 21.487698>,  <30.409245, 31.422617, 21.907568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900599, 31.345087, 21.487698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997667, 31.724226, 21.405048>,  <30.055908, 31.951710, 21.355459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997667, 31.724226, 21.405048>,  <29.900599, 31.345087, 21.487698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997667, 31.724226, 21.405048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377172, -0.104048, -0.920280,
		-0.893785, 0.301258, 0.332252,
		0.242671, 0.947849, -0.206622,
		30.070469, 32.008579, 21.343061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332867, 31.774641, 21.145372>,  <29.900599, 31.345087, 21.487698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332867, 31.774641, 21.145372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655998, 31.979631, 21.028906>,  <29.849878, 32.102627, 20.959026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655998, 31.979631, 21.028906>,  <29.332867, 31.774641, 21.145372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655998, 31.979631, 21.028906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293169, -0.079196, -0.952775,
		-0.511333, 0.855042, 0.086265,
		0.807831, 0.512476, -0.291167,
		29.898348, 32.133373, 20.941555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189072, 32.233757, 20.549690>,  <29.332867, 31.774641, 21.145372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189072, 32.233757, 20.549690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585562, 32.229717, 20.496977>,  <29.823456, 32.227295, 20.465349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585562, 32.229717, 20.496977>,  <29.189072, 32.233757, 20.549690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585562, 32.229717, 20.496977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128237, 0.167906, -0.977427,
		0.031997, 0.985751, 0.165138,
		0.991227, -0.010098, -0.131782,
		29.882931, 32.226688, 20.457441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365849, 32.754139, 20.090456>,  <29.189072, 32.233757, 20.549690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365849, 32.754139, 20.090456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695932, 32.529503, 20.066309>,  <29.893982, 32.394722, 20.051821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695932, 32.529503, 20.066309>,  <29.365849, 32.754139, 20.090456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695932, 32.529503, 20.066309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012456, 0.088759, -0.995975,
		0.564692, 0.822638, 0.066250,
		0.825208, -0.561594, -0.060368,
		29.943495, 32.361023, 20.048199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810966, 33.099091, 19.686970>,  <29.365849, 32.754139, 20.090456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810966, 33.099091, 19.686970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918646, 32.714268, 19.669186>,  <29.983253, 32.483376, 19.658514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918646, 32.714268, 19.669186>,  <29.810966, 33.099091, 19.686970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918646, 32.714268, 19.669186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203179, 0.101858, -0.973829,
		0.941408, 0.253121, 0.222890,
		0.269200, -0.962058, -0.044461,
		29.999407, 32.425652, 19.655848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484972, 33.071724, 19.387388>,  <29.810966, 33.099091, 19.686970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484972, 33.071724, 19.387388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334930, 32.709377, 19.308697>,  <30.244905, 32.491970, 19.261482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334930, 32.709377, 19.308697>,  <30.484972, 33.071724, 19.387388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334930, 32.709377, 19.308697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296844, 0.083667, -0.951254,
		0.878169, -0.415216, 0.237517,
		-0.375104, -0.905867, -0.196728,
		30.222399, 32.437618, 19.249678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841230, 32.893349, 18.773508>,  <30.484972, 33.071724, 19.387388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841230, 32.893349, 18.773508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560812, 32.610806, 18.812670>,  <30.392561, 32.441280, 18.836166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560812, 32.610806, 18.812670>,  <30.841230, 32.893349, 18.773508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560812, 32.610806, 18.812670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151280, 0.013143, -0.988404,
		0.696884, -0.707729, -0.116072,
		-0.701047, -0.706363, 0.097906,
		30.350498, 32.398895, 18.842041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898529, 32.460365, 18.057957>,  <30.841230, 32.893349, 18.773508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898529, 32.460365, 18.057957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540277, 32.352352, 18.199339>,  <30.325327, 32.287544, 18.284168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540277, 32.352352, 18.199339>,  <30.898529, 32.460365, 18.057957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540277, 32.352352, 18.199339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326537, -0.140421, -0.934695,
		0.302033, -0.952556, 0.037589,
		-0.895628, -0.270034, 0.353457,
		30.271589, 32.271343, 18.305376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792665, 31.803419, 17.872774>,  <30.898529, 32.460365, 18.057957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792665, 31.803419, 17.872774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413473, 31.910851, 17.941120>,  <30.185957, 31.975309, 17.982128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413473, 31.910851, 17.941120>,  <30.792665, 31.803419, 17.872774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413473, 31.910851, 17.941120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262367, -0.355295, -0.897179,
		-0.180254, -0.895340, 0.407279,
		-0.947984, 0.268576, 0.170864,
		30.129078, 31.991425, 17.992380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352230, 31.274158, 17.559195>,  <30.792665, 31.803419, 17.872774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352230, 31.274158, 17.559195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147909, 31.617765, 17.572874>,  <30.025316, 31.823931, 17.581081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147909, 31.617765, 17.572874>,  <30.352230, 31.274158, 17.559195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147909, 31.617765, 17.572874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391538, -0.197036, -0.898819,
		-0.765363, -0.472508, 0.436984,
		-0.510801, 0.859019, 0.034200,
		29.994669, 31.875471, 17.583134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809666, 31.044361, 17.166922>,  <30.352230, 31.274158, 17.559195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809666, 31.044361, 17.166922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805563, 31.442322, 17.207058>,  <29.803101, 31.681097, 17.231140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805563, 31.442322, 17.207058>,  <29.809666, 31.044361, 17.166922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805563, 31.442322, 17.207058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276942, 0.093592, -0.956318,
		-0.960832, -0.037596, 0.274570,
		-0.010256, 0.994901, 0.100338,
		29.802486, 31.740791, 17.237160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235630, 31.190683, 16.773949>,  <29.809666, 31.044361, 17.166922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235630, 31.190683, 16.773949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429913, 31.539408, 16.799360>,  <29.546482, 31.748642, 16.814608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429913, 31.539408, 16.799360>,  <29.235630, 31.190683, 16.773949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429913, 31.539408, 16.799360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001967, 0.073766, -0.997274,
		-0.874121, 0.484255, 0.037544,
		0.485705, 0.871811, 0.063527,
		29.575624, 31.800951, 16.818419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772665, 31.746437, 16.536955>,  <29.235630, 31.190683, 16.773949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772665, 31.746437, 16.536955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137100, 31.900282, 16.477634>,  <29.355761, 31.992588, 16.442041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137100, 31.900282, 16.477634>,  <28.772665, 31.746437, 16.536955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137100, 31.900282, 16.477634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159164, -0.003635, -0.987246,
		-0.380245, 0.923072, 0.057904,
		0.911088, 0.384611, -0.148302,
		29.410427, 32.015667, 16.433144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990232, 31.683914, 15.762005>,  <28.772665, 31.746437, 16.536955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990232, 31.683914, 15.762005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281052, 31.930492, 15.882934>,  <29.455544, 32.078438, 15.955491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281052, 31.930492, 15.882934>,  <28.990232, 31.683914, 15.762005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281052, 31.930492, 15.882934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230474, 0.195655, -0.953206,
		-0.646750, 0.762702, 0.000176,
		0.727046, 0.616446, 0.302323,
		29.499165, 32.115425, 15.973630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918188, 32.461361, 15.709221>,  <28.990232, 31.683914, 15.762005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918188, 32.461361, 15.709221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277866, 32.292770, 15.662223>,  <29.493673, 32.191616, 15.634025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.277866, 32.292770, 15.662223>,  <28.918188, 32.461361, 15.709221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277866, 32.292770, 15.662223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137314, -0.016865, -0.990384,
		0.415441, 0.906683, -0.073039,
		0.899196, -0.421475, -0.117494,
		29.547625, 32.166328, 15.626974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870239, 32.400333, 15.045742>,  <28.918188, 32.461361, 15.709221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870239, 32.400333, 15.045742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195112, 32.198341, 15.162602>,  <29.390036, 32.077145, 15.232718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195112, 32.198341, 15.162602>,  <28.870239, 32.400333, 15.045742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195112, 32.198341, 15.162602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123684, -0.340347, -0.932130,
		0.570140, 0.793195, -0.213966,
		0.812184, -0.504981, 0.292151,
		29.438766, 32.046848, 15.250248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575647, 32.686371, 14.725168>,  <28.870239, 32.400333, 15.045742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575647, 32.686371, 14.725168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606762, 32.296726, 14.810065>,  <29.625431, 32.062939, 14.861004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606762, 32.296726, 14.810065>,  <29.575647, 32.686371, 14.725168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606762, 32.296726, 14.810065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346889, -0.173141, -0.921787,
		0.934675, 0.145327, 0.324442,
		0.077787, -0.974116, 0.212242,
		29.630098, 32.004490, 14.873738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300142, 32.288853, 14.479509>,  <29.575647, 32.686371, 14.725168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300142, 32.288853, 14.479509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000042, 32.024826, 14.494663>,  <29.819981, 31.866411, 14.503756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000042, 32.024826, 14.494663>,  <30.300142, 32.288853, 14.479509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000042, 32.024826, 14.494663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452829, -0.554760, -0.697988,
		0.481735, -0.506512, 0.715106,
		-0.750252, -0.660066, 0.037884,
		29.774967, 31.826807, 14.506028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941799, 31.942127, 14.863575>,  <30.300142, 32.288853, 14.479509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941799, 31.942127, 14.863575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950117, 32.122112, 15.220697>,  <30.955109, 32.230103, 15.434971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950117, 32.122112, 15.220697>,  <30.941799, 31.942127, 14.863575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950117, 32.122112, 15.220697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927904, 0.323795, -0.184801,
		-0.372239, 0.832280, -0.410790,
		0.020795, 0.449963, 0.892805,
		30.956356, 32.257103, 15.488539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251469, 32.728493, 14.834846>,  <30.941799, 31.942127, 14.863575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251469, 32.728493, 14.834846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306452, 32.554722, 15.190908>,  <31.339441, 32.450459, 15.404546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306452, 32.554722, 15.190908>,  <31.251469, 32.728493, 14.834846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306452, 32.554722, 15.190908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912648, 0.404804, 0.056628,
		-0.384940, 0.804617, 0.452121,
		0.137456, -0.434426, 0.890157,
		31.347689, 32.424393, 15.457955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353624, 33.216774, 15.356615>,  <31.251469, 32.728493, 14.834846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353624, 33.216774, 15.356615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591402, 32.911461, 15.457829>,  <31.734070, 32.728271, 15.518559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591402, 32.911461, 15.457829>,  <31.353624, 33.216774, 15.356615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591402, 32.911461, 15.457829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621765, 0.635830, 0.457307,
		-0.509945, -0.114514, 0.852551,
		0.594445, -0.763287, 0.253037,
		31.769735, 32.682476, 15.533741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294313, 33.958321, 15.528383>,  <31.353624, 33.216774, 15.356615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294313, 33.958321, 15.528383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924404, 33.808941, 15.499182>,  <30.702459, 33.719315, 15.481661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.924404, 33.808941, 15.499182>,  <31.294313, 33.958321, 15.528383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924404, 33.808941, 15.499182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200508, 0.315181, 0.927609,
		-0.323406, 0.872465, -0.366350,
		-0.924773, -0.373450, -0.073004,
		30.646973, 33.696907, 15.477281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856339, 34.412964, 15.791160>,  <31.294313, 33.958321, 15.528383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856339, 34.412964, 15.791160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687010, 34.059109, 15.869349>,  <30.585413, 33.846794, 15.916264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687010, 34.059109, 15.869349>,  <30.856339, 34.412964, 15.791160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687010, 34.059109, 15.869349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138944, 0.276601, 0.950887,
		-0.895261, 0.375373, -0.240007,
		-0.423324, -0.884639, 0.195474,
		30.560013, 33.793716, 15.927992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097639, 34.425587, 16.103985>,  <30.856339, 34.412964, 15.791160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097639, 34.425587, 16.103985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309969, 34.114407, 16.238461>,  <30.437366, 33.927700, 16.319145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309969, 34.114407, 16.238461>,  <30.097639, 34.425587, 16.103985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309969, 34.114407, 16.238461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138527, 0.311708, 0.940026,
		-0.836084, -0.545559, 0.057695,
		0.530824, -0.777949, 0.336188,
		30.469215, 33.881023, 16.339317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693621, 34.134560, 16.617594>,  <30.097639, 34.425587, 16.103985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693621, 34.134560, 16.617594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077848, 34.055130, 16.695436>,  <30.308386, 34.007473, 16.742142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.077848, 34.055130, 16.695436>,  <29.693621, 34.134560, 16.617594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077848, 34.055130, 16.695436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114770, 0.354320, 0.928055,
		-0.253241, -0.913797, 0.317559,
		0.960571, -0.198575, 0.194605,
		30.366020, 33.995556, 16.753819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686432, 33.991879, 17.349283>,  <29.693621, 34.134560, 16.617594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686432, 33.991879, 17.349283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081791, 33.991993, 17.288527>,  <30.319006, 33.992062, 17.252073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.081791, 33.991993, 17.288527>,  <29.686432, 33.991879, 17.349283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081791, 33.991993, 17.288527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151142, 0.097333, 0.983709,
		0.015067, -0.995252, 0.096160,
		0.988397, 0.000288, -0.151891,
		30.378309, 33.992081, 17.242960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975302, 33.995178, 18.051785>,  <29.686432, 33.991879, 17.349283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975302, 33.995178, 18.051785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305330, 34.077667, 17.841364>,  <30.503347, 34.127163, 17.715113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305330, 34.077667, 17.841364>,  <29.975302, 33.995178, 18.051785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305330, 34.077667, 17.841364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403677, 0.436289, 0.804175,
		0.395347, -0.875857, 0.276724,
		0.825073, 0.206221, -0.526048,
		30.552851, 34.139534, 17.683548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565767, 33.768345, 18.418297>,  <29.975302, 33.995178, 18.051785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565767, 33.768345, 18.418297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698332, 34.066349, 18.186735>,  <30.777870, 34.245152, 18.047798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698332, 34.066349, 18.186735>,  <30.565767, 33.768345, 18.418297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698332, 34.066349, 18.186735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474923, 0.398445, 0.784659,
		0.815239, -0.534979, -0.221773,
		0.331412, 0.745009, -0.578902,
		30.797756, 34.289852, 18.013065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271637, 33.934925, 18.653845>,  <30.565767, 33.768345, 18.418297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271637, 33.934925, 18.653845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160706, 34.251194, 18.435516>,  <31.094147, 34.440956, 18.304520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160706, 34.251194, 18.435516>,  <31.271637, 33.934925, 18.653845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160706, 34.251194, 18.435516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457055, 0.608279, 0.648921,
		0.845097, -0.069506, -0.530075,
		-0.277329, 0.790675, -0.545823,
		31.077507, 34.488396, 18.271769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840034, 34.346298, 18.807175>,  <31.271637, 33.934925, 18.653845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840034, 34.346298, 18.807175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524727, 34.576725, 18.720657>,  <31.335543, 34.714981, 18.668747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524727, 34.576725, 18.720657>,  <31.840034, 34.346298, 18.807175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524727, 34.576725, 18.720657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190276, 0.562478, 0.804620,
		0.585171, 0.593102, -0.552996,
		-0.788270, 0.576062, -0.216293,
		31.288246, 34.749542, 18.655769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102306, 34.961750, 18.831982>,  <31.840034, 34.346298, 18.807175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102306, 34.961750, 18.831982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706089, 35.004955, 18.865812>,  <31.468357, 35.030876, 18.886110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.706089, 35.004955, 18.865812>,  <32.102306, 34.961750, 18.831982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706089, 35.004955, 18.865812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124677, 0.451628, 0.883452,
		0.057224, 0.885645, -0.460824,
		-0.990546, 0.108009, 0.084576,
		31.408926, 35.037357, 18.891186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114948, 35.583519, 19.127668>,  <32.102306, 34.961750, 18.831982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114948, 35.583519, 19.127668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742260, 35.453552, 19.192579>,  <31.518648, 35.375572, 19.231525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742260, 35.453552, 19.192579>,  <32.114948, 35.583519, 19.127668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742260, 35.453552, 19.192579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025523, 0.387130, 0.921672,
		-0.362288, 0.862879, -0.352403,
		-0.931717, -0.324916, 0.162276,
		31.462746, 35.356079, 19.241262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702820, 36.086529, 19.630793>,  <32.114948, 35.583519, 19.127668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702820, 36.086529, 19.630793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506378, 35.738163, 19.637922>,  <31.388514, 35.529144, 19.642200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506378, 35.738163, 19.637922>,  <31.702820, 36.086529, 19.630793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506378, 35.738163, 19.637922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281758, 0.178176, 0.942797,
		-0.824275, 0.457989, -0.332891,
		-0.491104, -0.870919, 0.017824,
		31.359047, 35.476887, 19.643270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109537, 36.257607, 19.844992>,  <31.702820, 36.086529, 19.630793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109537, 36.257607, 19.844992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161549, 35.871220, 19.934429>,  <31.192757, 35.639385, 19.988092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161549, 35.871220, 19.934429>,  <31.109537, 36.257607, 19.844992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161549, 35.871220, 19.934429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225292, 0.190827, 0.955421,
		-0.965576, -0.174608, -0.192811,
		0.130030, -0.965970, 0.223596,
		31.200558, 35.581429, 20.001509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638075, 36.162174, 20.452160>,  <31.109537, 36.257607, 19.844992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638075, 36.162174, 20.452160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862658, 35.831715, 20.433172>,  <30.997406, 35.633438, 20.421780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862658, 35.831715, 20.433172>,  <30.638075, 36.162174, 20.452160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862658, 35.831715, 20.433172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068058, -0.103270, 0.992322,
		-0.824704, -0.553914, -0.114207,
		0.561455, -0.826144, -0.047468,
		31.031094, 35.583870, 20.418932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303244, 35.682575, 20.826874>,  <30.638075, 36.162174, 20.452160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303244, 35.682575, 20.826874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683813, 35.562817, 20.855576>,  <30.912155, 35.490959, 20.872797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683813, 35.562817, 20.855576>,  <30.303244, 35.682575, 20.826874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683813, 35.562817, 20.855576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046864, 0.089506, 0.994883,
		-0.304291, -0.949920, 0.071127,
		0.951426, -0.299401, 0.071754,
		30.969240, 35.472996, 20.877102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266445, 35.103394, 21.201746>,  <30.303244, 35.682575, 20.826874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266445, 35.103394, 21.201746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643442, 35.233894, 21.230774>,  <30.869640, 35.312195, 21.248192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643442, 35.233894, 21.230774>,  <30.266445, 35.103394, 21.201746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643442, 35.233894, 21.230774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115771, 0.114987, 0.986598,
		0.313537, -0.938262, 0.146145,
		0.942492, 0.326255, 0.072571,
		30.926189, 35.331772, 21.252546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352936, 35.061234, 21.833561>,  <30.266445, 35.103394, 21.201746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352936, 35.061234, 21.833561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713428, 35.212303, 21.748568>,  <30.929724, 35.302944, 21.697573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713428, 35.212303, 21.748568>,  <30.352936, 35.061234, 21.833561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713428, 35.212303, 21.748568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313827, -0.230699, 0.921027,
		0.298827, -0.896739, -0.326437,
		0.901229, 0.377672, -0.212482,
		30.983797, 35.325603, 21.684824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958426, 34.574684, 21.882380>,  <30.352936, 35.061234, 21.833561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958426, 34.574684, 21.882380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126270, 34.934406, 21.931667>,  <31.226976, 35.150238, 21.961241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126270, 34.934406, 21.931667>,  <30.958426, 34.574684, 21.882380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126270, 34.934406, 21.931667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236365, -0.239320, 0.941731,
		0.876389, -0.366037, -0.312985,
		0.419612, 0.899301, 0.123219,
		31.252153, 35.204197, 21.968634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569424, 34.537853, 22.328117>,  <30.958426, 34.574684, 21.882380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569424, 34.537853, 22.328117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468044, 34.923550, 22.359133>,  <31.407217, 35.154968, 22.377743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468044, 34.923550, 22.359133>,  <31.569424, 34.537853, 22.328117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468044, 34.923550, 22.359133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175807, -0.032908, 0.983875,
		0.951239, 0.262993, -0.161179,
		-0.253448, 0.964236, 0.077539,
		31.392010, 35.212822, 22.382395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122150, 34.784100, 22.806061>,  <31.569424, 34.537853, 22.328117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122150, 34.784100, 22.806061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821108, 35.047462, 22.809515>,  <31.640482, 35.205482, 22.811588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821108, 35.047462, 22.809515>,  <32.122150, 34.784100, 22.806061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821108, 35.047462, 22.809515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096268, 0.097050, 0.990613,
		0.651390, 0.746377, -0.136425,
		-0.752611, 0.658409, 0.008635,
		31.595325, 35.244984, 22.812105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246323, 35.241642, 23.249142>,  <32.122150, 34.784100, 22.806061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246323, 35.241642, 23.249142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865837, 35.361538, 23.219881>,  <31.637547, 35.433475, 23.202326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865837, 35.361538, 23.219881>,  <32.246323, 35.241642, 23.249142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865837, 35.361538, 23.219881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009906, 0.266631, 0.963748,
		0.308382, 0.916003, -0.256592,
		-0.951211, 0.299744, -0.073151,
		31.580473, 35.451462, 23.197935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242607, 35.902672, 23.493067>,  <32.246323, 35.241642, 23.249142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242607, 35.902672, 23.493067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876146, 35.748959, 23.538656>,  <31.656269, 35.656731, 23.566010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876146, 35.748959, 23.538656>,  <32.242607, 35.902672, 23.493067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876146, 35.748959, 23.538656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039377, 0.369253, 0.928494,
		-0.398890, 0.846155, -0.353424,
		-0.916153, -0.384284, 0.113972,
		31.601301, 35.633675, 23.572847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772219, 36.348003, 23.880001>,  <32.242607, 35.902672, 23.493067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772219, 36.348003, 23.880001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561245, 36.008495, 23.894953>,  <31.434660, 35.804790, 23.903925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561245, 36.008495, 23.894953>,  <31.772219, 36.348003, 23.880001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561245, 36.008495, 23.894953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258100, 0.201995, 0.944766,
		-0.809441, 0.488656, -0.325608,
		-0.527436, -0.848772, 0.037381,
		31.403013, 35.753864, 23.906168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029419, 36.446152, 24.090508>,  <31.772219, 36.348003, 23.880001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029419, 36.446152, 24.090508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148138, 36.081337, 24.203718>,  <31.219370, 35.862450, 24.271645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148138, 36.081337, 24.203718>,  <31.029419, 36.446152, 24.090508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148138, 36.081337, 24.203718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191484, 0.233520, 0.953311,
		-0.935546, -0.337133, -0.105333,
		0.296796, -0.912036, 0.283024,
		31.237177, 35.807728, 24.288626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653463, 36.403305, 24.735174>,  <31.029419, 36.446152, 24.090508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653463, 36.403305, 24.735174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877447, 36.072166, 24.748543>,  <31.011837, 35.873486, 24.756565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877447, 36.072166, 24.748543>,  <30.653463, 36.403305, 24.735174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877447, 36.072166, 24.748543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089407, -0.020273, 0.995789,
		-0.823680, -0.560592, -0.085367,
		0.559962, -0.827844, 0.033423,
		31.045435, 35.823814, 24.758570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332151, 35.909393, 25.137486>,  <30.653463, 36.403305, 24.735174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332151, 35.909393, 25.137486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692438, 35.739292, 25.172958>,  <30.908609, 35.637230, 25.194242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692438, 35.739292, 25.172958>,  <30.332151, 35.909393, 25.137486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692438, 35.739292, 25.172958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137743, -0.085972, 0.986730,
		-0.411991, -0.900980, -0.136013,
		0.900717, -0.425258, 0.088684,
		30.962654, 35.611713, 25.199564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295242, 35.299904, 25.602684>,  <30.332151, 35.909393, 25.137486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295242, 35.299904, 25.602684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666245, 35.449200, 25.610933>,  <30.888845, 35.538776, 25.615883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666245, 35.449200, 25.610933>,  <30.295242, 35.299904, 25.602684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666245, 35.449200, 25.610933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048414, -0.174643, 0.983441,
		0.370664, -0.911147, -0.180053,
		0.927504, 0.373244, 0.020622,
		30.944496, 35.561172, 25.617121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588100, 34.954540, 26.087751>,  <30.295242, 35.299904, 25.602684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588100, 34.954540, 26.087751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867275, 35.238819, 26.052437>,  <31.034781, 35.409386, 26.031248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867275, 35.238819, 26.052437>,  <30.588100, 34.954540, 26.087751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867275, 35.238819, 26.052437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229417, -0.105092, 0.967638,
		0.678419, -0.695605, -0.236393,
		0.697937, 0.710697, -0.088287,
		31.076656, 35.452026, 26.025951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240553, 34.704746, 26.377104>,  <30.588100, 34.954540, 26.087751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240553, 34.704746, 26.377104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280132, 35.102711, 26.384640>,  <31.303881, 35.341492, 26.389162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280132, 35.102711, 26.384640>,  <31.240553, 34.704746, 26.377104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280132, 35.102711, 26.384640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512381, -0.067171, 0.856127,
		0.853039, -0.075058, -0.516421,
		0.098948, 0.994914, 0.018841,
		31.309816, 35.401184, 26.390293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003147, 34.965317, 26.678215>,  <31.240553, 34.704746, 26.377104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003147, 34.965317, 26.678215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722712, 35.244495, 26.736649>,  <31.554449, 35.412003, 26.771709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722712, 35.244495, 26.736649>,  <32.003147, 34.965317, 26.678215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722712, 35.244495, 26.736649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352618, 0.161277, 0.921765,
		0.619783, 0.697754, -0.359178,
		-0.701092, 0.697947, 0.146084,
		31.512384, 35.453880, 26.780474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300873, 35.353104, 27.145294>,  <32.003147, 34.965317, 26.678215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300873, 35.353104, 27.145294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928394, 35.495758, 27.175446>,  <31.704906, 35.581348, 27.193537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.928394, 35.495758, 27.175446>,  <32.300873, 35.353104, 27.145294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928394, 35.495758, 27.175446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149795, 0.185871, 0.971089,
		0.332310, 0.915569, -0.226504,
		-0.931199, 0.356632, 0.075381,
		31.649035, 35.602749, 27.198059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369228, 35.907707, 27.651672>,  <32.300873, 35.353104, 27.145294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369228, 35.907707, 27.651672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977909, 35.827427, 27.631105>,  <31.743116, 35.779259, 27.618765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977909, 35.827427, 27.631105>,  <32.369228, 35.907707, 27.651672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977909, 35.827427, 27.631105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087959, 0.177650, 0.980155,
		-0.187588, 0.963410, -0.191449,
		-0.978302, -0.200705, -0.051416,
		31.684418, 35.767216, 27.615681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870501, 36.587017, 27.951540>,  <32.369228, 35.907707, 27.651672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870501, 36.587017, 27.951540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695810, 36.228157, 27.978058>,  <31.590996, 36.012840, 27.993969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695810, 36.228157, 27.978058>,  <31.870501, 36.587017, 27.951540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695810, 36.228157, 27.978058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260411, 0.196615, 0.945267,
		-0.861078, 0.395561, -0.319494,
		-0.436728, -0.897148, 0.066293,
		31.564793, 35.959011, 27.997946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308290, 36.678188, 28.414459>,  <31.870501, 36.587017, 27.951540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308290, 36.678188, 28.414459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275633, 36.279564, 28.408701>,  <31.256039, 36.040390, 28.405245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275633, 36.279564, 28.408701>,  <31.308290, 36.678188, 28.414459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275633, 36.279564, 28.408701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127993, -0.003841, 0.991768,
		-0.988409, 0.082815, -0.127238,
		-0.081645, -0.996558, -0.014397,
		31.251139, 35.980598, 28.404383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774221, 36.523811, 28.803749>,  <31.308290, 36.678188, 28.414459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774221, 36.523811, 28.803749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970911, 36.175632, 28.794525>,  <31.088924, 35.966724, 28.788990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970911, 36.175632, 28.794525>,  <30.774221, 36.523811, 28.803749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970911, 36.175632, 28.794525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099037, -0.082218, 0.991681,
		-0.865102, -0.485349, -0.126635,
		0.491723, -0.870447, -0.023060,
		31.118427, 35.914497, 28.787607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432070, 36.055153, 29.141626>,  <30.774221, 36.523811, 28.803749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432070, 36.055153, 29.141626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809978, 35.927689, 29.172249>,  <31.036724, 35.851212, 29.190622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809978, 35.927689, 29.172249>,  <30.432070, 36.055153, 29.141626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809978, 35.927689, 29.172249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149765, -0.212020, 0.965721,
		-0.291508, -0.923852, -0.248035,
		0.944772, -0.318662, 0.076555,
		31.093410, 35.832088, 29.195215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392689, 35.458710, 29.571470>,  <30.432070, 36.055153, 29.141626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392689, 35.458710, 29.571470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765032, 35.604843, 29.573708>,  <30.988438, 35.692524, 29.575050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765032, 35.604843, 29.573708>,  <30.392689, 35.458710, 29.571470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765032, 35.604843, 29.573708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070436, -0.194444, 0.978382,
		0.358526, -0.910341, -0.206733,
		0.930859, 0.365336, 0.005592,
		31.044289, 35.714443, 29.575386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833982, 35.036121, 30.019299>,  <30.392689, 35.458710, 29.571470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833982, 35.036121, 30.019299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044182, 35.374619, 29.984137>,  <31.170301, 35.577717, 29.963039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044182, 35.374619, 29.984137>,  <30.833982, 35.036121, 30.019299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044182, 35.374619, 29.984137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072829, 0.058198, 0.995645,
		0.847673, -0.529610, -0.031048,
		0.525496, 0.846243, -0.087904,
		31.201830, 35.628490, 29.957766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220160, 35.022297, 30.557489>,  <30.833982, 35.036121, 30.019299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220160, 35.022297, 30.557489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303062, 35.401604, 30.461292>,  <31.352804, 35.629189, 30.403574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303062, 35.401604, 30.461292>,  <31.220160, 35.022297, 30.557489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303062, 35.401604, 30.461292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181554, 0.204275, 0.961930,
		0.961292, -0.243031, -0.129823,
		0.207259, 0.948266, -0.240491,
		31.365240, 35.686085, 30.389145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837822, 35.217487, 30.854267>,  <31.220160, 35.022297, 30.557489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837822, 35.217487, 30.854267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622019, 35.549423, 30.797281>,  <31.492537, 35.748585, 30.763090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622019, 35.549423, 30.797281>,  <31.837822, 35.217487, 30.854267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622019, 35.549423, 30.797281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122361, 0.244680, 0.961852,
		0.833041, 0.501497, -0.233547,
		-0.539510, 0.829839, -0.142465,
		31.460165, 35.798374, 30.754541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143185, 35.831924, 31.131907>,  <31.837822, 35.217487, 30.854267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143185, 35.831924, 31.131907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745222, 35.869995, 31.145178>,  <31.506445, 35.892838, 31.153141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745222, 35.869995, 31.145178>,  <32.143185, 35.831924, 31.131907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745222, 35.869995, 31.145178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046251, 0.138630, 0.989264,
		0.089552, 0.985761, -0.142326,
		-0.994908, 0.095173, 0.033177,
		31.446751, 35.898548, 31.155130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807384, 35.718384, 30.891418>,  <32.143185, 35.831924, 31.131907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807384, 35.718384, 30.891418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196728, 35.809578, 30.901196>,  <33.430332, 35.864296, 30.907063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196728, 35.809578, 30.901196>,  <32.807384, 35.718384, 30.891418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196728, 35.809578, 30.901196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026350, 0.217112, -0.975791,
		-0.227771, 0.949150, 0.217335,
		0.973358, 0.227984, 0.024442,
		33.488735, 35.877972, 30.908527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024288, 36.375443, 30.555777>,  <32.807384, 35.718384, 30.891418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024288, 36.375443, 30.555777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340794, 36.131241, 30.541994>,  <33.530697, 35.984722, 30.533724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340794, 36.131241, 30.541994>,  <33.024288, 36.375443, 30.555777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340794, 36.131241, 30.541994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179748, 0.286090, -0.941192,
		0.584456, 0.738540, 0.336110,
		0.791266, -0.610500, -0.034456,
		33.578175, 35.948090, 30.531658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606892, 36.672119, 30.277037>,  <33.024288, 36.375443, 30.555777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606892, 36.672119, 30.277037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748898, 36.302181, 30.222450>,  <33.834103, 36.080219, 30.189699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748898, 36.302181, 30.222450>,  <33.606892, 36.672119, 30.277037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748898, 36.302181, 30.222450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258233, 0.237309, -0.936483,
		0.898488, 0.297225, 0.323074,
		0.355015, -0.924847, -0.136466,
		33.855400, 36.024727, 30.181511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112431, 36.754890, 29.694624>,  <33.606892, 36.672119, 30.277037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112431, 36.754890, 29.694624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061584, 36.358707, 29.715919>,  <34.031078, 36.120998, 29.728697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061584, 36.358707, 29.715919>,  <34.112431, 36.754890, 29.694624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061584, 36.358707, 29.715919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326325, -0.092448, -0.940726,
		0.936672, -0.102205, 0.334963,
		-0.127114, -0.990458, 0.053241,
		34.023449, 36.061569, 29.731892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813320, 36.423637, 29.523134>,  <34.112431, 36.754890, 29.694624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813320, 36.423637, 29.523134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505440, 36.177441, 29.455324>,  <34.320713, 36.029724, 29.414639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505440, 36.177441, 29.455324>,  <34.813320, 36.423637, 29.523134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505440, 36.177441, 29.455324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313197, -0.132656, -0.940378,
		0.556305, -0.776901, 0.294875,
		-0.769697, -0.615490, -0.169526,
		34.274532, 35.992794, 29.404467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082375, 35.808540, 29.270746>,  <34.813320, 36.423637, 29.523134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082375, 35.808540, 29.270746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713093, 35.845795, 29.121607>,  <34.491524, 35.868145, 29.032124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713093, 35.845795, 29.121607>,  <35.082375, 35.808540, 29.270746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713093, 35.845795, 29.121607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363243, -0.105296, -0.925725,
		-0.125484, -0.990069, 0.063376,
		-0.923205, 0.093142, -0.372849,
		34.436131, 35.873734, 29.009752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025261, 35.300079, 28.755886>,  <35.082375, 35.808540, 29.270746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025261, 35.300079, 28.755886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718018, 35.541714, 28.670946>,  <34.533672, 35.686695, 28.619982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718018, 35.541714, 28.670946>,  <35.025261, 35.300079, 28.755886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718018, 35.541714, 28.670946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260659, -0.007925, -0.965398,
		-0.584869, -0.796878, -0.151374,
		-0.768105, 0.604088, -0.212349,
		34.487587, 35.722939, 28.607241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676350, 34.956631, 28.084572>,  <35.025261, 35.300079, 28.755886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676350, 34.956631, 28.084572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553345, 35.336395, 28.110039>,  <34.479542, 35.564255, 28.125319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553345, 35.336395, 28.110039>,  <34.676350, 34.956631, 28.084572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553345, 35.336395, 28.110039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097515, 0.098002, -0.990397,
		-0.946534, -0.298352, -0.122719,
		-0.307514, 0.949411, 0.063668,
		34.461090, 35.621220, 28.129139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208275, 35.020325, 27.637346>,  <34.676350, 34.956631, 28.084572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208275, 35.020325, 27.637346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299755, 35.404858, 27.698717>,  <34.354645, 35.635578, 27.735538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299755, 35.404858, 27.698717>,  <34.208275, 35.020325, 27.637346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299755, 35.404858, 27.698717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078978, 0.175406, -0.981323,
		-0.970287, 0.212316, 0.116040,
		0.228705, 0.961330, 0.153426,
		34.368366, 35.693256, 27.744745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771503, 35.413235, 27.153208>,  <34.208275, 35.020325, 27.637346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771503, 35.413235, 27.153208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073738, 35.666721, 27.219536>,  <34.255077, 35.818813, 27.259333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073738, 35.666721, 27.219536>,  <33.771503, 35.413235, 27.153208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073738, 35.666721, 27.219536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013185, 0.267798, -0.963385,
		-0.654921, 0.725730, 0.210698,
		0.755582, 0.633719, 0.165818,
		34.300411, 35.856838, 27.269281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522617, 36.022648, 26.867086>,  <33.771503, 35.413235, 27.153208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522617, 36.022648, 26.867086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921139, 36.055302, 26.877834>,  <34.160252, 36.074894, 26.884283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921139, 36.055302, 26.877834>,  <33.522617, 36.022648, 26.867086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921139, 36.055302, 26.877834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004306, 0.264820, -0.964288,
		-0.085836, 0.960836, 0.263489,
		0.996300, 0.081636, 0.026869,
		34.220028, 36.079792, 26.885895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676186, 36.521927, 26.383217>,  <33.522617, 36.022648, 26.867086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676186, 36.521927, 26.383217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028839, 36.340977, 26.437002>,  <34.240429, 36.232407, 26.469275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028839, 36.340977, 26.437002>,  <33.676186, 36.521927, 26.383217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028839, 36.340977, 26.437002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233911, 0.171395, -0.957031,
		0.409895, 0.875201, 0.256923,
		0.881630, -0.452379, 0.134465,
		34.293327, 36.205261, 26.477343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186924, 36.897636, 26.070969>,  <33.676186, 36.521927, 26.383217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186924, 36.897636, 26.070969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332119, 36.524921, 26.069994>,  <34.419235, 36.301292, 26.069408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.332119, 36.524921, 26.069994>,  <34.186924, 36.897636, 26.070969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332119, 36.524921, 26.069994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152197, 0.061871, -0.986412,
		0.919279, 0.357686, 0.164274,
		0.362990, -0.931790, -0.002438,
		34.441017, 36.245384, 26.069263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727245, 37.041370, 25.667446>,  <34.186924, 36.897636, 26.070969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727245, 37.041370, 25.667446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684357, 36.643887, 25.654495>,  <34.658623, 36.405396, 25.646725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684357, 36.643887, 25.654495>,  <34.727245, 37.041370, 25.667446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684357, 36.643887, 25.654495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102025, 0.021396, -0.994552,
		0.988986, -0.109943, 0.099089,
		-0.107223, -0.993708, -0.032377,
		34.652191, 36.345776, 25.644783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218185, 36.871120, 25.186375>,  <34.727245, 37.041370, 25.667446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218185, 36.871120, 25.186375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958885, 36.566662, 25.194578>,  <34.803303, 36.383987, 25.199499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958885, 36.566662, 25.194578>,  <35.218185, 36.871120, 25.186375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958885, 36.566662, 25.194578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109445, -0.119798, -0.986747,
		0.753518, -0.637418, 0.160964,
		-0.648254, -0.761148, 0.020508,
		34.764408, 36.338318, 25.200731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546978, 36.347214, 24.695742>,  <35.218185, 36.871120, 25.186375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546978, 36.347214, 24.695742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159100, 36.251308, 24.714552>,  <34.926373, 36.193768, 24.725838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159100, 36.251308, 24.714552>,  <35.546978, 36.347214, 24.695742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159100, 36.251308, 24.714552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003874, -0.177351, -0.984140,
		0.244299, -0.954495, 0.171047,
		-0.969692, -0.239762, 0.047024,
		34.868191, 36.179379, 24.728659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450012, 35.886158, 24.117561>,  <35.546978, 36.347214, 24.695742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450012, 35.886158, 24.117561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079700, 36.002365, 24.214329>,  <34.857513, 36.072090, 24.272388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.079700, 36.002365, 24.214329>,  <35.450012, 35.886158, 24.117561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079700, 36.002365, 24.214329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229206, 0.077562, -0.970283,
		-0.300652, -0.953720, -0.005217,
		-0.925783, 0.290522, 0.241917,
		34.801964, 36.089523, 24.286903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920910, 35.492569, 23.773430>,  <35.450012, 35.886158, 24.117561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920910, 35.492569, 23.773430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719368, 35.822132, 23.877211>,  <34.598442, 36.019871, 23.939480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719368, 35.822132, 23.877211>,  <34.920910, 35.492569, 23.773430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719368, 35.822132, 23.877211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431661, 0.020008, -0.901814,
		-0.748200, -0.566376, 0.345566,
		-0.503851, 0.823905, 0.259453,
		34.568214, 36.069302, 23.955046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237190, 35.321262, 23.642319>,  <34.920910, 35.492569, 23.773430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237190, 35.321262, 23.642319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283638, 35.717155, 23.608978>,  <34.311508, 35.954693, 23.588974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.283638, 35.717155, 23.608978>,  <34.237190, 35.321262, 23.642319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283638, 35.717155, 23.608978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521169, -0.010724, -0.853386,
		-0.845517, 0.142535, 0.514572,
		0.116119, 0.989732, -0.083352,
		34.318474, 36.014076, 23.583973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591072, 35.584415, 23.456249>,  <34.237190, 35.321262, 23.642319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591072, 35.584415, 23.456249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854542, 35.865147, 23.347740>,  <34.012623, 36.033585, 23.282635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854542, 35.865147, 23.347740>,  <33.591072, 35.584415, 23.456249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854542, 35.865147, 23.347740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346020, -0.037611, -0.937473,
		-0.668145, 0.711355, 0.218073,
		0.658675, 0.701825, -0.271273,
		34.052143, 36.075695, 23.266359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298763, 35.892406, 22.920149>,  <33.591072, 35.584415, 23.456249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298763, 35.892406, 22.920149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651737, 36.071548, 22.862541>,  <33.863522, 36.179031, 22.827976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651737, 36.071548, 22.862541>,  <33.298763, 35.892406, 22.920149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651737, 36.071548, 22.862541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204738, 0.089971, -0.974673,
		-0.423551, 0.889570, 0.171085,
		0.882433, 0.447851, -0.144021,
		33.916466, 36.205902, 22.819334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229671, 36.494099, 22.441343>,  <33.298763, 35.892406, 22.920149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229671, 36.494099, 22.441343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612221, 36.383831, 22.402653>,  <33.841751, 36.317669, 22.379438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612221, 36.383831, 22.402653>,  <33.229671, 36.494099, 22.441343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612221, 36.383831, 22.402653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083210, 0.060349, -0.994703,
		0.280047, 0.959356, 0.034777,
		0.956373, -0.275670, -0.096728,
		33.899132, 36.301128, 22.373634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543499, 36.989483, 22.071316>,  <33.229671, 36.494099, 22.441343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543499, 36.989483, 22.071316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797806, 36.685036, 22.019936>,  <33.950390, 36.502365, 21.989107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797806, 36.685036, 22.019936>,  <33.543499, 36.989483, 22.071316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797806, 36.685036, 22.019936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259470, -0.054007, -0.964240,
		0.726966, 0.646358, -0.231824,
		0.635764, -0.761121, -0.128449,
		33.988537, 36.456699, 21.981401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833164, 36.974655, 21.382776>,  <33.543499, 36.989483, 22.071316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833164, 36.974655, 21.382776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930733, 36.606289, 21.504375>,  <33.989273, 36.385269, 21.577335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930733, 36.606289, 21.504375>,  <33.833164, 36.974655, 21.382776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930733, 36.606289, 21.504375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205503, -0.355432, -0.911832,
		0.947770, 0.159946, -0.275950,
		0.243925, -0.920916, 0.303998,
		34.003910, 36.330013, 21.595575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320229, 36.693371, 20.944368>,  <33.833164, 36.974655, 21.382776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320229, 36.693371, 20.944368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138920, 36.366779, 21.087425>,  <34.030132, 36.170826, 21.173260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138920, 36.366779, 21.087425>,  <34.320229, 36.693371, 20.944368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138920, 36.366779, 21.087425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040628, -0.381885, -0.923317,
		0.890444, -0.433047, 0.139927,
		-0.453275, -0.816477, 0.357641,
		34.002937, 36.121838, 21.194717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753666, 36.105133, 20.643816>,  <34.320229, 36.693371, 20.944368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753666, 36.105133, 20.643816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406334, 35.948196, 20.765184>,  <34.197933, 35.854034, 20.838005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406334, 35.948196, 20.765184>,  <34.753666, 36.105133, 20.643816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406334, 35.948196, 20.765184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020278, -0.639328, -0.768666,
		0.495567, -0.661305, 0.563106,
		-0.868332, -0.392345, 0.303420,
		34.145836, 35.830494, 20.856211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820812, 35.371502, 20.706202>,  <34.753666, 36.105133, 20.643816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820812, 35.371502, 20.706202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428680, 35.434746, 20.658936>,  <34.193401, 35.472694, 20.630577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428680, 35.434746, 20.658936>,  <34.820812, 35.371502, 20.706202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428680, 35.434746, 20.658936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001134, -0.594114, -0.804380,
		-0.197384, -0.788688, 0.582246,
		-0.980325, 0.158112, -0.118163,
		34.134583, 35.482178, 20.623487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553196, 34.761879, 20.369070>,  <34.820812, 35.371502, 20.706202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553196, 34.761879, 20.369070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246300, 35.012836, 20.315817>,  <34.062164, 35.163410, 20.283865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246300, 35.012836, 20.315817>,  <34.553196, 34.761879, 20.369070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246300, 35.012836, 20.315817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241803, -0.475219, -0.845990,
		-0.594036, -0.616883, 0.516311,
		-0.767237, 0.627394, -0.133133,
		34.016129, 35.201054, 20.275877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958683, 34.368813, 20.290754>,  <34.553196, 34.761879, 20.369070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958683, 34.368813, 20.290754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882999, 34.726105, 20.127617>,  <33.837589, 34.940479, 20.029734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882999, 34.726105, 20.127617>,  <33.958683, 34.368813, 20.290754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882999, 34.726105, 20.127617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182999, -0.440147, -0.879080,
		-0.964733, -0.091698, 0.246742,
		-0.189212, 0.893231, -0.407844,
		33.826237, 34.994076, 20.005264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326977, 34.321732, 19.932808>,  <33.958683, 34.368813, 20.290754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326977, 34.321732, 19.932808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557152, 34.608749, 19.775833>,  <33.695255, 34.780960, 19.681648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557152, 34.608749, 19.775833>,  <33.326977, 34.321732, 19.932808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557152, 34.608749, 19.775833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049902, -0.509751, -0.858874,
		-0.816321, 0.474646, -0.329137,
		0.575439, 0.717541, -0.392435,
		33.729782, 34.824013, 19.658102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900211, 34.652042, 19.409063>,  <33.326977, 34.321732, 19.932808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900211, 34.652042, 19.409063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290154, 34.682133, 19.325167>,  <33.524120, 34.700188, 19.274828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290154, 34.682133, 19.325167>,  <32.900211, 34.652042, 19.409063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290154, 34.682133, 19.325167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165707, -0.384555, -0.908107,
		-0.148967, 0.920032, -0.362422,
		0.974859, 0.075222, -0.209742,
		33.582611, 34.704700, 19.262243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881851, 34.800930, 18.726471>,  <32.900211, 34.652042, 19.409063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881851, 34.800930, 18.726471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269058, 34.704700, 18.754957>,  <33.501381, 34.646961, 18.772049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269058, 34.704700, 18.754957>,  <32.881851, 34.800930, 18.726471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269058, 34.704700, 18.754957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010402, -0.322076, -0.946657,
		0.250682, 0.915636, -0.314277,
		0.968014, -0.240578, 0.071214,
		33.559464, 34.632526, 18.776321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126762, 34.842411, 18.036930>,  <32.881851, 34.800930, 18.726471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126762, 34.842411, 18.036930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404388, 34.630825, 18.232265>,  <33.570965, 34.503872, 18.349466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404388, 34.630825, 18.232265>,  <33.126762, 34.842411, 18.036930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404388, 34.630825, 18.232265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166856, -0.541659, -0.823872,
		0.700313, 0.653300, -0.287684,
		0.694062, -0.528966, 0.488337,
		33.612606, 34.472134, 18.378767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720692, 34.824924, 17.602583>,  <33.126762, 34.842411, 18.036930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720692, 34.824924, 17.602583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767269, 34.507668, 17.841705>,  <33.795216, 34.317314, 17.985178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767269, 34.507668, 17.841705>,  <33.720692, 34.824924, 17.602583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767269, 34.507668, 17.841705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230077, -0.563986, -0.793086,
		0.966180, 0.229895, 0.116808,
		0.116448, -0.793139, 0.597805,
		33.802204, 34.269726, 18.021048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255856, 34.589481, 17.338438>,  <33.720692, 34.824924, 17.602583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255856, 34.589481, 17.338438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103817, 34.294884, 17.562262>,  <34.012592, 34.118126, 17.696556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103817, 34.294884, 17.562262>,  <34.255856, 34.589481, 17.338438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103817, 34.294884, 17.562262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284589, -0.668737, -0.686877,
		0.880078, -0.101834, 0.463781,
		-0.380095, -0.736493, 0.559559,
		33.989788, 34.073936, 17.730129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780239, 34.169975, 17.370495>,  <34.255856, 34.589481, 17.338438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780239, 34.169975, 17.370495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459610, 33.946808, 17.456486>,  <34.267235, 33.812908, 17.508080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.459610, 33.946808, 17.456486>,  <34.780239, 34.169975, 17.370495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459610, 33.946808, 17.456486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308156, -0.693617, -0.651103,
		0.512373, -0.455657, 0.727908,
		-0.801569, -0.557917, 0.214977,
		34.219139, 33.779434, 17.520979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037888, 33.497681, 17.307577>,  <34.780239, 34.169975, 17.370495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037888, 33.497681, 17.307577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641140, 33.446774, 17.307528>,  <34.403091, 33.416229, 17.307497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641140, 33.446774, 17.307528>,  <35.037888, 33.497681, 17.307577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641140, 33.446774, 17.307528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105309, -0.820154, -0.562367,
		0.071472, -0.557807, 0.826887,
		-0.991868, -0.127272, -0.000125,
		34.343578, 33.408592, 17.307489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100716, 32.859581, 17.377874>,  <35.037888, 33.497681, 17.307577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100716, 32.859581, 17.377874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732258, 32.948921, 17.250374>,  <34.511181, 33.002525, 17.173874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732258, 32.948921, 17.250374>,  <35.100716, 32.859581, 17.377874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732258, 32.948921, 17.250374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026662, -0.853246, -0.520826,
		-0.388300, -0.471259, 0.791920,
		-0.921147, 0.223351, -0.318751,
		34.455914, 33.015926, 17.154749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895126, 32.369888, 16.795607>,  <35.100716, 32.859581, 17.377874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895126, 32.369888, 16.795607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959030, 31.979271, 16.853340>,  <34.997372, 31.744900, 16.887980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959030, 31.979271, 16.853340>,  <34.895126, 32.369888, 16.795607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959030, 31.979271, 16.853340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012200, 0.144246, 0.989467,
		-0.987081, -0.159837, 0.011131,
		0.159759, -0.976548, 0.144333,
		35.006958, 31.686306, 16.896641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338036, 32.194241, 17.078693>,  <34.895126, 32.369888, 16.795607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338036, 32.194241, 17.078693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618431, 31.921322, 17.161722>,  <34.786667, 31.757570, 17.211540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618431, 31.921322, 17.161722>,  <34.338036, 32.194241, 17.078693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618431, 31.921322, 17.161722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149213, 0.144299, 0.978219,
		-0.697388, -0.716693, -0.000656,
		0.700988, -0.682297, 0.207573,
		34.828728, 31.716633, 17.223993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097134, 31.774759, 17.538761>,  <34.338036, 32.194241, 17.078693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097134, 31.774759, 17.538761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488861, 31.717569, 17.596033>,  <34.723896, 31.683254, 17.630396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488861, 31.717569, 17.596033>,  <34.097134, 31.774759, 17.538761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488861, 31.717569, 17.596033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136592, 0.054922, 0.989104,
		-0.149283, -0.988201, 0.034256,
		0.979315, -0.142978, 0.143179,
		34.782654, 31.674677, 17.638987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140800, 31.410618, 18.142418>,  <34.097134, 31.774759, 17.538761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140800, 31.410618, 18.142418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529888, 31.490818, 18.095749>,  <34.763340, 31.538939, 18.067747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529888, 31.490818, 18.095749>,  <34.140800, 31.410618, 18.142418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529888, 31.490818, 18.095749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141102, -0.112181, 0.983619,
		0.184131, -0.973249, -0.137412,
		0.972721, 0.200503, -0.116671,
		34.821705, 31.550968, 18.060747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551777, 30.854002, 18.488752>,  <34.140800, 31.410618, 18.142418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551777, 30.854002, 18.488752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771046, 31.187546, 18.462873>,  <34.902607, 31.387672, 18.447346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771046, 31.187546, 18.462873>,  <34.551777, 30.854002, 18.488752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771046, 31.187546, 18.462873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103066, 0.009418, 0.994630,
		0.829990, -0.551898, -0.080779,
		0.548174, 0.833858, -0.064699,
		34.935497, 31.437704, 18.443464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184753, 30.678789, 18.842785>,  <34.551777, 30.854002, 18.488752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184753, 30.678789, 18.842785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154812, 31.077421, 18.828768>,  <35.136845, 31.316601, 18.820356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154812, 31.077421, 18.828768>,  <35.184753, 30.678789, 18.842785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154812, 31.077421, 18.828768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011173, 0.034303, 0.999349,
		0.997132, 0.075201, 0.008566,
		-0.074859, 0.996578, -0.035045,
		35.132355, 31.376394, 18.818254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727543, 30.809738, 19.366808>,  <35.184753, 30.678789, 18.842785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727543, 30.809738, 19.366808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523106, 31.149279, 19.312794>,  <35.400444, 31.353003, 19.280386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523106, 31.149279, 19.312794>,  <35.727543, 30.809738, 19.366808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523106, 31.149279, 19.312794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059313, 0.121899, 0.990769,
		0.857476, 0.514385, -0.011954,
		-0.511094, 0.848851, -0.135035,
		35.369778, 31.403934, 19.272284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980518, 31.378231, 19.807444>,  <35.727543, 30.809738, 19.366808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980518, 31.378231, 19.807444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593826, 31.448853, 19.733408>,  <35.361809, 31.491224, 19.688988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593826, 31.448853, 19.733408>,  <35.980518, 31.378231, 19.807444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593826, 31.448853, 19.733408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144610, 0.219618, 0.964809,
		0.210987, 0.959478, -0.186781,
		-0.966733, 0.176552, -0.185087,
		35.303806, 31.501818, 19.677881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845028, 31.930227, 20.136526>,  <35.980518, 31.378231, 19.807444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845028, 31.930227, 20.136526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466549, 31.816267, 20.075151>,  <35.239460, 31.747890, 20.038326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466549, 31.816267, 20.075151>,  <35.845028, 31.930227, 20.136526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466549, 31.816267, 20.075151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241452, 0.305925, 0.920929,
		-0.215433, 0.908429, -0.358255,
		-0.946198, -0.284900, -0.153436,
		35.182690, 31.730797, 20.029121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416714, 32.499546, 20.228178>,  <35.845028, 31.930227, 20.136526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416714, 32.499546, 20.228178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176971, 32.184242, 20.283926>,  <35.033127, 31.995060, 20.317375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176971, 32.184242, 20.283926>,  <35.416714, 32.499546, 20.228178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176971, 32.184242, 20.283926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422196, 0.459205, 0.781590,
		-0.680094, 0.409607, -0.608025,
		-0.599352, -0.788260, 0.139368,
		34.997166, 31.947763, 20.325737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814369, 32.848270, 20.350508>,  <35.416714, 32.499546, 20.228178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814369, 32.848270, 20.350508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802574, 32.477871, 20.501053>,  <34.795498, 32.255630, 20.591379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802574, 32.477871, 20.501053>,  <34.814369, 32.848270, 20.350508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802574, 32.477871, 20.501053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261904, 0.370530, 0.891131,
		-0.964643, -0.072291, -0.253451,
		-0.029490, -0.926003, 0.376362,
		34.793728, 32.200069, 20.613962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326435, 32.897331, 20.712111>,  <34.814369, 32.848270, 20.350508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326435, 32.897331, 20.712111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491798, 32.575859, 20.883312>,  <34.591019, 32.382977, 20.986032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491798, 32.575859, 20.883312>,  <34.326435, 32.897331, 20.712111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491798, 32.575859, 20.883312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391456, 0.267522, 0.880451,
		-0.822103, -0.531533, -0.204010,
		0.413411, -0.803682, 0.428002,
		34.615822, 32.334755, 21.011713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845726, 32.734890, 21.213491>,  <34.326435, 32.897331, 20.712111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845726, 32.734890, 21.213491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161728, 32.533077, 21.352829>,  <34.351330, 32.411991, 21.436432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161728, 32.533077, 21.352829>,  <33.845726, 32.734890, 21.213491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161728, 32.533077, 21.352829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304436, 0.170364, 0.937174,
		-0.532180, -0.846418, -0.019011,
		0.790002, -0.504533, 0.348344,
		34.398727, 32.381718, 21.457333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549404, 32.369942, 21.756466>,  <33.845726, 32.734890, 21.213491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549404, 32.369942, 21.756466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944633, 32.367443, 21.818005>,  <34.181770, 32.365944, 21.854927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944633, 32.367443, 21.818005>,  <33.549404, 32.369942, 21.756466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944633, 32.367443, 21.818005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147369, 0.251108, 0.956675,
		-0.044611, -0.967939, 0.247193,
		0.988075, -0.006250, 0.153846,
		34.241055, 32.365570, 21.864159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690334, 32.010571, 22.367458>,  <33.549404, 32.369942, 21.756466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690334, 32.010571, 22.367458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014034, 32.240112, 22.317171>,  <34.208256, 32.377838, 22.286999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014034, 32.240112, 22.317171>,  <33.690334, 32.010571, 22.367458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014034, 32.240112, 22.317171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008054, 0.224819, 0.974367,
		0.587406, -0.787497, 0.186557,
		0.809253, 0.573852, -0.125718,
		34.256809, 32.412266, 22.279455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171173, 31.941792, 23.003332>,  <33.690334, 32.010571, 22.367458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171173, 31.941792, 23.003332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333225, 32.269318, 22.840649>,  <34.430458, 32.465832, 22.743038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333225, 32.269318, 22.840649>,  <34.171173, 31.941792, 23.003332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333225, 32.269318, 22.840649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350676, 0.271653, 0.896232,
		0.844330, -0.505716, -0.177082,
		0.405134, 0.818814, -0.406707,
		34.454765, 32.514961, 22.718636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831539, 32.009094, 23.239920>,  <34.171173, 31.941792, 23.003332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831539, 32.009094, 23.239920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729458, 32.380020, 23.130400>,  <34.668209, 32.602573, 23.064688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729458, 32.380020, 23.130400>,  <34.831539, 32.009094, 23.239920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729458, 32.380020, 23.130400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240734, 0.335199, 0.910872,
		0.936440, 0.166541, -0.308778,
		-0.255200, 0.927311, -0.273802,
		34.652897, 32.658215, 23.048260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273800, 32.435749, 23.584431>,  <34.831539, 32.009094, 23.239920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273800, 32.435749, 23.584431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007885, 32.722019, 23.498775>,  <34.848335, 32.893784, 23.447382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007885, 32.722019, 23.498775>,  <35.273800, 32.435749, 23.584431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007885, 32.722019, 23.498775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254701, 0.486626, 0.835657,
		0.702268, 0.500997, -0.505789,
		-0.664791, 0.715680, -0.214137,
		34.808449, 32.936722, 23.434534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605103, 33.229588, 23.600054>,  <35.273800, 32.435749, 23.584431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605103, 33.229588, 23.600054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207474, 33.228786, 23.643520>,  <34.968895, 33.228306, 23.669600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.207474, 33.228786, 23.643520>,  <35.605103, 33.229588, 23.600054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207474, 33.228786, 23.643520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095659, 0.458463, 0.883550,
		-0.051590, 0.888712, -0.455555,
		-0.994076, -0.002004, 0.108665,
		34.909252, 33.228184, 23.676121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475368, 33.926201, 23.887880>,  <35.605103, 33.229588, 23.600054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475368, 33.926201, 23.887880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152370, 33.698032, 23.947973>,  <34.958572, 33.561131, 23.984028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152370, 33.698032, 23.947973>,  <35.475368, 33.926201, 23.887880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152370, 33.698032, 23.947973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161864, 0.459184, 0.873470,
		-0.567228, 0.681008, -0.463121,
		-0.807498, -0.570419, 0.150231,
		34.910122, 33.526905, 23.993042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885044, 34.346581, 24.024593>,  <35.475368, 33.926201, 23.887880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885044, 34.346581, 24.024593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849545, 33.994507, 24.211098>,  <34.828243, 33.783264, 24.323000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849545, 33.994507, 24.211098>,  <34.885044, 34.346581, 24.024593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849545, 33.994507, 24.211098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160905, 0.474630, 0.865353,
		-0.982972, 0.001776, -0.183749,
		-0.088750, -0.880184, 0.466262,
		34.822918, 33.730453, 24.350977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657398, 34.554096, 24.598570>,  <34.885044, 34.346581, 24.024593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657398, 34.554096, 24.598570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720142, 34.164806, 24.665777>,  <34.757790, 33.931232, 24.706102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720142, 34.164806, 24.665777>,  <34.657398, 34.554096, 24.598570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720142, 34.164806, 24.665777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079146, 0.157190, 0.984392,
		-0.984444, -0.167713, -0.052370,
		0.156863, -0.973223, 0.168018,
		34.767200, 33.872841, 24.716183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182064, 34.405273, 25.156498>,  <34.657398, 34.554096, 24.598570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182064, 34.405273, 25.156498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444397, 34.103386, 25.149694>,  <34.601795, 33.922253, 25.145613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444397, 34.103386, 25.149694>,  <34.182064, 34.405273, 25.156498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444397, 34.103386, 25.149694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167114, 0.123171, 0.978214,
		-0.736180, -0.644383, 0.206903,
		0.655829, -0.754718, -0.017009,
		34.641144, 33.876972, 25.144592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038956, 33.988445, 25.730501>,  <34.182064, 34.405273, 25.156498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038956, 33.988445, 25.730501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418468, 33.934509, 25.616215>,  <34.646175, 33.902149, 25.547644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418468, 33.934509, 25.616215>,  <34.038956, 33.988445, 25.730501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418468, 33.934509, 25.616215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305842, 0.165226, 0.937636,
		-0.079223, -0.976995, 0.198002,
		0.948780, -0.134840, -0.285716,
		34.703102, 33.894058, 25.530500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103222, 33.543213, 26.344419>,  <34.038956, 33.988445, 25.730501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103222, 33.543213, 26.344419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466522, 33.636230, 26.205280>,  <34.684502, 33.692039, 26.121796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466522, 33.636230, 26.205280>,  <34.103222, 33.543213, 26.344419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466522, 33.636230, 26.205280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375423, -0.085833, 0.922871,
		0.184749, -0.968792, -0.165260,
		0.908254, 0.232541, -0.347849,
		34.738998, 33.705994, 26.100925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511936, 33.091965, 26.627308>,  <34.103222, 33.543213, 26.344419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511936, 33.091965, 26.627308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753250, 33.393993, 26.524616>,  <34.898037, 33.575211, 26.463001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753250, 33.393993, 26.524616>,  <34.511936, 33.091965, 26.627308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753250, 33.393993, 26.524616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448714, -0.055238, 0.891967,
		0.659320, -0.653309, -0.372136,
		0.603285, 0.755074, -0.256730,
		34.934235, 33.620514, 26.447598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163754, 32.868393, 26.717495>,  <34.511936, 33.091965, 26.627308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163754, 32.868393, 26.717495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180023, 33.266796, 26.749287>,  <35.189785, 33.505836, 26.768362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.180023, 33.266796, 26.749287>,  <35.163754, 32.868393, 26.717495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180023, 33.266796, 26.749287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363667, -0.088848, 0.927282,
		0.930640, -0.008816, -0.365829,
		0.040678, 0.996006, 0.079479,
		35.192226, 33.565598, 26.773130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841068, 32.974766, 26.966047>,  <35.163754, 32.868393, 26.717495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841068, 32.974766, 26.966047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642841, 33.304619, 27.075148>,  <35.523907, 33.502533, 27.140608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642841, 33.304619, 27.075148>,  <35.841068, 32.974766, 26.966047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642841, 33.304619, 27.075148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496010, 0.010902, 0.868249,
		0.713015, 0.565560, -0.414430,
		-0.495564, 0.824635, 0.272750,
		35.494171, 33.552010, 27.156973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361877, 33.435326, 27.369217>,  <35.841068, 32.974766, 26.966047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361877, 33.435326, 27.369217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996716, 33.572811, 27.457279>,  <35.777618, 33.655304, 27.510117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996716, 33.572811, 27.457279>,  <36.361877, 33.435326, 27.369217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996716, 33.572811, 27.457279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285860, 0.153355, 0.945921,
		0.291364, 0.926468, -0.238252,
		-0.912903, 0.343714, 0.220158,
		35.722843, 33.675926, 27.523327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490540, 34.076382, 27.712698>,  <36.361877, 33.435326, 27.369217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490540, 34.076382, 27.712698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112213, 33.996559, 27.815147>,  <35.885216, 33.948666, 27.876617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112213, 33.996559, 27.815147>,  <36.490540, 34.076382, 27.712698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112213, 33.996559, 27.815147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247793, 0.066100, 0.966556,
		-0.209814, 0.977654, -0.013069,
		-0.945821, -0.199558, 0.256124,
		35.828468, 33.936691, 27.891985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266159, 34.756020, 28.096600>,  <36.490540, 34.076382, 27.712698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266159, 34.756020, 28.096600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081131, 34.415356, 28.195160>,  <35.970116, 34.210957, 28.254295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081131, 34.415356, 28.195160>,  <36.266159, 34.756020, 28.096600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081131, 34.415356, 28.195160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146596, 0.200624, 0.968638,
		-0.874381, 0.484180, 0.032048,
		-0.462566, -0.851657, 0.246401,
		35.942360, 34.159859, 28.269081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851688, 35.047791, 28.667507>,  <36.266159, 34.756020, 28.096600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851688, 35.047791, 28.667507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887894, 34.650475, 28.696312>,  <35.909618, 34.412086, 28.713594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887894, 34.650475, 28.696312>,  <35.851688, 35.047791, 28.667507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887894, 34.650475, 28.696312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077650, 0.079127, 0.993836,
		-0.992863, -0.084368, 0.084291,
		0.090518, -0.993288, 0.072011,
		35.915051, 34.352489, 28.717915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497597, 34.835148, 29.309731>,  <35.851688, 35.047791, 28.667507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497597, 34.835148, 29.309731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730827, 34.526585, 29.207785>,  <35.870766, 34.341446, 29.146618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.730827, 34.526585, 29.207785>,  <35.497597, 34.835148, 29.309731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730827, 34.526585, 29.207785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306710, -0.081478, 0.948309,
		-0.752296, -0.631107, 0.189089,
		0.583078, -0.771405, -0.254863,
		35.905750, 34.295162, 29.131327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325027, 34.276009, 29.798670>,  <35.497597, 34.835148, 29.309731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325027, 34.276009, 29.798670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679794, 34.175362, 29.643715>,  <35.892654, 34.114971, 29.550741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679794, 34.175362, 29.643715>,  <35.325027, 34.276009, 29.798670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679794, 34.175362, 29.643715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364171, -0.135058, 0.921487,
		-0.284186, -0.958356, -0.028151,
		0.886915, -0.251622, -0.387387,
		35.945869, 34.099876, 29.527498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409233, 33.571487, 30.065878>,  <35.325027, 34.276009, 29.798670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409233, 33.571487, 30.065878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773804, 33.691784, 29.953554>,  <35.992546, 33.763962, 29.886160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773804, 33.691784, 29.953554>,  <35.409233, 33.571487, 30.065878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773804, 33.691784, 29.953554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407510, -0.565468, 0.717064,
		0.056858, -0.767986, -0.637938,
		0.911429, 0.300737, -0.280811,
		36.047234, 33.782005, 29.869310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845158, 32.970375, 29.975132>,  <35.409233, 33.571487, 30.065878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845158, 32.970375, 29.975132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078114, 33.285564, 30.055056>,  <36.217888, 33.474678, 30.103010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078114, 33.285564, 30.055056>,  <35.845158, 32.970375, 29.975132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078114, 33.285564, 30.055056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425197, -0.504771, 0.751275,
		0.692841, -0.352577, -0.629016,
		0.582391, 0.787969, 0.199811,
		36.252831, 33.521954, 30.115000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562862, 32.712204, 30.002579>,  <35.845158, 32.970375, 29.975132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562862, 32.712204, 30.002579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536045, 33.060165, 30.198034>,  <36.519955, 33.268944, 30.315308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536045, 33.060165, 30.198034>,  <36.562862, 32.712204, 30.002579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536045, 33.060165, 30.198034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538520, -0.380735, 0.751690,
		0.839942, 0.313538, -0.442936,
		-0.067042, 0.869905, 0.488641,
		36.515934, 33.321136, 30.344627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229927, 32.872669, 30.161230>,  <36.562862, 32.712204, 30.002579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229927, 32.872669, 30.161230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035038, 33.107620, 30.419718>,  <36.918106, 33.248592, 30.574810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035038, 33.107620, 30.419718>,  <37.229927, 32.872669, 30.161230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035038, 33.107620, 30.419718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564314, -0.352969, 0.746299,
		0.666458, 0.728283, -0.159493,
		-0.487221, 0.587381, 0.646219,
		36.888870, 33.283836, 30.613585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761402, 33.166588, 30.598732>,  <37.229927, 32.872669, 30.161230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761402, 33.166588, 30.598732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451214, 33.252949, 30.836058>,  <37.265099, 33.304768, 30.978455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451214, 33.252949, 30.836058>,  <37.761402, 33.166588, 30.598732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451214, 33.252949, 30.836058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451564, -0.467126, 0.760186,
		0.441281, 0.857426, 0.264749,
		-0.775474, 0.215905, 0.593316,
		37.218571, 33.317719, 31.014053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103416, 33.368633, 31.179983>,  <37.761402, 33.166588, 30.598732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103416, 33.368633, 31.179983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731140, 33.277805, 31.294699>,  <37.507774, 33.223309, 31.363527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731140, 33.277805, 31.294699>,  <38.103416, 33.368633, 31.179983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731140, 33.277805, 31.294699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365609, -0.552428, 0.749102,
		-0.011666, 0.802038, 0.597160,
		-0.930696, -0.227065, 0.286788,
		37.451931, 33.209686, 31.380735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769287, 33.129490, 31.392014>,  <38.103416, 33.368633, 31.179983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769287, 33.129490, 31.392014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060398, 32.950554, 31.599945>,  <39.235065, 32.843193, 31.724705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060398, 32.950554, 31.599945>,  <38.769287, 33.129490, 31.392014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060398, 32.950554, 31.599945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685180, -0.441761, 0.579117,
		-0.029421, -0.777647, -0.628013,
		0.727780, -0.447340, 0.519831,
		39.278732, 32.816353, 31.755894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603416, 32.493851, 31.312246>,  <38.769287, 33.129490, 31.392014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603416, 32.493851, 31.312246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819241, 32.565075, 31.641409>,  <38.948734, 32.607811, 31.838905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819241, 32.565075, 31.641409>,  <38.603416, 32.493851, 31.312246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819241, 32.565075, 31.641409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733897, -0.379554, 0.563324,
		0.412644, -0.907873, -0.074111,
		0.539556, 0.178062, 0.822906,
		38.981106, 32.618492, 31.888281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761185, 31.856981, 31.664118>,  <38.603416, 32.493851, 31.312246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761185, 31.856981, 31.664118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775528, 32.160786, 31.923920>,  <38.784134, 32.343067, 32.079800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775528, 32.160786, 31.923920>,  <38.761185, 31.856981, 31.664118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775528, 32.160786, 31.923920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697406, -0.446486, 0.560603,
		0.715779, -0.473069, 0.513679,
		0.035853, 0.759510, 0.649506,
		38.786285, 32.388638, 32.118771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648296, 31.501753, 32.247932>,  <38.761185, 31.856981, 31.664118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648296, 31.501753, 32.247932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585888, 31.877760, 32.369274>,  <38.548443, 32.103363, 32.442081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585888, 31.877760, 32.369274>,  <38.648296, 31.501753, 32.247932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585888, 31.877760, 32.369274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642582, -0.329836, 0.691589,
		0.750164, -0.087032, 0.655499,
		-0.156016, 0.940018, 0.303357,
		38.539082, 32.159767, 32.460281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765785, 31.450802, 32.957134>,  <38.648296, 31.501753, 32.247932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765785, 31.450802, 32.957134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526428, 31.759686, 32.871696>,  <38.382816, 31.945015, 32.820435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526428, 31.759686, 32.871696>,  <38.765785, 31.450802, 32.957134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526428, 31.759686, 32.871696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736794, -0.425641, 0.525323,
		0.314743, 0.471725, 0.823658,
		-0.598391, 0.772208, -0.213596,
		38.346912, 31.991348, 32.807617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157005, 31.381983, 33.496006>,  <38.765785, 31.450802, 32.957134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157005, 31.381983, 33.496006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038494, 31.715233, 33.309193>,  <37.967388, 31.915184, 33.197105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.038494, 31.715233, 33.309193>,  <38.157005, 31.381983, 33.496006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038494, 31.715233, 33.309193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889640, -0.062808, 0.452322,
		0.347508, 0.549504, 0.759791,
		-0.296274, 0.833127, -0.467035,
		37.949612, 31.965172, 33.169083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969429, 31.951168, 34.067390>,  <38.157005, 31.381983, 33.496006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969429, 31.951168, 34.067390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754063, 31.960848, 33.730457>,  <37.624844, 31.966656, 33.528297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754063, 31.960848, 33.730457>,  <37.969429, 31.951168, 34.067390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754063, 31.960848, 33.730457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837282, -0.128285, 0.531508,
		-0.095196, 0.991442, 0.089333,
		-0.538420, 0.024200, -0.842329,
		37.592537, 31.968107, 33.477760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350483, 32.314453, 34.193974>,  <37.969429, 31.951168, 34.067390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350483, 32.314453, 34.193974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225883, 32.117161, 33.869087>,  <37.151123, 31.998787, 33.674156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225883, 32.117161, 33.869087>,  <37.350483, 32.314453, 34.193974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225883, 32.117161, 33.869087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937124, 0.017891, 0.348537,
		-0.157377, 0.869717, -0.467787,
		-0.311498, -0.493226, -0.812217,
		37.132435, 31.969193, 33.625423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734482, 32.569855, 34.133270>,  <37.350483, 32.314453, 34.193974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734482, 32.569855, 34.133270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725349, 32.252789, 33.889580>,  <36.719872, 32.062550, 33.743366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725349, 32.252789, 33.889580>,  <36.734482, 32.569855, 34.133270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725349, 32.252789, 33.889580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966049, -0.139375, 0.217540,
		-0.257348, 0.593508, -0.762575,
		-0.022828, -0.792668, -0.609225,
		36.718502, 32.014988, 33.706814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146091, 32.553356, 33.586166>,  <36.734482, 32.569855, 34.133270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146091, 32.553356, 33.586166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254009, 32.182079, 33.688667>,  <36.318760, 31.959312, 33.750168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254009, 32.182079, 33.688667>,  <36.146091, 32.553356, 33.586166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254009, 32.182079, 33.688667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951776, -0.216682, 0.217191,
		-0.146069, -0.302495, -0.941892,
		0.269790, -0.928195, 0.256257,
		36.334946, 31.903622, 33.765545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578339, 32.252895, 33.736652>,  <36.146091, 32.553356, 33.586166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578339, 32.252895, 33.736652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808319, 31.938448, 33.827389>,  <35.946308, 31.749781, 33.881832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808319, 31.938448, 33.827389>,  <35.578339, 32.252895, 33.736652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808319, 31.938448, 33.827389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767423, -0.422000, 0.482678,
		-0.283713, -0.451599, -0.845911,
		0.574951, -0.786114, 0.226840,
		35.980804, 31.702614, 33.895439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122971, 31.540636, 33.626068>,  <35.578339, 32.252895, 33.736652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122971, 31.540636, 33.626068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430378, 31.504341, 33.879414>,  <35.614822, 31.482565, 34.031422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430378, 31.504341, 33.879414>,  <35.122971, 31.540636, 33.626068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430378, 31.504341, 33.879414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613695, -0.384574, 0.689551,
		0.181010, -0.918624, -0.351234,
		0.768514, -0.090735, 0.633367,
		35.660931, 31.477121, 34.069424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986500, 30.840536, 34.022938>,  <35.122971, 31.540636, 33.626068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986500, 30.840536, 34.022938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251823, 31.067780, 34.217781>,  <35.411018, 31.204124, 34.334686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251823, 31.067780, 34.217781>,  <34.986500, 30.840536, 34.022938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251823, 31.067780, 34.217781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467382, -0.193855, 0.862539,
		0.584443, -0.799797, 0.136937,
		0.663310, 0.568107, 0.487108,
		35.450817, 31.238213, 34.363914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121918, 30.490814, 34.595314>,  <34.986500, 30.840536, 34.022938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121918, 30.490814, 34.595314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242207, 30.860748, 34.688477>,  <35.314381, 31.082708, 34.744373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242207, 30.860748, 34.688477>,  <35.121918, 30.490814, 34.595314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242207, 30.860748, 34.688477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378652, -0.108354, 0.919175,
		0.875322, -0.364606, 0.317607,
		0.300722, 0.924836, 0.232903,
		35.332424, 31.138199, 34.758347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417786, 30.517317, 35.216469>,  <35.121918, 30.490814, 34.595314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417786, 30.517317, 35.216469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276844, 30.891464, 35.204250>,  <35.192280, 31.115952, 35.196918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276844, 30.891464, 35.204250>,  <35.417786, 30.517317, 35.216469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276844, 30.891464, 35.204250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184873, -0.037573, 0.982044,
		0.917423, 0.351679, 0.186163,
		-0.352359, 0.935366, -0.030546,
		35.171135, 31.172073, 35.195087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717815, 30.885324, 35.899670>,  <35.417786, 30.517317, 35.216469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717815, 30.885324, 35.899670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414349, 31.118111, 35.782543>,  <35.232269, 31.257782, 35.712269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414349, 31.118111, 35.782543>,  <35.717815, 30.885324, 35.899670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414349, 31.118111, 35.782543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286030, 0.106276, 0.952309,
		0.585330, 0.806239, 0.085832,
		-0.758667, 0.581965, -0.292816,
		35.186749, 31.292700, 35.694698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881878, 31.503233, 36.249649>,  <35.717815, 30.885324, 35.899670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881878, 31.503233, 36.249649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491009, 31.477808, 36.168560>,  <35.256489, 31.462553, 36.119907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491009, 31.477808, 36.168560>,  <35.881878, 31.503233, 36.249649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491009, 31.477808, 36.168560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209927, 0.142105, 0.967335,
		-0.032680, 0.987809, -0.152205,
		-0.977171, -0.063564, -0.202724,
		35.197857, 31.458738, 36.107742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603733, 32.096958, 36.569530>,  <35.881878, 31.503233, 36.249649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603733, 32.096958, 36.569530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298920, 31.841595, 36.526176>,  <35.116032, 31.688377, 36.500164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298920, 31.841595, 36.526176>,  <35.603733, 32.096958, 36.569530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298920, 31.841595, 36.526176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316216, 0.220811, 0.922632,
		-0.565083, 0.737345, -0.370139,
		-0.762029, -0.638408, -0.108383,
		35.070312, 31.650072, 36.493660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975018, 32.486790, 36.847599>,  <35.603733, 32.096958, 36.569530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975018, 32.486790, 36.847599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889683, 32.097748, 36.884521>,  <34.838482, 31.864323, 36.906677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889683, 32.097748, 36.884521>,  <34.975018, 32.486790, 36.847599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889683, 32.097748, 36.884521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341132, 0.162696, 0.925829,
		-0.915486, 0.166027, -0.366497,
		-0.213340, -0.972607, 0.092309,
		34.825680, 31.805965, 36.912212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240334, 32.476524, 37.070782>,  <34.975018, 32.486790, 36.847599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240334, 32.476524, 37.070782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448509, 32.157795, 37.193565>,  <34.573414, 31.966558, 37.267235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448509, 32.157795, 37.193565>,  <34.240334, 32.476524, 37.070782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448509, 32.157795, 37.193565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180210, 0.248886, 0.951620,
		-0.834666, -0.550577, -0.014064,
		0.520439, -0.796819, 0.306956,
		34.604641, 31.918749, 37.285652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959705, 32.224594, 37.591652>,  <34.240334, 32.476524, 37.070782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959705, 32.224594, 37.591652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318188, 32.065495, 37.670254>,  <34.533276, 31.970036, 37.717415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318188, 32.065495, 37.670254>,  <33.959705, 32.224594, 37.591652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318188, 32.065495, 37.670254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193009, 0.049246, 0.979960,
		-0.399452, -0.916173, -0.032634,
		0.896206, -0.397746, 0.196501,
		34.587051, 31.946171, 37.729202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756966, 32.383415, 38.337181>,  <33.959705, 32.224594, 37.591652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756966, 32.383415, 38.337181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820923, 32.105621, 38.617786>,  <33.859299, 31.938946, 38.786152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820923, 32.105621, 38.617786>,  <33.756966, 32.383415, 38.337181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820923, 32.105621, 38.617786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150738, -0.685146, -0.712638,
		0.975557, 0.219692, -0.004865,
		0.159894, -0.694485, 0.701516,
		33.868893, 31.897276, 38.828239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553371, 32.258900, 38.369461>,  <33.756966, 32.383415, 38.337181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553371, 32.258900, 38.369461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301216, 31.955002, 38.433220>,  <34.149925, 31.772663, 38.471474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301216, 31.955002, 38.433220>,  <34.553371, 32.258900, 38.369461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301216, 31.955002, 38.433220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392848, -0.489314, -0.778616,
		0.669541, -0.428210, 0.606919,
		-0.630385, -0.759742, 0.159394,
		34.112103, 31.727079, 38.481037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930531, 31.719713, 38.457798>,  <34.553371, 32.258900, 38.369461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930531, 31.719713, 38.457798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583729, 31.661243, 38.267246>,  <34.375648, 31.626162, 38.152916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583729, 31.661243, 38.267246>,  <34.930531, 31.719713, 38.457798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583729, 31.661243, 38.267246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498035, -0.285575, -0.818785,
		-0.016355, -0.947143, 0.320395,
		-0.867003, -0.146176, -0.476381,
		34.323627, 31.617390, 38.124332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022778, 31.136194, 38.054340>,  <34.930531, 31.719713, 38.457798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022778, 31.136194, 38.054340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719322, 31.339180, 37.890903>,  <34.537247, 31.460972, 37.792843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719322, 31.339180, 37.890903>,  <35.022778, 31.136194, 38.054340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719322, 31.339180, 37.890903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296578, -0.289402, -0.910103,
		-0.580090, -0.811620, 0.069050,
		-0.758642, 0.507463, -0.408588,
		34.491730, 31.491419, 37.768326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838314, 30.711067, 37.561150>,  <35.022778, 31.136194, 38.054340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838314, 30.711067, 37.561150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679443, 31.062679, 37.455654>,  <34.584122, 31.273645, 37.392357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679443, 31.062679, 37.455654>,  <34.838314, 30.711067, 37.561150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679443, 31.062679, 37.455654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217482, -0.189037, -0.957584,
		-0.891599, -0.437692, -0.116091,
		-0.397181, 0.879029, -0.263735,
		34.560287, 31.326387, 37.376534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368896, 30.611423, 36.998077>,  <34.838314, 30.711067, 37.561150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368896, 30.611423, 36.998077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493565, 30.989397, 36.958149>,  <34.568363, 31.216181, 36.934193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.493565, 30.989397, 36.958149>,  <34.368896, 30.611423, 36.998077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493565, 30.989397, 36.958149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136306, -0.148431, -0.979484,
		-0.940364, 0.291665, -0.175061,
		0.311666, 0.944933, -0.099824,
		34.587063, 31.272877, 36.928204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022232, 30.927408, 36.378384>,  <34.368896, 30.611423, 36.998077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022232, 30.927408, 36.378384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342987, 31.164663, 36.407139>,  <34.535439, 31.307016, 36.424393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342987, 31.164663, 36.407139>,  <34.022232, 30.927408, 36.378384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342987, 31.164663, 36.407139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099508, -0.013938, -0.994939,
		-0.589133, 0.804981, -0.070199,
		0.801885, 0.593137, 0.071890,
		34.583553, 31.342604, 36.428707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911526, 31.486916, 35.842850>,  <34.022232, 30.927408, 36.378384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911526, 31.486916, 35.842850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304298, 31.491371, 35.918407>,  <34.539963, 31.494043, 35.963741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304298, 31.491371, 35.918407>,  <33.911526, 31.486916, 35.842850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304298, 31.491371, 35.918407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188889, 0.001801, -0.981997,
		-0.011277, 0.999936, -0.000335,
		0.981934, 0.011137, 0.188897,
		34.598877, 31.494713, 35.975075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161839, 31.981691, 35.452991>,  <33.911526, 31.486916, 35.842850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161839, 31.981691, 35.452991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465271, 31.727222, 35.509331>,  <34.647331, 31.574541, 35.543133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465271, 31.727222, 35.509331>,  <34.161839, 31.981691, 35.452991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465271, 31.727222, 35.509331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229592, 0.058680, -0.971516,
		0.609785, 0.769313, 0.190574,
		0.758584, -0.636171, 0.140846,
		34.692844, 31.536371, 35.551586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692699, 32.361507, 35.211983>,  <34.161839, 31.981691, 35.452991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692699, 32.361507, 35.211983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821716, 31.983065, 35.200390>,  <34.899128, 31.755999, 35.193436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821716, 31.983065, 35.200390>,  <34.692699, 32.361507, 35.211983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821716, 31.983065, 35.200390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292919, 0.128882, -0.947411,
		0.900091, 0.297092, 0.318704,
		0.322543, -0.946111, -0.028981,
		34.918480, 31.699232, 35.191696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077496, 32.514759, 34.637337>,  <34.692699, 32.361507, 35.211983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077496, 32.514759, 34.637337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995819, 32.123459, 34.651955>,  <34.946815, 31.888680, 34.660725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995819, 32.123459, 34.651955>,  <35.077496, 32.514759, 34.637337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995819, 32.123459, 34.651955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115320, -0.061113, -0.991447,
		0.972115, -0.198228, 0.125290,
		-0.204189, -0.978249, 0.036549,
		34.934563, 31.829985, 34.662918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773323, 32.321087, 34.969925>,  <35.077496, 32.514759, 34.637337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773323, 32.321087, 34.969925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674847, 31.935722, 34.927551>,  <35.615761, 31.704502, 34.902126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674847, 31.935722, 34.927551>,  <35.773323, 32.321087, 34.969925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674847, 31.935722, 34.927551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682388, -0.094680, -0.724833,
		0.688284, -0.250738, 0.680731,
		-0.246195, -0.963414, -0.105934,
		35.600986, 31.646698, 34.895771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374050, 31.899958, 35.066753>,  <35.773323, 32.321087, 34.969925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374050, 31.899958, 35.066753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101151, 31.724035, 34.833138>,  <35.937408, 31.618481, 34.692966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101151, 31.724035, 34.833138>,  <36.374050, 31.899958, 35.066753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101151, 31.724035, 34.833138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684188, -0.102483, -0.722069,
		0.257719, -0.892225, 0.370831,
		-0.682252, -0.439809, -0.584038,
		35.896477, 31.592093, 34.657925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605202, 31.081093, 34.902081>,  <36.374050, 31.899958, 35.066753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605202, 31.081093, 34.902081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339577, 31.190447, 34.623718>,  <36.180202, 31.256060, 34.456703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339577, 31.190447, 34.623718>,  <36.605202, 31.081093, 34.902081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339577, 31.190447, 34.623718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691719, -0.128654, -0.710614,
		-0.283802, -0.953262, -0.103671,
		-0.664064, 0.273385, -0.695902,
		36.140358, 31.272463, 34.414948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688065, 30.667534, 34.242210>,  <36.605202, 31.081093, 34.902081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688065, 30.667534, 34.242210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482224, 30.996653, 34.145714>,  <36.358719, 31.194124, 34.087818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482224, 30.996653, 34.145714>,  <36.688065, 30.667534, 34.242210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482224, 30.996653, 34.145714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639991, 0.181348, -0.746675,
		-0.570612, -0.538629, -0.619903,
		-0.514600, 0.822795, -0.241239,
		36.327843, 31.243490, 34.073341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506287, 30.606390, 33.541862>,  <36.688065, 30.667534, 34.242210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506287, 30.606390, 33.541862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467831, 30.994804, 33.629360>,  <36.444756, 31.227852, 33.681858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467831, 30.994804, 33.629360>,  <36.506287, 30.606390, 33.541862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467831, 30.994804, 33.629360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650108, 0.227671, -0.724932,
		-0.753736, 0.072513, -0.653165,
		-0.096139, 0.971035, 0.218745,
		36.438988, 31.286116, 33.694984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863384, 30.801104, 33.097832>,  <36.506287, 30.606390, 33.541862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863384, 30.801104, 33.097832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787216, 31.144348, 33.288570>,  <36.741516, 31.350294, 33.403015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787216, 31.144348, 33.288570>,  <36.863384, 30.801104, 33.097832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787216, 31.144348, 33.288570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727505, 0.449487, -0.518361,
		-0.659150, 0.248207, -0.709870,
		-0.190417, 0.858111, 0.476851,
		36.730091, 31.401781, 33.431625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954021, 31.229820, 32.580448>,  <36.863384, 30.801104, 33.097832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954021, 31.229820, 32.580448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980358, 31.463535, 32.903996>,  <36.996159, 31.603764, 33.098125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980358, 31.463535, 32.903996>,  <36.954021, 31.229820, 32.580448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980358, 31.463535, 32.903996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731956, 0.522654, -0.437119,
		-0.678163, 0.620840, -0.393260,
		0.065842, 0.584287, 0.808872,
		37.000111, 31.638821, 33.146656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956554, 31.880394, 32.308880>,  <36.954021, 31.229820, 32.580448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956554, 31.880394, 32.308880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132076, 31.899511, 32.667805>,  <37.237389, 31.910982, 32.883160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132076, 31.899511, 32.667805>,  <36.956554, 31.880394, 32.308880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132076, 31.899511, 32.667805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765033, 0.503941, -0.400959,
		-0.471356, 0.862415, 0.184567,
		0.438804, 0.047794, 0.897311,
		37.263718, 31.913849, 32.936996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109138, 32.603001, 32.454639>,  <36.956554, 31.880394, 32.308880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109138, 32.603001, 32.454639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395855, 32.400669, 32.646618>,  <37.567886, 32.279270, 32.761803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395855, 32.400669, 32.646618>,  <37.109138, 32.603001, 32.454639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395855, 32.400669, 32.646618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677318, 0.668636, -0.306865,
		-0.165685, 0.545033, 0.821881,
		0.716791, -0.505832, 0.479943,
		37.610893, 32.248920, 32.790600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587147, 33.091934, 32.710438>,  <37.109138, 32.603001, 32.454639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587147, 33.091934, 32.710438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812405, 32.761414, 32.706676>,  <37.947559, 32.563103, 32.704418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812405, 32.761414, 32.706676>,  <37.587147, 33.091934, 32.710438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812405, 32.761414, 32.706676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740786, 0.509843, -0.437375,
		0.366199, 0.239340, 0.899230,
		0.563147, -0.826303, -0.009404,
		37.981350, 32.513523, 32.703854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342480, 33.319931, 32.954830>,  <37.587147, 33.091934, 32.710438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342480, 33.319931, 32.954830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395603, 32.958309, 32.792328>,  <38.427475, 32.741337, 32.694828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395603, 32.958309, 32.792328>,  <38.342480, 33.319931, 32.954830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395603, 32.958309, 32.792328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909184, 0.274325, -0.313257,
		0.394647, -0.327755, 0.858388,
		0.132806, -0.904059, -0.406251,
		38.435444, 32.687092, 32.670452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041855, 33.093254, 33.143391>,  <38.342480, 33.319931, 32.954830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041855, 33.093254, 33.143391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947517, 32.873631, 32.822666>,  <38.890915, 32.741856, 32.630230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947517, 32.873631, 32.822666>,  <39.041855, 33.093254, 33.143391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947517, 32.873631, 32.822666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922822, 0.132071, -0.361879,
		0.304590, -0.825281, 0.475537,
		-0.235847, -0.549061, -0.801816,
		38.876762, 32.708912, 32.582123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651215, 32.819038, 33.037319>,  <39.041855, 33.093254, 33.143391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651215, 32.819038, 33.037319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442669, 32.731380, 32.707432>,  <39.317539, 32.678787, 32.509499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442669, 32.731380, 32.707432>,  <39.651215, 32.819038, 33.037319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442669, 32.731380, 32.707432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834654, 0.070147, -0.546289,
		0.177566, -0.973168, 0.146336,
		-0.521366, -0.219143, -0.824715,
		39.286259, 32.665638, 32.460018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929855, 32.185574, 32.616547>,  <39.651215, 32.819038, 33.037319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929855, 32.185574, 32.616547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733974, 32.414398, 32.353355>,  <39.616447, 32.551693, 32.195438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733974, 32.414398, 32.353355>,  <39.929855, 32.185574, 32.616547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733974, 32.414398, 32.353355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828576, 0.070429, -0.555429,
		-0.271401, -0.817179, -0.508488,
		-0.489698, 0.572065, -0.657980,
		39.587067, 32.586018, 32.155960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900467, 31.819963, 31.863457>,  <39.929855, 32.185574, 32.616547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900467, 31.819963, 31.863457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864235, 32.218098, 31.876720>,  <39.842495, 32.456978, 31.884678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864235, 32.218098, 31.876720>,  <39.900467, 31.819963, 31.863457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864235, 32.218098, 31.876720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908437, 0.096227, -0.406796,
		-0.408090, -0.006727, -0.912917,
		-0.090584, 0.995337, 0.033158,
		39.837059, 32.516697, 31.886667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965996, 32.227955, 31.203234>,  <39.900467, 31.819963, 31.863457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965996, 32.227955, 31.203234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108509, 32.432072, 31.516325>,  <40.194016, 32.554543, 31.704180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108509, 32.432072, 31.516325>,  <39.965996, 32.227955, 31.203234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108509, 32.432072, 31.516325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934260, -0.207911, -0.289707,
		0.014902, 0.834489, -0.550824,
		0.356280, 0.510296, 0.782728,
		40.215393, 32.585159, 31.751143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577072, 32.540684, 30.955820>,  <39.965996, 32.227955, 31.203234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577072, 32.540684, 30.955820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632183, 32.623901, 31.343166>,  <40.665249, 32.673832, 31.575575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632183, 32.623901, 31.343166>,  <40.577072, 32.540684, 30.955820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632183, 32.623901, 31.343166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982019, 0.098701, -0.160922,
		-0.129058, 0.973127, -0.190706,
		0.137775, 0.208045, 0.968367,
		40.673515, 32.686314, 31.633677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959698, 33.217278, 30.988207>,  <40.577072, 32.540684, 30.955820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959698, 33.217278, 30.988207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027691, 32.980907, 31.303652>,  <41.068485, 32.839085, 31.492918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027691, 32.980907, 31.303652>,  <40.959698, 33.217278, 30.988207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027691, 32.980907, 31.303652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979129, 0.010809, -0.202950,
		0.111405, 0.806652, 0.580432,
		0.169984, -0.590928, 0.788612,
		41.078686, 32.803631, 31.540236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349854, 33.537033, 31.578302>,  <40.959698, 33.217278, 30.988207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349854, 33.537033, 31.578302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431496, 33.149628, 31.521288>,  <41.480480, 32.917183, 31.487080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.431496, 33.149628, 31.521288>,  <41.349854, 33.537033, 31.578302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431496, 33.149628, 31.521288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890176, 0.244204, -0.384644,
		0.407342, -0.048374, 0.911994,
		0.204106, -0.968517, -0.142536,
		41.492729, 32.859074, 31.478527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040356, 33.333267, 31.774765>,  <41.349854, 33.537033, 31.578302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040356, 33.333267, 31.774765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976772, 33.057877, 31.491714>,  <41.938622, 32.892643, 31.321884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976772, 33.057877, 31.491714>,  <42.040356, 33.333267, 31.774765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976772, 33.057877, 31.491714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935816, 0.123328, -0.330209,
		0.314611, -0.714696, 0.624684,
		-0.158958, -0.688477, -0.707624,
		41.929085, 32.851334, 31.279427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544392, 32.761459, 31.724127>,  <42.040356, 33.333267, 31.774765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544392, 32.761459, 31.724127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367294, 32.904160, 31.395077>,  <42.261036, 32.989780, 31.197647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367294, 32.904160, 31.395077>,  <42.544392, 32.761459, 31.724127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367294, 32.904160, 31.395077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887449, 0.043270, -0.458869,
		-0.128106, -0.933198, -0.335753,
		-0.442744, 0.356748, -0.822623,
		42.234470, 33.011185, 31.148291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146400, 32.540585, 31.480171>,  <42.544392, 32.761459, 31.724127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146400, 32.540585, 31.480171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030807, 32.901459, 31.608265>,  <42.961452, 33.117985, 31.685122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030807, 32.901459, 31.608265>,  <43.146400, 32.540585, 31.480171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030807, 32.901459, 31.608265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940171, 0.204397, 0.272582,
		0.180463, 0.379849, -0.907275,
		-0.288984, 0.902184, 0.320237,
		42.944111, 33.172115, 31.704336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524620, 33.029060, 31.197786>,  <43.146400, 32.540585, 31.480171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524620, 33.029060, 31.197786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414154, 33.171238, 31.554974>,  <43.347874, 33.256546, 31.769285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414154, 33.171238, 31.554974>,  <43.524620, 33.029060, 31.197786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414154, 33.171238, 31.554974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955971, 0.197535, 0.217024,
		-0.099253, 0.913586, -0.394347,
		-0.276167, 0.355444, 0.892968,
		43.331303, 33.277870, 31.822865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712799, 33.705906, 31.321728>,  <43.524620, 33.029060, 31.197786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712799, 33.705906, 31.321728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.704243, 33.486675, 31.656191>,  <43.699108, 33.355137, 31.856869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.704243, 33.486675, 31.656191>,  <43.712799, 33.705906, 31.321728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.704243, 33.486675, 31.656191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938363, 0.277591, 0.205958,
		-0.344990, 0.789024, 0.508354,
		-0.021391, -0.548073, 0.836157,
		43.697826, 33.322254, 31.907038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772602, 34.193649, 31.861214>,  <43.712799, 33.705906, 31.321728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772602, 34.193649, 31.861214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887203, 33.838425, 32.005024>,  <43.955963, 33.625290, 32.091309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887203, 33.838425, 32.005024>,  <43.772602, 34.193649, 31.861214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887203, 33.838425, 32.005024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904331, 0.374590, 0.204614,
		-0.316385, 0.266507, 0.910425,
		0.286505, -0.888063, 0.359526,
		43.973156, 33.572006, 32.112881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131031, 34.336002, 32.570560>,  <43.772602, 34.193649, 31.861214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131031, 34.336002, 32.570560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271408, 34.019524, 32.370224>,  <44.355637, 33.829636, 32.250023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.271408, 34.019524, 32.370224>,  <44.131031, 34.336002, 32.570560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271408, 34.019524, 32.370224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935456, 0.320193, 0.149660,
		0.041953, -0.521034, 0.852504,
		0.350944, -0.791201, -0.500838,
		44.376690, 33.782162, 32.219971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.672478, 34.215847, 32.951462>,  <44.131031, 34.336002, 32.570560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.672478, 34.215847, 32.951462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.736458, 34.016251, 32.610775>,  <44.774845, 33.896492, 32.406361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.736458, 34.016251, 32.610775>,  <44.672478, 34.215847, 32.951462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736458, 34.016251, 32.610775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978294, 0.195285, 0.069312,
		0.131742, -0.844318, 0.519395,
		0.159952, -0.498990, -0.851718,
		44.784443, 33.866554, 32.355259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069118, 33.521732, 33.101112>,  <44.672478, 34.215847, 32.951462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069118, 33.521732, 33.101112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157730, 33.716854, 32.763363>,  <45.210896, 33.833927, 32.560715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157730, 33.716854, 32.763363>,  <45.069118, 33.521732, 33.101112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.157730, 33.716854, 32.763363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917234, 0.189736, 0.350260,
		0.331068, -0.852081, -0.405402,
		0.221530, 0.487809, -0.844374,
		45.224190, 33.863197, 32.510052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.767452, 33.314541, 32.842808>,  <45.069118, 33.521732, 33.101112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.767452, 33.314541, 32.842808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651623, 33.689445, 32.765152>,  <45.582127, 33.914387, 32.718559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651623, 33.689445, 32.765152>,  <45.767452, 33.314541, 32.842808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651623, 33.689445, 32.765152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797858, 0.348410, 0.491969,
		0.528744, -0.012437, -0.848690,
		-0.289574, 0.937260, -0.194143,
		45.564751, 33.970623, 32.706909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.487171, 33.517971, 33.130951>,  <45.767452, 33.314541, 32.842808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.487171, 33.517971, 33.130951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.367561, 33.864716, 33.290516>,  <46.295795, 34.072762, 33.386253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.367561, 33.864716, 33.290516>,  <46.487171, 33.517971, 33.130951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.367561, 33.864716, 33.290516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914712, 0.141305, 0.378597,
		0.271824, 0.478100, -0.835184,
		-0.299023, 0.866864, 0.398913,
		46.277855, 34.124775, 33.410191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.950565, 34.080193, 32.869068>,  <46.487171, 33.517971, 33.130951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.950565, 34.080193, 32.869068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773193, 34.166557, 33.217033>,  <46.666771, 34.218376, 33.425812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773193, 34.166557, 33.217033>,  <46.950565, 34.080193, 32.869068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.773193, 34.166557, 33.217033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890174, 0.219432, 0.399299,
		-0.104673, 0.951437, -0.289503,
		-0.443434, 0.215912, 0.869913,
		46.640163, 34.231331, 33.478008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.109409, 34.789795, 33.075829>,  <46.950565, 34.080193, 32.869068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.109409, 34.789795, 33.075829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049820, 34.536541, 33.379658>,  <47.014069, 34.384590, 33.561954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.049820, 34.536541, 33.379658>,  <47.109409, 34.789795, 33.075829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.049820, 34.536541, 33.379658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882637, 0.261185, 0.390812,
		-0.445825, 0.728647, 0.519917,
		-0.148970, -0.633132, 0.759574,
		47.005131, 34.346600, 33.607529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.103664, 35.229156, 33.719749>,  <47.109409, 34.789795, 33.075829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.103664, 35.229156, 33.719749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228123, 34.849380, 33.736500>,  <47.302799, 34.621513, 33.746548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.228123, 34.849380, 33.736500>,  <47.103664, 35.229156, 33.719749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.228123, 34.849380, 33.736500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911243, 0.310559, 0.270535,
		-0.269860, -0.046021, 0.961799,
		0.311145, -0.949440, 0.041871,
		47.321465, 34.564548, 33.749062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.351006, 35.085453, 34.403519>,  <47.103664, 35.229156, 33.719749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.351006, 35.085453, 34.403519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.530342, 34.909554, 34.092236>,  <47.637943, 34.804012, 33.905464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.530342, 34.909554, 34.092236>,  <47.351006, 35.085453, 34.403519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.530342, 34.909554, 34.092236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876599, 0.386591, 0.286567,
		0.174833, -0.810659, 0.558808,
		0.448338, -0.439749, -0.778212,
		47.664845, 34.777630, 33.858772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.997932, 35.314800, 34.976105>,  <47.351006, 35.085453, 34.403519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.997932, 35.314800, 34.976105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.677494, 35.075775, 34.989738>,  <47.485229, 34.932362, 34.997921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.677494, 35.075775, 34.989738>,  <47.997932, 35.314800, 34.976105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.677494, 35.075775, 34.989738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012520, -0.040207, -0.999113,
		0.598403, -0.800813, 0.024728,
		-0.801098, -0.597563, 0.034086,
		47.437164, 34.896507, 34.999966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.262972, 29.182240, 24.322874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.986071, 29.451488, 24.218803>,  <30.819929, 29.613039, 24.156361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.986071, 29.451488, 24.218803>,  <31.262972, 29.182240, 24.322874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986071, 29.451488, 24.218803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042967, 0.398331, 0.916234,
		0.720375, 0.623087, -0.304668,
		-0.692252, 0.673123, -0.260176,
		30.778395, 29.653425, 24.140751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488096, 29.823692, 24.585484>,  <31.262972, 29.182240, 24.322874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488096, 29.823692, 24.585484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.096018, 29.885824, 24.536358>,  <30.860771, 29.923103, 24.506882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.096018, 29.885824, 24.536358>,  <31.488096, 29.823692, 24.585484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096018, 29.885824, 24.536358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051479, 0.399012, 0.915500,
		0.191210, 0.903694, -0.383115,
		-0.980198, 0.155331, -0.122816,
		30.801958, 29.932423, 24.499514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319803, 30.494160, 24.675472>,  <31.488096, 29.823692, 24.585484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319803, 30.494160, 24.675472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.969532, 30.316341, 24.750908>,  <30.759369, 30.209650, 24.796169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.969532, 30.316341, 24.750908>,  <31.319803, 30.494160, 24.675472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969532, 30.316341, 24.750908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119137, 0.577349, 0.807759,
		-0.467969, 0.684869, -0.558533,
		-0.875678, -0.444548, 0.188588,
		30.706829, 30.182978, 24.807484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983696, 31.057512, 24.919899>,  <31.319803, 30.494160, 24.675472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983696, 31.057512, 24.919899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.774895, 30.741945, 25.049587>,  <30.649614, 30.552605, 25.127401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.774895, 30.741945, 25.049587>,  <30.983696, 31.057512, 24.919899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774895, 30.741945, 25.049587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046724, 0.405999, 0.912678,
		-0.851663, 0.461272, -0.248795,
		-0.522003, -0.788919, 0.324222,
		30.618294, 30.505270, 25.146854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440945, 31.399885, 25.309465>,  <30.983696, 31.057512, 24.919899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440945, 31.399885, 25.309465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.470001, 31.023048, 25.440422>,  <30.487436, 30.796946, 25.518997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.470001, 31.023048, 25.440422>,  <30.440945, 31.399885, 25.309465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470001, 31.023048, 25.440422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041135, 0.325151, 0.944767,
		-0.996509, -0.082097, -0.015133,
		0.072642, -0.942091, 0.327393,
		30.491795, 30.740421, 25.538641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008356, 31.396839, 25.926851>,  <30.440945, 31.399885, 25.309465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008356, 31.396839, 25.926851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.254101, 31.084539, 25.972441>,  <30.401546, 30.897160, 25.999794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.254101, 31.084539, 25.972441>,  <30.008356, 31.396839, 25.926851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254101, 31.084539, 25.972441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043159, 0.177486, 0.983177,
		-0.787844, -0.599106, 0.142737,
		0.614360, -0.780751, 0.113974,
		30.438410, 30.850315, 26.006634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720875, 31.058704, 26.558174>,  <30.008356, 31.396839, 25.926851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720875, 31.058704, 26.558174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.093653, 30.925446, 26.500919>,  <30.317320, 30.845490, 26.466566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.093653, 30.925446, 26.500919>,  <29.720875, 31.058704, 26.558174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093653, 30.925446, 26.500919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228466, 0.232984, 0.945263,
		-0.281564, -0.913636, 0.293242,
		0.931947, -0.333147, -0.143134,
		30.373238, 30.825500, 26.457979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834991, 30.440260, 27.054401>,  <29.720875, 31.058704, 26.558174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834991, 30.440260, 27.054401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.200344, 30.587933, 26.985767>,  <30.419556, 30.676537, 26.944588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.200344, 30.587933, 26.985767>,  <29.834991, 30.440260, 27.054401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200344, 30.587933, 26.985767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248865, -0.172789, 0.953001,
		0.322182, -0.913154, -0.249699,
		0.913381, 0.369181, -0.171583,
		30.474358, 30.698687, 26.934292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317425, 30.018324, 27.516611>,  <29.834991, 30.440260, 27.054401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317425, 30.018324, 27.516611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.550426, 30.322100, 27.400723>,  <30.690228, 30.504366, 27.331190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.550426, 30.322100, 27.400723>,  <30.317425, 30.018324, 27.516611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550426, 30.322100, 27.400723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481722, -0.035454, 0.875606,
		0.654699, -0.649610, -0.386492,
		0.582505, 0.759441, -0.289720,
		30.725178, 30.549932, 27.313807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061617, 29.885712, 27.783487>,  <30.317425, 30.018324, 27.516611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061617, 29.885712, 27.783487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.048126, 30.276617, 27.699757>,  <31.040031, 30.511160, 27.649519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.048126, 30.276617, 27.699757>,  <31.061617, 29.885712, 27.783487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048126, 30.276617, 27.699757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449114, 0.201927, 0.870358,
		0.892838, -0.064655, -0.445713,
		-0.033728, 0.977264, -0.209325,
		31.038008, 30.569796, 27.636959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777206, 30.131958, 27.823343>,  <31.061617, 29.885712, 27.783487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777206, 30.131958, 27.823343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.525837, 30.437796, 27.880583>,  <31.375015, 30.621298, 27.914927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.525837, 30.437796, 27.880583>,  <31.777206, 30.131958, 27.823343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525837, 30.437796, 27.880583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419482, 0.178187, 0.890103,
		0.655070, 0.619390, -0.432711,
		-0.628425, 0.764595, 0.143098,
		31.337309, 30.667173, 27.923512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230114, 30.774618, 27.967180>,  <31.777206, 30.131958, 27.823343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230114, 30.774618, 27.967180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.873346, 30.882103, 28.112658>,  <31.659285, 30.946594, 28.199944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.873346, 30.882103, 28.112658>,  <32.230114, 30.774618, 27.967180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873346, 30.882103, 28.112658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431825, 0.267475, 0.861385,
		0.134184, 0.925339, -0.354602,
		-0.891920, 0.268710, 0.363693,
		31.605770, 30.962715, 28.221766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309711, 31.415588, 28.270973>,  <32.230114, 30.774618, 27.967180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309711, 31.415588, 28.270973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.969637, 31.281805, 28.433613>,  <31.765593, 31.201534, 28.531197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.969637, 31.281805, 28.433613>,  <32.309711, 31.415588, 28.270973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969637, 31.281805, 28.433613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218891, 0.477826, 0.850746,
		-0.478822, 0.812293, -0.333031,
		-0.850186, -0.334459, 0.406597,
		31.714581, 31.181467, 28.555592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103249, 32.073582, 28.442633>,  <32.309711, 31.415588, 28.270973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103249, 32.073582, 28.442633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.936108, 31.775734, 28.650839>,  <31.835823, 31.597025, 28.775763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.936108, 31.775734, 28.650839>,  <32.103249, 32.073582, 28.442633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936108, 31.775734, 28.650839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061952, 0.548242, 0.834022,
		-0.906401, 0.380744, -0.182953,
		-0.417851, -0.744624, 0.520515,
		31.810753, 31.552347, 28.806993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560104, 32.251881, 28.971512>,  <32.103249, 32.073582, 28.442633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560104, 32.251881, 28.971512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.681135, 31.897270, 29.111519>,  <31.753754, 31.684504, 29.195522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.681135, 31.897270, 29.111519>,  <31.560104, 32.251881, 28.971512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681135, 31.897270, 29.111519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132029, 0.402675, 0.905771,
		-0.943936, -0.227853, 0.238888,
		0.302577, -0.886530, 0.350016,
		31.771908, 31.631311, 29.216524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178209, 32.247864, 29.542559>,  <31.560104, 32.251881, 28.971512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178209, 32.247864, 29.542559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.469778, 31.985662, 29.621544>,  <31.644718, 31.828342, 29.668936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.469778, 31.985662, 29.621544>,  <31.178209, 32.247864, 29.542559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469778, 31.985662, 29.621544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085582, 0.373423, 0.923705,
		-0.679229, -0.656407, 0.328295,
		0.728920, -0.655503, 0.197463,
		31.688454, 31.789011, 29.680782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085972, 32.145096, 30.269102>,  <31.178209, 32.247864, 29.542559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085972, 32.145096, 30.269102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.459295, 32.011063, 30.217485>,  <31.683289, 31.930643, 30.186516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.459295, 32.011063, 30.217485>,  <31.085972, 32.145096, 30.269102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459295, 32.011063, 30.217485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248048, 0.341808, 0.906443,
		-0.259627, -0.878001, 0.402129,
		0.933309, -0.335084, -0.129044,
		31.739288, 31.910538, 30.178772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224993, 31.827578, 30.918697>,  <31.085972, 32.145096, 30.269102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224993, 31.827578, 30.918697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.573410, 31.902063, 30.736879>,  <31.782459, 31.946754, 30.627789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.573410, 31.902063, 30.736879>,  <31.224993, 31.827578, 30.918697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573410, 31.902063, 30.736879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384262, 0.318117, 0.866686,
		0.305977, -0.929586, 0.205544,
		0.871046, 0.186203, -0.454541,
		31.834723, 31.957928, 30.600515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754429, 31.533939, 31.419159>,  <31.224993, 31.827578, 30.918697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754429, 31.533939, 31.419159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.953697, 31.779177, 31.173903>,  <32.073257, 31.926319, 31.026749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.953697, 31.779177, 31.173903>,  <31.754429, 31.533939, 31.419159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953697, 31.779177, 31.173903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617648, 0.245378, 0.747196,
		0.608552, -0.750937, -0.256436,
		0.498173, 0.613094, -0.613139,
		32.103149, 31.963104, 30.989962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414330, 31.291147, 31.552168>,  <31.754429, 31.533939, 31.419159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414330, 31.291147, 31.552168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.421848, 31.657120, 31.390898>,  <32.426361, 31.876703, 31.294136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.421848, 31.657120, 31.390898>,  <32.414330, 31.291147, 31.552168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421848, 31.657120, 31.390898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674434, 0.286082, 0.680658,
		0.738095, -0.284712, -0.611681,
		0.018801, 0.914929, -0.403176,
		32.427490, 31.931599, 31.269945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130909, 31.471350, 31.575768>,  <32.414330, 31.291147, 31.552168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130909, 31.471350, 31.575768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.958344, 31.831633, 31.555326>,  <32.854805, 32.047802, 31.543062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.958344, 31.831633, 31.555326>,  <33.130909, 31.471350, 31.575768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958344, 31.831633, 31.555326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706957, 0.372712, 0.601080,
		0.560444, 0.223184, -0.797553,
		-0.431409, 0.900708, -0.051103,
		32.828922, 32.101845, 31.539995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679428, 31.922911, 31.590755>,  <33.130909, 31.471350, 31.575768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679428, 31.922911, 31.590755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.370968, 32.168266, 31.658962>,  <33.185890, 32.315479, 31.699886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.370968, 32.168266, 31.658962>,  <33.679428, 31.922911, 31.590755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370968, 32.168266, 31.658962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554219, 0.514966, 0.653950,
		0.313316, 0.598800, -0.737070,
		-0.771152, 0.613391, 0.170519,
		33.139622, 32.352283, 31.710117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337601, 32.103416, 31.753670>,  <33.679428, 31.922911, 31.590755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337601, 32.103416, 31.753670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.695908, 31.926798, 31.774220>,  <34.910892, 31.820827, 31.786549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.695908, 31.926798, 31.774220>,  <34.337601, 32.103416, 31.753670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695908, 31.926798, 31.774220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109911, -0.331980, -0.936861,
		0.430723, 0.833562, -0.345907,
		0.895766, -0.441547, 0.051374,
		34.964638, 31.794334, 31.789631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763565, 32.352551, 31.199871>,  <34.337601, 32.103416, 31.753670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763565, 32.352551, 31.199871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.908417, 31.993868, 31.301682>,  <34.995327, 31.778658, 31.362768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.908417, 31.993868, 31.301682>,  <34.763565, 32.352551, 31.199871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908417, 31.993868, 31.301682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118850, -0.226412, -0.966753,
		0.924521, 0.380337, 0.024584,
		0.362126, -0.896706, 0.254526,
		35.017056, 31.724855, 31.378038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202007, 32.295410, 30.638891>,  <34.763565, 32.352551, 31.199871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202007, 32.295410, 30.638891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.137241, 31.938643, 30.807777>,  <35.098381, 31.724583, 30.909109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.137241, 31.938643, 30.807777>,  <35.202007, 32.295410, 30.638891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137241, 31.938643, 30.807777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028645, -0.431928, -0.901453,
		0.986390, -0.133860, 0.095483,
		-0.161910, -0.891919, 0.422215,
		35.088669, 31.671066, 30.934443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627903, 31.816319, 30.307863>,  <35.202007, 32.295410, 30.638891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627903, 31.816319, 30.307863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.367493, 31.570866, 30.486578>,  <35.211246, 31.423594, 30.593807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.367493, 31.570866, 30.486578>,  <35.627903, 31.816319, 30.307863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367493, 31.570866, 30.486578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051883, -0.623205, -0.780336,
		0.757278, -0.484840, 0.437561,
		-0.651028, -0.613633, 0.446785,
		35.172184, 31.386776, 30.620613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869766, 31.177683, 30.145992>,  <35.627903, 31.816319, 30.307863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869766, 31.177683, 30.145992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.497414, 31.100969, 30.270365>,  <35.274002, 31.054941, 30.344988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.497414, 31.100969, 30.270365>,  <35.869766, 31.177683, 30.145992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497414, 31.100969, 30.270365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043301, -0.787193, -0.615185,
		0.362748, -0.586128, 0.724478,
		-0.930881, -0.191786, 0.310932,
		35.218151, 31.043434, 30.363644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799538, 30.469753, 30.325293>,  <35.869766, 31.177683, 30.145992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799538, 30.469753, 30.325293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.430367, 30.583141, 30.221096>,  <35.208866, 30.651175, 30.158579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.430367, 30.583141, 30.221096>,  <35.799538, 30.469753, 30.325293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430367, 30.583141, 30.221096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046870, -0.754337, -0.654812,
		-0.382116, -0.592133, 0.709483,
		-0.922925, 0.283468, -0.260491,
		35.153488, 30.668182, 30.142948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314022, 29.929886, 30.238678>,  <35.799538, 30.469753, 30.325293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314022, 29.929886, 30.238678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133068, 30.209743, 30.017467>,  <35.024494, 30.377659, 29.884741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.133068, 30.209743, 30.017467>,  <35.314022, 29.929886, 30.238678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133068, 30.209743, 30.017467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030130, -0.607767, -0.793544,
		-0.891312, -0.375652, 0.253866,
		-0.452388, 0.699646, -0.553028,
		34.997353, 30.419638, 29.851559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763741, 29.523270, 29.822763>,  <35.314022, 29.929886, 30.238678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763741, 29.523270, 29.822763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.811363, 29.886631, 29.662451>,  <34.839935, 30.104649, 29.566263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.811363, 29.886631, 29.662451>,  <34.763741, 29.523270, 29.822763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811363, 29.886631, 29.662451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043507, -0.398493, -0.916139,
		-0.991934, 0.126507, -0.007920,
		0.119054, 0.908405, -0.400783,
		34.847080, 30.159153, 29.542215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235420, 29.580336, 29.305588>,  <34.763741, 29.523270, 29.822763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235420, 29.580336, 29.305588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.517326, 29.847000, 29.208532>,  <34.686470, 30.007000, 29.150299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.517326, 29.847000, 29.208532>,  <34.235420, 29.580336, 29.305588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517326, 29.847000, 29.208532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006958, -0.348490, -0.937287,
		-0.709411, 0.658875, -0.250241,
		0.704761, 0.666662, -0.242638,
		34.728756, 30.046999, 29.135740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001022, 29.970686, 28.631159>,  <34.235420, 29.580336, 29.305588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001022, 29.970686, 28.631159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.395603, 30.032213, 28.653997>,  <34.632351, 30.069130, 28.667700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.395603, 30.032213, 28.653997>,  <34.001022, 29.970686, 28.631159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395603, 30.032213, 28.653997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092754, -0.235762, -0.967374,
		-0.135337, 0.959561, -0.246834,
		0.986448, 0.153817, 0.057096,
		34.691536, 30.078358, 28.671125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055550, 30.338915, 28.061861>,  <34.001022, 29.970686, 28.631159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055550, 30.338915, 28.061861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.415195, 30.197540, 28.165140>,  <34.630985, 30.112715, 28.227108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.415195, 30.197540, 28.165140>,  <34.055550, 30.338915, 28.061861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415195, 30.197540, 28.165140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157080, -0.290051, -0.944032,
		0.408548, 0.889355, -0.205272,
		0.899119, -0.353438, 0.258200,
		34.684933, 30.091509, 28.242599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555088, 30.629232, 27.604292>,  <34.055550, 30.338915, 28.061861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555088, 30.629232, 27.604292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739201, 30.296707, 27.728910>,  <34.849670, 30.097193, 27.803682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739201, 30.296707, 27.728910>,  <34.555088, 30.629232, 27.604292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739201, 30.296707, 27.728910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183131, -0.254473, -0.949582,
		0.868678, 0.494131, 0.035109,
		0.460283, -0.831311, 0.311546,
		34.877285, 30.047314, 27.822374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188019, 30.611170, 27.149597>,  <34.555088, 30.629232, 27.604292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188019, 30.611170, 27.149597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.104046, 30.251221, 27.302519>,  <35.053661, 30.035252, 27.394272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.104046, 30.251221, 27.302519>,  <35.188019, 30.611170, 27.149597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104046, 30.251221, 27.302519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033467, -0.397402, -0.917034,
		0.977143, -0.179721, 0.113544,
		-0.209932, -0.899874, 0.382303,
		35.041065, 29.981258, 27.417210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481838, 30.189644, 26.637255>,  <35.188019, 30.611170, 27.149597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481838, 30.189644, 26.637255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.236675, 29.946465, 26.839142>,  <35.089577, 29.800556, 26.960274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.236675, 29.946465, 26.839142>,  <35.481838, 30.189644, 26.637255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236675, 29.946465, 26.839142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096592, -0.576322, -0.811494,
		0.784226, -0.546125, 0.294511,
		-0.612910, -0.607948, 0.504718,
		35.052803, 29.764080, 26.990557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666252, 29.500219, 26.403471>,  <35.481838, 30.189644, 26.637255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666252, 29.500219, 26.403471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.303978, 29.454309, 26.566719>,  <35.086613, 29.426764, 26.664667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.303978, 29.454309, 26.566719>,  <35.666252, 29.500219, 26.403471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303978, 29.454309, 26.566719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338844, -0.382584, -0.859543,
		0.254794, -0.916764, 0.307610,
		-0.905684, -0.114775, 0.408120,
		35.032272, 29.419878, 26.689156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424301, 28.891203, 26.080530>,  <35.666252, 29.500219, 26.403471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424301, 28.891203, 26.080530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.110039, 29.094250, 26.221992>,  <34.921482, 29.216078, 26.306870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.110039, 29.094250, 26.221992>,  <35.424301, 28.891203, 26.080530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110039, 29.094250, 26.221992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500500, -0.185485, -0.845633,
		-0.363661, -0.841379, 0.399789,
		-0.785653, 0.507618, 0.353656,
		34.874344, 29.246534, 26.328089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882339, 28.454660, 25.917780>,  <35.424301, 28.891203, 26.080530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882339, 28.454660, 25.917780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.709373, 28.806553, 25.996862>,  <34.605595, 29.017689, 26.044312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.709373, 28.806553, 25.996862>,  <34.882339, 28.454660, 25.917780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709373, 28.806553, 25.996862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699654, -0.189058, -0.689015,
		-0.568771, -0.436267, 0.697260,
		-0.432417, 0.879732, 0.197705,
		34.579647, 29.070473, 26.056173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289948, 28.318256, 26.202024>,  <34.882339, 28.454660, 25.917780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289948, 28.318256, 26.202024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.278938, 28.670433, 26.012684>,  <34.272335, 28.881739, 25.899078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.278938, 28.670433, 26.012684>,  <34.289948, 28.318256, 26.202024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278938, 28.670433, 26.012684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621174, -0.386069, -0.681978,
		-0.783189, 0.275267, 0.557533,
		-0.027520, 0.880443, -0.473353,
		34.270683, 28.934566, 25.870678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.436695, 28.542292, 25.879677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.671375, 28.810841, 25.698551>,  <33.812183, 28.971970, 25.589876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.671375, 28.810841, 25.698551>,  <33.436695, 28.542292, 25.879677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671375, 28.810841, 25.698551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478071, -0.164171, -0.862842,
		-0.653626, 0.722709, 0.224644,
		0.586704, 0.671371, -0.452813,
		33.847385, 29.012253, 25.562708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996212, 28.857815, 25.368210>,  <33.436695, 28.542292, 25.879677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996212, 28.857815, 25.368210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.349392, 28.990479, 25.235302>,  <33.561298, 29.070078, 25.155558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.349392, 28.990479, 25.235302>,  <32.996212, 28.857815, 25.368210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349392, 28.990479, 25.235302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367771, 0.048739, -0.928638,
		-0.291798, 0.942139, 0.165009,
		0.882949, 0.331660, -0.332269,
		33.614277, 29.089977, 25.135622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934582, 29.537386, 24.944250>,  <32.996212, 28.857815, 25.368210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934582, 29.537386, 24.944250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.233402, 29.288879, 24.849640>,  <33.412693, 29.139774, 24.792873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.233402, 29.288879, 24.849640>,  <32.934582, 29.537386, 24.944250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233402, 29.288879, 24.849640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279020, 0.029911, -0.959819,
		0.603380, 0.783027, -0.151001,
		0.747048, -0.621268, -0.236528,
		33.457516, 29.102499, 24.778681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185856, 29.867018, 24.324148>,  <32.934582, 29.537386, 24.944250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185856, 29.867018, 24.324148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.337914, 29.497381, 24.339884>,  <33.429150, 29.275599, 24.349325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.337914, 29.497381, 24.339884>,  <33.185856, 29.867018, 24.324148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337914, 29.497381, 24.339884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250845, -0.143943, -0.957265,
		0.890263, 0.354029, -0.286523,
		0.380143, -0.924091, 0.039341,
		33.451958, 29.220154, 24.351686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254505, 29.797100, 23.682590>,  <33.185856, 29.867018, 24.324148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254505, 29.797100, 23.682590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356529, 29.433199, 23.813614>,  <33.417744, 29.214859, 23.892229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356529, 29.433199, 23.813614>,  <33.254505, 29.797100, 23.682590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356529, 29.433199, 23.813614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164043, -0.293140, -0.941891,
		0.952909, 0.293969, 0.074471,
		0.255057, -0.909753, 0.327560,
		33.433044, 29.160273, 23.911882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014675, 29.520517, 23.429960>,  <33.254505, 29.797100, 23.682590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014675, 29.520517, 23.429960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759445, 29.219772, 23.496376>,  <33.606308, 29.039326, 23.536226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759445, 29.219772, 23.496376>,  <34.014675, 29.520517, 23.429960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759445, 29.219772, 23.496376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160999, -0.341155, -0.926117,
		0.752958, -0.564196, 0.338730,
		-0.638071, -0.751862, 0.166040,
		33.568024, 28.994213, 23.546188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353436, 28.948856, 23.018576>,  <34.014675, 29.520517, 23.429960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353436, 28.948856, 23.018576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.982430, 28.819021, 23.092722>,  <33.759827, 28.741121, 23.137211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.982430, 28.819021, 23.092722>,  <34.353436, 28.948856, 23.018576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982430, 28.819021, 23.092722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116216, -0.220918, -0.968343,
		0.355263, -0.919694, 0.167183,
		-0.927514, -0.324587, 0.185367,
		33.704174, 28.721645, 23.148333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224461, 28.311983, 22.682489>,  <34.353436, 28.948856, 23.018576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224461, 28.311983, 22.682489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.850956, 28.449905, 22.720848>,  <33.626854, 28.532658, 22.743864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.850956, 28.449905, 22.720848>,  <34.224461, 28.311983, 22.682489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850956, 28.449905, 22.720848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146849, -0.124776, -0.981257,
		-0.326376, -0.930345, 0.167145,
		-0.933763, 0.344804, 0.095896,
		33.570827, 28.553347, 22.749617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803677, 27.861076, 22.215300>,  <34.224461, 28.311983, 22.682489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803677, 27.861076, 22.215300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.606312, 28.204233, 22.272663>,  <33.487892, 28.410128, 22.307081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.606312, 28.204233, 22.272663>,  <33.803677, 27.861076, 22.215300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606312, 28.204233, 22.272663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285689, -0.004116, -0.958314,
		-0.821541, -0.513811, 0.247121,
		-0.493409, 0.857893, 0.143409,
		33.458290, 28.461601, 22.315685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236622, 27.805008, 21.753353>,  <33.803677, 27.861076, 22.215300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236622, 27.805008, 21.753353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.231018, 28.196577, 21.834856>,  <33.227657, 28.431519, 21.883759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.231018, 28.196577, 21.834856>,  <33.236622, 27.805008, 21.753353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231018, 28.196577, 21.834856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162775, 0.198827, -0.966422,
		-0.986564, -0.046702, 0.156559,
		-0.014006, 0.978921, 0.203758,
		33.226818, 28.490253, 21.895983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763138, 28.119347, 21.356213>,  <33.236622, 27.805008, 21.753353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763138, 28.119347, 21.356213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.956238, 28.451532, 21.467411>,  <33.072098, 28.650845, 21.534130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.956238, 28.451532, 21.467411>,  <32.763138, 28.119347, 21.356213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956238, 28.451532, 21.467411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039716, 0.337870, -0.940355,
		-0.874859, 0.442913, 0.196088,
		0.482747, 0.830465, 0.277998,
		33.101063, 28.700672, 21.550810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383900, 28.634417, 21.090096>,  <32.763138, 28.119347, 21.356213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383900, 28.634417, 21.090096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.756374, 28.769236, 21.145651>,  <32.979858, 28.850126, 21.178984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.756374, 28.769236, 21.145651>,  <32.383900, 28.634417, 21.090096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756374, 28.769236, 21.145651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023823, 0.436447, -0.899415,
		-0.363762, 0.834215, 0.414443,
		0.931187, 0.337046, 0.138889,
		33.035732, 28.870350, 21.187317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384613, 29.418804, 20.959848>,  <32.383900, 28.634417, 21.090096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384613, 29.418804, 20.959848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.758636, 29.279404, 20.933886>,  <32.983051, 29.195763, 20.918308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.758636, 29.279404, 20.933886>,  <32.384613, 29.418804, 20.959848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758636, 29.279404, 20.933886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084754, 0.397571, -0.913649,
		0.344213, 0.848813, 0.401289,
		0.935058, -0.348501, -0.064909,
		33.039154, 29.174854, 20.914413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785519, 29.896353, 20.599972>,  <32.384613, 29.418804, 20.959848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785519, 29.896353, 20.599972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.031971, 29.581600, 20.586109>,  <33.179840, 29.392748, 20.577791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.031971, 29.581600, 20.586109>,  <32.785519, 29.896353, 20.599972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031971, 29.581600, 20.586109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195275, 0.195231, -0.961121,
		0.763055, 0.585406, 0.273946,
		0.616129, -0.786883, -0.034657,
		33.216808, 29.345535, 20.575712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263634, 30.141802, 20.176828>,  <32.785519, 29.896353, 20.599972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263634, 30.141802, 20.176828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.296165, 29.743547, 20.158529>,  <33.315685, 29.504595, 20.147549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.296165, 29.743547, 20.158529>,  <33.263634, 30.141802, 20.176828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296165, 29.743547, 20.158529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161129, 0.058432, -0.985202,
		0.983576, 0.072757, 0.165178,
		0.081332, -0.995636, -0.045749,
		33.320564, 29.444857, 20.144804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842670, 30.053846, 19.744732>,  <33.263634, 30.141802, 20.176828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842670, 30.053846, 19.744732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.650578, 29.703070, 19.737314>,  <33.535320, 29.492603, 19.732864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.650578, 29.703070, 19.737314>,  <33.842670, 30.053846, 19.744732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650578, 29.703070, 19.737314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071013, -0.017798, -0.997317,
		0.874260, -0.480264, 0.070822,
		-0.480235, -0.876944, -0.018545,
		33.506508, 29.439987, 19.731750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249859, 29.506435, 19.328644>,  <33.842670, 30.053846, 19.744732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249859, 29.506435, 19.328644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.862751, 29.406055, 19.337088>,  <33.630486, 29.345827, 19.342154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.862751, 29.406055, 19.337088>,  <34.249859, 29.506435, 19.328644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862751, 29.406055, 19.337088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018225, -0.153390, -0.987998,
		0.251177, -0.955769, 0.153019,
		-0.967770, -0.250951, 0.021109,
		33.572418, 29.330770, 19.343420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187874, 28.951221, 18.852468>,  <34.249859, 29.506435, 19.328644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187874, 28.951221, 18.852468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807014, 29.069223, 18.884439>,  <33.578499, 29.140024, 18.903622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807014, 29.069223, 18.884439>,  <34.187874, 28.951221, 18.852468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807014, 29.069223, 18.884439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079369, 0.013890, -0.996749,
		-0.295156, -0.955395, 0.010189,
		-0.952147, 0.295005, 0.079928,
		33.521370, 29.157724, 18.908419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758121, 28.473116, 18.468550>,  <34.187874, 28.951221, 18.852468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758121, 28.473116, 18.468550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.532436, 28.803280, 18.476145>,  <33.397026, 29.001377, 18.480701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.532436, 28.803280, 18.476145>,  <33.758121, 28.473116, 18.468550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532436, 28.803280, 18.476145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061259, -0.018918, -0.997942,
		-0.823351, -0.564218, 0.061238,
		-0.564216, 0.825409, 0.018987,
		33.363171, 29.050903, 18.481840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295750, 28.291309, 17.923166>,  <33.758121, 28.473116, 18.468550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295750, 28.291309, 17.923166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.235588, 28.678787, 18.002167>,  <33.199490, 28.911274, 18.049566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.235588, 28.678787, 18.002167>,  <33.295750, 28.291309, 17.923166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235588, 28.678787, 18.002167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180374, 0.169531, -0.968878,
		-0.972031, -0.181345, 0.149230,
		-0.150402, 0.968697, 0.197500,
		33.190468, 28.969397, 18.061417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624153, 28.368948, 17.690281>,  <33.295750, 28.291309, 17.923166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624153, 28.368948, 17.690281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.836090, 28.708187, 17.689583>,  <32.963249, 28.911730, 17.689165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.836090, 28.708187, 17.689583>,  <32.624153, 28.368948, 17.690281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836090, 28.708187, 17.689583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024795, 0.013436, -0.999602,
		-0.847737, 0.529670, 0.028147,
		0.529838, 0.848097, -0.001743,
		32.995041, 28.962616, 17.689060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231163, 28.892279, 17.383402>,  <32.624153, 28.368948, 17.690281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231163, 28.892279, 17.383402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.613735, 29.005795, 17.355993>,  <32.843281, 29.073904, 17.339548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.613735, 29.005795, 17.355993>,  <32.231163, 28.892279, 17.383402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613735, 29.005795, 17.355993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087315, 0.054092, -0.994711,
		-0.278582, 0.957359, 0.076515,
		0.956435, 0.283790, -0.068523,
		32.900665, 29.090931, 17.335436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321739, 29.391731, 16.890295>,  <32.231163, 28.892279, 17.383402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321739, 29.391731, 16.890295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.680229, 29.215586, 16.911678>,  <32.895325, 29.109898, 16.924509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.680229, 29.215586, 16.911678>,  <32.321739, 29.391731, 16.890295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680229, 29.215586, 16.911678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035150, -0.049632, -0.998149,
		0.442202, 0.896446, -0.029003,
		0.896226, -0.440364, 0.053458,
		32.949097, 29.083477, 16.927715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767925, 28.939653, 16.795218>,  <32.321739, 29.391731, 16.890295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767925, 28.939653, 16.795218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.880737, 29.022345, 16.420471>,  <31.948425, 29.071960, 16.195623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.880737, 29.022345, 16.420471>,  <31.767925, 28.939653, 16.795218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880737, 29.022345, 16.420471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924954, -0.200745, -0.322742,
		-0.254792, 0.957582, 0.134599,
		0.282032, 0.206730, -0.936868,
		31.965347, 29.084364, 16.139410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356476, 29.488934, 16.444019>,  <31.767925, 28.939653, 16.795218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356476, 29.488934, 16.444019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.983522, 29.633450, 16.448547>,  <30.759750, 29.720160, 16.451265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.983522, 29.633450, 16.448547>,  <31.356476, 29.488934, 16.444019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983522, 29.633450, 16.448547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055566, -0.174207, 0.983140,
		0.357171, 0.916036, 0.182504,
		-0.932385, 0.361290, 0.011321,
		30.703808, 29.741837, 16.451944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347193, 29.977598, 16.902704>,  <31.356476, 29.488934, 16.444019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347193, 29.977598, 16.902704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.959694, 29.879879, 16.885489>,  <30.727196, 29.821247, 16.875160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.959694, 29.879879, 16.885489>,  <31.347193, 29.977598, 16.902704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959694, 29.879879, 16.885489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024711, -0.077596, 0.996679,
		-0.246825, 0.966591, 0.069134,
		-0.968745, -0.244296, -0.043038,
		30.669071, 29.806591, 16.872578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028786, 30.352701, 17.293139>,  <31.347193, 29.977598, 16.902704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028786, 30.352701, 17.293139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.757956, 30.060658, 17.256241>,  <30.595457, 29.885431, 17.234102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.757956, 30.060658, 17.256241>,  <31.028786, 30.352701, 17.293139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757956, 30.060658, 17.256241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164650, 0.028120, 0.985951,
		-0.717258, 0.682752, -0.139252,
		-0.677076, -0.730109, -0.092246,
		30.554832, 29.841625, 17.228567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270552, 30.527397, 17.566135>,  <31.028786, 30.352701, 17.293139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270552, 30.527397, 17.566135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.308180, 30.129171, 17.565582>,  <30.330757, 29.890236, 17.565250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.308180, 30.129171, 17.565582>,  <30.270552, 30.527397, 17.566135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308180, 30.129171, 17.565582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340416, -0.033473, 0.939679,
		-0.935557, -0.087924, -0.342055,
		0.094070, -0.995565, -0.001385,
		30.336401, 29.830502, 17.565166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770052, 30.321886, 18.076385>,  <30.270552, 30.527397, 17.566135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770052, 30.321886, 18.076385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.964653, 29.977121, 18.019220>,  <30.081413, 29.770262, 17.984922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.964653, 29.977121, 18.019220>,  <29.770052, 30.321886, 18.076385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964653, 29.977121, 18.019220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029618, -0.147209, 0.988662,
		-0.873178, -0.485217, -0.046088,
		0.486500, -0.861913, -0.142911,
		30.110603, 29.718548, 17.976347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428877, 29.837507, 18.482786>,  <29.770052, 30.321886, 18.076385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428877, 29.837507, 18.482786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.795565, 29.698988, 18.403078>,  <30.015577, 29.615877, 18.355253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.795565, 29.698988, 18.403078>,  <29.428877, 29.837507, 18.482786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795565, 29.698988, 18.403078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146592, -0.172437, 0.974052,
		-0.371673, -0.922141, -0.107311,
		0.916717, -0.346298, -0.199269,
		30.070580, 29.595098, 18.343298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504011, 29.262737, 18.928968>,  <29.428877, 29.837507, 18.482786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504011, 29.262737, 18.928968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.879667, 29.356579, 18.828588>,  <30.105061, 29.412884, 18.768360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.879667, 29.356579, 18.828588>,  <29.504011, 29.262737, 18.928968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879667, 29.356579, 18.828588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286756, -0.133106, 0.948712,
		0.189167, -0.962935, -0.192279,
		0.939141, 0.234602, -0.250948,
		30.161409, 29.426960, 18.753304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892714, 28.837774, 19.352894>,  <29.504011, 29.262737, 18.928968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892714, 28.837774, 19.352894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.149420, 29.123001, 19.239988>,  <30.303444, 29.294136, 19.172245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.149420, 29.123001, 19.239988>,  <29.892714, 28.837774, 19.352894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149420, 29.123001, 19.239988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289480, 0.115590, 0.950179,
		0.710167, -0.691503, -0.132237,
		0.641767, 0.713065, -0.282265,
		30.341949, 29.336920, 19.155310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415607, 28.816158, 19.771259>,  <29.892714, 28.837774, 19.352894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415607, 28.816158, 19.771259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.528336, 29.175194, 19.635668>,  <30.595972, 29.390615, 19.554314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.528336, 29.175194, 19.635668>,  <30.415607, 28.816158, 19.771259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528336, 29.175194, 19.635668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461321, 0.183017, 0.868152,
		0.841284, -0.401043, -0.362500,
		0.281822, 0.897591, -0.338979,
		30.612883, 29.444471, 19.533974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062256, 28.888393, 20.029732>,  <30.415607, 28.816158, 19.771259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062256, 28.888393, 20.029732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.919697, 29.254387, 19.954065>,  <30.834162, 29.473984, 19.908667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.919697, 29.254387, 19.954065>,  <31.062256, 28.888393, 20.029732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919697, 29.254387, 19.954065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237832, 0.284630, 0.928666,
		0.903558, 0.285985, -0.319054,
		-0.356398, 0.914985, -0.189164,
		30.812778, 29.528883, 19.897316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650709, 29.353384, 20.121471>,  <31.062256, 28.888393, 20.029732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650709, 29.353384, 20.121471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.302458, 29.544865, 20.166815>,  <31.093508, 29.659754, 20.194021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.302458, 29.544865, 20.166815>,  <31.650709, 29.353384, 20.121471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302458, 29.544865, 20.166815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259673, 0.251485, 0.932376,
		0.417821, 0.841190, -0.343256,
		-0.870629, 0.478701, 0.113359,
		31.041269, 29.688475, 20.200823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794716, 29.905151, 20.504818>,  <31.650709, 29.353384, 20.121471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.794716, 29.905151, 20.504818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.398403, 29.864933, 20.541142>,  <31.160616, 29.840803, 20.562935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.398403, 29.864933, 20.541142>,  <31.794716, 29.905151, 20.504818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398403, 29.864933, 20.541142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077455, 0.129570, 0.988540,
		-0.111158, 0.986460, -0.120588,
		-0.990780, -0.100544, 0.090809,
		31.101170, 29.834770, 20.568384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519869, 30.495527, 20.805672>,  <31.794716, 29.905151, 20.504818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519869, 30.495527, 20.805672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.253778, 30.208630, 20.888651>,  <31.094124, 30.036491, 20.938438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.253778, 30.208630, 20.888651>,  <31.519869, 30.495527, 20.805672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253778, 30.208630, 20.888651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116314, 0.174897, 0.977692,
		-0.737526, 0.674516, -0.032921,
		-0.665226, -0.717245, 0.207446,
		31.054211, 29.993456, 20.950886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242500, 30.755953, 21.418795>,  <31.519869, 30.495527, 20.805672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242500, 30.755953, 21.418795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.136244, 30.370785, 21.399935>,  <31.072491, 30.139685, 21.388618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.136244, 30.370785, 21.399935>,  <31.242500, 30.755953, 21.418795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136244, 30.370785, 21.399935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005180, -0.047482, 0.998858,
		-0.964058, 0.265583, 0.007626,
		-0.265642, -0.962918, -0.047151,
		31.056551, 30.081909, 21.385790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572159, 30.680479, 21.677795>,  <31.242500, 30.755953, 21.418795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572159, 30.680479, 21.677795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.759142, 30.330875, 21.730841>,  <30.871332, 30.121113, 21.762669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.759142, 30.330875, 21.730841>,  <30.572159, 30.680479, 21.677795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759142, 30.330875, 21.730841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342034, -0.040487, 0.938815,
		-0.815165, -0.484217, -0.317867,
		0.467460, -0.874011, 0.132614,
		30.899380, 30.068672, 21.770624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218433, 30.299212, 22.238089>,  <30.572159, 30.680479, 21.677795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218433, 30.299212, 22.238089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.551214, 30.078569, 22.214134>,  <30.750883, 29.946184, 22.199762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.551214, 30.078569, 22.214134>,  <30.218433, 30.299212, 22.238089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551214, 30.078569, 22.214134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008816, -0.121061, 0.992606,
		-0.554777, -0.825273, -0.105580,
		0.831952, -0.551605, -0.059886,
		30.800800, 29.913088, 22.196169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014723, 29.601500, 22.380894>,  <30.218433, 30.299212, 22.238089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014723, 29.601500, 22.380894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.402178, 29.622417, 22.478056>,  <30.634651, 29.634968, 22.536354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.402178, 29.622417, 22.478056>,  <30.014723, 29.601500, 22.380894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402178, 29.622417, 22.478056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230162, -0.179472, 0.956460,
		0.093612, -0.982372, -0.161807,
		0.968640, 0.052294, 0.242905,
		30.692770, 29.638105, 22.550928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031113, 29.058035, 22.786438>,  <30.014723, 29.601500, 22.380894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031113, 29.058035, 22.786438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.347008, 29.292637, 22.858362>,  <30.536545, 29.433397, 22.901516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.347008, 29.292637, 22.858362>,  <30.031113, 29.058035, 22.786438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347008, 29.292637, 22.858362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023436, -0.264054, 0.964223,
		0.612999, -0.765696, -0.194788,
		0.789736, 0.586503, 0.179809,
		30.583929, 29.468588, 22.912306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473543, 28.656084, 23.162203>,  <30.031113, 29.058035, 22.786438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473543, 28.656084, 23.162203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.546675, 29.042011, 23.237780>,  <30.590553, 29.273567, 23.283127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.546675, 29.042011, 23.237780>,  <30.473543, 28.656084, 23.162203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546675, 29.042011, 23.237780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060899, -0.202928, 0.977298,
		0.981256, -0.167173, -0.095858,
		0.182830, 0.964818, 0.188943,
		30.601524, 29.331457, 23.294462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825554, 28.654926, 23.883179>,  <30.473543, 28.656084, 23.162203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825554, 28.654926, 23.883179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.707958, 29.032888, 23.825592>,  <30.637400, 29.259665, 23.791040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.707958, 29.032888, 23.825592>,  <30.825554, 28.654926, 23.883179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707958, 29.032888, 23.825592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111718, 0.183560, 0.976639,
		0.949257, 0.271039, -0.159528,
		-0.293990, 0.944904, -0.143966,
		30.619761, 29.316360, 23.782402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.615250, 29.086840, 28.258005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.381981, 29.379438, 28.116686>,  <35.242020, 29.554998, 28.031895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.381981, 29.379438, 28.116686>,  <35.615250, 29.086840, 28.258005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381981, 29.379438, 28.116686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005466, 0.431366, 0.902160,
		0.812329, 0.528047, -0.247563,
		-0.583174, 0.731498, -0.353298,
		35.207027, 29.598888, 28.010696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963657, 29.744446, 28.418419>,  <35.615250, 29.086840, 28.258005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963657, 29.744446, 28.418419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.575249, 29.836739, 28.393501>,  <35.342205, 29.892115, 28.378551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.575249, 29.836739, 28.393501>,  <35.963657, 29.744446, 28.418419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575249, 29.836739, 28.393501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030896, 0.379653, 0.924613,
		0.236989, 0.895894, -0.375780,
		-0.971021, 0.230733, -0.062294,
		35.283943, 29.905958, 28.374813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988880, 30.378040, 28.788206>,  <35.963657, 29.744446, 28.418419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988880, 30.378040, 28.788206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.601883, 30.289286, 28.739670>,  <35.369686, 30.236032, 28.710548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.601883, 30.289286, 28.739670>,  <35.988880, 30.378040, 28.788206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601883, 30.289286, 28.739670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215247, 0.470599, 0.855690,
		-0.132763, 0.853992, -0.503061,
		-0.967493, -0.221887, -0.121342,
		35.311634, 30.222719, 28.703268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593033, 30.945345, 28.855928>,  <35.988880, 30.378040, 28.788206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593033, 30.945345, 28.855928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.321453, 30.662659, 28.935509>,  <35.158504, 30.493048, 28.983257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.321453, 30.662659, 28.935509>,  <35.593033, 30.945345, 28.855928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321453, 30.662659, 28.935509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371271, 0.564274, 0.737396,
		-0.633391, 0.426791, -0.645497,
		-0.678951, -0.706714, 0.198951,
		35.117767, 30.450645, 28.995193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911461, 31.264183, 28.885565>,  <35.593033, 30.945345, 28.855928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911461, 31.264183, 28.885565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.908611, 30.926376, 29.099758>,  <34.906902, 30.723692, 29.228273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.908611, 30.926376, 29.099758>,  <34.911461, 31.264183, 28.885565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908611, 30.926376, 29.099758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448981, 0.481186, 0.752912,
		-0.893513, -0.235061, -0.382598,
		-0.007120, -0.844515, 0.535484,
		34.906475, 30.673021, 29.260403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238483, 31.252041, 29.264748>,  <34.911461, 31.264183, 28.885565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238483, 31.252041, 29.264748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.449383, 30.974577, 29.461054>,  <34.575924, 30.808100, 29.578836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.449383, 30.974577, 29.461054>,  <34.238483, 31.252041, 29.264748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449383, 30.974577, 29.461054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155638, 0.488957, 0.858311,
		-0.835337, -0.528923, 0.149841,
		0.527247, -0.693658, 0.490764,
		34.607555, 30.766479, 29.608284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948120, 31.048038, 29.917749>,  <34.238483, 31.252041, 29.264748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948120, 31.048038, 29.917749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.332420, 30.947165, 29.963976>,  <34.563000, 30.886641, 29.991713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.332420, 30.947165, 29.963976>,  <33.948120, 31.048038, 29.917749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332420, 30.947165, 29.963976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056180, 0.231082, 0.971311,
		-0.271655, -0.939683, 0.207845,
		0.960754, -0.252184, 0.115566,
		34.620647, 30.871510, 29.998646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974525, 30.819275, 30.629240>,  <33.948120, 31.048038, 29.917749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974525, 30.819275, 30.629240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.357819, 30.893354, 30.542070>,  <34.587795, 30.937801, 30.489769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.357819, 30.893354, 30.542070>,  <33.974525, 30.819275, 30.629240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357819, 30.893354, 30.542070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138002, 0.367991, 0.919531,
		0.250490, -0.911199, 0.327063,
		0.958233, 0.185198, -0.217925,
		34.645287, 30.948914, 30.476692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342937, 30.561728, 31.202703>,  <33.974525, 30.819275, 30.629240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342937, 30.561728, 31.202703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.606705, 30.809000, 31.031582>,  <34.764965, 30.957363, 30.928909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.606705, 30.809000, 31.031582>,  <34.342937, 30.561728, 31.202703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606705, 30.809000, 31.031582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178896, 0.423681, 0.887970,
		0.730178, -0.662079, 0.168795,
		0.659421, 0.618180, -0.427806,
		34.804531, 30.994453, 30.903240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989071, 30.485180, 31.436300>,  <34.342937, 30.561728, 31.202703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989071, 30.485180, 31.436300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.020123, 30.855940, 31.289421>,  <35.038754, 31.078396, 31.201294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.020123, 30.855940, 31.289421>,  <34.989071, 30.485180, 31.436300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020123, 30.855940, 31.289421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375213, 0.314068, 0.872110,
		0.923682, -0.205480, -0.323402,
		0.077630, 0.926898, -0.367198,
		35.043411, 31.134008, 31.179262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631908, 30.608782, 31.578386>,  <34.989071, 30.485180, 31.436300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631908, 30.608782, 31.578386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.451252, 30.963650, 31.540545>,  <35.342857, 31.176571, 31.517839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.451252, 30.963650, 31.540545>,  <35.631908, 30.608782, 31.578386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451252, 30.963650, 31.540545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300385, 0.251046, 0.920187,
		0.840112, 0.387177, -0.379875,
		-0.451642, 0.887170, -0.094604,
		35.315758, 31.229801, 31.512163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101753, 31.220255, 31.773365>,  <35.631908, 30.608782, 31.578386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101753, 31.220255, 31.773365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.730740, 31.364969, 31.810886>,  <35.508133, 31.451797, 31.833399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.730740, 31.364969, 31.810886>,  <36.101753, 31.220255, 31.773365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730740, 31.364969, 31.810886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247530, 0.406582, 0.879443,
		0.280032, 0.838929, -0.466670,
		-0.927530, 0.361787, 0.093804,
		35.452480, 31.473505, 31.839027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161491, 31.947893, 32.069729>,  <36.101753, 31.220255, 31.773365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161491, 31.947893, 32.069729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.792904, 31.823957, 32.163456>,  <35.571751, 31.749596, 32.219692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.792904, 31.823957, 32.163456>,  <36.161491, 31.947893, 32.069729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792904, 31.823957, 32.163456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070007, 0.460852, 0.884712,
		-0.382103, 0.831634, -0.402968,
		-0.921464, -0.309840, 0.234313,
		35.516464, 31.731005, 32.233749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763901, 32.352654, 31.783007>,  <36.161491, 31.947893, 32.069729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763901, 32.352654, 31.783007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.970135, 32.683712, 31.871706>,  <37.093876, 32.882347, 31.924925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.970135, 32.683712, 31.871706>,  <36.763901, 32.352654, 31.783007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970135, 32.683712, 31.871706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626522, 0.540696, -0.561354,
		-0.584500, 0.150498, 0.797315,
		0.515587, 0.827646, 0.221746,
		37.124809, 32.932007, 31.938231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183525, 32.911453, 31.739265>,  <36.763901, 32.352654, 31.783007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183525, 32.911453, 31.739265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.555347, 33.034786, 31.658422>,  <36.778442, 33.108788, 31.609917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.555347, 33.034786, 31.658422>,  <36.183525, 32.911453, 31.739265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555347, 33.034786, 31.658422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361391, 0.653669, -0.664916,
		-0.072904, 0.691119, 0.719054,
		0.929560, 0.308335, -0.202110,
		36.834217, 33.127285, 31.597790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162807, 33.611210, 31.741283>,  <36.183525, 32.911453, 31.739265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162807, 33.611210, 31.741283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.486790, 33.524513, 31.523293>,  <36.681179, 33.472496, 31.392498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.486790, 33.524513, 31.523293>,  <36.162807, 33.611210, 31.741283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486790, 33.524513, 31.523293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279772, 0.673890, -0.683813,
		0.515466, 0.706325, 0.485181,
		0.809952, -0.216742, -0.544977,
		36.729774, 33.459492, 31.359798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340096, 34.157593, 31.436060>,  <36.162807, 33.611210, 31.741283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340096, 34.157593, 31.436060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.514030, 33.893703, 31.190886>,  <36.618389, 33.735371, 31.043781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.514030, 33.893703, 31.190886>,  <36.340096, 34.157593, 31.436060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514030, 33.893703, 31.190886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213864, 0.585524, -0.781936,
		0.874747, 0.471097, 0.113515,
		0.434833, -0.659719, -0.612936,
		36.644482, 33.695789, 31.007004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609081, 34.513969, 30.844114>,  <36.340096, 34.157593, 31.436060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609081, 34.513969, 30.844114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.594440, 34.150566, 30.677612>,  <36.585655, 33.932522, 30.577711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.594440, 34.150566, 30.677612>,  <36.609081, 34.513969, 30.844114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594440, 34.150566, 30.677612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016948, 0.417037, -0.908731,
		0.999186, -0.026204, -0.030661,
		-0.036599, -0.908512, -0.416254,
		36.583462, 33.878014, 30.552736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038177, 34.507629, 30.278543>,  <36.609081, 34.513969, 30.844114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038177, 34.507629, 30.278543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.812702, 34.184612, 30.209105>,  <36.677418, 33.990803, 30.167440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.812702, 34.184612, 30.209105>,  <37.038177, 34.507629, 30.278543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812702, 34.184612, 30.209105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133574, 0.296521, -0.945639,
		0.815119, -0.509853, -0.275010,
		-0.563683, -0.807543, -0.173597,
		36.643597, 33.942348, 30.157026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096916, 34.421402, 29.587141>,  <37.038177, 34.507629, 30.278543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096916, 34.421402, 29.587141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.789463, 34.180622, 29.673727>,  <36.604992, 34.036152, 29.725677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.789463, 34.180622, 29.673727>,  <37.096916, 34.421402, 29.587141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789463, 34.180622, 29.673727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296661, 0.035632, -0.954318,
		0.566740, -0.797737, -0.205963,
		-0.768634, -0.601952, 0.216464,
		36.558872, 34.000038, 29.738667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111134, 33.773735, 29.108999>,  <37.096916, 34.421402, 29.587141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111134, 33.773735, 29.108999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.744305, 33.867458, 29.238039>,  <36.524208, 33.923695, 29.315464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.744305, 33.867458, 29.238039>,  <37.111134, 33.773735, 29.108999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744305, 33.867458, 29.238039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350652, -0.088857, -0.932281,
		-0.189779, -0.968092, 0.163651,
		-0.917075, 0.234312, 0.322600,
		36.469181, 33.937752, 29.334820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566422, 33.233437, 28.979906>,  <37.111134, 33.773735, 29.108999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566422, 33.233437, 28.979906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.377052, 33.584507, 29.009743>,  <36.263432, 33.795147, 29.027645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.377052, 33.584507, 29.009743>,  <36.566422, 33.233437, 28.979906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377052, 33.584507, 29.009743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430462, -0.156643, -0.888913,
		-0.768491, -0.452937, 0.451962,
		-0.473418, 0.877674, 0.074594,
		36.235027, 33.847809, 29.032122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851818, 33.048595, 28.781462>,  <36.566422, 33.233437, 28.979906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851818, 33.048595, 28.781462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.833996, 33.447693, 28.761362>,  <35.823303, 33.687153, 28.749302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.833996, 33.447693, 28.761362>,  <35.851818, 33.048595, 28.781462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833996, 33.447693, 28.761362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264625, -0.060290, -0.962465,
		-0.963321, -0.029585, 0.266714,
		-0.044555, 0.997742, -0.050249,
		35.820629, 33.747017, 28.746286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158791, 33.254204, 28.685251>,  <35.851818, 33.048595, 28.781462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158791, 33.254204, 28.685251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.380520, 33.558434, 28.550047>,  <35.513557, 33.740971, 28.468924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.380520, 33.558434, 28.550047>,  <35.158791, 33.254204, 28.685251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380520, 33.558434, 28.550047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351947, -0.153819, -0.923295,
		-0.754224, 0.630770, 0.182415,
		0.554328, 0.760572, -0.338011,
		35.546818, 33.786606, 28.448643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625805, 33.682053, 28.359709>,  <35.158791, 33.254204, 28.685251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625805, 33.682053, 28.359709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.986900, 33.745396, 28.199718>,  <35.203560, 33.783401, 28.103724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.986900, 33.745396, 28.199718>,  <34.625805, 33.682053, 28.359709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986900, 33.745396, 28.199718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416988, 0.093598, -0.904080,
		-0.105734, 0.982935, 0.150529,
		0.902741, 0.158361, -0.399975,
		35.257721, 33.792904, 28.079725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574203, 34.285046, 27.821051>,  <34.625805, 33.682053, 28.359709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574203, 34.285046, 27.821051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.909237, 34.095325, 27.712612>,  <35.110256, 33.981495, 27.647549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.909237, 34.095325, 27.712612>,  <34.574203, 34.285046, 27.821051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909237, 34.095325, 27.712612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218465, 0.164036, -0.961959,
		0.500728, 0.864945, 0.033775,
		0.837582, -0.474302, -0.271098,
		35.160511, 33.953033, 27.631283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838306, 34.684769, 27.315174>,  <34.574203, 34.285046, 27.821051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838306, 34.684769, 27.315174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.030159, 34.337887, 27.261641>,  <35.145271, 34.129757, 27.229521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.030159, 34.337887, 27.261641>,  <34.838306, 34.684769, 27.315174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030159, 34.337887, 27.261641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195547, 0.043050, -0.979749,
		0.855405, 0.496087, -0.148931,
		0.479629, -0.867205, -0.133834,
		35.174049, 34.077724, 27.221491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238232, 34.831749, 26.753197>,  <34.838306, 34.684769, 27.315174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238232, 34.831749, 26.753197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.247799, 34.431965, 26.762136>,  <35.253540, 34.192093, 26.767500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.247799, 34.431965, 26.762136>,  <35.238232, 34.831749, 26.753197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247799, 34.431965, 26.762136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243064, -0.027498, -0.969621,
		0.969715, 0.017759, -0.243591,
		0.023918, -0.999464, 0.022349,
		35.254974, 34.132126, 26.768841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388878, 35.559357, 26.547112>,  <35.238232, 34.831749, 26.753197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388878, 35.559357, 26.547112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.062084, 35.788586, 26.521423>,  <34.866009, 35.926125, 26.506010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.062084, 35.788586, 26.521423>,  <35.388878, 35.559357, 26.547112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062084, 35.788586, 26.521423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002324, 0.108091, 0.994139,
		0.576657, 0.812344, -0.086976,
		-0.816983, 0.573075, -0.064219,
		34.816990, 35.960506, 26.502157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502998, 36.157314, 26.940125>,  <35.388878, 35.559357, 26.547112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502998, 36.157314, 26.940125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.105438, 36.115490, 26.926096>,  <34.866901, 36.090397, 26.917679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.105438, 36.115490, 26.926096>,  <35.502998, 36.157314, 26.940125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105438, 36.115490, 26.926096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039157, 0.037290, 0.998537,
		-0.103099, 0.993819, -0.041156,
		-0.993900, -0.104559, -0.035071,
		34.807270, 36.084122, 26.915575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312515, 36.566914, 27.579021>,  <35.502998, 36.157314, 26.940125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312515, 36.566914, 27.579021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.981583, 36.366253, 27.477934>,  <34.783024, 36.245857, 27.417282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.981583, 36.366253, 27.477934>,  <35.312515, 36.566914, 27.579021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981583, 36.366253, 27.477934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207122, -0.145758, 0.967396,
		-0.522135, 0.852699, 0.016686,
		-0.827330, -0.501655, -0.252718,
		34.733383, 36.215755, 27.402119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709778, 36.954185, 27.867020>,  <35.312515, 36.566914, 27.579021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709778, 36.954185, 27.867020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.609169, 36.569496, 27.823517>,  <34.548801, 36.338684, 27.797415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.609169, 36.569496, 27.823517>,  <34.709778, 36.954185, 27.867020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609169, 36.569496, 27.823517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210131, -0.055426, 0.976101,
		-0.944765, 0.268366, -0.188146,
		-0.251524, -0.961721, -0.108757,
		34.533710, 36.280979, 27.790890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994968, 36.831699, 28.017620>,  <34.709778, 36.954185, 27.867020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994968, 36.831699, 28.017620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.159393, 36.471050, 28.071457>,  <34.258049, 36.254662, 28.103760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.159393, 36.471050, 28.071457>,  <33.994968, 36.831699, 28.017620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159393, 36.471050, 28.071457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522844, -0.112228, 0.845008,
		-0.746769, -0.417719, -0.517538,
		0.411058, -0.901618, 0.134594,
		34.282711, 36.200565, 28.111835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457981, 36.413719, 28.332552>,  <33.994968, 36.831699, 28.017620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457981, 36.413719, 28.332552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.788570, 36.200001, 28.403505>,  <33.986923, 36.071770, 28.446077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.788570, 36.200001, 28.403505>,  <33.457981, 36.413719, 28.332552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788570, 36.200001, 28.403505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338784, -0.220372, 0.914692,
		-0.449630, -0.816063, -0.363144,
		0.826473, -0.534301, 0.177384,
		34.036514, 36.039711, 28.456720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212624, 35.798519, 28.597658>,  <33.457981, 36.413719, 28.332552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212624, 35.798519, 28.597658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.589550, 35.836052, 28.726177>,  <33.815708, 35.858574, 28.803288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.589550, 35.836052, 28.726177>,  <33.212624, 35.798519, 28.597658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589550, 35.836052, 28.726177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295267, -0.219077, 0.929958,
		0.157654, -0.971185, -0.178733,
		0.942318, 0.093837, 0.321297,
		33.872246, 35.864204, 28.822567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258099, 35.231251, 29.117226>,  <33.212624, 35.798519, 28.597658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258099, 35.231251, 29.117226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.575512, 35.461567, 29.195993>,  <33.765961, 35.599754, 29.243254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.575512, 35.461567, 29.195993>,  <33.258099, 35.231251, 29.117226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575512, 35.461567, 29.195993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255369, 0.021358, 0.966608,
		0.552356, -0.817319, 0.163986,
		0.793530, 0.575789, 0.196921,
		33.813572, 35.634304, 29.255070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529903, 34.881615, 29.730173>,  <33.258099, 35.231251, 29.117226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529903, 34.881615, 29.730173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.698265, 35.244431, 29.725777>,  <33.799282, 35.462120, 29.723139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.698265, 35.244431, 29.725777>,  <33.529903, 34.881615, 29.730173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698265, 35.244431, 29.725777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005643, 0.014736, 0.999876,
		0.907088, -0.420789, 0.011321,
		0.420903, 0.907039, -0.010992,
		33.824535, 35.516541, 29.722479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174179, 34.820705, 30.123848>,  <33.529903, 34.881615, 29.730173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174179, 34.820705, 30.123848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.049625, 35.200611, 30.136454>,  <33.974895, 35.428555, 30.144018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.049625, 35.200611, 30.136454>,  <34.174179, 34.820705, 30.123848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049625, 35.200611, 30.136454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021973, -0.040352, 0.998944,
		0.950031, 0.310361, 0.033434,
		-0.311382, 0.949762, 0.031516,
		33.956211, 35.485538, 30.145908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636147, 35.177345, 30.584511>,  <34.174179, 34.820705, 30.123848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636147, 35.177345, 30.584511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.315212, 35.414303, 30.555311>,  <34.122654, 35.556477, 30.537792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.315212, 35.414303, 30.555311>,  <34.636147, 35.177345, 30.584511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315212, 35.414303, 30.555311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016985, 0.144910, 0.989299,
		0.596636, 0.792506, -0.126328,
		-0.802332, 0.592398, -0.072998,
		34.074512, 35.592022, 30.533411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774586, 35.862411, 30.883459>,  <34.636147, 35.177345, 30.584511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774586, 35.862411, 30.883459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.375317, 35.845825, 30.901024>,  <34.135754, 35.835873, 30.911562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.375317, 35.845825, 30.901024>,  <34.774586, 35.862411, 30.883459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375317, 35.845825, 30.901024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022456, 0.420104, 0.907198,
		-0.056069, 0.906528, -0.418406,
		-0.998174, -0.041470, 0.043911,
		34.075863, 35.833385, 30.914198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.084595, 36.721596, 22.605341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725739, 36.557106, 22.669889>,  <34.510426, 36.458412, 22.708618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725739, 36.557106, 22.669889>,  <35.084595, 36.721596, 22.605341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725739, 36.557106, 22.669889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149496, 0.061117, 0.986872,
		-0.415688, 0.909483, 0.006646,
		-0.897137, -0.411224, 0.161370,
		34.456596, 36.433739, 22.718300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930317, 37.002449, 23.158869>,  <35.084595, 36.721596, 22.605341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930317, 37.002449, 23.158869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649078, 36.718018, 23.160839>,  <34.480335, 36.547359, 23.162022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649078, 36.718018, 23.160839>,  <34.930317, 37.002449, 23.158869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649078, 36.718018, 23.160839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007936, -0.000921, 0.999968,
		-0.711054, 0.703109, 0.006291,
		-0.703093, -0.711081, 0.004925,
		34.438152, 36.504692, 23.162317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424664, 37.257385, 23.745163>,  <34.930317, 37.002449, 23.158869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424664, 37.257385, 23.745163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379234, 36.863037, 23.695902>,  <34.351978, 36.626431, 23.666346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379234, 36.863037, 23.695902>,  <34.424664, 37.257385, 23.745163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379234, 36.863037, 23.695902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134062, -0.138029, 0.981313,
		-0.984443, 0.094939, 0.147844,
		-0.113572, -0.985867, -0.123154,
		34.345161, 36.567276, 23.658957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794395, 37.025349, 24.138964>,  <34.424664, 37.257385, 23.745163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794395, 37.025349, 24.138964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037491, 36.709892, 24.101637>,  <34.183350, 36.520618, 24.079241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037491, 36.709892, 24.101637>,  <33.794395, 37.025349, 24.138964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037491, 36.709892, 24.101637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025357, -0.098176, 0.994846,
		-0.793734, -0.606971, -0.039667,
		0.607737, -0.788637, -0.093317,
		34.219810, 36.473301, 24.073641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628830, 36.542252, 24.587776>,  <33.794395, 37.025349, 24.138964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628830, 36.542252, 24.587776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991432, 36.400143, 24.496531>,  <34.208992, 36.314877, 24.441782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991432, 36.400143, 24.496531>,  <33.628830, 36.542252, 24.587776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991432, 36.400143, 24.496531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139684, -0.257504, 0.956128,
		-0.398427, -0.898595, -0.183802,
		0.906501, -0.355273, -0.228116,
		34.263382, 36.293560, 24.428095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588062, 35.901070, 24.887577>,  <33.628830, 36.542252, 24.587776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588062, 35.901070, 24.887577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973995, 35.998371, 24.847710>,  <34.205555, 36.056751, 24.823790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973995, 35.998371, 24.847710>,  <33.588062, 35.901070, 24.887577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973995, 35.998371, 24.847710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154735, -0.219013, 0.963375,
		0.212521, -0.944912, -0.248950,
		0.964828, 0.243258, -0.099666,
		34.263443, 36.071350, 24.817810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910721, 35.375919, 25.208311>,  <33.588062, 35.901070, 24.887577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910721, 35.375919, 25.208311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166023, 35.683788, 25.202259>,  <34.319206, 35.868511, 25.198627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166023, 35.683788, 25.202259>,  <33.910721, 35.375919, 25.208311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166023, 35.683788, 25.202259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248047, -0.187011, 0.950526,
		0.728769, -0.610430, -0.310277,
		0.638255, 0.769677, -0.015128,
		34.357498, 35.914692, 25.197721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418648, 35.080631, 25.675888>,  <33.910721, 35.375919, 25.208311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418648, 35.080631, 25.675888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512287, 35.468571, 25.648764>,  <34.568470, 35.701332, 25.632490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512287, 35.468571, 25.648764>,  <34.418648, 35.080631, 25.675888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512287, 35.468571, 25.648764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183074, 0.024524, 0.982793,
		0.954820, -0.242487, -0.171813,
		0.234101, 0.969845, -0.067809,
		34.582516, 35.759525, 25.628422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124218, 35.172646, 25.783875>,  <34.418648, 35.080631, 25.675888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124218, 35.172646, 25.783875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900726, 35.485535, 25.894117>,  <34.766632, 35.673267, 25.960262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900726, 35.485535, 25.894117>,  <35.124218, 35.172646, 25.783875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900726, 35.485535, 25.894117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297867, -0.120878, 0.946923,
		0.774017, 0.611164, -0.165459,
		-0.558725, 0.782219, 0.275607,
		34.733109, 35.720200, 25.976799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567974, 34.676292, 26.118792>,  <35.124218, 35.172646, 25.783875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567974, 34.676292, 26.118792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397659, 34.328205, 26.217936>,  <35.295471, 34.119354, 26.277422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397659, 34.328205, 26.217936>,  <35.567974, 34.676292, 26.118792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397659, 34.328205, 26.217936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236394, -0.157434, -0.958818,
		0.873399, -0.466843, -0.138680,
		-0.425785, -0.870214, 0.247861,
		35.269924, 34.067142, 26.292294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866455, 34.275917, 25.645901>,  <35.567974, 34.676292, 26.118792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866455, 34.275917, 25.645901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537350, 34.089806, 25.776487>,  <35.339886, 33.978138, 25.854839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537350, 34.089806, 25.776487>,  <35.866455, 34.275917, 25.645901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537350, 34.089806, 25.776487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160840, -0.360314, -0.918860,
		0.545156, -0.808511, 0.221617,
		-0.822761, -0.465277, 0.326469,
		35.290520, 33.950222, 25.874428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963467, 33.618050, 25.265388>,  <35.866455, 34.275917, 25.645901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963467, 33.618050, 25.265388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577606, 33.661636, 25.361362>,  <35.346088, 33.687786, 25.418947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577606, 33.661636, 25.361362>,  <35.963467, 33.618050, 25.265388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577606, 33.661636, 25.361362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258811, -0.563096, -0.784818,
		0.049590, -0.819176, 0.571394,
		-0.964654, 0.108964, 0.239936,
		35.288212, 33.694324, 25.433344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586449, 32.964664, 25.159084>,  <35.963467, 33.618050, 25.265388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586449, 32.964664, 25.159084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331261, 33.271553, 25.132629>,  <35.178150, 33.455685, 25.116756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331261, 33.271553, 25.132629>,  <35.586449, 32.964664, 25.159084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331261, 33.271553, 25.132629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324494, -0.345725, -0.880442,
		-0.698358, -0.540230, 0.469519,
		-0.637965, 0.767220, -0.066138,
		35.139870, 33.501720, 25.112787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024296, 32.606888, 24.984064>,  <35.586449, 32.964664, 25.159084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024296, 32.606888, 24.984064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927662, 32.988796, 24.914732>,  <34.869682, 33.217941, 24.873133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927662, 32.988796, 24.914732>,  <35.024296, 32.606888, 24.984064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927662, 32.988796, 24.914732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291635, -0.241799, -0.925463,
		-0.925520, -0.173026, 0.336860,
		-0.241581, 0.954775, -0.173330,
		34.855186, 33.275230, 24.862734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317524, 32.535027, 24.657143>,  <35.024296, 32.606888, 24.984064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317524, 32.535027, 24.657143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486397, 32.883575, 24.557169>,  <34.587719, 33.092705, 24.497185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486397, 32.883575, 24.557169>,  <34.317524, 32.535027, 24.657143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486397, 32.883575, 24.557169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239617, -0.158636, -0.957820,
		-0.874269, 0.464264, 0.141822,
		0.422183, 0.871375, -0.249936,
		34.613052, 33.144989, 24.482187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855328, 32.867119, 24.218416>,  <34.317524, 32.535027, 24.657143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855328, 32.867119, 24.218416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192802, 33.070621, 24.149872>,  <34.395287, 33.192722, 24.108746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192802, 33.070621, 24.149872>,  <33.855328, 32.867119, 24.218416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192802, 33.070621, 24.149872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116861, -0.137500, -0.983584,
		-0.523968, 0.849859, -0.056553,
		0.843683, 0.508757, -0.171361,
		34.445908, 33.223248, 24.098463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595993, 33.263443, 23.736349>,  <33.855328, 32.867119, 24.218416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595993, 33.263443, 23.736349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995277, 33.264187, 23.712416>,  <34.234848, 33.264633, 23.698055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995277, 33.264187, 23.712416>,  <33.595993, 33.263443, 23.736349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995277, 33.264187, 23.712416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059521, -0.075986, -0.995331,
		-0.006398, 0.997107, -0.075739,
		0.998207, 0.001860, -0.059835,
		34.294739, 33.264744, 23.694466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802216, 33.688038, 23.186853>,  <33.595993, 33.263443, 23.736349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802216, 33.688038, 23.186853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114506, 33.447567, 23.255035>,  <34.301880, 33.303284, 23.295944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114506, 33.447567, 23.255035>,  <33.802216, 33.688038, 23.186853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114506, 33.447567, 23.255035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029799, -0.236650, -0.971138,
		0.624162, 0.763272, -0.166844,
		0.780726, -0.601176, 0.170453,
		34.348724, 33.267216, 23.306171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245914, 33.836994, 22.592865>,  <33.802216, 33.688038, 23.186853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245914, 33.836994, 22.592865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357559, 33.479923, 22.734411>,  <34.424545, 33.265678, 22.819338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357559, 33.479923, 22.734411>,  <34.245914, 33.836994, 22.592865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357559, 33.479923, 22.734411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085784, -0.343856, -0.935096,
		0.956420, 0.291351, -0.019396,
		0.279111, -0.892680, 0.353864,
		34.441292, 33.212120, 22.840570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803532, 33.596691, 22.154087>,  <34.245914, 33.836994, 22.592865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803532, 33.596691, 22.154087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713921, 33.251854, 22.335905>,  <34.660152, 33.044952, 22.444996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713921, 33.251854, 22.335905>,  <34.803532, 33.596691, 22.154087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713921, 33.251854, 22.335905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205333, -0.497681, -0.842705,
		0.952706, -0.095458, 0.288511,
		-0.224030, -0.862091, 0.454543,
		34.646713, 32.993225, 22.472267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302677, 33.123272, 22.049421>,  <34.803532, 33.596691, 22.154087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302677, 33.123272, 22.049421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988415, 32.887970, 22.126045>,  <34.799858, 32.746788, 22.172020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988415, 32.887970, 22.126045>,  <35.302677, 33.123272, 22.049421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988415, 32.887970, 22.126045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234662, -0.569857, -0.787525,
		0.572428, -0.573774, 0.585755,
		-0.785658, -0.588257, 0.191559,
		34.752716, 32.711494, 22.183514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545753, 32.349758, 22.082144>,  <35.302677, 33.123272, 22.049421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545753, 32.349758, 22.082144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151199, 32.356632, 22.016714>,  <34.914467, 32.360756, 21.977457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151199, 32.356632, 22.016714>,  <35.545753, 32.349758, 22.082144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151199, 32.356632, 22.016714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140472, -0.429311, -0.892166,
		-0.085552, -0.902993, 0.421051,
		-0.986381, 0.017180, -0.163574,
		34.855286, 32.361786, 21.967642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436630, 31.728203, 21.823490>,  <35.545753, 32.349758, 22.082144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436630, 31.728203, 21.823490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101158, 31.916683, 21.714251>,  <34.899876, 32.029770, 21.648706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101158, 31.916683, 21.714251>,  <35.436630, 31.728203, 21.823490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101158, 31.916683, 21.714251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011764, -0.485659, -0.874069,
		-0.544493, -0.736280, 0.401770,
		-0.838683, 0.471198, -0.273099,
		34.849552, 32.058044, 21.632320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.341713, 32.655384, 22.649210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.730003, 32.601501, 22.569670>,  <29.962978, 32.569172, 22.521946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.730003, 32.601501, 22.569670>,  <29.341713, 32.655384, 22.649210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730003, 32.601501, 22.569670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209762, 0.072204, 0.975083,
		-0.116990, -0.988252, 0.098347,
		0.970728, -0.134704, -0.198851,
		30.021221, 32.561089, 22.510014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489460, 32.103428, 23.022196>,  <29.341713, 32.655384, 22.649210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489460, 32.103428, 23.022196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.823189, 32.311810, 22.950069>,  <30.023426, 32.436840, 22.906794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.823189, 32.311810, 22.950069>,  <29.489460, 32.103428, 23.022196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823189, 32.311810, 22.950069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183224, 0.046452, 0.981973,
		0.519941, -0.852318, -0.056696,
		0.834320, 0.520956, -0.180317,
		30.073484, 32.468098, 22.895975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055624, 31.719845, 23.406179>,  <29.489460, 32.103428, 23.022196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055624, 31.719845, 23.406179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.167864, 32.098011, 23.339899>,  <30.235207, 32.324909, 23.300131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.167864, 32.098011, 23.339899>,  <30.055624, 31.719845, 23.406179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167864, 32.098011, 23.339899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200781, 0.111003, 0.973327,
		0.938591, -0.306383, -0.158674,
		0.280598, 0.945414, -0.165702,
		30.252043, 32.381634, 23.290188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537241, 31.838583, 23.949413>,  <30.055624, 31.719845, 23.406179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537241, 31.838583, 23.949413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.480473, 32.212448, 23.819017>,  <30.446411, 32.436768, 23.740780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.480473, 32.212448, 23.819017>,  <30.537241, 31.838583, 23.949413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480473, 32.212448, 23.819017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041080, 0.334598, 0.941465,
		0.989025, 0.120221, -0.085882,
		-0.141920, 0.934661, -0.325988,
		30.437897, 32.492847, 23.721222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154291, 32.251770, 24.082029>,  <30.537241, 31.838583, 23.949413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154291, 32.251770, 24.082029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.850370, 32.506290, 24.028631>,  <30.668018, 32.659004, 23.996593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.850370, 32.506290, 24.028631>,  <31.154291, 32.251770, 24.082029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850370, 32.506290, 24.028631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197453, 0.421464, 0.885088,
		0.619447, 0.646132, -0.445868,
		-0.759801, 0.636303, -0.133494,
		30.622431, 32.697182, 23.988583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465147, 32.903770, 24.319128>,  <31.154291, 32.251770, 24.082029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465147, 32.903770, 24.319128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.069138, 32.959923, 24.314209>,  <30.831532, 32.993614, 24.311258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.069138, 32.959923, 24.314209>,  <31.465147, 32.903770, 24.319128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069138, 32.959923, 24.314209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047499, 0.414606, 0.908761,
		0.132667, 0.899109, -0.417137,
		-0.990022, 0.140377, -0.012298,
		30.772131, 33.002037, 24.310520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271139, 33.633057, 24.556406>,  <31.465147, 32.903770, 24.319128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271139, 33.633057, 24.556406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.930838, 33.429226, 24.607874>,  <30.726658, 33.306927, 24.638756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.930838, 33.429226, 24.607874>,  <31.271139, 33.633057, 24.556406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930838, 33.429226, 24.607874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003959, 0.238602, 0.971109,
		-0.525552, 0.826683, -0.200974,
		-0.850752, -0.509573, 0.128671,
		30.675611, 33.276356, 24.646475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008966, 34.011894, 24.968077>,  <31.271139, 33.633057, 24.556406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008966, 34.011894, 24.968077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.778204, 33.690868, 25.028830>,  <30.639748, 33.498253, 25.065281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.778204, 33.690868, 25.028830>,  <31.008966, 34.011894, 24.968077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778204, 33.690868, 25.028830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033730, 0.209197, 0.977292,
		-0.816115, 0.558681, -0.147757,
		-0.576905, -0.802566, 0.151884,
		30.605133, 33.450100, 25.074394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508297, 34.252586, 25.398382>,  <31.008966, 34.011894, 24.968077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508297, 34.252586, 25.398382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.531462, 33.854572, 25.430750>,  <30.545361, 33.615765, 25.450171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.531462, 33.854572, 25.430750>,  <30.508297, 34.252586, 25.398382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531462, 33.854572, 25.430750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096525, 0.075093, 0.992494,
		-0.993644, -0.065285, -0.091697,
		0.057909, -0.995037, 0.080918,
		30.548834, 33.556061, 25.455025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960463, 34.055634, 25.727062>,  <30.508297, 34.252586, 25.398382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960463, 34.055634, 25.727062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.210569, 33.745892, 25.765882>,  <30.360634, 33.560047, 25.789175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.210569, 33.745892, 25.765882>,  <29.960463, 34.055634, 25.727062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210569, 33.745892, 25.765882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158472, -0.004213, 0.987354,
		-0.764154, -0.632738, -0.125348,
		0.625264, -0.774355, 0.097052,
		30.398149, 33.513584, 25.794998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596970, 33.567421, 26.178444>,  <29.960463, 34.055634, 25.727062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596970, 33.567421, 26.178444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.992065, 33.506878, 26.193720>,  <30.229124, 33.470551, 26.202885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.992065, 33.506878, 26.193720>,  <29.596970, 33.567421, 26.178444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992065, 33.506878, 26.193720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060257, -0.144006, 0.987740,
		-0.144006, -0.977932, -0.151362,
		-0.987740, 0.151362, -0.038189,
		30.288387, 33.461468, 26.205177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620594, 32.925819, 26.511669>,  <29.596970, 33.567421, 26.178444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620594, 32.925819, 26.511669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.975130, 33.099693, 26.575481>,  <30.187853, 33.204018, 26.613770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.975130, 33.099693, 26.575481>,  <29.620594, 32.925819, 26.511669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975130, 33.099693, 26.575481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173470, -0.007716, 0.984809,
		0.429309, -0.900551, 0.068565,
		0.886342, 0.434681, 0.159531,
		30.241034, 33.230099, 26.623341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947384, 32.541328, 27.026600>,  <29.620594, 32.925819, 26.511669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947384, 32.541328, 27.026600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.170504, 32.872131, 27.054647>,  <30.304377, 33.070614, 27.071476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.170504, 32.872131, 27.054647>,  <29.947384, 32.541328, 27.026600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170504, 32.872131, 27.054647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021627, -0.069973, 0.997314,
		0.829693, -0.557819, -0.021145,
		0.557800, 0.827008, 0.070120,
		30.337843, 33.120235, 27.075684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436001, 32.375435, 27.486191>,  <29.947384, 32.541328, 27.026600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436001, 32.375435, 27.486191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.408426, 32.774158, 27.470047>,  <30.391882, 33.013393, 27.460361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.408426, 32.774158, 27.470047>,  <30.436001, 32.375435, 27.486191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408426, 32.774158, 27.470047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013939, 0.039488, 0.999123,
		0.997524, 0.069439, 0.011173,
		-0.068937, 0.996804, -0.040358,
		30.387745, 33.073200, 27.457939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940821, 31.827862, 27.389595>,  <30.436001, 32.375435, 27.486191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940821, 31.827862, 27.389595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.977938, 31.438654, 27.474092>,  <31.000208, 31.205130, 27.524790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.977938, 31.438654, 27.474092>,  <30.940821, 31.827862, 27.389595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977938, 31.438654, 27.474092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153600, -0.223606, -0.962500,
		0.983766, 0.056866, -0.170205,
		0.092792, -0.973019, 0.211242,
		31.005775, 31.146748, 27.537464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423815, 31.585117, 26.975122>,  <30.940821, 31.827862, 27.389595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423815, 31.585117, 26.975122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.213198, 31.261320, 27.079023>,  <31.086826, 31.067041, 27.141363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.213198, 31.261320, 27.079023>,  <31.423815, 31.585117, 26.975122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213198, 31.261320, 27.079023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046545, -0.277627, -0.959561,
		0.848873, -0.517341, 0.108505,
		-0.526544, -0.809494, 0.259750,
		31.055235, 31.018473, 27.156948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642683, 31.074005, 26.631664>,  <31.423815, 31.585117, 26.975122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642683, 31.074005, 26.631664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.277042, 30.950346, 26.736616>,  <31.057657, 30.876150, 26.799587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.277042, 30.950346, 26.736616>,  <31.642683, 31.074005, 26.631664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277042, 30.950346, 26.736616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175886, -0.280720, -0.943536,
		0.365349, -0.908638, 0.202232,
		-0.914103, -0.309150, 0.262378,
		31.002811, 30.857601, 26.815329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618361, 30.383030, 26.353802>,  <31.642683, 31.074005, 26.631664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618361, 30.383030, 26.353802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.239643, 30.505335, 26.393986>,  <31.012413, 30.578718, 26.418097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.239643, 30.505335, 26.393986>,  <31.618361, 30.383030, 26.353802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239643, 30.505335, 26.393986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238148, -0.455609, -0.857733,
		-0.216491, -0.836020, 0.504184,
		-0.946793, 0.305762, 0.100461,
		30.955605, 30.597063, 26.424124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272619, 29.836292, 26.050100>,  <31.618361, 30.383030, 26.353802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272619, 29.836292, 26.050100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.001308, 30.129181, 26.074743>,  <30.838522, 30.304914, 26.089529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.001308, 30.129181, 26.074743>,  <31.272619, 29.836292, 26.050100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001308, 30.129181, 26.074743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448346, -0.345969, -0.824191,
		-0.582176, -0.586650, 0.562950,
		-0.678275, 0.732221, 0.061608,
		30.797825, 30.348846, 26.093225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614912, 29.549261, 25.948845>,  <31.272619, 29.836292, 26.050100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614912, 29.549261, 25.948845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.564672, 29.927101, 25.827549>,  <30.534529, 30.153805, 25.754772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.564672, 29.927101, 25.827549>,  <30.614912, 29.549261, 25.948845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564672, 29.927101, 25.827549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416404, -0.327627, -0.848096,
		-0.900462, 0.019749, 0.434486,
		-0.125601, 0.944601, -0.303240,
		30.526993, 30.210482, 25.736578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922911, 29.654478, 25.743444>,  <30.614912, 29.549261, 25.948845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922911, 29.654478, 25.743444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.163754, 29.907604, 25.548708>,  <30.308258, 30.059479, 25.431866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.163754, 29.907604, 25.548708>,  <29.922911, 29.654478, 25.743444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163754, 29.907604, 25.548708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424308, -0.262913, -0.866510,
		-0.676336, 0.728302, 0.110207,
		0.602106, 0.632814, -0.486842,
		30.344385, 30.097448, 25.402655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579838, 29.754271, 25.049860>,  <29.922911, 29.654478, 25.743444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579838, 29.754271, 25.049860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.954121, 29.876379, 24.979134>,  <30.178690, 29.949644, 24.936697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.954121, 29.876379, 24.979134>,  <29.579838, 29.754271, 25.049860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954121, 29.876379, 24.979134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030069, -0.430372, -0.902151,
		-0.351500, 0.849464, -0.393522,
		0.935705, 0.305273, -0.176818,
		30.234833, 29.967960, 24.926088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520500, 30.013254, 24.339933>,  <29.579838, 29.754271, 25.049860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520500, 30.013254, 24.339933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.915636, 29.967096, 24.381613>,  <30.152718, 29.939402, 24.406620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.915636, 29.967096, 24.381613>,  <29.520500, 30.013254, 24.339933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915636, 29.967096, 24.381613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089421, -0.126589, -0.987917,
		0.127192, 0.985220, -0.114730,
		0.987839, -0.115396, 0.104201,
		30.211988, 29.932478, 24.412872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708000, 30.309242, 23.731428>,  <29.520500, 30.013254, 24.339933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708000, 30.309242, 23.731428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.036722, 30.133951, 23.877081>,  <30.233955, 30.028776, 23.964474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.036722, 30.133951, 23.877081>,  <29.708000, 30.309242, 23.731428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036722, 30.133951, 23.877081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274481, -0.255544, -0.927015,
		0.499297, 0.861773, -0.089722,
		0.821804, -0.438229, 0.364133,
		30.283264, 30.002483, 23.986320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345648, 30.564993, 23.636835>,  <29.708000, 30.309242, 23.731428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345648, 30.564993, 23.636835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.405878, 30.171425, 23.675266>,  <30.442017, 29.935284, 23.698326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.405878, 30.171425, 23.675266>,  <30.345648, 30.564993, 23.636835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405878, 30.171425, 23.675266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493398, -0.009424, -0.869753,
		0.856671, 0.178367, 0.484045,
		0.150574, -0.983919, 0.096079,
		30.451050, 29.876249, 23.704090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958305, 30.600298, 23.418865>,  <30.345648, 30.564993, 23.636835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958305, 30.600298, 23.418865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.852371, 30.215111, 23.398636>,  <30.788811, 29.983999, 23.386497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.852371, 30.215111, 23.398636>,  <30.958305, 30.600298, 23.418865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852371, 30.215111, 23.398636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521552, -0.098930, -0.847465,
		0.811076, -0.250818, 0.528437,
		-0.264838, -0.962966, -0.050575,
		30.772921, 29.926222, 23.383463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626020, 30.153996, 23.403952>,  <30.958305, 30.600298, 23.418865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626020, 30.153996, 23.403952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.322100, 29.967030, 23.223186>,  <31.139748, 29.854851, 23.114727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.322100, 29.967030, 23.223186>,  <31.626020, 30.153996, 23.403952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322100, 29.967030, 23.223186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489789, 0.045598, -0.870648,
		0.427561, -0.882861, 0.194290,
		-0.759802, -0.467416, -0.451911,
		31.094158, 29.826805, 23.087612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945501, 29.568554, 22.851341>,  <31.626020, 30.153996, 23.403952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945501, 29.568554, 22.851341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.561806, 29.613525, 22.747637>,  <31.331589, 29.640509, 22.685413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.561806, 29.613525, 22.747637>,  <31.945501, 29.568554, 22.851341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561806, 29.613525, 22.747637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253285, -0.064777, -0.965220,
		-0.125315, -0.991546, 0.033660,
		-0.959241, 0.112431, -0.259262,
		31.274033, 29.647255, 22.669859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383499, 28.978376, 22.949064>,  <31.945501, 29.568554, 22.851341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383499, 28.978376, 22.949064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.762966, 28.871893, 22.880758>,  <32.990646, 28.808002, 22.839775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.762966, 28.871893, 22.880758>,  <32.383499, 28.978376, 22.949064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762966, 28.871893, 22.880758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155746, -0.076717, 0.984814,
		-0.275267, -0.960858, -0.031318,
		0.948668, -0.266209, -0.170767,
		33.047565, 28.792030, 22.829529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429924, 28.322102, 23.196585>,  <32.383499, 28.978376, 22.949064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429924, 28.322102, 23.196585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.794384, 28.486874, 23.200891>,  <33.013062, 28.585737, 23.203476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.794384, 28.486874, 23.200891>,  <32.429924, 28.322102, 23.196585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794384, 28.486874, 23.200891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102458, -0.251786, 0.962344,
		0.399130, -0.875738, -0.271621,
		0.911152, 0.411930, 0.010769,
		33.067730, 28.610453, 23.204123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691254, 27.984570, 23.792337>,  <32.429924, 28.322102, 23.196585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691254, 27.984570, 23.792337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.944622, 28.280090, 23.700294>,  <33.096645, 28.457403, 23.645069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.944622, 28.280090, 23.700294>,  <32.691254, 27.984570, 23.792337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944622, 28.280090, 23.700294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155394, 0.169864, 0.973139,
		0.758043, -0.652165, -0.007210,
		0.633422, 0.738801, -0.230106,
		33.134647, 28.501730, 23.631262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273071, 27.865845, 24.152988>,  <32.691254, 27.984570, 23.792337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273071, 27.865845, 24.152988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.347462, 28.255423, 24.101078>,  <33.392097, 28.489170, 24.069931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.347462, 28.255423, 24.101078>,  <33.273071, 27.865845, 24.152988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347462, 28.255423, 24.101078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394199, 0.047027, 0.917821,
		0.900011, -0.221850, -0.375183,
		0.185975, 0.973946, -0.129778,
		33.403255, 28.547606, 24.062145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908352, 27.986910, 24.548235>,  <33.273071, 27.865845, 24.152988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908352, 27.986910, 24.548235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.787712, 28.359930, 24.468849>,  <33.715328, 28.583742, 24.421219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.787712, 28.359930, 24.468849>,  <33.908352, 27.986910, 24.548235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787712, 28.359930, 24.468849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370592, 0.306449, 0.876784,
		0.878465, 0.190887, -0.438020,
		-0.301598, 0.932551, -0.198463,
		33.697231, 28.639696, 24.409309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514084, 28.385984, 24.646198>,  <33.908352, 27.986910, 24.548235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514084, 28.385984, 24.646198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.191235, 28.619299, 24.682711>,  <33.997524, 28.759287, 24.704618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.191235, 28.619299, 24.682711>,  <34.514084, 28.385984, 24.646198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191235, 28.619299, 24.682711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379261, 0.393764, 0.837324,
		0.452456, 0.710442, -0.539033,
		-0.807122, 0.583286, 0.091282,
		33.949097, 28.794285, 24.710094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824730, 29.095131, 24.659170>,  <34.514084, 28.385984, 24.646198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824730, 29.095131, 24.659170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.460693, 29.104475, 24.824673>,  <34.242271, 29.110081, 24.923975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.460693, 29.104475, 24.824673>,  <34.824730, 29.095131, 24.659170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460693, 29.104475, 24.824673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388987, 0.392504, 0.833444,
		-0.142932, 0.919454, -0.366300,
		-0.910088, 0.023360, 0.413757,
		34.187668, 29.111483, 24.948799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597935, 29.821430, 24.902864>,  <34.824730, 29.095131, 24.659170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597935, 29.821430, 24.902864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.386089, 29.565825, 25.125996>,  <34.258984, 29.412460, 25.259874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.386089, 29.565825, 25.125996>,  <34.597935, 29.821430, 24.902864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386089, 29.565825, 25.125996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427958, 0.366501, 0.826153,
		-0.732368, 0.676268, 0.079367,
		-0.529613, -0.639014, 0.557828,
		34.227207, 29.374121, 25.293344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289368, 30.243795, 25.435589>,  <34.597935, 29.821430, 24.902864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289368, 30.243795, 25.435589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.277878, 29.863729, 25.559761>,  <34.270985, 29.635691, 25.634264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.277878, 29.863729, 25.559761>,  <34.289368, 30.243795, 25.435589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277878, 29.863729, 25.559761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378919, 0.277029, 0.882992,
		-0.924984, 0.142989, 0.352078,
		-0.028722, -0.950163, 0.310429,
		34.269260, 29.578680, 25.652889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108929, 30.285788, 26.188725>,  <34.289368, 30.243795, 25.435589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108929, 30.285788, 26.188725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.246346, 29.911699, 26.154442>,  <34.328796, 29.687246, 26.133871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.246346, 29.911699, 26.154442>,  <34.108929, 30.285788, 26.188725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246346, 29.911699, 26.154442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344395, 0.040550, 0.937949,
		-0.873712, -0.351740, 0.336015,
		0.343539, -0.935219, -0.085709,
		34.349407, 29.631134, 26.128729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893482, 29.960529, 26.796644>,  <34.108929, 30.285788, 26.188725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893482, 29.960529, 26.796644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.195007, 29.746082, 26.644676>,  <34.375923, 29.617414, 26.553495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.195007, 29.746082, 26.644676>,  <33.893482, 29.960529, 26.796644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195007, 29.746082, 26.644676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501917, 0.096646, 0.859499,
		-0.424075, -0.838593, 0.341941,
		0.753817, -0.536118, -0.379918,
		34.421154, 29.585247, 26.530701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836216, 29.252226, 27.084499>,  <33.893482, 29.960529, 26.796644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836216, 29.252226, 27.084499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.214596, 29.336824, 26.986156>,  <34.441624, 29.387585, 26.927151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.214596, 29.336824, 26.986156>,  <33.836216, 29.252226, 27.084499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214596, 29.336824, 26.986156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271166, -0.099976, 0.957327,
		0.177894, -0.972252, -0.151923,
		0.945951, 0.211499, -0.245856,
		34.498383, 29.400274, 26.912399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263756, 28.846491, 27.541529>,  <33.836216, 29.252226, 27.084499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263756, 28.846491, 27.541529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.509212, 29.121485, 27.386190>,  <34.656487, 29.286482, 27.292988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.509212, 29.121485, 27.386190>,  <34.263756, 28.846491, 27.541529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509212, 29.121485, 27.386190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316363, 0.236554, 0.918671,
		0.723437, -0.686590, -0.072336,
		0.613639, 0.687485, -0.388344,
		34.693306, 29.327730, 27.269688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910213, 28.774521, 27.863754>,  <34.263756, 28.846491, 27.541529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910213, 28.774521, 27.863754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.912273, 29.152321, 27.732365>,  <34.913509, 29.379002, 27.653532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.912273, 29.152321, 27.732365>,  <34.910213, 28.774521, 27.863754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912273, 29.152321, 27.732365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226013, 0.318878, 0.920454,
		0.974111, -0.078976, -0.211828,
		0.005147, 0.944500, -0.328472,
		34.913818, 29.435671, 27.633823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.950649, 31.217484, 21.544140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.846458, 31.571548, 21.389923>,  <34.783943, 31.783987, 21.297394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.846458, 31.571548, 21.389923>,  <34.950649, 31.217484, 21.544140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846458, 31.571548, 21.389923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043122, -0.409594, -0.911248,
		-0.964516, -0.220736, 0.144860,
		-0.260479, 0.885160, -0.385541,
		34.768314, 31.837097, 21.274261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469845, 30.977659, 21.053492>,  <34.950649, 31.217484, 21.544140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469845, 30.977659, 21.053492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.596466, 31.334578, 20.924742>,  <34.672440, 31.548729, 20.847492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.596466, 31.334578, 20.924742>,  <34.469845, 30.977659, 21.053492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596466, 31.334578, 20.924742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074778, -0.361743, -0.929274,
		-0.945624, 0.270093, -0.181234,
		0.316550, 0.892296, -0.321875,
		34.691433, 31.602266, 20.828178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176769, 30.935816, 20.370129>,  <34.469845, 30.977659, 21.053492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176769, 30.935816, 20.370129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.404022, 31.264336, 20.349358>,  <34.540375, 31.461447, 20.336895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.404022, 31.264336, 20.349358>,  <34.176769, 30.935816, 20.370129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404022, 31.264336, 20.349358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061910, -0.105574, -0.992482,
		-0.820607, 0.560643, -0.110827,
		0.568129, 0.821299, -0.051925,
		34.574463, 31.510725, 20.333780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973339, 31.224800, 19.754297>,  <34.176769, 30.935816, 20.370129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973339, 31.224800, 19.754297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.305756, 31.433487, 19.831423>,  <34.505207, 31.558699, 19.877697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.305756, 31.433487, 19.831423>,  <33.973339, 31.224800, 19.754297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305756, 31.433487, 19.831423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208437, 0.029275, -0.977598,
		-0.515672, 0.852617, -0.084416,
		0.831045, 0.521715, 0.192813,
		34.555069, 31.590002, 19.889267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059849, 31.802067, 19.359076>,  <33.973339, 31.224800, 19.754297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059849, 31.802067, 19.359076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.441978, 31.734854, 19.456327>,  <34.671257, 31.694527, 19.514679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.441978, 31.734854, 19.456327>,  <34.059849, 31.802067, 19.359076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441978, 31.734854, 19.456327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276439, 0.217062, -0.936197,
		0.104538, 0.961587, 0.253817,
		0.955329, -0.168033, 0.243129,
		34.728577, 31.684444, 19.529266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482273, 32.388157, 19.071978>,  <34.059849, 31.802067, 19.359076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482273, 32.388157, 19.071978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.753273, 32.102936, 19.144144>,  <34.915871, 31.931803, 19.187445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.753273, 32.102936, 19.144144>,  <34.482273, 32.388157, 19.071978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753273, 32.102936, 19.144144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315930, 0.060604, -0.946845,
		0.664219, 0.698484, 0.266334,
		0.677497, -0.713055, 0.180417,
		34.956524, 31.889019, 19.198269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132351, 32.677067, 18.891741>,  <34.482273, 32.388157, 19.071978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132351, 32.677067, 18.891741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.144424, 32.277836, 18.870108>,  <35.151669, 32.038296, 18.857128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.144424, 32.277836, 18.870108>,  <35.132351, 32.677067, 18.891741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144424, 32.277836, 18.870108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097599, 0.056792, -0.993604,
		0.994768, 0.024714, 0.099125,
		0.030185, -0.998080, -0.054083,
		35.153481, 31.978413, 18.853882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505703, 32.528778, 18.258331>,  <35.132351, 32.677067, 18.891741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505703, 32.528778, 18.258331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.375309, 32.154858, 18.314739>,  <35.297073, 31.930506, 18.348583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.375309, 32.154858, 18.314739>,  <35.505703, 32.528778, 18.258331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375309, 32.154858, 18.314739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042721, -0.134448, -0.989999,
		0.944409, -0.328751, 0.003893,
		-0.325987, -0.934798, 0.141018,
		35.277512, 31.874418, 18.357044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021545, 32.088833, 17.861500>,  <35.505703, 32.528778, 18.258331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021545, 32.088833, 17.861500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.667957, 31.913197, 17.925747>,  <35.455803, 31.807816, 17.964294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.667957, 31.913197, 17.925747>,  <36.021545, 32.088833, 17.861500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667957, 31.913197, 17.925747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011103, -0.323723, -0.946087,
		0.467412, -0.838096, 0.281286,
		-0.883970, -0.439089, 0.160617,
		35.402767, 31.781469, 17.973932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028461, 31.397110, 17.625084>,  <36.021545, 32.088833, 17.861500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028461, 31.397110, 17.625084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.639969, 31.490339, 17.644611>,  <35.406872, 31.546276, 17.656328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.639969, 31.490339, 17.644611>,  <36.028461, 31.397110, 17.625084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639969, 31.490339, 17.644611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137645, -0.382178, -0.913780,
		-0.194317, -0.894214, 0.403266,
		-0.971234, 0.233070, 0.048820,
		35.348598, 31.560261, 17.659258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605171, 30.703499, 17.486732>,  <36.028461, 31.397110, 17.625084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605171, 30.703499, 17.486732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.372250, 31.019836, 17.411381>,  <35.232498, 31.209639, 17.366169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.372250, 31.019836, 17.411381>,  <35.605171, 30.703499, 17.486732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372250, 31.019836, 17.411381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105990, -0.303590, -0.946889,
		-0.806032, -0.531411, 0.260603,
		-0.582304, 0.790844, -0.188379,
		35.197559, 31.257090, 17.354866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222904, 30.443304, 17.058262>,  <35.605171, 30.703499, 17.486732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222904, 30.443304, 17.058262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.168556, 30.835464, 17.001196>,  <35.135948, 31.070761, 16.966957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.168556, 30.835464, 17.001196>,  <35.222904, 30.443304, 17.058262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168556, 30.835464, 17.001196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052762, -0.150957, -0.987131,
		-0.989321, -0.126594, 0.072239,
		-0.135870, 0.980401, -0.142665,
		35.127796, 31.129585, 16.958397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734058, 30.566303, 16.470360>,  <35.222904, 30.443304, 17.058262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734058, 30.566303, 16.470360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.979229, 30.879442, 16.513197>,  <35.126331, 31.067326, 16.538898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.979229, 30.879442, 16.513197>,  <34.734058, 30.566303, 16.470360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979229, 30.879442, 16.513197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050301, 0.096600, -0.994052,
		-0.788537, 0.614668, 0.019830,
		0.612927, 0.782848, 0.107091,
		35.163109, 31.114296, 16.545324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160664, 30.258663, 16.701563>,  <34.734058, 30.566303, 16.470360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160664, 30.258663, 16.701563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.205891, 30.230623, 16.305119>,  <34.233025, 30.213799, 16.067251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.205891, 30.230623, 16.305119>,  <34.160664, 30.258663, 16.701563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205891, 30.230623, 16.305119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935139, -0.344589, -0.082306,
		-0.335757, 0.936133, -0.104513,
		0.113064, -0.070100, -0.991112,
		34.239811, 30.209593, 16.007786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032497, 29.746237, 17.306400>,  <34.160664, 30.258663, 16.701563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032497, 29.746237, 17.306400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.684921, 29.548279, 17.308554>,  <33.476376, 29.429504, 17.309845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.684921, 29.548279, 17.308554>,  <34.032497, 29.746237, 17.306400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684921, 29.548279, 17.308554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141638, 0.259083, 0.955413,
		-0.474223, 0.829431, -0.295222,
		-0.868937, -0.494894, 0.005384,
		33.424240, 29.399811, 17.310169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689068, 30.091656, 17.738960>,  <34.032497, 29.746237, 17.306400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689068, 30.091656, 17.738960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.496086, 29.742546, 17.709295>,  <33.380299, 29.533079, 17.691496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.496086, 29.742546, 17.709295>,  <33.689068, 30.091656, 17.738960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496086, 29.742546, 17.709295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094131, -0.032518, 0.995029,
		-0.870848, 0.487038, -0.066466,
		-0.482455, -0.872775, -0.074163,
		33.351349, 29.480713, 17.687046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288956, 30.284918, 18.232906>,  <33.689068, 30.091656, 17.738960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288956, 30.284918, 18.232906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.255028, 29.888264, 18.193998>,  <33.234669, 29.650270, 18.170654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.255028, 29.888264, 18.193998>,  <33.288956, 30.284918, 18.232906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255028, 29.888264, 18.193998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203338, -0.078338, 0.975970,
		-0.975428, 0.102562, -0.194992,
		-0.084822, -0.991637, -0.097268,
		33.229580, 29.590773, 18.164818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671421, 30.103001, 18.603228>,  <33.288956, 30.284918, 18.232906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671421, 30.103001, 18.603228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.889713, 29.769487, 18.569799>,  <33.020691, 29.569380, 18.549742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.889713, 29.769487, 18.569799>,  <32.671421, 30.103001, 18.603228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889713, 29.769487, 18.569799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050558, -0.132314, 0.989918,
		-0.836433, -0.536005, -0.114363,
		0.545732, -0.833782, -0.083572,
		33.053432, 29.519352, 18.544727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283932, 29.565298, 19.026823>,  <32.671421, 30.103001, 18.603228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283932, 29.565298, 19.026823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.662083, 29.440935, 18.987633>,  <32.888973, 29.366318, 18.964119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.662083, 29.440935, 18.987633>,  <32.283932, 29.565298, 19.026823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662083, 29.440935, 18.987633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009968, -0.272842, 0.962007,
		-0.325825, -0.910437, -0.254839,
		0.945378, -0.310905, -0.097974,
		32.945694, 29.347664, 18.958241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353310, 28.896740, 19.186146>,  <32.283932, 29.565298, 19.026823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353310, 28.896740, 19.186146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.723263, 29.038963, 19.240061>,  <32.945236, 29.124296, 19.272409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.723263, 29.038963, 19.240061>,  <32.353310, 28.896740, 19.186146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723263, 29.038963, 19.240061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014327, -0.386806, 0.922050,
		0.379977, -0.850859, -0.362845,
		0.924885, 0.355556, 0.134787,
		33.000729, 29.145630, 19.280497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666771, 28.432331, 19.772371>,  <32.353310, 28.896740, 19.186146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666771, 28.432331, 19.772371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897038, 28.756268, 19.727171>,  <33.035198, 28.950628, 19.700050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.897038, 28.756268, 19.727171>,  <32.666771, 28.432331, 19.772371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897038, 28.756268, 19.727171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318273, -0.094622, 0.943265,
		0.753202, -0.578969, -0.312221,
		0.575664, 0.809840, -0.113001,
		33.069736, 28.999220, 19.693272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272987, 28.147333, 20.142801>,  <32.666771, 28.432331, 19.772371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272987, 28.147333, 20.142801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.311344, 28.545477, 20.146065>,  <33.334358, 28.784363, 20.148024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.311344, 28.545477, 20.146065>,  <33.272987, 28.147333, 20.142801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311344, 28.545477, 20.146065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138072, -0.021419, 0.990191,
		0.985769, -0.093829, -0.139485,
		0.095896, 0.995358, 0.008159,
		33.340115, 28.844084, 20.148512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977032, 28.357662, 20.478550>,  <33.272987, 28.147333, 20.142801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977032, 28.357662, 20.478550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.743958, 28.682060, 20.499580>,  <33.604111, 28.876699, 20.512199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.743958, 28.682060, 20.499580>,  <33.977032, 28.357662, 20.478550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743958, 28.682060, 20.499580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251127, 0.118147, 0.960716,
		0.772923, 0.573002, -0.272506,
		-0.582688, 0.810994, 0.052578,
		33.569153, 28.925358, 20.515354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347958, 28.695326, 21.005844>,  <33.977032, 28.357662, 20.478550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347958, 28.695326, 21.005844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975559, 28.835691, 20.965645>,  <33.752121, 28.919910, 20.941525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975559, 28.835691, 20.965645>,  <34.347958, 28.695326, 21.005844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975559, 28.835691, 20.965645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057760, 0.130234, 0.989799,
		0.360421, 0.927308, -0.100979,
		-0.931000, 0.350912, -0.100500,
		33.696259, 28.940966, 20.935495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264503, 29.262999, 21.466537>,  <34.347958, 28.695326, 21.005844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264503, 29.262999, 21.466537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.890667, 29.146513, 21.384819>,  <33.666367, 29.076622, 21.335787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.890667, 29.146513, 21.384819>,  <34.264503, 29.262999, 21.466537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890667, 29.146513, 21.384819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218126, 0.015467, 0.975798,
		-0.281006, 0.956533, -0.077977,
		-0.934589, -0.291214, -0.204298,
		33.610291, 29.059149, 21.323530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829731, 29.734222, 21.858421>,  <34.264503, 29.262999, 21.466537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829731, 29.734222, 21.858421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.611565, 29.413994, 21.759136>,  <33.480663, 29.221857, 21.699566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.611565, 29.413994, 21.759136>,  <33.829731, 29.734222, 21.858421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611565, 29.413994, 21.759136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135885, -0.207762, 0.968695,
		-0.827077, 0.562071, 0.004532,
		-0.545417, -0.800569, -0.248212,
		33.447941, 29.173822, 21.684673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293186, 29.762318, 22.328161>,  <33.829731, 29.734222, 21.858421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293186, 29.762318, 22.328161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.283951, 29.387730, 22.188164>,  <33.278408, 29.162977, 22.104166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.283951, 29.387730, 22.188164>,  <33.293186, 29.762318, 22.328161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283951, 29.387730, 22.188164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321699, -0.324506, 0.889498,
		-0.946560, 0.133133, -0.293767,
		-0.023092, -0.936468, -0.349993,
		33.277023, 29.106789, 22.083166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681210, 29.525776, 22.510387>,  <33.293186, 29.762318, 22.328161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681210, 29.525776, 22.510387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896797, 29.194456, 22.449148>,  <33.026150, 28.995665, 22.412405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896797, 29.194456, 22.449148>,  <32.681210, 29.525776, 22.510387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896797, 29.194456, 22.449148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052317, -0.214323, 0.975361,
		-0.840702, -0.517675, -0.158846,
		0.538965, -0.828298, -0.153098,
		33.058487, 28.945967, 22.403219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949720, 29.305349, 22.183352>,  <32.681210, 29.525776, 22.510387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949720, 29.305349, 22.183352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.585321, 29.470285, 22.180172>,  <31.366682, 29.569246, 22.178265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.585321, 29.470285, 22.180172>,  <31.949720, 29.305349, 22.183352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585321, 29.470285, 22.180172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024842, 0.035628, -0.999056,
		-0.411668, -0.910333, -0.042701,
		-0.910995, 0.412340, -0.007948,
		31.312023, 29.593987, 22.177788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425528, 28.874533, 21.836149>,  <31.949720, 29.305349, 22.183352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425528, 28.874533, 21.836149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.261538, 29.238819, 21.816086>,  <31.163143, 29.457392, 21.804047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.261538, 29.238819, 21.816086>,  <31.425528, 28.874533, 21.836149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261538, 29.238819, 21.816086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034992, -0.039250, -0.998617,
		-0.911426, -0.411162, -0.015776,
		-0.409974, 0.910716, -0.050160,
		31.138546, 29.512033, 21.801037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800817, 28.833588, 21.353254>,  <31.425528, 28.874533, 21.836149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800817, 28.833588, 21.353254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.900330, 29.219448, 21.388035>,  <30.960037, 29.450964, 21.408903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.900330, 29.219448, 21.388035>,  <30.800817, 28.833588, 21.353254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900330, 29.219448, 21.388035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340996, 0.171258, -0.924333,
		-0.906549, 0.200305, 0.371547,
		0.248779, 0.964649, 0.086950,
		30.974964, 29.508842, 21.414120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131298, 29.132782, 21.059227>,  <30.800817, 28.833588, 21.353254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131298, 29.132782, 21.059227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.409575, 29.419832, 21.046419>,  <30.576540, 29.592062, 21.038734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.409575, 29.419832, 21.046419>,  <30.131298, 29.132782, 21.059227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409575, 29.419832, 21.046419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138711, 0.090468, -0.986192,
		-0.704822, 0.690526, 0.162480,
		0.695691, 0.717628, -0.032020,
		30.618282, 29.635120, 21.036814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844830, 29.748737, 20.805660>,  <30.131298, 29.132782, 21.059227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844830, 29.748737, 20.805660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.238062, 29.757788, 20.732954>,  <30.474001, 29.763218, 20.689331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.238062, 29.757788, 20.732954>,  <29.844830, 29.748737, 20.805660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238062, 29.757788, 20.732954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183142, 0.105073, -0.977455,
		-0.003015, 0.994207, 0.107439,
		0.983082, 0.022624, -0.181764,
		30.532986, 29.764574, 20.678425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816175, 30.121523, 20.285475>,  <29.844830, 29.748737, 20.805660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816175, 30.121523, 20.285475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.203058, 30.019939, 20.284094>,  <30.435188, 29.958990, 20.283266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.203058, 30.019939, 20.284094>,  <29.816175, 30.121523, 20.285475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203058, 30.019939, 20.284094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009869, 0.051153, -0.998642,
		0.253790, 0.965862, 0.051982,
		0.967209, -0.253958, -0.003450,
		30.493221, 29.943752, 20.283058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185593, 30.636383, 19.818029>,  <29.816175, 30.121523, 20.285475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185593, 30.636383, 19.818029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.392502, 30.294054, 19.818392>,  <30.516647, 30.088657, 19.818609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.392502, 30.294054, 19.818392>,  <30.185593, 30.636383, 19.818029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392502, 30.294054, 19.818392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074134, -0.045861, -0.996193,
		0.852605, 0.515235, -0.087168,
		0.517271, -0.855821, 0.000905,
		30.547684, 30.037308, 19.818663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563862, 31.221310, 19.766787>,  <30.185593, 30.636383, 19.818029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563862, 31.221310, 19.766787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.420982, 31.590673, 19.710606>,  <30.335255, 31.812292, 19.676897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.420982, 31.590673, 19.710606>,  <30.563862, 31.221310, 19.766787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420982, 31.590673, 19.710606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200943, 0.222825, 0.953924,
		0.912158, 0.312516, -0.265145,
		-0.357198, 0.923408, -0.140453,
		30.313824, 31.867697, 19.668470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049494, 31.659830, 19.940006>,  <30.563862, 31.221310, 19.766787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049494, 31.659830, 19.940006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.702862, 31.855314, 19.980410>,  <30.494883, 31.972605, 20.004652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.702862, 31.855314, 19.980410>,  <31.049494, 31.659830, 19.940006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702862, 31.855314, 19.980410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253111, 0.255984, 0.932956,
		0.430088, 0.834047, -0.345529,
		-0.866579, 0.488710, 0.101011,
		30.442888, 32.001926, 20.010714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124165, 32.210083, 20.530384>,  <31.049494, 31.659830, 19.940006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124165, 32.210083, 20.530384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.727795, 32.247070, 20.491352>,  <30.489973, 32.269260, 20.467932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.727795, 32.247070, 20.491352>,  <31.124165, 32.210083, 20.530384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727795, 32.247070, 20.491352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073895, 0.231736, 0.969968,
		0.112301, 0.968374, -0.222800,
		-0.990923, 0.092465, -0.097582,
		30.430517, 32.274811, 20.462078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910908, 32.885620, 20.784655>,  <31.124165, 32.210083, 20.530384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910908, 32.885620, 20.784655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.595325, 32.644688, 20.833233>,  <30.405975, 32.500130, 20.862381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.595325, 32.644688, 20.833233>,  <30.910908, 32.885620, 20.784655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595325, 32.644688, 20.833233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112523, 0.335939, 0.935138,
		-0.604058, 0.724118, -0.332817,
		-0.788957, -0.602327, 0.121447,
		30.358639, 32.463989, 20.869667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368511, 33.271156, 21.043640>,  <30.910908, 32.885620, 20.784655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368511, 33.271156, 21.043640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.291775, 32.893063, 21.149269>,  <30.245733, 32.666206, 21.212646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.291775, 32.893063, 21.149269>,  <30.368511, 33.271156, 21.043640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291775, 32.893063, 21.149269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067190, 0.281090, 0.957326,
		-0.979123, 0.165913, -0.117435,
		-0.191843, -0.945231, 0.264074,
		30.234222, 32.609493, 21.228491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981123, 33.375080, 21.656509>,  <30.368511, 33.271156, 21.043640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981123, 33.375080, 21.656509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.086187, 32.989243, 21.665970>,  <30.149225, 32.757740, 21.671646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.086187, 32.989243, 21.665970>,  <29.981123, 33.375080, 21.656509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086187, 32.989243, 21.665970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143140, -0.014712, 0.989593,
		-0.954212, -0.263312, -0.141937,
		0.262660, -0.964599, 0.023652,
		30.164986, 32.699863, 21.673065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395754, 33.018200, 22.044075>,  <29.981123, 33.375080, 21.656509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395754, 33.018200, 22.044075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.729027, 32.797024, 22.047264>,  <29.928991, 32.664318, 22.049177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.729027, 32.797024, 22.047264>,  <29.395754, 33.018200, 22.044075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729027, 32.797024, 22.047264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048099, 0.086824, 0.995062,
		-0.550903, -0.828684, 0.098936,
		0.833182, -0.552942, 0.007973,
		29.978981, 32.631142, 22.049656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.324566, 33.539043, 16.601274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.608257, 33.322323, 16.781691>,  <33.778473, 33.192291, 16.889940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.608257, 33.322323, 16.781691>,  <33.324566, 33.539043, 16.601274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608257, 33.322323, 16.781691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120847, 0.536893, 0.834950,
		-0.694539, -0.646681, 0.315307,
		0.709232, -0.541802, 0.451042,
		33.821026, 33.159782, 16.917004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048481, 33.240562, 17.248363>,  <33.324566, 33.539043, 16.601274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048481, 33.240562, 17.248363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.446342, 33.267773, 17.279417>,  <33.685059, 33.284100, 17.298050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.446342, 33.267773, 17.279417>,  <33.048481, 33.240562, 17.248363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446342, 33.267773, 17.279417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099541, 0.433035, 0.895864,
		0.027323, -0.898807, 0.437493,
		0.994658, 0.068026, 0.077636,
		33.744740, 33.288181, 17.302708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214993, 33.008579, 17.861807>,  <33.048481, 33.240562, 17.248363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214993, 33.008579, 17.861807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.524639, 33.243793, 17.768038>,  <33.710426, 33.384922, 17.711777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.524639, 33.243793, 17.768038>,  <33.214993, 33.008579, 17.861807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524639, 33.243793, 17.768038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024387, 0.397741, 0.917174,
		0.632574, -0.704281, 0.322238,
		0.774116, 0.588039, -0.234425,
		33.756874, 33.420204, 17.697710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567429, 33.059025, 18.532337>,  <33.214993, 33.008579, 17.861807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567429, 33.059025, 18.532337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.732975, 33.351421, 18.315315>,  <33.832302, 33.526859, 18.185102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.732975, 33.351421, 18.315315>,  <33.567429, 33.059025, 18.532337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732975, 33.351421, 18.315315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055686, 0.574547, 0.816575,
		0.908631, -0.368169, 0.197082,
		0.413870, 0.730990, -0.542553,
		33.857136, 33.570717, 18.152550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935265, 33.392693, 18.951241>,  <33.567429, 33.059025, 18.532337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935265, 33.392693, 18.951241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.923912, 33.658821, 18.652834>,  <33.917099, 33.818501, 18.473791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.923912, 33.658821, 18.652834>,  <33.935265, 33.392693, 18.951241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923912, 33.658821, 18.652834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149938, 0.740706, 0.654884,
		0.988288, -0.093268, -0.120782,
		-0.028385, 0.665324, -0.746015,
		33.915398, 33.858418, 18.429029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547874, 33.790661, 18.928585>,  <33.935265, 33.392693, 18.951241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547874, 33.790661, 18.928585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.258797, 34.015423, 18.767599>,  <34.085350, 34.150280, 18.671007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.258797, 34.015423, 18.767599>,  <34.547874, 33.790661, 18.928585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258797, 34.015423, 18.767599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146585, 0.693659, 0.705230,
		0.675443, 0.450672, -0.583671,
		-0.722696, 0.561900, -0.402465,
		34.041988, 34.183994, 18.646860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819122, 34.431644, 18.873173>,  <34.547874, 33.790661, 18.928585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819122, 34.431644, 18.873173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.423973, 34.493160, 18.864704>,  <34.186882, 34.530067, 18.859623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.423973, 34.493160, 18.864704>,  <34.819122, 34.431644, 18.873173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423973, 34.493160, 18.864704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111500, 0.797818, 0.592498,
		0.108011, 0.582954, -0.805293,
		-0.987877, 0.153786, -0.021174,
		34.127609, 34.539295, 18.858353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737595, 35.092621, 19.184444>,  <34.819122, 34.431644, 18.873173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737595, 35.092621, 19.184444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.345299, 35.017818, 19.161901>,  <34.109921, 34.972939, 19.148375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.345299, 35.017818, 19.161901>,  <34.737595, 35.092621, 19.184444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345299, 35.017818, 19.161901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172555, 0.694412, 0.698582,
		-0.091504, 0.694853, -0.713307,
		-0.980740, -0.187007, -0.056359,
		34.051075, 34.961716, 19.144995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302990, 35.836185, 19.132828>,  <34.737595, 35.092621, 19.184444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302990, 35.836185, 19.132828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.100861, 35.524380, 19.280884>,  <33.979584, 35.337296, 19.369719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.100861, 35.524380, 19.280884>,  <34.302990, 35.836185, 19.132828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100861, 35.524380, 19.280884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213601, 0.528582, 0.821569,
		-0.836074, 0.336099, -0.433611,
		-0.505327, -0.779512, 0.370142,
		33.949261, 35.290527, 19.391926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675835, 36.072151, 19.355904>,  <34.302990, 35.836185, 19.132828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675835, 36.072151, 19.355904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.712177, 35.734844, 19.567810>,  <33.733982, 35.532459, 19.694954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.712177, 35.734844, 19.567810>,  <33.675835, 36.072151, 19.355904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712177, 35.734844, 19.567810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236645, 0.498446, 0.833997,
		-0.967339, -0.201143, -0.154266,
		0.090859, -0.843263, 0.529765,
		33.739433, 35.481865, 19.726740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147800, 36.144039, 19.914822>,  <33.675835, 36.072151, 19.355904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147800, 36.144039, 19.914822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.405647, 35.874157, 20.058620>,  <33.560356, 35.712227, 20.144899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.405647, 35.874157, 20.058620>,  <33.147800, 36.144039, 19.914822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405647, 35.874157, 20.058620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054765, 0.428276, 0.901987,
		-0.762542, -0.601124, 0.239124,
		0.644617, -0.674707, 0.359499,
		33.599033, 35.671745, 20.166470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829723, 35.708790, 20.587187>,  <33.147800, 36.144039, 19.914822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829723, 35.708790, 20.587187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.222664, 35.633999, 20.584925>,  <33.458427, 35.589127, 20.583569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.222664, 35.633999, 20.584925>,  <32.829723, 35.708790, 20.587187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222664, 35.633999, 20.584925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042442, 0.193346, 0.980212,
		-0.182182, -0.963150, 0.197869,
		0.982348, -0.186975, -0.005654,
		33.517368, 35.577908, 20.583229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220501, 35.199783, 20.814163>,  <32.829723, 35.708790, 20.587187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220501, 35.199783, 20.814163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.825523, 35.256756, 20.841469>,  <31.588535, 35.290939, 20.857851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.825523, 35.256756, 20.841469>,  <32.220501, 35.199783, 20.814163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825523, 35.256756, 20.841469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110227, -0.311894, -0.943701,
		-0.113120, -0.939381, 0.323679,
		-0.987448, 0.142430, 0.068263,
		31.529289, 35.299484, 20.861948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950918, 34.603703, 20.568600>,  <32.220501, 35.199783, 20.814163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950918, 34.603703, 20.568600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.671701, 34.883686, 20.508205>,  <31.504171, 35.051678, 20.471968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.671701, 34.883686, 20.508205>,  <31.950918, 34.603703, 20.568600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671701, 34.883686, 20.508205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123218, -0.325130, -0.937607,
		-0.705378, -0.635883, 0.313201,
		-0.698040, 0.699959, -0.150987,
		31.462290, 35.093674, 20.462910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398546, 34.280800, 20.223566>,  <31.950918, 34.603703, 20.568600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398546, 34.280800, 20.223566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.357599, 34.673874, 20.161797>,  <31.333031, 34.909718, 20.124735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.357599, 34.673874, 20.161797>,  <31.398546, 34.280800, 20.223566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357599, 34.673874, 20.161797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200841, -0.172459, -0.964324,
		-0.974260, -0.067702, 0.215018,
		-0.102369, 0.982687, -0.154423,
		31.326889, 34.968681, 20.115469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827679, 34.324825, 19.877518>,  <31.398546, 34.280800, 20.223566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827679, 34.324825, 19.877518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.979666, 34.687309, 19.803312>,  <31.070858, 34.904800, 19.758789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.979666, 34.687309, 19.803312>,  <30.827679, 34.324825, 19.877518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979666, 34.687309, 19.803312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189233, -0.120160, -0.974552,
		-0.905436, 0.405405, 0.125827,
		0.379969, 0.906205, -0.185513,
		31.093657, 34.959171, 19.747658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373146, 34.697788, 19.461317>,  <30.827679, 34.324825, 19.877518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373146, 34.697788, 19.461317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.702854, 34.906460, 19.373289>,  <30.900679, 35.031662, 19.320473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.702854, 34.906460, 19.373289>,  <30.373146, 34.697788, 19.461317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702854, 34.906460, 19.373289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199574, -0.096035, -0.975165,
		-0.529857, 0.847720, 0.024955,
		0.824270, 0.521679, -0.220068,
		30.950136, 35.062962, 19.307268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144764, 35.108036, 18.972868>,  <30.373146, 34.697788, 19.461317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144764, 35.108036, 18.972868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.542286, 35.140640, 18.942659>,  <30.780800, 35.160202, 18.924534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.542286, 35.140640, 18.942659>,  <30.144764, 35.108036, 18.972868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542286, 35.140640, 18.942659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065587, -0.118320, -0.990807,
		-0.089701, 0.989624, -0.112241,
		0.993807, 0.081514, -0.075520,
		30.840427, 35.165096, 18.920004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339750, 35.612354, 18.340618>,  <30.144764, 35.108036, 18.972868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339750, 35.612354, 18.340618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.603767, 35.330471, 18.444715>,  <30.762177, 35.161339, 18.507174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.603767, 35.330471, 18.444715>,  <30.339750, 35.612354, 18.340618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603767, 35.330471, 18.444715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019268, -0.330430, -0.943634,
		0.750982, 0.627851, -0.204519,
		0.660041, -0.704712, 0.260245,
		30.801779, 35.119057, 18.522789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884861, 35.653877, 17.804802>,  <30.339750, 35.612354, 18.340618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884861, 35.653877, 17.804802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.917858, 35.291485, 17.970884>,  <30.937656, 35.074051, 18.070534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.917858, 35.291485, 17.970884>,  <30.884861, 35.653877, 17.804802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917858, 35.291485, 17.970884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169830, -0.397755, -0.901637,
		0.982015, 0.144892, 0.121051,
		0.082491, -0.905979, 0.415208,
		30.942606, 35.019691, 18.095448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333914, 35.328152, 17.352613>,  <30.884861, 35.653877, 17.804802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333914, 35.328152, 17.352613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.139429, 35.029919, 17.534912>,  <31.022738, 34.850979, 17.644291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.139429, 35.029919, 17.534912>,  <31.333914, 35.328152, 17.352613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139429, 35.029919, 17.534912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013221, -0.515209, -0.856962,
		0.873741, -0.422691, 0.240643,
		-0.486212, -0.745581, 0.455748,
		30.993565, 34.806244, 17.671637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501320, 34.739105, 17.053524>,  <31.333914, 35.328152, 17.352613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501320, 34.739105, 17.053524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.203444, 34.549950, 17.241911>,  <31.024717, 34.436459, 17.354944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.203444, 34.549950, 17.241911>,  <31.501320, 34.739105, 17.053524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203444, 34.549950, 17.241911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045727, -0.667859, -0.742882,
		0.665840, -0.574754, 0.475725,
		-0.744692, -0.472887, 0.470969,
		30.980036, 34.408085, 17.383202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630539, 34.021091, 17.183493>,  <31.501320, 34.739105, 17.053524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630539, 34.021091, 17.183493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.230690, 34.015495, 17.174072>,  <30.990780, 34.012138, 17.168419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.230690, 34.015495, 17.174072>,  <31.630539, 34.021091, 17.183493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230690, 34.015495, 17.174072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026784, -0.679324, -0.733350,
		-0.005742, -0.733706, 0.679443,
		-0.999625, -0.013987, -0.023553,
		30.930803, 34.011299, 17.167006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452818, 33.397873, 17.051273>,  <31.630539, 34.021091, 17.183493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452818, 33.397873, 17.051273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.098413, 33.566242, 16.973499>,  <30.885771, 33.667263, 16.926836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.098413, 33.566242, 16.973499>,  <31.452818, 33.397873, 17.051273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098413, 33.566242, 16.973499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062862, -0.524520, -0.849074,
		-0.459380, -0.740068, 0.491192,
		-0.886013, 0.420925, -0.194432,
		30.832609, 33.692520, 16.915169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081127, 32.823261, 16.719164>,  <31.452818, 33.397873, 17.051273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081127, 32.823261, 16.719164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.905985, 33.161690, 16.597542>,  <30.800900, 33.364746, 16.524569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.905985, 33.161690, 16.597542>,  <31.081127, 32.823261, 16.719164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905985, 33.161690, 16.597542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278269, -0.449130, -0.849028,
		-0.854897, -0.287142, 0.432089,
		-0.437855, 0.846068, -0.304057,
		30.774628, 33.415512, 16.506325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631706, 32.428242, 16.362713>,  <31.081127, 32.823261, 16.719164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631706, 32.428242, 16.362713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.253885, 32.298325, 16.382015>,  <30.027193, 32.220375, 16.393597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.253885, 32.298325, 16.382015>,  <30.631706, 32.428242, 16.362713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253885, 32.298325, 16.382015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013117, 0.109522, 0.993898,
		-0.328094, 0.939423, -0.099189,
		-0.944554, -0.324790, 0.048256,
		29.970518, 32.200886, 16.396492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253168, 32.911068, 16.749735>,  <30.631706, 32.428242, 16.362713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253168, 32.911068, 16.749735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.044928, 32.572464, 16.794285>,  <29.919983, 32.369301, 16.821014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.044928, 32.572464, 16.794285>,  <30.253168, 32.911068, 16.749735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044928, 32.572464, 16.794285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079689, 0.081703, 0.993466,
		-0.850074, 0.526073, 0.024923,
		-0.520600, -0.846506, 0.111376,
		29.888748, 32.318512, 16.827698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675114, 33.107510, 17.121702>,  <30.253168, 32.911068, 16.749735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675114, 33.107510, 17.121702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.744972, 32.716434, 17.168394>,  <29.786886, 32.481789, 17.196409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.744972, 32.716434, 17.168394>,  <29.675114, 33.107510, 17.121702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744972, 32.716434, 17.168394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074018, 0.105178, 0.991695,
		-0.981845, -0.181834, -0.053997,
		0.174645, -0.977688, 0.116728,
		29.797365, 32.423126, 17.203413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305456, 32.934250, 17.676048>,  <29.675114, 33.107510, 17.121702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305456, 32.934250, 17.676048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.527740, 32.602066, 17.660400>,  <29.661110, 32.402756, 17.651012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.527740, 32.602066, 17.660400>,  <29.305456, 32.934250, 17.676048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527740, 32.602066, 17.660400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042696, -0.075500, 0.996231,
		-0.830280, -0.551944, -0.077413,
		0.555709, -0.830456, -0.039120,
		29.694452, 32.352928, 17.648664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133152, 32.659622, 18.323301>,  <29.305456, 32.934250, 17.676048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133152, 32.659622, 18.323301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461983, 32.456135, 18.221014>,  <29.659281, 32.334042, 18.159641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461983, 32.456135, 18.221014>,  <29.133152, 32.659622, 18.323301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461983, 32.456135, 18.221014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156414, -0.230065, 0.960523,
		-0.547471, -0.829622, -0.109560,
		0.822077, -0.508722, -0.255718,
		29.708607, 32.303520, 18.144299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132753, 32.045525, 18.743614>,  <29.133152, 32.659622, 18.323301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132753, 32.045525, 18.743614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509197, 32.100075, 18.619864>,  <29.735064, 32.132805, 18.545612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509197, 32.100075, 18.619864>,  <29.132753, 32.045525, 18.743614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509197, 32.100075, 18.619864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332381, -0.205580, 0.920467,
		0.061925, -0.969092, -0.238801,
		0.941110, 0.136373, -0.309377,
		29.791531, 32.140987, 18.527050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509487, 31.433052, 18.919651>,  <29.132753, 32.045525, 18.743614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509487, 31.433052, 18.919651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.746073, 31.755037, 18.900873>,  <29.888023, 31.948229, 18.889606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.746073, 31.755037, 18.900873>,  <29.509487, 31.433052, 18.919651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746073, 31.755037, 18.900873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182414, -0.076869, 0.980212,
		0.785426, -0.588324, -0.192302,
		0.591465, 0.804963, -0.046943,
		29.923512, 31.996527, 18.886789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102774, 31.180044, 19.204275>,  <29.509487, 31.433052, 18.919651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102774, 31.180044, 19.204275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.119581, 31.579020, 19.227413>,  <30.129665, 31.818405, 19.241297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.119581, 31.579020, 19.227413>,  <30.102774, 31.180044, 19.204275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119581, 31.579020, 19.227413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207948, -0.065362, 0.975954,
		0.977237, -0.028980, -0.210162,
		0.042020, 0.997441, 0.057847,
		30.132187, 31.878252, 19.244768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648798, 30.667301, 19.202610>,  <30.102774, 31.180044, 19.204275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648798, 30.667301, 19.202610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.635420, 30.281332, 19.306765>,  <30.627394, 30.049749, 19.369257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.635420, 30.281332, 19.306765>,  <30.648798, 30.667301, 19.202610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635420, 30.281332, 19.306765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065137, -0.257875, -0.963980,
		0.997316, -0.049200, -0.054228,
		-0.033444, -0.964925, 0.260387,
		30.625387, 29.991854, 19.384880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094921, 30.370798, 18.787201>,  <30.648798, 30.667301, 19.202610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094921, 30.370798, 18.787201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.879814, 30.053305, 18.900894>,  <30.750750, 29.862808, 18.969110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.879814, 30.053305, 18.900894>,  <31.094921, 30.370798, 18.787201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879814, 30.053305, 18.900894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126054, -0.257643, -0.957983,
		0.833615, -0.551002, 0.038498,
		-0.537769, -0.793736, 0.284231,
		30.718483, 29.815184, 18.986164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344490, 29.785873, 18.421844>,  <31.094921, 30.370798, 18.787201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344490, 29.785873, 18.421844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.978952, 29.664473, 18.529753>,  <30.759630, 29.591633, 18.594498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.978952, 29.664473, 18.529753>,  <31.344490, 29.785873, 18.421844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978952, 29.664473, 18.529753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214968, -0.202026, -0.955497,
		0.344495, -0.931167, 0.119378,
		-0.913845, -0.303501, 0.269768,
		30.704800, 29.573421, 18.610683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228609, 29.124830, 18.113400>,  <31.344490, 29.785873, 18.421844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228609, 29.124830, 18.113400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.870026, 29.285164, 18.188972>,  <30.654877, 29.381365, 18.234316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.870026, 29.285164, 18.188972>,  <31.228609, 29.124830, 18.113400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870026, 29.285164, 18.188972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287271, -0.201048, -0.936512,
		-0.337403, -0.893818, 0.295380,
		-0.896457, 0.400836, 0.188933,
		30.601088, 29.405415, 18.245653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815020, 28.605553, 17.761173>,  <31.228609, 29.124830, 18.113400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815020, 28.605553, 17.761173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.612139, 28.944695, 17.823004>,  <30.490410, 29.148180, 17.860102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.612139, 28.944695, 17.823004>,  <30.815020, 28.605553, 17.761173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612139, 28.944695, 17.823004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207149, 0.054167, -0.976809,
		-0.836563, -0.527458, 0.148158,
		-0.507201, 0.847853, 0.154577,
		30.459978, 29.199051, 17.869377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336704, 28.544447, 17.335485>,  <30.815020, 28.605553, 17.761173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336704, 28.544447, 17.335485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.342716, 28.932405, 17.432705>,  <30.346323, 29.165180, 17.491037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.342716, 28.932405, 17.432705>,  <30.336704, 28.544447, 17.335485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342716, 28.932405, 17.432705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105543, 0.243258, -0.964202,
		-0.994301, -0.011159, 0.106022,
		0.015031, 0.969898, 0.243050,
		30.347225, 29.223375, 17.505619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809633, 28.847389, 17.045700>,  <30.336704, 28.544447, 17.335485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809633, 28.847389, 17.045700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.037979, 29.170696, 17.103409>,  <30.174986, 29.364681, 17.138033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.037979, 29.170696, 17.103409>,  <29.809633, 28.847389, 17.045700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037979, 29.170696, 17.103409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160876, 0.282425, -0.945704,
		-0.805129, 0.516659, 0.291258,
		0.570864, 0.808270, 0.144270,
		30.209238, 29.413177, 17.146690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420506, 29.529161, 16.767534>,  <29.809633, 28.847389, 17.045700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420506, 29.529161, 16.767534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.814926, 29.589371, 16.795958>,  <30.051579, 29.625496, 16.813011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.814926, 29.589371, 16.795958>,  <29.420506, 29.529161, 16.767534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814926, 29.589371, 16.795958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015360, 0.342796, -0.939284,
		-0.165743, 0.927272, 0.335702,
		0.986049, 0.150524, 0.071059,
		30.110741, 29.634527, 16.817276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462431, 30.217937, 16.553217>,  <29.420506, 29.529161, 16.767534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462431, 30.217937, 16.553217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.823940, 30.052351, 16.509712>,  <30.040846, 29.952999, 16.483610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.823940, 30.052351, 16.509712>,  <29.462431, 30.217937, 16.553217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823940, 30.052351, 16.509712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013833, 0.225721, -0.974094,
		0.427792, 0.881863, 0.198274,
		0.903772, -0.413966, -0.108760,
		30.095072, 29.928162, 16.477085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.106133, 32.877613, 32.113289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.459446, 32.744408, 31.981281>,  <32.671432, 32.664482, 31.902077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.459446, 32.744408, 31.981281>,  <32.106133, 32.877613, 32.113289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459446, 32.744408, 31.981281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424383, -0.268716, -0.864691,
		0.199276, 0.903820, -0.378679,
		0.883283, -0.333017, -0.330017,
		32.724430, 32.644501, 31.882277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203136, 33.224106, 31.513166>,  <32.106133, 32.877613, 32.113289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203136, 33.224106, 31.513166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409775, 32.881805, 31.501789>,  <32.533760, 32.676426, 31.494963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409775, 32.881805, 31.501789>,  <32.203136, 33.224106, 31.513166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409775, 32.881805, 31.501789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434941, -0.233661, -0.869614,
		0.737530, 0.461614, -0.492912,
		0.516601, -0.855754, -0.028443,
		32.564754, 32.625080, 31.493256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551743, 33.222294, 30.870541>,  <32.203136, 33.224106, 31.513166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551743, 33.222294, 30.870541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.524158, 32.837624, 30.976690>,  <32.507607, 32.606823, 31.040380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.524158, 32.837624, 30.976690>,  <32.551743, 33.222294, 30.870541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524158, 32.837624, 30.976690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361213, -0.223889, -0.905206,
		0.929930, -0.158282, -0.331930,
		-0.068962, -0.961676, 0.265375,
		32.503471, 32.549122, 31.056303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615654, 32.869678, 30.226910>,  <32.551743, 33.222294, 30.870541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615654, 32.869678, 30.226910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469456, 32.591457, 30.474333>,  <32.381737, 32.424522, 30.622787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469456, 32.591457, 30.474333>,  <32.615654, 32.869678, 30.226910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469456, 32.591457, 30.474333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243270, -0.570059, -0.784763,
		0.898462, -0.437303, 0.039145,
		-0.365494, -0.695556, 0.618559,
		32.359806, 32.382790, 30.659901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106613, 32.196213, 30.188332>,  <32.615654, 32.869678, 30.226910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106613, 32.196213, 30.188332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.727539, 32.114189, 30.286186>,  <32.500095, 32.064976, 30.344898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.727539, 32.114189, 30.286186>,  <33.106613, 32.196213, 30.188332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727539, 32.114189, 30.286186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127293, -0.460034, -0.878729,
		0.292737, -0.863897, 0.409863,
		-0.947682, -0.205064, 0.244637,
		32.443233, 32.052670, 30.359577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964840, 31.536661, 29.859550>,  <33.106613, 32.196213, 30.188332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964840, 31.536661, 29.859550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592785, 31.634985, 29.968670>,  <32.369553, 31.693979, 30.034142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592785, 31.634985, 29.968670>,  <32.964840, 31.536661, 29.859550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592785, 31.634985, 29.968670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366915, -0.592552, -0.717116,
		-0.014624, -0.767112, 0.641347,
		-0.930140, 0.245807, 0.272800,
		32.313744, 31.708727, 30.050510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557110, 30.892599, 29.883816>,  <32.964840, 31.536661, 29.859550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557110, 30.892599, 29.883816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291363, 31.185509, 29.823965>,  <32.131916, 31.361254, 29.788054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291363, 31.185509, 29.823965>,  <32.557110, 30.892599, 29.883816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291363, 31.185509, 29.823965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360499, -0.489330, -0.794101,
		-0.654718, -0.473634, 0.589080,
		-0.664368, 0.732275, -0.149629,
		32.092052, 31.405191, 29.779078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013783, 30.475523, 29.690844>,  <32.557110, 30.892599, 29.883816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013783, 30.475523, 29.690844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.942413, 30.841608, 29.546316>,  <31.899591, 31.061258, 29.459600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.942413, 30.841608, 29.546316>,  <32.013783, 30.475523, 29.690844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942413, 30.841608, 29.546316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464174, -0.402073, -0.789228,
		-0.867587, 0.026894, 0.496558,
		-0.178427, 0.915213, -0.361317,
		31.888885, 31.116171, 29.437922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356972, 30.463608, 29.416142>,  <32.013783, 30.475523, 29.690844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356972, 30.463608, 29.416142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.485029, 30.806715, 29.255274>,  <31.561865, 31.012579, 29.158752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.485029, 30.806715, 29.255274>,  <31.356972, 30.463608, 29.416142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485029, 30.806715, 29.255274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512102, -0.200459, -0.835205,
		-0.797031, 0.473339, 0.375088,
		0.320146, 0.857768, -0.402170,
		31.581074, 31.064045, 29.134623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710785, 30.812290, 29.204428>,  <31.356972, 30.463608, 29.416142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710785, 30.812290, 29.204428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.036253, 30.929476, 29.003584>,  <31.231533, 30.999786, 28.883078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.036253, 30.929476, 29.003584>,  <30.710785, 30.812290, 29.204428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036253, 30.929476, 29.003584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483527, -0.138408, -0.864317,
		-0.322709, 0.946053, 0.029037,
		0.813671, 0.292964, -0.502108,
		31.280354, 31.017365, 28.852951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499323, 31.396379, 28.706009>,  <30.710785, 30.812290, 29.204428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499323, 31.396379, 28.706009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.837662, 31.245974, 28.554667>,  <31.040665, 31.155729, 28.463861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.837662, 31.245974, 28.554667>,  <30.499323, 31.396379, 28.706009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837662, 31.245974, 28.554667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419873, -0.031831, -0.907025,
		0.329012, 0.926067, -0.184803,
		0.845848, -0.376015, -0.378357,
		31.091415, 31.133169, 28.441160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680946, 31.771599, 28.133129>,  <30.499323, 31.396379, 28.706009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680946, 31.771599, 28.133129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.870945, 31.428143, 28.056068>,  <30.984943, 31.222069, 28.009832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.870945, 31.428143, 28.056068>,  <30.680946, 31.771599, 28.133129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870945, 31.428143, 28.056068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314272, 0.038968, -0.948533,
		0.821957, 0.511094, -0.251337,
		0.474995, -0.858641, -0.192652,
		31.013443, 31.170549, 27.998272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745077, 32.480148, 28.114811>,  <30.680946, 31.771599, 28.133129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745077, 32.480148, 28.114811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.561466, 32.814301, 27.993858>,  <30.451300, 33.014793, 27.921286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.561466, 32.814301, 27.993858>,  <30.745077, 32.480148, 28.114811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561466, 32.814301, 27.993858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061588, 0.309620, 0.948864,
		0.886286, 0.454176, -0.090674,
		-0.459026, 0.835380, -0.302383,
		30.423759, 33.064915, 27.903143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003941, 33.056393, 28.577974>,  <30.745077, 32.480148, 28.114811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003941, 33.056393, 28.577974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.672640, 33.209301, 28.414087>,  <30.473860, 33.301044, 28.315754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.672640, 33.209301, 28.414087>,  <31.003941, 33.056393, 28.577974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672640, 33.209301, 28.414087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167952, 0.528209, 0.832339,
		0.534595, 0.758198, -0.373287,
		-0.828251, 0.382270, -0.409719,
		30.424164, 33.323982, 28.291172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002270, 33.793686, 28.802441>,  <31.003941, 33.056393, 28.577974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002270, 33.793686, 28.802441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.632238, 33.698971, 28.683674>,  <30.410219, 33.642139, 28.612413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.632238, 33.698971, 28.683674>,  <31.002270, 33.793686, 28.802441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632238, 33.698971, 28.683674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377253, 0.662932, 0.646685,
		0.043709, 0.710247, -0.702594,
		-0.925078, -0.236790, -0.296919,
		30.354715, 33.627934, 28.594599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700151, 34.413860, 28.718399>,  <31.002270, 33.793686, 28.802441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700151, 34.413860, 28.718399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.409662, 34.140739, 28.750355>,  <30.235369, 33.976868, 28.769529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.409662, 34.140739, 28.750355>,  <30.700151, 34.413860, 28.718399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409662, 34.140739, 28.750355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433695, 0.545213, 0.717392,
		-0.533393, 0.486339, -0.692074,
		-0.726224, -0.682800, 0.079890,
		30.191795, 33.935898, 28.774323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085644, 34.772850, 28.812344>,  <30.700151, 34.413860, 28.718399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085644, 34.772850, 28.812344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.018715, 34.409462, 28.965540>,  <29.978558, 34.191429, 29.057457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.018715, 34.409462, 28.965540>,  <30.085644, 34.772850, 28.812344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018715, 34.409462, 28.965540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364096, 0.417945, 0.832320,
		-0.916209, -0.000181, -0.400702,
		-0.167321, -0.908472, 0.382991,
		29.968519, 34.136921, 29.080437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627317, 34.913700, 29.262129>,  <30.085644, 34.772850, 28.812344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627317, 34.913700, 29.262129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.714428, 34.548119, 29.399103>,  <29.766695, 34.328770, 29.481287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.714428, 34.548119, 29.399103>,  <29.627317, 34.913700, 29.262129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714428, 34.548119, 29.399103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287946, 0.275074, 0.917290,
		-0.932556, -0.298368, -0.203264,
		0.217778, -0.913953, 0.342435,
		29.779762, 34.273933, 29.501833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008034, 34.670826, 29.617321>,  <29.627317, 34.913700, 29.262129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008034, 34.670826, 29.617321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.326012, 34.464088, 29.744400>,  <29.516798, 34.340046, 29.820648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.326012, 34.464088, 29.744400>,  <29.008034, 34.670826, 29.617321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326012, 34.464088, 29.744400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266510, 0.172931, 0.948191,
		-0.545011, -0.838429, -0.000275,
		0.794944, -0.516848, 0.317699,
		29.564495, 34.309032, 29.839710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757429, 34.244823, 30.167381>,  <29.008034, 34.670826, 29.617321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757429, 34.244823, 30.167381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.152267, 34.281284, 30.220037>,  <29.389172, 34.303162, 30.251631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.152267, 34.281284, 30.220037>,  <28.757429, 34.244823, 30.167381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152267, 34.281284, 30.220037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148611, 0.215527, 0.965123,
		0.059605, -0.972234, 0.226293,
		0.987098, 0.091156, 0.131638,
		29.448397, 34.308632, 30.259529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831701, 33.910839, 30.744560>,  <28.757429, 34.244823, 30.167381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831701, 33.910839, 30.744560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.172218, 34.118111, 30.711594>,  <29.376530, 34.242474, 30.691813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.172218, 34.118111, 30.711594>,  <28.831701, 33.910839, 30.744560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172218, 34.118111, 30.711594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021977, 0.121728, 0.992320,
		0.524229, -0.846567, 0.092238,
		0.851294, 0.518176, -0.082418,
		29.427607, 34.273563, 30.686869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.280079, 33.617706, 31.263773>,  <28.831701, 33.910839, 30.744560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.280079, 33.617706, 31.263773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.394709, 33.992313, 31.182966>,  <29.463486, 34.217079, 31.134481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.394709, 33.992313, 31.182966>,  <29.280079, 33.617706, 31.263773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394709, 33.992313, 31.182966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114400, 0.175901, 0.977738,
		0.951203, -0.303306, -0.056729,
		0.286575, 0.936517, -0.202016,
		29.480680, 34.273270, 31.122362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905518, 33.611027, 31.639585>,  <29.280079, 33.617706, 31.263773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905518, 33.611027, 31.639585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.793653, 33.985416, 31.554031>,  <29.726536, 34.210049, 31.502699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.793653, 33.985416, 31.554031>,  <29.905518, 33.611027, 31.639585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793653, 33.985416, 31.554031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312651, 0.299412, 0.901444,
		0.907767, 0.185225, -0.376365,
		-0.279658, 0.935972, -0.213886,
		29.709757, 34.266209, 31.489866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461340, 34.051640, 31.945934>,  <29.905518, 33.611027, 31.639585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461340, 34.051640, 31.945934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.169830, 34.321823, 31.900965>,  <29.994925, 34.483932, 31.873983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.169830, 34.321823, 31.900965>,  <30.461340, 34.051640, 31.945934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169830, 34.321823, 31.900965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299415, 0.461996, 0.834812,
		0.615823, 0.574728, -0.538934,
		-0.728775, 0.675461, -0.112426,
		29.951199, 34.524460, 31.867237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797844, 34.657875, 32.085655>,  <30.461340, 34.051640, 31.945934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797844, 34.657875, 32.085655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.413580, 34.757294, 32.135220>,  <30.183022, 34.816944, 32.164959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.413580, 34.757294, 32.135220>,  <30.797844, 34.657875, 32.085655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413580, 34.757294, 32.135220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220100, 0.409261, 0.885473,
		0.169366, 0.877913, -0.447866,
		-0.960662, 0.248544, 0.123913,
		30.125381, 34.831856, 32.172394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807461, 35.318008, 32.486046>,  <30.797844, 34.657875, 32.085655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807461, 35.318008, 32.486046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.435217, 35.186016, 32.549385>,  <30.211870, 35.106819, 32.587391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.435217, 35.186016, 32.549385>,  <30.807461, 35.318008, 32.486046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435217, 35.186016, 32.549385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038410, 0.342201, 0.938841,
		-0.363991, 0.879777, -0.305781,
		-0.930610, -0.329985, 0.158351,
		30.156034, 35.087021, 32.596889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921263, 35.776363, 31.841486>,  <30.807461, 35.318008, 32.486046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921263, 35.776363, 31.841486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.120623, 36.123035, 31.850124>,  <31.240238, 36.331039, 31.855307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.120623, 36.123035, 31.850124>,  <30.921263, 35.776363, 31.841486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120623, 36.123035, 31.850124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000322, 0.024723, -0.999694,
		-0.866946, 0.498257, 0.012043,
		0.498402, 0.866677, 0.021594,
		31.270144, 36.383038, 31.856602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570005, 36.226543, 31.466223>,  <30.921263, 35.776363, 31.841486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570005, 36.226543, 31.466223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.959967, 36.289394, 31.403131>,  <31.193943, 36.327103, 31.365276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.959967, 36.289394, 31.403131>,  <30.570005, 36.226543, 31.466223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959967, 36.289394, 31.403131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183824, 0.168417, -0.968424,
		-0.125597, 0.973113, 0.193073,
		0.974902, 0.157123, -0.157729,
		31.252438, 36.336533, 31.355812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612659, 36.764664, 31.028399>,  <30.570005, 36.226543, 31.466223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612659, 36.764664, 31.028399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.963739, 36.574234, 31.006516>,  <31.174387, 36.459976, 30.993385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.963739, 36.574234, 31.006516>,  <30.612659, 36.764664, 31.028399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963739, 36.574234, 31.006516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094240, -0.059543, -0.993767,
		0.469850, 0.877386, -0.097127,
		0.877701, -0.476075, -0.054709,
		31.227049, 36.431412, 30.990103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983297, 37.016727, 30.450712>,  <30.612659, 36.764664, 31.028399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983297, 37.016727, 30.450712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.133026, 36.654690, 30.531397>,  <31.222862, 36.437466, 30.579807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.133026, 36.654690, 30.531397>,  <30.983297, 37.016727, 30.450712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133026, 36.654690, 30.531397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133331, -0.267798, -0.954205,
		0.917664, 0.330284, -0.220920,
		0.374320, -0.905095, 0.201712,
		31.245321, 36.383160, 30.591909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460085, 36.917351, 29.924162>,  <30.983297, 37.016727, 30.450712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460085, 36.917351, 29.924162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.463690, 36.544979, 30.070194>,  <31.465853, 36.321556, 30.157814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.463690, 36.544979, 30.070194>,  <31.460085, 36.917351, 29.924162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463690, 36.544979, 30.070194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057316, -0.364977, -0.929250,
		0.998315, -0.012549, -0.056647,
		0.009014, -0.930932, 0.365082,
		31.466394, 36.265701, 30.179718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094906, 36.554779, 29.833971>,  <31.460085, 36.917351, 29.924162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094906, 36.554779, 29.833971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.824272, 36.263435, 29.877295>,  <31.661892, 36.088631, 29.903288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.824272, 36.263435, 29.877295>,  <32.094906, 36.554779, 29.833971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824272, 36.263435, 29.877295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152490, -0.282480, -0.947075,
		0.720405, -0.624258, 0.302189,
		-0.676582, -0.728359, 0.108307,
		31.621298, 36.044930, 29.909786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360546, 35.883675, 29.570635>,  <32.094906, 36.554779, 29.833971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360546, 35.883675, 29.570635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.961601, 35.855438, 29.563921>,  <31.722235, 35.838497, 29.559893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.961601, 35.855438, 29.563921>,  <32.360546, 35.883675, 29.570635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961601, 35.855438, 29.563921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038984, -0.326229, -0.944486,
		0.061192, -0.942652, 0.328121,
		-0.997364, -0.070587, -0.016786,
		31.662392, 35.834263, 29.558886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246822, 35.185486, 29.236275>,  <32.360546, 35.883675, 29.570635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246822, 35.185486, 29.236275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.905430, 35.393925, 29.234444>,  <31.700594, 35.518990, 29.233345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.905430, 35.393925, 29.234444>,  <32.246822, 35.185486, 29.236275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905430, 35.393925, 29.234444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103479, -0.178082, -0.978560,
		-0.510740, -0.834712, 0.205913,
		-0.853485, 0.521097, -0.004578,
		31.649384, 35.550255, 29.233070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820875, 34.851952, 28.830791>,  <32.246822, 35.185486, 29.236275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820875, 34.851952, 28.830791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.613951, 35.194267, 28.832026>,  <31.489796, 35.399658, 28.832766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.613951, 35.194267, 28.832026>,  <31.820875, 34.851952, 28.830791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613951, 35.194267, 28.832026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263294, -0.155725, -0.952064,
		-0.814288, -0.493325, 0.305883,
		-0.517311, 0.855792, 0.003084,
		31.458757, 35.451004, 28.832951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348249, 34.700836, 28.371344>,  <31.820875, 34.851952, 28.830791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348249, 34.700836, 28.371344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.323563, 35.099556, 28.391703>,  <31.308750, 35.338787, 28.403919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.323563, 35.099556, 28.391703>,  <31.348249, 34.700836, 28.371344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323563, 35.099556, 28.391703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030216, 0.052838, -0.998146,
		-0.997636, -0.060065, -0.033380,
		-0.061717, 0.996795, 0.050898,
		31.305048, 35.398594, 28.406973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886499, 34.866852, 27.901642>,  <31.348249, 34.700836, 28.371344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886499, 34.866852, 27.901642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.079302, 35.214909, 27.942677>,  <31.194983, 35.423744, 27.967297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.079302, 35.214909, 27.942677>,  <30.886499, 34.866852, 27.901642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079302, 35.214909, 27.942677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033304, 0.135196, -0.990259,
		-0.875536, 0.473892, 0.094144,
		0.482004, 0.870143, 0.102586,
		31.223904, 35.475952, 27.973452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513880, 35.273598, 27.548779>,  <30.886499, 34.866852, 27.901642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513880, 35.273598, 27.548779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.872849, 35.449066, 27.567556>,  <31.088230, 35.554348, 27.578823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.872849, 35.449066, 27.567556>,  <30.513880, 35.273598, 27.548779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872849, 35.449066, 27.567556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031498, 0.169849, -0.984967,
		-0.440052, 0.882450, 0.166243,
		0.897420, 0.438673, 0.046947,
		31.142075, 35.580669, 27.581640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396465, 35.978893, 27.193880>,  <30.513880, 35.273598, 27.548779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396465, 35.978893, 27.193880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.783836, 35.879528, 27.202265>,  <31.016258, 35.819908, 27.207296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.783836, 35.879528, 27.202265>,  <30.396465, 35.978893, 27.193880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783836, 35.879528, 27.202265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087381, 0.259489, -0.961785,
		0.233477, 0.933251, 0.273003,
		0.968428, -0.248410, 0.020964,
		31.074366, 35.805004, 27.208553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769747, 36.506268, 26.824789>,  <30.396465, 35.978893, 27.193880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769747, 36.506268, 26.824789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.992132, 36.173859, 26.817698>,  <31.125563, 35.974415, 26.813442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.992132, 36.173859, 26.817698>,  <30.769747, 36.506268, 26.824789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992132, 36.173859, 26.817698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157676, 0.126383, -0.979370,
		0.816115, 0.541697, 0.201296,
		0.555963, -0.831018, -0.017731,
		31.158920, 35.924553, 26.812378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196508, 36.648762, 26.324589>,  <30.769747, 36.506268, 26.824789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196508, 36.648762, 26.324589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.281521, 36.260189, 26.366821>,  <31.332529, 36.027046, 26.392160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.281521, 36.260189, 26.366821>,  <31.196508, 36.648762, 26.324589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281521, 36.260189, 26.366821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160658, -0.071839, -0.984392,
		0.963856, 0.226178, 0.140800,
		0.212533, -0.971433, 0.105580,
		31.345282, 35.968758, 26.398495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906797, 36.414680, 25.967684>,  <31.196508, 36.648762, 26.324589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906797, 36.414680, 25.967684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.653105, 36.105804, 25.983009>,  <31.500889, 35.920479, 25.992205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.653105, 36.105804, 25.983009>,  <31.906797, 36.414680, 25.967684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653105, 36.105804, 25.983009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157484, -0.177545, -0.971430,
		0.756934, -0.610078, 0.234213,
		-0.634231, -0.772194, 0.038312,
		31.462835, 35.874146, 25.994503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174671, 35.939800, 25.515808>,  <31.906797, 36.414680, 25.967684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174671, 35.939800, 25.515808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.803635, 35.800114, 25.568911>,  <31.581013, 35.716301, 25.600773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.803635, 35.800114, 25.568911>,  <32.174671, 35.939800, 25.515808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803635, 35.800114, 25.568911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020520, -0.307185, -0.951429,
		0.373038, -0.885259, 0.277776,
		-0.927589, -0.349219, 0.132757,
		31.525358, 35.695347, 25.608738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213238, 35.213890, 25.332981>,  <32.174671, 35.939800, 25.515808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213238, 35.213890, 25.332981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.841217, 35.356522, 25.297533>,  <31.618004, 35.442101, 25.276264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.841217, 35.356522, 25.297533>,  <32.213238, 35.213890, 25.332981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841217, 35.356522, 25.297533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044042, -0.347649, -0.936590,
		-0.364778, -0.867174, 0.339036,
		-0.930052, 0.356579, -0.088623,
		31.562201, 35.463493, 25.270947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971821, 34.889793, 24.721186>,  <32.213238, 35.213890, 25.332981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971821, 34.889793, 24.721186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.689381, 35.170826, 24.756500>,  <31.519917, 35.339447, 24.777689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.689381, 35.170826, 24.756500>,  <31.971821, 34.889793, 24.721186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689381, 35.170826, 24.756500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204262, -0.082716, -0.975415,
		-0.678009, -0.706776, 0.201917,
		-0.706102, 0.702585, 0.088285,
		31.477551, 35.381603, 24.782986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362658, 34.550911, 24.622395>,  <31.971821, 34.889793, 24.721186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362658, 34.550911, 24.622395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.339804, 34.936520, 24.518545>,  <31.326092, 35.167885, 24.456236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.339804, 34.936520, 24.518545>,  <31.362658, 34.550911, 24.622395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339804, 34.936520, 24.518545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180132, -0.265734, -0.947068,
		-0.981982, -0.007345, 0.188834,
		-0.057136, 0.964019, -0.259623,
		31.322662, 35.225723, 24.440659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768967, 34.679115, 24.149048>,  <31.362658, 34.550911, 24.622395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768967, 34.679115, 24.149048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.982706, 35.006847, 24.065939>,  <31.110950, 35.203487, 24.016073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.982706, 35.006847, 24.065939>,  <30.768967, 34.679115, 24.149048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982706, 35.006847, 24.065939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237298, -0.090514, -0.967211,
		-0.811270, 0.566134, 0.146059,
		0.534351, 0.819328, -0.207774,
		31.143011, 35.252647, 24.003607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362225, 35.154446, 23.670185>,  <30.768967, 34.679115, 24.149048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362225, 35.154446, 23.670185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.739132, 35.283703, 23.635069>,  <30.965277, 35.361256, 23.613998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.739132, 35.283703, 23.635069>,  <30.362225, 35.154446, 23.670185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739132, 35.283703, 23.635069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103944, 0.033041, -0.994034,
		-0.318314, 0.945774, 0.064723,
		0.942270, 0.323142, -0.087790,
		31.021812, 35.380646, 23.608732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337332, 35.676754, 23.187571>,  <30.362225, 35.154446, 23.670185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337332, 35.676754, 23.187571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.728838, 35.599834, 23.215981>,  <30.963741, 35.553684, 23.233027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.728838, 35.599834, 23.215981>,  <30.337332, 35.676754, 23.187571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728838, 35.599834, 23.215981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106615, 0.181588, -0.977578,
		0.175088, 0.964390, 0.198233,
		0.978763, -0.192297, 0.071025,
		31.022467, 35.542145, 23.237288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544548, 36.179092, 22.791542>,  <30.337332, 35.676754, 23.187571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544548, 36.179092, 22.791542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.831108, 35.900017, 22.790869>,  <31.003044, 35.732571, 22.790464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.831108, 35.900017, 22.790869>,  <30.544548, 36.179092, 22.791542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831108, 35.900017, 22.790869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111344, 0.116713, -0.986905,
		0.688745, 0.706833, 0.161296,
		0.716402, -0.697685, -0.001684,
		31.046028, 35.690712, 22.790363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209908, 36.443691, 22.548954>,  <30.544548, 36.179092, 22.791542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209908, 36.443691, 22.548954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.258831, 36.051785, 22.485579>,  <31.288185, 35.816643, 22.447554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.258831, 36.051785, 22.485579>,  <31.209908, 36.443691, 22.548954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258831, 36.051785, 22.485579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140693, 0.175139, -0.974439,
		0.982469, 0.096893, 0.159267,
		0.122310, -0.979764, -0.158436,
		31.295525, 35.757854, 22.438047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634615, 36.444630, 21.979496>,  <31.209908, 36.443691, 22.548954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634615, 36.444630, 21.979496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.558449, 36.051987, 21.984964>,  <31.512749, 35.816402, 21.988245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.558449, 36.051987, 21.984964>,  <31.634615, 36.444630, 21.979496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558449, 36.051987, 21.984964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046340, -0.022896, -0.998663,
		0.980610, -0.189525, 0.049848,
		-0.190413, -0.981609, 0.013670,
		31.501326, 35.757504, 21.989065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846884, 36.210957, 21.404491>,  <31.634615, 36.444630, 21.979496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846884, 36.210957, 21.404491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.641352, 35.891926, 21.530890>,  <31.518032, 35.700508, 21.606728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.641352, 35.891926, 21.530890>,  <31.846884, 36.210957, 21.404491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641352, 35.891926, 21.530890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005256, -0.371257, -0.928515,
		0.857876, -0.475438, 0.194955,
		-0.513830, -0.797576, 0.315994,
		31.487202, 35.652653, 21.625689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269581, 35.664936, 21.345165>,  <31.846884, 36.210957, 21.404491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269581, 35.664936, 21.345165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.887205, 35.552120, 21.312592>,  <31.657780, 35.484432, 21.293047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.887205, 35.552120, 21.312592>,  <32.269581, 35.664936, 21.345165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887205, 35.552120, 21.312592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169632, -0.304300, -0.937351,
		0.239589, -0.909866, 0.338736,
		-0.955941, -0.282039, -0.081435,
		31.600424, 35.467510, 21.288160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940018, 35.399498, 21.284588>,  <32.269581, 35.664936, 21.345165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940018, 35.399498, 21.284588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292713, 35.529606, 21.147923>,  <33.504330, 35.607670, 21.065924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.292713, 35.529606, 21.147923>,  <32.940018, 35.399498, 21.284588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292713, 35.529606, 21.147923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213030, 0.371663, 0.903596,
		0.420896, -0.869521, 0.258418,
		0.881740, 0.325269, -0.341665,
		33.557236, 35.627186, 21.045424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476265, 35.073277, 21.714703>,  <32.940018, 35.399498, 21.284588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476265, 35.073277, 21.714703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642826, 35.403011, 21.561300>,  <33.742764, 35.600853, 21.469259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642826, 35.403011, 21.561300>,  <33.476265, 35.073277, 21.714703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642826, 35.403011, 21.561300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304296, 0.271124, 0.913179,
		0.856744, -0.496951, -0.137945,
		0.416405, 0.824337, -0.383504,
		33.767746, 35.650311, 21.446249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184219, 35.095177, 21.967384>,  <33.476265, 35.073277, 21.714703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184219, 35.095177, 21.967384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.104977, 35.474846, 21.869543>,  <34.057430, 35.702648, 21.810839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.104977, 35.474846, 21.869543>,  <34.184219, 35.095177, 21.967384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104977, 35.474846, 21.869543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429121, 0.308350, 0.848985,
		0.881254, 0.063229, -0.468396,
		-0.198110, 0.949169, -0.244602,
		34.045544, 35.759598, 21.796162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804302, 35.469749, 21.838022>,  <34.184219, 35.095177, 21.967384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804302, 35.469749, 21.838022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.542469, 35.765572, 21.900738>,  <34.385368, 35.943066, 21.938368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.542469, 35.765572, 21.900738>,  <34.804302, 35.469749, 21.838022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542469, 35.765572, 21.900738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581668, 0.360213, 0.729321,
		0.482895, 0.568598, -0.665964,
		-0.654580, 0.739555, 0.156790,
		34.346096, 35.987438, 21.947775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187038, 35.986641, 22.175947>,  <34.804302, 35.469749, 21.838022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187038, 35.986641, 22.175947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798122, 36.038109, 22.254025>,  <34.564774, 36.068989, 22.300871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.798122, 36.038109, 22.254025>,  <35.187038, 35.986641, 22.175947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798122, 36.038109, 22.254025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232573, 0.447281, 0.863626,
		0.023817, 0.885089, -0.464812,
		-0.972287, 0.128672, 0.195195,
		34.506435, 36.076710, 22.312582>
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
