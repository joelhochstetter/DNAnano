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
	<2.856943, 3.819029, 4.316065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.876804, 3.445625, 4.174026>,  <2.888721, 3.221583, 4.088803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.876804, 3.445625, 4.174026>,  <2.856943, 3.819029, 4.316065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.876804, 3.445625, 4.174026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267728, -0.330084, 0.905189,
		-0.962214, -0.140015, 0.233537,
		0.049654, -0.933510, -0.355097,
		2.891701, 3.165572, 4.067497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.413298, 3.404390, 4.610747>,  <2.856943, 3.819029, 4.316065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.413298, 3.404390, 4.610747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.710644, 3.165359, 4.490540>,  <2.889051, 3.021941, 4.418415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.710644, 3.165359, 4.490540>,  <2.413298, 3.404390, 4.610747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.710644, 3.165359, 4.490540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109590, -0.334401, 0.936037,
		-0.659848, -0.728750, -0.183094,
		0.743364, -0.597578, -0.300518,
		2.933653, 2.986086, 4.400384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.992696, 2.935346, 4.156279>,  <2.413298, 3.404390, 4.610747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.992696, 2.935346, 4.156279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.619785, 2.794106, 4.124832>,  <1.396039, 2.709361, 4.105964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.619785, 2.794106, 4.124832>,  <1.992696, 2.935346, 4.156279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.619785, 2.794106, 4.124832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355577, -0.854508, -0.378656,
		0.066524, -0.380967, 0.922192,
		-0.932276, -0.353101, -0.078617,
		1.340102, 2.688175, 4.101247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.946715, 2.192978, 4.336376>,  <1.992696, 2.935346, 4.156279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.946715, 2.192978, 4.336376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.632484, 2.275421, 4.103004>,  <1.443946, 2.324887, 3.962981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.632484, 2.275421, 4.103004>,  <1.946715, 2.192978, 4.336376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.632484, 2.275421, 4.103004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143020, -0.856878, -0.495283,
		-0.602009, -0.472525, 0.643666,
		-0.785576, 0.206108, -0.583429,
		1.396812, 2.337254, 3.927976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.356453, 1.709899, 4.377145>,  <1.946715, 2.192978, 4.336376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.356453, 1.709899, 4.377145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.344627, 1.885483, 4.017937>,  <1.337532, 1.990833, 3.802412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.344627, 1.885483, 4.017937>,  <1.356453, 1.709899, 4.377145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.344627, 1.885483, 4.017937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030386, -0.897603, -0.439755,
		-0.999101, -0.040288, 0.013199,
		-0.029564, 0.438959, -0.898021,
		1.335758, 2.017170, 3.748530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.849671, 1.402249, 4.025914>,  <1.356453, 1.709899, 4.377145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.849671, 1.402249, 4.025914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.044777, 1.559830, 3.714302>,  <1.161841, 1.654378, 3.527335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.044777, 1.559830, 3.714302>,  <0.849671, 1.402249, 4.025914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.044777, 1.559830, 3.714302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022647, -0.897795, -0.439831,
		-0.872681, 0.196891, -0.446835,
		0.487765, 0.393951, -0.779030,
		1.191107, 1.678015, 3.480593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.398850, 1.325673, 3.496023>,  <0.849671, 1.402249, 4.025914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.398850, 1.325673, 3.496023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.741371, 1.373360, 3.295013>,  <0.946884, 1.401972, 3.174407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.741371, 1.373360, 3.295013>,  <0.398850, 1.325673, 3.496023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.741371, 1.373360, 3.295013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185203, -0.837404, -0.514251,
		-0.482124, 0.533424, -0.694993,
		0.856304, 0.119218, -0.502525,
		0.998262, 1.409125, 3.144256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.283005, 1.365102, 2.676538>,  <0.398850, 1.325673, 3.496023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.283005, 1.365102, 2.676538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.670643, 1.273193, 2.712448>,  <0.903226, 1.218048, 2.733994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.670643, 1.273193, 2.712448>,  <0.283005, 1.365102, 2.676538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.670643, 1.273193, 2.712448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166212, -0.877093, -0.450645,
		0.182287, 0.421796, -0.888178,
		0.969095, -0.229772, 0.089775,
		0.961371, 1.204262, 2.739381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.551152, -0.081306, 2.818869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.859170, 0.012024, 2.581352>,  <1.043981, 0.068022, 2.438842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.859170, 0.012024, 2.581352>,  <0.551152, -0.081306, 2.818869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.859170, 0.012024, 2.581352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124175, 0.858112, 0.498221,
		0.625789, -0.457387, 0.631811,
		0.770045, 0.233326, -0.593793,
		1.090183, 0.082022, 2.403214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.212122, -0.047432, 3.169127>,  <0.551152, -0.081306, 2.818869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.212122, -0.047432, 3.169127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.235176, 0.180611, 2.841309>,  <1.249009, 0.317436, 2.644618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.235176, 0.180611, 2.841309>,  <1.212122, -0.047432, 3.169127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.235176, 0.180611, 2.841309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343385, 0.759503, 0.552488,
		0.937425, -0.313263, -0.151992,
		0.057636, 0.570107, -0.819546,
		1.252467, 0.351643, 2.595445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.789925, 0.440289, 3.310331>,  <1.212122, -0.047432, 3.169127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.789925, 0.440289, 3.310331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.587462, 0.584129, 2.996773>,  <1.465985, 0.670434, 2.808638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.587462, 0.584129, 2.996773>,  <1.789925, 0.440289, 3.310331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.587462, 0.584129, 2.996773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083858, 0.925140, 0.370249,
		0.858354, 0.121668, -0.498422,
		-0.506158, 0.359601, -0.783895,
		1.435615, 0.692010, 2.761604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.231742, 0.908734, 2.930960>,  <1.789925, 0.440289, 3.310331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.231742, 0.908734, 2.930960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.841166, 0.987938, 2.896652>,  <1.606820, 1.035460, 2.876068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.841166, 0.987938, 2.896652>,  <2.231742, 0.908734, 2.930960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.841166, 0.987938, 2.896652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162379, 0.936006, 0.312291,
		0.142117, 0.291006, -0.946107,
		-0.976440, 0.198010, -0.085769,
		1.548234, 1.047341, 2.870921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.295352, 1.607314, 2.807455>,  <2.231742, 0.908734, 2.930960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.295352, 1.607314, 2.807455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.906631, 1.540047, 2.873573>,  <1.673399, 1.499686, 2.913244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.906631, 1.540047, 2.873573>,  <2.295352, 1.607314, 2.807455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.906631, 1.540047, 2.873573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109184, 0.942223, 0.316692,
		-0.209004, 0.289714, -0.934015,
		-0.971800, -0.168169, 0.165296,
		1.615091, 1.489596, 2.923162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.915354, 2.153162, 2.537143>,  <2.295352, 1.607314, 2.807455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.915354, 2.153162, 2.537143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.665245, 1.997299, 2.807610>,  <1.515179, 1.903781, 2.969889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.665245, 1.997299, 2.807610>,  <1.915354, 2.153162, 2.537143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.665245, 1.997299, 2.807610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183527, 0.915549, 0.357894,
		-0.758519, 0.099687, -0.643981,
		-0.625273, -0.389657, 0.676166,
		1.477663, 1.880402, 3.010459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.293398, 2.472810, 2.537857>,  <1.915354, 2.153162, 2.537143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.293398, 2.472810, 2.537857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.332681, 2.341721, 2.913719>,  <1.356251, 2.263067, 3.139236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.332681, 2.341721, 2.913719>,  <1.293398, 2.472810, 2.537857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.332681, 2.341721, 2.913719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242047, 0.907999, 0.341981,
		-0.965282, -0.261025, 0.009848,
		0.098208, -0.327724, 0.939655,
		1.362143, 2.243403, 3.195616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.637644, 2.552567, 2.952878>,  <1.293398, 2.472810, 2.537857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.637644, 2.552567, 2.952878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.979300, 2.582359, 3.158752>,  <1.184293, 2.600235, 3.282277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.979300, 2.582359, 3.158752>,  <0.637644, 2.552567, 2.952878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.979300, 2.582359, 3.158752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289313, 0.890455, 0.351266,
		-0.432142, -0.448935, 0.782119,
		0.854138, 0.074480, 0.514686,
		1.235541, 2.604703, 3.313158>
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
