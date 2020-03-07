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
	<4.502693, 4.684252, 0.624646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.479437, 4.567112, 1.006402>,  <4.465483, 4.496828, 1.235456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.479437, 4.567112, 1.006402>,  <4.502693, 4.684252, 0.624646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.479437, 4.567112, 1.006402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966775, -0.221867, -0.126974,
		0.248931, -0.930062, -0.270220,
		-0.058141, -0.292849, 0.954389,
		4.461995, 4.479257, 1.292719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.107977, 3.973945, 0.708446>,  <4.502693, 4.684252, 0.624646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.107977, 3.973945, 0.708446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.095293, 4.205544, 1.034331>,  <4.087683, 4.344502, 1.229863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.095293, 4.205544, 1.034331>,  <4.107977, 3.973945, 0.708446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.095293, 4.205544, 1.034331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996458, -0.081833, 0.019373,
		0.077887, -0.811213, 0.579540,
		-0.031710, 0.578996, 0.814713,
		4.085780, 4.379242, 1.278745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.729557, 3.736645, 1.143796>,  <4.107977, 3.973945, 0.708446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.729557, 3.736645, 1.143796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.710247, 4.116020, 1.269101>,  <3.698661, 4.343646, 1.344284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.710247, 4.116020, 1.269101>,  <3.729557, 3.736645, 1.143796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.710247, 4.116020, 1.269101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960543, -0.130088, 0.245835,
		0.273911, -0.289035, 0.917296,
		-0.048275, 0.948439, 0.313263,
		3.695765, 4.400552, 1.363080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.337762, 3.802152, 1.824246>,  <3.729557, 3.736645, 1.143796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.337762, 3.802152, 1.824246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.314026, 4.168163, 1.664644>,  <3.299784, 4.387770, 1.568883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.314026, 4.168163, 1.664644>,  <3.337762, 3.802152, 1.824246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.314026, 4.168163, 1.664644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875230, 0.144528, 0.461610,
		0.480052, 0.376613, 0.792283,
		-0.059341, 0.915027, -0.399004,
		3.296224, 4.442671, 1.544943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.977298, 4.195877, 2.368927>,  <3.337762, 3.802152, 1.824246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.977298, 4.195877, 2.368927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.949207, 4.387989, 2.019207>,  <2.932353, 4.503256, 1.809375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.949207, 4.387989, 2.019207>,  <2.977298, 4.195877, 2.368927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.949207, 4.387989, 2.019207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956282, 0.217019, 0.196026,
		0.283887, 0.849843, 0.444043,
		-0.070226, 0.480280, -0.874299,
		2.928140, 4.532073, 1.756917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.721462, 4.982115, 2.469648>,  <2.977298, 4.195877, 2.368927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.721462, 4.982115, 2.469648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.624390, 4.858402, 2.101854>,  <2.566146, 4.784175, 1.881178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.624390, 4.858402, 2.101854>,  <2.721462, 4.982115, 2.469648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.624390, 4.858402, 2.101854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892087, 0.443554, 0.086255,
		0.381163, 0.841193, -0.383548,
		-0.242682, -0.309281, -0.919484,
		2.551585, 4.765618, 1.826009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.533961, 5.620247, 2.032815>,  <2.721462, 4.982115, 2.469648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.533961, 5.620247, 2.032815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.366169, 5.279484, 1.907412>,  <2.265494, 5.075026, 1.832170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.366169, 5.279484, 1.907412>,  <2.533961, 5.620247, 2.032815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.366169, 5.279484, 1.907412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877277, 0.469202, -0.101169,
		0.233285, 0.232595, -0.944181,
		-0.419480, -0.851909, -0.313508,
		2.240325, 5.023911, 1.813359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.087208, 5.837642, 1.443220>,  <2.533961, 5.620247, 2.032815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.087208, 5.837642, 1.443220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.956858, 5.490280, 1.592714>,  <1.878648, 5.281863, 1.682411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.956858, 5.490280, 1.592714>,  <2.087208, 5.837642, 1.443220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.956858, 5.490280, 1.592714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935540, 0.239224, -0.259879,
		0.136273, -0.434335, -0.890384,
		-0.325875, -0.868404, 0.373738,
		1.859095, 5.229759, 1.704835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.226554, 3.657065, 2.692063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.050083, 3.728031, 2.340180>,  <-0.055799, 3.770611, 2.129050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.050083, 3.728031, 2.340180>,  <0.226554, 3.657065, 2.692063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.050083, 3.728031, 2.340180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014977, -0.978672, -0.204885,
		-0.897295, -0.103565, 0.429110,
		-0.441176, 0.177415, -0.879708,
		-0.082270, 3.781256, 2.076267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.684578, 4.208458, 2.359127>,  <0.226554, 3.657065, 2.692063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.684578, 4.208458, 2.359127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.069517, 4.110516, 2.406339>,  <1.300481, 4.051750, 2.434667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.069517, 4.110516, 2.406339>,  <0.684578, 4.208458, 2.359127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.069517, 4.110516, 2.406339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224350, -0.960662, -0.163694,
		0.153470, 0.131050, -0.979425,
		0.962348, -0.244856, 0.118032,
		1.358222, 4.037059, 2.441749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.898814, 3.809871, 1.839952>,  <0.684578, 4.208458, 2.359127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.898814, 3.809871, 1.839952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.136681, 3.733639, 2.152375>,  <1.279400, 3.687900, 2.339829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.136681, 3.733639, 2.152375>,  <0.898814, 3.809871, 1.839952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.136681, 3.733639, 2.152375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126566, -0.981576, -0.143144,
		0.793948, -0.013733, -0.607830,
		0.594666, -0.190580, 0.781058,
		1.315080, 3.676465, 2.386693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.272591, 3.252313, 1.616083>,  <0.898814, 3.809871, 1.839952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.272591, 3.252313, 1.616083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.308767, 3.275909, 2.013744>,  <1.330473, 3.290067, 2.252341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.308767, 3.275909, 2.013744>,  <1.272591, 3.252313, 1.616083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.308767, 3.275909, 2.013744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051833, -0.996612, 0.063853,
		0.994552, -0.057305, -0.087077,
		0.090441, 0.058992, 0.994153,
		1.335900, 3.293607, 2.311990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.883743, 2.809712, 1.857166>,  <1.272591, 3.252313, 1.616083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.883743, 2.809712, 1.857166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.563171, 2.876442, 2.086907>,  <1.370828, 2.916480, 2.224752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.563171, 2.876442, 2.086907>,  <1.883743, 2.809712, 1.857166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.563171, 2.876442, 2.086907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119932, -0.985632, 0.118935,
		0.585941, 0.026435, 0.809922,
		-0.801429, 0.166824, 0.574352,
		1.322743, 2.926489, 2.259213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.917743, 2.381521, 2.440435>,  <1.883743, 2.809712, 1.857166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.917743, 2.381521, 2.440435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.532629, 2.471325, 2.380247>,  <1.301561, 2.525207, 2.344134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.532629, 2.471325, 2.380247>,  <1.917743, 2.381521, 2.440435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.532629, 2.471325, 2.380247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225144, -0.974238, -0.013035,
		-0.149520, 0.021328, 0.988529,
		-0.962784, 0.224510, -0.150470,
		1.243794, 2.538678, 2.335106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.595635, 1.786668, 2.544616>,  <1.917743, 2.381521, 2.440435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.595635, 1.786668, 2.544616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.302959, 2.001221, 2.376365>,  <1.127354, 2.129952, 2.275414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.302959, 2.001221, 2.376365>,  <1.595635, 1.786668, 2.544616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.302959, 2.001221, 2.376365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456405, -0.843852, -0.282151,
		-0.506288, -0.014470, 0.862243,
		-0.731688, 0.536381, -0.420628,
		1.083453, 2.162135, 2.250177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.933077, 1.583740, 2.883182>,  <1.595635, 1.786668, 2.544616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.933077, 1.583740, 2.883182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.916796, 1.689941, 2.497881>,  <0.907027, 1.753662, 2.266701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.916796, 1.689941, 2.497881>,  <0.933077, 1.583740, 2.883182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.916796, 1.689941, 2.497881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554505, -0.807970, -0.199272,
		-0.831185, 0.526016, 0.180109,
		-0.040702, 0.265503, -0.963250,
		0.904585, 1.769592, 2.208906>
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
