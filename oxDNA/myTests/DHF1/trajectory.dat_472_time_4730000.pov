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
	<1.827642, 3.936600, 2.118789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.080979, 4.155174, 2.337982>,  <2.232982, 4.286319, 2.469498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.080979, 4.155174, 2.337982>,  <1.827642, 3.936600, 2.118789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.080979, 4.155174, 2.337982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730176, -0.187385, -0.657062,
		-0.256358, 0.816269, -0.517673,
		0.633344, 0.546435, 0.547982,
		2.270983, 4.319105, 2.502377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.248610, 4.234230, 1.617365>,  <1.827642, 3.936600, 2.118789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.248610, 4.234230, 1.617365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.431389, 4.171675, 1.967621>,  <2.541056, 4.134141, 2.177774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.431389, 4.171675, 1.967621>,  <2.248610, 4.234230, 1.617365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.431389, 4.171675, 1.967621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766109, -0.431011, -0.476767,
		0.451971, 0.888691, -0.077139,
		0.456946, -0.156388, 0.875639,
		2.568473, 4.124758, 2.230312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.059588, 4.468958, 1.691397>,  <2.248610, 4.234230, 1.617365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.059588, 4.468958, 1.691397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.975827, 4.131269, 1.888756>,  <2.925570, 3.928656, 2.007171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.975827, 4.131269, 1.888756>,  <3.059588, 4.468958, 1.691397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.975827, 4.131269, 1.888756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754503, -0.460464, -0.467653,
		0.621994, 0.274342, 0.733389,
		-0.209402, -0.844221, 0.493398,
		2.913006, 3.878003, 2.036775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.691572, 4.290158, 2.165745>,  <3.059588, 4.468958, 1.691397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.691572, 4.290158, 2.165745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.435607, 4.044245, 1.981331>,  <3.282028, 3.896697, 1.870682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.435607, 4.044245, 1.981331>,  <3.691572, 4.290158, 2.165745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.435607, 4.044245, 1.981331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738815, -0.327204, -0.589144,
		0.211343, -0.717620, 0.663592,
		-0.639912, -0.614784, -0.461036,
		3.243633, 3.859810, 1.843020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.011258, 3.560225, 2.189673>,  <3.691572, 4.290158, 2.165745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.011258, 3.560225, 2.189673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.728893, 3.577044, 1.906853>,  <3.559475, 3.587135, 1.737160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.728893, 3.577044, 1.906853>,  <4.011258, 3.560225, 2.189673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.728893, 3.577044, 1.906853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638328, -0.394853, -0.660779,
		-0.306965, -0.917781, 0.251892,
		-0.705911, 0.042046, -0.707052,
		3.517120, 3.589657, 1.694737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.065798, 2.955602, 1.784026>,  <4.011258, 3.560225, 2.189673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.065798, 2.955602, 1.784026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.858360, 3.205606, 1.550644>,  <3.733898, 3.355609, 1.410614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.858360, 3.205606, 1.550644>,  <4.065798, 2.955602, 1.784026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.858360, 3.205606, 1.550644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533334, -0.296900, -0.792090,
		-0.668293, -0.721949, -0.179370,
		-0.518593, 0.625012, -0.583456,
		3.702782, 3.393110, 1.375607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.809115, 2.588491, 1.194867>,  <4.065798, 2.955602, 1.784026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.809115, 2.588491, 1.194867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.831238, 2.975431, 1.095932>,  <3.844512, 3.207595, 1.036571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.831238, 2.975431, 1.095932>,  <3.809115, 2.588491, 1.194867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.831238, 2.975431, 1.095932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424753, -0.246979, -0.870969,
		-0.903618, -0.056887, -0.424544,
		0.055307, 0.967350, -0.247337,
		3.847830, 3.265636, 1.021731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.555291, 2.588311, 0.550196>,  <3.809115, 2.588491, 1.194867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.555291, 2.588311, 0.550196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.785378, 2.911087, 0.603821>,  <3.923430, 3.104753, 0.635996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.785378, 2.911087, 0.603821>,  <3.555291, 2.588311, 0.550196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.785378, 2.911087, 0.603821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442851, -0.169405, -0.880446,
		-0.687756, 0.565818, -0.454799,
		0.575217, 0.806940, 0.134063,
		3.957943, 3.153169, 0.644040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.294415, 2.740839, -0.089270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.198389, 3.128777, -0.072449>,  <5.140773, 3.361539, -0.062356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.198389, 3.128777, -0.072449>,  <5.294415, 2.740839, -0.089270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.198389, 3.128777, -0.072449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705621, -0.204086, 0.678564,
		0.666684, 0.133226, 0.733337,
		-0.240066, 0.969845, 0.042054,
		5.126369, 3.419730, -0.059833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.038683, 2.976094, 0.562585>,  <5.294415, 2.740839, -0.089270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.038683, 2.976094, 0.562585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.887873, 3.251762, 0.315071>,  <4.797387, 3.417163, 0.166562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.887873, 3.251762, 0.315071>,  <5.038683, 2.976094, 0.562585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.887873, 3.251762, 0.315071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836668, 0.033154, 0.546706,
		0.397289, 0.723840, 0.564107,
		-0.377026, 0.689170, -0.618786,
		4.774765, 3.458513, 0.129435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.971970, 3.702291, 0.864784>,  <5.038683, 2.976094, 0.562585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.971970, 3.702291, 0.864784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.707439, 3.604359, 0.581177>,  <4.548721, 3.545599, 0.411013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.707439, 3.604359, 0.581177>,  <4.971970, 3.702291, 0.864784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.707439, 3.604359, 0.581177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749984, 0.199264, 0.630729,
		-0.013141, 0.948868, -0.315399,
		-0.661326, -0.244832, -0.709017,
		4.509042, 3.530909, 0.368472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.526740, 4.327025, 0.879471>,  <4.971970, 3.702291, 0.864784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.526740, 4.327025, 0.879471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.348475, 3.987263, 0.766411>,  <4.241515, 3.783405, 0.698575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.348475, 3.987263, 0.766411>,  <4.526740, 4.327025, 0.879471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.348475, 3.987263, 0.766411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788177, 0.222605, 0.573781,
		-0.424454, 0.478492, -0.768690,
		-0.445663, -0.849407, -0.282651,
		4.214776, 3.732440, 0.681616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.881067, 4.519903, 0.651249>,  <4.526740, 4.327025, 0.879471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.881067, 4.519903, 0.651249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.866447, 4.137779, 0.768585>,  <3.857676, 3.908505, 0.838987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.866447, 4.137779, 0.768585>,  <3.881067, 4.519903, 0.651249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.866447, 4.137779, 0.768585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844135, 0.186626, 0.502601,
		-0.534884, -0.229248, -0.813231,
		-0.036550, -0.955310, 0.293339,
		3.855483, 3.851186, 0.856587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.149902, 4.253746, 0.604258>,  <3.881067, 4.519903, 0.651249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.149902, 4.253746, 0.604258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.297098, 3.967346, 0.841553>,  <3.385416, 3.795506, 0.983929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.297098, 3.967346, 0.841553>,  <3.149902, 4.253746, 0.604258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.297098, 3.967346, 0.841553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755181, 0.142083, 0.639932,
		-0.542480, -0.683489, -0.488424,
		0.367990, -0.715999, 0.593235,
		3.407495, 3.752547, 1.019524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.643773, 3.663755, 0.729290>,  <3.149902, 4.253746, 0.604258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.643773, 3.663755, 0.729290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.912277, 3.637310, 1.024597>,  <3.073380, 3.621443, 1.201781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.912277, 3.637310, 1.024597>,  <2.643773, 3.663755, 0.729290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.912277, 3.637310, 1.024597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720440, 0.176001, 0.670813,
		-0.174285, -0.982167, 0.070512,
		0.671260, -0.066113, 0.738267,
		3.113655, 3.617476, 1.246077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.453115, 3.096375, 1.207014>,  <2.643773, 3.663755, 0.729290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.453115, 3.096375, 1.207014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.670242, 3.362377, 1.412193>,  <2.800519, 3.521979, 1.535301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.670242, 3.362377, 1.412193>,  <2.453115, 3.096375, 1.207014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.670242, 3.362377, 1.412193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642550, -0.064454, 0.763528,
		0.540812, -0.744051, 0.392313,
		0.542818, 0.665006, 0.512948,
		2.833088, 3.561879, 1.566078>
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
