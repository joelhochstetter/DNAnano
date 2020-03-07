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
	<3.359873, 5.879166, 0.864672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.118912, 5.774536, 0.563026>,  <2.974335, 5.711758, 0.382039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.118912, 5.774536, 0.563026>,  <3.359873, 5.879166, 0.864672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.118912, 5.774536, 0.563026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717184, -0.237334, 0.655225,
		-0.350368, 0.935548, -0.044626,
		-0.602403, -0.261574, -0.754115,
		2.938191, 5.696064, 0.336792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.616751, 6.154956, 0.890013>,  <3.359873, 5.879166, 0.864672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.616751, 6.154956, 0.890013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.594254, 5.834404, 0.651812>,  <2.580755, 5.642073, 0.508891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.594254, 5.834404, 0.651812>,  <2.616751, 6.154956, 0.890013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.594254, 5.834404, 0.651812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729821, -0.374018, 0.572252,
		-0.681321, 0.466797, -0.563829,
		-0.056243, -0.801381, -0.595504,
		2.577381, 5.593990, 0.473160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.911019, 5.997413, 0.761500>,  <2.616751, 6.154956, 0.890013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.911019, 5.997413, 0.761500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.123169, 5.665146, 0.693742>,  <2.250459, 5.465786, 0.653087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.123169, 5.665146, 0.693742>,  <1.911019, 5.997413, 0.761500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.123169, 5.665146, 0.693742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586915, -0.503964, 0.633681,
		-0.611747, -0.236669, -0.754820,
		0.530375, -0.830668, -0.169394,
		2.282281, 5.415946, 0.642924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.504588, 5.458940, 0.649546>,  <1.911019, 5.997413, 0.761500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.504588, 5.458940, 0.649546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.842918, 5.289696, 0.779503>,  <2.045917, 5.188149, 0.857477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.842918, 5.289696, 0.779503>,  <1.504588, 5.458940, 0.649546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.842918, 5.289696, 0.779503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518309, -0.507706, 0.688179,
		-0.126226, -0.750475, -0.648733,
		0.845827, -0.423110, 0.324892,
		2.096666, 5.162763, 0.876971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.327701, 4.756498, 0.887652>,  <1.504588, 5.458940, 0.649546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.327701, 4.756498, 0.887652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.672794, 4.805298, 1.083941>,  <1.879850, 4.834578, 1.201715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.672794, 4.805298, 1.083941>,  <1.327701, 4.756498, 0.887652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.672794, 4.805298, 1.083941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301615, -0.654761, 0.693048,
		0.405858, -0.745925, -0.528086,
		0.862732, 0.122000, 0.490723,
		1.931614, 4.841898, 1.231158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.552818, 4.048895, 1.055290>,  <1.327701, 4.756498, 0.887652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.552818, 4.048895, 1.055290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.756416, 4.282478, 1.308247>,  <1.878575, 4.422628, 1.460020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.756416, 4.282478, 1.308247>,  <1.552818, 4.048895, 1.055290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.756416, 4.282478, 1.308247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294427, -0.572252, 0.765402,
		0.808849, -0.575778, -0.119341,
		0.508995, 0.583958, 0.632390,
		1.909115, 4.457665, 1.497964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.972688, 3.633312, 1.464431>,  <1.552818, 4.048895, 1.055290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.972688, 3.633312, 1.464431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.907475, 3.979546, 1.653823>,  <1.868346, 4.187286, 1.767458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.907475, 3.979546, 1.653823>,  <1.972688, 3.633312, 1.464431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.907475, 3.979546, 1.653823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386049, -0.497606, 0.776759,
		0.907957, -0.056148, 0.415285,
		-0.163034, 0.865584, 0.473481,
		1.858564, 4.239221, 1.795867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.211988, 3.750980, 2.246345>,  <1.972688, 3.633312, 1.464431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.211988, 3.750980, 2.246345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.882256, 3.956871, 2.152081>,  <1.684416, 4.080406, 2.095524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.882256, 3.956871, 2.152081>,  <2.211988, 3.750980, 2.246345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.882256, 3.956871, 2.152081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523198, -0.533718, 0.664386,
		0.216203, 0.670969, 0.709265,
		-0.824330, 0.514728, -0.235658,
		1.634956, 4.111290, 2.081384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.752822, 3.256775, 2.840314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.851196, 3.589584, 3.039211>,  <0.910221, 3.789270, 3.158550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.851196, 3.589584, 3.039211>,  <0.752822, 3.256775, 2.840314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.851196, 3.589584, 3.039211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524378, 0.317238, -0.790182,
		-0.815195, 0.455078, -0.358275,
		0.245936, 0.832024, 0.497244,
		0.924977, 3.839192, 3.188385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.738603, 3.752057, 2.325311>,  <0.752822, 3.256775, 2.840314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.738603, 3.752057, 2.325311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.951141, 3.917747, 2.620902>,  <1.078664, 4.017162, 2.798256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.951141, 3.917747, 2.620902>,  <0.738603, 3.752057, 2.325311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.951141, 3.917747, 2.620902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544647, 0.501098, -0.672503,
		-0.648869, 0.759814, 0.040648,
		0.531346, 0.414227, 0.738977,
		1.110545, 4.042016, 2.842595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.702027, 4.523515, 2.225948>,  <0.738603, 3.752057, 2.325311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.702027, 4.523515, 2.225948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.026176, 4.411118, 2.431602>,  <1.220666, 4.343679, 2.554995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.026176, 4.411118, 2.431602>,  <0.702027, 4.523515, 2.225948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.026176, 4.411118, 2.431602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581465, 0.493612, -0.646720,
		-0.072059, 0.823037, 0.563399,
		0.810374, -0.280994, 0.514136,
		1.269289, 4.326819, 2.585843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.069988, 5.035635, 2.392559>,  <0.702027, 4.523515, 2.225948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.069988, 5.035635, 2.392559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.350586, 4.751038, 2.376163>,  <1.518945, 4.580279, 2.366325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.350586, 4.751038, 2.376163>,  <1.069988, 5.035635, 2.392559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.350586, 4.751038, 2.376163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545154, 0.572760, -0.612170,
		0.459033, 0.407089, 0.789663,
		0.701495, -0.711494, -0.040990,
		1.561034, 4.537589, 2.363866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.734547, 5.333246, 2.466770>,  <1.069988, 5.035635, 2.392559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.734547, 5.333246, 2.466770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.791771, 4.985374, 2.277797>,  <1.826105, 4.776652, 2.164412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.791771, 4.985374, 2.277797>,  <1.734547, 5.333246, 2.466770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.791771, 4.985374, 2.277797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568318, 0.462986, -0.680190,
		0.810277, -0.171185, 0.560489,
		0.143060, -0.869678, -0.472434,
		1.834689, 4.724471, 2.136066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.421959, 5.359301, 2.307061>,  <1.734547, 5.333246, 2.466770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.421959, 5.359301, 2.307061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.245972, 5.093269, 2.065700>,  <2.140379, 4.933650, 1.920883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.245972, 5.093269, 2.065700>,  <2.421959, 5.359301, 2.307061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.245972, 5.093269, 2.065700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591248, 0.291208, -0.752080,
		0.675909, -0.687653, 0.265104,
		-0.439970, -0.665080, -0.603404,
		2.113981, 4.893745, 1.884678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.983869, 5.004712, 1.946856>,  <2.421959, 5.359301, 2.307061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.983869, 5.004712, 1.946856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.647491, 4.980141, 1.731807>,  <2.445665, 4.965398, 1.602777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.647491, 4.980141, 1.731807>,  <2.983869, 5.004712, 1.946856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.647491, 4.980141, 1.731807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469694, 0.410489, -0.781592,
		0.268699, -0.909794, -0.316347,
		-0.840945, -0.061426, -0.537623,
		2.395208, 4.961712, 1.570520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.136999, 4.614813, 1.321761>,  <2.983869, 5.004712, 1.946856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.136999, 4.614813, 1.321761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.823540, 4.852364, 1.248868>,  <2.635464, 4.994894, 1.205132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.823540, 4.852364, 1.248868>,  <3.136999, 4.614813, 1.321761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.823540, 4.852364, 1.248868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494240, 0.418338, -0.762050,
		-0.376328, -0.687245, -0.621346,
		-0.783648, 0.593876, -0.182232,
		2.588445, 5.030526, 1.194198>
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
