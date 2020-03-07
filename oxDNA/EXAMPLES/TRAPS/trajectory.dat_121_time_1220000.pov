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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.120655, 53.037140, 50.055374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468006, 52.934319, 50.225006>,  <36.676418, 52.872623, 50.326786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468006, 52.934319, 50.225006>,  <36.120655, 53.037140, 50.055374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468006, 52.934319, 50.225006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323103, -0.942017, 0.090603,
		0.376197, -0.215698, -0.901083,
		0.868378, -0.257058, 0.424077,
		36.728519, 52.857201, 50.352230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881805, 53.547161, 49.477154>,  <36.120655, 53.037140, 50.055374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881805, 53.547161, 49.477154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769131, 53.618050, 49.854351>,  <35.701527, 53.660583, 50.080669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769131, 53.618050, 49.854351>,  <35.881805, 53.547161, 49.477154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769131, 53.618050, 49.854351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789932, 0.600717, 0.123071,
		-0.544664, 0.779571, -0.309209,
		-0.281690, 0.177222, 0.942997,
		35.684624, 53.671215, 50.137249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100803, 54.209110, 49.557709>,  <35.881805, 53.547161, 49.477154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100803, 54.209110, 49.557709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082245, 54.060032, 49.928425>,  <36.071110, 53.970585, 50.150856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082245, 54.060032, 49.928425>,  <36.100803, 54.209110, 49.557709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082245, 54.060032, 49.928425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840186, 0.487274, 0.238017,
		-0.540310, 0.789721, 0.290527,
		-0.046400, -0.372700, 0.926791,
		36.068325, 53.948223, 50.206463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313824, 54.736897, 50.029137>,  <36.100803, 54.209110, 49.557709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313824, 54.736897, 50.029137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378746, 54.377331, 50.191917>,  <36.417698, 54.161591, 50.289585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378746, 54.377331, 50.191917>,  <36.313824, 54.736897, 50.029137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378746, 54.377331, 50.191917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933173, 0.273871, 0.232771,
		-0.320694, 0.341978, 0.883293,
		0.162305, -0.898914, 0.406954,
		36.427437, 54.107658, 50.314003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350883, 54.627155, 50.706272>,  <36.313824, 54.736897, 50.029137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350883, 54.627155, 50.706272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219772, 54.295197, 50.886868>,  <36.141106, 54.096024, 50.995224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219772, 54.295197, 50.886868>,  <36.350883, 54.627155, 50.706272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219772, 54.295197, 50.886868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580645, 0.553934, 0.596665,
		-0.745262, -0.066581, -0.663439,
		-0.327775, -0.829894, 0.451486,
		36.121441, 54.046227, 51.022312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075451, 54.860481, 50.768795>,  <36.350883, 54.627155, 50.706272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075451, 54.860481, 50.768795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852390, 54.532028, 50.817394>,  <36.718555, 54.334957, 50.846554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852390, 54.532028, 50.817394>,  <37.075451, 54.860481, 50.768795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852390, 54.532028, 50.817394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825648, -0.563801, -0.020840,
		0.085611, 0.088690, 0.992373,
		-0.557653, -0.821135, 0.121494,
		36.685093, 54.285686, 50.853844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675583, 54.729073, 50.351074>,  <37.075451, 54.860481, 50.768795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675583, 54.729073, 50.351074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002258, 54.724644, 50.581863>,  <38.198265, 54.721985, 50.720337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002258, 54.724644, 50.581863>,  <37.675583, 54.729073, 50.351074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002258, 54.724644, 50.581863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575614, 0.055511, 0.815835,
		-0.041064, -0.998397, 0.038960,
		0.816690, -0.011076, 0.576970,
		38.247265, 54.721321, 50.754955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612900, 54.143448, 50.904083>,  <37.675583, 54.729073, 50.351074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612900, 54.143448, 50.904083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861225, 54.434910, 51.019775>,  <38.010220, 54.609787, 51.089191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861225, 54.434910, 51.019775>,  <37.612900, 54.143448, 50.904083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861225, 54.434910, 51.019775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519703, 0.106296, 0.847709,
		0.586942, -0.676583, 0.444673,
		0.620812, 0.728654, 0.289232,
		38.047470, 54.653507, 51.106544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036556, 53.912556, 51.426289>,  <37.612900, 54.143448, 50.904083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036556, 53.912556, 51.426289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935699, 54.299263, 51.409367>,  <37.875183, 54.531288, 51.399212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935699, 54.299263, 51.409367>,  <38.036556, 53.912556, 51.426289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935699, 54.299263, 51.409367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466715, -0.083196, 0.880486,
		0.847702, 0.241755, 0.472181,
		-0.252146, 0.966764, -0.042305,
		37.860054, 54.589291, 51.396675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165340, 54.236355, 52.101742>,  <38.036556, 53.912556, 51.426289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165340, 54.236355, 52.101742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875469, 54.459846, 51.940414>,  <37.701546, 54.593941, 51.843620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875469, 54.459846, 51.940414>,  <38.165340, 54.236355, 52.101742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875469, 54.459846, 51.940414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443204, 0.070245, 0.893664,
		0.527648, 0.826369, 0.196726,
		-0.724678, 0.558730, -0.403315,
		37.658066, 54.627464, 51.819420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773861, 54.401066, 52.472511>,  <38.165340, 54.236355, 52.101742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773861, 54.401066, 52.472511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914650, 54.766811, 52.392456>,  <38.999123, 54.986259, 52.344421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914650, 54.766811, 52.392456>,  <38.773861, 54.401066, 52.472511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914650, 54.766811, 52.392456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396305, 0.048131, 0.916856,
		0.847973, -0.402023, -0.345426,
		0.351972, 0.914364, -0.200138,
		39.020241, 55.041119, 52.332417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441765, 54.222355, 52.487186>,  <38.773861, 54.401066, 52.472511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441765, 54.222355, 52.487186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686050, 53.996887, 52.264725>,  <39.832623, 53.861607, 52.131248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686050, 53.996887, 52.264725>,  <39.441765, 54.222355, 52.487186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686050, 53.996887, 52.264725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790901, 0.399857, 0.463239,
		-0.038732, -0.722768, 0.690004,
		0.610717, -0.563667, -0.556151,
		39.869267, 53.827785, 52.097881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059841, 54.161633, 52.939060>,  <39.441765, 54.222355, 52.487186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059841, 54.161633, 52.939060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189331, 54.065666, 52.572968>,  <40.267025, 54.008087, 52.353313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189331, 54.065666, 52.572968>,  <40.059841, 54.161633, 52.939060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189331, 54.065666, 52.572968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913253, 0.332096, 0.235968,
		0.247332, -0.912224, 0.326610,
		0.323721, -0.239915, -0.915230,
		40.286446, 53.993690, 52.298397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637230, 53.569096, 52.939236>,  <40.059841, 54.161633, 52.939060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637230, 53.569096, 52.939236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674419, 53.790997, 52.608513>,  <40.696735, 53.924137, 52.410080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674419, 53.790997, 52.608513>,  <40.637230, 53.569096, 52.939236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674419, 53.790997, 52.608513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934307, 0.238397, 0.265023,
		0.344129, -0.797129, -0.496146,
		0.092977, 0.554755, -0.826802,
		40.702312, 53.957424, 52.360474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267838, 53.492313, 52.410320>,  <40.637230, 53.569096, 52.939236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267838, 53.492313, 52.410320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158703, 53.875252, 52.448387>,  <41.093224, 54.105015, 52.471226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158703, 53.875252, 52.448387>,  <41.267838, 53.492313, 52.410320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158703, 53.875252, 52.448387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948777, 0.251366, 0.191411,
		0.159324, 0.142514, -0.976886,
		-0.272834, 0.957343, 0.095165,
		41.076851, 54.162457, 52.476936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624737, 53.880680, 51.844994>,  <41.267838, 53.492313, 52.410320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624737, 53.880680, 51.844994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533562, 54.109985, 52.159805>,  <41.478855, 54.247570, 52.348690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533562, 54.109985, 52.159805>,  <41.624737, 53.880680, 51.844994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533562, 54.109985, 52.159805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927428, 0.373983, -0.003805,
		-0.296516, 0.729043, -0.616907,
		-0.227939, 0.573265, 0.787027,
		41.465179, 54.281963, 52.395912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713486, 54.598152, 51.722275>,  <41.624737, 53.880680, 51.844994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713486, 54.598152, 51.722275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770668, 54.550175, 52.115250>,  <41.804977, 54.521389, 52.351032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770668, 54.550175, 52.115250>,  <41.713486, 54.598152, 51.722275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770668, 54.550175, 52.115250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919670, 0.382918, -0.087075,
		-0.365747, 0.915962, 0.165052,
		0.142958, -0.119946, 0.982434,
		41.813557, 54.514191, 52.409981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393425, 54.400021, 51.917046>,  <41.713486, 54.598152, 51.722275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393425, 54.400021, 51.917046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451664, 54.401154, 52.312782>,  <42.486607, 54.401833, 52.550224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451664, 54.401154, 52.312782>,  <42.393425, 54.400021, 51.917046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451664, 54.401154, 52.312782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860380, 0.494035, 0.125202,
		-0.488414, -0.869437, 0.074365,
		0.145594, 0.002831, 0.989340,
		42.495342, 54.402004, 52.609585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997234, 54.217010, 52.404346>,  <42.393425, 54.400021, 51.917046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997234, 54.217010, 52.404346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798000, 53.955120, 52.631763>,  <42.678459, 53.797985, 52.768215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798000, 53.955120, 52.631763>,  <42.997234, 54.217010, 52.404346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798000, 53.955120, 52.631763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653095, -0.148058, -0.742662,
		0.570419, -0.741222, -0.353854,
		-0.498086, -0.654729, 0.568543,
		42.648575, 53.758701, 52.802326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928432, 53.505272, 52.058243>,  <42.997234, 54.217010, 52.404346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928432, 53.505272, 52.058243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638149, 53.585625, 52.321449>,  <42.463978, 53.633835, 52.479374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.638149, 53.585625, 52.321449>,  <42.928432, 53.505272, 52.058243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638149, 53.585625, 52.321449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670716, -0.419612, -0.611610,
		0.153252, -0.885196, 0.439252,
		-0.725709, 0.200883, 0.658021,
		42.420437, 53.645889, 52.518856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434940, 52.968357, 52.025551>,  <42.928432, 53.505272, 52.058243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.434940, 52.968357, 52.025551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260746, 53.303802, 52.156441>,  <42.156231, 53.505070, 52.234974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260746, 53.303802, 52.156441>,  <42.434940, 52.968357, 52.025551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260746, 53.303802, 52.156441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789233, -0.180852, -0.586859,
		-0.432970, -0.513826, 0.740622,
		-0.435487, 0.838616, 0.327225,
		42.130100, 53.555386, 52.254608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198902, 52.717037, 52.040573>,  <42.434940, 52.968357, 52.025551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198902, 52.717037, 52.040573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258877, 52.769676, 51.648613>,  <43.294861, 52.801262, 51.413437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258877, 52.769676, 51.648613>,  <43.198902, 52.717037, 52.040573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258877, 52.769676, 51.648613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812469, 0.548365, 0.197964,
		0.563394, -0.825819, -0.024699,
		0.149938, 0.131599, -0.979898,
		43.303860, 52.809155, 51.354645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887264, 52.559246, 51.932831>,  <43.198902, 52.717037, 52.040573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887264, 52.559246, 51.932831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759865, 52.786682, 51.629448>,  <43.683426, 52.923145, 51.447418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759865, 52.786682, 51.629448>,  <43.887264, 52.559246, 51.932831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759865, 52.786682, 51.629448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788526, 0.602996, 0.120924,
		0.526105, -0.559552, -0.640402,
		-0.318496, 0.568592, -0.758461,
		43.664314, 52.957260, 51.401909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322533, 51.996090, 52.258327>,  <43.887264, 52.559246, 51.932831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322533, 51.996090, 52.258327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.273609, 51.936790, 51.865784>,  <44.244255, 51.901211, 51.630257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.273609, 51.936790, 51.865784>,  <44.322533, 51.996090, 52.258327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273609, 51.936790, 51.865784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985516, 0.098885, -0.137767,
		0.117464, -0.983995, 0.134004,
		-0.122311, -0.148245, -0.981358,
		44.236916, 51.892319, 51.571377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676296, 51.351341, 51.951977>,  <44.322533, 51.996090, 52.258327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676296, 51.351341, 51.951977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639568, 51.657646, 51.697365>,  <44.617531, 51.841431, 51.544598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639568, 51.657646, 51.697365>,  <44.676296, 51.351341, 51.951977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639568, 51.657646, 51.697365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984849, -0.024605, -0.171660,
		-0.147113, -0.642652, -0.751902,
		-0.091817, 0.765763, -0.636535,
		44.612022, 51.887375, 51.506405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987671, 51.228855, 51.273628>,  <44.676296, 51.351341, 51.951977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987671, 51.228855, 51.273628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.991695, 51.619270, 51.360580>,  <44.994110, 51.853519, 51.412750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.991695, 51.619270, 51.360580>,  <44.987671, 51.228855, 51.273628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.991695, 51.619270, 51.360580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999286, -0.001899, -0.037738,
		-0.036421, 0.217601, -0.975358,
		0.010064, 0.976036, 0.217377,
		44.994713, 51.912083, 51.425793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458069, 51.535995, 50.834835>,  <44.987671, 51.228855, 51.273628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.458069, 51.535995, 50.834835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431137, 51.784733, 51.146935>,  <45.414978, 51.933975, 51.334194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431137, 51.784733, 51.146935>,  <45.458069, 51.535995, 50.834835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431137, 51.784733, 51.146935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974803, 0.207684, -0.081404,
		-0.212665, 0.755104, -0.620155,
		-0.067327, 0.621840, 0.780245,
		45.410938, 51.971287, 51.381008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511570, 52.348057, 50.795116>,  <45.458069, 51.535995, 50.834835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511570, 52.348057, 50.795116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.648476, 52.256622, 51.159668>,  <45.730618, 52.201763, 51.378399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.648476, 52.256622, 51.159668>,  <45.511570, 52.348057, 50.795116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.648476, 52.256622, 51.159668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934982, 0.178938, -0.306250,
		-0.093075, 0.956937, 0.274969,
		0.342264, -0.228587, 0.911374,
		45.751156, 52.188046, 51.433079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963253, 52.855240, 51.023991>,  <45.511570, 52.348057, 50.795116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963253, 52.855240, 51.023991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.050293, 52.517509, 51.219856>,  <46.102516, 52.314873, 51.337376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.050293, 52.517509, 51.219856>,  <45.963253, 52.855240, 51.023991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.050293, 52.517509, 51.219856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902593, -0.016854, -0.430164,
		0.371450, 0.535571, 0.758412,
		0.217601, -0.844322, 0.489663,
		46.115574, 52.264214, 51.366756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.565228, 52.955654, 51.455845>,  <45.963253, 52.855240, 51.023991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.565228, 52.955654, 51.455845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510918, 52.577850, 51.336197>,  <46.478333, 52.351170, 51.264408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.510918, 52.577850, 51.336197>,  <46.565228, 52.955654, 51.455845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510918, 52.577850, 51.336197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814683, 0.065370, -0.576210,
		0.563787, -0.321926, 0.760597,
		-0.135777, -0.944505, -0.299122,
		46.470184, 52.294498, 51.246460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.138233, 52.736301, 51.574455>,  <46.565228, 52.955654, 51.455845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.138233, 52.736301, 51.574455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.036549, 52.418705, 51.795345>,  <46.975536, 52.228146, 51.927879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.036549, 52.418705, 51.795345>,  <47.138233, 52.736301, 51.574455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.036549, 52.418705, 51.795345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707583, 0.236561, 0.665857,
		-0.659319, 0.560017, 0.501676,
		-0.254214, -0.793990, 0.552227,
		46.960285, 52.180508, 51.961014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.109772, 52.896767, 52.220806>,  <47.138233, 52.736301, 51.574455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.109772, 52.896767, 52.220806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.186745, 52.504250, 52.218163>,  <47.232929, 52.268742, 52.216576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.186745, 52.504250, 52.218163>,  <47.109772, 52.896767, 52.220806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.186745, 52.504250, 52.218163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640819, 0.120560, 0.758167,
		-0.743184, -0.150126, 0.652028,
		0.192430, -0.981289, -0.006605,
		47.244473, 52.209862, 52.216183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.118423, 52.751465, 52.879440>,  <47.109772, 52.896767, 52.220806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.118423, 52.751465, 52.879440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.316761, 52.451050, 52.705048>,  <47.435764, 52.270802, 52.600410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.316761, 52.451050, 52.705048>,  <47.118423, 52.751465, 52.879440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.316761, 52.451050, 52.705048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691142, 0.037311, 0.721755,
		-0.525798, -0.659204, 0.537575,
		0.495841, -0.751038, -0.435985,
		47.465515, 52.225739, 52.574253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.524467, 52.706436, 53.470722>,  <47.118423, 52.751465, 52.879440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.524467, 52.706436, 53.470722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766838, 52.389637, 53.500641>,  <47.912258, 52.199558, 53.518593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.766838, 52.389637, 53.500641>,  <47.524467, 52.706436, 53.470722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.766838, 52.389637, 53.500641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001208, 0.093100, 0.995656,
		-0.795523, -0.603381, 0.055454,
		0.605923, -0.792000, 0.074792,
		47.948616, 52.152039, 53.523079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.290894, 52.074017, 53.898689>,  <47.524467, 52.706436, 53.470722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.290894, 52.074017, 53.898689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.690083, 52.089573, 53.918808>,  <47.929596, 52.098907, 53.930882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.690083, 52.089573, 53.918808>,  <47.290894, 52.074017, 53.898689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.690083, 52.089573, 53.918808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045618, -0.113098, 0.992536,
		0.044289, -0.992822, -0.111095,
		0.997977, 0.038891, 0.050299,
		47.989475, 52.101238, 53.933899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.618389, 51.535896, 54.392097>,  <47.290894, 52.074017, 53.898689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.618389, 51.535896, 54.392097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.891235, 51.827385, 54.367798>,  <48.054943, 52.002277, 54.353218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.891235, 51.827385, 54.367798>,  <47.618389, 51.535896, 54.392097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.891235, 51.827385, 54.367798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190383, -0.096765, 0.976929,
		0.706028, -0.677942, -0.204740,
		0.682113, 0.728719, -0.060749,
		48.095871, 52.046001, 54.349571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.334999, 51.310635, 54.472431>,  <47.618389, 51.535896, 54.392097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.334999, 51.310635, 54.472431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.292946, 51.683846, 54.610077>,  <48.267712, 51.907772, 54.692665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.292946, 51.683846, 54.610077>,  <48.334999, 51.310635, 54.472431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.292946, 51.683846, 54.610077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275008, -0.305260, 0.911695,
		0.955676, 0.190487, -0.224495,
		-0.105136, 0.933023, 0.344115,
		48.261406, 51.963753, 54.713310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.649361, 51.226379, 54.973347>,  <48.334999, 51.310635, 54.472431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.649361, 51.226379, 54.973347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.538429, 51.600250, 55.062317>,  <48.471870, 51.824574, 55.115700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.538429, 51.600250, 55.062317>,  <48.649361, 51.226379, 54.973347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.538429, 51.600250, 55.062317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339948, -0.121072, 0.932618,
		0.898624, 0.334253, -0.284164,
		-0.277326, 0.934675, 0.222427,
		48.455231, 51.880653, 55.129044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.981476, 50.628784, 55.186073>,  <48.649361, 51.226379, 54.973347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.981476, 50.628784, 55.186073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.196701, 50.762562, 54.876587>,  <49.325836, 50.842827, 54.690895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.196701, 50.762562, 54.876587>,  <48.981476, 50.628784, 55.186073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.196701, 50.762562, 54.876587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010193, 0.915269, 0.402714,
		0.842845, -0.224571, 0.489060,
		0.538060, 0.334441, -0.773719,
		49.358120, 50.862896, 54.644470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.330433, 51.143791, 55.493519>,  <48.981476, 50.628784, 55.186073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.330433, 51.143791, 55.493519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.351120, 51.196465, 55.097542>,  <49.363533, 51.228069, 54.859955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.351120, 51.196465, 55.097542>,  <49.330433, 51.143791, 55.493519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.351120, 51.196465, 55.097542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077938, 0.987713, 0.135459,
		0.995616, -0.084159, 0.040820,
		0.051719, 0.131684, -0.989942,
		49.366634, 51.235970, 54.800560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.013226, 51.295872, 55.242294>,  <49.330433, 51.143791, 55.493519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.013226, 51.295872, 55.242294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.688713, 51.456326, 55.072159>,  <49.494007, 51.552597, 54.970078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.688713, 51.456326, 55.072159>,  <50.013226, 51.295872, 55.242294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.688713, 51.456326, 55.072159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246670, 0.894424, 0.373042,
		0.530070, 0.197725, -0.824579,
		-0.811283, 0.401138, -0.425334,
		49.445328, 51.576668, 54.944557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.213806, 50.536766, 55.133904>,  <50.013226, 51.295872, 55.242294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.213806, 50.536766, 55.133904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.310303, 50.186081, 55.300362>,  <50.368202, 49.975670, 55.400234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.310303, 50.186081, 55.300362>,  <50.213806, 50.536766, 55.133904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.310303, 50.186081, 55.300362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911916, 0.351478, 0.211831,
		-0.331980, 0.328385, 0.884281,
		0.241244, -0.876714, 0.416143,
		50.382675, 49.923065, 55.425205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.534191, 50.706997, 55.757530>,  <50.213806, 50.536766, 55.133904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.534191, 50.706997, 55.757530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.690434, 50.356159, 55.645721>,  <50.784180, 50.145657, 55.578636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.690434, 50.356159, 55.645721>,  <50.534191, 50.706997, 55.757530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.690434, 50.356159, 55.645721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919835, 0.359841, 0.156266,
		-0.036475, -0.318155, 0.947337,
		0.390607, -0.877093, -0.279525,
		50.807617, 50.093033, 55.561863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.922626, 50.357571, 56.242592>,  <50.534191, 50.706997, 55.757530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.922626, 50.357571, 56.242592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.098877, 50.177826, 55.931740>,  <51.204628, 50.069981, 55.745228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.098877, 50.177826, 55.931740>,  <50.922626, 50.357571, 56.242592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.098877, 50.177826, 55.931740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864248, 0.446439, 0.231876,
		0.242745, -0.773802, 0.585069,
		0.440624, -0.449358, -0.777128,
		51.231064, 50.043018, 55.698601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.473198, 50.080685, 56.383247>,  <50.922626, 50.357571, 56.242592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.473198, 50.080685, 56.383247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.497498, 50.213581, 56.006752>,  <51.512077, 50.293320, 55.780857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.497498, 50.213581, 56.006752>,  <51.473198, 50.080685, 56.383247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.497498, 50.213581, 56.006752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818736, 0.522801, 0.237382,
		0.570948, -0.785043, -0.240264,
		0.060745, 0.332245, -0.941235,
		51.515720, 50.313255, 55.724380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.163700, 49.842335, 56.072708>,  <51.473198, 50.080685, 56.383247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.163700, 49.842335, 56.072708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.969547, 50.189251, 56.028526>,  <51.853054, 50.397400, 56.002018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.969547, 50.189251, 56.028526>,  <52.163700, 49.842335, 56.072708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.969547, 50.189251, 56.028526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779140, 0.486408, 0.395410,
		0.396665, 0.105864, -0.911839,
		-0.485385, 0.867295, -0.110458,
		51.823933, 50.449440, 55.995388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.464108, 50.312687, 55.490448>,  <52.163700, 49.842335, 56.072708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.464108, 50.312687, 55.490448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.299160, 50.500614, 55.802658>,  <52.200191, 50.613373, 55.989983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.299160, 50.500614, 55.802658>,  <52.464108, 50.312687, 55.490448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.299160, 50.500614, 55.802658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881010, 0.423735, 0.210404,
		-0.231883, 0.774414, -0.588654,
		-0.412373, 0.469821, 0.780523,
		52.175449, 50.641560, 56.036816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.541866, 51.027519, 55.436924>,  <52.464108, 50.312687, 55.490448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.541866, 51.027519, 55.436924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.534317, 50.895927, 55.814583>,  <52.529789, 50.816971, 56.041180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.534317, 50.895927, 55.814583>,  <52.541866, 51.027519, 55.436924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.534317, 50.895927, 55.814583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877765, 0.446691, 0.173193,
		-0.478720, 0.832009, 0.280337,
		-0.018874, -0.328981, 0.944148,
		52.528656, 50.797234, 56.097828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.719738, 51.542915, 55.950089>,  <52.541866, 51.027519, 55.436924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.719738, 51.542915, 55.950089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.823490, 51.174259, 56.065536>,  <52.885742, 50.953064, 56.134804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.823490, 51.174259, 56.065536>,  <52.719738, 51.542915, 55.950089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.823490, 51.174259, 56.065536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965372, 0.256072, -0.049848,
		-0.027965, 0.291551, 0.956147,
		0.259376, -0.921643, 0.288616,
		52.901302, 50.897766, 56.152122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.212845, 51.699829, 56.476604>,  <52.719738, 51.542915, 55.950089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.212845, 51.699829, 56.476604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.275852, 51.340813, 56.311874>,  <53.313656, 51.125401, 56.213036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.275852, 51.340813, 56.311874>,  <53.212845, 51.699829, 56.476604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.275852, 51.340813, 56.311874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943184, 0.260291, -0.206525,
		0.292561, -0.355896, 0.887551,
		0.157520, -0.897545, -0.411826,
		53.323109, 51.071548, 56.188328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.835205, 51.410900, 56.678707>,  <53.212845, 51.699829, 56.476604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.835205, 51.410900, 56.678707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.756050, 51.271748, 56.312141>,  <53.708557, 51.188255, 56.092201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.756050, 51.271748, 56.312141>,  <53.835205, 51.410900, 56.678707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.756050, 51.271748, 56.312141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874860, 0.358985, -0.325192,
		0.442107, -0.866089, 0.233306,
		-0.197892, -0.347880, -0.916416,
		53.696682, 51.167385, 56.037216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.413891, 51.479843, 56.334675>,  <53.835205, 51.410900, 56.678707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.413891, 51.479843, 56.334675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.233154, 51.341686, 56.005669>,  <54.124710, 51.258793, 55.808266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.233154, 51.341686, 56.005669>,  <54.413891, 51.479843, 56.334675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.233154, 51.341686, 56.005669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832334, 0.168565, -0.528020,
		0.321024, -0.923195, 0.211318,
		-0.451845, -0.345394, -0.822520,
		54.097599, 51.238068, 55.758911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.875965, 51.200294, 55.946896>,  <54.413891, 51.479843, 56.334675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.875965, 51.200294, 55.946896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.588043, 51.217049, 55.669731>,  <54.415291, 51.227100, 55.503433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.588043, 51.217049, 55.669731>,  <54.875965, 51.200294, 55.946896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.588043, 51.217049, 55.669731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689142, 0.163098, -0.706033,
		0.083435, -0.985720, -0.146268,
		-0.719807, 0.041891, -0.692909,
		54.372101, 51.229614, 55.461857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.092777, 50.785931, 55.389854>,  <54.875965, 51.200294, 55.946896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.092777, 50.785931, 55.389854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.867348, 51.087799, 55.255478>,  <54.732090, 51.268921, 55.174850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.867348, 51.087799, 55.255478>,  <55.092777, 50.785931, 55.389854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.867348, 51.087799, 55.255478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779058, 0.350333, -0.519938,
		-0.274689, -0.554743, -0.785370,
		-0.563573, 0.754670, -0.335944,
		54.698277, 51.314201, 55.154694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.102528, 50.801765, 54.677658>,  <55.092777, 50.785931, 55.389854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.102528, 50.801765, 54.677658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.025787, 51.166473, 54.822910>,  <54.979744, 51.385300, 54.910061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.025787, 51.166473, 54.822910>,  <55.102528, 50.801765, 54.677658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.025787, 51.166473, 54.822910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712398, 0.383875, -0.587477,
		-0.675042, 0.145987, -0.723191,
		-0.191851, 0.911772, 0.363133,
		54.968231, 51.440006, 54.931850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.859814, 51.275944, 54.258873>,  <55.102528, 50.801765, 54.677658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.859814, 51.275944, 54.258873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.018051, 51.536114, 54.518242>,  <55.112995, 51.692215, 54.673862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.018051, 51.536114, 54.518242>,  <54.859814, 51.275944, 54.258873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.018051, 51.536114, 54.518242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525501, 0.418720, -0.740623,
		-0.753228, 0.633732, -0.176158,
		0.395595, 0.650429, 0.648419,
		55.136730, 51.731243, 54.712769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.760231, 52.040752, 54.079662>,  <54.859814, 51.275944, 54.258873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.760231, 52.040752, 54.079662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.080872, 51.938911, 54.296036>,  <55.273254, 51.877808, 54.425861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.080872, 51.938911, 54.296036>,  <54.760231, 52.040752, 54.079662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.080872, 51.938911, 54.296036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567053, 0.610468, -0.552973,
		-0.189432, 0.750002, 0.633729,
		0.801603, -0.254607, 0.540933,
		55.321354, 51.862530, 54.458317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.035480, 52.651390, 54.005703>,  <54.760231, 52.040752, 54.079662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.035480, 52.651390, 54.005703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.310074, 52.379242, 54.108337>,  <55.474831, 52.215954, 54.169918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.310074, 52.379242, 54.108337>,  <55.035480, 52.651390, 54.005703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.310074, 52.379242, 54.108337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725128, 0.614260, -0.311245,
		0.054149, 0.399724, 0.915035,
		0.686481, -0.680371, 0.256590,
		55.516018, 52.175129, 54.185314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.452320, 52.868324, 54.474712>,  <55.035480, 52.651390, 54.005703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.452320, 52.868324, 54.474712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.688187, 52.587730, 54.314606>,  <55.829708, 52.419376, 54.218544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.688187, 52.587730, 54.314606>,  <55.452320, 52.868324, 54.474712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.688187, 52.587730, 54.314606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751460, 0.658146, -0.046378,
		0.295966, -0.273435, 0.915225,
		0.589671, -0.701482, -0.400265,
		55.865089, 52.377285, 54.194527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.182644, 52.899666, 54.798641>,  <55.452320, 52.868324, 54.474712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.182644, 52.899666, 54.798641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.246994, 52.732605, 54.440941>,  <56.285603, 52.632370, 54.226322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.246994, 52.732605, 54.440941>,  <56.182644, 52.899666, 54.798641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.246994, 52.732605, 54.440941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665317, 0.715139, -0.214312,
		0.729022, -0.560484, 0.392918,
		0.160872, -0.417653, -0.894252,
		56.295258, 52.607307, 54.172665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.905720, 52.826988, 54.585205>,  <56.182644, 52.899666, 54.798641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.905720, 52.826988, 54.585205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.997078, 52.797821, 54.196873>,  <57.051891, 52.780323, 53.963871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.997078, 52.797821, 54.196873>,  <56.905720, 52.826988, 54.585205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.997078, 52.797821, 54.196873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960366, -0.146793, 0.236957,
		-0.159789, -0.986476, 0.036499,
		0.228395, -0.072915, -0.970834,
		57.065598, 52.775948, 53.905621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.265717, 52.200886, 54.535660>,  <56.905720, 52.826988, 54.585205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.265717, 52.200886, 54.535660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.356804, 52.491020, 54.275803>,  <57.411457, 52.665100, 54.119888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.356804, 52.491020, 54.275803>,  <57.265717, 52.200886, 54.535660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.356804, 52.491020, 54.275803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816012, 0.221870, 0.533758,
		0.531289, -0.651664, -0.541356,
		0.227721, 0.725333, -0.649643,
		57.425121, 52.708618, 54.080910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.793732, 52.191853, 53.924007>,  <57.265717, 52.200886, 54.535660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.793732, 52.191853, 53.924007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.785622, 52.552109, 54.097641>,  <57.780754, 52.768265, 54.201820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.785622, 52.552109, 54.097641>,  <57.793732, 52.191853, 53.924007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.785622, 52.552109, 54.097641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958012, -0.106702, 0.266134,
		0.286010, 0.421252, -0.860666,
		-0.020275, 0.900645, 0.434082,
		57.779541, 52.822304, 54.227867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.430408, 52.429970, 54.146606>,  <57.793732, 52.191853, 53.924007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.430408, 52.429970, 54.146606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.291702, 52.782761, 54.274269>,  <58.208477, 52.994434, 54.350868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.291702, 52.782761, 54.274269>,  <58.430408, 52.429970, 54.146606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.291702, 52.782761, 54.274269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885329, 0.195412, 0.421908,
		0.309747, 0.428867, -0.848605,
		-0.346770, 0.881979, 0.319160,
		58.187672, 53.047356, 54.370018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.961456, 51.873829, 54.390285>,  <58.430408, 52.429970, 54.146606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.961456, 51.873829, 54.390285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.188934, 51.931374, 54.714233>,  <59.325420, 51.965900, 54.908604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.188934, 51.931374, 54.714233>,  <58.961456, 51.873829, 54.390285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.188934, 51.931374, 54.714233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584357, -0.763589, -0.274699,
		0.578891, 0.629473, -0.518313,
		0.568694, 0.143859, 0.809871,
		59.359543, 51.974533, 54.957195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.718338, 52.068665, 54.364559>,  <58.961456, 51.873829, 54.390285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.718338, 52.068665, 54.364559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.667229, 51.831112, 54.682297>,  <59.636562, 51.688580, 54.872940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.667229, 51.831112, 54.682297>,  <59.718338, 52.068665, 54.364559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.667229, 51.831112, 54.682297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651426, -0.654178, -0.384311,
		0.747876, 0.468350, 0.470457,
		-0.127771, -0.593885, 0.794340,
		59.628899, 51.652946, 54.920597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.292942, 51.778637, 54.731972>,  <59.718338, 52.068665, 54.364559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.292942, 51.778637, 54.731972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.028397, 51.487110, 54.802868>,  <59.869667, 51.312195, 54.845406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.028397, 51.487110, 54.802868>,  <60.292942, 51.778637, 54.731972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.028397, 51.487110, 54.802868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578078, -0.645851, -0.498701,
		0.477933, -0.227368, 0.848460,
		-0.661367, -0.728822, 0.177237,
		59.829987, 51.268463, 54.856041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.737381, 51.192326, 54.773403>,  <60.292942, 51.778637, 54.731972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.737381, 51.192326, 54.773403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.370201, 51.034157, 54.760735>,  <60.149891, 50.939255, 54.753132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.370201, 51.034157, 54.760735>,  <60.737381, 51.192326, 54.773403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.370201, 51.034157, 54.760735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382939, -0.862470, -0.330914,
		0.103530, -0.315894, 0.943129,
		-0.917954, -0.395421, -0.031676,
		60.094814, 50.915531, 54.751232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.834190, 50.583290, 55.069496>,  <60.737381, 51.192326, 54.773403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.834190, 50.583290, 55.069496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.107079, 50.317062, 55.190552>,  <61.270813, 50.157326, 55.263184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.107079, 50.317062, 55.190552>,  <60.834190, 50.583290, 55.069496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.107079, 50.317062, 55.190552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276742, 0.618191, 0.735699,
		-0.676745, -0.418160, 0.605936,
		0.682224, -0.665569, 0.302636,
		61.311745, 50.117393, 55.281342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.808788, 50.419075, 55.758148>,  <60.834190, 50.583290, 55.069496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.808788, 50.419075, 55.758148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.196655, 50.364807, 55.676826>,  <61.429375, 50.332249, 55.628033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.196655, 50.364807, 55.676826>,  <60.808788, 50.419075, 55.758148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.196655, 50.364807, 55.676826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243422, 0.610928, 0.753335,
		0.022002, -0.779975, 0.625424,
		0.969671, -0.135667, -0.203304,
		61.487556, 50.324108, 55.615837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.280426, 50.227158, 56.364658>,  <60.808788, 50.419075, 55.758148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.280426, 50.227158, 56.364658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.543274, 50.364609, 56.096298>,  <61.700985, 50.447079, 55.935280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.543274, 50.364609, 56.096298>,  <61.280426, 50.227158, 56.364658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.543274, 50.364609, 56.096298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459637, 0.522765, 0.717949,
		0.597431, -0.780152, 0.185577,
		0.657122, 0.343627, -0.670903,
		61.740410, 50.467697, 55.895027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.952274, 50.051632, 56.439541>,  <61.280426, 50.227158, 56.364658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.952274, 50.051632, 56.439541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.978401, 50.427238, 56.304497>,  <61.994076, 50.652603, 56.223469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.978401, 50.427238, 56.304497>,  <61.952274, 50.051632, 56.439541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.978401, 50.427238, 56.304497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501208, 0.261686, 0.824810,
		0.862859, -0.223085, -0.453551,
		0.065315, 0.939017, -0.337610,
		61.997997, 50.708942, 56.203213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.735336, 50.408634, 56.257641>,  <61.952274, 50.051632, 56.439541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.735336, 50.408634, 56.257641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.452209, 50.661663, 56.383400>,  <62.282333, 50.813480, 56.458855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.452209, 50.661663, 56.383400>,  <62.735336, 50.408634, 56.257641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.452209, 50.661663, 56.383400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521038, 0.166999, 0.837037,
		0.476985, 0.756280, -0.447801,
		-0.707816, 0.632576, 0.314394,
		62.239864, 50.851437, 56.477718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.046719, 51.082077, 56.380135>,  <62.735336, 50.408634, 56.257641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.046719, 51.082077, 56.380135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.729927, 51.012077, 56.614105>,  <62.539852, 50.970078, 56.754490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.729927, 51.012077, 56.614105>,  <63.046719, 51.082077, 56.380135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.729927, 51.012077, 56.614105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594338, -0.001695, 0.804214,
		-0.139748, 0.984567, 0.105353,
		-0.791981, -0.175002, 0.584928,
		62.492332, 50.959576, 56.789585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.009819, 51.616714, 56.940815>,  <63.046719, 51.082077, 56.380135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.009819, 51.616714, 56.940815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.871399, 51.247631, 57.008766>,  <62.788345, 51.026180, 57.049538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.871399, 51.247631, 57.008766>,  <63.009819, 51.616714, 56.940815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.871399, 51.247631, 57.008766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558772, -0.057237, 0.827344,
		-0.753673, 0.381227, 0.535390,
		-0.346050, -0.922708, 0.169881,
		62.767586, 50.970818, 57.059731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.605968, 51.756569, 57.473858>,  <63.009819, 51.616714, 56.940815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.605968, 51.756569, 57.473858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.734741, 51.728954, 57.096161>,  <63.812004, 51.712387, 56.869541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.734741, 51.728954, 57.096161>,  <63.605968, 51.756569, 57.473858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.734741, 51.728954, 57.096161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890538, 0.360653, 0.277259,
		0.321403, -0.930142, 0.177585,
		0.321936, -0.069034, -0.944241,
		63.831322, 51.708244, 56.812889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.309090, 51.562748, 57.301727>,  <63.605968, 51.756569, 57.473858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.309090, 51.562748, 57.301727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.594795, 51.522682, 57.024658>,  <64.766220, 51.498642, 56.858418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.594795, 51.522682, 57.024658>,  <64.309090, 51.562748, 57.301727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.594795, 51.522682, 57.024658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037734, -0.993778, 0.104791,
		-0.698858, -0.048711, -0.713600,
		0.714264, -0.100162, -0.692672,
		64.809074, 51.492634, 56.816856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.731079, 51.180763, 57.706470>,  <64.309090, 51.562748, 57.301727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.731079, 51.180763, 57.706470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.053391, 51.409756, 57.645836>,  <65.246780, 51.547150, 57.609455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.053391, 51.409756, 57.645836>,  <64.731079, 51.180763, 57.706470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.053391, 51.409756, 57.645836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570688, 0.819010, 0.059484,
		0.158205, 0.038578, 0.986652,
		0.805784, 0.572481, -0.151587,
		65.295128, 51.581501, 57.600361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.835014, 51.750729, 58.285210>,  <64.731079, 51.180763, 57.706470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.835014, 51.750729, 58.285210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.993683, 51.851280, 57.932060>,  <65.088882, 51.911610, 57.720169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.993683, 51.851280, 57.932060>,  <64.835014, 51.750729, 58.285210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.993683, 51.851280, 57.932060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519402, 0.854473, 0.009928,
		0.756886, 0.454627, 0.469508,
		0.396668, 0.251377, -0.882873,
		65.112686, 51.926693, 57.667198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.053665, 52.443687, 58.267090>,  <64.835014, 51.750729, 58.285210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.053665, 52.443687, 58.267090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.922508, 52.313042, 57.912506>,  <64.843811, 52.234653, 57.699757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.922508, 52.313042, 57.912506>,  <65.053665, 52.443687, 58.267090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.922508, 52.313042, 57.912506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788069, 0.612039, 0.065994,
		0.520995, 0.720231, -0.458073,
		-0.327890, -0.326611, -0.886461,
		64.824142, 52.215057, 57.646568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.861908, 52.665127, 58.341908>,  <65.053665, 52.443687, 58.267090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.861908, 52.665127, 58.341908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.679337, 53.001385, 58.225304>,  <65.569794, 53.203140, 58.155342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.679337, 53.001385, 58.225304>,  <65.861908, 52.665127, 58.341908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.679337, 53.001385, 58.225304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720257, -0.541452, -0.433658,
		-0.522391, 0.012024, 0.852621,
		-0.456439, 0.840646, -0.291510,
		65.542404, 53.253578, 58.137848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.539246, 53.057224, 58.304291>,  <65.861908, 52.665127, 58.341908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.539246, 53.057224, 58.304291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.580582, 52.805569, 58.612450>,  <66.605385, 52.654575, 58.797344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.580582, 52.805569, 58.612450>,  <66.539246, 53.057224, 58.304291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.580582, 52.805569, 58.612450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875947, 0.309377, 0.370140,
		-0.471211, -0.713072, -0.519122,
		0.103332, -0.629137, 0.770395,
		66.611580, 52.616829, 58.843567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.921082, 52.520954, 58.034870>,  <66.539246, 53.057224, 58.304291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.921082, 52.520954, 58.034870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.010170, 52.798481, 58.308807>,  <67.063622, 52.964996, 58.473171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.010170, 52.798481, 58.308807>,  <66.921082, 52.520954, 58.034870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.010170, 52.798481, 58.308807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974816, -0.166582, -0.148269,
		0.011210, 0.700619, -0.713448,
		0.222727, 0.693818, 0.684842,
		67.076988, 53.006626, 58.514259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.221481, 53.083454, 57.744377>,  <66.921082, 52.520954, 58.034870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.221481, 53.083454, 57.744377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.359566, 53.039623, 58.117218>,  <67.442421, 53.013325, 58.340923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.359566, 53.039623, 58.117218>,  <67.221481, 53.083454, 57.744377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.359566, 53.039623, 58.117218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918937, -0.162378, -0.359429,
		0.190738, 0.980625, 0.044638,
		0.345216, -0.109577, 0.932104,
		67.463127, 53.006752, 58.396851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.838791, 53.506298, 57.862377>,  <67.221481, 53.083454, 57.744377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.838791, 53.506298, 57.862377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.887161, 53.220673, 58.138199>,  <67.916183, 53.049297, 58.303692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.887161, 53.220673, 58.138199>,  <67.838791, 53.506298, 57.862377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.887161, 53.220673, 58.138199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914991, -0.189180, -0.356373,
		0.384923, 0.674038, 0.630481,
		0.120934, -0.714061, 0.689559,
		67.923439, 53.006454, 58.345066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.354904, 53.649544, 58.389744>,  <67.838791, 53.506298, 57.862377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.354904, 53.649544, 58.389744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.360794, 53.254086, 58.329926>,  <68.364326, 53.016811, 58.294033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.360794, 53.254086, 58.329926>,  <68.354904, 53.649544, 58.389744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.360794, 53.254086, 58.329926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983890, 0.040984, -0.174012,
		0.178165, -0.144577, 0.973322,
		0.014732, -0.988644, -0.149549,
		68.365211, 52.957493, 58.285061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.852974, 54.180187, 58.453388>,  <68.354904, 53.649544, 58.389744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.852974, 54.180187, 58.453388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.718750, 54.167126, 58.829971>,  <68.638214, 54.159286, 59.055920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.718750, 54.167126, 58.829971>,  <68.852974, 54.180187, 58.453388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.718750, 54.167126, 58.829971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721862, -0.651022, 0.234704,
		0.605243, 0.758356, 0.242026,
		-0.335554, -0.032656, 0.941455,
		68.618080, 54.157330, 59.112408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.252556, 54.698261, 58.682659>,  <68.852974, 54.180187, 58.453388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.252556, 54.698261, 58.682659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.436104, 54.589508, 59.021011>,  <69.546234, 54.524258, 59.224022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.436104, 54.589508, 59.021011>,  <69.252556, 54.698261, 58.682659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.436104, 54.589508, 59.021011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823267, 0.488172, -0.289688,
		-0.334176, 0.829317, 0.447838,
		0.458865, -0.271884, 0.845885,
		69.573761, 54.507942, 59.274776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.653847, 55.284409, 58.991543>,  <69.252556, 54.698261, 58.682659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.653847, 55.284409, 58.991543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.841873, 54.959862, 59.130524>,  <69.954689, 54.765133, 59.213913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.841873, 54.959862, 59.130524>,  <69.653847, 55.284409, 58.991543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.841873, 54.959862, 59.130524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855923, 0.322927, -0.403873,
		0.215486, 0.487241, 0.846264,
		0.470065, -0.811366, 0.347455,
		69.982895, 54.716454, 59.234760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.449585, 55.748611, 58.395908>,  <69.653847, 55.284409, 58.991543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.449585, 55.748611, 58.395908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.656021, 56.061661, 58.256683>,  <69.779884, 56.249489, 58.173149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.656021, 56.061661, 58.256683>,  <69.449585, 55.748611, 58.395908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.656021, 56.061661, 58.256683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854361, -0.441465, 0.274183,
		0.060924, -0.438876, -0.896480,
		0.516097, 0.782622, -0.348062,
		69.810852, 56.296448, 58.152264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.003342, 55.597569, 58.064850>,  <69.449585, 55.748611, 58.395908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.003342, 55.597569, 58.064850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.103836, 55.963158, 58.192307>,  <70.164131, 56.182510, 58.268780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.103836, 55.963158, 58.192307>,  <70.003342, 55.597569, 58.064850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.103836, 55.963158, 58.192307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828642, -0.373224, 0.417201,
		0.500235, 0.159221, -0.851125,
		0.251233, 0.913976, 0.318637,
		70.179207, 56.237350, 58.287899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.711586, 55.892597, 57.909134>,  <70.003342, 55.597569, 58.064850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.711586, 55.892597, 57.909134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.577255, 56.044167, 58.254074>,  <70.496658, 56.135109, 58.461037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.577255, 56.044167, 58.254074>,  <70.711586, 55.892597, 57.909134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.577255, 56.044167, 58.254074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738860, -0.461866, 0.490678,
		0.584219, 0.801932, -0.124869,
		-0.335818, 0.378925, 0.862347,
		70.476509, 56.157845, 58.512779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.321701, 56.179050, 58.184322>,  <70.711586, 55.892597, 57.909134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.321701, 56.179050, 58.184322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.038368, 56.071568, 58.445412>,  <70.868370, 56.007076, 58.602066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.038368, 56.071568, 58.445412>,  <71.321701, 56.179050, 58.184322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.038368, 56.071568, 58.445412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705108, -0.312407, 0.636573,
		0.032862, 0.911151, 0.410761,
		-0.708338, -0.268712, 0.652726,
		70.825867, 55.990955, 58.641228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.413307, 56.586487, 58.785324>,  <71.321701, 56.179050, 58.184322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.413307, 56.586487, 58.785324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.237083, 56.242607, 58.888733>,  <71.131348, 56.036282, 58.950779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.237083, 56.242607, 58.888733>,  <71.413307, 56.586487, 58.785324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.237083, 56.242607, 58.888733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603335, -0.070300, 0.794383,
		-0.664753, 0.505947, 0.549656,
		-0.440556, -0.859695, 0.258524,
		71.104919, 55.984699, 58.966290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.881355, 56.969379, 59.089680>,  <71.413307, 56.586487, 58.785324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.881355, 56.969379, 59.089680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.748428, 56.862507, 59.451492>,  <71.668671, 56.798382, 59.668579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.748428, 56.862507, 59.451492>,  <71.881355, 56.969379, 59.089680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.748428, 56.862507, 59.451492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411949, 0.821607, 0.394030,
		-0.848449, 0.503564, -0.162967,
		-0.332314, -0.267180, 0.904534,
		71.648735, 56.782352, 59.722851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.604233, 57.624977, 59.297806>,  <71.881355, 56.969379, 59.089680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.604233, 57.624977, 59.297806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.765663, 57.375214, 59.565308>,  <71.862526, 57.225357, 59.725811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.765663, 57.375214, 59.565308>,  <71.604233, 57.624977, 59.297806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.765663, 57.375214, 59.565308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591260, 0.735792, 0.330184,
		-0.698236, 0.262153, 0.666140,
		0.403582, -0.624408, 0.668757,
		71.886734, 57.187893, 59.765934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.704979, 57.946609, 60.055416>,  <71.604233, 57.624977, 59.297806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.704979, 57.946609, 60.055416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.972984, 57.656246, 59.993256>,  <72.133789, 57.482029, 59.955959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.972984, 57.656246, 59.993256>,  <71.704979, 57.946609, 60.055416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.972984, 57.656246, 59.993256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699659, 0.547514, 0.459027,
		-0.248126, -0.416279, 0.874726,
		0.670008, -0.725906, -0.155400,
		72.173988, 57.438473, 59.946636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.910942, 57.557640, 60.645470>,  <71.704979, 57.946609, 60.055416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.910942, 57.557640, 60.645470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.225891, 57.545586, 60.399178>,  <72.414864, 57.538353, 60.251404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.225891, 57.545586, 60.399178>,  <71.910942, 57.557640, 60.645470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.225891, 57.545586, 60.399178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586756, 0.342975, 0.733543,
		0.189072, -0.938861, 0.287735,
		0.787381, -0.030138, -0.615730,
		72.462105, 57.536545, 60.214458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.574310, 57.359921, 60.672741>,  <71.910942, 57.557640, 60.645470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.574310, 57.359921, 60.672741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.821114, 57.147377, 60.440552>,  <72.969200, 57.019852, 60.301239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.821114, 57.147377, 60.440552>,  <72.574310, 57.359921, 60.672741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.821114, 57.147377, 60.440552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569007, 0.810780, -0.137357,
		0.543620, -0.245540, 0.802613,
		0.617016, -0.531362, -0.580470,
		73.006218, 56.987968, 60.266411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.322067, 57.349400, 60.927891>,  <72.574310, 57.359921, 60.672741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.322067, 57.349400, 60.927891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.254898, 57.327900, 60.534157>,  <73.214600, 57.314999, 60.297916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.254898, 57.327900, 60.534157>,  <73.322067, 57.349400, 60.927891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.254898, 57.327900, 60.534157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478240, 0.868700, -0.129023,
		0.862026, -0.492414, -0.120167,
		-0.167922, -0.053753, -0.984334,
		73.204521, 57.311775, 60.238857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
