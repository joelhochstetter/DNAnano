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
	<0.961909, 3.192422, 1.685909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.760399, 3.411779, 1.952885>,  <0.639493, 3.543394, 2.113070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.760399, 3.411779, 1.952885>,  <0.961909, 3.192422, 1.685909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.760399, 3.411779, 1.952885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576020, 0.789051, -0.213540,
		-0.643747, 0.276882, -0.713390,
		-0.503776, 0.548393, 0.667439,
		0.609266, 3.576298, 2.153116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.943311, 3.769472, 1.374390>,  <0.961909, 3.192422, 1.685909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.943311, 3.769472, 1.374390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.855469, 3.888145, 1.746143>,  <0.802763, 3.959349, 1.969195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.855469, 3.888145, 1.746143>,  <0.943311, 3.769472, 1.374390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.855469, 3.888145, 1.746143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599527, 0.792571, -0.111345,
		-0.769636, 0.532738, -0.351923,
		-0.219606, 0.296683, 0.929383,
		0.789587, 3.977150, 2.024958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.724758, 4.470239, 1.389454>,  <0.943311, 3.769472, 1.374390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.724758, 4.470239, 1.389454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.855576, 4.373863, 1.754965>,  <0.934066, 4.316038, 1.974272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.855576, 4.373863, 1.754965>,  <0.724758, 4.470239, 1.389454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.855576, 4.373863, 1.754965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495929, 0.866860, 0.051074,
		-0.804423, 0.436466, 0.402991,
		0.327044, -0.240940, 0.913778,
		0.953689, 4.301581, 2.029098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.546858, 4.997470, 1.908645>,  <0.724758, 4.470239, 1.389454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.546858, 4.997470, 1.908645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.879372, 4.789173, 1.986408>,  <1.078880, 4.664195, 2.033066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.879372, 4.789173, 1.986408>,  <0.546858, 4.997470, 1.908645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.879372, 4.789173, 1.986408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493564, 0.852384, 0.172734,
		-0.255661, -0.047637, 0.965592,
		0.831284, -0.520743, 0.194409,
		1.128757, 4.632950, 2.044731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.789446, 5.169825, 2.636954>,  <0.546858, 4.997470, 1.908645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.789446, 5.169825, 2.636954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.124100, 5.005688, 2.491814>,  <1.324892, 4.907206, 2.404730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.124100, 5.005688, 2.491814>,  <0.789446, 5.169825, 2.636954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.124100, 5.005688, 2.491814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509474, 0.826247, 0.240318,
		0.201190, -0.385921, 0.900326,
		0.836636, -0.410343, -0.362849,
		1.375090, 4.882585, 2.382959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.346362, 5.220077, 3.167007>,  <0.789446, 5.169825, 2.636954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.346362, 5.220077, 3.167007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.572128, 5.160387, 2.842251>,  <1.707588, 5.124573, 2.647397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.572128, 5.160387, 2.842251>,  <1.346362, 5.220077, 3.167007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.572128, 5.160387, 2.842251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689979, 0.625208, 0.364751,
		0.453171, -0.766059, 0.455840,
		0.564415, -0.149226, -0.811891,
		1.741453, 5.115620, 2.598683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.002335, 4.954242, 3.455860>,  <1.346362, 5.220077, 3.167007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.002335, 4.954242, 3.455860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.076485, 5.095783, 3.089161>,  <2.120975, 5.180708, 2.869142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.076485, 5.095783, 3.089161>,  <2.002335, 4.954242, 3.455860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.076485, 5.095783, 3.089161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801239, 0.485673, 0.349482,
		0.568905, -0.799318, -0.193489,
		0.185375, 0.353853, -0.916747,
		2.132097, 5.201939, 2.814137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.668144, 4.790299, 3.398429>,  <2.002335, 4.954242, 3.455860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.668144, 4.790299, 3.398429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.551727, 5.079414, 3.147711>,  <2.481877, 5.252883, 2.997280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.551727, 5.079414, 3.147711>,  <2.668144, 4.790299, 3.398429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.551727, 5.079414, 3.147711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681049, 0.616651, 0.394858,
		0.671913, -0.311958, -0.671726,
		-0.291042, 0.722788, -0.626795,
		2.464415, 5.296251, 2.959672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.930896, 1.703996, 3.790895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.112648, 1.536892, 3.476185>,  <3.221699, 1.436630, 3.287359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.112648, 1.536892, 3.476185>,  <2.930896, 1.703996, 3.790895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.112648, 1.536892, 3.476185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770340, -0.627802, -0.111540,
		-0.447342, 0.656765, -0.607079,
		0.454381, -0.417760, -0.786775,
		3.248962, 1.411564, 3.240152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.474041, 1.753280, 3.266971>,  <2.930896, 1.703996, 3.790895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.474041, 1.753280, 3.266971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.702522, 1.455879, 3.127871>,  <2.839611, 1.277439, 3.044410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.702522, 1.455879, 3.127871>,  <2.474041, 1.753280, 3.266971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.702522, 1.455879, 3.127871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813148, -0.454830, -0.363208,
		0.111877, 0.490239, -0.864378,
		0.571204, -0.743502, -0.347752,
		2.873883, 1.232829, 3.023545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.064995, 1.485279, 2.794741>,  <2.474041, 1.753280, 3.266971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.064995, 1.485279, 2.794741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.328178, 1.184074, 2.797956>,  <2.486089, 1.003352, 2.799886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.328178, 1.184074, 2.797956>,  <2.064995, 1.485279, 2.794741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.328178, 1.184074, 2.797956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607714, -0.537247, -0.584850,
		0.444717, 0.379922, -0.811102,
		0.657959, -0.753010, 0.008039,
		2.525566, 0.958171, 2.800368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.119501, 1.224091, 2.085975>,  <2.064995, 1.485279, 2.794741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.119501, 1.224091, 2.085975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.262039, 0.944607, 2.334110>,  <2.347562, 0.776916, 2.482992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.262039, 0.944607, 2.334110>,  <2.119501, 1.224091, 2.085975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.262039, 0.944607, 2.334110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514825, -0.700876, -0.493688,
		0.779726, -0.143443, -0.609468,
		0.356345, -0.698711, 0.620339,
		2.368943, 0.734993, 2.520212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.491244, 0.693962, 1.692258>,  <2.119501, 1.224091, 2.085975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.491244, 0.693962, 1.692258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.373901, 0.539700, 2.042164>,  <2.303496, 0.447142, 2.252107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.373901, 0.539700, 2.042164>,  <2.491244, 0.693962, 1.692258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.373901, 0.539700, 2.042164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460311, -0.744989, -0.482809,
		0.837888, -0.544299, 0.041026,
		-0.293356, -0.385655, 0.874764,
		2.285894, 0.424003, 2.304593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.575052, -0.052135, 1.643303>,  <2.491244, 0.693962, 1.692258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.575052, -0.052135, 1.643303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.308197, 0.010643, 1.934589>,  <2.148084, 0.048310, 2.109361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.308197, 0.010643, 1.934589>,  <2.575052, -0.052135, 1.643303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.308197, 0.010643, 1.934589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476730, -0.841109, -0.255468,
		0.572414, -0.517594, 0.635955,
		-0.667136, 0.156945, 0.728215,
		2.108056, 0.057727, 2.153054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.449541, -0.765873, 1.945782>,  <2.575052, -0.052135, 1.643303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.449541, -0.765873, 1.945782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.135254, -0.544170, 2.055653>,  <1.946681, -0.411149, 2.121575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.135254, -0.544170, 2.055653>,  <2.449541, -0.765873, 1.945782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.135254, -0.544170, 2.055653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617547, -0.728533, -0.296438,
		0.035808, -0.402542, 0.914701,
		-0.785718, 0.554256, 0.274676,
		1.899539, -0.377893, 2.138055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.147704, -1.204342, 2.486407>,  <2.449541, -0.765873, 1.945782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.147704, -1.204342, 2.486407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.879723, -0.937103, 2.356911>,  <1.718934, -0.776760, 2.279213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.879723, -0.937103, 2.356911>,  <2.147704, -1.204342, 2.486407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.879723, -0.937103, 2.356911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642396, -0.740272, -0.198303,
		-0.372142, 0.075116, 0.925131,
		-0.669953, 0.668098, -0.323741,
		1.678737, -0.736674, 2.259788>
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
