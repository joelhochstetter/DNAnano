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
	<35.597958, 52.709709, 49.435642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764408, 53.054813, 49.320763>,  <35.864277, 53.261875, 49.251835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764408, 53.054813, 49.320763>,  <35.597958, 52.709709, 49.435642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764408, 53.054813, 49.320763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896463, -0.336342, 0.288491,
		0.152303, -0.377511, -0.913394,
		0.416122, 0.862763, -0.287199,
		35.889244, 53.313641, 49.234604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281662, 52.624878, 49.073723>,  <35.597958, 52.709709, 49.435642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281662, 52.624878, 49.073723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276173, 52.987526, 49.242416>,  <36.272881, 53.205112, 49.343632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276173, 52.987526, 49.242416>,  <36.281662, 52.624878, 49.073723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276173, 52.987526, 49.242416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833170, -0.222831, 0.506136,
		0.552847, 0.358323, -0.752307,
		-0.013723, 0.906615, 0.421735,
		36.272057, 53.259510, 49.368938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912674, 53.065323, 48.995911>,  <36.281662, 52.624878, 49.073723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912674, 53.065323, 48.995911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729233, 53.102684, 49.349400>,  <36.619167, 53.125099, 49.561493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729233, 53.102684, 49.349400>,  <36.912674, 53.065323, 48.995911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729233, 53.102684, 49.349400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800213, -0.389066, 0.456384,
		0.386452, 0.916463, 0.103686,
		-0.458600, 0.093399, 0.883721,
		36.591652, 53.130703, 49.614517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494331, 52.875446, 48.543110>,  <36.912674, 53.065323, 48.995911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494331, 52.875446, 48.543110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791767, 52.685879, 48.354435>,  <37.970226, 52.572140, 48.241230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791767, 52.685879, 48.354435>,  <37.494331, 52.875446, 48.543110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791767, 52.685879, 48.354435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203527, 0.832385, -0.515472,
		0.636913, 0.287297, 0.715404,
		0.743585, -0.473914, -0.471684,
		38.014843, 52.543705, 48.212929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176548, 53.197639, 48.696247>,  <37.494331, 52.875446, 48.543110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176548, 53.197639, 48.696247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169426, 53.013599, 48.341171>,  <38.165154, 52.903175, 48.128128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169426, 53.013599, 48.341171>,  <38.176548, 53.197639, 48.696247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169426, 53.013599, 48.341171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391303, 0.813804, -0.429657,
		0.920090, -0.355007, 0.165547,
		-0.017809, -0.460102, -0.887688,
		38.164082, 52.875568, 48.074863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554153, 53.726921, 48.764999>,  <38.176548, 53.197639, 48.696247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554153, 53.726921, 48.764999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692932, 54.050243, 48.574730>,  <38.776199, 54.244236, 48.460567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692932, 54.050243, 48.574730>,  <38.554153, 53.726921, 48.764999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692932, 54.050243, 48.574730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636505, 0.169566, 0.752402,
		0.688832, -0.563811, -0.455663,
		0.346947, 0.808310, -0.475670,
		38.797016, 54.292736, 48.432030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252998, 53.627876, 48.689812>,  <38.554153, 53.726921, 48.764999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252998, 53.627876, 48.689812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174046, 54.019356, 48.712429>,  <39.126675, 54.254242, 48.726002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174046, 54.019356, 48.712429>,  <39.252998, 53.627876, 48.689812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174046, 54.019356, 48.712429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689766, 0.097661, 0.717415,
		0.696608, 0.180610, -0.694347,
		-0.197383, 0.978694, 0.056547,
		39.114830, 54.312965, 48.729393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927452, 54.071251, 48.775318>,  <39.252998, 53.627876, 48.689812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927452, 54.071251, 48.775318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630505, 54.290905, 48.928856>,  <39.452335, 54.422695, 49.020981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630505, 54.290905, 48.928856>,  <39.927452, 54.071251, 48.775318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630505, 54.290905, 48.928856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621420, 0.350193, 0.700858,
		0.250443, 0.758828, -0.601215,
		-0.742372, 0.549132, 0.383847,
		39.407791, 54.455643, 49.044010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187649, 54.797634, 49.051994>,  <39.927452, 54.071251, 48.775318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187649, 54.797634, 49.051994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870598, 54.649540, 49.245766>,  <39.680367, 54.560684, 49.362026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870598, 54.649540, 49.245766>,  <40.187649, 54.797634, 49.051994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870598, 54.649540, 49.245766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484513, 0.099832, 0.869069,
		-0.370122, 0.923557, 0.100255,
		-0.792626, -0.370237, 0.484426,
		39.632809, 54.538467, 49.391094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955811, 55.154381, 49.649323>,  <40.187649, 54.797634, 49.051994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955811, 55.154381, 49.649323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897541, 54.761883, 49.699814>,  <39.862579, 54.526382, 49.730110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897541, 54.761883, 49.699814>,  <39.955811, 55.154381, 49.649323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897541, 54.761883, 49.699814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628973, 0.006630, 0.777399,
		-0.763656, 0.192646, 0.616211,
		-0.145677, -0.981246, 0.126232,
		39.853836, 54.467510, 49.737682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086845, 55.032917, 50.358086>,  <39.955811, 55.154381, 49.649323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086845, 55.032917, 50.358086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115189, 54.636402, 50.313667>,  <40.132195, 54.398495, 50.287018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.115189, 54.636402, 50.313667>,  <40.086845, 55.032917, 50.358086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115189, 54.636402, 50.313667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331137, -0.081637, 0.940045,
		-0.940918, -0.103382, 0.322466,
		0.070859, -0.991286, -0.111047,
		40.136448, 54.339016, 50.280354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879089, 54.772060, 51.012047>,  <40.086845, 55.032917, 50.358086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879089, 54.772060, 51.012047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106327, 54.505505, 50.818886>,  <40.242672, 54.345570, 50.702991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106327, 54.505505, 50.818886>,  <39.879089, 54.772060, 51.012047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106327, 54.505505, 50.818886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580858, -0.090992, 0.808904,
		-0.582984, -0.740031, 0.335385,
		0.568097, -0.666389, -0.482899,
		40.276756, 54.305588, 50.674015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941147, 54.105186, 51.423782>,  <39.879089, 54.772060, 51.012047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941147, 54.105186, 51.423782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250263, 54.161797, 51.176308>,  <40.435734, 54.195763, 51.027824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250263, 54.161797, 51.176308>,  <39.941147, 54.105186, 51.423782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250263, 54.161797, 51.176308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630578, -0.281667, 0.723212,
		-0.071907, -0.949017, -0.306914,
		0.772788, 0.141529, -0.618683,
		40.482101, 54.204254, 50.990704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522495, 53.543983, 51.417568>,  <39.941147, 54.105186, 51.423782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522495, 53.543983, 51.417568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757767, 53.833572, 51.273396>,  <40.898930, 54.007324, 51.186893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757767, 53.833572, 51.273396>,  <40.522495, 53.543983, 51.417568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757767, 53.833572, 51.273396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755029, -0.331876, 0.565500,
		0.289787, -0.604751, -0.741822,
		0.588179, 0.723971, -0.360431,
		40.934219, 54.050762, 51.165268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180653, 53.291916, 51.158478>,  <40.522495, 53.543983, 51.417568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180653, 53.291916, 51.158478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218658, 53.671631, 51.278362>,  <41.241463, 53.899460, 51.350292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218658, 53.671631, 51.278362>,  <41.180653, 53.291916, 51.158478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218658, 53.671631, 51.278362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807315, -0.249629, 0.534722,
		0.582421, 0.191150, -0.790094,
		0.095018, 0.949288, 0.299708,
		41.247166, 53.956417, 51.368275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863735, 53.558308, 51.068615>,  <41.180653, 53.291916, 51.158478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863735, 53.558308, 51.068615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723179, 53.787971, 51.364418>,  <41.638847, 53.925770, 51.541901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.723179, 53.787971, 51.364418>,  <41.863735, 53.558308, 51.068615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723179, 53.787971, 51.364418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836214, -0.162747, 0.523697,
		0.421038, 0.802406, -0.422933,
		-0.351387, 0.574159, 0.739506,
		41.617764, 53.960220, 51.586269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425999, 54.019699, 51.312767>,  <41.863735, 53.558308, 51.068615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425999, 54.019699, 51.312767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146671, 53.931107, 51.585030>,  <41.979073, 53.877953, 51.748386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146671, 53.931107, 51.585030>,  <42.425999, 54.019699, 51.312767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146671, 53.931107, 51.585030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706333, -0.367234, 0.605172,
		0.115928, 0.903375, 0.412885,
		-0.698323, -0.221478, 0.680656,
		41.937176, 53.864662, 51.789227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401321, 54.438351, 51.897789>,  <42.425999, 54.019699, 51.312767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401321, 54.438351, 51.897789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.753513, 54.363361, 51.723610>,  <42.964828, 54.318367, 51.619102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.753513, 54.363361, 51.723610>,  <42.401321, 54.438351, 51.897789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.753513, 54.363361, 51.723610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391940, -0.228898, 0.891060,
		-0.266724, -0.955227, -0.128061,
		0.880478, -0.187475, -0.435444,
		43.017658, 54.307121, 51.592976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.711388, 54.246040, 52.506302>,  <42.401321, 54.438351, 51.897789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.711388, 54.246040, 52.506302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967033, 54.234020, 52.198891>,  <43.120419, 54.226810, 52.014442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.967033, 54.234020, 52.198891>,  <42.711388, 54.246040, 52.506302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.967033, 54.234020, 52.198891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757090, -0.151420, 0.635521,
		-0.135464, -0.988013, -0.074028,
		0.639112, -0.030044, -0.768527,
		43.158768, 54.225006, 51.968334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307796, 53.811371, 52.691158>,  <42.711388, 54.246040, 52.506302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307796, 53.811371, 52.691158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422066, 54.083778, 52.421463>,  <43.490627, 54.247223, 52.259647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422066, 54.083778, 52.421463>,  <43.307796, 53.811371, 52.691158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422066, 54.083778, 52.421463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749364, 0.279810, 0.600133,
		0.597363, -0.676693, -0.430399,
		0.285676, 0.681023, -0.674238,
		43.507767, 54.288086, 52.219193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899612, 53.674664, 52.697639>,  <43.307796, 53.811371, 52.691158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899612, 53.674664, 52.697639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872822, 54.045383, 52.549820>,  <43.856747, 54.267815, 52.461128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.872822, 54.045383, 52.549820>,  <43.899612, 53.674664, 52.697639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.872822, 54.045383, 52.549820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785507, 0.277353, 0.553221,
		0.615217, -0.253227, -0.746581,
		-0.066976, 0.926796, -0.369544,
		43.852730, 54.323421, 52.438957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.172489, 52.943573, 52.596378>,  <43.899612, 53.674664, 52.697639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.172489, 52.943573, 52.596378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.304520, 53.275867, 52.417080>,  <44.383736, 53.475246, 52.309502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.304520, 53.275867, 52.417080>,  <44.172489, 52.943573, 52.596378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.304520, 53.275867, 52.417080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934157, -0.219230, 0.281582,
		0.135654, -0.511673, -0.848404,
		0.330073, 0.830740, -0.448243,
		44.403542, 53.525089, 52.282608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816124, 52.817234, 52.412071>,  <44.172489, 52.943573, 52.596378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816124, 52.817234, 52.412071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808300, 53.214130, 52.362946>,  <44.803604, 53.452267, 52.333469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808300, 53.214130, 52.362946>,  <44.816124, 52.817234, 52.412071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.808300, 53.214130, 52.362946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955150, 0.054846, 0.290998,
		0.295475, -0.111614, -0.948808,
		-0.019558, 0.992237, -0.122814,
		44.802433, 53.511803, 52.326103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201580, 52.935703, 51.833378>,  <44.816124, 52.817234, 52.412071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201580, 52.935703, 51.833378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174000, 53.242165, 52.088959>,  <45.157452, 53.426041, 52.242306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174000, 53.242165, 52.088959>,  <45.201580, 52.935703, 51.833378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174000, 53.242165, 52.088959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992205, -0.013975, 0.123832,
		0.103803, 0.642508, -0.759216,
		-0.068953, 0.766151, 0.638950,
		45.153313, 53.472012, 52.280643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.807335, 52.948914, 52.189964>,  <45.201580, 52.935703, 51.833378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.807335, 52.948914, 52.189964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.668564, 53.303268, 52.313148>,  <45.585300, 53.515881, 52.387058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.668564, 53.303268, 52.313148>,  <45.807335, 52.948914, 52.189964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.668564, 53.303268, 52.313148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916402, 0.250301, 0.312341,
		0.199618, 0.390574, -0.898668,
		-0.346930, 0.885890, 0.307958,
		45.564484, 53.569035, 52.405537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.230385, 53.520672, 52.059341>,  <45.807335, 52.948914, 52.189964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.230385, 53.520672, 52.059341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.053204, 53.583439, 52.412422>,  <45.946896, 53.621098, 52.624271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.053204, 53.583439, 52.412422>,  <46.230385, 53.520672, 52.059341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.053204, 53.583439, 52.412422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886216, 0.225644, 0.404606,
		-0.135688, 0.961489, -0.239012,
		-0.442956, 0.156916, 0.882704,
		45.920315, 53.630512, 52.677235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228592, 54.221504, 52.198952>,  <46.230385, 53.520672, 52.059341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228592, 54.221504, 52.198952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.259937, 53.970882, 52.509125>,  <46.278744, 53.820511, 52.695229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.259937, 53.970882, 52.509125>,  <46.228592, 54.221504, 52.198952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.259937, 53.970882, 52.509125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942146, 0.300829, 0.147858,
		-0.325913, 0.718983, 0.613876,
		0.078365, -0.626550, 0.775432,
		46.283447, 53.782917, 52.741753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.493271, 54.558979, 52.789780>,  <46.228592, 54.221504, 52.198952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.493271, 54.558979, 52.789780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.582253, 54.169434, 52.771408>,  <46.635643, 53.935707, 52.760384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.582253, 54.169434, 52.771408>,  <46.493271, 54.558979, 52.789780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.582253, 54.169434, 52.771408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959370, 0.210271, 0.188137,
		-0.173562, -0.085915, 0.981068,
		0.222454, -0.973861, -0.045930,
		46.648991, 53.877274, 52.757629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.139633, 54.528774, 53.072910>,  <46.493271, 54.558979, 52.789780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.139633, 54.528774, 53.072910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.107704, 54.156322, 52.930569>,  <47.088547, 53.932854, 52.845165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.107704, 54.156322, 52.930569>,  <47.139633, 54.528774, 53.072910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.107704, 54.156322, 52.930569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934184, -0.194421, 0.299167,
		-0.347748, -0.308548, 0.885364,
		-0.079826, -0.931128, -0.355850,
		47.083755, 53.876984, 52.823814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.687870, 54.828438, 53.332760>,  <47.139633, 54.528774, 53.072910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.687870, 54.828438, 53.332760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.456757, 55.056263, 53.566601>,  <47.318089, 55.192959, 53.706905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.456757, 55.056263, 53.566601>,  <47.687870, 54.828438, 53.332760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.456757, 55.056263, 53.566601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752316, 0.649412, 0.110838,
		-0.316521, 0.503848, -0.803711,
		-0.577785, 0.569562, 0.584606,
		47.283421, 55.227131, 53.741982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.447426, 54.605480, 53.441597>,  <47.687870, 54.828438, 53.332760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.447426, 54.605480, 53.441597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.731716, 54.834866, 53.604576>,  <48.902290, 54.972496, 53.702362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.731716, 54.834866, 53.604576>,  <48.447426, 54.605480, 53.441597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.731716, 54.834866, 53.604576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149756, 0.442582, -0.884135,
		-0.687344, 0.689396, 0.228675,
		0.710726, 0.573459, 0.407447,
		48.944935, 55.006905, 53.726810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.331367, 55.366375, 53.279949>,  <48.447426, 54.605480, 53.441597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.331367, 55.366375, 53.279949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.712807, 55.267242, 53.348335>,  <48.941669, 55.207764, 53.389366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.712807, 55.267242, 53.348335>,  <48.331367, 55.366375, 53.279949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.712807, 55.267242, 53.348335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249934, 0.335007, -0.908462,
		0.167873, 0.909038, 0.381404,
		0.953599, -0.247832, 0.170961,
		48.998886, 55.192894, 53.399624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.827503, 55.853977, 53.272228>,  <48.331367, 55.366375, 53.279949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.827503, 55.853977, 53.272228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.995827, 55.524132, 53.121006>,  <49.096821, 55.326225, 53.030273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.995827, 55.524132, 53.121006>,  <48.827503, 55.853977, 53.272228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.995827, 55.524132, 53.121006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014213, 0.410708, -0.911656,
		0.907037, 0.389009, 0.161110,
		0.420812, -0.824616, -0.378056,
		49.122070, 55.276749, 53.007587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.344311, 56.179230, 53.042553>,  <48.827503, 55.853977, 53.272228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.344311, 56.179230, 53.042553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.208862, 55.846783, 52.866112>,  <49.127594, 55.647316, 52.760246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.208862, 55.846783, 52.866112>,  <49.344311, 56.179230, 53.042553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.208862, 55.846783, 52.866112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206966, 0.523113, -0.826751,
		0.917877, -0.188664, -0.349152,
		-0.338624, -0.831119, -0.441107,
		49.107277, 55.597446, 52.733780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.865429, 55.836826, 52.374405>,  <49.344311, 56.179230, 53.042553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.865429, 55.836826, 52.374405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.467518, 55.824844, 52.413425>,  <49.228771, 55.817654, 52.436840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.467518, 55.824844, 52.413425>,  <49.865429, 55.836826, 52.374405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.467518, 55.824844, 52.413425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098496, 0.532008, -0.840991,
		-0.026707, -0.846209, -0.532181,
		-0.994779, -0.029957, 0.097556,
		49.169083, 55.815857, 52.442692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.473522, 56.242218, 52.704407>,  <49.865429, 55.836826, 52.374405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.473522, 56.242218, 52.704407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.702389, 56.364311, 52.399921>,  <50.839710, 56.437569, 52.217228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.702389, 56.364311, 52.399921>,  <50.473522, 56.242218, 52.704407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.702389, 56.364311, 52.399921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809461, -0.359430, 0.464308,
		-0.131880, -0.881840, -0.452733,
		0.572171, 0.305236, -0.761217,
		50.874039, 56.455883, 52.171555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.876125, 55.659904, 52.543633>,  <50.473522, 56.242218, 52.704407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.876125, 55.659904, 52.543633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.081402, 55.968761, 52.393738>,  <51.204567, 56.154076, 52.303802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.081402, 55.968761, 52.393738>,  <50.876125, 55.659904, 52.543633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.081402, 55.968761, 52.393738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855687, -0.494177, 0.153586,
		-0.066596, -0.399477, -0.914321,
		0.513190, 0.772144, -0.374738,
		51.235359, 56.200405, 52.281315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.398693, 55.481205, 52.067577>,  <50.876125, 55.659904, 52.543633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.398693, 55.481205, 52.067577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.517456, 55.826302, 52.231293>,  <51.588715, 56.033360, 52.329521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.517456, 55.826302, 52.231293>,  <51.398693, 55.481205, 52.067577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.517456, 55.826302, 52.231293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899157, -0.396899, 0.184357,
		0.321500, 0.313279, -0.893585,
		0.296908, 0.862744, 0.409290,
		51.606529, 56.085125, 52.354080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.019611, 55.681534, 51.806648>,  <51.398693, 55.481205, 52.067577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.019611, 55.681534, 51.806648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.009346, 55.788734, 52.191879>,  <52.003185, 55.853054, 52.423016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.009346, 55.788734, 52.191879>,  <52.019611, 55.681534, 51.806648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.009346, 55.788734, 52.191879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798112, -0.574624, 0.181177,
		0.601963, 0.773292, -0.199150,
		-0.025667, 0.268006, 0.963075,
		52.001648, 55.869137, 52.480801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.722473, 55.948982, 52.177994>,  <52.019611, 55.681534, 51.806648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.722473, 55.948982, 52.177994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.481842, 55.759865, 52.435543>,  <52.337463, 55.646393, 52.590073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.481842, 55.759865, 52.435543>,  <52.722473, 55.948982, 52.177994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.481842, 55.759865, 52.435543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790646, -0.467396, 0.395500,
		0.113952, 0.746997, 0.654989,
		-0.601576, -0.472797, 0.643870,
		52.301369, 55.618027, 52.628704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.116055, 55.874516, 52.687683>,  <52.722473, 55.948982, 52.177994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.116055, 55.874516, 52.687683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.822510, 55.606472, 52.732227>,  <52.646381, 55.445644, 52.758953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.822510, 55.606472, 52.732227>,  <53.116055, 55.874516, 52.687683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.822510, 55.606472, 52.732227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640633, -0.628206, 0.441527,
		-0.225913, 0.395361, 0.890311,
		-0.733861, -0.670109, 0.111362,
		52.602352, 55.405437, 52.765636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.434921, 56.005894, 53.294960>,  <53.116055, 55.874516, 52.687683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.434921, 56.005894, 53.294960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.651588, 55.992252, 53.630920>,  <53.781590, 55.984066, 53.832497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.651588, 55.992252, 53.630920>,  <53.434921, 56.005894, 53.294960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.651588, 55.992252, 53.630920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839630, 0.069706, -0.538667,
		-0.040175, 0.996984, 0.066392,
		0.541671, -0.034104, 0.839899,
		53.814091, 55.982021, 53.882889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.883102, 56.601978, 53.411064>,  <53.434921, 56.005894, 53.294960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.883102, 56.601978, 53.411064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.031670, 56.267410, 53.572285>,  <54.120811, 56.066669, 53.669018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.031670, 56.267410, 53.572285>,  <53.883102, 56.601978, 53.411064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.031670, 56.267410, 53.572285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763802, 0.028447, -0.644823,
		0.527876, 0.547352, 0.649424,
		0.371419, -0.836419, 0.403052,
		54.143097, 56.016483, 53.693199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.628563, 56.696201, 53.623409>,  <53.883102, 56.601978, 53.411064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.628563, 56.696201, 53.623409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.550285, 56.309402, 53.558151>,  <54.503319, 56.077324, 53.518997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.550285, 56.309402, 53.558151>,  <54.628563, 56.696201, 53.623409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.550285, 56.309402, 53.558151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808895, -0.065117, -0.584337,
		0.554429, -0.246318, 0.794944,
		-0.195697, -0.966999, -0.163143,
		54.491577, 56.019302, 53.509209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.228912, 56.260784, 53.782864>,  <54.628563, 56.696201, 53.623409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.228912, 56.260784, 53.782864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.964050, 56.166393, 53.498367>,  <54.805134, 56.109760, 53.327671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.964050, 56.166393, 53.498367>,  <55.228912, 56.260784, 53.782864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.964050, 56.166393, 53.498367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728602, 0.019132, -0.684670,
		0.175174, -0.971570, 0.159264,
		-0.662157, -0.235976, -0.711240,
		54.765404, 56.095600, 53.284996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.452751, 55.667183, 53.490681>,  <55.228912, 56.260784, 53.782864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.452751, 55.667183, 53.490681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.233086, 55.874153, 53.228172>,  <55.101288, 55.998333, 53.070667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.233086, 55.874153, 53.228172>,  <55.452751, 55.667183, 53.490681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.233086, 55.874153, 53.228172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767221, 0.000791, -0.641383,
		-0.331347, -0.855729, -0.397412,
		-0.549164, 0.517423, -0.656271,
		55.068336, 56.029381, 53.031292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.650944, 55.122204, 53.817818>,  <55.452751, 55.667183, 53.490681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.650944, 55.122204, 53.817818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.041359, 55.159752, 53.896347>,  <56.275608, 55.182281, 53.943466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.041359, 55.159752, 53.896347>,  <55.650944, 55.122204, 53.817818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.041359, 55.159752, 53.896347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172563, 0.883518, 0.435450,
		-0.132579, -0.458893, 0.878544,
		0.976035, 0.093873, 0.196324,
		56.334171, 55.187912, 53.955246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.760548, 55.366753, 54.536930>,  <55.650944, 55.122204, 53.817818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.760548, 55.366753, 54.536930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.102615, 55.470913, 54.357655>,  <56.307858, 55.533409, 54.250088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.102615, 55.470913, 54.357655>,  <55.760548, 55.366753, 54.536930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.102615, 55.470913, 54.357655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022545, 0.845149, 0.534056,
		0.517853, -0.466814, 0.716877,
		0.855172, 0.260401, -0.448187,
		56.359169, 55.549034, 54.223198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.141438, 55.957016, 54.829567>,  <55.760548, 55.366753, 54.536930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.141438, 55.957016, 54.829567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.443810, 55.956997, 54.567703>,  <56.625233, 55.956985, 54.410587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.443810, 55.956997, 54.567703>,  <56.141438, 55.957016, 54.829567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.443810, 55.956997, 54.567703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224859, 0.939179, 0.259579,
		0.614827, -0.343428, 0.709961,
		0.755928, -0.000045, -0.654655,
		56.670589, 55.956982, 54.371307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.622284, 56.433754, 55.134266>,  <56.141438, 55.957016, 54.829567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.622284, 56.433754, 55.134266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.672188, 56.415108, 54.737831>,  <56.702129, 56.403919, 54.499969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.672188, 56.415108, 54.737831>,  <56.622284, 56.433754, 55.134266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.672188, 56.415108, 54.737831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203728, 0.978815, -0.020391,
		0.971046, -0.199369, 0.131613,
		0.124759, -0.046613, -0.991092,
		56.709614, 56.401123, 54.440502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.206032, 56.811745, 55.019650>,  <56.622284, 56.433754, 55.134266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.206032, 56.811745, 55.019650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.992996, 56.798145, 54.681374>,  <56.865177, 56.789986, 54.478409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.992996, 56.798145, 54.681374>,  <57.206032, 56.811745, 55.019650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.992996, 56.798145, 54.681374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146287, 0.987853, 0.052415,
		0.833637, 0.151630, -0.531091,
		-0.532587, -0.033996, -0.845692,
		56.833221, 56.787945, 54.427666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.509064, 57.327991, 54.649292>,  <57.206032, 56.811745, 55.019650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.509064, 57.327991, 54.649292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.130577, 57.242523, 54.552109>,  <56.903484, 57.191242, 54.493801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.130577, 57.242523, 54.552109>,  <57.509064, 57.327991, 54.649292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.130577, 57.242523, 54.552109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227904, 0.973166, 0.031742,
		0.229654, 0.085405, -0.969518,
		-0.946213, -0.213667, -0.242955,
		56.846714, 57.178425, 54.479221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.293938, 57.771358, 54.123177>,  <57.509064, 57.327991, 54.649292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.293938, 57.771358, 54.123177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.950729, 57.668510, 54.301025>,  <56.744804, 57.606800, 54.407734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.950729, 57.668510, 54.301025>,  <57.293938, 57.771358, 54.123177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.950729, 57.668510, 54.301025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265045, 0.963161, 0.045513,
		-0.439943, -0.078793, -0.894562,
		-0.858021, -0.257123, 0.444620,
		56.693321, 57.591373, 54.434410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.711143, 58.185570, 53.906868>,  <57.293938, 57.771358, 54.123177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.711143, 58.185570, 53.906868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.618149, 58.099808, 54.286339>,  <56.562351, 58.048351, 54.514019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.618149, 58.099808, 54.286339>,  <56.711143, 58.185570, 53.906868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.618149, 58.099808, 54.286339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141711, 0.972457, 0.185054,
		-0.962221, -0.091416, -0.256463,
		-0.232483, -0.214407, 0.948674,
		56.548405, 58.035484, 54.570942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.778812, 58.505520, 54.678730>,  <56.711143, 58.185570, 53.906868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.778812, 58.505520, 54.678730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.865944, 58.668480, 54.323975>,  <56.918224, 58.766254, 54.111122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.865944, 58.668480, 54.323975>,  <56.778812, 58.505520, 54.678730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.865944, 58.668480, 54.323975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782403, 0.470324, 0.408215,
		0.583433, -0.782830, -0.216297,
		0.217833, 0.407397, -0.886891,
		56.931293, 58.790699, 54.057907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.476711, 58.384430, 54.465893>,  <56.778812, 58.505520, 54.678730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.476711, 58.384430, 54.465893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.385551, 58.760002, 54.362770>,  <57.330856, 58.985348, 54.300896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.385551, 58.760002, 54.362770>,  <57.476711, 58.384430, 54.465893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.385551, 58.760002, 54.362770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824000, 0.327041, 0.462676,
		0.518735, -0.106987, -0.848215,
		-0.227901, 0.938934, -0.257805,
		57.317181, 59.041683, 54.285427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.013302, 58.785507, 54.183491>,  <57.476711, 58.384430, 54.465893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.013302, 58.785507, 54.183491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.755562, 59.011375, 54.389778>,  <57.600918, 59.146896, 54.513550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.755562, 59.011375, 54.389778>,  <58.013302, 58.785507, 54.183491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.755562, 59.011375, 54.389778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751549, 0.342890, 0.563560,
		0.141391, 0.750716, -0.645317,
		-0.644346, 0.564670, 0.515718,
		57.562260, 59.180775, 54.544495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.361195, 59.356949, 54.311443>,  <58.013302, 58.785507, 54.183491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.361195, 59.356949, 54.311443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.063492, 59.340336, 54.578087>,  <57.884872, 59.330368, 54.738071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.063492, 59.340336, 54.578087>,  <58.361195, 59.356949, 54.311443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.063492, 59.340336, 54.578087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631641, 0.280594, 0.722701,
		-0.217062, 0.958927, -0.182598,
		-0.744253, -0.041534, 0.666605,
		57.840218, 59.327877, 54.778069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.846836, 58.887218, 54.132160>,  <58.361195, 59.356949, 54.311443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.846836, 58.887218, 54.132160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.954552, 59.095428, 53.808052>,  <59.019180, 59.220356, 53.613586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.954552, 59.095428, 53.808052>,  <58.846836, 58.887218, 54.132160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.954552, 59.095428, 53.808052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960223, -0.209649, 0.184441,
		-0.073867, -0.827709, -0.556275,
		0.269286, 0.520524, -0.810272,
		59.035339, 59.251587, 53.564972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.318039, 58.492683, 53.939346>,  <58.846836, 58.887218, 54.132160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.318039, 58.492683, 53.939346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.345604, 58.868782, 53.805962>,  <59.362141, 59.094440, 53.725933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.345604, 58.868782, 53.805962>,  <59.318039, 58.492683, 53.939346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.345604, 58.868782, 53.805962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995197, -0.041492, 0.088661,
		0.069527, -0.337965, -0.938587,
		0.068908, 0.940244, -0.333457,
		59.366276, 59.150856, 53.705925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.741875, 58.459473, 53.428917>,  <59.318039, 58.492683, 53.939346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.741875, 58.459473, 53.428917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.751770, 58.829784, 53.579819>,  <59.757706, 59.051971, 53.670361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.751770, 58.829784, 53.579819>,  <59.741875, 58.459473, 53.428917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.751770, 58.829784, 53.579819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997252, -0.049211, 0.055378,
		0.069833, 0.374847, -0.924453,
		0.024735, 0.925780, 0.377254,
		59.759190, 59.107517, 53.692993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.290024, 58.703667, 53.028812>,  <59.741875, 58.459473, 53.428917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.290024, 58.703667, 53.028812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.281731, 58.846573, 53.402321>,  <60.276756, 58.932316, 53.626427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.281731, 58.846573, 53.402321>,  <60.290024, 58.703667, 53.028812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.281731, 58.846573, 53.402321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996106, 0.087432, -0.011336,
		-0.085691, 0.929903, -0.357683,
		-0.020731, 0.357262, 0.933774,
		60.275513, 58.953751, 53.682453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.696484, 59.342518, 53.051590>,  <60.290024, 58.703667, 53.028812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.696484, 59.342518, 53.051590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.678215, 59.176895, 53.415234>,  <60.667252, 59.077522, 53.633419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.678215, 59.176895, 53.415234>,  <60.696484, 59.342518, 53.051590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.678215, 59.176895, 53.415234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984918, 0.133367, 0.110225,
		-0.166884, 0.900428, 0.401721,
		-0.045673, -0.414057, 0.909105,
		60.664513, 59.052677, 53.687965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.341179, 59.590397, 53.136345>,  <60.696484, 59.342518, 53.051590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.341179, 59.590397, 53.136345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.237206, 59.396179, 53.470215>,  <61.174824, 59.279648, 53.670536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.237206, 59.396179, 53.470215>,  <61.341179, 59.590397, 53.136345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.237206, 59.396179, 53.470215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899499, 0.192623, 0.392170,
		-0.351195, 0.852725, 0.386682,
		-0.259930, -0.485548, 0.834673,
		61.159225, 59.250515, 53.720615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.328350, 60.110992, 53.673664>,  <61.341179, 59.590397, 53.136345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.328350, 60.110992, 53.673664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.413216, 59.759399, 53.844486>,  <61.464134, 59.548443, 53.946980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.413216, 59.759399, 53.844486>,  <61.328350, 60.110992, 53.673664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.413216, 59.759399, 53.844486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884563, 0.358486, 0.298389,
		-0.415372, 0.314450, 0.853573,
		0.212166, -0.878982, 0.427056,
		61.476864, 59.495705, 53.972603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.677223, 60.235542, 54.371975>,  <61.328350, 60.110992, 53.673664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.677223, 60.235542, 54.371975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.796059, 59.871948, 54.255028>,  <61.867359, 59.653790, 54.184860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.796059, 59.871948, 54.255028>,  <61.677223, 60.235542, 54.371975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.796059, 59.871948, 54.255028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921605, 0.192883, 0.336810,
		-0.249763, -0.369512, 0.895031,
		0.297091, -0.908987, -0.292369,
		61.885185, 59.599251, 54.167316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.121189, 59.972473, 54.969418>,  <61.677223, 60.235542, 54.371975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.121189, 59.972473, 54.969418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.195930, 59.811989, 54.610725>,  <62.240776, 59.715698, 54.395512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.195930, 59.811989, 54.610725>,  <62.121189, 59.972473, 54.969418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.195930, 59.811989, 54.610725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977420, -0.015757, 0.210718,
		-0.098671, -0.915852, 0.389204,
		0.186854, -0.401208, -0.896726,
		62.251987, 59.691628, 54.341709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.468449, 59.252998, 54.963028>,  <62.121189, 59.972473, 54.969418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.468449, 59.252998, 54.963028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.557892, 59.481853, 54.647392>,  <62.611557, 59.619167, 54.458012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.557892, 59.481853, 54.647392>,  <62.468449, 59.252998, 54.963028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.557892, 59.481853, 54.647392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967152, -0.029826, 0.252443,
		0.120897, -0.819616, -0.560012,
		0.223609, 0.572136, -0.789088,
		62.624973, 59.653496, 54.410667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.876053, 58.887455, 54.431980>,  <62.468449, 59.252998, 54.963028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.876053, 58.887455, 54.431980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.940735, 59.281647, 54.452667>,  <62.979546, 59.518162, 54.465080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.940735, 59.281647, 54.452667>,  <62.876053, 58.887455, 54.431980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.940735, 59.281647, 54.452667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980778, -0.154692, -0.118936,
		-0.109209, 0.069956, -0.991554,
		0.161706, 0.985483, 0.051717,
		62.989246, 59.577293, 54.468182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.339569, 59.063278, 53.879459>,  <62.876053, 58.887455, 54.431980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.339569, 59.063278, 53.879459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.374321, 59.339149, 54.167015>,  <63.395172, 59.504673, 54.339550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.374321, 59.339149, 54.167015>,  <63.339569, 59.063278, 53.879459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.374321, 59.339149, 54.167015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995874, -0.041119, -0.080901,
		-0.026235, 0.722951, -0.690401,
		0.086876, 0.689674, 0.718889,
		63.400383, 59.546051, 54.382683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.066315, 59.242786, 53.948116>,  <63.339569, 59.063278, 53.879459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.066315, 59.242786, 53.948116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.970917, 59.532253, 54.207169>,  <63.913681, 59.705933, 54.362598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.970917, 59.532253, 54.207169>,  <64.066315, 59.242786, 53.948116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.970917, 59.532253, 54.207169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970563, 0.200697, 0.133146,
		-0.033624, 0.660320, -0.750231,
		-0.238488, 0.723670, 0.647630,
		63.899372, 59.749355, 54.401459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.561958, 59.743717, 53.869987>,  <64.066315, 59.242786, 53.948116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.561958, 59.743717, 53.869987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.398430, 59.764172, 54.234459>,  <64.300316, 59.776443, 54.453140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.398430, 59.764172, 54.234459>,  <64.561958, 59.743717, 53.869987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.398430, 59.764172, 54.234459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901382, 0.178787, 0.394394,
		-0.142740, 0.982558, -0.119183,
		-0.408823, 0.051134, 0.911180,
		64.275780, 59.779510, 54.507812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.793892, 60.179184, 54.313766>,  <64.561958, 59.743717, 53.869987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.793892, 60.179184, 54.313766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.663200, 59.945114, 54.610634>,  <64.584785, 59.804672, 54.788754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.663200, 59.945114, 54.610634>,  <64.793892, 60.179184, 54.313766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.663200, 59.945114, 54.610634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854984, 0.151677, 0.495980,
		-0.402807, 0.796593, 0.450761,
		-0.326724, -0.585178, 0.742171,
		64.565186, 59.769562, 54.833286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.686569, 60.496178, 55.063042>,  <64.793892, 60.179184, 54.313766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.686569, 60.496178, 55.063042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.812157, 60.117073, 55.040535>,  <64.887505, 59.889610, 55.027031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.812157, 60.117073, 55.040535>,  <64.686569, 60.496178, 55.063042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.812157, 60.117073, 55.040535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897861, 0.277122, 0.342125,
		-0.308662, -0.157935, 0.937968,
		0.313965, -0.947766, -0.056267,
		64.906349, 59.832745, 55.023655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.382179, 60.846767, 55.254627>,  <64.686569, 60.496178, 55.063042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.382179, 60.846767, 55.254627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.036232, 61.047554, 55.252968>,  <64.828659, 61.168026, 55.251972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.036232, 61.047554, 55.252968>,  <65.382179, 60.846767, 55.254627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.036232, 61.047554, 55.252968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061339, 0.113872, 0.991600,
		0.498222, 0.857358, -0.129276,
		-0.864877, 0.501967, -0.004144,
		64.776772, 61.198143, 55.251724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.480965, 60.338581, 55.820457>,  <65.382179, 60.846767, 55.254627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.480965, 60.338581, 55.820457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.633102, 60.027405, 55.620399>,  <65.724388, 59.840698, 55.500366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.633102, 60.027405, 55.620399>,  <65.480965, 60.338581, 55.820457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.633102, 60.027405, 55.620399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527872, 0.626652, -0.573287,
		0.759400, -0.045963, 0.648999,
		0.380346, -0.777943, -0.500142,
		65.747208, 59.794022, 55.470356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.189728, 60.499317, 55.812744>,  <65.480965, 60.338581, 55.820457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.189728, 60.499317, 55.812744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.075249, 60.260956, 55.512611>,  <66.006561, 60.117939, 55.332531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.075249, 60.260956, 55.512611>,  <66.189728, 60.499317, 55.812744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.075249, 60.260956, 55.512611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413360, 0.629685, -0.657747,
		0.864425, -0.498396, 0.066113,
		-0.286188, -0.595901, -0.750332,
		65.989395, 60.082184, 55.287514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.858559, 60.295803, 55.455349>,  <66.189728, 60.499317, 55.812744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.858559, 60.295803, 55.455349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.538208, 60.323303, 55.217400>,  <66.346001, 60.339806, 55.074631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.538208, 60.323303, 55.217400>,  <66.858559, 60.295803, 55.455349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.538208, 60.323303, 55.217400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586183, 0.293088, -0.755308,
		0.122417, -0.953610, -0.275030,
		-0.800877, 0.068755, -0.594869,
		66.297943, 60.343929, 55.038940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.263321, 59.629070, 55.185928>,  <66.858559, 60.295803, 55.455349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.263321, 59.629070, 55.185928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.589981, 59.407726, 55.251511>,  <67.785973, 59.274918, 55.290859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.589981, 59.407726, 55.251511>,  <67.263321, 59.629070, 55.185928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.589981, 59.407726, 55.251511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548766, 0.832482, 0.076343,
		-0.178736, 0.027629, 0.983509,
		0.816645, -0.553362, 0.163956,
		67.834976, 59.241718, 55.300697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.284981, 59.380424, 55.927063>,  <67.263321, 59.629070, 55.185928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.284981, 59.380424, 55.927063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.309540, 58.985149, 55.870903>,  <67.324272, 58.747982, 55.837208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.309540, 58.985149, 55.870903>,  <67.284981, 59.380424, 55.927063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.309540, 58.985149, 55.870903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927128, 0.004361, 0.374720,
		-0.369682, -0.153172, 0.916446,
		0.061393, -0.988190, -0.140398,
		67.327957, 58.688694, 55.828785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.568306, 59.054638, 56.488091>,  <67.284981, 59.380424, 55.927063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.568306, 59.054638, 56.488091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.678261, 58.835995, 56.171700>,  <67.744232, 58.704807, 55.981865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.678261, 58.835995, 56.171700>,  <67.568306, 59.054638, 56.488091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.678261, 58.835995, 56.171700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926951, -0.067801, 0.369004,
		-0.255331, -0.834637, 0.488044,
		0.274894, -0.546612, -0.790980,
		67.760727, 58.672012, 55.934406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.848801, 58.313648, 56.670425>,  <67.568306, 59.054638, 56.488091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.848801, 58.313648, 56.670425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.985870, 58.487022, 56.337029>,  <68.068108, 58.591045, 56.136990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.985870, 58.487022, 56.337029>,  <67.848801, 58.313648, 56.670425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.985870, 58.487022, 56.337029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908799, 0.071863, 0.410999,
		0.238040, -0.898314, -0.369281,
		0.342669, 0.433436, -0.833493,
		68.088669, 58.617054, 56.086979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.448875, 57.836117, 56.364147>,  <67.848801, 58.313648, 56.670425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.448875, 57.836117, 56.364147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.494377, 58.224838, 56.281532>,  <68.521675, 58.458073, 56.231964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.494377, 58.224838, 56.281532>,  <68.448875, 57.836117, 56.364147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.494377, 58.224838, 56.281532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921445, -0.025467, 0.387672,
		0.371482, -0.234410, -0.898361,
		0.113753, 0.971804, -0.206536,
		68.528503, 58.516380, 56.219570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.077766, 57.938282, 55.855244>,  <68.448875, 57.836117, 56.364147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.077766, 57.938282, 55.855244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.969337, 58.227226, 56.109711>,  <68.904282, 58.400593, 56.262390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.969337, 58.227226, 56.109711>,  <69.077766, 57.938282, 55.855244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.969337, 58.227226, 56.109711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905812, -0.032145, 0.422458,
		0.325618, 0.690765, -0.645613,
		-0.271066, 0.722364, 0.636171,
		68.888016, 58.443935, 56.300560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.593369, 58.450954, 55.905609>,  <69.077766, 57.938282, 55.855244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.593369, 58.450954, 55.905609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.375374, 58.441044, 56.240845>,  <69.244576, 58.435097, 56.441986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.375374, 58.441044, 56.240845>,  <69.593369, 58.450954, 55.905609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.375374, 58.441044, 56.240845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837619, -0.060576, 0.542885,
		0.037320, 0.997856, 0.053763,
		-0.544978, -0.024772, 0.838084,
		69.211884, 58.433613, 56.492271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.797173, 59.002838, 56.368938>,  <69.593369, 58.450954, 55.905609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.797173, 59.002838, 56.368938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.648483, 58.677448, 56.547859>,  <69.559273, 58.482212, 56.655212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.648483, 58.677448, 56.547859>,  <69.797173, 59.002838, 56.368938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.648483, 58.677448, 56.547859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816482, -0.057177, 0.574532,
		-0.441794, 0.578777, 0.685445,
		-0.371718, -0.813479, 0.447301,
		69.536964, 58.433403, 56.682049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.688744, 59.142155, 57.072571>,  <69.797173, 59.002838, 56.368938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.688744, 59.142155, 57.072571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.773483, 58.764267, 56.972473>,  <69.824326, 58.537533, 56.912415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.773483, 58.764267, 56.972473>,  <69.688744, 59.142155, 57.072571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.773483, 58.764267, 56.972473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774017, 0.005866, 0.633137,
		-0.596669, -0.327829, 0.732471,
		0.211858, -0.944719, -0.250245,
		69.837044, 58.480850, 56.897400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.789993, 58.798321, 57.658272>,  <69.688744, 59.142155, 57.072571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.789993, 58.798321, 57.658272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.985909, 58.533649, 57.431190>,  <70.103462, 58.374847, 57.294941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.985909, 58.533649, 57.431190>,  <69.789993, 58.798321, 57.658272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.985909, 58.533649, 57.431190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622087, -0.190972, 0.759301,
		-0.610828, -0.725059, 0.318085,
		0.489793, -0.661679, -0.567701,
		70.132843, 58.335144, 57.260880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.854561, 58.179043, 58.049374>,  <69.789993, 58.798321, 57.658272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.854561, 58.179043, 58.049374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.141251, 58.226662, 57.774521>,  <70.313263, 58.255234, 57.609612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.141251, 58.226662, 57.774521>,  <69.854561, 58.179043, 58.049374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.141251, 58.226662, 57.774521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697190, -0.144353, 0.702203,
		-0.015592, -0.982339, -0.186461,
		0.716717, 0.119050, -0.687127,
		70.356262, 58.262375, 57.568382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.455055, 57.577885, 58.419243>,  <69.854561, 58.179043, 58.049374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.455055, 57.577885, 58.419243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.715561, 57.290653, 58.517395>,  <69.871864, 57.118313, 58.576286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.715561, 57.290653, 58.517395>,  <69.455055, 57.577885, 58.419243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.715561, 57.290653, 58.517395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393572, 0.596096, 0.699835,
		-0.648811, -0.359202, 0.670834,
		0.651264, -0.718083, 0.245382,
		69.910942, 57.075230, 58.591011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.468323, 57.474586, 59.137360>,  <69.455055, 57.577885, 58.419243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.468323, 57.474586, 59.137360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.819939, 57.357269, 58.987022>,  <70.030907, 57.286877, 58.896820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.819939, 57.357269, 58.987022>,  <69.468323, 57.474586, 59.137360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.819939, 57.357269, 58.987022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472834, 0.637023, 0.608793,
		0.060862, -0.712867, 0.698653,
		0.879047, -0.293295, -0.375839,
		70.083656, 57.269279, 58.874271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.946831, 57.299320, 59.711975>,  <69.468323, 57.474586, 59.137360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.946831, 57.299320, 59.711975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.205223, 57.345417, 59.410133>,  <70.360260, 57.373077, 59.229027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.205223, 57.345417, 59.410133>,  <69.946831, 57.299320, 59.711975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.205223, 57.345417, 59.410133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635924, 0.465597, 0.615483,
		0.422273, -0.877462, 0.227478,
		0.645976, 0.115243, -0.754608,
		70.399017, 57.379990, 59.183750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.431335, 56.784920, 59.869839>,  <69.946831, 57.299320, 59.711975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.431335, 56.784920, 59.869839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.622383, 57.093403, 59.701500>,  <70.737015, 57.278492, 59.600498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.622383, 57.093403, 59.701500>,  <70.431335, 56.784920, 59.869839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.622383, 57.093403, 59.701500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595279, 0.068224, 0.800618,
		0.646155, -0.632916, -0.426499,
		0.477627, 0.771209, -0.420844,
		70.765671, 57.324764, 59.575245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.129097, 56.689522, 59.832012>,  <70.431335, 56.784920, 59.869839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.129097, 56.689522, 59.832012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.092178, 57.085800, 59.791992>,  <71.070030, 57.323566, 59.767979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.092178, 57.085800, 59.791992>,  <71.129097, 56.689522, 59.832012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.092178, 57.085800, 59.791992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484600, 0.132470, 0.864647,
		0.869853, 0.031317, -0.492315,
		-0.092296, 0.990692, -0.100053,
		71.064491, 57.383007, 59.761974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.792274, 57.128136, 59.959545>,  <71.129097, 56.689522, 59.832012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.792274, 57.128136, 59.959545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.489281, 57.382927, 60.016762>,  <71.307480, 57.535801, 60.051094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.489281, 57.382927, 60.016762>,  <71.792274, 57.128136, 59.959545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.489281, 57.382927, 60.016762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436198, 0.330794, 0.836843,
		0.485735, 0.696298, -0.528423,
		-0.757491, 0.636981, 0.143045,
		71.262032, 57.574020, 60.059677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.491470, 57.256298, 60.022499>,  <71.792274, 57.128136, 59.959545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.491470, 57.256298, 60.022499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.290268, 57.160343, 60.354630>,  <72.169548, 57.102772, 60.553909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.290268, 57.160343, 60.354630>,  <72.491470, 57.256298, 60.022499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.290268, 57.160343, 60.354630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839002, -0.095151, -0.535745,
		0.207524, -0.966127, -0.153404,
		-0.503001, -0.239886, 0.830328,
		72.139366, 57.088379, 60.603729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.735756, 57.267246, 60.730183>,  <72.491470, 57.256298, 60.022499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.735756, 57.267246, 60.730183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.065804, 57.045589, 60.774216>,  <73.263832, 56.912594, 60.800636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.065804, 57.045589, 60.774216>,  <72.735756, 57.267246, 60.730183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.065804, 57.045589, 60.774216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072937, 0.088732, 0.993382,
		-0.560242, -0.827680, 0.032796,
		0.825111, -0.554142, 0.110080,
		73.313339, 56.879349, 60.807240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.342560, 57.493191, 61.153503>,  <72.735756, 57.267246, 60.730183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.342560, 57.493191, 61.153503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.240639, 57.831444, 60.965897>,  <73.179482, 58.034393, 60.853333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.240639, 57.831444, 60.965897>,  <73.342560, 57.493191, 61.153503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.240639, 57.831444, 60.965897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927371, 0.351117, 0.129229,
		0.273961, -0.402027, -0.873682,
		-0.254811, 0.845631, -0.469020,
		73.164192, 58.085133, 60.825191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.774490, 57.557674, 60.568237>,  <73.342560, 57.493191, 61.153503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.774490, 57.557674, 60.568237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.667252, 57.912117, 60.719467>,  <73.602905, 58.124783, 60.810204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.667252, 57.912117, 60.719467>,  <73.774490, 57.557674, 60.568237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.667252, 57.912117, 60.719467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961780, 0.268863, 0.051873,
		-0.055685, 0.377531, -0.924321,
		-0.268100, 0.886106, 0.378073,
		73.586823, 58.177948, 60.832890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.919861, 58.224865, 60.197411>,  <73.774490, 57.557674, 60.568237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.919861, 58.224865, 60.197411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.925644, 58.322060, 60.585381>,  <73.929115, 58.380379, 60.818161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.925644, 58.322060, 60.585381>,  <73.919861, 58.224865, 60.197411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.925644, 58.322060, 60.585381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788496, 0.593730, -0.160495,
		-0.614870, 0.767099, -0.183014,
		0.014455, 0.242989, 0.969921,
		73.929977, 58.394955, 60.876358>
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
