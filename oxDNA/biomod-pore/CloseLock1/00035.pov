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
	<24.560574, 34.891689, 35.124016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209150, 35.028938, 34.991104>,  <23.998297, 35.111286, 34.911358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.209150, 35.028938, 34.991104>,  <24.560574, 34.891689, 35.124016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.209150, 35.028938, 34.991104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400406, 0.908354, -0.120697,
		0.260410, -0.239084, -0.935428,
		-0.878557, 0.343120, -0.332275,
		23.945583, 35.131874, 34.891422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.254841, 34.700081, 35.201786>,  <24.560574, 34.891689, 35.124016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.254841, 34.700081, 35.201786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297140, 35.096966, 35.175446>,  <25.322519, 35.335094, 35.159641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297140, 35.096966, 35.175446>,  <25.254841, 34.700081, 35.201786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.297140, 35.096966, 35.175446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061509, 0.059566, 0.996328,
		0.992489, -0.109409, -0.054731,
		0.105747, 0.992211, -0.065848,
		25.328865, 35.394630, 35.155689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.848099, 35.031368, 35.674000>,  <25.254841, 34.700081, 35.201786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.848099, 35.031368, 35.674000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605591, 35.342381, 35.607208>,  <25.460087, 35.528988, 35.567135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605591, 35.342381, 35.607208>,  <25.848099, 35.031368, 35.674000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.605591, 35.342381, 35.607208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496091, -0.205663, 0.843562,
		0.621555, 0.594262, 0.510413,
		-0.606270, 0.777532, -0.166977,
		25.423710, 35.575642, 35.557114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943674, 35.708988, 36.203636>,  <25.848099, 35.031368, 35.674000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943674, 35.708988, 36.203636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574400, 35.612995, 36.083546>,  <25.352835, 35.555401, 36.011490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574400, 35.612995, 36.083546>,  <25.943674, 35.708988, 36.203636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574400, 35.612995, 36.083546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319831, 0.046438, 0.946336,
		-0.213161, 0.969666, -0.119625,
		-0.923185, -0.239981, -0.300231,
		25.297445, 35.541000, 35.993477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748293, 35.747963, 35.847298>,  <25.943674, 35.708988, 36.203636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748293, 35.747963, 35.847298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975019, 36.075424, 35.810352>,  <27.111055, 36.271900, 35.788185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975019, 36.075424, 35.810352>,  <26.748293, 35.747963, 35.847298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975019, 36.075424, 35.810352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129846, -0.199486, -0.971259,
		-0.813547, 0.538533, -0.219371,
		0.566817, 0.818650, -0.092365,
		27.145065, 36.321018, 35.782642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438629, 36.211380, 35.330246>,  <26.748293, 35.747963, 35.847298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438629, 36.211380, 35.330246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824154, 36.316109, 35.350307>,  <27.055470, 36.378944, 35.362343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824154, 36.316109, 35.350307>,  <26.438629, 36.211380, 35.330246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824154, 36.316109, 35.350307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063216, -0.041711, -0.997128,
		-0.258975, 0.964215, -0.056753,
		0.963813, 0.261819, 0.050152,
		27.113298, 36.394653, 35.365353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494465, 36.756100, 34.780182>,  <26.438629, 36.211380, 35.330246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494465, 36.756100, 34.780182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864548, 36.626381, 34.858994>,  <27.086597, 36.548550, 34.906281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864548, 36.626381, 34.858994>,  <26.494465, 36.756100, 34.780182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864548, 36.626381, 34.858994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222548, 0.043175, -0.973965,
		0.307344, 0.944971, 0.112117,
		0.925209, -0.324294, 0.197032,
		27.142111, 36.529095, 34.918102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940298, 37.272137, 34.595062>,  <26.494465, 36.756100, 34.780182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940298, 37.272137, 34.595062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132769, 36.921539, 34.588921>,  <27.248251, 36.711182, 34.585236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132769, 36.921539, 34.588921>,  <26.940298, 37.272137, 34.595062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132769, 36.921539, 34.588921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102705, 0.073756, -0.991974,
		0.870587, 0.475738, 0.125509,
		0.481176, -0.876490, -0.015350,
		27.277121, 36.658592, 34.584316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639936, 37.433517, 34.372463>,  <26.940298, 37.272137, 34.595062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639936, 37.433517, 34.372463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505424, 37.068638, 34.278820>,  <27.424717, 36.849709, 34.222633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505424, 37.068638, 34.278820>,  <27.639936, 37.433517, 34.372463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505424, 37.068638, 34.278820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142845, 0.196301, -0.970083,
		0.930865, -0.359661, 0.064291,
		-0.336281, -0.912201, -0.234105,
		27.404541, 36.794979, 34.208588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855284, 37.413311, 33.747826>,  <27.639936, 37.433517, 34.372463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855284, 37.413311, 33.747826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638102, 37.077496, 33.755520>,  <27.507792, 36.876007, 33.760136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638102, 37.077496, 33.755520>,  <27.855284, 37.413311, 33.747826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638102, 37.077496, 33.755520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033437, -0.001280, -0.999440,
		0.839095, -0.543296, -0.027377,
		-0.542956, -0.839541, 0.019240,
		27.475214, 36.825634, 33.761292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185768, 37.028385, 33.249615>,  <27.855284, 37.413311, 33.747826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.185768, 37.028385, 33.249615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839634, 36.832615, 33.292801>,  <27.631954, 36.715153, 33.318710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839634, 36.832615, 33.292801>,  <28.185768, 37.028385, 33.249615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839634, 36.832615, 33.292801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075060, -0.339532, -0.937595,
		0.495544, -0.803229, 0.330545,
		-0.865334, -0.489430, 0.107962,
		27.580034, 36.685787, 33.325191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300585, 36.326118, 33.067249>,  <28.185768, 37.028385, 33.249615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300585, 36.326118, 33.067249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905245, 36.373894, 33.029507>,  <27.668041, 36.402557, 33.006863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.905245, 36.373894, 33.029507>,  <28.300585, 36.326118, 33.067249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905245, 36.373894, 33.029507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036033, -0.418668, -0.907424,
		-0.147881, -0.900251, 0.409486,
		-0.988348, 0.119436, -0.094352,
		27.608740, 36.409725, 33.001202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972862, 35.647068, 32.844902>,  <28.300585, 36.326118, 33.067249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972862, 35.647068, 32.844902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735037, 35.945793, 32.725723>,  <27.592342, 36.125027, 32.654217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735037, 35.945793, 32.725723>,  <27.972862, 35.647068, 32.844902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735037, 35.945793, 32.725723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086941, -0.308667, -0.947189,
		-0.799335, -0.589067, 0.118593,
		-0.594563, 0.746810, -0.297942,
		27.556667, 36.169838, 32.636341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613087, 35.386189, 32.254539>,  <27.972862, 35.647068, 32.844902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613087, 35.386189, 32.254539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526995, 35.776203, 32.232697>,  <27.475340, 36.010212, 32.219589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526995, 35.776203, 32.232697>,  <27.613087, 35.386189, 32.254539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526995, 35.776203, 32.232697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024844, -0.061368, -0.997806,
		-0.976247, -0.213403, 0.037432,
		-0.215232, 0.975035, -0.054608,
		27.462425, 36.068714, 32.216312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045519, 35.367485, 31.904251>,  <27.613087, 35.386189, 32.254539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045519, 35.367485, 31.904251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196268, 35.733364, 31.845873>,  <27.286716, 35.952892, 31.810846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196268, 35.733364, 31.845873>,  <27.045519, 35.367485, 31.904251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196268, 35.733364, 31.845873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078752, -0.125353, -0.988982,
		-0.922911, 0.384213, 0.024792,
		0.376872, 0.914695, -0.145948,
		27.309330, 36.007774, 31.802088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740744, 35.650837, 31.296837>,  <27.045519, 35.367485, 31.904251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740744, 35.650837, 31.296837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071360, 35.873081, 31.332895>,  <27.269730, 36.006428, 31.354530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071360, 35.873081, 31.332895>,  <26.740744, 35.650837, 31.296837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071360, 35.873081, 31.332895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106605, 0.002734, -0.994298,
		-0.552688, 0.831439, -0.056971,
		0.826542, 0.555610, 0.090147,
		27.319323, 36.039764, 31.359940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623901, 36.289513, 30.845444>,  <26.740744, 35.650837, 31.296837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623901, 36.289513, 30.845444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014666, 36.241798, 30.916340>,  <27.249125, 36.213169, 30.958878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014666, 36.241798, 30.916340>,  <26.623901, 36.289513, 30.845444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014666, 36.241798, 30.916340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178582, 0.000559, -0.983925,
		0.117266, 0.992860, 0.021848,
		0.976912, -0.119283, 0.177242,
		27.307739, 36.206013, 30.969513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895031, 36.823921, 30.488424>,  <26.623901, 36.289513, 30.845444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895031, 36.823921, 30.488424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203468, 36.574032, 30.537645>,  <27.388531, 36.424099, 30.567179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203468, 36.574032, 30.537645>,  <26.895031, 36.823921, 30.488424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203468, 36.574032, 30.537645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270244, 0.146113, -0.951640,
		0.576528, 0.767057, 0.281493,
		0.771092, -0.624719, 0.123055,
		27.434795, 36.386616, 30.574562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412937, 37.101879, 30.026180>,  <26.895031, 36.823921, 30.488424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412937, 37.101879, 30.026180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.519184, 36.721676, 30.090662>,  <27.582932, 36.493553, 30.129351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.519184, 36.721676, 30.090662>,  <27.412937, 37.101879, 30.026180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.519184, 36.721676, 30.090662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398987, -0.043838, -0.915908,
		0.877643, 0.307599, 0.367595,
		0.265617, -0.950506, 0.161202,
		27.598869, 36.436523, 30.139023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149338, 37.066113, 29.836910>,  <27.412937, 37.101879, 30.026180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149338, 37.066113, 29.836910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983273, 36.702938, 29.813988>,  <27.883633, 36.485031, 29.800234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983273, 36.702938, 29.813988>,  <28.149338, 37.066113, 29.836910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983273, 36.702938, 29.813988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284662, -0.069820, -0.956082,
		0.864064, -0.413244, 0.287443,
		-0.415164, -0.907940, -0.057306,
		27.858723, 36.430557, 29.796795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569708, 36.636974, 29.426331>,  <28.149338, 37.066113, 29.836910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569708, 36.636974, 29.426331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239710, 36.410927, 29.428013>,  <28.041710, 36.275299, 29.429022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239710, 36.410927, 29.428013>,  <28.569708, 36.636974, 29.426331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239710, 36.410927, 29.428013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243313, -0.361896, -0.899906,
		0.510079, -0.741396, 0.436064,
		-0.824996, -0.565123, 0.004204,
		27.992210, 36.241390, 29.429274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724716, 35.989285, 29.332499>,  <28.569708, 36.636974, 29.426331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724716, 35.989285, 29.332499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347778, 36.018539, 29.201880>,  <28.121614, 36.036091, 29.123508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347778, 36.018539, 29.201880>,  <28.724716, 35.989285, 29.332499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347778, 36.018539, 29.201880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288320, -0.317897, -0.903224,
		-0.169868, -0.945300, 0.278483,
		-0.942347, 0.073136, -0.326549,
		28.065075, 36.040482, 29.103914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492535, 35.407696, 28.967937>,  <28.724716, 35.989285, 29.332499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492535, 35.407696, 28.967937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249071, 35.692856, 28.828617>,  <28.102993, 35.863953, 28.745026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249071, 35.692856, 28.828617>,  <28.492535, 35.407696, 28.967937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249071, 35.692856, 28.828617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244307, -0.249260, -0.937115,
		-0.754882, -0.655476, -0.022451,
		-0.608660, 0.712896, -0.348299,
		28.066473, 35.906723, 28.724127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111023, 35.084980, 28.347620>,  <28.492535, 35.407696, 28.967937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111023, 35.084980, 28.347620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067995, 35.476189, 28.276176>,  <28.042177, 35.710915, 28.233311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067995, 35.476189, 28.276176>,  <28.111023, 35.084980, 28.347620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067995, 35.476189, 28.276176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202386, -0.154346, -0.967066,
		-0.973380, -0.140175, -0.181335,
		-0.107571, 0.978022, -0.178607,
		28.035725, 35.769596, 28.222595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873564, 35.129509, 27.707003>,  <28.111023, 35.084980, 28.347620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.873564, 35.129509, 27.707003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996910, 35.503639, 27.776371>,  <28.070919, 35.728119, 27.817991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996910, 35.503639, 27.776371>,  <27.873564, 35.129509, 27.707003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996910, 35.503639, 27.776371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341741, 0.061210, -0.937799,
		-0.887762, 0.348452, -0.300764,
		0.308368, 0.935326, 0.173420,
		28.089420, 35.784237, 27.828398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689194, 35.605408, 27.197031>,  <27.873564, 35.129509, 27.707003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689194, 35.605408, 27.197031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044792, 35.700642, 27.353495>,  <28.258150, 35.757782, 27.447372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.044792, 35.700642, 27.353495>,  <27.689194, 35.605408, 27.197031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.044792, 35.700642, 27.353495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414497, -0.055310, -0.908368,
		-0.194633, 0.969669, -0.147855,
		0.888994, 0.238083, 0.391160,
		28.311491, 35.772068, 27.470842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019203, 36.093174, 26.664341>,  <27.689194, 35.605408, 27.197031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019203, 36.093174, 26.664341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292490, 35.921192, 26.900427>,  <28.456461, 35.818005, 27.042078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.292490, 35.921192, 26.900427>,  <28.019203, 36.093174, 26.664341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292490, 35.921192, 26.900427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644117, -0.025917, -0.764488,
		0.343991, 0.902479, 0.259233,
		0.683216, -0.429953, 0.590217,
		28.497456, 35.792206, 27.077492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587742, 36.462978, 26.632425>,  <28.019203, 36.093174, 26.664341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587742, 36.462978, 26.632425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712379, 36.096508, 26.733246>,  <28.787163, 35.876625, 26.793737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712379, 36.096508, 26.733246>,  <28.587742, 36.462978, 26.632425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712379, 36.096508, 26.733246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641003, 0.006857, -0.767508,
		0.701443, 0.400718, 0.589408,
		0.311596, -0.916176, 0.252052,
		28.805859, 35.821655, 26.808861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296394, 36.463902, 26.449139>,  <28.587742, 36.462978, 26.632425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296394, 36.463902, 26.449139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256704, 36.066063, 26.461348>,  <29.232891, 35.827358, 26.468674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256704, 36.066063, 26.461348>,  <29.296394, 36.463902, 26.449139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256704, 36.066063, 26.461348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580786, -0.082794, -0.809835,
		0.807986, -0.062628, 0.585863,
		-0.099224, -0.994597, 0.030523,
		29.226936, 35.767685, 26.470505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901356, 36.178566, 26.186090>,  <29.296394, 36.463902, 26.449139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901356, 36.178566, 26.186090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670137, 35.852489, 26.200628>,  <29.531406, 35.656841, 26.209351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670137, 35.852489, 26.200628>,  <29.901356, 36.178566, 26.186090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670137, 35.852489, 26.200628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507250, -0.393862, -0.766531,
		0.639187, -0.424655, 0.641178,
		-0.578047, -0.815194, 0.036345,
		29.496723, 35.607933, 26.211533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248508, 35.437729, 26.449081>,  <29.901356, 36.178566, 26.186090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248508, 35.437729, 26.449081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944767, 35.392559, 26.192759>,  <29.762522, 35.365459, 26.038965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944767, 35.392559, 26.192759>,  <30.248508, 35.437729, 26.449081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944767, 35.392559, 26.192759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626132, -0.394759, -0.672402,
		-0.177034, -0.911819, 0.370465,
		-0.759353, -0.112922, -0.640805,
		29.716961, 35.358685, 26.000517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120218, 34.665833, 26.273315>,  <30.248508, 35.437729, 26.449081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120218, 34.665833, 26.273315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035025, 34.947201, 26.002071>,  <29.983910, 35.116024, 25.839325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035025, 34.947201, 26.002071>,  <30.120218, 34.665833, 26.273315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035025, 34.947201, 26.002071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653904, -0.413068, -0.633865,
		-0.725981, -0.578422, -0.371995,
		-0.212982, 0.703423, -0.678111,
		29.971130, 35.158226, 25.798637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946058, 34.477669, 26.315954>,  <30.120218, 34.665833, 26.273315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946058, 34.477669, 26.315954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320278, 34.399940, 26.433931>,  <31.544809, 34.353306, 26.504717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320278, 34.399940, 26.433931>,  <30.946058, 34.477669, 26.315954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320278, 34.399940, 26.433931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196417, 0.407796, 0.891696,
		-0.293550, -0.892156, 0.343346,
		0.935547, -0.194318, 0.294943,
		31.600943, 34.341644, 26.522415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858618, 34.156773, 26.946089>,  <30.946058, 34.477669, 26.315954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858618, 34.156773, 26.946089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207645, 34.350822, 26.923203>,  <31.417063, 34.467255, 26.909472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207645, 34.350822, 26.923203>,  <30.858618, 34.156773, 26.946089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207645, 34.350822, 26.923203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220792, 0.496157, 0.839690,
		0.435743, -0.720056, 0.540044,
		0.872570, 0.485127, -0.057214,
		31.469416, 34.496361, 26.906038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263054, 34.075226, 27.584152>,  <30.858618, 34.156773, 26.946089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263054, 34.075226, 27.584152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351179, 34.429756, 27.421238>,  <31.404055, 34.642475, 27.323490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351179, 34.429756, 27.421238>,  <31.263054, 34.075226, 27.584152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351179, 34.429756, 27.421238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216300, 0.451542, 0.865635,
		0.951145, -0.102614, 0.291193,
		0.220312, 0.886330, -0.407286,
		31.417273, 34.695656, 27.299051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806452, 34.459587, 27.875690>,  <31.263054, 34.075226, 27.584152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806452, 34.459587, 27.875690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523338, 34.707035, 27.739248>,  <31.353470, 34.855503, 27.657383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523338, 34.707035, 27.739248>,  <31.806452, 34.459587, 27.875690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523338, 34.707035, 27.739248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077631, 0.411822, 0.907951,
		0.702149, 0.669115, -0.243459,
		-0.707786, 0.618617, -0.341105,
		31.311003, 34.892620, 27.636917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064030, 35.167980, 27.937067>,  <31.806452, 34.459587, 27.875690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064030, 35.167980, 27.937067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668898, 35.204018, 27.886341>,  <31.431820, 35.225639, 27.855906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668898, 35.204018, 27.886341>,  <32.064030, 35.167980, 27.937067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668898, 35.204018, 27.886341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075764, 0.433350, 0.898035,
		0.135862, 0.896711, -0.421249,
		-0.987827, 0.090093, -0.126814,
		31.372549, 35.231045, 27.848297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790249, 35.973568, 28.043566>,  <32.064030, 35.167980, 27.937067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790249, 35.973568, 28.043566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494135, 35.709862, 28.096256>,  <31.316467, 35.551640, 28.127871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494135, 35.709862, 28.096256>,  <31.790249, 35.973568, 28.043566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494135, 35.709862, 28.096256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203970, 0.406949, 0.890387,
		-0.640604, 0.632271, -0.435728,
		-0.740285, -0.659261, 0.131729,
		31.272049, 35.512085, 28.135775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364761, 36.486656, 28.356594>,  <31.790249, 35.973568, 28.043566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364761, 36.486656, 28.356594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192890, 36.129658, 28.411491>,  <31.089767, 35.915459, 28.444429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192890, 36.129658, 28.411491>,  <31.364761, 36.486656, 28.356594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192890, 36.129658, 28.411491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420453, 0.332251, 0.844291,
		-0.799122, 0.305069, -0.518012,
		-0.429678, -0.892492, 0.137242,
		31.063988, 35.861912, 28.452663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656149, 36.668896, 28.629496>,  <31.364761, 36.486656, 28.356594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656149, 36.668896, 28.629496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776556, 36.298740, 28.721617>,  <30.848801, 36.076645, 28.776890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776556, 36.298740, 28.721617>,  <30.656149, 36.668896, 28.629496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776556, 36.298740, 28.721617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358154, 0.114117, 0.926662,
		-0.883807, -0.361423, -0.297082,
		0.301016, -0.925392, 0.230302,
		30.866861, 36.021122, 28.790707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083899, 36.376644, 28.917879>,  <30.656149, 36.668896, 28.629496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083899, 36.376644, 28.917879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396299, 36.160225, 29.042652>,  <30.583740, 36.030373, 29.117516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396299, 36.160225, 29.042652>,  <30.083899, 36.376644, 28.917879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396299, 36.160225, 29.042652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273114, 0.153290, 0.949690,
		-0.561644, -0.826904, -0.028047,
		0.781003, -0.541048, 0.311933,
		30.630600, 35.997910, 29.136232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799650, 35.837910, 29.443016>,  <30.083899, 36.376644, 28.917879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799650, 35.837910, 29.443016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184952, 35.934597, 29.489857>,  <30.416132, 35.992611, 29.517962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184952, 35.934597, 29.489857>,  <29.799650, 35.837910, 29.443016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184952, 35.934597, 29.489857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126936, 0.025470, 0.991584,
		0.236705, -0.970011, 0.055218,
		0.963254, 0.241722, 0.117100,
		30.473928, 36.007114, 29.524986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010626, 35.560593, 30.112164>,  <29.799650, 35.837910, 29.443016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010626, 35.560593, 30.112164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332203, 35.785042, 30.033352>,  <30.525148, 35.919712, 29.986065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332203, 35.785042, 30.033352>,  <30.010626, 35.560593, 30.112164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332203, 35.785042, 30.033352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223132, 0.022502, 0.974528,
		0.551260, -0.827429, -0.107113,
		0.803943, 0.561119, -0.197031,
		30.573385, 35.953377, 29.974243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501524, 35.029747, 30.369144>,  <30.010626, 35.560593, 30.112164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501524, 35.029747, 30.369144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657301, 35.397831, 30.353403>,  <30.750767, 35.618683, 30.343958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657301, 35.397831, 30.353403>,  <30.501524, 35.029747, 30.369144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657301, 35.397831, 30.353403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145760, -0.019385, 0.989130,
		0.909444, -0.390945, -0.141679,
		0.389442, 0.920210, -0.039354,
		30.774134, 35.673893, 30.341597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180784, 35.034504, 30.736431>,  <30.501524, 35.029747, 30.369144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180784, 35.034504, 30.736431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010712, 35.396545, 30.736868>,  <30.908669, 35.613770, 30.737131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010712, 35.396545, 30.736868>,  <31.180784, 35.034504, 30.736431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010712, 35.396545, 30.736868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081758, 0.037203, 0.995958,
		0.901408, 0.423551, -0.089818,
		-0.425181, 0.905108, 0.001093,
		30.883158, 35.668079, 30.737196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579687, 35.457352, 31.143885>,  <31.180784, 35.034504, 30.736431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579687, 35.457352, 31.143885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238579, 35.665100, 31.121828>,  <31.033915, 35.789749, 31.108593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238579, 35.665100, 31.121828>,  <31.579687, 35.457352, 31.143885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238579, 35.665100, 31.121828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094729, 0.257634, 0.961588,
		0.513624, 0.814790, -0.268902,
		-0.852770, 0.519367, -0.055143,
		30.982748, 35.820911, 31.105286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734100, 36.006115, 31.521950>,  <31.579687, 35.457352, 31.143885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734100, 36.006115, 31.521950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336460, 36.038113, 31.492647>,  <31.097876, 36.057312, 31.475065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336460, 36.038113, 31.492647>,  <31.734100, 36.006115, 31.521950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336460, 36.038113, 31.492647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023124, 0.503534, 0.863666,
		0.105977, 0.860264, -0.498713,
		-0.994100, 0.079996, -0.073255,
		31.038231, 36.062111, 31.470671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477901, 36.680229, 31.729860>,  <31.734100, 36.006115, 31.521950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477901, 36.680229, 31.729860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142481, 36.467693, 31.778048>,  <30.941229, 36.340172, 31.806959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142481, 36.467693, 31.778048>,  <31.477901, 36.680229, 31.729860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142481, 36.467693, 31.778048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190909, 0.493654, 0.848446,
		-0.510277, 0.688469, -0.515391,
		-0.838553, -0.531335, 0.120466,
		30.890915, 36.308292, 31.814188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919088, 37.148006, 31.941561>,  <31.477901, 36.680229, 31.729860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919088, 37.148006, 31.941561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787743, 36.788647, 32.058220>,  <30.708935, 36.573032, 32.128216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787743, 36.788647, 32.058220>,  <30.919088, 37.148006, 31.941561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787743, 36.788647, 32.058220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185235, 0.364021, 0.912785,
		-0.926210, 0.245704, -0.285946,
		-0.328365, -0.898398, 0.291647,
		30.689234, 36.519127, 32.145714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255524, 37.271015, 32.292648>,  <30.919088, 37.148006, 31.941561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255524, 37.271015, 32.292648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312092, 36.888210, 32.393944>,  <30.346033, 36.658527, 32.454720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312092, 36.888210, 32.393944>,  <30.255524, 37.271015, 32.292648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312092, 36.888210, 32.393944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274964, 0.207771, 0.938736,
		-0.950997, -0.202386, -0.233762,
		0.141418, -0.957012, 0.253238,
		30.354517, 36.601109, 32.469913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693350, 37.059853, 32.639610>,  <30.255524, 37.271015, 32.292648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693350, 37.059853, 32.639610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939972, 36.771385, 32.765957>,  <30.087944, 36.598305, 32.841766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.939972, 36.771385, 32.765957>,  <29.693350, 37.059853, 32.639610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939972, 36.771385, 32.765957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342269, 0.115789, 0.932440,
		-0.709023, -0.683011, -0.175445,
		0.616553, -0.721171, 0.315871,
		30.124937, 36.555035, 32.860718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360682, 36.668243, 33.063850>,  <29.693350, 37.059853, 32.639610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360682, 36.668243, 33.063850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737547, 36.578278, 33.163239>,  <29.963667, 36.524296, 33.222870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737547, 36.578278, 33.163239>,  <29.360682, 36.668243, 33.063850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737547, 36.578278, 33.163239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246565, 0.036989, 0.968420,
		-0.227008, -0.973675, -0.020607,
		0.942164, -0.224920, 0.248471,
		30.020197, 36.510803, 33.237782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247143, 36.138287, 33.555286>,  <29.360682, 36.668243, 33.063850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247143, 36.138287, 33.555286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622887, 36.261414, 33.615757>,  <29.848333, 36.335289, 33.652039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622887, 36.261414, 33.615757>,  <29.247143, 36.138287, 33.555286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622887, 36.261414, 33.615757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193426, 0.111554, 0.974752,
		0.283183, -0.944883, 0.164330,
		0.939358, 0.307819, 0.151175,
		29.904694, 36.353760, 33.661110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670633, 35.662399, 33.913994>,  <29.247143, 36.138287, 33.555286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670633, 35.662399, 33.913994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820402, 36.026070, 33.986889>,  <29.910263, 36.244270, 34.030624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820402, 36.026070, 33.986889>,  <29.670633, 35.662399, 33.913994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820402, 36.026070, 33.986889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078021, -0.164948, 0.983211,
		0.923970, -0.382355, 0.009175,
		0.374423, 0.909173, 0.182239,
		29.932730, 36.298820, 34.041561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053198, 35.585545, 34.513710>,  <29.670633, 35.662399, 33.913994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053198, 35.585545, 34.513710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988388, 35.978859, 34.480488>,  <29.949501, 36.214848, 34.460552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988388, 35.978859, 34.480488>,  <30.053198, 35.585545, 34.513710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988388, 35.978859, 34.480488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130955, 0.062000, 0.989448,
		0.978058, 0.171193, 0.118720,
		-0.162026, 0.983285, -0.083059,
		29.939779, 36.273846, 34.455570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405956, 35.850227, 35.055397>,  <30.053198, 35.585545, 34.513710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405956, 35.850227, 35.055397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190186, 36.175182, 34.966808>,  <30.060722, 36.370155, 34.913654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190186, 36.175182, 34.966808>,  <30.405956, 35.850227, 35.055397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190186, 36.175182, 34.966808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249844, 0.096749, 0.963441,
		0.804111, 0.575040, 0.150780,
		-0.539429, 0.812385, -0.221467,
		30.028357, 36.418900, 34.900368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508219, 36.357403, 35.603100>,  <30.405956, 35.850227, 35.055397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508219, 36.357403, 35.603100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162262, 36.430965, 35.416279>,  <29.954687, 36.475101, 35.304184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162262, 36.430965, 35.416279>,  <30.508219, 36.357403, 35.603100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162262, 36.430965, 35.416279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476138, -0.005998, 0.879350,
		0.158918, 0.982925, 0.092753,
		-0.864892, 0.183908, -0.467055,
		29.902794, 36.486137, 35.276161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263596, 36.986515, 35.757011>,  <30.508219, 36.357403, 35.603100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263596, 36.986515, 35.757011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314798, 36.716179, 36.047352>,  <30.345520, 36.553978, 36.221558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314798, 36.716179, 36.047352>,  <30.263596, 36.986515, 35.757011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314798, 36.716179, 36.047352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977423, -0.038082, -0.207832,
		0.168103, 0.736067, 0.655703,
		0.128008, -0.675836, 0.725851,
		30.353201, 36.513428, 36.265106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876621, 37.334343, 36.114601>,  <30.263596, 36.986515, 35.757011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876621, 37.334343, 36.114601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810352, 36.939945, 36.122181>,  <30.770592, 36.703304, 36.126728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810352, 36.939945, 36.122181>,  <30.876621, 37.334343, 36.114601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810352, 36.939945, 36.122181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957687, -0.165442, -0.235507,
		0.235345, -0.020871, 0.971688,
		-0.165673, -0.985999, 0.018948,
		30.760651, 36.644146, 36.127865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164322, 36.855881, 36.591015>,  <30.876621, 37.334343, 36.114601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164322, 36.855881, 36.591015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128134, 36.634598, 36.259769>,  <31.106421, 36.501827, 36.061020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128134, 36.634598, 36.259769>,  <31.164322, 36.855881, 36.591015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128134, 36.634598, 36.259769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981867, -0.188641, 0.018754,
		-0.166591, -0.811403, 0.560244,
		-0.090468, -0.553209, -0.828115,
		31.100994, 36.468636, 36.011333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469034, 36.233284, 36.648277>,  <31.164322, 36.855881, 36.591015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469034, 36.233284, 36.648277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466566, 36.340935, 36.263042>,  <31.465086, 36.405525, 36.031902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466566, 36.340935, 36.263042>,  <31.469034, 36.233284, 36.648277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466566, 36.340935, 36.263042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996386, -0.079934, -0.028718,
		-0.084712, -0.959781, -0.267663,
		-0.006168, 0.269129, -0.963085,
		31.464716, 36.421673, 35.974117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814051, 35.710487, 36.093342>,  <31.469034, 36.233284, 36.648277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814051, 35.710487, 36.093342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853632, 36.093826, 35.986179>,  <31.877380, 36.323830, 35.921883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853632, 36.093826, 35.986179>,  <31.814051, 35.710487, 36.093342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853632, 36.093826, 35.986179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956631, -0.017487, 0.290776,
		0.273980, -0.285063, -0.918517,
		0.098952, 0.958349, -0.267909,
		31.883318, 36.381332, 35.905807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491779, 35.723312, 35.979988>,  <31.814051, 35.710487, 36.093342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491779, 35.723312, 35.979988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353439, 36.093571, 36.041401>,  <32.270435, 36.315723, 36.078247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353439, 36.093571, 36.041401>,  <32.491779, 35.723312, 35.979988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353439, 36.093571, 36.041401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823302, 0.220889, 0.522859,
		0.450068, 0.307233, -0.838479,
		-0.345850, 0.925644, 0.153530,
		32.249683, 36.371265, 36.087460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964737, 36.154053, 35.579834>,  <32.491779, 35.723312, 35.979988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964737, 36.154053, 35.579834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248657, 35.881252, 35.509335>,  <33.419010, 35.717571, 35.467037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.248657, 35.881252, 35.509335>,  <32.964737, 36.154053, 35.579834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248657, 35.881252, 35.509335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073961, -0.176664, 0.981488,
		-0.700509, -0.709696, -0.074955,
		0.709800, -0.681998, -0.176244,
		33.461597, 35.676651, 35.456463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206985, 36.027588, 36.238995>,  <32.964737, 36.154053, 35.579834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206985, 36.027588, 36.238995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405918, 35.742344, 36.041355>,  <33.525276, 35.571198, 35.922771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405918, 35.742344, 36.041355>,  <33.206985, 36.027588, 36.238995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405918, 35.742344, 36.041355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239846, -0.434317, 0.868241,
		-0.833750, -0.550309, -0.044962,
		0.497328, -0.713112, -0.494101,
		33.555115, 35.528412, 35.893124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958214, 35.374916, 36.484940>,  <33.206985, 36.027588, 36.238995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958214, 35.374916, 36.484940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332447, 35.369328, 36.343811>,  <33.556988, 35.365974, 36.259132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332447, 35.369328, 36.343811>,  <32.958214, 35.374916, 36.484940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332447, 35.369328, 36.343811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299854, -0.496197, 0.814786,
		-0.186455, -0.868097, -0.460045,
		0.935587, -0.013975, -0.352821,
		33.613125, 35.365135, 36.237965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191986, 34.629009, 36.522545>,  <32.958214, 35.374916, 36.484940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191986, 34.629009, 36.522545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497715, 34.886944, 36.523529>,  <33.681152, 35.041702, 36.524120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497715, 34.886944, 36.523529>,  <33.191986, 34.629009, 36.522545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497715, 34.886944, 36.523529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398517, -0.475358, 0.784360,
		0.506953, -0.598518, -0.620302,
		0.764319, 0.644834, 0.002465,
		33.727009, 35.080395, 36.524269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868492, 34.302212, 36.426247>,  <33.191986, 34.629009, 36.522545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868492, 34.302212, 36.426247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927757, 34.640553, 36.631218>,  <33.963314, 34.843555, 36.754200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927757, 34.640553, 36.631218>,  <33.868492, 34.302212, 36.426247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927757, 34.640553, 36.631218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369851, -0.527941, 0.764518,
		0.917201, 0.076252, -0.391059,
		0.148160, 0.845851, 0.512430,
		33.972206, 34.894306, 36.784946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419960, 34.152870, 36.795601>,  <33.868492, 34.302212, 36.426247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419960, 34.152870, 36.795601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273712, 34.489376, 36.954895>,  <34.185963, 34.691280, 37.050472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273712, 34.489376, 36.954895>,  <34.419960, 34.152870, 36.795601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273712, 34.489376, 36.954895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182336, -0.354828, 0.916979,
		0.912728, 0.407882, -0.023659,
		-0.365624, 0.841266, 0.398233,
		34.164024, 34.741756, 37.074364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557652, 33.922638, 37.446964>,  <34.419960, 34.152870, 36.795601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557652, 33.922638, 37.446964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389103, 34.282803, 37.490250>,  <34.287975, 34.498901, 37.516220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389103, 34.282803, 37.490250>,  <34.557652, 33.922638, 37.446964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389103, 34.282803, 37.490250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160882, -0.191647, 0.968188,
		0.892503, 0.390558, 0.225615,
		-0.421372, 0.900408, 0.108212,
		34.262691, 34.552925, 37.522713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019135, 34.479683, 37.796471>,  <34.557652, 33.922638, 37.446964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019135, 34.479683, 37.796471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631359, 34.568165, 37.838924>,  <34.398693, 34.621254, 37.864395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631359, 34.568165, 37.838924>,  <35.019135, 34.479683, 37.796471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631359, 34.568165, 37.838924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065184, -0.184809, 0.980610,
		0.236529, 0.957556, 0.164741,
		-0.969435, 0.221205, 0.106130,
		34.340530, 34.634525, 37.870762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966599, 34.772518, 38.444534>,  <35.019135, 34.479683, 37.796471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966599, 34.772518, 38.444534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582577, 34.680527, 38.380787>,  <34.352161, 34.625332, 38.342537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582577, 34.680527, 38.380787>,  <34.966599, 34.772518, 38.444534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582577, 34.680527, 38.380787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081000, -0.316758, 0.945042,
		-0.267823, 0.920203, 0.285477,
		-0.960057, -0.229980, -0.159371,
		34.294559, 34.611534, 38.332977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579357, 34.927471, 39.123417>,  <34.966599, 34.772518, 38.444534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579357, 34.927471, 39.123417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346703, 34.675568, 38.917469>,  <34.207108, 34.524426, 38.793900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346703, 34.675568, 38.917469>,  <34.579357, 34.927471, 39.123417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346703, 34.675568, 38.917469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453946, -0.273937, 0.847875,
		-0.675003, 0.726882, -0.126546,
		-0.581639, -0.629763, -0.514873,
		34.172211, 34.486637, 38.763008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922894, 35.103222, 39.243221>,  <34.579357, 34.927471, 39.123417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922894, 35.103222, 39.243221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905849, 34.720623, 39.127769>,  <33.895622, 34.491066, 39.058498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905849, 34.720623, 39.127769>,  <33.922894, 35.103222, 39.243221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905849, 34.720623, 39.127769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614155, -0.202785, 0.762687,
		-0.788034, 0.209760, -0.578794,
		-0.042611, -0.956493, -0.288627,
		33.893066, 34.433674, 39.041180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200695, 34.882038, 39.479118>,  <33.922894, 35.103222, 39.243221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200695, 34.882038, 39.479118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385231, 34.540573, 39.382435>,  <33.495953, 34.335693, 39.324425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385231, 34.540573, 39.382435>,  <33.200695, 34.882038, 39.479118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385231, 34.540573, 39.382435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634982, -0.507959, 0.582044,
		-0.619650, -0.115036, -0.776402,
		0.461336, -0.853665, -0.241711,
		33.523632, 34.284473, 39.309921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651867, 34.374302, 39.288937>,  <33.200695, 34.882038, 39.479118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651867, 34.374302, 39.288937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982922, 34.169437, 39.380775>,  <33.181553, 34.046520, 39.435879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982922, 34.169437, 39.380775>,  <32.651867, 34.374302, 39.288937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982922, 34.169437, 39.380775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530031, -0.578625, 0.619887,
		-0.184634, -0.634731, -0.750351,
		0.827634, -0.512162, 0.229593,
		33.231213, 34.015789, 39.449654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518887, 33.625275, 39.152946>,  <32.651867, 34.374302, 39.288937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518887, 33.625275, 39.152946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806747, 33.643425, 39.430084>,  <32.979465, 33.654316, 39.596367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806747, 33.643425, 39.430084>,  <32.518887, 33.625275, 39.152946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806747, 33.643425, 39.430084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470328, -0.702199, 0.534518,
		0.510770, -0.710534, -0.484000,
		0.719657, 0.045377, 0.692846,
		33.022644, 33.657040, 39.637939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478706, 33.003117, 39.415520>,  <32.518887, 33.625275, 39.152946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478706, 33.003117, 39.415520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717598, 33.168171, 39.690632>,  <32.860931, 33.267204, 39.855701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717598, 33.168171, 39.690632>,  <32.478706, 33.003117, 39.415520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717598, 33.168171, 39.690632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286287, -0.691355, 0.663376,
		0.749239, -0.593090, -0.294764,
		0.597228, 0.412640, 0.687784,
		32.896767, 33.291962, 39.896969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979176, 32.449009, 39.586246>,  <32.478706, 33.003117, 39.415520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979176, 32.449009, 39.586246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954937, 32.734158, 39.865715>,  <32.940392, 32.905247, 40.033398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954937, 32.734158, 39.865715>,  <32.979176, 32.449009, 39.586246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954937, 32.734158, 39.865715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324833, -0.675943, 0.661501,
		0.943828, -0.186867, 0.272525,
		-0.060599, 0.712869, 0.698675,
		32.936756, 32.948017, 40.075317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307655, 32.115448, 40.099098>,  <32.979176, 32.449009, 39.586246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307655, 32.115448, 40.099098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129459, 32.430401, 40.269539>,  <33.022541, 32.619373, 40.371803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129459, 32.430401, 40.269539>,  <33.307655, 32.115448, 40.099098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129459, 32.430401, 40.269539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404157, -0.601551, 0.689053,
		0.798870, 0.134757, 0.586214,
		-0.445492, 0.787387, 0.426098,
		32.995811, 32.666618, 40.397369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393158, 31.967010, 40.726017>,  <33.307655, 32.115448, 40.099098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393158, 31.967010, 40.726017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075157, 32.208702, 40.704552>,  <32.884357, 32.353718, 40.691673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075157, 32.208702, 40.704552>,  <33.393158, 31.967010, 40.726017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075157, 32.208702, 40.704552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496022, -0.596595, 0.630901,
		0.349195, 0.528185, 0.774005,
		-0.795000, 0.604231, -0.053663,
		32.836658, 32.389973, 40.688454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174240, 32.016159, 41.497780>,  <33.393158, 31.967010, 40.726017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174240, 32.016159, 41.497780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854656, 32.099319, 41.272057>,  <32.662907, 32.149216, 41.136623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854656, 32.099319, 41.272057>,  <33.174240, 32.016159, 41.497780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854656, 32.099319, 41.272057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578510, -0.522023, 0.626752,
		-0.164280, 0.827207, 0.537346,
		-0.798961, 0.207897, -0.564305,
		32.614967, 32.161690, 41.102764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659130, 32.254036, 41.941429>,  <33.174240, 32.016159, 41.497780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659130, 32.254036, 41.941429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474037, 32.160862, 41.599289>,  <32.362980, 32.104958, 41.394005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474037, 32.160862, 41.599289>,  <32.659130, 32.254036, 41.941429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474037, 32.160862, 41.599289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717939, -0.467540, 0.515723,
		-0.520040, 0.852729, 0.049111,
		-0.462733, -0.232937, -0.855347,
		32.335217, 32.090981, 41.342686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901005, 32.529579, 42.072533>,  <32.659130, 32.254036, 41.941429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901005, 32.529579, 42.072533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903282, 32.248287, 41.788158>,  <31.904648, 32.079510, 41.617535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903282, 32.248287, 41.788158>,  <31.901005, 32.529579, 42.072533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903282, 32.248287, 41.788158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763269, -0.462374, 0.451255,
		-0.646056, 0.540066, -0.539389,
		0.005692, -0.703234, -0.710935,
		31.904989, 32.037315, 41.574879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221291, 32.519428, 41.816303>,  <31.901005, 32.529579, 42.072533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221291, 32.519428, 41.816303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377073, 32.163471, 41.721294>,  <31.470543, 31.949898, 41.664288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377073, 32.163471, 41.721294>,  <31.221291, 32.519428, 41.816303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377073, 32.163471, 41.721294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784033, -0.455640, 0.421526,
		-0.483339, 0.022063, -0.875155,
		0.389456, -0.889890, -0.237527,
		31.493910, 31.896503, 41.650036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651487, 32.161095, 41.450245>,  <31.221291, 32.519428, 41.816303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651487, 32.161095, 41.450245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898643, 31.871569, 41.573078>,  <31.046936, 31.697853, 41.646778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.898643, 31.871569, 41.573078>,  <30.651487, 32.161095, 41.450245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898643, 31.871569, 41.573078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764689, -0.462338, 0.448880,
		-0.182929, -0.512185, -0.839168,
		0.617889, -0.723816, 0.307088,
		31.084011, 31.654425, 41.665203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351032, 31.443159, 41.275471>,  <30.651487, 32.161095, 41.450245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351032, 31.443159, 41.275471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601381, 31.399086, 41.584312>,  <30.751591, 31.372643, 41.769619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601381, 31.399086, 41.584312>,  <30.351032, 31.443159, 41.275471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601381, 31.399086, 41.584312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624316, -0.664124, 0.411302,
		0.467455, -0.739459, -0.484444,
		0.625872, -0.110181, 0.772104,
		30.789143, 31.366032, 41.815945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317104, 30.718342, 41.439587>,  <30.351032, 31.443159, 41.275471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317104, 30.718342, 41.439587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483217, 30.883785, 41.763676>,  <30.582886, 30.983051, 41.958130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483217, 30.883785, 41.763676>,  <30.317104, 30.718342, 41.439587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483217, 30.883785, 41.763676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585144, -0.560499, 0.586044,
		0.696525, -0.717473, 0.009256,
		0.415283, 0.413610, 0.810226,
		30.607801, 31.007868, 42.006744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292458, 30.170368, 41.861061>,  <30.317104, 30.718342, 41.439587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292458, 30.170368, 41.861061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381617, 30.480463, 42.097473>,  <30.435112, 30.666521, 42.239323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381617, 30.480463, 42.097473>,  <30.292458, 30.170368, 41.861061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381617, 30.480463, 42.097473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516307, -0.420388, 0.746125,
		0.826888, -0.471465, 0.306557,
		0.222899, 0.775239, 0.591034,
		30.448486, 30.713036, 42.274784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459698, 29.856333, 42.355171>,  <30.292458, 30.170368, 41.861061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459698, 29.856333, 42.355171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346039, 30.219051, 42.479736>,  <30.277843, 30.436684, 42.554474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346039, 30.219051, 42.479736>,  <30.459698, 29.856333, 42.355171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346039, 30.219051, 42.479736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557236, -0.420501, 0.716007,
		0.780223, 0.029923, 0.624786,
		-0.284148, 0.906798, 0.311411,
		30.260794, 30.491091, 42.573158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558641, 29.829058, 43.031422>,  <30.459698, 29.856333, 42.355171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558641, 29.829058, 43.031422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297626, 30.126627, 42.973774>,  <30.141018, 30.305168, 42.939186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297626, 30.126627, 42.973774>,  <30.558641, 29.829058, 43.031422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297626, 30.126627, 42.973774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492681, -0.272027, 0.826599,
		0.575724, 0.610392, 0.544026,
		-0.652539, 0.743924, -0.144117,
		30.101864, 30.349804, 42.930538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381348, 29.939102, 43.722305>,  <30.558641, 29.829058, 43.031422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381348, 29.939102, 43.722305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099005, 30.122152, 43.506031>,  <29.929600, 30.231981, 43.376266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.099005, 30.122152, 43.506031>,  <30.381348, 29.939102, 43.722305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099005, 30.122152, 43.506031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672543, -0.193333, 0.714359,
		0.222375, 0.867872, 0.444238,
		-0.705858, 0.457624, -0.540689,
		29.887247, 30.259439, 43.343822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100031, 30.439970, 44.187775>,  <30.381348, 29.939102, 43.722305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100031, 30.439970, 44.187775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833080, 30.340933, 43.906834>,  <29.672909, 30.281511, 43.738270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833080, 30.340933, 43.906834>,  <30.100031, 30.439970, 44.187775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833080, 30.340933, 43.906834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628560, -0.318531, 0.709543,
		-0.399399, 0.915007, 0.056955,
		-0.667378, -0.247591, -0.702357,
		29.632866, 30.266655, 43.696125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473097, 30.759947, 44.379257>,  <30.100031, 30.439970, 44.187775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473097, 30.759947, 44.379257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352474, 30.496393, 44.103596>,  <29.280100, 30.338261, 43.938198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352474, 30.496393, 44.103596>,  <29.473097, 30.759947, 44.379257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352474, 30.496393, 44.103596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480607, -0.519211, 0.706709,
		-0.823456, 0.544326, -0.160092,
		-0.301558, -0.658885, -0.689154,
		29.262007, 30.298727, 43.896851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782721, 30.684710, 44.452606>,  <29.473097, 30.759947, 44.379257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782721, 30.684710, 44.452606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897268, 30.349844, 44.266209>,  <28.965996, 30.148926, 44.154369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897268, 30.349844, 44.266209>,  <28.782721, 30.684710, 44.452606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897268, 30.349844, 44.266209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508506, -0.545011, 0.666621,
		-0.812044, 0.046062, -0.581776,
		0.286369, -0.837163, -0.465996,
		28.983179, 30.098696, 44.126411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194162, 30.163586, 44.438618>,  <28.782721, 30.684710, 44.452606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194162, 30.163586, 44.438618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517618, 29.937687, 44.372700>,  <28.711693, 29.802147, 44.333149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.517618, 29.937687, 44.372700>,  <28.194162, 30.163586, 44.438618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.517618, 29.937687, 44.372700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441288, -0.767530, 0.464933,
		-0.389055, -0.303242, -0.869874,
		0.808642, -0.564749, -0.164795,
		28.760210, 29.768263, 44.323261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944622, 29.567614, 44.222328>,  <28.194162, 30.163586, 44.438618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944622, 29.567614, 44.222328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306252, 29.468740, 44.361786>,  <28.523230, 29.409416, 44.445461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.306252, 29.468740, 44.361786>,  <27.944622, 29.567614, 44.222328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306252, 29.468740, 44.361786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400211, -0.775864, 0.487716,
		0.149947, -0.580462, -0.800362,
		0.904072, -0.247182, 0.348646,
		28.577473, 29.394587, 44.466381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925217, 28.829838, 44.258472>,  <27.944622, 29.567614, 44.222328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925217, 28.829838, 44.258472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.233829, 28.913246, 44.498890>,  <28.418997, 28.963291, 44.643143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.233829, 28.913246, 44.498890>,  <27.925217, 28.829838, 44.258472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233829, 28.913246, 44.498890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302937, -0.710360, 0.635310,
		0.559435, -0.672241, -0.484896,
		0.771532, 0.208522, 0.601047,
		28.465290, 28.975803, 44.679203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135450, 28.188065, 44.315178>,  <27.925217, 28.829838, 44.258472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135450, 28.188065, 44.315178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319557, 28.371872, 44.619019>,  <28.430021, 28.482157, 44.801323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319557, 28.371872, 44.619019>,  <28.135450, 28.188065, 44.315178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319557, 28.371872, 44.619019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243475, -0.757476, 0.605764,
		0.853740, -0.463759, -0.236761,
		0.460269, 0.459520, 0.759601,
		28.457638, 28.509727, 44.846897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617205, 27.616520, 44.591026>,  <28.135450, 28.188065, 44.315178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617205, 27.616520, 44.591026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518213, 27.911976, 44.841839>,  <28.458818, 28.089249, 44.992325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518213, 27.911976, 44.841839>,  <28.617205, 27.616520, 44.591026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518213, 27.911976, 44.841839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484447, -0.654790, 0.580138,
		0.839086, -0.160191, 0.519879,
		-0.247479, 0.738640, 0.627029,
		28.443970, 28.133568, 45.029949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783440, 27.296436, 45.196575>,  <28.617205, 27.616520, 44.591026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783440, 27.296436, 45.196575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536167, 27.600443, 45.276806>,  <28.387804, 27.782846, 45.324944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536167, 27.600443, 45.276806>,  <28.783440, 27.296436, 45.196575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536167, 27.600443, 45.276806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553155, -0.601922, 0.575942,
		0.558455, 0.245087, 0.792503,
		-0.618181, 0.760015, 0.200575,
		28.350714, 27.828447, 45.336979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541267, 27.138536, 45.910339>,  <28.783440, 27.296436, 45.196575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541267, 27.138536, 45.910339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287916, 27.424652, 45.792225>,  <28.135906, 27.596321, 45.721355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287916, 27.424652, 45.792225>,  <28.541267, 27.138536, 45.910339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287916, 27.424652, 45.792225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669080, -0.314473, 0.673379,
		0.388798, 0.624076, 0.677765,
		-0.633379, 0.715287, -0.295291,
		28.097902, 27.639238, 45.703636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386494, 27.518326, 46.523041>,  <28.541267, 27.138536, 45.910339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386494, 27.518326, 46.523041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093618, 27.543179, 46.251736>,  <27.917892, 27.558090, 46.088955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093618, 27.543179, 46.251736>,  <28.386494, 27.518326, 46.523041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093618, 27.543179, 46.251736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616693, -0.483189, 0.621464,
		-0.289115, 0.873309, 0.392103,
		-0.732190, 0.062132, -0.678261,
		27.873962, 27.561819, 46.048256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809422, 27.799145, 46.898926>,  <28.386494, 27.518326, 46.523041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809422, 27.799145, 46.898926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665142, 27.617451, 46.573086>,  <27.578575, 27.508434, 46.377583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665142, 27.617451, 46.573086>,  <27.809422, 27.799145, 46.898926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665142, 27.617451, 46.573086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734811, -0.399499, 0.548137,
		-0.574414, 0.796286, -0.189678,
		-0.360697, -0.454235, -0.814597,
		27.556932, 27.481180, 46.328709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103359, 27.978647, 46.989044>,  <27.809422, 27.799145, 46.898926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103359, 27.978647, 46.989044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129272, 27.646486, 46.767689>,  <27.144819, 27.447189, 46.634876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129272, 27.646486, 46.767689>,  <27.103359, 27.978647, 46.989044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129272, 27.646486, 46.767689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720829, -0.422431, 0.549507,
		-0.690079, 0.363301, -0.625942,
		0.064781, -0.830400, -0.553389,
		27.148706, 27.397366, 46.601673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437073, 27.734692, 46.787231>,  <27.103359, 27.978647, 46.989044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.437073, 27.734692, 46.787231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626163, 27.385214, 46.741299>,  <26.739618, 27.175528, 46.713741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.626163, 27.385214, 46.741299>,  <26.437073, 27.734692, 46.787231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626163, 27.385214, 46.741299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791432, -0.478248, 0.380676,
		-0.387513, -0.089076, -0.917551,
		0.472726, -0.873696, -0.114830,
		26.767981, 27.123104, 46.706848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882133, 27.317532, 46.670006>,  <26.437073, 27.734692, 46.787231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882133, 27.317532, 46.670006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188084, 27.073387, 46.752399>,  <26.371653, 26.926901, 46.801834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188084, 27.073387, 46.752399>,  <25.882133, 27.317532, 46.670006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188084, 27.073387, 46.752399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613137, -0.591725, 0.523379,
		-0.197564, -0.526615, -0.826829,
		0.764874, -0.610360, 0.205983,
		26.417545, 26.890280, 46.814194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826017, 26.620787, 46.373966>,  <25.882133, 27.317532, 46.670006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826017, 26.620787, 46.373966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999687, 26.659626, 46.732197>,  <26.103889, 26.682930, 46.947136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999687, 26.659626, 46.732197>,  <25.826017, 26.620787, 46.373966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999687, 26.659626, 46.732197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562534, -0.747279, 0.353735,
		0.703597, -0.657377, -0.269826,
		0.434173, 0.097100, 0.895581,
		26.129940, 26.688757, 47.000870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058550, 25.979382, 46.519230>,  <25.826017, 26.620787, 46.373966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058550, 25.979382, 46.519230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037535, 26.175648, 46.867134>,  <26.024925, 26.293407, 47.075878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.037535, 26.175648, 46.867134>,  <26.058550, 25.979382, 46.519230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.037535, 26.175648, 46.867134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517620, -0.758211, 0.396466,
		0.853996, -0.429378, 0.293812,
		-0.052537, 0.490664, 0.869764,
		26.021774, 26.322847, 47.128063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313602, 25.478662, 47.025280>,  <26.058550, 25.979382, 46.519230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313602, 25.478662, 47.025280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054392, 25.713766, 47.219021>,  <25.898865, 25.854828, 47.335266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.054392, 25.713766, 47.219021>,  <26.313602, 25.478662, 47.025280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.054392, 25.713766, 47.219021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440312, -0.808027, 0.391430,
		0.621439, 0.040391, 0.782421,
		-0.648027, 0.587759, 0.484355,
		25.859983, 25.890095, 47.364326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624380, 25.048540, 46.794125>,  <26.313602, 25.478662, 47.025280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624380, 25.048540, 46.794125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517696, 24.669666, 46.722900>,  <25.453686, 24.442341, 46.680168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.517696, 24.669666, 46.722900>,  <25.624380, 25.048540, 46.794125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.517696, 24.669666, 46.722900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604726, -0.020612, -0.796167,
		0.750449, -0.320019, 0.578286,
		-0.266708, -0.947187, -0.178056,
		25.437683, 24.385509, 46.669483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231148, 24.645224, 46.961838>,  <25.624380, 25.048540, 46.794125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.231148, 24.645224, 46.961838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996840, 24.527048, 46.659954>,  <25.856255, 24.456142, 46.478825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996840, 24.527048, 46.659954>,  <26.231148, 24.645224, 46.961838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996840, 24.527048, 46.659954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741584, 0.180323, -0.646170,
		0.326996, -0.938189, 0.113465,
		-0.585770, -0.295439, -0.754712,
		25.821108, 24.438417, 46.433540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650738, 24.610229, 46.308945>,  <26.231148, 24.645224, 46.961838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650738, 24.610229, 46.308945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419836, 24.463923, 46.016922>,  <26.281294, 24.376139, 45.841709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419836, 24.463923, 46.016922>,  <26.650738, 24.610229, 46.308945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419836, 24.463923, 46.016922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713183, 0.209581, -0.668914,
		0.397675, -0.906801, 0.139879,
		-0.577256, -0.365770, -0.730060,
		26.246658, 24.354191, 45.797905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159683, 24.423971, 45.861374>,  <26.650738, 24.610229, 46.308945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159683, 24.423971, 45.861374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831995, 24.431797, 45.632118>,  <26.635382, 24.436493, 45.494564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831995, 24.431797, 45.632118>,  <27.159683, 24.423971, 45.861374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831995, 24.431797, 45.632118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486829, 0.551964, -0.677003,
		0.303107, -0.833638, -0.461707,
		-0.819221, 0.019567, -0.573143,
		26.586229, 24.437668, 45.460175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122253, 24.087467, 45.135708>,  <27.159683, 24.423971, 45.861374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122253, 24.087467, 45.135708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894484, 24.416281, 45.134304>,  <26.757822, 24.613569, 45.133461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894484, 24.416281, 45.134304>,  <27.122253, 24.087467, 45.135708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894484, 24.416281, 45.134304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508654, 0.348982, -0.787072,
		-0.645774, -0.449967, -0.616851,
		-0.569427, 0.822034, -0.003514,
		26.723656, 24.662891, 45.133251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810690, 24.107571, 44.456085>,  <27.122253, 24.087467, 45.135708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810690, 24.107571, 44.456085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789515, 24.470547, 44.622818>,  <26.776810, 24.688332, 44.722858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789515, 24.470547, 44.622818>,  <26.810690, 24.107571, 44.456085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789515, 24.470547, 44.622818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427368, 0.397851, -0.811832,
		-0.902527, 0.135163, -0.408873,
		-0.052941, 0.907439, 0.416835,
		26.773632, 24.742779, 44.747868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433804, 24.511744, 43.953949>,  <26.810690, 24.107571, 44.456085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433804, 24.511744, 43.953949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678009, 24.728609, 44.184887>,  <26.824533, 24.858728, 44.323452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678009, 24.728609, 44.184887>,  <26.433804, 24.511744, 43.953949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678009, 24.728609, 44.184887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439958, 0.373993, -0.816435,
		-0.658565, 0.752455, -0.010200,
		0.610515, 0.542163, 0.577347,
		26.861164, 24.891258, 44.358089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325348, 25.129725, 43.693974>,  <26.433804, 24.511744, 43.953949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325348, 25.129725, 43.693974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667479, 25.141090, 43.900898>,  <26.872757, 25.147909, 44.025051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667479, 25.141090, 43.900898>,  <26.325348, 25.129725, 43.693974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667479, 25.141090, 43.900898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495057, 0.249592, -0.832239,
		-0.152765, 0.967934, 0.199416,
		0.855325, 0.028415, 0.517312,
		26.924076, 25.149614, 44.056091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624062, 25.718618, 43.481773>,  <26.325348, 25.129725, 43.693974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624062, 25.718618, 43.481773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941458, 25.529585, 43.635155>,  <27.131895, 25.416164, 43.727184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941458, 25.529585, 43.635155>,  <26.624062, 25.718618, 43.481773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941458, 25.529585, 43.635155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542290, 0.263081, -0.797942,
		0.276214, 0.841103, 0.465029,
		0.793491, -0.472583, 0.383455,
		27.179504, 25.387810, 43.750191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069277, 26.268642, 43.539200>,  <26.624062, 25.718618, 43.481773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069277, 26.268642, 43.539200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271076, 25.923306, 43.534775>,  <27.392155, 25.716103, 43.532120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271076, 25.923306, 43.534775>,  <27.069277, 26.268642, 43.539200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271076, 25.923306, 43.534775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610150, 0.365548, -0.702917,
		0.610902, 0.347871, 0.711186,
		0.504497, -0.863343, -0.011060,
		27.422424, 25.664303, 43.531456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737823, 26.476938, 43.642464>,  <27.069277, 26.268642, 43.539200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737823, 26.476938, 43.642464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726009, 26.127817, 43.447594>,  <27.718920, 25.918344, 43.330673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726009, 26.127817, 43.447594>,  <27.737823, 26.476938, 43.642464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726009, 26.127817, 43.447594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768192, 0.292018, -0.569742,
		0.639538, -0.391073, 0.661856,
		-0.029537, -0.872804, -0.487176,
		27.717148, 25.865976, 43.301441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432089, 26.268623, 43.576290>,  <27.737823, 26.476938, 43.642464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432089, 26.268623, 43.576290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238762, 26.046452, 43.305618>,  <28.122765, 25.913149, 43.143215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.238762, 26.046452, 43.305618>,  <28.432089, 26.268623, 43.576290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238762, 26.046452, 43.305618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771258, 0.095562, -0.629308,
		0.414202, -0.826053, 0.382194,
		-0.483319, -0.555431, -0.676683,
		28.093767, 25.879822, 43.102612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980665, 26.031942, 43.263763>,  <28.432089, 26.268623, 43.576290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980665, 26.031942, 43.263763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686756, 25.963362, 43.001247>,  <28.510410, 25.922213, 42.843739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.686756, 25.963362, 43.001247>,  <28.980665, 26.031942, 43.263763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686756, 25.963362, 43.001247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666331, -0.001393, -0.745655,
		0.126930, -0.985192, 0.115267,
		-0.734774, -0.171452, -0.656287,
		28.466324, 25.911926, 42.804363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244303, 25.535252, 42.717453>,  <28.980665, 26.031942, 43.263763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244303, 25.535252, 42.717453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927902, 25.715200, 42.551594>,  <28.738062, 25.823170, 42.452080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927902, 25.715200, 42.551594>,  <29.244303, 25.535252, 42.717453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927902, 25.715200, 42.551594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497981, 0.079694, -0.863518,
		-0.355429, -0.889530, -0.287067,
		-0.791002, 0.449873, -0.414644,
		28.690601, 25.850163, 42.427200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151390, 25.190109, 42.119324>,  <29.244303, 25.535252, 42.717453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151390, 25.190109, 42.119324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983751, 25.551023, 42.078842>,  <28.883167, 25.767572, 42.054554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983751, 25.551023, 42.078842>,  <29.151390, 25.190109, 42.119324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983751, 25.551023, 42.078842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493837, 0.132995, -0.859324,
		-0.761894, -0.410118, -0.501319,
		-0.419097, 0.902283, -0.101203,
		28.858023, 25.821709, 42.048481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035376, 25.233322, 41.424343>,  <29.151390, 25.190109, 42.119324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035376, 25.233322, 41.424343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034191, 25.607473, 41.565796>,  <29.033482, 25.831964, 41.650669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034191, 25.607473, 41.565796>,  <29.035376, 25.233322, 41.424343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034191, 25.607473, 41.565796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459854, 0.315300, -0.830133,
		-0.887990, 0.160164, -0.431070,
		-0.002959, 0.935378, 0.353636,
		29.033304, 25.888086, 41.671886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959988, 25.706429, 40.908020>,  <29.035376, 25.233322, 41.424343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959988, 25.706429, 40.908020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103392, 25.955811, 41.185947>,  <29.189434, 26.105440, 41.352703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.103392, 25.955811, 41.185947>,  <28.959988, 25.706429, 40.908020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103392, 25.955811, 41.185947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501293, 0.499309, -0.706680,
		-0.787512, 0.601661, -0.133524,
		0.358512, 0.623453, 0.694820,
		29.210945, 26.142847, 41.394394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065794, 26.216566, 40.452873>,  <28.959988, 25.706429, 40.908020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065794, 26.216566, 40.452873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247604, 26.322067, 40.793190>,  <29.356691, 26.385368, 40.997379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247604, 26.322067, 40.793190>,  <29.065794, 26.216566, 40.452873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247604, 26.322067, 40.793190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605468, 0.609075, -0.512286,
		-0.653310, 0.747972, 0.117147,
		0.454527, 0.263753, 0.850788,
		29.383963, 26.401194, 41.048428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245970, 26.912430, 40.327976>,  <29.065794, 26.216566, 40.452873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245970, 26.912430, 40.327976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474117, 26.824949, 40.644672>,  <29.611006, 26.772461, 40.834690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474117, 26.824949, 40.644672>,  <29.245970, 26.912430, 40.327976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474117, 26.824949, 40.644672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770887, 0.475298, -0.424058,
		-0.283568, 0.852209, 0.439692,
		0.570371, -0.218704, 0.791736,
		29.645229, 26.759338, 40.882195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441675, 27.528992, 40.705482>,  <29.245970, 26.912430, 40.327976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441675, 27.528992, 40.705482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720978, 27.244036, 40.733578>,  <29.888559, 27.073061, 40.750435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720978, 27.244036, 40.733578>,  <29.441675, 27.528992, 40.705482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720978, 27.244036, 40.733578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639041, 0.576114, -0.509626,
		0.322586, 0.400739, 0.857524,
		0.698259, -0.712391, 0.070242,
		29.930456, 27.030319, 40.754650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010128, 27.909588, 40.974220>,  <29.441675, 27.528992, 40.705482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010128, 27.909588, 40.974220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216957, 27.587854, 40.857136>,  <30.341055, 27.394814, 40.786884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.216957, 27.587854, 40.857136>,  <30.010128, 27.909588, 40.974220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216957, 27.587854, 40.857136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759692, 0.588811, -0.275988,
		0.394340, -0.079667, 0.915505,
		0.517072, -0.804335, -0.292714,
		30.372078, 27.346554, 40.769321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667154, 28.022829, 41.098701>,  <30.010128, 27.909588, 40.974220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667154, 28.022829, 41.098701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694860, 27.723045, 40.835335>,  <30.711485, 27.543175, 40.677315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694860, 27.723045, 40.835335>,  <30.667154, 28.022829, 41.098701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694860, 27.723045, 40.835335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717374, 0.496060, -0.489183,
		0.693237, -0.438449, 0.572001,
		0.069265, -0.749458, -0.658419,
		30.715639, 27.498207, 40.637810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333813, 27.907911, 41.128551>,  <30.667154, 28.022829, 41.098701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333813, 27.907911, 41.128551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185301, 27.788736, 40.776783>,  <31.096193, 27.717232, 40.565723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185301, 27.788736, 40.776783>,  <31.333813, 27.907911, 41.128551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185301, 27.788736, 40.776783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686740, 0.549338, -0.476042,
		0.624932, -0.780679, 0.000649,
		-0.371279, -0.297939, -0.879423,
		31.073917, 27.699354, 40.512955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892004, 27.752262, 40.640049>,  <31.333813, 27.907911, 41.128551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892004, 27.752262, 40.640049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583067, 27.793991, 40.389416>,  <31.397705, 27.819029, 40.239037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583067, 27.793991, 40.389416>,  <31.892004, 27.752262, 40.640049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583067, 27.793991, 40.389416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615428, 0.367124, -0.697473,
		0.157269, -0.924303, -0.347750,
		-0.772344, 0.104324, -0.626580,
		31.351364, 27.825289, 40.201443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192265, 27.832233, 39.938740>,  <31.892004, 27.752262, 40.640049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192265, 27.832233, 39.938740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817255, 27.930645, 39.840343>,  <31.592249, 27.989691, 39.781307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817255, 27.930645, 39.840343>,  <32.192265, 27.832233, 39.938740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817255, 27.930645, 39.840343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330044, 0.405279, -0.852537,
		-0.110052, -0.880466, -0.461161,
		-0.937528, 0.246027, -0.245991,
		31.535997, 28.004454, 39.766544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993330, 27.547949, 39.197712>,  <32.192265, 27.832233, 39.938740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993330, 27.547949, 39.197712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794737, 27.877626, 39.306679>,  <31.675581, 28.075434, 39.372059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794737, 27.877626, 39.306679>,  <31.993330, 27.547949, 39.197712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794737, 27.877626, 39.306679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285963, 0.451604, -0.845150,
		-0.819593, -0.341699, -0.459902,
		-0.496481, 0.824194, 0.272418,
		31.645792, 28.124884, 39.388405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726181, 27.792355, 38.561653>,  <31.993330, 27.547949, 39.197712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726181, 27.792355, 38.561653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683937, 28.107712, 38.804070>,  <31.658590, 28.296926, 38.949520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683937, 28.107712, 38.804070>,  <31.726181, 27.792355, 38.561653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683937, 28.107712, 38.804070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221386, 0.612790, -0.758602,
		-0.969451, 0.054053, -0.239255,
		-0.105609, 0.788395, 0.606037,
		31.652254, 28.344231, 38.985882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236303, 28.246365, 38.235451>,  <31.726181, 27.792355, 38.561653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236303, 28.246365, 38.235451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444456, 28.484554, 38.480274>,  <31.569347, 28.627468, 38.627167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444456, 28.484554, 38.480274>,  <31.236303, 28.246365, 38.235451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444456, 28.484554, 38.480274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250051, 0.579073, -0.775983,
		-0.816503, 0.556853, 0.152441,
		0.520383, 0.595474, 0.612056,
		31.600571, 28.663197, 38.663891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046177, 28.795885, 38.085098>,  <31.236303, 28.246365, 38.235451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046177, 28.795885, 38.085098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389450, 28.885679, 38.269760>,  <31.595413, 28.939556, 38.380558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389450, 28.885679, 38.269760>,  <31.046177, 28.795885, 38.085098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389450, 28.885679, 38.269760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179362, 0.711509, -0.679399,
		-0.480989, 0.665853, 0.570341,
		0.858183, 0.224486, 0.461657,
		31.646906, 28.953026, 38.408257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086946, 29.440245, 38.120888>,  <31.046177, 28.795885, 38.085098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086946, 29.440245, 38.120888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477573, 29.387423, 38.188862>,  <31.711950, 29.355730, 38.229645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477573, 29.387423, 38.188862>,  <31.086946, 29.440245, 38.120888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477573, 29.387423, 38.188862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210258, 0.753883, -0.622456,
		-0.045915, 0.643600, 0.763983,
		0.976567, -0.132053, 0.169937,
		31.770544, 29.347807, 38.239841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364649, 30.047050, 38.507549>,  <31.086946, 29.440245, 38.120888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364649, 30.047050, 38.507549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668419, 29.878059, 38.309643>,  <31.850681, 29.776665, 38.190899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668419, 29.878059, 38.309643>,  <31.364649, 30.047050, 38.507549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668419, 29.878059, 38.309643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005447, 0.756320, -0.654179,
		0.650574, 0.499494, 0.572066,
		0.759423, -0.422476, -0.494763,
		31.896246, 29.751316, 38.161213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828156, 30.631588, 38.388191>,  <31.364649, 30.047050, 38.507549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828156, 30.631588, 38.388191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989100, 30.373793, 38.128117>,  <32.085667, 30.219116, 37.972073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989100, 30.373793, 38.128117>,  <31.828156, 30.631588, 38.388191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989100, 30.373793, 38.128117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168931, 0.750284, -0.639169,
		0.899759, 0.147341, 0.410760,
		0.402362, -0.644488, -0.650185,
		32.109810, 30.180447, 37.933060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500957, 30.932199, 38.122154>,  <31.828156, 30.631588, 38.388191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500957, 30.932199, 38.122154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409714, 30.653957, 37.849655>,  <32.354969, 30.487013, 37.686153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.409714, 30.653957, 37.849655>,  <32.500957, 30.932199, 38.122154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409714, 30.653957, 37.849655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303343, 0.614098, -0.728606,
		0.925176, -0.372852, 0.070928,
		-0.228105, -0.695604, -0.681251,
		32.341282, 30.445276, 37.645279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147854, 30.724497, 37.695911>,  <32.500957, 30.932199, 38.122154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147854, 30.724497, 37.695911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839279, 30.624828, 37.461712>,  <32.654137, 30.565027, 37.321194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839279, 30.624828, 37.461712>,  <33.147854, 30.724497, 37.695911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839279, 30.624828, 37.461712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392740, 0.537515, -0.746213,
		0.500647, -0.805601, -0.316796,
		-0.771432, -0.249171, -0.585497,
		32.607849, 30.550077, 37.286064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396137, 30.595985, 37.053185>,  <33.147854, 30.724497, 37.695911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396137, 30.595985, 37.053185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008228, 30.675087, 36.995995>,  <32.775482, 30.722548, 36.961681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.008228, 30.675087, 36.995995>,  <33.396137, 30.595985, 37.053185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008228, 30.675087, 36.995995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233129, 0.577640, -0.782293,
		-0.072110, -0.791976, -0.606279,
		-0.969768, 0.197752, -0.142979,
		32.717297, 30.734413, 36.953102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354301, 30.448870, 36.312691>,  <33.396137, 30.595985, 37.053185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354301, 30.448870, 36.312691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055477, 30.696695, 36.409065>,  <32.876183, 30.845390, 36.466888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055477, 30.696695, 36.409065>,  <33.354301, 30.448870, 36.312691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055477, 30.696695, 36.409065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141761, 0.502576, -0.852831,
		-0.649470, -0.602958, -0.463282,
		-0.747057, 0.619563, 0.240932,
		32.831360, 30.882565, 36.481346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071705, 30.613686, 35.687130>,  <33.354301, 30.448870, 36.312691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071705, 30.613686, 35.687130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890121, 30.868816, 35.936001>,  <32.781174, 31.021894, 36.085323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890121, 30.868816, 35.936001>,  <33.071705, 30.613686, 35.687130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890121, 30.868816, 35.936001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117853, 0.735114, -0.667621,
		-0.883197, -0.229744, -0.408878,
		-0.453954, 0.637828, 0.622175,
		32.753937, 31.060165, 36.122654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536446, 31.008986, 35.311928>,  <33.071705, 30.613686, 35.687130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536446, 31.008986, 35.311928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648426, 31.234823, 35.622505>,  <32.715614, 31.370325, 35.808853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648426, 31.234823, 35.622505>,  <32.536446, 31.008986, 35.311928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648426, 31.234823, 35.622505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198320, 0.757325, -0.622196,
		-0.939307, 0.328167, 0.100041,
		0.279947, 0.564594, 0.776443,
		32.732410, 31.404202, 35.855438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356815, 31.612688, 35.107349>,  <32.536446, 31.008986, 35.311928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356815, 31.612688, 35.107349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596241, 31.698053, 35.416199>,  <32.739899, 31.749273, 35.601509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596241, 31.698053, 35.416199>,  <32.356815, 31.612688, 35.107349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596241, 31.698053, 35.416199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262211, 0.858567, -0.440577,
		-0.756944, 0.466174, 0.457949,
		0.598566, 0.213413, 0.772123,
		32.775810, 31.762077, 35.647835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190063, 32.294170, 35.176521>,  <32.356815, 31.612688, 35.107349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190063, 32.294170, 35.176521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546314, 32.216824, 35.341156>,  <32.760063, 32.170418, 35.439938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546314, 32.216824, 35.341156>,  <32.190063, 32.294170, 35.176521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546314, 32.216824, 35.341156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345919, 0.875586, -0.337178,
		-0.295178, 0.442673, 0.846706,
		0.890623, -0.193364, 0.411583,
		32.813499, 32.158813, 35.464630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462574, 32.905178, 35.431549>,  <32.190063, 32.294170, 35.176521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462574, 32.905178, 35.431549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796898, 32.685661, 35.425144>,  <32.997490, 32.553951, 35.421299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796898, 32.685661, 35.425144>,  <32.462574, 32.905178, 35.431549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796898, 32.685661, 35.425144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500684, 0.773861, -0.387886,
		0.225261, 0.316180, 0.921568,
		0.835807, -0.548790, -0.016015,
		33.047642, 32.521023, 35.420341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958038, 33.266857, 35.795143>,  <32.462574, 32.905178, 35.431549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958038, 33.266857, 35.795143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151550, 33.004581, 35.563271>,  <33.267658, 32.847218, 35.424145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151550, 33.004581, 35.563271>,  <32.958038, 33.266857, 35.795143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151550, 33.004581, 35.563271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637602, 0.717772, -0.279760,
		0.599516, -0.234265, 0.765311,
		0.483781, -0.655685, -0.579684,
		33.296684, 32.807877, 35.389366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642200, 33.430637, 35.799770>,  <32.958038, 33.266857, 35.795143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642200, 33.430637, 35.799770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660847, 33.195179, 35.476952>,  <33.672035, 33.053905, 35.283260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660847, 33.195179, 35.476952>,  <33.642200, 33.430637, 35.799770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660847, 33.195179, 35.476952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731690, 0.570144, -0.373584,
		0.680041, -0.573094, 0.457283,
		0.046618, -0.588642, -0.807049,
		33.674831, 33.018585, 35.234837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298157, 33.089199, 35.733242>,  <33.642200, 33.430637, 35.799770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298157, 33.089199, 35.733242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159962, 33.129864, 35.360081>,  <34.077045, 33.154263, 35.136185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159962, 33.129864, 35.360081>,  <34.298157, 33.089199, 35.733242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159962, 33.129864, 35.360081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879066, 0.383009, -0.283807,
		0.328457, -0.918133, -0.221694,
		-0.345483, 0.101666, -0.932902,
		34.056316, 33.160362, 35.080212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889717, 32.934925, 35.335770>,  <34.298157, 33.089199, 35.733242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889717, 32.934925, 35.335770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631908, 33.135487, 35.104881>,  <34.477222, 33.255825, 34.966347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.631908, 33.135487, 35.104881>,  <34.889717, 32.934925, 35.335770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631908, 33.135487, 35.104881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763775, 0.387415, -0.516292,
		-0.035249, -0.773627, -0.632659,
		-0.644519, 0.501408, -0.577221,
		34.438553, 33.285908, 34.931713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511848, 32.500694, 34.965515>,  <34.889717, 32.934925, 35.335770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511848, 32.500694, 34.965515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869572, 32.349529, 35.061344>,  <36.084206, 32.258831, 35.118839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869572, 32.349529, 35.061344>,  <35.511848, 32.500694, 34.965515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869572, 32.349529, 35.061344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447307, -0.768712, 0.457163,
		0.011390, -0.516005, -0.856510,
		0.894307, -0.377916, 0.239568,
		36.137863, 32.236153, 35.133213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494381, 31.711182, 34.820114>,  <35.511848, 32.500694, 34.965515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494381, 31.711182, 34.820114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766872, 31.791035, 35.101845>,  <35.930367, 31.838947, 35.270882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766872, 31.791035, 35.101845>,  <35.494381, 31.711182, 34.820114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766872, 31.791035, 35.101845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374238, -0.731919, 0.569421,
		0.629185, -0.651491, -0.423893,
		0.681228, 0.199635, 0.704325,
		35.971241, 31.850925, 35.313141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756077, 31.093891, 34.923164>,  <35.494381, 31.711182, 34.820114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756077, 31.093891, 34.923164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861851, 31.300560, 35.248894>,  <35.925316, 31.424561, 35.444332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861851, 31.300560, 35.248894>,  <35.756077, 31.093891, 34.923164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861851, 31.300560, 35.248894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089310, -0.827634, 0.554117,
		0.960259, -0.219256, -0.172714,
		0.264437, 0.516670, 0.814325,
		35.941181, 31.455561, 35.493191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263103, 30.761631, 35.167919>,  <35.756077, 31.093891, 34.923164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263103, 30.761631, 35.167919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105255, 30.969969, 35.470703>,  <36.010544, 31.094971, 35.652374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105255, 30.969969, 35.470703>,  <36.263103, 30.761631, 35.167919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105255, 30.969969, 35.470703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007401, -0.825598, 0.564211,
		0.918813, 0.217049, 0.329655,
		-0.394623, 0.520844, 0.756963,
		35.986870, 31.126223, 35.697792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602364, 30.480684, 35.790340>,  <36.263103, 30.761631, 35.167919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602364, 30.480684, 35.790340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274582, 30.673073, 35.915024>,  <36.077911, 30.788506, 35.989834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274582, 30.673073, 35.915024>,  <36.602364, 30.480684, 35.790340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274582, 30.673073, 35.915024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239028, -0.781092, 0.576854,
		0.520923, 0.398199, 0.755034,
		-0.819454, 0.480971, 0.311708,
		36.028748, 30.817364, 36.008537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543102, 30.244228, 36.460323>,  <36.602364, 30.480684, 35.790340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543102, 30.244228, 36.460323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176197, 30.397896, 36.418301>,  <35.956055, 30.490095, 36.393085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176197, 30.397896, 36.418301>,  <36.543102, 30.244228, 36.460323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176197, 30.397896, 36.418301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358487, -0.681469, 0.638034,
		0.173518, 0.622909, 0.762807,
		-0.917267, 0.384167, -0.105057,
		35.901016, 30.513145, 36.386784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277905, 30.424345, 37.144314>,  <36.543102, 30.244228, 36.460323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277905, 30.424345, 37.144314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958519, 30.382442, 36.907169>,  <35.766888, 30.357302, 36.764881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958519, 30.382442, 36.907169>,  <36.277905, 30.424345, 37.144314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958519, 30.382442, 36.907169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419497, -0.609535, 0.672673,
		-0.431838, 0.785807, 0.442744,
		-0.798460, -0.104756, -0.592864,
		35.718983, 30.351015, 36.729309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644745, 30.570652, 37.524788>,  <36.277905, 30.424345, 37.144314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644745, 30.570652, 37.524788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495155, 30.346279, 37.229359>,  <35.405399, 30.211655, 37.052101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495155, 30.346279, 37.229359>,  <35.644745, 30.570652, 37.524788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495155, 30.346279, 37.229359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519446, -0.533048, 0.667859,
		-0.768322, 0.633413, -0.092028,
		-0.373976, -0.560934, -0.738577,
		35.382961, 30.177999, 37.007786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920982, 30.360153, 37.719570>,  <35.644745, 30.570652, 37.524788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920982, 30.360153, 37.719570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963665, 30.109371, 37.410885>,  <34.989277, 29.958902, 37.225674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963665, 30.109371, 37.410885>,  <34.920982, 30.360153, 37.719570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963665, 30.109371, 37.410885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269909, -0.765266, 0.584394,
		-0.956955, 0.145933, -0.250881,
		0.106708, -0.626954, -0.771714,
		34.995678, 29.921286, 37.179371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317951, 29.883120, 37.683731>,  <34.920982, 30.360153, 37.719570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317951, 29.883120, 37.683731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628689, 29.702948, 37.507717>,  <34.815132, 29.594845, 37.402111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628689, 29.702948, 37.507717>,  <34.317951, 29.883120, 37.683731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628689, 29.702948, 37.507717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196033, -0.837069, 0.510771,
		-0.598403, -0.310529, -0.738571,
		0.776844, -0.450431, -0.440031,
		34.861740, 29.567818, 37.375710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965076, 29.333994, 37.566105>,  <34.317951, 29.883120, 37.683731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965076, 29.333994, 37.566105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341465, 29.207422, 37.518021>,  <34.567299, 29.131479, 37.489170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341465, 29.207422, 37.518021>,  <33.965076, 29.333994, 37.566105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341465, 29.207422, 37.518021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192679, -0.792688, 0.578378,
		-0.278302, -0.521074, -0.806864,
		0.940969, -0.316430, -0.120207,
		34.623756, 29.112494, 37.481960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938435, 28.644575, 37.313076>,  <33.965076, 29.333994, 37.566105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938435, 28.644575, 37.313076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300175, 28.690403, 37.477528>,  <34.517220, 28.717899, 37.576199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300175, 28.690403, 37.477528>,  <33.938435, 28.644575, 37.313076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300175, 28.690403, 37.477528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198836, -0.739269, 0.643387,
		0.377646, -0.663593, -0.645777,
		0.904350, 0.114569, 0.411128,
		34.571480, 28.724773, 37.600864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362503, 28.032169, 37.250854>,  <33.938435, 28.644575, 37.313076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362503, 28.032169, 37.250854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511333, 28.222006, 37.569935>,  <34.600632, 28.335907, 37.761383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511333, 28.222006, 37.569935>,  <34.362503, 28.032169, 37.250854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511333, 28.222006, 37.569935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129820, -0.824346, 0.551000,
		0.919078, -0.308572, -0.245109,
		0.372077, 0.474592, 0.797697,
		34.622955, 28.364384, 37.809242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699631, 27.495682, 37.680153>,  <34.362503, 28.032169, 37.250854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699631, 27.495682, 37.680153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688133, 27.787474, 37.953514>,  <34.681236, 27.962549, 38.117531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688133, 27.787474, 37.953514>,  <34.699631, 27.495682, 37.680153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688133, 27.787474, 37.953514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231710, -0.669922, 0.705348,
		0.972360, -0.138076, 0.188284,
		-0.028744, 0.729479, 0.683399,
		34.679508, 28.006317, 38.158535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120888, 27.195984, 38.318005>,  <34.699631, 27.495682, 37.680153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120888, 27.195984, 38.318005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897797, 27.501362, 38.448292>,  <34.763943, 27.684589, 38.526463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897797, 27.501362, 38.448292>,  <35.120888, 27.195984, 38.318005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897797, 27.501362, 38.448292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424454, -0.599557, 0.678506,
		0.713289, 0.240168, 0.658436,
		-0.557725, 0.763447, 0.325717,
		34.730480, 27.730396, 38.546005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164566, 27.101625, 39.082413>,  <35.120888, 27.195984, 38.318005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164566, 27.101625, 39.082413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848667, 27.342997, 39.038288>,  <34.659126, 27.487820, 39.011814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848667, 27.342997, 39.038288>,  <35.164566, 27.101625, 39.082413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848667, 27.342997, 39.038288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502921, -0.533965, 0.679671,
		0.351231, 0.592247, 0.725176,
		-0.789752, 0.603428, -0.110308,
		34.611740, 27.524025, 39.005196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915985, 27.292860, 39.795094>,  <35.164566, 27.101625, 39.082413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915985, 27.292860, 39.795094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597893, 27.320454, 39.554146>,  <34.407036, 27.337009, 39.409576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597893, 27.320454, 39.554146>,  <34.915985, 27.292860, 39.795094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597893, 27.320454, 39.554146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526646, -0.570862, 0.629889,
		-0.300418, 0.818143, 0.490297,
		-0.795232, 0.068983, -0.602369,
		34.359322, 27.341148, 39.373436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286610, 27.574350, 40.233871>,  <34.915985, 27.292860, 39.795094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286610, 27.574350, 40.233871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159054, 27.365097, 39.917736>,  <34.082520, 27.239544, 39.728054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159054, 27.365097, 39.917736>,  <34.286610, 27.574350, 40.233871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159054, 27.365097, 39.917736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626419, -0.509452, 0.589964,
		-0.711272, 0.683219, -0.165241,
		-0.318892, -0.523135, -0.790341,
		34.063385, 27.208157, 39.680634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700275, 27.278076, 40.532368>,  <34.286610, 27.574350, 40.233871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700275, 27.278076, 40.532368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735435, 27.118019, 40.167477>,  <33.756531, 27.021986, 39.948544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735435, 27.118019, 40.167477>,  <33.700275, 27.278076, 40.532368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735435, 27.118019, 40.167477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552745, -0.781445, 0.289512,
		-0.828701, 0.478782, -0.289865,
		0.087901, -0.400140, -0.912229,
		33.761806, 26.997976, 39.893806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051491, 27.131746, 40.385040>,  <33.700275, 27.278076, 40.532368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051491, 27.131746, 40.385040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286480, 26.883081, 40.177803>,  <33.427471, 26.733883, 40.053459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286480, 26.883081, 40.177803>,  <33.051491, 27.131746, 40.385040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286480, 26.883081, 40.177803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440259, -0.782698, 0.439949,
		-0.679008, -0.030362, -0.733503,
		0.587469, -0.621660, -0.518091,
		33.462719, 26.696583, 40.022377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545158, 26.677691, 39.916626>,  <33.051491, 27.131746, 40.385040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545158, 26.677691, 39.916626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903564, 26.513964, 39.985470>,  <33.118607, 26.415728, 40.026775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903564, 26.513964, 39.985470>,  <32.545158, 26.677691, 39.916626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903564, 26.513964, 39.985470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422947, -0.668737, 0.611479,
		-0.135193, -0.620686, -0.772316,
		0.896012, -0.409316, 0.172109,
		33.172367, 26.391169, 40.037102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450947, 25.859594, 39.884792>,  <32.545158, 26.677691, 39.916626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450947, 25.859594, 39.884792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715942, 26.015486, 40.140675>,  <32.874939, 26.109020, 40.294205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715942, 26.015486, 40.140675>,  <32.450947, 25.859594, 39.884792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715942, 26.015486, 40.140675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435880, -0.493952, 0.752342,
		0.609192, -0.777253, -0.157363,
		0.662490, 0.389730, 0.639701,
		32.914688, 26.132404, 40.332584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377792, 25.354382, 40.326504>,  <32.450947, 25.859594, 39.884792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377792, 25.354382, 40.326504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560925, 25.648102, 40.526981>,  <32.670803, 25.824333, 40.647266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560925, 25.648102, 40.526981>,  <32.377792, 25.354382, 40.326504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560925, 25.648102, 40.526981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452690, -0.292640, 0.842279,
		0.765155, -0.612505, 0.198431,
		0.457831, 0.734302, 0.501190,
		32.698273, 25.868393, 40.677338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506569, 25.007624, 40.913555>,  <32.377792, 25.354382, 40.326504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506569, 25.007624, 40.913555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541489, 25.399412, 40.986233>,  <32.562439, 25.634485, 41.029839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541489, 25.399412, 40.986233>,  <32.506569, 25.007624, 40.913555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541489, 25.399412, 40.986233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578948, -0.098544, 0.809387,
		0.810678, -0.175847, 0.558462,
		0.087295, 0.979473, 0.181694,
		32.567677, 25.693254, 41.040741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644909, 24.962683, 41.660442>,  <32.506569, 25.007624, 40.913555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644909, 24.962683, 41.660442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534340, 25.338448, 41.579350>,  <32.467999, 25.563906, 41.530693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534340, 25.338448, 41.579350>,  <32.644909, 24.962683, 41.660442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534340, 25.338448, 41.579350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448999, 0.060274, 0.891497,
		0.849701, 0.337453, 0.405133,
		-0.276419, 0.939411, -0.202731,
		32.451416, 25.620272, 41.518532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750114, 25.296297, 42.308563>,  <32.644909, 24.962683, 41.660442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750114, 25.296297, 42.308563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497311, 25.526295, 42.100735>,  <32.345631, 25.664293, 41.976040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497311, 25.526295, 42.100735>,  <32.750114, 25.296297, 42.308563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497311, 25.526295, 42.100735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563182, 0.119772, 0.817606,
		0.532348, 0.809344, 0.248129,
		-0.632006, 0.574993, -0.519569,
		32.307709, 25.698793, 41.944862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653645, 25.853016, 42.711914>,  <32.750114, 25.296297, 42.308563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653645, 25.853016, 42.711914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333340, 25.857533, 42.472366>,  <32.141155, 25.860243, 42.328636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333340, 25.857533, 42.472366>,  <32.653645, 25.853016, 42.711914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333340, 25.857533, 42.472366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590472, 0.153040, 0.792415,
		0.100601, 0.988155, -0.115881,
		-0.800764, 0.011293, -0.598874,
		32.093109, 25.860920, 42.292706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324837, 26.497541, 42.883301>,  <32.653645, 25.853016, 42.711914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324837, 26.497541, 42.883301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064663, 26.248714, 42.708958>,  <31.908560, 26.099419, 42.604351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064663, 26.248714, 42.708958>,  <32.324837, 26.497541, 42.883301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064663, 26.248714, 42.708958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649843, 0.158659, 0.743324,
		-0.393246, 0.766720, -0.507443,
		-0.650432, -0.622068, -0.435856,
		31.869534, 26.062094, 42.578201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701719, 26.886288, 42.817127>,  <32.324837, 26.497541, 42.883301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701719, 26.886288, 42.817127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577860, 26.505993, 42.811188>,  <31.503544, 26.277817, 42.807625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577860, 26.505993, 42.811188>,  <31.701719, 26.886288, 42.817127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577860, 26.505993, 42.811188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605803, 0.185219, 0.773755,
		-0.732886, 0.248588, -0.633311,
		-0.309648, -0.950735, -0.014851,
		31.484966, 26.220772, 42.806732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991720, 26.918455, 42.918674>,  <31.701719, 26.886288, 42.817127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991720, 26.918455, 42.918674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102375, 26.547384, 43.018982>,  <31.168768, 26.324741, 43.079166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102375, 26.547384, 43.018982>,  <30.991720, 26.918455, 42.918674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102375, 26.547384, 43.018982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421885, 0.117215, 0.899040,
		-0.863414, -0.354503, -0.358948,
		0.276639, -0.927679, 0.250765,
		31.185368, 26.269081, 43.094212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334829, 26.607824, 43.041168>,  <30.991720, 26.918455, 42.918674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334829, 26.607824, 43.041168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603071, 26.375467, 43.225712>,  <30.764017, 26.236053, 43.336437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603071, 26.375467, 43.225712>,  <30.334829, 26.607824, 43.041168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603071, 26.375467, 43.225712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593782, -0.047552, 0.803219,
		-0.444647, -0.812589, -0.376813,
		0.670605, -0.580894, 0.461357,
		30.804253, 26.201199, 43.364120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982269, 26.074808, 43.266090>,  <30.334829, 26.607824, 43.041168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982269, 26.074808, 43.266090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296852, 26.073902, 43.513145>,  <30.485601, 26.073359, 43.661381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296852, 26.073902, 43.513145>,  <29.982269, 26.074808, 43.266090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296852, 26.073902, 43.513145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611852, -0.139495, 0.778574,
		0.084397, -0.990220, -0.111091,
		0.786457, -0.002262, 0.617642,
		30.532789, 26.073223, 43.698437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732725, 25.585876, 43.631668>,  <29.982269, 26.074808, 43.266090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732725, 25.585876, 43.631668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015703, 25.756147, 43.857349>,  <30.185490, 25.858309, 43.992756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015703, 25.756147, 43.857349>,  <29.732725, 25.585876, 43.631668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015703, 25.756147, 43.857349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520219, -0.226755, 0.823380,
		0.478428, -0.876004, 0.061028,
		0.707445, 0.425675, 0.564199,
		30.227938, 25.883850, 44.026608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730087, 25.173527, 44.170322>,  <29.732725, 25.585876, 43.631668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730087, 25.173527, 44.170322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943199, 25.481407, 44.311008>,  <30.071066, 25.666136, 44.395420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943199, 25.481407, 44.311008>,  <29.730087, 25.173527, 44.170322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943199, 25.481407, 44.311008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532059, -0.018525, 0.846505,
		0.658071, -0.638135, 0.399657,
		0.532781, 0.769701, 0.351716,
		30.103033, 25.712318, 44.416523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890528, 24.913870, 44.738453>,  <29.730087, 25.173527, 44.170322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890528, 24.913870, 44.738453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913849, 25.309593, 44.791920>,  <29.927841, 25.547028, 44.823997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913849, 25.309593, 44.791920>,  <29.890528, 24.913870, 44.738453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913849, 25.309593, 44.791920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443524, -0.094283, 0.891290,
		0.894364, -0.111248, 0.433286,
		0.058302, 0.989310, 0.133664,
		29.931339, 25.606386, 44.832020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444929, 25.216568, 45.295639>,  <29.890528, 24.913870, 44.738453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444929, 25.216568, 45.295639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109333, 25.427734, 45.242882>,  <29.907974, 25.554434, 45.211227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109333, 25.427734, 45.242882>,  <30.444929, 25.216568, 45.295639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109333, 25.427734, 45.242882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187053, -0.052195, 0.980962,
		0.510982, 0.847691, 0.142540,
		-0.838993, 0.527917, -0.131892,
		29.857635, 25.586109, 45.203316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276815, 25.301910, 46.011871>,  <30.444929, 25.216568, 45.295639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276815, 25.301910, 46.011871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976662, 25.495592, 45.831886>,  <29.796570, 25.611801, 45.723896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976662, 25.495592, 45.831886>,  <30.276815, 25.301910, 46.011871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976662, 25.495592, 45.831886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500193, 0.029061, 0.865426,
		0.432121, 0.874472, 0.220389,
		-0.750386, 0.484206, -0.449962,
		29.751547, 25.640854, 45.696899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061857, 25.943052, 46.506542>,  <30.276815, 25.301910, 46.011871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061857, 25.943052, 46.506542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747547, 25.906481, 46.261856>,  <29.558960, 25.884537, 46.115044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747547, 25.906481, 46.261856>,  <30.061857, 25.943052, 46.506542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747547, 25.906481, 46.261856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616829, 0.042960, 0.785924,
		-0.045578, 0.994885, -0.090154,
		-0.785777, -0.091430, -0.611715,
		29.511814, 25.879051, 46.078342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756357, 25.715313, 46.798565>,  <30.061857, 25.943052, 46.506542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756357, 25.715313, 46.798565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098160, 25.672991, 47.001987>,  <31.303242, 25.647596, 47.124039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098160, 25.672991, 47.001987>,  <30.756357, 25.715313, 46.798565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098160, 25.672991, 47.001987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504987, 0.398586, -0.765583,
		-0.121698, 0.911007, 0.394025,
		0.854505, -0.105807, 0.508554,
		31.354511, 25.641249, 47.154552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127800, 26.415445, 46.852654>,  <30.756357, 25.715313, 46.798565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127800, 26.415445, 46.852654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395607, 26.121702, 46.897308>,  <31.556292, 25.945456, 46.924103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395607, 26.121702, 46.897308>,  <31.127800, 26.415445, 46.852654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395607, 26.121702, 46.897308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514526, 0.350101, -0.782747,
		0.535733, 0.581504, 0.612245,
		0.669518, -0.734359, 0.111638,
		31.596462, 25.901394, 46.930801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665743, 26.734571, 46.561069>,  <31.127800, 26.415445, 46.852654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665743, 26.734571, 46.561069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854277, 26.394053, 46.653278>,  <31.967398, 26.189741, 46.708603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854277, 26.394053, 46.653278>,  <31.665743, 26.734571, 46.561069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854277, 26.394053, 46.653278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717416, 0.218046, -0.661642,
		0.512988, 0.477234, 0.713506,
		0.471335, -0.851295, 0.230520,
		31.995678, 26.138664, 46.722435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392994, 26.930866, 46.645802>,  <31.665743, 26.734571, 46.561069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392994, 26.930866, 46.645802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387138, 26.539541, 46.563160>,  <32.383625, 26.304747, 46.513573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387138, 26.539541, 46.563160>,  <32.392994, 26.930866, 46.645802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387138, 26.539541, 46.563160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700172, 0.137480, -0.700613,
		0.713824, -0.154919, 0.682976,
		-0.014643, -0.978315, -0.206606,
		32.382744, 26.246046, 46.501179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064342, 26.687626, 46.685616>,  <32.392994, 26.930866, 46.645802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064342, 26.687626, 46.685616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865887, 26.451244, 46.431175>,  <32.746815, 26.309416, 46.278511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865887, 26.451244, 46.431175>,  <33.064342, 26.687626, 46.685616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865887, 26.451244, 46.431175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738944, 0.097259, -0.666710,
		0.455862, -0.800820, 0.388430,
		-0.496137, -0.590956, -0.636098,
		32.717045, 26.273958, 46.240345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641354, 26.306618, 46.363121>,  <33.064342, 26.687626, 46.685616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641354, 26.306618, 46.363121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327400, 26.223886, 46.129478>,  <33.139030, 26.174248, 45.989292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.327400, 26.223886, 46.129478>,  <33.641354, 26.306618, 46.363121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327400, 26.223886, 46.129478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577757, 0.096431, -0.810492,
		0.223959, -0.973614, 0.043810,
		-0.784881, -0.206828, -0.584109,
		33.091934, 26.161839, 45.954247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934822, 25.840340, 45.885387>,  <33.641354, 26.306618, 46.363121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934822, 25.840340, 45.885387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603489, 25.988600, 45.717346>,  <33.404690, 26.077557, 45.616520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603489, 25.988600, 45.717346>,  <33.934822, 25.840340, 45.885387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603489, 25.988600, 45.717346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488378, 0.110298, -0.865633,
		-0.274511, -0.922199, -0.272381,
		-0.828330, 0.370651, -0.420104,
		33.354988, 26.099794, 45.591316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886314, 25.572945, 45.294632>,  <33.934822, 25.840340, 45.885387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886314, 25.572945, 45.294632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673920, 25.904106, 45.222382>,  <33.546482, 26.102802, 45.179031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673920, 25.904106, 45.222382>,  <33.886314, 25.572945, 45.294632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673920, 25.904106, 45.222382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520414, 0.150383, -0.840568,
		-0.668746, -0.540334, -0.510704,
		-0.530988, 0.827904, -0.180629,
		33.514622, 26.152477, 45.168194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653416, 25.505674, 44.554836>,  <33.886314, 25.572945, 45.294632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653416, 25.505674, 44.554836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654396, 25.891691, 44.659672>,  <33.654984, 26.123301, 44.722572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654396, 25.891691, 44.659672>,  <33.653416, 25.505674, 44.554836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654396, 25.891691, 44.659672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485882, 0.227925, -0.843783,
		-0.874021, 0.129411, -0.468338,
		0.002449, 0.965041, 0.262089,
		33.655132, 26.181204, 44.738300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628685, 25.867603, 43.923668>,  <33.653416, 25.505674, 44.554836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628685, 25.867603, 43.923668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700470, 26.172976, 44.171852>,  <33.743542, 26.356199, 44.320763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700470, 26.172976, 44.171852>,  <33.628685, 25.867603, 43.923668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700470, 26.172976, 44.171852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502105, 0.471281, -0.725110,
		-0.845981, 0.441664, -0.298745,
		0.179463, 0.763431, 0.620457,
		33.754311, 26.402004, 44.357990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400383, 26.582344, 43.622456>,  <33.628685, 25.867603, 43.923668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400383, 26.582344, 43.622456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677761, 26.660114, 43.899967>,  <33.844189, 26.706776, 44.066475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677761, 26.660114, 43.899967>,  <33.400383, 26.582344, 43.622456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677761, 26.660114, 43.899967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498807, 0.565299, -0.656985,
		-0.519928, 0.801646, 0.295024,
		0.693446, 0.194425, 0.693781,
		33.885796, 26.718441, 44.108101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535038, 27.318014, 43.572914>,  <33.400383, 26.582344, 43.622456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535038, 27.318014, 43.572914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858421, 27.169464, 43.755550>,  <34.052452, 27.080334, 43.865131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858421, 27.169464, 43.755550>,  <33.535038, 27.318014, 43.572914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858421, 27.169464, 43.755550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585372, 0.426781, -0.689346,
		0.061142, 0.824583, 0.562427,
		0.808456, -0.371377, 0.456594,
		34.100960, 27.058052, 43.892529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974438, 27.941706, 43.776390>,  <33.535038, 27.318014, 43.572914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974438, 27.941706, 43.776390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189259, 27.604910, 43.755848>,  <34.318150, 27.402832, 43.743523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189259, 27.604910, 43.755848>,  <33.974438, 27.941706, 43.776390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189259, 27.604910, 43.755848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659851, 0.457241, -0.596261,
		0.525524, 0.286336, 0.801147,
		0.537048, -0.841987, -0.051352,
		34.350372, 27.352314, 43.740440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710251, 28.029194, 43.993958>,  <33.974438, 27.941706, 43.776390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710251, 28.029194, 43.993958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744106, 27.700768, 43.768150>,  <34.764420, 27.503712, 43.632664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744106, 27.700768, 43.768150>,  <34.710251, 28.029194, 43.993958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744106, 27.700768, 43.768150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688824, 0.457585, -0.562261,
		0.719971, -0.341269, 0.604299,
		0.084636, -0.821067, -0.564522,
		34.769497, 27.454447, 43.598793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485767, 27.996239, 43.724705>,  <34.710251, 28.029194, 43.993958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485767, 27.996239, 43.724705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243362, 27.778112, 43.493057>,  <35.097919, 27.647236, 43.354069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243362, 27.778112, 43.493057>,  <35.485767, 27.996239, 43.724705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243362, 27.778112, 43.493057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534886, 0.259512, -0.804083,
		0.588769, -0.797047, 0.134415,
		-0.606010, -0.545316, -0.579122,
		35.061558, 27.614517, 43.319321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020519, 27.617443, 43.399395>,  <35.485767, 27.996239, 43.724705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020519, 27.617443, 43.399395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670708, 27.607794, 43.205643>,  <35.460823, 27.602005, 43.089394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670708, 27.607794, 43.205643>,  <36.020519, 27.617443, 43.399395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670708, 27.607794, 43.205643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476369, 0.144619, -0.867270,
		0.090968, -0.989193, -0.114984,
		-0.874527, -0.024119, -0.484377,
		35.408348, 27.600557, 43.060329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166916, 27.253448, 42.823788>,  <36.020519, 27.617443, 43.399395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166916, 27.253448, 42.823788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839790, 27.460548, 42.723293>,  <35.643517, 27.584808, 42.662998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839790, 27.460548, 42.723293>,  <36.166916, 27.253448, 42.823788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839790, 27.460548, 42.723293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375455, 0.149171, -0.914758,
		-0.436137, -0.842428, -0.316386,
		-0.817813, 0.517749, -0.251235,
		35.594448, 27.615873, 42.647923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049797, 27.058645, 42.067234>,  <36.166916, 27.253448, 42.823788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049797, 27.058645, 42.067234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852917, 27.398764, 42.141785>,  <35.734787, 27.602835, 42.186516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852917, 27.398764, 42.141785>,  <36.049797, 27.058645, 42.067234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852917, 27.398764, 42.141785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099801, 0.267813, -0.958288,
		-0.864742, -0.453069, -0.216678,
		-0.492200, 0.850297, 0.186372,
		35.705257, 27.653852, 42.197697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735546, 27.173414, 41.462177>,  <36.049797, 27.058645, 42.067234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735546, 27.173414, 41.462177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696781, 27.532238, 41.634636>,  <35.673523, 27.747532, 41.738113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696781, 27.532238, 41.634636>,  <35.735546, 27.173414, 41.462177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696781, 27.532238, 41.634636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029334, 0.435576, -0.899674,
		-0.994861, -0.074541, -0.068526,
		-0.096911, 0.897060, 0.431151,
		35.667709, 27.801355, 41.763981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241936, 27.484095, 41.029499>,  <35.735546, 27.173414, 41.462177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241936, 27.484095, 41.029499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454670, 27.763046, 41.221672>,  <35.582310, 27.930416, 41.336975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454670, 27.763046, 41.221672>,  <35.241936, 27.484095, 41.029499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454670, 27.763046, 41.221672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161209, 0.473573, -0.865875,
		-0.831363, 0.537952, 0.139439,
		0.531834, 0.697378, 0.480434,
		35.614220, 27.972260, 41.365803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018459, 28.201254, 40.695915>,  <35.241936, 27.484095, 41.029499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018459, 28.201254, 40.695915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361897, 28.272331, 40.888268>,  <35.567959, 28.314978, 41.003677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361897, 28.272331, 40.888268>,  <35.018459, 28.201254, 40.695915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361897, 28.272331, 40.888268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386046, 0.393099, -0.834531,
		-0.337322, 0.902163, 0.268915,
		0.858593, 0.177692, 0.480877,
		35.619476, 28.325640, 41.032532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183361, 28.965729, 40.483997>,  <35.018459, 28.201254, 40.695915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183361, 28.965729, 40.483997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501472, 28.750349, 40.595425>,  <35.692341, 28.621122, 40.662281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501472, 28.750349, 40.595425>,  <35.183361, 28.965729, 40.483997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501472, 28.750349, 40.595425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488400, 0.296826, -0.820585,
		0.359154, 0.788650, 0.499038,
		0.795282, -0.538447, 0.278571,
		35.740059, 28.588816, 40.678997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772255, 29.337721, 40.319653>,  <35.183361, 28.965729, 40.483997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772255, 29.337721, 40.319653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941826, 28.979696, 40.375004>,  <36.043568, 28.764881, 40.408215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941826, 28.979696, 40.375004>,  <35.772255, 29.337721, 40.319653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941826, 28.979696, 40.375004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629060, 0.181064, -0.755976,
		0.651591, 0.407525, 0.639806,
		0.423925, -0.895064, 0.138378,
		36.069004, 28.711178, 40.416515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417374, 29.494892, 40.130810>,  <35.772255, 29.337721, 40.319653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417374, 29.494892, 40.130810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437565, 29.095833, 40.149357>,  <36.449680, 28.856398, 40.160484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437565, 29.095833, 40.149357>,  <36.417374, 29.494892, 40.130810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437565, 29.095833, 40.149357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672368, -0.000383, -0.740217,
		0.738494, 0.068542, 0.670768,
		0.050479, -0.997648, 0.046368,
		36.452709, 28.796539, 40.163269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168198, 29.358789, 40.157471>,  <36.417374, 29.494892, 40.130810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168198, 29.358789, 40.157471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942822, 29.060785, 40.014645>,  <36.807598, 28.881983, 39.928947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.942822, 29.060785, 40.014645>,  <37.168198, 29.358789, 40.157471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942822, 29.060785, 40.014645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367846, 0.160769, -0.915884,
		0.739750, -0.647387, 0.183467,
		-0.563435, -0.745012, -0.357067,
		36.773792, 28.837282, 39.907524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599232, 28.822981, 39.842018>,  <37.168198, 29.358789, 40.157471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599232, 28.822981, 39.842018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249592, 28.761580, 39.657677>,  <37.039806, 28.724739, 39.547070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249592, 28.761580, 39.657677>,  <37.599232, 28.822981, 39.842018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249592, 28.761580, 39.657677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467546, -0.008588, -0.883927,
		0.131728, -0.988111, 0.079277,
		-0.874098, -0.153504, -0.460856,
		36.987362, 28.715528, 39.519421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670933, 28.200340, 39.455612>,  <37.599232, 28.822981, 39.842018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670933, 28.200340, 39.455612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374054, 28.398201, 39.274738>,  <37.195927, 28.516918, 39.166214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374054, 28.398201, 39.274738>,  <37.670933, 28.200340, 39.455612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374054, 28.398201, 39.274738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618937, 0.247137, -0.745547,
		-0.257035, -0.833212, -0.489582,
		-0.742193, 0.494652, -0.452183,
		37.151398, 28.546597, 39.139084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817772, 28.101938, 38.736908>,  <37.670933, 28.200340, 39.455612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817772, 28.101938, 38.736908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554726, 28.403248, 38.741177>,  <37.396896, 28.584034, 38.743736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554726, 28.403248, 38.741177>,  <37.817772, 28.101938, 38.736908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554726, 28.403248, 38.741177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445757, 0.400489, -0.800569,
		-0.607321, -0.521714, -0.599146,
		-0.657619, 0.753275, 0.010668,
		37.357441, 28.629230, 38.744377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580471, 28.187109, 38.012074>,  <37.817772, 28.101938, 38.736908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580471, 28.187109, 38.012074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494137, 28.526373, 38.205585>,  <37.442337, 28.729931, 38.321693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494137, 28.526373, 38.205585>,  <37.580471, 28.187109, 38.012074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494137, 28.526373, 38.205585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584057, 0.509192, -0.632139,
		-0.782491, 0.146118, -0.605274,
		-0.215834, 0.848158, 0.483780,
		37.429386, 28.780821, 38.350719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407467, 28.664333, 37.476437>,  <37.580471, 28.187109, 38.012074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407467, 28.664333, 37.476437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525288, 28.866514, 37.800846>,  <37.595978, 28.987823, 37.995491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525288, 28.866514, 37.800846>,  <37.407467, 28.664333, 37.476437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525288, 28.866514, 37.800846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585242, 0.575501, -0.571218,
		-0.755469, 0.642896, -0.126301,
		0.294547, 0.505454, 0.811023,
		37.613651, 29.018150, 38.044151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456795, 29.308109, 37.261841>,  <37.407467, 28.664333, 37.476437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456795, 29.308109, 37.261841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673611, 29.323730, 37.597618>,  <37.803699, 29.333103, 37.799084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673611, 29.323730, 37.597618>,  <37.456795, 29.308109, 37.261841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673611, 29.323730, 37.597618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627636, 0.645432, -0.435305,
		-0.558803, 0.762819, 0.325341,
		0.542044, 0.039054, 0.839442,
		37.836224, 29.335447, 37.849449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522781, 30.001415, 37.407829>,  <37.456795, 29.308109, 37.261841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522781, 30.001415, 37.407829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806255, 29.802864, 37.608379>,  <37.976337, 29.683733, 37.728710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.806255, 29.802864, 37.608379>,  <37.522781, 30.001415, 37.407829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806255, 29.802864, 37.608379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666519, 0.704057, -0.245063,
		-0.231354, 0.507849, 0.829798,
		0.708680, -0.496380, 0.501378,
		38.018860, 29.653950, 37.758793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774940, 30.461670, 37.861084>,  <37.522781, 30.001415, 37.407829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774940, 30.461670, 37.861084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072365, 30.196701, 37.824608>,  <38.250820, 30.037720, 37.802723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072365, 30.196701, 37.824608>,  <37.774940, 30.461670, 37.861084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072365, 30.196701, 37.824608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633637, 0.741585, -0.220356,
		0.213595, 0.106065, 0.971147,
		0.743560, -0.662422, -0.091192,
		38.295433, 29.997974, 37.797249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346176, 30.585119, 38.370602>,  <37.774940, 30.461670, 37.861084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346176, 30.585119, 38.370602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509121, 30.375246, 38.071598>,  <38.606888, 30.249323, 37.892197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509121, 30.375246, 38.071598>,  <38.346176, 30.585119, 38.370602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509121, 30.375246, 38.071598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746863, 0.662447, -0.057965,
		0.525595, -0.534670, 0.661723,
		0.407364, -0.524683, -0.747504,
		38.631329, 30.217842, 37.847347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106312, 30.460258, 38.596085>,  <38.346176, 30.585119, 38.370602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106312, 30.460258, 38.596085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062614, 30.421988, 38.200325>,  <39.036396, 30.399025, 37.962868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.062614, 30.421988, 38.200325>,  <39.106312, 30.460258, 38.596085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062614, 30.421988, 38.200325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758478, 0.635321, -0.145187,
		0.642477, -0.766298, 0.003161,
		-0.109248, -0.095677, -0.989399,
		39.029839, 30.393284, 37.903503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.733891, 30.204296, 38.362381>,  <39.106312, 30.460258, 38.596085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.733891, 30.204296, 38.362381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589287, 30.342472, 38.015976>,  <39.502525, 30.425379, 37.808132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589287, 30.342472, 38.015976>,  <39.733891, 30.204296, 38.362381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589287, 30.342472, 38.015976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843306, 0.517312, -0.145683,
		0.397674, -0.782981, -0.478327,
		-0.361511, 0.345441, -0.866014,
		39.480835, 30.446104, 37.756172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338837, 30.272717, 37.960621>,  <39.733891, 30.204296, 38.362381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338837, 30.272717, 37.960621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054489, 30.497845, 37.791912>,  <39.883881, 30.632921, 37.690685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054489, 30.497845, 37.791912>,  <40.338837, 30.272717, 37.960621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054489, 30.497845, 37.791912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663793, 0.735103, -0.137850,
		0.232463, -0.377964, -0.896161,
		-0.710873, 0.562820, -0.421774,
		39.841228, 30.666691, 37.665379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667606, 30.596415, 37.282013>,  <40.338837, 30.272717, 37.960621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667606, 30.596415, 37.282013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344364, 30.808033, 37.385609>,  <40.150417, 30.935003, 37.447765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.344364, 30.808033, 37.385609>,  <40.667606, 30.596415, 37.282013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344364, 30.808033, 37.385609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520603, 0.847175, -0.106146,
		-0.275562, 0.049052, -0.960031,
		-0.808107, 0.529045, 0.258986,
		40.101933, 30.966747, 37.463303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635418, 31.124891, 36.823227>,  <40.667606, 30.596415, 37.282013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635418, 31.124891, 36.823227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416206, 31.281206, 37.119049>,  <40.284679, 31.374996, 37.296543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416206, 31.281206, 37.119049>,  <40.635418, 31.124891, 36.823227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416206, 31.281206, 37.119049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442308, 0.885820, -0.140314,
		-0.709948, 0.250216, -0.658305,
		-0.548031, 0.390789, 0.739558,
		40.251797, 31.398443, 37.340916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148136, 31.632254, 36.608261>,  <40.635418, 31.124891, 36.823227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148136, 31.632254, 36.608261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268147, 31.690413, 36.985374>,  <40.340153, 31.725307, 37.211643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268147, 31.690413, 36.985374>,  <40.148136, 31.632254, 36.608261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268147, 31.690413, 36.985374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411933, 0.871671, -0.265520,
		-0.860404, 0.468028, 0.201632,
		0.300027, 0.145395, 0.942785,
		40.358154, 31.734032, 37.268211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923576, 32.283665, 36.796379>,  <40.148136, 31.632254, 36.608261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923576, 32.283665, 36.796379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265881, 32.184517, 36.978031>,  <40.471264, 32.125031, 37.087025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265881, 32.184517, 36.978031>,  <39.923576, 32.283665, 36.796379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265881, 32.184517, 36.978031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371103, 0.905686, -0.204975,
		-0.360496, 0.343940, 0.867034,
		0.855760, -0.247866, 0.454133,
		40.522610, 32.110157, 37.114269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130589, 32.919792, 37.098091>,  <39.923576, 32.283665, 36.796379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130589, 32.919792, 37.098091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452488, 32.686607, 37.053307>,  <40.645626, 32.546696, 37.026436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452488, 32.686607, 37.053307>,  <40.130589, 32.919792, 37.098091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452488, 32.686607, 37.053307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552989, 0.804789, -0.215680,
		0.215839, 0.111654, 0.970024,
		0.804747, -0.582964, -0.111961,
		40.693913, 32.511719, 37.019718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707951, 33.205395, 37.406296>,  <40.130589, 32.919792, 37.098091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707951, 33.205395, 37.406296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927010, 32.954094, 37.185253>,  <41.058445, 32.803314, 37.052628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.927010, 32.954094, 37.185253>,  <40.707951, 33.205395, 37.406296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927010, 32.954094, 37.185253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784570, 0.615083, 0.078251,
		0.290736, -0.476411, 0.829762,
		0.547652, -0.628256, -0.552604,
		41.091305, 32.765617, 37.019470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416924, 33.081482, 37.693542>,  <40.707951, 33.205395, 37.406296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416924, 33.081482, 37.693542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449913, 33.054363, 37.295830>,  <41.469707, 33.038094, 37.057201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449913, 33.054363, 37.295830>,  <41.416924, 33.081482, 37.693542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449913, 33.054363, 37.295830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609066, 0.793111, -0.003559,
		0.788820, -0.605292, 0.106699,
		0.082470, -0.067794, -0.994285,
		41.474655, 33.034023, 36.997543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228718, 33.086094, 37.466663>,  <41.416924, 33.081482, 37.693542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228718, 33.086094, 37.466663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992588, 33.196335, 37.163200>,  <41.850910, 33.262478, 36.981121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992588, 33.196335, 37.163200>,  <42.228718, 33.086094, 37.466663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992588, 33.196335, 37.163200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537164, 0.835685, -0.114393,
		0.602476, -0.475054, -0.641363,
		-0.590320, 0.275598, -0.758662,
		41.815491, 33.279015, 36.935600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661774, 33.261707, 36.956230>,  <42.228718, 33.086094, 37.466663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661774, 33.261707, 36.956230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311226, 33.451481, 36.923012>,  <42.100899, 33.565346, 36.903080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311226, 33.451481, 36.923012>,  <42.661774, 33.261707, 36.956230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311226, 33.451481, 36.923012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480840, 0.871754, -0.094008,
		0.027792, -0.122316, -0.992102,
		-0.876368, 0.474430, -0.083042,
		42.048317, 33.593811, 36.898098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716454, 33.808979, 36.373627>,  <42.661774, 33.261707, 36.956230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716454, 33.808979, 36.373627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411949, 33.903938, 36.614994>,  <42.229244, 33.960915, 36.759815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411949, 33.903938, 36.614994>,  <42.716454, 33.808979, 36.373627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411949, 33.903938, 36.614994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310544, 0.950391, 0.017868,
		-0.569244, 0.200991, -0.797222,
		-0.761264, 0.237401, 0.603421,
		42.183571, 33.975159, 36.796021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108185, 33.795387, 37.078911>,  <42.716454, 33.808979, 36.373627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108185, 33.795387, 37.078911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342346, 34.118832, 37.055397>,  <43.482841, 34.312897, 37.041286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342346, 34.118832, 37.055397>,  <43.108185, 33.795387, 37.078911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342346, 34.118832, 37.055397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756108, 0.518349, -0.399518,
		-0.292580, 0.278329, 0.914839,
		0.585403, 0.808608, -0.058788,
		43.517967, 34.361416, 37.037762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688053, 34.352516, 37.344856>,  <43.108185, 33.795387, 37.078911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688053, 34.352516, 37.344856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985050, 34.499294, 37.120693>,  <43.163246, 34.587360, 36.986195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985050, 34.499294, 37.120693>,  <42.688053, 34.352516, 37.344856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985050, 34.499294, 37.120693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632720, 0.658874, -0.406880,
		0.219938, 0.656688, 0.721380,
		0.742491, 0.366943, -0.560411,
		43.207798, 34.609379, 36.952568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665253, 35.087090, 37.473907>,  <42.688053, 34.352516, 37.344856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665253, 35.087090, 37.473907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.871399, 35.067619, 37.131672>,  <42.995087, 35.055939, 36.926331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.871399, 35.067619, 37.131672>,  <42.665253, 35.087090, 37.473907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.871399, 35.067619, 37.131672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508104, 0.786617, -0.350805,
		0.690095, 0.615520, 0.380663,
		0.515363, -0.048673, -0.855588,
		43.026009, 35.053017, 36.874996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779617, 35.717484, 37.389553>,  <42.665253, 35.087090, 37.473907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779617, 35.717484, 37.389553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838974, 35.541809, 37.035130>,  <42.874588, 35.436405, 36.822475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838974, 35.541809, 37.035130>,  <42.779617, 35.717484, 37.389553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838974, 35.541809, 37.035130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519849, 0.727555, -0.447684,
		0.841271, 0.527050, -0.120343,
		0.148395, -0.439183, -0.886057,
		42.883492, 35.410053, 36.769314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012596, 36.345356, 36.972866>,  <42.779617, 35.717484, 37.389553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012596, 36.345356, 36.972866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855190, 36.069775, 36.729397>,  <42.760746, 35.904427, 36.583313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.855190, 36.069775, 36.729397>,  <43.012596, 36.345356, 36.972866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855190, 36.069775, 36.729397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497952, 0.716297, -0.488838,
		0.772779, 0.110724, -0.624942,
		-0.393518, -0.688955, -0.608675,
		42.737133, 35.863087, 36.546795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107800, 36.683449, 36.352722>,  <43.012596, 36.345356, 36.972866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107800, 36.683449, 36.352722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833145, 36.398026, 36.297073>,  <42.668350, 36.226772, 36.263683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833145, 36.398026, 36.297073>,  <43.107800, 36.683449, 36.352722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833145, 36.398026, 36.297073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524060, 0.618456, -0.585553,
		0.503872, -0.329154, -0.798606,
		-0.686640, -0.713561, -0.139127,
		42.627151, 36.183956, 36.255337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948608, 36.647976, 35.663803>,  <43.107800, 36.683449, 36.352722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948608, 36.647976, 35.663803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627792, 36.482674, 35.836292>,  <42.435303, 36.383492, 35.939785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627792, 36.482674, 35.836292>,  <42.948608, 36.647976, 35.663803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627792, 36.482674, 35.836292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596859, 0.581268, -0.553070,
		-0.022099, -0.700964, -0.712854,
		-0.802042, -0.413251, 0.431222,
		42.387180, 36.358700, 35.965660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522160, 36.633308, 35.148144>,  <42.948608, 36.647976, 35.663803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522160, 36.633308, 35.148144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280594, 36.588058, 35.463737>,  <42.135654, 36.560909, 35.653095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.280594, 36.588058, 35.463737>,  <42.522160, 36.633308, 35.148144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280594, 36.588058, 35.463737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723550, 0.493003, -0.483139,
		-0.334317, -0.862642, -0.379580,
		-0.603910, -0.113123, 0.788984,
		42.099422, 36.554123, 35.700432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842056, 36.446133, 34.912643>,  <42.522160, 36.633308, 35.148144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842056, 36.446133, 34.912643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785767, 36.612118, 35.272198>,  <41.751995, 36.711708, 35.487930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785767, 36.612118, 35.272198>,  <41.842056, 36.446133, 34.912643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785767, 36.612118, 35.272198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906066, 0.311971, -0.285865,
		-0.399051, -0.854679, 0.332086,
		-0.140722, 0.414967, 0.898888,
		41.743549, 36.736607, 35.541862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103004, 36.310863, 35.050827>,  <41.842056, 36.446133, 34.912643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103004, 36.310863, 35.050827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218414, 36.595425, 35.307156>,  <41.287663, 36.766163, 35.460953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218414, 36.595425, 35.307156>,  <41.103004, 36.310863, 35.050827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218414, 36.595425, 35.307156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907694, 0.416224, -0.053383,
		-0.304704, -0.566271, 0.765828,
		0.288526, 0.711403, 0.640826,
		41.304974, 36.808846, 35.499405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475082, 36.487488, 35.416950>,  <41.103004, 36.310863, 35.050827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475082, 36.487488, 35.416950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707016, 36.810009, 35.463707>,  <40.846176, 37.003521, 35.491760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707016, 36.810009, 35.463707>,  <40.475082, 36.487488, 35.416950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707016, 36.810009, 35.463707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743998, 0.582491, -0.327371,
		-0.332049, 0.102854, 0.937638,
		0.579837, 0.806304, 0.116892,
		40.880966, 37.051899, 35.498775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997890, 37.009151, 35.572437>,  <40.475082, 36.487488, 35.416950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997890, 37.009151, 35.572437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321156, 37.220955, 35.469296>,  <40.515114, 37.348038, 35.407410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321156, 37.220955, 35.469296>,  <39.997890, 37.009151, 35.572437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321156, 37.220955, 35.469296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586188, 0.680773, -0.439239,
		-0.057040, 0.506130, 0.860569,
		0.808164, 0.529510, -0.257856,
		40.563606, 37.379807, 35.391937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902267, 37.706951, 35.770752>,  <39.997890, 37.009151, 35.572437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902267, 37.706951, 35.770752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169624, 37.717258, 35.473408>,  <40.330040, 37.723442, 35.295002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169624, 37.717258, 35.473408>,  <39.902267, 37.706951, 35.770752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169624, 37.717258, 35.473408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488321, 0.769064, -0.412410,
		0.561064, 0.638651, 0.526622,
		0.668393, 0.025772, -0.743362,
		40.370144, 37.724991, 35.250401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163422, 38.386997, 35.695019>,  <39.902267, 37.706951, 35.770752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163422, 38.386997, 35.695019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248642, 38.216396, 35.343407>,  <40.299774, 38.114037, 35.132439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248642, 38.216396, 35.343407>,  <40.163422, 38.386997, 35.695019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248642, 38.216396, 35.343407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299379, 0.827916, -0.474265,
		0.930043, 0.364208, 0.048704,
		0.213054, -0.426506, -0.879034,
		40.312557, 38.088444, 35.079697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575184, 38.861473, 35.346462>,  <40.163422, 38.386997, 35.695019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575184, 38.861473, 35.346462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463654, 38.631878, 35.038490>,  <40.396736, 38.494122, 34.853706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463654, 38.631878, 35.038490>,  <40.575184, 38.861473, 35.346462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463654, 38.631878, 35.038490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033542, 0.807060, -0.589516,
		0.959755, -0.138548, -0.244284,
		-0.278828, -0.573984, -0.769933,
		40.380005, 38.459682, 34.807510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882500, 39.214870, 34.766438>,  <40.575184, 38.861473, 35.346462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882500, 39.214870, 34.766438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639538, 38.950047, 34.590828>,  <40.493763, 38.791153, 34.485462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639538, 38.950047, 34.590828>,  <40.882500, 39.214870, 34.766438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639538, 38.950047, 34.590828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103634, 0.613970, -0.782497,
		0.787607, -0.429791, -0.441537,
		-0.607400, -0.662058, -0.439026,
		40.457317, 38.751431, 34.459122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183380, 39.079353, 34.042839>,  <40.882500, 39.214870, 34.766438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183380, 39.079353, 34.042839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799690, 38.966816, 34.031967>,  <40.569477, 38.899292, 34.025444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799690, 38.966816, 34.031967>,  <41.183380, 39.079353, 34.042839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799690, 38.966816, 34.031967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147098, 0.579003, -0.801947,
		0.241362, -0.765246, -0.596777,
		-0.959222, -0.281345, -0.027183,
		40.511925, 38.882412, 34.023811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039536, 38.915825, 33.296787>,  <41.183380, 39.079353, 34.042839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039536, 38.915825, 33.296787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666832, 38.971493, 33.430920>,  <40.443211, 39.004894, 33.511398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666832, 38.971493, 33.430920>,  <41.039536, 38.915825, 33.296787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666832, 38.971493, 33.430920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210656, 0.545022, -0.811527,
		-0.295705, -0.826791, -0.478514,
		-0.931763, 0.139171, 0.335334,
		40.387302, 39.013245, 33.531521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546188, 38.756550, 32.751518>,  <41.039536, 38.915825, 33.296787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546188, 38.756550, 32.751518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345852, 39.006786, 32.990784>,  <40.225651, 39.156929, 33.134342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345852, 39.006786, 32.990784>,  <40.546188, 38.756550, 32.751518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345852, 39.006786, 32.990784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179409, 0.601042, -0.778820,
		-0.846740, -0.497382, -0.188792,
		-0.500843, 0.625587, 0.598161,
		40.195599, 39.194462, 33.170231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066574, 39.052078, 32.350330>,  <40.546188, 38.756550, 32.751518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066574, 39.052078, 32.350330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062927, 39.310394, 32.655716>,  <40.060738, 39.465385, 32.838947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062927, 39.310394, 32.655716>,  <40.066574, 39.052078, 32.350330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062927, 39.310394, 32.655716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117026, 0.757556, -0.642195,
		-0.993087, -0.095201, 0.068665,
		-0.009120, 0.645791, 0.763460,
		40.060192, 39.504131, 32.884754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621338, 39.539516, 32.170963>,  <40.066574, 39.052078, 32.350330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621338, 39.539516, 32.170963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831341, 39.731354, 32.452206>,  <39.957344, 39.846455, 32.620953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831341, 39.731354, 32.452206>,  <39.621338, 39.539516, 32.170963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831341, 39.731354, 32.452206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095488, 0.787712, -0.608599,
		-0.845722, 0.386659, 0.367762,
		0.525010, 0.479589, 0.703107,
		39.988842, 39.875229, 32.663139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361721, 40.391071, 32.310085>,  <39.621338, 39.539516, 32.170963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361721, 40.391071, 32.310085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754436, 40.352673, 32.375660>,  <39.990067, 40.329636, 32.415005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754436, 40.352673, 32.375660>,  <39.361721, 40.391071, 32.310085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754436, 40.352673, 32.375660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176231, 0.782463, -0.597239,
		-0.070946, 0.615254, 0.785130,
		0.981789, -0.095993, 0.163940,
		40.048973, 40.323875, 32.424843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729557, 41.011414, 32.428921>,  <39.361721, 40.391071, 32.310085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729557, 41.011414, 32.428921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956951, 40.729145, 32.259754>,  <40.093388, 40.559784, 32.158257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956951, 40.729145, 32.259754>,  <39.729557, 41.011414, 32.428921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956951, 40.729145, 32.259754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276472, 0.648027, -0.709665,
		0.774849, 0.286509, 0.563490,
		0.568482, -0.705673, -0.422912,
		40.127495, 40.517445, 32.132881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369526, 41.303368, 32.144409>,  <39.729557, 41.011414, 32.428921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369526, 41.303368, 32.144409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314793, 40.971512, 31.927902>,  <40.281952, 40.772400, 31.797998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314793, 40.971512, 31.927902>,  <40.369526, 41.303368, 32.144409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314793, 40.971512, 31.927902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092218, 0.533368, -0.840842,
		0.986292, -0.164970, 0.003526,
		-0.136833, -0.829641, -0.541270,
		40.273743, 40.722618, 31.765522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972260, 41.024254, 31.646351>,  <40.369526, 41.303368, 32.144409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972260, 41.024254, 31.646351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582550, 40.991611, 31.562319>,  <40.348724, 40.972027, 31.511900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.582550, 40.991611, 31.562319>,  <40.972260, 41.024254, 31.646351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582550, 40.991611, 31.562319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070248, 0.775751, -0.627117,
		0.214143, -0.625741, -0.750061,
		-0.974273, -0.081603, -0.210079,
		40.290268, 40.967133, 31.499296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911121, 41.295544, 31.053009>,  <40.972260, 41.024254, 31.646351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911121, 41.295544, 31.053009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819992, 41.303295, 30.663605>,  <40.765316, 41.307945, 30.429962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819992, 41.303295, 30.663605>,  <40.911121, 41.295544, 31.053009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819992, 41.303295, 30.663605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003728, -0.999812, -0.019028,
		-0.973696, -0.000705, 0.227848,
		-0.227819, 0.019376, -0.973511,
		40.751648, 41.309109, 30.371552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297508, 40.808685, 30.871822>,  <40.911121, 41.295544, 31.053009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297508, 40.808685, 30.871822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553951, 40.857471, 30.568745>,  <40.707817, 40.886745, 30.386898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553951, 40.857471, 30.568745>,  <40.297508, 40.808685, 30.871822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553951, 40.857471, 30.568745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212137, -0.976987, 0.022228,
		-0.737548, -0.174986, -0.652229,
		0.641109, 0.121968, -0.757696,
		40.746284, 40.894062, 30.341436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055698, 40.140179, 30.623047>,  <40.297508, 40.808685, 30.871822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055698, 40.140179, 30.623047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103687, 40.315094, 30.266533>,  <40.132481, 40.420044, 30.052624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103687, 40.315094, 30.266533>,  <40.055698, 40.140179, 30.623047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103687, 40.315094, 30.266533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991948, -0.089477, 0.089623,
		-0.040558, -0.894860, -0.444500,
		0.119973, 0.437286, -0.891284,
		40.139679, 40.446281, 29.999147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444992, 39.696136, 30.031601>,  <40.055698, 40.140179, 30.623047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444992, 39.696136, 30.031601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485661, 40.083744, 30.121643>,  <40.510063, 40.316307, 30.175669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485661, 40.083744, 30.121643>,  <40.444992, 39.696136, 30.031601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485661, 40.083744, 30.121643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970984, -0.145898, 0.189485,
		0.216456, 0.199307, -0.955732,
		0.101674, 0.969015, 0.225104,
		40.516163, 40.374447, 30.189175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983509, 39.888977, 29.676952>,  <40.444992, 39.696136, 30.031601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983509, 39.888977, 29.676952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.967232, 40.127884, 29.997356>,  <40.957466, 40.271229, 30.189598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.967232, 40.127884, 29.997356>,  <40.983509, 39.888977, 29.676952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967232, 40.127884, 29.997356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894554, -0.335344, 0.295497,
		0.445104, 0.728570, -0.520642,
		-0.040696, 0.597269, 0.801008,
		40.955025, 40.307064, 30.237659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548168, 40.378502, 29.702709>,  <40.983509, 39.888977, 29.676952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548168, 40.378502, 29.702709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414783, 40.328182, 30.076443>,  <41.334755, 40.297989, 30.300682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414783, 40.328182, 30.076443>,  <41.548168, 40.378502, 29.702709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414783, 40.328182, 30.076443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928035, -0.218301, 0.301819,
		0.165998, 0.967739, 0.189540,
		-0.333459, -0.125798, 0.934334,
		41.314747, 40.290443, 30.356743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102974, 40.695274, 30.200806>,  <41.548168, 40.378502, 29.702709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102974, 40.695274, 30.200806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874535, 40.451889, 30.421211>,  <41.737473, 40.305859, 30.553453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874535, 40.451889, 30.421211>,  <42.102974, 40.695274, 30.200806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874535, 40.451889, 30.421211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735262, -0.080687, 0.672963,
		-0.365017, 0.789467, 0.493463,
		-0.571098, -0.608467, 0.551013,
		41.703205, 40.269348, 30.586515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110641, 40.924862, 30.923487>,  <42.102974, 40.695274, 30.200806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110641, 40.924862, 30.923487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020668, 40.537659, 30.879015>,  <41.966686, 40.305336, 30.852331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020668, 40.537659, 30.879015>,  <42.110641, 40.924862, 30.923487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020668, 40.537659, 30.879015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603200, -0.227946, 0.764323,
		-0.765216, 0.104856, 0.635177,
		-0.224930, -0.968011, -0.111179,
		41.953190, 40.247253, 30.845661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256050, 40.764519, 31.588079>,  <42.110641, 40.924862, 30.923487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256050, 40.764519, 31.588079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.213528, 40.414085, 31.399963>,  <42.188015, 40.203823, 31.287094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.213528, 40.414085, 31.399963>,  <42.256050, 40.764519, 31.588079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213528, 40.414085, 31.399963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688066, -0.406254, 0.601268,
		-0.717820, -0.259674, 0.645991,
		-0.106302, -0.876086, -0.470290,
		42.181637, 40.151260, 31.258877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240883, 40.240021, 32.140457>,  <42.256050, 40.764519, 31.588079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240883, 40.240021, 32.140457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324497, 40.037460, 31.805826>,  <42.374664, 39.915924, 31.605047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324497, 40.037460, 31.805826>,  <42.240883, 40.240021, 32.140457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324497, 40.037460, 31.805826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571695, -0.630779, 0.524674,
		-0.793391, -0.587942, 0.157653,
		0.209034, -0.506401, -0.836578,
		42.387207, 39.885540, 31.554853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054943, 39.606033, 32.276852>,  <42.240883, 40.240021, 32.140457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054943, 39.606033, 32.276852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308460, 39.558289, 31.971153>,  <42.460571, 39.529644, 31.787735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308460, 39.558289, 31.971153>,  <42.054943, 39.606033, 32.276852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308460, 39.558289, 31.971153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581891, -0.577383, 0.572740,
		-0.509620, -0.807702, -0.296487,
		0.633790, -0.119357, -0.764241,
		42.498596, 39.522480, 31.741880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172546, 38.886490, 32.301399>,  <42.054943, 39.606033, 32.276852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172546, 38.886490, 32.301399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470726, 39.037857, 32.081905>,  <42.649632, 39.128677, 31.950209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470726, 39.037857, 32.081905>,  <42.172546, 38.886490, 32.301399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470726, 39.037857, 32.081905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655800, -0.563728, 0.502132,
		-0.119319, -0.734171, -0.668398,
		0.745445, 0.378422, -0.548733,
		42.694359, 39.151382, 31.917286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532722, 38.314732, 32.227341>,  <42.172546, 38.886490, 32.301399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532722, 38.314732, 32.227341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774918, 38.621937, 32.143883>,  <42.920235, 38.806259, 32.093807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774918, 38.621937, 32.143883>,  <42.532722, 38.314732, 32.227341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774918, 38.621937, 32.143883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713090, -0.407138, 0.570737,
		0.353389, -0.494357, -0.794183,
		0.605490, 0.768017, -0.208643,
		42.956566, 38.852341, 32.081291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137093, 38.017380, 31.849010>,  <42.532722, 38.314732, 32.227341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137093, 38.017380, 31.849010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222729, 38.350582, 32.053078>,  <43.274109, 38.550503, 32.175518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222729, 38.350582, 32.053078>,  <43.137093, 38.017380, 31.849010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222729, 38.350582, 32.053078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534597, -0.537037, 0.652531,
		0.817540, 0.133035, -0.560295,
		0.214090, 0.833002, 0.510169,
		43.286957, 38.600483, 32.206127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950336, 38.059361, 31.892965>,  <43.137093, 38.017380, 31.849010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950336, 38.059361, 31.892965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782650, 38.291821, 32.171970>,  <43.682037, 38.431297, 32.339375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782650, 38.291821, 32.171970>,  <43.950336, 38.059361, 31.892965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782650, 38.291821, 32.171970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478701, -0.511318, 0.713722,
		0.771431, 0.633102, -0.063846,
		-0.419213, 0.581151, 0.697513,
		43.656887, 38.466167, 32.381226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.452118, 38.136925, 32.378555>,  <43.950336, 38.059361, 31.892965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.452118, 38.136925, 32.378555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112400, 38.224850, 32.570549>,  <43.908569, 38.277607, 32.685745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.112400, 38.224850, 32.570549>,  <44.452118, 38.136925, 32.378555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.112400, 38.224850, 32.570549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375499, -0.387559, 0.841902,
		0.371086, 0.895253, 0.246610,
		-0.849292, 0.219816, 0.479984,
		43.857613, 38.290794, 32.714546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644428, 38.570377, 32.918751>,  <44.452118, 38.136925, 32.378555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644428, 38.570377, 32.918751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299862, 38.406414, 33.038704>,  <44.093121, 38.308037, 33.110676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299862, 38.406414, 33.038704>,  <44.644428, 38.570377, 32.918751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299862, 38.406414, 33.038704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465301, -0.400233, 0.789499,
		-0.203598, 0.819627, 0.535500,
		-0.861419, -0.409909, 0.299887,
		44.041435, 38.283440, 33.128670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749279, 38.400684, 33.646648>,  <44.644428, 38.570377, 32.918751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749279, 38.400684, 33.646648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399918, 38.211838, 33.598866>,  <44.190300, 38.098530, 33.570198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399918, 38.211838, 33.598866>,  <44.749279, 38.400684, 33.646648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399918, 38.211838, 33.598866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258205, -0.656907, 0.708381,
		-0.412907, 0.587861, 0.695649,
		-0.873406, -0.472115, -0.119453,
		44.137897, 38.070202, 33.563030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479652, 38.253849, 34.365005>,  <44.749279, 38.400684, 33.646648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479652, 38.253849, 34.365005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290661, 38.005905, 34.114391>,  <44.177265, 37.857140, 33.964024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.290661, 38.005905, 34.114391>,  <44.479652, 38.253849, 34.365005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.290661, 38.005905, 34.114391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197432, -0.767258, 0.610194,
		-0.858944, 0.164606, 0.484892,
		-0.472478, -0.619855, -0.626533,
		44.148918, 37.819950, 33.926430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922550, 37.885506, 34.751789>,  <44.479652, 38.253849, 34.365005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922550, 37.885506, 34.751789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034649, 37.654209, 34.445301>,  <44.101910, 37.515430, 34.261410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.034649, 37.654209, 34.445301>,  <43.922550, 37.885506, 34.751789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034649, 37.654209, 34.445301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181660, -0.751837, 0.633830,
		-0.942582, -0.316822, -0.105657,
		0.280249, -0.578243, -0.766221,
		44.118725, 37.480736, 34.215435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660408, 37.296822, 34.905018>,  <43.922550, 37.885506, 34.751789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660408, 37.296822, 34.905018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947739, 37.184078, 34.650597>,  <44.120136, 37.116432, 34.497944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947739, 37.184078, 34.650597>,  <43.660408, 37.296822, 34.905018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947739, 37.184078, 34.650597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329979, -0.666844, 0.668156,
		-0.612476, -0.689837, -0.386002,
		0.718323, -0.281857, -0.636058,
		44.163235, 37.099522, 34.459778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716049, 36.587654, 35.057228>,  <43.660408, 37.296822, 34.905018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716049, 36.587654, 35.057228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060452, 36.661461, 34.867653>,  <44.267094, 36.705746, 34.753906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060452, 36.661461, 34.867653>,  <43.716049, 36.587654, 35.057228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060452, 36.661461, 34.867653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465592, -0.660955, 0.588526,
		-0.204659, -0.727388, -0.654997,
		0.861010, 0.184514, -0.473937,
		44.318756, 36.716816, 34.725471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973251, 35.924194, 35.006260>,  <43.716049, 36.587654, 35.057228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973251, 35.924194, 35.006260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284691, 36.172504, 34.969528>,  <44.471554, 36.321487, 34.947491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284691, 36.172504, 34.969528>,  <43.973251, 35.924194, 35.006260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284691, 36.172504, 34.969528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509668, -0.540186, 0.669655,
		0.366097, -0.568193, -0.736973,
		0.778596, 0.620770, -0.091829,
		44.518269, 36.358734, 34.941978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503464, 35.486782, 34.947998>,  <43.973251, 35.924194, 35.006260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503464, 35.486782, 34.947998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659985, 35.835094, 35.067081>,  <44.753899, 36.044083, 35.138531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.659985, 35.835094, 35.067081>,  <44.503464, 35.486782, 34.947998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659985, 35.835094, 35.067081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595814, -0.486266, 0.639179,
		0.701348, -0.072735, -0.709099,
		0.391301, 0.870778, 0.297705,
		44.777374, 36.096329, 35.156391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.133728, 35.327339, 35.057716>,  <44.503464, 35.486782, 34.947998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.133728, 35.327339, 35.057716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139698, 35.668079, 35.267143>,  <45.143280, 35.872524, 35.392799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139698, 35.668079, 35.267143>,  <45.133728, 35.327339, 35.057716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.139698, 35.668079, 35.267143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587760, -0.431082, 0.684621,
		0.808897, 0.297511, -0.507121,
		0.014928, 0.851854, 0.523567,
		45.144176, 35.923637, 35.424213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822781, 35.435246, 35.284863>,  <45.133728, 35.327339, 35.057716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822781, 35.435246, 35.284863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609093, 35.681362, 35.516731>,  <45.480881, 35.829033, 35.655853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609093, 35.681362, 35.516731>,  <45.822781, 35.435246, 35.284863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.609093, 35.681362, 35.516731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564915, -0.250276, 0.786278,
		0.628871, 0.747511, -0.213887,
		-0.534221, 0.615296, 0.579671,
		45.448826, 35.865952, 35.690632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297935, 35.785244, 35.582493>,  <45.822781, 35.435246, 35.284863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.297935, 35.785244, 35.582493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977886, 35.812233, 35.820904>,  <45.785858, 35.828426, 35.963951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.977886, 35.812233, 35.820904>,  <46.297935, 35.785244, 35.582493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977886, 35.812233, 35.820904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537384, -0.360837, 0.762243,
		0.266500, 0.930185, 0.252455,
		-0.800123, 0.067472, 0.596030,
		45.737850, 35.832474, 35.999714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.399937, 36.003452, 34.875023>,  <46.297935, 35.785244, 35.582493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.399937, 36.003452, 34.875023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.658627, 36.239651, 35.068130>,  <46.813843, 36.381371, 35.183994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.658627, 36.239651, 35.068130>,  <46.399937, 36.003452, 34.875023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.658627, 36.239651, 35.068130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594325, -0.786852, 0.166260,
		0.478040, 0.179395, -0.859823,
		0.646727, 0.590493, 0.482766,
		46.852646, 36.416798, 35.212959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.069695, 35.815647, 34.623302>,  <46.399937, 36.003452, 34.875023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.069695, 35.815647, 34.623302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089733, 35.970955, 34.991375>,  <47.101757, 36.064140, 35.212219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.089733, 35.970955, 34.991375>,  <47.069695, 35.815647, 34.623302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.089733, 35.970955, 34.991375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560559, -0.773467, 0.295842,
		0.826598, 0.500998, -0.256392,
		0.050094, 0.388265, 0.920185,
		47.104763, 36.087433, 35.267429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.649693, 35.657219, 35.066738>,  <47.069695, 35.815647, 34.623302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.649693, 35.657219, 35.066738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.763565, 35.304646, 34.915985>,  <47.831890, 35.093102, 34.825535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.763565, 35.304646, 34.915985>,  <47.649693, 35.657219, 35.066738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.763565, 35.304646, 34.915985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105338, -0.362004, 0.926206,
		-0.952817, -0.303373, -0.010208,
		0.284681, -0.881430, -0.376880,
		47.848969, 35.040218, 34.802921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.020531, 35.142391, 35.297253>,  <47.649693, 35.657219, 35.066738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.020531, 35.142391, 35.297253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.709759, 35.047382, 35.064026>,  <47.523296, 34.990379, 34.924091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.709759, 35.047382, 35.064026>,  <48.020531, 35.142391, 35.297253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.709759, 35.047382, 35.064026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629530, -0.305578, -0.714363,
		-0.008498, -0.922067, 0.386937,
		-0.776930, -0.237518, -0.583065,
		47.476681, 34.976128, 34.889107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.928604, 31.992113, 44.949520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.583633, 32.115551, 44.789028>,  <33.376652, 32.189613, 44.692734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.583633, 32.115551, 44.789028>,  <33.928604, 31.992113, 44.949520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583633, 32.115551, 44.789028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491816, 0.323417, -0.808405,
		-0.119706, -0.894523, -0.430697,
		-0.862431, 0.308594, -0.401226,
		33.324905, 32.208130, 44.668659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946182, 31.791189, 44.145775>,  <33.928604, 31.992113, 44.949520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946182, 31.791189, 44.145775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.691856, 32.095181, 44.199696>,  <33.539261, 32.277576, 44.232048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.691856, 32.095181, 44.199696>,  <33.946182, 31.791189, 44.145775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691856, 32.095181, 44.199696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335535, 0.429439, -0.838450,
		-0.695091, -0.487871, -0.528043,
		-0.635818, 0.759976, 0.134801,
		33.501110, 32.323174, 44.240135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694061, 31.937641, 43.451370>,  <33.946182, 31.791189, 44.145775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694061, 31.937641, 43.451370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.595711, 32.266087, 43.657406>,  <33.536701, 32.463154, 43.781029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.595711, 32.266087, 43.657406>,  <33.694061, 31.937641, 43.451370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595711, 32.266087, 43.657406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235447, 0.566084, -0.790009,
		-0.940272, -0.072965, -0.332513,
		-0.245873, 0.821112, 0.515093,
		33.521950, 32.512421, 43.811935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345436, 32.345085, 42.934273>,  <33.694061, 31.937641, 43.451370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345436, 32.345085, 42.934273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.455238, 32.594173, 43.227356>,  <33.521122, 32.743626, 43.403206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.455238, 32.594173, 43.227356>,  <33.345436, 32.345085, 42.934273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455238, 32.594173, 43.227356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177073, 0.716216, -0.675040,
		-0.945140, 0.315048, 0.086341,
		0.274509, 0.622719, 0.732711,
		33.537590, 32.780991, 43.447170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105602, 33.034721, 42.887154>,  <33.345436, 32.345085, 42.934273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105602, 33.034721, 42.887154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.425335, 33.105320, 43.116905>,  <33.617176, 33.147678, 43.254757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.425335, 33.105320, 43.116905>,  <33.105602, 33.034721, 42.887154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425335, 33.105320, 43.116905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399997, 0.557035, -0.727815,
		-0.448406, 0.811519, 0.374660,
		0.799334, 0.176493, 0.574383,
		33.665134, 33.158268, 43.289219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138763, 33.750584, 42.876530>,  <33.105602, 33.034721, 42.887154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138763, 33.750584, 42.876530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.503845, 33.602528, 42.945770>,  <33.722897, 33.513695, 42.987312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.503845, 33.602528, 42.945770>,  <33.138763, 33.750584, 42.876530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503845, 33.602528, 42.945770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372798, 0.580862, -0.723616,
		0.167292, 0.724981, 0.668144,
		0.912707, -0.370138, 0.173098,
		33.777657, 33.491486, 42.997700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588646, 34.313194, 42.747719>,  <33.138763, 33.750584, 42.876530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588646, 34.313194, 42.747719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.848942, 34.009537, 42.753960>,  <34.005119, 33.827343, 42.757702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.848942, 34.009537, 42.753960>,  <33.588646, 34.313194, 42.747719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848942, 34.009537, 42.753960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585832, 0.488897, -0.646360,
		0.483050, 0.429752, 0.762873,
		0.650741, -0.759140, 0.015600,
		34.044163, 33.781796, 42.758640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197941, 34.650848, 42.745308>,  <33.588646, 34.313194, 42.747719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197941, 34.650848, 42.745308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.297741, 34.275951, 42.647881>,  <34.357620, 34.051014, 42.589424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.297741, 34.275951, 42.647881>,  <34.197941, 34.650848, 42.745308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297741, 34.275951, 42.647881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597947, 0.346948, -0.722555,
		0.761715, 0.034638, 0.646985,
		0.249498, -0.937244, -0.243564,
		34.372589, 33.994778, 42.574810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917580, 34.498207, 42.805779>,  <34.197941, 34.650848, 42.745308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917580, 34.498207, 42.805779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.760204, 34.271301, 42.516388>,  <34.665779, 34.135159, 42.342754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.760204, 34.271301, 42.516388>,  <34.917580, 34.498207, 42.805779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760204, 34.271301, 42.516388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563602, 0.472898, -0.677289,
		0.726334, -0.674221, 0.133658,
		-0.393436, -0.567268, -0.723474,
		34.642174, 34.101120, 42.299347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477768, 34.471115, 42.379017>,  <34.917580, 34.498207, 42.805779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477768, 34.471115, 42.379017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.209106, 34.284725, 42.148628>,  <35.047909, 34.172890, 42.010395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.209106, 34.284725, 42.148628>,  <35.477768, 34.471115, 42.379017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209106, 34.284725, 42.148628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537161, 0.229122, -0.811764,
		0.510230, -0.854617, 0.096412,
		-0.671657, -0.465976, -0.575972,
		35.007610, 34.144932, 41.975838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891788, 34.111992, 41.960815>,  <35.477768, 34.471115, 42.379017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891788, 34.111992, 41.960815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.531376, 34.146347, 41.790752>,  <35.315128, 34.166962, 41.688713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.531376, 34.146347, 41.790752>,  <35.891788, 34.111992, 41.960815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531376, 34.146347, 41.790752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426816, 0.350090, -0.833826,
		0.077224, -0.932770, -0.352104,
		-0.901036, 0.085892, -0.425156,
		35.261066, 34.172115, 41.663204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993874, 33.619675, 41.402611>,  <35.891788, 34.111992, 41.960815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993874, 33.619675, 41.402611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.720840, 33.899727, 41.318798>,  <35.557022, 34.067757, 41.268513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.720840, 33.899727, 41.318798>,  <35.993874, 33.619675, 41.402611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720840, 33.899727, 41.318798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391894, 0.108670, -0.913570,
		-0.616845, -0.705701, -0.348551,
		-0.682584, 0.700126, -0.209528,
		35.516064, 34.109764, 41.255939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729698, 33.379578, 40.799568>,  <35.993874, 33.619675, 41.402611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729698, 33.379578, 40.799568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666195, 33.773235, 40.831200>,  <35.628094, 34.009430, 40.850178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.666195, 33.773235, 40.831200>,  <35.729698, 33.379578, 40.799568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666195, 33.773235, 40.831200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328183, 0.128140, -0.935883,
		-0.931178, -0.122623, -0.343322,
		-0.158754, 0.984146, 0.079078,
		35.618568, 34.068478, 40.854923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496971, 33.624905, 40.128914>,  <35.729698, 33.379578, 40.799568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496971, 33.624905, 40.128914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.598083, 33.959881, 40.322735>,  <35.658752, 34.160866, 40.439026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.598083, 33.959881, 40.322735>,  <35.496971, 33.624905, 40.128914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598083, 33.959881, 40.322735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526790, 0.300945, -0.794937,
		-0.811538, 0.456202, -0.365083,
		0.252782, 0.837443, 0.484551,
		35.673920, 34.211113, 40.468102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442551, 34.211140, 39.667473>,  <35.496971, 33.624905, 40.128914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442551, 34.211140, 39.667473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699043, 34.342274, 39.944988>,  <35.852940, 34.420956, 40.111500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.699043, 34.342274, 39.944988>,  <35.442551, 34.211140, 39.667473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699043, 34.342274, 39.944988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647958, 0.253011, -0.718426,
		-0.411063, 0.910225, -0.050186,
		0.641232, 0.327836, 0.693791,
		35.891415, 34.440624, 40.153126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848518, 34.661247, 39.330860>,  <35.442551, 34.211140, 39.667473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848518, 34.661247, 39.330860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.060730, 34.635433, 39.668941>,  <36.188057, 34.619946, 39.871792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.060730, 34.635433, 39.668941>,  <35.848518, 34.661247, 39.330860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060730, 34.635433, 39.668941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818687, 0.297496, -0.491170,
		-0.219747, 0.952540, 0.210664,
		0.530530, -0.064535, 0.845206,
		36.219891, 34.616074, 39.922504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297546, 35.282585, 39.332672>,  <35.848518, 34.661247, 39.330860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297546, 35.282585, 39.332672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.492172, 35.024445, 39.568222>,  <36.608948, 34.869560, 39.709553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.492172, 35.024445, 39.568222>,  <36.297546, 35.282585, 39.332672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492172, 35.024445, 39.568222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848980, 0.190233, -0.492995,
		0.206132, 0.739818, 0.640453,
		0.486562, -0.645354, 0.588877,
		36.638142, 34.830837, 39.744884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773876, 35.629620, 39.560387>,  <36.297546, 35.282585, 39.332672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773876, 35.629620, 39.560387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909134, 35.254856, 39.595852>,  <36.990288, 35.029999, 39.617130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909134, 35.254856, 39.595852>,  <36.773876, 35.629620, 39.560387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909134, 35.254856, 39.595852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836988, 0.256328, -0.483473,
		0.430245, 0.237689, 0.870858,
		0.338142, -0.936910, 0.088659,
		37.010578, 34.973782, 39.622448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461853, 35.694210, 39.861176>,  <36.773876, 35.629620, 39.560387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461853, 35.694210, 39.861176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.425507, 35.347839, 39.664440>,  <37.403698, 35.140015, 39.546398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.425507, 35.347839, 39.664440>,  <37.461853, 35.694210, 39.861176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425507, 35.347839, 39.664440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832856, 0.204691, -0.514249,
		0.545979, -0.456364, 0.702594,
		-0.090870, -0.865929, -0.491843,
		37.398247, 35.088062, 39.516888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086697, 35.488483, 39.668934>,  <37.461853, 35.694210, 39.861176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086697, 35.488483, 39.668934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.926334, 35.221779, 39.417633>,  <37.830116, 35.061756, 39.266853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.926334, 35.221779, 39.417633>,  <38.086697, 35.488483, 39.668934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926334, 35.221779, 39.417633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774667, 0.119351, -0.621004,
		0.489044, -0.735653, 0.468669,
		-0.400908, -0.666761, -0.628254,
		37.806061, 35.021751, 39.229156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562702, 34.953125, 39.520832>,  <38.086697, 35.488483, 39.668934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562702, 34.953125, 39.520832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.317383, 34.981388, 39.206158>,  <38.170189, 34.998348, 39.017353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.317383, 34.981388, 39.206158>,  <38.562702, 34.953125, 39.520832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317383, 34.981388, 39.206158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785327, 0.160967, -0.597788,
		0.084389, -0.984427, -0.154215,
		-0.613302, 0.070663, -0.786681,
		38.133392, 35.002586, 38.970154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981453, 34.758961, 38.976902>,  <38.562702, 34.953125, 39.520832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981453, 34.758961, 38.976902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.672657, 34.921993, 38.781796>,  <38.487381, 35.019814, 38.664734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.672657, 34.921993, 38.781796>,  <38.981453, 34.758961, 38.976902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672657, 34.921993, 38.781796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621552, 0.323389, -0.713507,
		-0.133078, -0.853987, -0.502987,
		-0.771986, 0.407585, -0.487762,
		38.441063, 35.044270, 38.635468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460354, 34.239609, 39.237335>,  <38.981453, 34.758961, 38.976902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460354, 34.239609, 39.237335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.730915, 33.954971, 39.313358>,  <39.893250, 33.784191, 39.358974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.730915, 33.954971, 39.313358>,  <39.460354, 34.239609, 39.237335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730915, 33.954971, 39.313358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566248, -0.337386, 0.752020,
		-0.471007, -0.616288, -0.631144,
		0.676400, -0.711590, 0.190060,
		39.933834, 33.741493, 39.370377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136177, 33.721077, 39.503540>,  <39.460354, 34.239609, 39.237335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136177, 33.721077, 39.503540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.505367, 33.633018, 39.629810>,  <39.726883, 33.580185, 39.705574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.505367, 33.633018, 39.629810>,  <39.136177, 33.721077, 39.503540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505367, 33.633018, 39.629810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384630, -0.555825, 0.736965,
		0.013219, -0.801619, -0.597689,
		0.922976, -0.220147, 0.315674,
		39.782261, 33.566975, 39.724514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085117, 33.025455, 39.585274>,  <39.136177, 33.721077, 39.503540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085117, 33.025455, 39.585274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.387321, 33.147568, 39.817139>,  <39.568645, 33.220837, 39.956257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.387321, 33.147568, 39.817139>,  <39.085117, 33.025455, 39.585274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387321, 33.147568, 39.817139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314445, -0.607242, 0.729645,
		0.574739, -0.733527, -0.362785,
		0.755513, 0.305280, 0.579659,
		39.613976, 33.239151, 39.991035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331299, 32.364273, 39.963196>,  <39.085117, 33.025455, 39.585274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331299, 32.364273, 39.963196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.455975, 32.698334, 40.144466>,  <39.530781, 32.898769, 40.253227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.455975, 32.698334, 40.144466>,  <39.331299, 32.364273, 39.963196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455975, 32.698334, 40.144466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411570, -0.311210, 0.856597,
		0.856422, -0.453509, 0.246722,
		0.311692, 0.835151, 0.453178,
		39.549480, 32.948879, 40.280418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799664, 32.153587, 40.478413>,  <39.331299, 32.364273, 39.963196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799664, 32.153587, 40.478413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.641434, 32.504089, 40.588463>,  <39.546497, 32.714390, 40.654491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.641434, 32.504089, 40.588463>,  <39.799664, 32.153587, 40.478413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641434, 32.504089, 40.588463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391790, -0.431929, 0.812365,
		0.830677, 0.213557, 0.514168,
		-0.395570, 0.876259, 0.275124,
		39.522762, 32.766968, 40.671001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976562, 32.226067, 41.167458>,  <39.799664, 32.153587, 40.478413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976562, 32.226067, 41.167458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.678371, 32.482983, 41.096210>,  <39.499458, 32.637131, 41.053463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.678371, 32.482983, 41.096210>,  <39.976562, 32.226067, 41.167458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678371, 32.482983, 41.096210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420702, -0.246139, 0.873170,
		0.516986, 0.725864, 0.453704,
		-0.745477, 0.642291, -0.178122,
		39.454727, 32.675671, 41.042774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842670, 32.483768, 41.878017>,  <39.976562, 32.226067, 41.167458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842670, 32.483768, 41.878017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.517891, 32.583103, 41.666710>,  <39.323025, 32.642704, 41.539925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.517891, 32.583103, 41.666710>,  <39.842670, 32.483768, 41.878017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517891, 32.583103, 41.666710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565368, -0.109346, 0.817559,
		0.145266, 0.962482, 0.229185,
		-0.811947, 0.248337, -0.528272,
		39.274307, 32.657604, 41.508228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485432, 32.981785, 42.284611>,  <39.842670, 32.483768, 41.878017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485432, 32.981785, 42.284611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214493, 32.827103, 42.034279>,  <39.051929, 32.734295, 41.884079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.214493, 32.827103, 42.034279>,  <39.485432, 32.981785, 42.284611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214493, 32.827103, 42.034279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600010, -0.201842, 0.774111,
		-0.425669, 0.899845, -0.095309,
		-0.677343, -0.386701, -0.625834,
		39.011292, 32.711094, 41.846527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892288, 33.281712, 42.510929>,  <39.485432, 32.981785, 42.284611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892288, 33.281712, 42.510929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.793766, 32.970760, 42.279408>,  <38.734653, 32.784187, 42.140495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.793766, 32.970760, 42.279408>,  <38.892288, 33.281712, 42.510929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793766, 32.970760, 42.279408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780373, -0.195092, 0.594102,
		-0.574763, 0.598011, -0.558596,
		-0.246302, -0.777381, -0.578804,
		38.719875, 32.737545, 42.105766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147709, 33.241943, 42.391598>,  <38.892288, 33.281712, 42.510929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147709, 33.241943, 42.391598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.237377, 32.857563, 42.326698>,  <38.291180, 32.626934, 42.287758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.237377, 32.857563, 42.326698>,  <38.147709, 33.241943, 42.391598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237377, 32.857563, 42.326698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789868, -0.276672, 0.547322,
		-0.570838, 0.005462, -0.821045,
		0.224171, -0.960949, -0.162250,
		38.304630, 32.569279, 42.278023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557976, 32.919334, 42.223881>,  <38.147709, 33.241943, 42.391598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557976, 32.919334, 42.223881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.787785, 32.599724, 42.294842>,  <37.925671, 32.407955, 42.337418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.787785, 32.599724, 42.294842>,  <37.557976, 32.919334, 42.223881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787785, 32.599724, 42.294842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787424, -0.480440, 0.386188,
		-0.223344, -0.361567, -0.905200,
		0.574526, -0.799029, 0.177404,
		37.960144, 32.360016, 42.348064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220196, 32.486633, 41.888134>,  <37.557976, 32.919334, 42.223881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220196, 32.486633, 41.888134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446125, 32.297546, 42.158695>,  <37.581684, 32.184093, 42.321030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446125, 32.297546, 42.158695>,  <37.220196, 32.486633, 41.888134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446125, 32.297546, 42.158695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819881, -0.414485, 0.394964,
		0.093652, -0.777652, -0.621680,
		0.564822, -0.472715, 0.676400,
		37.615570, 32.155731, 42.361614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129421, 31.767784, 41.734272>,  <37.220196, 32.486633, 41.888134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129421, 31.767784, 41.734272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.225693, 31.822638, 42.118618>,  <37.283455, 31.855549, 42.349228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.225693, 31.822638, 42.118618>,  <37.129421, 31.767784, 41.734272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225693, 31.822638, 42.118618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775861, -0.567646, 0.275348,
		0.583193, -0.811771, -0.030224,
		0.240676, 0.137132, 0.960869,
		37.297897, 31.863777, 42.406879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975231, 31.174772, 42.072594>,  <37.129421, 31.767784, 41.734272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975231, 31.174772, 42.072594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.008438, 31.388071, 42.409344>,  <37.028362, 31.516050, 42.611393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.008438, 31.388071, 42.409344>,  <36.975231, 31.174772, 42.072594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008438, 31.388071, 42.409344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669195, -0.596156, 0.443595,
		0.738435, -0.600205, 0.307355,
		0.083016, 0.533246, 0.841877,
		37.033344, 31.548044, 42.661907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058800, 30.675217, 42.485542>,  <36.975231, 31.174772, 42.072594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058800, 30.675217, 42.485542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.913624, 30.973993, 42.708382>,  <36.826519, 31.153259, 42.842087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.913624, 30.973993, 42.708382>,  <37.058800, 30.675217, 42.485542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913624, 30.973993, 42.708382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416495, -0.664855, 0.620081,
		0.833552, -0.006978, 0.552397,
		-0.362937, 0.746940, 0.557097,
		36.804741, 31.198076, 42.875511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996723, 30.380203, 43.143448>,  <37.058800, 30.675217, 42.485542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996723, 30.380203, 43.143448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811581, 30.730204, 43.200214>,  <36.700497, 30.940205, 43.234272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.811581, 30.730204, 43.200214>,  <36.996723, 30.380203, 43.143448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811581, 30.730204, 43.200214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607485, -0.429697, 0.668074,
		0.645545, 0.223010, 0.730437,
		-0.462854, 0.875001, 0.141914,
		36.672726, 30.992704, 43.242790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030499, 30.591614, 43.834339>,  <36.996723, 30.380203, 43.143448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030499, 30.591614, 43.834339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700939, 30.756151, 43.678398>,  <36.503204, 30.854874, 43.584831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.700939, 30.756151, 43.678398>,  <37.030499, 30.591614, 43.834339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700939, 30.756151, 43.678398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532985, -0.328527, 0.779741,
		0.192665, 0.850214, 0.489914,
		-0.823897, 0.411346, -0.389856,
		36.453770, 30.879555, 43.561440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633236, 30.862122, 44.481350>,  <37.030499, 30.591614, 43.834339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633236, 30.862122, 44.481350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.366669, 30.852678, 44.183266>,  <36.206730, 30.847012, 44.004417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.366669, 30.852678, 44.183266>,  <36.633236, 30.862122, 44.481350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366669, 30.852678, 44.183266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736785, -0.132214, 0.663074,
		-0.114181, 0.990940, 0.070715,
		-0.666416, -0.023608, -0.745206,
		36.166744, 30.845596, 43.959705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.952080, 31.427847, 44.635189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.835522, 31.136198, 44.387489>,  <35.765587, 30.961208, 44.238869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.835522, 31.136198, 44.387489>,  <35.952080, 31.427847, 44.635189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835522, 31.136198, 44.387489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788758, -0.183132, 0.586791,
		-0.541246, 0.659428, -0.521736,
		-0.291400, -0.729121, -0.619248,
		35.748100, 30.917461, 44.201714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273155, 31.579447, 44.459896>,  <35.952080, 31.427847, 44.635189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273155, 31.579447, 44.459896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.335815, 31.186489, 44.419170>,  <35.373413, 30.950714, 44.394737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.335815, 31.186489, 44.419170>,  <35.273155, 31.579447, 44.459896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335815, 31.186489, 44.419170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797938, -0.186636, 0.573116,
		-0.582026, -0.008542, -0.813125,
		0.156654, -0.982392, -0.101811,
		35.382812, 30.891771, 44.388626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629551, 31.266018, 44.497238>,  <35.273155, 31.579447, 44.459896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629551, 31.266018, 44.497238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.847965, 30.931902, 44.522976>,  <34.979012, 30.731432, 44.538418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.847965, 30.931902, 44.522976>,  <34.629551, 31.266018, 44.497238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847965, 30.931902, 44.522976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708367, -0.419324, 0.567788,
		-0.447289, -0.355607, -0.820656,
		0.546030, -0.835292, 0.064342,
		35.011776, 30.681314, 44.542278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069035, 30.681492, 44.489014>,  <34.629551, 31.266018, 44.497238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069035, 30.681492, 44.489014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.417858, 30.543224, 44.627590>,  <34.627151, 30.460264, 44.710735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.417858, 30.543224, 44.627590>,  <34.069035, 30.681492, 44.489014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417858, 30.543224, 44.627590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486032, -0.528888, 0.695737,
		-0.057270, -0.775106, -0.629230,
		0.872063, -0.345671, 0.346438,
		34.679478, 30.439524, 44.731522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110397, 29.956633, 44.411068>,  <34.069035, 30.681492, 44.489014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110397, 29.956633, 44.411068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.346050, 30.045818, 44.721733>,  <34.487442, 30.099331, 44.908134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.346050, 30.045818, 44.721733>,  <34.110397, 29.956633, 44.411068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346050, 30.045818, 44.721733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666335, -0.409652, 0.623043,
		0.457081, -0.884574, -0.092768,
		0.589130, 0.222966, 0.776667,
		34.522789, 30.112709, 44.954735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132160, 29.364889, 44.800190>,  <34.110397, 29.956633, 44.411068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132160, 29.364889, 44.800190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.235062, 29.648722, 45.062584>,  <34.296803, 29.819021, 45.220020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.235062, 29.648722, 45.062584>,  <34.132160, 29.364889, 44.800190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235062, 29.648722, 45.062584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572957, -0.434637, 0.694846,
		0.778165, -0.554601, 0.294748,
		0.257254, 0.709583, 0.655982,
		34.312237, 29.861597, 45.259377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207340, 28.960794, 45.278282>,  <34.132160, 29.364889, 44.800190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207340, 28.960794, 45.278282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.160946, 29.320070, 45.447895>,  <34.133110, 29.535637, 45.549664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.160946, 29.320070, 45.447895>,  <34.207340, 28.960794, 45.278282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160946, 29.320070, 45.447895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474896, -0.425101, 0.770560,
		0.872366, -0.111997, 0.475852,
		-0.115985, 0.898190, 0.424030,
		34.126152, 29.589527, 45.575104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453728, 28.858278, 45.987110>,  <34.207340, 28.960794, 45.278282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453728, 28.858278, 45.987110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.225098, 29.186415, 45.994522>,  <34.087921, 29.383297, 45.998970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.225098, 29.186415, 45.994522>,  <34.453728, 28.858278, 45.987110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225098, 29.186415, 45.994522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398095, -0.296976, 0.867943,
		0.717512, 0.488717, 0.496318,
		-0.571573, 0.820342, 0.018528,
		34.053627, 29.432518, 46.000080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613934, 29.157494, 46.560749>,  <34.453728, 28.858278, 45.987110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613934, 29.157494, 46.560749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.238510, 29.258057, 46.466179>,  <34.013256, 29.318394, 46.409439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.238510, 29.258057, 46.466179>,  <34.613934, 29.157494, 46.560749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238510, 29.258057, 46.466179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296509, -0.236897, 0.925182,
		0.176591, 0.938442, 0.296887,
		-0.938562, 0.251408, -0.236423,
		33.956940, 29.333479, 46.395252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331089, 29.281590, 47.256325>,  <34.613934, 29.157494, 46.560749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331089, 29.281590, 47.256325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.006878, 29.260052, 47.023037>,  <33.812351, 29.247129, 46.883064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.006878, 29.260052, 47.023037>,  <34.331089, 29.281590, 47.256325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006878, 29.260052, 47.023037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524957, -0.374802, 0.764162,
		-0.259735, 0.925540, 0.275523,
		-0.810529, -0.053842, -0.583218,
		33.763718, 29.243898, 46.848072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838955, 29.499279, 47.653572>,  <34.331089, 29.281590, 47.256325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838955, 29.499279, 47.653572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.622082, 29.328583, 47.364040>,  <33.491959, 29.226164, 47.190319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.622082, 29.328583, 47.364040>,  <33.838955, 29.499279, 47.653572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622082, 29.328583, 47.364040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701280, -0.244722, 0.669565,
		-0.462869, 0.870633, -0.166583,
		-0.542179, -0.426742, -0.723832,
		33.459427, 29.200560, 47.146893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050411, 29.806267, 47.658897>,  <33.838955, 29.499279, 47.653572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050411, 29.806267, 47.658897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.114483, 29.437206, 47.518581>,  <33.152927, 29.215769, 47.434391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.114483, 29.437206, 47.518581>,  <33.050411, 29.806267, 47.658897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114483, 29.437206, 47.518581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674426, -0.361792, 0.643628,
		-0.720759, 0.133489, -0.680211,
		0.160178, -0.922652, -0.350793,
		33.162537, 29.160410, 47.413345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390182, 29.457865, 47.667984>,  <33.050411, 29.806267, 47.658897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390182, 29.457865, 47.667984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.637077, 29.146027, 47.625549>,  <32.785213, 28.958923, 47.600086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.637077, 29.146027, 47.625549>,  <32.390182, 29.457865, 47.667984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637077, 29.146027, 47.625549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661811, -0.587375, 0.465829,
		-0.425473, -0.217313, -0.878492,
		0.617234, -0.779594, -0.106092,
		32.822247, 28.912149, 47.593723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986412, 28.983305, 47.492302>,  <32.390182, 29.457865, 47.667984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986412, 28.983305, 47.492302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.289684, 28.761908, 47.630180>,  <32.471645, 28.629070, 47.712906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.289684, 28.761908, 47.630180>,  <31.986412, 28.983305, 47.492302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289684, 28.761908, 47.630180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635131, -0.507254, 0.582497,
		-0.147561, -0.660561, -0.736128,
		0.758179, -0.553491, 0.344692,
		32.517139, 28.595860, 47.733589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668184, 28.285887, 47.557274>,  <31.986412, 28.983305, 47.492302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668184, 28.285887, 47.557274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.997875, 28.252178, 47.781254>,  <32.195690, 28.231953, 47.915642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.997875, 28.252178, 47.781254>,  <31.668184, 28.285887, 47.557274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997875, 28.252178, 47.781254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461679, -0.672574, 0.578357,
		0.327870, -0.735216, -0.593261,
		0.824229, -0.084270, 0.559950,
		32.245144, 28.226896, 47.949238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832903, 27.618504, 47.548359>,  <31.668184, 28.285887, 47.557274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832903, 27.618504, 47.548359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.002563, 27.745781, 47.887501>,  <32.104359, 27.822147, 48.090984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.002563, 27.745781, 47.887501>,  <31.832903, 27.618504, 47.548359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002563, 27.745781, 47.887501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450472, -0.738055, 0.502344,
		0.785602, -0.595002, -0.169709,
		0.424150, 0.318193, 0.847850,
		32.129810, 27.841238, 48.141857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920553, 27.007040, 47.961159>,  <31.832903, 27.618504, 47.548359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920553, 27.007040, 47.961159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.973993, 27.286243, 48.242565>,  <32.006058, 27.453766, 48.411407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.973993, 27.286243, 48.242565>,  <31.920553, 27.007040, 47.961159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973993, 27.286243, 48.242565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456079, -0.586935, 0.668954,
		0.879854, -0.410231, 0.239933,
		0.133600, 0.698010, 0.703515,
		32.014072, 27.495646, 48.453621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245949, 26.727299, 48.516010>,  <31.920553, 27.007040, 47.961159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245949, 26.727299, 48.516010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.057468, 27.048780, 48.661354>,  <31.944380, 27.241669, 48.748562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.057468, 27.048780, 48.661354>,  <32.245949, 26.727299, 48.516010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057468, 27.048780, 48.661354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416047, -0.565777, 0.711900,
		0.777738, 0.184272, 0.600972,
		-0.471199, 0.803704, 0.363361,
		31.916109, 27.289892, 48.770363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201859, 26.665617, 49.336601>,  <32.245949, 26.727299, 48.516010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201859, 26.665617, 49.336601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.929178, 26.935190, 49.222691>,  <31.765570, 27.096933, 49.154343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.929178, 26.935190, 49.222691>,  <32.201859, 26.665617, 49.336601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929178, 26.935190, 49.222691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676315, -0.431997, 0.596637,
		0.279071, 0.599327, 0.750284,
		-0.681702, 0.673932, -0.284776,
		31.724669, 27.137369, 49.137257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850183, 26.830511, 49.948685>,  <32.201859, 26.665617, 49.336601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850183, 26.830511, 49.948685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.598879, 26.949486, 49.661125>,  <31.448097, 27.020870, 49.488590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.598879, 26.949486, 49.661125>,  <31.850183, 26.830511, 49.948685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598879, 26.949486, 49.661125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755761, -0.452692, 0.473176,
		-0.184700, 0.840595, 0.509201,
		-0.628261, 0.297438, -0.718901,
		31.410400, 27.038717, 49.445454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344894, 26.986128, 50.312523>,  <31.850183, 26.830511, 49.948685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344894, 26.986128, 50.312523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.214134, 26.922123, 49.939957>,  <31.135677, 26.883720, 49.716419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.214134, 26.922123, 49.939957>,  <31.344894, 26.986128, 50.312523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214134, 26.922123, 49.939957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770647, -0.525337, 0.360727,
		-0.547027, 0.835714, 0.048420,
		-0.326901, -0.160012, -0.931414,
		31.116064, 26.874119, 49.660534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636990, 27.039581, 50.356979>,  <31.344894, 26.986128, 50.312523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636990, 27.039581, 50.356979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.683842, 26.839430, 50.013840>,  <30.711952, 26.719339, 49.807957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.683842, 26.839430, 50.013840>,  <30.636990, 27.039581, 50.356979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683842, 26.839430, 50.013840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689311, -0.662797, 0.292489,
		-0.714934, 0.557064, -0.422551,
		0.117130, -0.500380, -0.857846,
		30.718981, 26.689316, 49.756485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937567, 26.898474, 49.857494>,  <30.636990, 27.039581, 50.356979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937567, 26.898474, 49.857494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.245413, 26.643261, 49.867340>,  <30.430120, 26.490133, 49.873245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.245413, 26.643261, 49.867340>,  <29.937567, 26.898474, 49.857494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245413, 26.643261, 49.867340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607063, -0.719229, 0.337912,
		-0.197898, -0.275003, -0.940856,
		0.769618, -0.638031, 0.024610,
		30.476297, 26.451851, 49.874722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755716, 26.330114, 49.370804>,  <29.937567, 26.898474, 49.857494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755716, 26.330114, 49.370804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.992392, 26.264685, 49.686562>,  <30.134398, 26.225428, 49.876019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.992392, 26.264685, 49.686562>,  <29.755716, 26.330114, 49.370804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992392, 26.264685, 49.686562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637264, -0.694641, 0.333720,
		0.493759, -0.700512, -0.515252,
		0.591690, -0.163574, 0.789396,
		30.169899, 26.215612, 49.923382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614210, 26.506144, 48.700546>,  <29.755716, 26.330114, 49.370804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614210, 26.506144, 48.700546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.261215, 26.688347, 48.747414>,  <29.049417, 26.797668, 48.775536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.261215, 26.688347, 48.747414>,  <29.614210, 26.506144, 48.700546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261215, 26.688347, 48.747414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275156, 0.702035, -0.656837,
		-0.381453, -0.547410, -0.744873,
		-0.882487, 0.455509, 0.117170,
		28.996469, 26.824999, 48.782566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318438, 26.654657, 48.012527>,  <29.614210, 26.506144, 48.700546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318438, 26.654657, 48.012527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.119165, 26.920753, 48.234978>,  <28.999603, 27.080412, 48.368446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.119165, 26.920753, 48.234978>,  <29.318438, 26.654657, 48.012527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119165, 26.920753, 48.234978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084374, 0.675526, -0.732493,
		-0.862959, -0.317990, -0.392663,
		-0.498179, 0.665242, 0.556121,
		28.969711, 27.120327, 48.401814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960608, 27.135111, 47.565655>,  <29.318438, 26.654657, 48.012527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960608, 27.135111, 47.565655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.957582, 27.337145, 47.910870>,  <28.955767, 27.458364, 48.118000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.957582, 27.337145, 47.910870>,  <28.960608, 27.135111, 47.565655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957582, 27.337145, 47.910870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060759, 0.861698, -0.503770,
		-0.998124, 0.048627, -0.037206,
		-0.007564, 0.505086, 0.863036,
		28.955313, 27.488670, 48.169781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415106, 27.708103, 47.470634>,  <28.960608, 27.135111, 47.565655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415106, 27.708103, 47.470634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.669203, 27.840742, 47.749634>,  <28.821661, 27.920324, 47.917034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.669203, 27.840742, 47.749634>,  <28.415106, 27.708103, 47.470634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669203, 27.840742, 47.749634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082678, 0.868747, -0.488306,
		-0.767873, 0.367861, 0.524451,
		0.635245, 0.331596, 0.697501,
		28.859776, 27.940222, 47.958885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349434, 28.399441, 47.465366>,  <28.415106, 27.708103, 47.470634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349434, 28.399441, 47.465366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.692259, 28.380476, 47.670578>,  <28.897953, 28.369097, 47.793705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.692259, 28.380476, 47.670578>,  <28.349434, 28.399441, 47.465366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692259, 28.380476, 47.670578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351192, 0.782341, -0.514399,
		-0.376971, 0.621043, 0.687167,
		0.857063, -0.047414, 0.513025,
		28.949377, 28.366251, 47.824486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486809, 29.021454, 47.720116>,  <28.349434, 28.399441, 47.465366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486809, 29.021454, 47.720116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.849451, 28.852709, 47.724136>,  <29.067036, 28.751461, 47.726547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.849451, 28.852709, 47.724136>,  <28.486809, 29.021454, 47.720116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849451, 28.852709, 47.724136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372858, 0.789681, -0.487218,
		0.197601, 0.445461, 0.873223,
		0.906604, -0.421862, 0.010052,
		29.121433, 28.726151, 47.727154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896891, 29.528378, 47.919296>,  <28.486809, 29.021454, 47.720116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896891, 29.528378, 47.919296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.148262, 29.263065, 47.756748>,  <29.299086, 29.103878, 47.659218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.148262, 29.263065, 47.756748>,  <28.896891, 29.528378, 47.919296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148262, 29.263065, 47.756748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534755, 0.747771, -0.393542,
		0.564901, 0.030004, 0.824613,
		0.628430, -0.663278, -0.406372,
		29.336790, 29.064081, 47.634838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647572, 29.750597, 48.009281>,  <28.896891, 29.528378, 47.919296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647572, 29.750597, 48.009281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.646788, 29.495804, 47.700932>,  <29.646317, 29.342928, 47.515923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.646788, 29.495804, 47.700932>,  <29.647572, 29.750597, 48.009281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646788, 29.495804, 47.700932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705328, 0.545580, -0.452609,
		0.708878, -0.544608, 0.448212,
		-0.001959, -0.636981, -0.770877,
		29.646200, 29.304710, 47.469669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315506, 29.683569, 47.914379>,  <29.647572, 29.750597, 48.009281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315506, 29.683569, 47.914379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.166666, 29.581190, 47.557495>,  <30.077362, 29.519762, 47.343365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.166666, 29.581190, 47.557495>,  <30.315506, 29.683569, 47.914379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166666, 29.581190, 47.557495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655448, 0.608149, -0.447820,
		0.657214, -0.751428, -0.058531,
		-0.372101, -0.255949, -0.892206,
		30.055037, 29.504406, 47.289833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792448, 29.389202, 47.516659>,  <30.315506, 29.683569, 47.914379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792448, 29.389202, 47.516659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.531393, 29.528662, 47.247585>,  <30.374760, 29.612337, 47.086140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.531393, 29.528662, 47.247585>,  <30.792448, 29.389202, 47.516659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531393, 29.528662, 47.247585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749951, 0.423657, -0.508024,
		0.107867, -0.836038, -0.537964,
		-0.652640, 0.348648, -0.672686,
		30.335602, 29.633255, 47.045780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065849, 29.193409, 46.897964>,  <30.792448, 29.389202, 47.516659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065849, 29.193409, 46.897964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.800785, 29.472754, 46.789761>,  <30.641747, 29.640360, 46.724838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.800785, 29.472754, 46.789761>,  <31.065849, 29.193409, 46.897964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800785, 29.472754, 46.789761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714462, 0.481196, -0.507931,
		-0.224552, -0.529853, -0.817822,
		-0.662661, 0.698360, -0.270506,
		30.601986, 29.682262, 46.708611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240170, 29.388765, 46.264294>,  <31.065849, 29.193409, 46.897964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240170, 29.388765, 46.264294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.987123, 29.694101, 46.316616>,  <30.835295, 29.877302, 46.348011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.987123, 29.694101, 46.316616>,  <31.240170, 29.388765, 46.264294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987123, 29.694101, 46.316616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610722, 0.595562, -0.521847,
		-0.476251, -0.250240, -0.842950,
		-0.632617, 0.763338, 0.130810,
		30.797338, 29.923103, 46.355858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204391, 29.701174, 45.632446>,  <31.240170, 29.388765, 46.264294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204391, 29.701174, 45.632446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.113806, 29.991346, 45.892433>,  <31.059454, 30.165449, 46.048428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.113806, 29.991346, 45.892433>,  <31.204391, 29.701174, 45.632446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113806, 29.991346, 45.892433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647732, 0.610534, -0.455732,
		-0.727432, 0.317801, -0.608149,
		-0.226463, 0.725432, 0.649972,
		31.045866, 30.208977, 46.087425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108624, 30.309338, 45.197807>,  <31.204391, 29.701174, 45.632446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108624, 30.309338, 45.197807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.151600, 30.457384, 45.566910>,  <31.177385, 30.546211, 45.788372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.151600, 30.457384, 45.566910>,  <31.108624, 30.309338, 45.197807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151600, 30.457384, 45.566910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661746, 0.666047, -0.344200,
		-0.741990, 0.647608, -0.173362,
		0.107440, 0.370115, 0.922752,
		31.183832, 30.568419, 45.843735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926203, 30.997738, 45.116898>,  <31.108624, 30.309338, 45.197807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926203, 30.997738, 45.116898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.171614, 30.934307, 45.426334>,  <31.318859, 30.896250, 45.611996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.171614, 30.934307, 45.426334>,  <30.926203, 30.997738, 45.116898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171614, 30.934307, 45.426334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535947, 0.803078, -0.260434,
		-0.579954, 0.574386, 0.577698,
		0.613526, -0.158576, 0.773589,
		31.355671, 30.886734, 45.658413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103653, 31.730129, 45.286842>,  <30.926203, 30.997738, 45.116898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103653, 31.730129, 45.286842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.378752, 31.503075, 45.467857>,  <31.543812, 31.366842, 45.576466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.378752, 31.503075, 45.467857>,  <31.103653, 31.730129, 45.286842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378752, 31.503075, 45.467857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647010, 0.761985, -0.027510,
		-0.329210, 0.311715, 0.891322,
		0.687749, -0.567638, 0.452536,
		31.585077, 31.332783, 45.603619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393629, 32.169865, 45.760181>,  <31.103653, 31.730129, 45.286842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393629, 32.169865, 45.760181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.655502, 31.877647, 45.682522>,  <31.812626, 31.702316, 45.635925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.655502, 31.877647, 45.682522>,  <31.393629, 32.169865, 45.760181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655502, 31.877647, 45.682522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702871, 0.682839, -0.199255,
		0.278137, -0.006012, 0.960523,
		0.654684, -0.730544, -0.194148,
		31.851908, 31.658484, 45.624279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053230, 32.464043, 45.859127>,  <31.393629, 32.169865, 45.760181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053230, 32.464043, 45.859127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.147011, 32.125973, 45.666996>,  <32.203278, 31.923132, 45.551716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.147011, 32.125973, 45.666996>,  <32.053230, 32.464043, 45.859127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147011, 32.125973, 45.666996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704107, 0.488312, -0.515543,
		0.670274, -0.217336, 0.709576,
		0.234448, -0.845173, -0.480330,
		32.217346, 31.872421, 45.522896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783585, 32.421387, 45.946808>,  <32.053230, 32.464043, 45.859127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783585, 32.421387, 45.946808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675625, 32.196625, 45.634037>,  <32.610851, 32.061768, 45.446373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675625, 32.196625, 45.634037>,  <32.783585, 32.421387, 45.946808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675625, 32.196625, 45.634037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657338, 0.485874, -0.576049,
		0.703607, -0.669465, 0.238229,
		-0.269895, -0.561910, -0.781930,
		32.594658, 32.028053, 45.399460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411526, 32.127319, 45.682159>,  <32.783585, 32.421387, 45.946808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411526, 32.127319, 45.682159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.150242, 32.159122, 45.380962>,  <32.993473, 32.178204, 45.200245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.150242, 32.159122, 45.380962>,  <33.411526, 32.127319, 45.682159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150242, 32.159122, 45.380962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734522, 0.307975, -0.604672,
		0.183827, -0.948067, -0.259571,
		-0.653211, 0.079505, -0.752990,
		32.954277, 32.182972, 45.155064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.690102, 40.355820, 33.611309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.418091, 40.251640, 33.337162>,  <40.254883, 40.189133, 33.172676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.418091, 40.251640, 33.337162>,  <40.690102, 40.355820, 33.611309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418091, 40.251640, 33.337162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267120, -0.782519, 0.562415,
		-0.682792, 0.565533, 0.462565,
		-0.680031, -0.260453, -0.685363,
		40.214081, 40.173504, 33.131554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138836, 40.282360, 33.923260>,  <40.690102, 40.355820, 33.611309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138836, 40.282360, 33.923260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.097595, 40.046345, 33.602955>,  <40.072853, 39.904736, 33.410770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.097595, 40.046345, 33.602955>,  <40.138836, 40.282360, 33.923260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097595, 40.046345, 33.602955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309252, -0.746143, 0.589605,
		-0.945375, 0.308426, -0.105544,
		-0.103099, -0.590038, -0.800766,
		40.066666, 39.869335, 33.362724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473324, 39.961853, 33.899193>,  <40.138836, 40.282360, 33.923260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473324, 39.961853, 33.899193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.728634, 39.734024, 33.692043>,  <39.881821, 39.597324, 33.567753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.728634, 39.734024, 33.692043>,  <39.473324, 39.961853, 33.899193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728634, 39.734024, 33.692043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155013, -0.754043, 0.638271,
		-0.754043, -0.327113, -0.569575,
		-0.638271, 0.569575, 0.517874,
		39.920116, 39.563152, 33.536682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232010, 39.336128, 33.996510>,  <39.473324, 39.961853, 33.899193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232010, 39.336128, 33.996510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.599113, 39.251331, 33.862175>,  <39.819374, 39.200451, 33.781574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.599113, 39.251331, 33.862175>,  <39.232010, 39.336128, 33.996510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599113, 39.251331, 33.862175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120667, -0.656793, 0.744354,
		-0.378371, -0.723658, -0.577195,
		0.917755, -0.211994, -0.335833,
		39.874439, 39.187733, 33.761425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245983, 38.671135, 34.155010>,  <39.232010, 39.336128, 33.996510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245983, 38.671135, 34.155010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.633377, 38.755619, 34.102200>,  <39.865814, 38.806309, 34.070515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.633377, 38.755619, 34.102200>,  <39.245983, 38.671135, 34.155010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633377, 38.755619, 34.102200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248374, -0.778927, 0.575833,
		0.018784, -0.590476, -0.806837,
		0.968482, 0.211214, -0.132027,
		39.923923, 38.818985, 34.062592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486439, 38.108746, 33.878429>,  <39.245983, 38.671135, 34.155010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486439, 38.108746, 33.878429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.786781, 38.303127, 34.057346>,  <39.966988, 38.419754, 34.164696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.786781, 38.303127, 34.057346>,  <39.486439, 38.108746, 33.878429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786781, 38.303127, 34.057346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209495, -0.817497, 0.536480,
		0.626364, -0.309112, -0.715624,
		0.750853, 0.485951, 0.447294,
		40.012035, 38.448914, 34.191536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090710, 37.659492, 33.857525>,  <39.486439, 38.108746, 33.878429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090710, 37.659492, 33.857525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.195938, 37.910183, 34.150921>,  <40.259075, 38.060596, 34.326958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.195938, 37.910183, 34.150921>,  <40.090710, 37.659492, 33.857525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195938, 37.910183, 34.150921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478598, -0.744903, 0.464826,
		0.837698, 0.228766, -0.495912,
		0.263070, 0.626726, 0.733491,
		40.274860, 38.098202, 34.370968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738773, 37.465004, 34.001637>,  <40.090710, 37.659492, 33.857525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738773, 37.465004, 34.001637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.601494, 37.665600, 34.319309>,  <40.519127, 37.785957, 34.509911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.601494, 37.665600, 34.319309>,  <40.738773, 37.465004, 34.001637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601494, 37.665600, 34.319309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554302, -0.574457, 0.602285,
		0.758263, 0.646920, -0.080824,
		-0.343200, 0.501491, 0.794179,
		40.498535, 37.816048, 34.557564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279770, 37.804382, 34.312344>,  <40.738773, 37.465004, 34.001637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279770, 37.804382, 34.312344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.002098, 37.764454, 34.597485>,  <40.835495, 37.740498, 34.768570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.002098, 37.764454, 34.597485>,  <41.279770, 37.804382, 34.312344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002098, 37.764454, 34.597485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678040, -0.423111, 0.601031,
		0.241620, 0.900563, 0.361395,
		-0.694177, -0.099819, 0.712850,
		40.793846, 37.734509, 34.811340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678513, 37.929382, 34.922150>,  <41.279770, 37.804382, 34.312344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678513, 37.929382, 34.922150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.343437, 37.747864, 35.043709>,  <41.142391, 37.638950, 35.116642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.343437, 37.747864, 35.043709>,  <41.678513, 37.929382, 34.922150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343437, 37.747864, 35.043709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502306, -0.421705, 0.754886,
		-0.214413, 0.785004, 0.581202,
		-0.837685, -0.453799, 0.303894,
		41.092133, 37.611725, 35.134876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748600, 38.042625, 35.585972>,  <41.678513, 37.929382, 34.922150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748600, 38.042625, 35.585972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.482513, 37.744965, 35.561565>,  <41.322861, 37.566368, 35.546921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.482513, 37.744965, 35.561565>,  <41.748600, 38.042625, 35.585972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482513, 37.744965, 35.561565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451991, -0.466397, 0.760380,
		-0.594294, 0.478242, 0.646606,
		-0.665221, -0.744149, -0.061016,
		41.282948, 37.521721, 35.543259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565865, 37.811325, 36.320751>,  <41.748600, 38.042625, 35.585972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565865, 37.811325, 36.320751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.493958, 37.502197, 36.077297>,  <41.450813, 37.316723, 35.931225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.493958, 37.502197, 36.077297>,  <41.565865, 37.811325, 36.320751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493958, 37.502197, 36.077297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598473, -0.576961, 0.555830,
		-0.780714, -0.264332, 0.566229,
		-0.179768, -0.772816, -0.608637,
		41.440025, 37.270351, 35.894707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626499, 37.230396, 36.726879>,  <41.565865, 37.811325, 36.320751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626499, 37.230396, 36.726879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.635136, 37.073353, 36.359097>,  <41.640316, 36.979126, 36.138428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.635136, 37.073353, 36.359097>,  <41.626499, 37.230396, 36.726879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635136, 37.073353, 36.359097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594060, -0.734668, 0.327653,
		-0.804131, -0.553282, 0.217375,
		0.021586, -0.392609, -0.919452,
		41.641613, 36.955570, 36.083260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357601, 36.437553, 36.762569>,  <41.626499, 37.230396, 36.726879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357601, 36.437553, 36.762569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.574482, 36.452251, 36.426792>,  <41.704609, 36.461071, 36.225327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.574482, 36.452251, 36.426792>,  <41.357601, 36.437553, 36.762569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574482, 36.452251, 36.426792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631186, -0.677266, 0.378040,
		-0.554635, -0.734819, -0.390411,
		0.542203, 0.036748, -0.839443,
		41.737144, 36.463276, 36.174957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257259, 35.794910, 36.421375>,  <41.357601, 36.437553, 36.762569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257259, 35.794910, 36.421375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.602970, 35.961704, 36.308842>,  <41.810398, 36.061783, 36.241322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.602970, 35.961704, 36.308842>,  <41.257259, 35.794910, 36.421375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602970, 35.961704, 36.308842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488692, -0.828584, 0.273183,
		-0.119197, -0.373592, -0.919903,
		0.864276, 0.416987, -0.281336,
		41.862251, 36.086800, 36.224442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666286, 35.298828, 36.123226>,  <41.257259, 35.794910, 36.421375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666286, 35.298828, 36.123226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.966278, 35.562592, 36.144032>,  <42.146275, 35.720852, 36.156513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.966278, 35.562592, 36.144032>,  <41.666286, 35.298828, 36.123226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966278, 35.562592, 36.144032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604276, -0.715006, 0.351593,
		0.269032, -0.232259, -0.934707,
		0.749981, 0.659411, 0.052011,
		42.191273, 35.760414, 36.159634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215355, 34.950306, 35.796070>,  <41.666286, 35.298828, 36.123226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215355, 34.950306, 35.796070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.383904, 35.205551, 36.053833>,  <42.485031, 35.358696, 36.208492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.383904, 35.205551, 36.053833>,  <42.215355, 34.950306, 35.796070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383904, 35.205551, 36.053833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587760, -0.733291, 0.341793,
		0.690641, 0.234738, -0.684042,
		0.421370, 0.638109, 0.644410,
		42.510315, 35.396984, 36.247154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.901585, 34.712753, 35.611385>,  <42.215355, 34.950306, 35.796070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.901585, 34.712753, 35.611385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.884113, 34.927822, 35.948196>,  <42.873631, 35.056862, 36.150284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.884113, 34.927822, 35.948196>,  <42.901585, 34.712753, 35.611385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884113, 34.927822, 35.948196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757370, -0.531826, 0.378882,
		0.651524, 0.654274, -0.383983,
		-0.043680, 0.537668, 0.842025,
		42.871010, 35.089123, 36.200806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561272, 35.009254, 35.683155>,  <42.901585, 34.712753, 35.611385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561272, 35.009254, 35.683155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.378441, 34.987591, 36.038265>,  <43.268742, 34.974594, 36.251331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.378441, 34.987591, 36.038265>,  <43.561272, 35.009254, 35.683155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378441, 34.987591, 36.038265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832526, -0.377329, 0.405614,
		0.313017, 0.924494, 0.217556,
		-0.457078, -0.054157, 0.887776,
		43.241318, 34.971344, 36.304600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074703, 35.202312, 36.191418>,  <43.561272, 35.009254, 35.683155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074703, 35.202312, 36.191418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.809292, 35.008270, 36.419243>,  <43.650043, 34.891846, 36.555939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.809292, 35.008270, 36.419243>,  <44.074703, 35.202312, 36.191418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.809292, 35.008270, 36.419243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747860, -0.408937, 0.522949,
		-0.020767, 0.772947, 0.634130,
		-0.663531, -0.485101, 0.569564,
		43.610233, 34.862740, 36.590111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321346, 35.335747, 36.812981>,  <44.074703, 35.202312, 36.191418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321346, 35.335747, 36.812981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.082821, 35.017082, 36.852463>,  <43.939705, 34.825886, 36.876152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.082821, 35.017082, 36.852463>,  <44.321346, 35.335747, 36.812981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082821, 35.017082, 36.852463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618880, -0.377934, 0.688588,
		-0.511267, 0.471701, 0.718404,
		-0.596317, -0.796658, 0.098701,
		43.903927, 34.778084, 36.882072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.760738, 35.934078, 36.872124>,  <44.321346, 35.335747, 36.812981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.760738, 35.934078, 36.872124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049171, 35.901432, 36.596912>,  <45.222233, 35.881844, 36.431786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049171, 35.901432, 36.596912>,  <44.760738, 35.934078, 36.872124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049171, 35.901432, 36.596912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522385, 0.588293, -0.617272,
		0.455140, 0.804519, 0.381572,
		0.721083, -0.081617, -0.688024,
		45.265495, 35.876945, 36.390507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690521, 36.541519, 36.566875>,  <44.760738, 35.934078, 36.872124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690521, 36.541519, 36.566875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.916458, 36.328133, 36.315044>,  <45.052021, 36.200100, 36.163948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.916458, 36.328133, 36.315044>,  <44.690521, 36.541519, 36.566875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.916458, 36.328133, 36.315044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276585, 0.596417, -0.753517,
		0.777467, 0.599749, 0.189332,
		0.564842, -0.533468, -0.629576,
		45.085911, 36.168091, 36.126171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962166, 37.004986, 36.091057>,  <44.690521, 36.541519, 36.566875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962166, 37.004986, 36.091057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.036488, 36.678406, 35.872375>,  <45.081081, 36.482456, 35.741165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.036488, 36.678406, 35.872375>,  <44.962166, 37.004986, 36.091057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036488, 36.678406, 35.872375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185571, 0.517223, -0.835490,
		0.964904, 0.256690, -0.055407,
		0.185804, -0.816450, -0.546705,
		45.092228, 36.433472, 35.708363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.343632, 37.253906, 35.543285>,  <44.962166, 37.004986, 36.091057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.343632, 37.253906, 35.543285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.166332, 36.913052, 35.432003>,  <45.059952, 36.708538, 35.365234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.166332, 36.913052, 35.432003>,  <45.343632, 37.253906, 35.543285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.166332, 36.913052, 35.432003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256156, 0.417827, -0.871668,
		0.859017, -0.315106, -0.403482,
		-0.443253, -0.852132, -0.278204,
		45.033356, 36.657413, 35.348541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.439495, 37.270245, 34.829380>,  <45.343632, 37.253906, 35.543285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.439495, 37.270245, 34.829380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.166370, 36.980316, 34.866051>,  <45.002495, 36.806358, 34.888054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.166370, 36.980316, 34.866051>,  <45.439495, 37.270245, 34.829380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.166370, 36.980316, 34.866051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434524, 0.302018, -0.848513,
		0.587328, -0.619213, -0.521172,
		-0.682813, -0.724818, 0.091679,
		44.961525, 36.762871, 34.893555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461933, 36.859673, 34.175465>,  <45.439495, 37.270245, 34.829380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461933, 36.859673, 34.175465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.103188, 36.830345, 34.349941>,  <44.887939, 36.812748, 34.454628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.103188, 36.830345, 34.349941>,  <45.461933, 36.859673, 34.175465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.103188, 36.830345, 34.349941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440059, 0.247284, -0.863249,
		-0.044572, -0.966165, -0.254044,
		-0.896862, -0.073317, 0.436191,
		44.834129, 36.808350, 34.480797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007442, 36.645855, 33.598606>,  <45.461933, 36.859673, 34.175465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007442, 36.645855, 33.598606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.758335, 36.809174, 33.865574>,  <44.608871, 36.907166, 34.025753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.758335, 36.809174, 33.865574>,  <45.007442, 36.645855, 33.598606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758335, 36.809174, 33.865574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511440, 0.433116, -0.742186,
		-0.592103, -0.803557, -0.060912,
		-0.622770, 0.408298, 0.667420,
		44.571503, 36.931664, 34.065800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326752, 36.683399, 33.258301>,  <45.007442, 36.645855, 33.598606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326752, 36.683399, 33.258301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.267170, 36.951851, 33.548790>,  <44.231422, 37.112923, 33.723083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.267170, 36.951851, 33.548790>,  <44.326752, 36.683399, 33.258301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.267170, 36.951851, 33.548790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532835, 0.564205, -0.630682,
		-0.833007, -0.480900, 0.273560,
		-0.148951, 0.671125, 0.726227,
		44.222485, 37.153187, 33.766659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685894, 36.931274, 33.140400>,  <44.326752, 36.683399, 33.258301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685894, 36.931274, 33.140400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.831314, 37.211864, 33.385597>,  <43.918568, 37.380219, 33.532715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.831314, 37.211864, 33.385597>,  <43.685894, 36.931274, 33.140400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831314, 37.211864, 33.385597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556115, 0.691327, -0.461306,
		-0.747374, -0.173185, 0.641435,
		0.363550, 0.701480, 0.612991,
		43.940380, 37.422310, 33.569496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092365, 37.364014, 33.410019>,  <43.685894, 36.931274, 33.140400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092365, 37.364014, 33.410019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.426571, 37.582878, 33.430164>,  <43.627094, 37.714195, 33.442253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.426571, 37.582878, 33.430164>,  <43.092365, 37.364014, 33.410019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.426571, 37.582878, 33.430164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418785, 0.693452, -0.586297,
		-0.355726, 0.468764, 0.808529,
		0.835511, 0.547161, 0.050367,
		43.677223, 37.747025, 33.445274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887508, 38.007401, 33.567814>,  <43.092365, 37.364014, 33.410019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887508, 38.007401, 33.567814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.245777, 38.063019, 33.398846>,  <43.460739, 38.096390, 33.297462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.245777, 38.063019, 33.398846>,  <42.887508, 38.007401, 33.567814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245777, 38.063019, 33.398846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364497, 0.773728, -0.518157,
		0.254793, 0.618069, 0.743687,
		0.895669, 0.139049, -0.422425,
		43.514477, 38.104733, 33.272118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897507, 38.731552, 33.467457>,  <42.887508, 38.007401, 33.567814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897507, 38.731552, 33.467457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.203739, 38.603771, 33.244087>,  <43.387478, 38.527103, 33.110065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.203739, 38.603771, 33.244087>,  <42.897507, 38.731552, 33.467457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.203739, 38.603771, 33.244087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120516, 0.781429, -0.612246,
		0.631950, 0.536023, 0.559749,
		0.765582, -0.319450, -0.558423,
		43.433414, 38.507935, 33.076561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287544, 39.296265, 33.294731>,  <42.897507, 38.731552, 33.467457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287544, 39.296265, 33.294731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.402836, 39.038898, 33.011059>,  <43.472012, 38.884480, 32.840855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.402836, 39.038898, 33.011059>,  <43.287544, 39.296265, 33.294731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402836, 39.038898, 33.011059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166379, 0.695697, -0.698802,
		0.942997, 0.319407, 0.093469,
		0.288228, -0.643416, -0.709182,
		43.489304, 38.845875, 32.798306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561195, 39.738235, 32.793327>,  <43.287544, 39.296265, 33.294731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561195, 39.738235, 32.793327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473019, 39.389965, 32.617455>,  <43.420113, 39.181000, 32.511929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473019, 39.389965, 32.617455>,  <43.561195, 39.738235, 32.793327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473019, 39.389965, 32.617455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325522, 0.490598, -0.808300,
		0.919480, -0.035053, -0.391571,
		-0.220437, -0.870681, -0.439684,
		43.406887, 39.128761, 32.485550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727577, 39.906952, 32.056400>,  <43.561195, 39.738235, 32.793327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727577, 39.906952, 32.056400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.502495, 39.576626, 32.071308>,  <43.367447, 39.378429, 32.080254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.502495, 39.576626, 32.071308>,  <43.727577, 39.906952, 32.056400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502495, 39.576626, 32.071308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537487, 0.331244, -0.775491,
		0.628070, -0.456402, -0.630259,
		-0.562705, -0.825817, 0.037266,
		43.333683, 39.328880, 32.082489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.783688, 39.704941, 31.416807>,  <43.727577, 39.906952, 32.056400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.783688, 39.704941, 31.416807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.446041, 39.555515, 31.570646>,  <43.243454, 39.465858, 31.662951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.446041, 39.555515, 31.570646>,  <43.783688, 39.704941, 31.416807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446041, 39.555515, 31.570646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510455, 0.340501, -0.789617,
		0.164017, -0.862849, -0.478111,
		-0.844117, -0.373565, 0.384598,
		43.192806, 39.443447, 31.686026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432079, 39.439430, 30.791533>,  <43.783688, 39.704941, 31.416807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432079, 39.439430, 30.791533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.140556, 39.477814, 31.062717>,  <42.965641, 39.500843, 31.225428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.140556, 39.477814, 31.062717>,  <43.432079, 39.439430, 30.791533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140556, 39.477814, 31.062717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642844, 0.245053, -0.725741,
		-0.235778, -0.964749, -0.116910,
		-0.728807, 0.095959, 0.677962,
		42.921913, 39.506599, 31.266106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760506, 39.267410, 30.478786>,  <43.432079, 39.439430, 30.791533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760506, 39.267410, 30.478786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.641102, 39.448845, 30.814680>,  <42.569458, 39.557705, 31.016216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.641102, 39.448845, 30.814680>,  <42.760506, 39.267410, 30.478786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641102, 39.448845, 30.814680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849629, 0.274510, -0.450304,
		-0.434766, -0.847883, 0.303435,
		-0.298510, 0.453584, 0.839734,
		42.551548, 39.584919, 31.066601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199638, 38.972614, 30.652216>,  <42.760506, 39.267410, 30.478786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199638, 38.972614, 30.652216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.177124, 39.325653, 30.838919>,  <42.163616, 39.537476, 30.950941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.177124, 39.325653, 30.838919>,  <42.199638, 38.972614, 30.652216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177124, 39.325653, 30.838919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828865, 0.219322, -0.514666,
		-0.556610, -0.415846, 0.719206,
		-0.056284, 0.882593, 0.466757,
		42.160240, 39.590431, 30.978945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583664, 39.026810, 31.005453>,  <42.199638, 38.972614, 30.652216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583664, 39.026810, 31.005453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.698322, 39.407372, 30.960440>,  <41.767117, 39.635708, 30.933432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.698322, 39.407372, 30.960440>,  <41.583664, 39.026810, 31.005453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698322, 39.407372, 30.960440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913848, 0.236266, -0.330244,
		-0.287607, 0.197501, 0.937164,
		0.286643, 0.951405, -0.112534,
		41.784317, 39.692795, 30.926680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002304, 39.401505, 31.197218>,  <41.583664, 39.026810, 31.005453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002304, 39.401505, 31.197218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.213722, 39.673523, 30.993973>,  <41.340572, 39.836735, 30.872026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.213722, 39.673523, 30.993973>,  <41.002304, 39.401505, 31.197218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213722, 39.673523, 30.993973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848840, 0.415932, -0.326300,
		-0.010558, 0.603771, 0.797088,
		0.528544, 0.680045, -0.508113,
		41.372284, 39.877537, 30.841539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.287792, 31.700741, 43.329243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076805, 31.832529, 43.016006>,  <37.950214, 31.911602, 42.828064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076805, 31.832529, 43.016006>,  <38.287792, 31.700741, 43.329243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076805, 31.832529, 43.016006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848273, 0.255280, -0.463966,
		0.047043, -0.909000, -0.414133,
		-0.527465, 0.329472, -0.783089,
		37.918564, 31.931370, 42.781078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753330, 31.490402, 42.772545>,  <38.287792, 31.700741, 43.329243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753330, 31.490402, 42.772545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496895, 31.763605, 42.632538>,  <38.343033, 31.927526, 42.548534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496895, 31.763605, 42.632538>,  <38.753330, 31.490402, 42.772545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496895, 31.763605, 42.632538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683998, 0.301641, -0.664198,
		-0.348072, -0.665218, -0.660553,
		-0.641087, 0.683006, -0.350015,
		38.304569, 31.968508, 42.527534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730202, 31.373575, 42.032177>,  <38.753330, 31.490402, 42.772545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730202, 31.373575, 42.032177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605366, 31.744276, 42.115826>,  <38.530464, 31.966696, 42.166016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605366, 31.744276, 42.115826>,  <38.730202, 31.373575, 42.032177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605366, 31.744276, 42.115826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641660, 0.367942, -0.672972,
		-0.700623, -0.075839, -0.709489,
		-0.312088, 0.926751, 0.209126,
		38.511738, 32.022301, 42.178562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374565, 31.700008, 41.387321>,  <38.730202, 31.373575, 42.032177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374565, 31.700008, 41.387321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489380, 32.021259, 41.596165>,  <38.558270, 32.214008, 41.721470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489380, 32.021259, 41.596165>,  <38.374565, 31.700008, 41.387321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489380, 32.021259, 41.596165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361947, 0.413711, -0.835367,
		-0.886908, 0.428756, -0.171939,
		0.287035, 0.803126, 0.522110,
		38.575489, 32.262196, 41.752796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093758, 32.297333, 41.022800>,  <38.374565, 31.700008, 41.387321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093758, 32.297333, 41.022800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384445, 32.423325, 41.266987>,  <38.558857, 32.498920, 41.413498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384445, 32.423325, 41.266987>,  <38.093758, 32.297333, 41.022800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384445, 32.423325, 41.266987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398349, 0.530769, -0.748066,
		-0.559640, 0.786812, 0.260249,
		0.726719, 0.314978, 0.610466,
		38.602463, 32.517818, 41.450127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277641, 33.027485, 40.860554>,  <38.093758, 32.297333, 41.022800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277641, 33.027485, 40.860554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604691, 32.928249, 41.068375>,  <38.800922, 32.868706, 41.193069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604691, 32.928249, 41.068375>,  <38.277641, 33.027485, 40.860554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604691, 32.928249, 41.068375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571650, 0.457313, -0.681235,
		-0.068590, 0.853999, 0.515733,
		0.817626, -0.248093, 0.519556,
		38.849979, 32.853821, 41.224243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536961, 33.599434, 41.031601>,  <38.277641, 33.027485, 40.860554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536961, 33.599434, 41.031601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828815, 33.326061, 41.022194>,  <39.003929, 33.162037, 41.016552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828815, 33.326061, 41.022194>,  <38.536961, 33.599434, 41.031601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828815, 33.326061, 41.022194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465381, 0.521449, -0.715200,
		0.501053, 0.510891, 0.698524,
		0.729634, -0.683433, -0.023515,
		39.047707, 33.121033, 41.015141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184246, 33.975075, 41.029842>,  <38.536961, 33.599434, 41.031601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184246, 33.975075, 41.029842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300888, 33.609283, 40.917633>,  <39.370872, 33.389809, 40.850307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300888, 33.609283, 40.917633>,  <39.184246, 33.975075, 41.029842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300888, 33.609283, 40.917633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756445, 0.399962, -0.517515,
		0.585454, -0.061285, 0.808386,
		0.291608, -0.914480, -0.280519,
		39.388371, 33.334938, 40.833477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977360, 33.992538, 40.938034>,  <39.184246, 33.975075, 41.029842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977360, 33.992538, 40.938034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836555, 33.674671, 40.740211>,  <39.752071, 33.483952, 40.621517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836555, 33.674671, 40.740211>,  <39.977360, 33.992538, 40.938034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836555, 33.674671, 40.740211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662311, 0.161886, -0.731530,
		0.661386, -0.585060, 0.469332,
		-0.352011, -0.794668, -0.494561,
		39.730953, 33.436272, 40.591843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619789, 33.696098, 40.687195>,  <39.977360, 33.992538, 40.938034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619789, 33.696098, 40.687195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311699, 33.552383, 40.476418>,  <40.126846, 33.466156, 40.349949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311699, 33.552383, 40.476418>,  <40.619789, 33.696098, 40.687195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311699, 33.552383, 40.476418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533086, 0.090887, -0.841165,
		0.350109, -0.928792, 0.121526,
		-0.770222, -0.359283, -0.526947,
		40.080631, 33.444599, 40.318333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820526, 33.172138, 40.311447>,  <40.619789, 33.696098, 40.687195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820526, 33.172138, 40.311447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507946, 33.314636, 40.106537>,  <40.320396, 33.400135, 39.983589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507946, 33.314636, 40.106537>,  <40.820526, 33.172138, 40.311447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507946, 33.314636, 40.106537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554669, 0.020561, -0.831817,
		-0.285796, -0.934167, -0.213664,
		-0.781449, 0.356243, -0.512278,
		40.273510, 33.421509, 39.952854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897923, 32.874481, 39.643097>,  <40.820526, 33.172138, 40.311447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897923, 32.874481, 39.643097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594051, 33.124569, 39.571556>,  <40.411728, 33.274624, 39.528633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594051, 33.124569, 39.571556>,  <40.897923, 32.874481, 39.643097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594051, 33.124569, 39.571556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389142, 0.216712, -0.895324,
		-0.521019, -0.749754, -0.407932,
		-0.759676, 0.625224, -0.178849,
		40.366150, 33.312138, 39.517902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653873, 32.654961, 39.010609>,  <40.897923, 32.874481, 39.643097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653873, 32.654961, 39.010609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596226, 33.044052, 39.083298>,  <40.561638, 33.277508, 39.126911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596226, 33.044052, 39.083298>,  <40.653873, 32.654961, 39.010609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596226, 33.044052, 39.083298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389133, 0.224556, -0.893392,
		-0.909837, -0.058044, -0.410886,
		-0.144123, 0.972731, 0.181723,
		40.552990, 33.335873, 39.137814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129166, 32.920994, 38.490528>,  <40.653873, 32.654961, 39.010609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129166, 32.920994, 38.490528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394798, 33.184731, 38.631535>,  <40.554180, 33.342972, 38.716137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394798, 33.184731, 38.631535>,  <40.129166, 32.920994, 38.490528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394798, 33.184731, 38.631535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428166, 0.051137, -0.902252,
		-0.612916, 0.750106, -0.248346,
		0.664085, 0.659338, 0.352512,
		40.594025, 33.382530, 38.737289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228256, 32.189335, 38.401745>,  <40.129166, 32.920994, 38.490528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228256, 32.189335, 38.401745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122337, 32.120377, 38.022236>,  <40.058784, 32.079002, 37.794533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122337, 32.120377, 38.022236>,  <40.228256, 32.189335, 38.401745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122337, 32.120377, 38.022236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293616, -0.922758, 0.249614,
		-0.918515, 0.344672, 0.193731,
		-0.264802, -0.172392, -0.948768,
		40.042896, 32.068661, 37.737606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514732, 31.831133, 38.379787>,  <40.228256, 32.189335, 38.401745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514732, 31.831133, 38.379787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712521, 31.718832, 38.050743>,  <39.831192, 31.651451, 37.853317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712521, 31.718832, 38.050743>,  <39.514732, 31.831133, 38.379787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712521, 31.718832, 38.050743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428348, -0.902205, 0.050439,
		-0.756320, 0.327422, -0.566370,
		0.494467, -0.280752, -0.822606,
		39.860859, 31.634607, 37.803963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999302, 31.671156, 37.897331>,  <39.514732, 31.831133, 38.379787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999302, 31.671156, 37.897331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326782, 31.481531, 37.767723>,  <39.523270, 31.367756, 37.689960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326782, 31.481531, 37.767723>,  <38.999302, 31.671156, 37.897331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326782, 31.481531, 37.767723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546052, -0.817309, -0.183937,
		-0.177626, 0.327521, -0.927997,
		0.818704, -0.474063, -0.324018,
		39.572395, 31.339312, 37.670517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872025, 31.418594, 37.274372>,  <38.999302, 31.671156, 37.897331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872025, 31.418594, 37.274372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179512, 31.191767, 37.392700>,  <39.364002, 31.055670, 37.463696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179512, 31.191767, 37.392700>,  <38.872025, 31.418594, 37.274372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179512, 31.191767, 37.392700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573542, -0.815866, -0.073570,
		0.283069, -0.113111, -0.952406,
		0.768715, -0.567070, 0.295821,
		39.410126, 31.021646, 37.481445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067539, 30.838638, 36.667183>,  <38.872025, 31.418594, 37.274372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067539, 30.838638, 36.667183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170216, 30.723003, 37.036079>,  <39.231823, 30.653622, 37.257420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170216, 30.723003, 37.036079>,  <39.067539, 30.838638, 36.667183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170216, 30.723003, 37.036079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619486, -0.781644, -0.072591,
		0.741853, -0.552685, -0.379729,
		0.256692, -0.289089, 0.922245,
		39.247223, 30.636276, 37.312752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975155, 30.113621, 36.667576>,  <39.067539, 30.838638, 36.667183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975155, 30.113621, 36.667576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020786, 30.181894, 37.059055>,  <39.048164, 30.222858, 37.293941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020786, 30.181894, 37.059055>,  <38.975155, 30.113621, 36.667576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020786, 30.181894, 37.059055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668712, -0.715357, 0.202703,
		0.734718, -0.677592, 0.032534,
		0.114077, 0.170685, 0.978700,
		39.055008, 30.233099, 37.352665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281086, 29.513906, 37.015556>,  <38.975155, 30.113621, 36.667576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281086, 29.513906, 37.015556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075199, 29.734417, 37.278206>,  <38.951668, 29.866724, 37.435795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075199, 29.734417, 37.278206>,  <39.281086, 29.513906, 37.015556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075199, 29.734417, 37.278206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508776, -0.812842, 0.283610,
		0.690079, -0.188094, 0.698864,
		-0.514721, 0.551279, 0.656623,
		38.920784, 29.899801, 37.475193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201542, 29.057358, 37.549725>,  <39.281086, 29.513906, 37.015556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201542, 29.057358, 37.549725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938496, 29.349804, 37.622398>,  <38.780666, 29.525270, 37.666004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938496, 29.349804, 37.622398>,  <39.201542, 29.057358, 37.549725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938496, 29.349804, 37.622398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582680, -0.646491, 0.492477,
		0.477516, 0.217996, 0.851150,
		-0.657619, 0.731113, 0.181688,
		38.741211, 29.569138, 37.676903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993938, 28.938723, 38.279701>,  <39.201542, 29.057358, 37.549725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993938, 28.938723, 38.279701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691402, 29.164549, 38.147511>,  <38.509880, 29.300045, 38.068195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691402, 29.164549, 38.147511>,  <38.993938, 28.938723, 38.279701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691402, 29.164549, 38.147511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632623, -0.502601, 0.589221,
		0.166554, 0.654720, 0.737293,
		-0.756339, 0.564565, -0.330481,
		38.464500, 29.333918, 38.048367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602962, 29.280432, 38.919567>,  <38.993938, 28.938723, 38.279701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602962, 29.280432, 38.919567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347572, 29.299873, 38.612328>,  <38.194336, 29.311539, 38.427982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347572, 29.299873, 38.612328>,  <38.602962, 29.280432, 38.919567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347572, 29.299873, 38.612328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725972, -0.369419, 0.580082,
		-0.255558, 0.927991, 0.271151,
		-0.638479, 0.048603, -0.768103,
		38.156029, 29.314455, 38.381897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997311, 29.613646, 39.145603>,  <38.602962, 29.280432, 38.919567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997311, 29.613646, 39.145603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897598, 29.429174, 38.804974>,  <37.837772, 29.318493, 38.600597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897598, 29.429174, 38.804974>,  <37.997311, 29.613646, 39.145603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897598, 29.429174, 38.804974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800384, -0.396933, 0.449254,
		-0.545202, 0.793575, -0.270171,
		-0.249277, -0.461175, -0.851574,
		37.822815, 29.290821, 38.549503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322968, 29.922016, 38.989365>,  <37.997311, 29.613646, 39.145603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322968, 29.922016, 38.989365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349091, 29.587561, 38.771519>,  <37.364765, 29.386889, 38.640812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349091, 29.587561, 38.771519>,  <37.322968, 29.922016, 38.989365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349091, 29.587561, 38.771519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666880, -0.442573, 0.599500,
		-0.742298, 0.324044, -0.586506,
		0.065308, -0.836137, -0.544620,
		37.368683, 29.336720, 38.608131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656212, 29.727682, 38.709343>,  <37.322968, 29.922016, 38.989365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656212, 29.727682, 38.709343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823956, 29.364578, 38.713551>,  <36.924603, 29.146717, 38.716076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823956, 29.364578, 38.713551>,  <36.656212, 29.727682, 38.709343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823956, 29.364578, 38.713551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717392, -0.324272, 0.616601,
		-0.556313, -0.266126, -0.787206,
		0.419362, -0.907758, 0.010520,
		36.949764, 29.092251, 38.716705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084206, 29.149609, 38.649532>,  <36.656212, 29.727682, 38.709343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084206, 29.149609, 38.649532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404896, 28.957449, 38.791771>,  <36.597309, 28.842154, 38.877113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404896, 28.957449, 38.791771>,  <36.084206, 29.149609, 38.649532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404896, 28.957449, 38.791771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581635, -0.490107, 0.649228,
		-0.137608, -0.727331, -0.672349,
		0.801726, -0.480400, 0.355599,
		36.645412, 28.813328, 38.898449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806835, 28.763895, 38.069500>,  <36.084206, 29.149609, 38.649532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806835, 28.763895, 38.069500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431969, 28.766283, 37.929962>,  <35.207050, 28.767715, 37.846241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431969, 28.766283, 37.929962>,  <35.806835, 28.763895, 38.069500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431969, 28.766283, 37.929962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287459, 0.579848, -0.762328,
		0.197723, -0.814703, -0.545128,
		-0.937162, 0.005973, -0.348843,
		35.150822, 28.768074, 37.825310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893909, 28.763817, 37.409973>,  <35.806835, 28.763895, 38.069500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893909, 28.763817, 37.409973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511261, 28.880354, 37.410240>,  <35.281673, 28.950277, 37.410400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511261, 28.880354, 37.410240>,  <35.893909, 28.763817, 37.409973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511261, 28.880354, 37.410240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184160, 0.606464, -0.773490,
		-0.225758, -0.739811, -0.633808,
		-0.956618, 0.291344, 0.000670,
		35.224274, 28.967756, 37.410442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747829, 28.871109, 36.780750>,  <35.893909, 28.763817, 37.409973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747829, 28.871109, 36.780750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449085, 29.079430, 36.946140>,  <35.269836, 29.204422, 37.045372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449085, 29.079430, 36.946140>,  <35.747829, 28.871109, 36.780750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449085, 29.079430, 36.946140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070635, 0.680399, -0.729430,
		-0.661215, -0.515579, -0.544953,
		-0.746864, 0.520803, 0.413471,
		35.225025, 29.235670, 37.070183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435074, 29.149532, 36.259197>,  <35.747829, 28.871109, 36.780750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435074, 29.149532, 36.259197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296894, 29.374308, 36.559834>,  <35.213985, 29.509172, 36.740215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296894, 29.374308, 36.559834>,  <35.435074, 29.149532, 36.259197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296894, 29.374308, 36.559834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191126, 0.826240, -0.529904,
		-0.918770, -0.039404, -0.392821,
		-0.345445, 0.561938, 0.751594,
		35.193260, 29.542889, 36.785313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898388, 29.575888, 35.972229>,  <35.435074, 29.149532, 36.259197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898388, 29.575888, 35.972229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081745, 29.749054, 36.282700>,  <35.191761, 29.852955, 36.468983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081745, 29.749054, 36.282700>,  <34.898388, 29.575888, 35.972229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081745, 29.749054, 36.282700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213539, 0.794107, -0.569030,
		-0.862713, 0.426586, 0.271571,
		0.458397, 0.432918, 0.776179,
		35.219265, 29.878929, 36.515553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636272, 30.291487, 35.941086>,  <34.898388, 29.575888, 35.972229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636272, 30.291487, 35.941086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967686, 30.291372, 36.165062>,  <35.166534, 30.291304, 36.299450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967686, 30.291372, 36.165062>,  <34.636272, 30.291487, 35.941086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967686, 30.291372, 36.165062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273862, 0.872441, -0.404779,
		-0.488403, 0.488719, 0.722921,
		0.828530, -0.000285, 0.559945,
		35.216244, 30.291286, 36.333046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661289, 30.943647, 36.185841>,  <34.636272, 30.291487, 35.941086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661289, 30.943647, 36.185841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038536, 30.818398, 36.230515>,  <35.264885, 30.743248, 36.257320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038536, 30.818398, 36.230515>,  <34.661289, 30.943647, 36.185841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038536, 30.818398, 36.230515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328529, 0.826395, -0.457318,
		0.050899, 0.468000, 0.882262,
		0.943121, -0.313126, 0.111689,
		35.321472, 30.724461, 36.264023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990704, 31.529755, 36.325359>,  <34.661289, 30.943647, 36.185841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990704, 31.529755, 36.325359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298065, 31.291954, 36.230598>,  <35.482483, 31.149273, 36.173744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298065, 31.291954, 36.230598>,  <34.990704, 31.529755, 36.325359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298065, 31.291954, 36.230598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505776, 0.790949, -0.344368,
		0.392104, 0.144796, 0.908454,
		0.768404, -0.594503, -0.236900,
		35.528587, 31.113604, 36.159527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541092, 31.761293, 36.746597>,  <34.990704, 31.529755, 36.325359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541092, 31.761293, 36.746597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667057, 31.570982, 36.418095>,  <35.742638, 31.456795, 36.220993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667057, 31.570982, 36.418095>,  <35.541092, 31.761293, 36.746597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667057, 31.570982, 36.418095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445174, 0.838242, -0.314914,
		0.838242, -0.266431, 0.475779,
		0.314914, -0.475779, -0.821257,
		35.761532, 31.428249, 36.171719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987656, 32.181797, 36.494392>,  <35.541092, 31.761293, 36.746597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987656, 32.181797, 36.494392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051956, 31.911589, 36.206551>,  <36.090534, 31.749464, 36.033844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051956, 31.911589, 36.206551>,  <35.987656, 32.181797, 36.494392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051956, 31.911589, 36.206551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471511, 0.693072, -0.545280,
		0.867086, -0.251651, 0.429923,
		0.160747, -0.675517, -0.719609,
		36.100182, 31.708933, 35.990669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793030, 32.148727, 36.284214>,  <35.987656, 32.181797, 36.494392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793030, 32.148727, 36.284214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549587, 32.049374, 35.982777>,  <36.403522, 31.989761, 35.801914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549587, 32.049374, 35.982777>,  <36.793030, 32.148727, 36.284214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549587, 32.049374, 35.982777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445788, 0.678645, -0.583707,
		0.656404, -0.691192, -0.302305,
		-0.608611, -0.248384, -0.753590,
		36.367004, 31.974857, 35.756699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224560, 31.993975, 35.638870>,  <36.793030, 32.148727, 36.284214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224560, 31.993975, 35.638870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860451, 32.094738, 35.507446>,  <36.641987, 32.155197, 35.428593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860451, 32.094738, 35.507446>,  <37.224560, 31.993975, 35.638870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860451, 32.094738, 35.507446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409248, 0.667565, -0.621991,
		0.062650, -0.700642, -0.710757,
		-0.910270, 0.251908, -0.328559,
		36.587368, 32.170311, 35.408878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.306286, 25.771572, 40.316601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.961506, 25.940336, 40.204147>,  <33.754639, 26.041595, 40.136677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.961506, 25.940336, 40.204147>,  <34.306286, 25.771572, 40.316601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961506, 25.940336, 40.204147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506683, 0.697342, -0.506938,
		-0.017836, -0.579400, -0.814848,
		-0.861948, 0.421912, -0.281134,
		33.702923, 26.066910, 40.119808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227180, 25.811907, 39.522995>,  <34.306286, 25.771572, 40.316601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227180, 25.811907, 39.522995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.985512, 26.098450, 39.662598>,  <33.840511, 26.270376, 39.746361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.985512, 26.098450, 39.662598>,  <34.227180, 25.811907, 39.522995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985512, 26.098450, 39.662598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307399, 0.613608, -0.727317,
		-0.735176, -0.332138, -0.590932,
		-0.604171, 0.716358, 0.349011,
		33.804260, 26.313356, 39.767300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901348, 26.149000, 38.925205>,  <34.227180, 25.811907, 39.522995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901348, 26.149000, 38.925205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.876610, 26.409567, 39.227684>,  <33.861767, 26.565907, 39.409172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.876610, 26.409567, 39.227684>,  <33.901348, 26.149000, 38.925205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876610, 26.409567, 39.227684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262937, 0.741517, -0.617266,
		-0.962829, 0.160654, -0.217143,
		-0.061849, 0.651416, 0.756196,
		33.858055, 26.604992, 39.454544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537796, 26.718941, 38.635330>,  <33.901348, 26.149000, 38.925205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537796, 26.718941, 38.635330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.721939, 26.849541, 38.965534>,  <33.832424, 26.927900, 39.163658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.721939, 26.849541, 38.965534>,  <33.537796, 26.718941, 38.635330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721939, 26.849541, 38.965534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258053, 0.840536, -0.476348,
		-0.849400, 0.432316, 0.302693,
		0.460357, 0.326500, 0.825512,
		33.860046, 26.947491, 39.213188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390587, 27.455555, 38.538094>,  <33.537796, 26.718941, 38.635330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390587, 27.455555, 38.538094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.674965, 27.454012, 38.819389>,  <33.845592, 27.453087, 38.988167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.674965, 27.454012, 38.819389>,  <33.390587, 27.455555, 38.538094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674965, 27.454012, 38.819389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466033, 0.751467, -0.467023,
		-0.526657, 0.659759, 0.536050,
		0.710947, -0.003856, 0.703235,
		33.888248, 27.452854, 39.030361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514313, 28.151787, 38.687508>,  <33.390587, 27.455555, 38.538094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514313, 28.151787, 38.687508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.845314, 27.967340, 38.815639>,  <34.043915, 27.856672, 38.892517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.845314, 27.967340, 38.815639>,  <33.514313, 28.151787, 38.687508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845314, 27.967340, 38.815639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556568, 0.748859, -0.359782,
		-0.073980, 0.476005, 0.876325,
		0.827502, -0.461118, 0.320329,
		34.093563, 27.829004, 38.911739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962032, 28.700537, 38.957012>,  <33.514313, 28.151787, 38.687508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962032, 28.700537, 38.957012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.204342, 28.399172, 38.854710>,  <34.349728, 28.218353, 38.793327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.204342, 28.399172, 38.854710>,  <33.962032, 28.700537, 38.957012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204342, 28.399172, 38.854710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538267, 0.624790, -0.565602,
		0.585928, 0.204957, 0.784016,
		0.605770, -0.753412, -0.255760,
		34.386074, 28.173149, 38.777981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654892, 29.030848, 38.968739>,  <33.962032, 28.700537, 38.957012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654892, 29.030848, 38.968739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.663582, 28.710928, 38.728786>,  <34.668797, 28.518976, 38.584816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.663582, 28.710928, 38.728786>,  <34.654892, 29.030848, 38.968739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663582, 28.710928, 38.728786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414141, 0.553318, -0.722721,
		0.909954, -0.232730, 0.343251,
		0.021728, -0.799797, -0.599877,
		34.670101, 28.470989, 38.548824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358418, 29.033209, 38.575916>,  <34.654892, 29.030848, 38.968739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358418, 29.033209, 38.575916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.119125, 28.796040, 38.360302>,  <34.975552, 28.653738, 38.230934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.119125, 28.796040, 38.360302>,  <35.358418, 29.033209, 38.575916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119125, 28.796040, 38.360302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367511, 0.394757, -0.842082,
		0.712082, -0.701860, -0.018248,
		-0.598227, -0.592925, -0.539040,
		34.939659, 28.618162, 38.198589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796425, 28.592213, 39.031925>,  <35.358418, 29.033209, 38.575916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796425, 28.592213, 39.031925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.170742, 28.637356, 39.165520>,  <36.395332, 28.664442, 39.245678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.170742, 28.637356, 39.165520>,  <35.796425, 28.592213, 39.031925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170742, 28.637356, 39.165520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236193, -0.502607, 0.831624,
		0.261719, -0.857117, -0.443682,
		0.935797, 0.112857, 0.333987,
		36.451481, 28.671213, 39.265717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078167, 27.983929, 39.206356>,  <35.796425, 28.592213, 39.031925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078167, 27.983929, 39.206356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.271336, 28.249426, 39.434822>,  <36.387238, 28.408724, 39.571903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.271336, 28.249426, 39.434822>,  <36.078167, 27.983929, 39.206356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271336, 28.249426, 39.434822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343793, -0.456178, 0.820797,
		0.805351, -0.592745, 0.007891,
		0.482924, 0.663743, 0.571166,
		36.416214, 28.448549, 39.606171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251965, 27.614269, 39.907230>,  <36.078167, 27.983929, 39.206356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251965, 27.614269, 39.907230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.352776, 27.987247, 40.010784>,  <36.413261, 28.211035, 40.072918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.352776, 27.987247, 40.010784>,  <36.251965, 27.614269, 39.907230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352776, 27.987247, 40.010784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357463, -0.158900, 0.920310,
		0.899278, -0.324488, 0.293268,
		0.252029, 0.932448, 0.258887,
		36.428383, 28.266981, 40.088451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552162, 27.526339, 40.591511>,  <36.251965, 27.614269, 39.907230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552162, 27.526339, 40.591511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.439453, 27.907183, 40.544033>,  <36.371826, 28.135689, 40.515545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.439453, 27.907183, 40.544033>,  <36.552162, 27.526339, 40.591511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439453, 27.907183, 40.544033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319672, 0.023485, 0.947237,
		0.904662, 0.304850, 0.297746,
		-0.281773, 0.952111, -0.118698,
		36.354919, 28.192816, 40.508423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862827, 28.053694, 41.114510>,  <36.552162, 27.526339, 40.591511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862827, 28.053694, 41.114510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.517509, 28.209288, 40.985882>,  <36.310318, 28.302645, 40.908703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.517509, 28.209288, 40.985882>,  <36.862827, 28.053694, 41.114510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517509, 28.209288, 40.985882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334197, 0.036868, 0.941782,
		0.378196, 0.920505, 0.098170,
		-0.863296, 0.388987, -0.321574,
		36.258522, 28.325983, 40.889408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760391, 28.648228, 41.520752>,  <36.862827, 28.053694, 41.114510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760391, 28.648228, 41.520752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.392941, 28.548046, 41.398506>,  <36.172470, 28.487938, 41.325157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.392941, 28.548046, 41.398506>,  <36.760391, 28.648228, 41.520752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392941, 28.548046, 41.398506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306395, -0.036884, 0.951190,
		-0.249502, 0.967426, -0.042855,
		-0.918624, -0.250454, -0.305617,
		36.117352, 28.472910, 41.306820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288704, 28.945301, 42.036098>,  <36.760391, 28.648228, 41.520752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288704, 28.945301, 42.036098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.089500, 28.661026, 41.837337>,  <35.969978, 28.490461, 41.718079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.089500, 28.661026, 41.837337>,  <36.288704, 28.945301, 42.036098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089500, 28.661026, 41.837337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364926, -0.348054, 0.863532,
		-0.786650, 0.611379, -0.086014,
		-0.498008, -0.710686, -0.496904,
		35.940098, 28.447821, 41.688267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630184, 29.021021, 42.273804>,  <36.288704, 28.945301, 42.036098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630184, 29.021021, 42.273804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.640251, 28.652222, 42.119255>,  <35.646290, 28.430943, 42.026524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.640251, 28.652222, 42.119255>,  <35.630184, 29.021021, 42.273804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640251, 28.652222, 42.119255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471982, -0.351664, 0.808434,
		-0.881249, 0.162018, -0.444016,
		0.025164, -0.921999, -0.386373,
		35.647800, 28.375622, 42.003342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987541, 28.720903, 42.407700>,  <35.630184, 29.021021, 42.273804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987541, 28.720903, 42.407700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.216434, 28.399708, 42.341057>,  <35.353771, 28.206989, 42.301071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.216434, 28.399708, 42.341057>,  <34.987541, 28.720903, 42.407700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216434, 28.399708, 42.341057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426291, -0.464800, 0.776039,
		-0.700592, -0.373050, -0.608280,
		0.572230, -0.802991, -0.166607,
		35.388103, 28.158810, 42.291073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472275, 28.209890, 42.410397>,  <34.987541, 28.720903, 42.407700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472275, 28.209890, 42.410397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.810879, 28.004248, 42.465702>,  <35.014042, 27.880861, 42.498886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.810879, 28.004248, 42.465702>,  <34.472275, 28.209890, 42.410397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810879, 28.004248, 42.465702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392820, -0.427886, 0.814006,
		-0.359327, -0.743375, -0.564161,
		0.846509, -0.514108, 0.138261,
		35.064831, 27.850016, 42.507179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219193, 27.575747, 42.538193>,  <34.472275, 28.209890, 42.410397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219193, 27.575747, 42.538193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.591164, 27.578920, 42.685253>,  <34.814346, 27.580826, 42.773487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.591164, 27.578920, 42.685253>,  <34.219193, 27.575747, 42.538193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591164, 27.578920, 42.685253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337582, -0.378044, 0.862045,
		0.145829, -0.925754, -0.348876,
		0.929931, 0.007937, 0.367647,
		34.870144, 27.581301, 42.795547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441914, 26.799332, 42.612312>,  <34.219193, 27.575747, 42.538193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441914, 26.799332, 42.612312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.630745, 27.072456, 42.835350>,  <34.744045, 27.236330, 42.969173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.630745, 27.072456, 42.835350>,  <34.441914, 26.799332, 42.612312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630745, 27.072456, 42.835350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475966, -0.334972, 0.813173,
		0.742020, -0.649279, 0.166860,
		0.472083, 0.682811, 0.557591,
		34.772369, 27.277300, 43.002628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880707, 26.352438, 43.026718>,  <34.441914, 26.799332, 42.612312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880707, 26.352438, 43.026718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.847870, 26.701555, 43.219173>,  <34.828167, 26.911026, 43.334644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.847870, 26.701555, 43.219173>,  <34.880707, 26.352438, 43.026718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847870, 26.701555, 43.219173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623239, -0.421682, 0.658602,
		0.777710, -0.245796, 0.578577,
		-0.082094, 0.872794, 0.481136,
		34.823242, 26.963394, 43.363514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992729, 26.191833, 43.741650>,  <34.880707, 26.352438, 43.026718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992729, 26.191833, 43.741650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.795357, 26.539278, 43.723610>,  <34.676933, 26.747746, 43.712788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.795357, 26.539278, 43.723610>,  <34.992729, 26.191833, 43.741650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795357, 26.539278, 43.723610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698161, -0.364618, 0.616137,
		0.518742, 0.335508, 0.786347,
		-0.493435, 0.868613, -0.045096,
		34.647327, 26.799862, 43.710083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.355436, 31.326046, 42.918846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.610683, 31.019690, 42.950386>,  <29.763832, 30.835876, 42.969311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.610683, 31.019690, 42.950386>,  <29.355436, 31.326046, 42.918846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610683, 31.019690, 42.950386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657331, 0.488605, -0.573744,
		0.400898, 0.417947, 0.815231,
		0.638120, -0.765889, 0.078849,
		29.802120, 30.789923, 42.974041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880970, 31.566317, 43.183983>,  <29.355436, 31.326046, 42.918846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880970, 31.566317, 43.183983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.997429, 31.246557, 42.973766>,  <30.067305, 31.054701, 42.847637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.997429, 31.246557, 42.973766>,  <29.880970, 31.566317, 43.183983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997429, 31.246557, 42.973766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714561, 0.546978, -0.436139,
		0.636109, -0.248552, 0.730470,
		0.291148, -0.799398, -0.525544,
		30.084774, 31.006739, 42.816105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583204, 31.714325, 43.091320>,  <29.880970, 31.566317, 43.183983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583204, 31.714325, 43.091320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.562748, 31.401709, 42.842621>,  <30.550474, 31.214138, 42.693401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.562748, 31.401709, 42.842621>,  <30.583204, 31.714325, 43.091320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562748, 31.401709, 42.842621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703703, 0.413561, -0.577727,
		0.708651, -0.467074, 0.528824,
		-0.051140, -0.781543, -0.621752,
		30.547405, 31.167246, 42.656094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242184, 31.510471, 42.991512>,  <30.583204, 31.714325, 43.091320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242184, 31.510471, 42.991512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.047791, 31.348227, 42.681854>,  <30.931154, 31.250879, 42.496059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.047791, 31.348227, 42.681854>,  <31.242184, 31.510471, 42.991512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047791, 31.348227, 42.681854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717771, 0.320127, -0.618323,
		0.498623, -0.856153, 0.135559,
		-0.485983, -0.405610, -0.774145,
		30.901995, 31.226543, 42.449612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829962, 31.142336, 42.694157>,  <31.242184, 31.510471, 42.991512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829962, 31.142336, 42.694157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.521618, 31.182814, 42.442589>,  <31.336611, 31.207100, 42.291649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.521618, 31.182814, 42.442589>,  <31.829962, 31.142336, 42.694157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521618, 31.182814, 42.442589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627463, 0.290865, -0.722280,
		0.109839, -0.951398, -0.287711,
		-0.770861, 0.101193, -0.628915,
		31.290359, 31.213171, 42.253914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877523, 30.731005, 42.025494>,  <31.829962, 31.142336, 42.694157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877523, 30.731005, 42.025494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.622133, 31.025591, 41.936081>,  <31.468899, 31.202343, 41.882431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.622133, 31.025591, 41.936081>,  <31.877523, 30.731005, 42.025494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622133, 31.025591, 41.936081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630904, 0.334474, -0.700063,
		-0.440805, -0.588002, -0.678192,
		-0.638476, 0.736465, -0.223535,
		31.430590, 31.246531, 41.869019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777615, 30.708206, 41.272057>,  <31.877523, 30.731005, 42.025494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777615, 30.708206, 41.272057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.713470, 31.076546, 41.414223>,  <31.674984, 31.297550, 41.499523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.713470, 31.076546, 41.414223>,  <31.777615, 30.708206, 41.272057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713470, 31.076546, 41.414223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724569, 0.354336, -0.591140,
		-0.670288, 0.162728, -0.724040,
		-0.160358, 0.920851, 0.355414,
		31.665363, 31.352800, 41.520847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831890, 31.157873, 40.602287>,  <31.777615, 30.708206, 41.272057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831890, 31.157873, 40.602287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.863171, 31.414299, 40.907684>,  <31.881939, 31.568155, 41.090923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.863171, 31.414299, 40.907684>,  <31.831890, 31.157873, 40.602287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863171, 31.414299, 40.907684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337698, 0.703528, -0.625307,
		-0.938000, 0.306730, -0.161470,
		0.078202, 0.641066, 0.763491,
		31.886631, 31.606619, 41.136730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618017, 31.756300, 40.305523>,  <31.831890, 31.157873, 40.602287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618017, 31.756300, 40.305523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.846983, 31.859209, 40.616947>,  <31.984362, 31.920954, 40.803802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.846983, 31.859209, 40.616947>,  <31.618017, 31.756300, 40.305523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846983, 31.859209, 40.616947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446926, 0.698171, -0.559298,
		-0.687458, 0.668108, 0.284662,
		0.572415, 0.257271, 0.778558,
		32.018707, 31.936390, 40.850513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632681, 32.391575, 40.352783>,  <31.618017, 31.756300, 40.305523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632681, 32.391575, 40.352783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.942204, 32.331844, 40.599010>,  <32.127918, 32.296005, 40.746746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.942204, 32.331844, 40.599010>,  <31.632681, 32.391575, 40.352783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942204, 32.331844, 40.599010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549897, 0.640698, -0.535836,
		-0.314378, 0.753132, 0.577891,
		0.773809, -0.149326, 0.615566,
		32.174347, 32.287048, 40.783680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758152, 33.040077, 40.756886>,  <31.632681, 32.391575, 40.352783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758152, 33.040077, 40.756886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.092007, 32.822735, 40.720787>,  <32.292320, 32.692329, 40.699127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.092007, 32.822735, 40.720787>,  <31.758152, 33.040077, 40.756886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092007, 32.822735, 40.720787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413966, 0.726895, -0.547956,
		0.363336, 0.419985, 0.831624,
		0.834637, -0.543356, -0.090248,
		32.342400, 32.659729, 40.693714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194778, 33.578373, 40.938370>,  <31.758152, 33.040077, 40.756886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194778, 33.578373, 40.938370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.427822, 33.299709, 40.770924>,  <32.567650, 33.132511, 40.670456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.427822, 33.299709, 40.770924>,  <32.194778, 33.578373, 40.938370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427822, 33.299709, 40.770924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425892, 0.700363, -0.572807,
		0.692231, 0.155438, 0.704737,
		0.582608, -0.696657, -0.418613,
		32.602604, 33.090714, 40.645340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789665, 33.919418, 40.988255>,  <32.194778, 33.578373, 40.938370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789665, 33.919418, 40.988255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.833263, 33.639740, 40.705624>,  <32.859425, 33.471935, 40.536045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.833263, 33.639740, 40.705624>,  <32.789665, 33.919418, 40.988255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833263, 33.639740, 40.705624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554158, 0.632850, -0.540749,
		0.825244, -0.332614, 0.456442,
		0.108999, -0.699191, -0.706577,
		32.865963, 33.429981, 40.493652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482456, 33.849525, 40.900284>,  <32.789665, 33.919418, 40.988255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482456, 33.849525, 40.900284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.323257, 33.676224, 40.576828>,  <33.227737, 33.572243, 40.382755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.323257, 33.676224, 40.576828>,  <33.482456, 33.849525, 40.900284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323257, 33.676224, 40.576828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631264, 0.510251, -0.584080,
		0.665663, -0.742922, 0.070421,
		-0.397993, -0.433255, -0.808635,
		33.203861, 33.546246, 40.334236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126732, 33.578831, 41.144669>,  <33.482456, 33.849525, 40.900284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126732, 33.578831, 41.144669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.381088, 33.739819, 41.408081>,  <34.533703, 33.836411, 41.566128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.381088, 33.739819, 41.408081>,  <34.126732, 33.578831, 41.144669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381088, 33.739819, 41.408081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496979, -0.439278, 0.748363,
		0.590471, -0.803152, -0.079314,
		0.635890, 0.402469, 0.658530,
		34.571854, 33.860558, 41.605640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418789, 33.066750, 41.583717>,  <34.126732, 33.578831, 41.144669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418789, 33.066750, 41.583717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.503868, 33.388378, 41.805790>,  <34.554916, 33.581356, 41.939034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.503868, 33.388378, 41.805790>,  <34.418789, 33.066750, 41.583717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503868, 33.388378, 41.805790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393478, -0.449590, 0.801900,
		0.894391, -0.389012, 0.220760,
		0.212698, 0.804076, 0.555177,
		34.567677, 33.629601, 41.972343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656776, 32.761524, 42.141411>,  <34.418789, 33.066750, 41.583717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656776, 32.761524, 42.141411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.540058, 33.127205, 42.253906>,  <34.470028, 33.346611, 42.321404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.540058, 33.127205, 42.253906>,  <34.656776, 32.761524, 42.141411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540058, 33.127205, 42.253906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411337, -0.385396, 0.825997,
		0.863514, 0.125340, 0.488502,
		-0.291798, 0.914199, 0.281238,
		34.452518, 33.401466, 42.338276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879955, 32.803082, 42.840527>,  <34.656776, 32.761524, 42.141411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879955, 32.803082, 42.840527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.627384, 33.112991, 42.827770>,  <34.475842, 33.298939, 42.820118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.627384, 33.112991, 42.827770>,  <34.879955, 32.803082, 42.840527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627384, 33.112991, 42.827770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387785, -0.279889, 0.878228,
		0.671505, 0.566905, 0.477178,
		-0.631429, 0.774777, -0.031891,
		34.437954, 33.345425, 42.818203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932304, 33.080978, 43.454010>,  <34.879955, 32.803082, 42.840527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932304, 33.080978, 43.454010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.583344, 33.227489, 43.324551>,  <34.373966, 33.315395, 43.246876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.583344, 33.227489, 43.324551>,  <34.932304, 33.080978, 43.454010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583344, 33.227489, 43.324551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445884, -0.325110, 0.833961,
		0.200240, 0.871862, 0.446946,
		-0.872406, 0.366278, -0.323650,
		34.321621, 33.337372, 43.227455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635147, 33.377632, 44.094048>,  <34.932304, 33.080978, 43.454010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635147, 33.377632, 44.094048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.335606, 33.311981, 43.837212>,  <34.155880, 33.272591, 43.683109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.335606, 33.311981, 43.837212>,  <34.635147, 33.377632, 44.094048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335606, 33.311981, 43.837212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570991, -0.332054, 0.750806,
		-0.336433, 0.928872, 0.154947,
		-0.748854, -0.164123, -0.642092,
		34.110950, 33.262745, 43.644585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065205, 33.581528, 44.404900>,  <34.635147, 33.377632, 44.094048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065205, 33.581528, 44.404900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.893921, 33.347107, 44.129745>,  <33.791149, 33.206455, 43.964653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.893921, 33.347107, 44.129745>,  <34.065205, 33.581528, 44.404900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893921, 33.347107, 44.129745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431534, -0.536194, 0.725448,
		-0.793986, 0.607490, -0.023295,
		-0.428212, -0.586048, -0.687883,
		33.765457, 33.171291, 43.923382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305641, 33.621670, 44.368988>,  <34.065205, 33.581528, 44.404900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305641, 33.621670, 44.368988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.397129, 33.266644, 44.209030>,  <33.452023, 33.053627, 44.113056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.397129, 33.266644, 44.209030>,  <33.305641, 33.621670, 44.368988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397129, 33.266644, 44.209030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475918, -0.460294, 0.749421,
		-0.849230, 0.018913, -0.527685,
		0.228716, -0.887565, -0.399896,
		33.465744, 33.000374, 44.089062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608685, 33.218910, 44.420811>,  <33.305641, 33.621670, 44.368988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608685, 33.218910, 44.420811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.888241, 32.936985, 44.372169>,  <33.055973, 32.767830, 44.342983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.888241, 32.936985, 44.372169>,  <32.608685, 33.218910, 44.420811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888241, 32.936985, 44.372169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563759, -0.647491, 0.512768,
		-0.440144, -0.289813, -0.849871,
		0.698891, -0.704814, -0.121605,
		33.097908, 32.725540, 44.335690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259399, 32.640671, 44.183887>,  <32.608685, 33.218910, 44.420811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259399, 32.640671, 44.183887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.592224, 32.489700, 44.346478>,  <32.791920, 32.399120, 44.444031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.592224, 32.489700, 44.346478>,  <32.259399, 32.640671, 44.183887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592224, 32.489700, 44.346478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543512, -0.701068, 0.461625,
		0.110740, -0.605026, -0.788467,
		0.832064, -0.377421, 0.406475,
		32.841843, 32.376472, 44.468422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155949, 31.991293, 44.182674>,  <32.259399, 32.640671, 44.183887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155949, 31.991293, 44.182674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.434189, 32.014526, 44.469105>,  <32.601131, 32.028465, 44.640965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.434189, 32.014526, 44.469105>,  <32.155949, 31.991293, 44.182674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434189, 32.014526, 44.469105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592908, -0.516455, 0.617846,
		0.405707, -0.854342, -0.324808,
		0.695601, 0.058083, 0.716076,
		32.642868, 32.031952, 44.683929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277855, 31.365704, 44.326694>,  <32.155949, 31.991293, 44.182674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277855, 31.365704, 44.326694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.384087, 31.556866, 44.661613>,  <32.447826, 31.671562, 44.862564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.384087, 31.556866, 44.661613>,  <32.277855, 31.365704, 44.326694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384087, 31.556866, 44.661613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515318, -0.663645, 0.542239,
		0.814810, -0.575484, 0.070023,
		0.265579, 0.477905, 0.837302,
		32.463760, 31.700237, 44.912804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530293, 30.836794, 44.769939>,  <32.277855, 31.365704, 44.326694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530293, 30.836794, 44.769939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.447178, 31.147072, 45.008308>,  <32.397308, 31.333239, 45.151329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.447178, 31.147072, 45.008308>,  <32.530293, 30.836794, 44.769939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447178, 31.147072, 45.008308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500769, -0.607688, 0.616398,
		0.840271, -0.170339, 0.514714,
		-0.207788, 0.775693, 0.595923,
		32.384842, 31.379780, 45.187084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698395, 30.661856, 45.417652>,  <32.530293, 30.836794, 44.769939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698395, 30.661856, 45.417652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.436741, 30.961128, 45.462067>,  <32.279747, 31.140692, 45.488716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.436741, 30.961128, 45.462067>,  <32.698395, 30.661856, 45.417652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436741, 30.961128, 45.462067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541154, -0.565501, 0.622383,
		0.528447, 0.347035, 0.774797,
		-0.654137, 0.748181, 0.111038,
		32.240501, 31.185583, 45.495377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287548, 30.510130, 45.926846>,  <32.698395, 30.661856, 45.417652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287548, 30.510130, 45.926846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.533558, 30.196844, 45.963333>,  <33.681164, 30.008873, 45.985226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.533558, 30.196844, 45.963333>,  <33.287548, 30.510130, 45.926846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533558, 30.196844, 45.963333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486575, 0.285941, -0.825520,
		0.620475, 0.552099, 0.556953,
		0.615025, -0.783214, 0.091218,
		33.718067, 29.961880, 45.990700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992371, 30.749081, 46.164089>,  <33.287548, 30.510130, 45.926846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992371, 30.749081, 46.164089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.043880, 30.398956, 45.977650>,  <34.074787, 30.188881, 45.865788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.043880, 30.398956, 45.977650>,  <33.992371, 30.749081, 46.164089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043880, 30.398956, 45.977650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678959, 0.420394, -0.601900,
		0.722794, -0.238952, 0.648437,
		0.128774, -0.875312, -0.466097,
		34.082512, 30.136362, 45.837822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770702, 30.748825, 46.090469>,  <33.992371, 30.749081, 46.164089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770702, 30.748825, 46.090469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.637245, 30.477007, 45.829117>,  <34.557171, 30.313915, 45.672306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.637245, 30.477007, 45.829117>,  <34.770702, 30.748825, 46.090469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637245, 30.477007, 45.829117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585144, 0.394127, -0.708710,
		0.739115, -0.618773, 0.266136,
		-0.333640, -0.679546, -0.653377,
		34.537151, 30.273144, 45.633102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428967, 30.396379, 45.830517>,  <34.770702, 30.748825, 46.090469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428967, 30.396379, 45.830517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.148521, 30.263134, 45.578335>,  <34.980255, 30.183187, 45.427025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.148521, 30.263134, 45.578335>,  <35.428967, 30.396379, 45.830517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148521, 30.263134, 45.578335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651700, 0.059428, -0.756145,
		0.289349, -0.941012, 0.175425,
		-0.701116, -0.333115, -0.630452,
		34.938187, 30.163200, 45.389198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807716, 29.990868, 45.319340>,  <35.428967, 30.396379, 45.830517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807716, 29.990868, 45.319340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.470581, 30.114040, 45.142796>,  <35.268299, 30.187944, 45.036869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.470581, 30.114040, 45.142796>,  <35.807716, 29.990868, 45.319340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470581, 30.114040, 45.142796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515212, 0.224767, -0.827065,
		-0.155476, -0.924477, -0.348093,
		-0.842843, 0.307930, -0.441356,
		35.217728, 30.206419, 45.010387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725163, 29.615318, 44.762150>,  <35.807716, 29.990868, 45.319340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725163, 29.615318, 44.762150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.513008, 29.947353, 44.693283>,  <35.385715, 30.146574, 44.651962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.513008, 29.947353, 44.693283>,  <35.725163, 29.615318, 44.762150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513008, 29.947353, 44.693283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517748, 0.156357, -0.841124,
		-0.671287, -0.535262, -0.512706,
		-0.530387, 0.830089, -0.172171,
		35.353893, 30.196381, 44.641632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595478, 29.589317, 44.039486>,  <35.725163, 29.615318, 44.762150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595478, 29.589317, 44.039486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.495010, 29.968309, 44.118679>,  <35.434731, 30.195705, 44.166195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.495010, 29.968309, 44.118679>,  <35.595478, 29.589317, 44.039486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495010, 29.968309, 44.118679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467921, 0.297902, -0.832048,
		-0.847327, -0.116347, -0.518170,
		-0.251170, 0.947479, 0.197979,
		35.419659, 30.252554, 44.178074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300453, 30.004915, 43.395420>,  <35.595478, 29.589317, 44.039486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300453, 30.004915, 43.395420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464405, 30.267218, 43.649029>,  <35.562778, 30.424599, 43.801193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.464405, 30.267218, 43.649029>,  <35.300453, 30.004915, 43.395420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464405, 30.267218, 43.649029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525198, 0.398637, -0.751835,
		-0.745763, 0.641150, -0.181007,
		0.409883, 0.655755, 0.634019,
		35.587372, 30.463943, 43.839233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350418, 30.594366, 42.988476>,  <35.300453, 30.004915, 43.395420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350418, 30.594366, 42.988476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.589043, 30.668119, 43.300919>,  <35.732216, 30.712372, 43.488384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.589043, 30.668119, 43.300919>,  <35.350418, 30.594366, 42.988476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589043, 30.668119, 43.300919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637449, 0.482470, -0.600734,
		-0.487626, 0.856285, 0.170284,
		0.596557, 0.184386, 0.781103,
		35.768009, 30.723434, 43.535248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321743, 31.310488, 43.093300>,  <35.350418, 30.594366, 42.988476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321743, 31.310488, 43.093300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.672836, 31.171953, 43.225750>,  <35.883492, 31.088833, 43.305218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.672836, 31.171953, 43.225750>,  <35.321743, 31.310488, 43.093300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672836, 31.171953, 43.225750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477995, 0.680962, -0.554807,
		-0.033331, 0.645245, 0.763248,
		0.877730, -0.346336, 0.331121,
		35.936153, 31.068052, 43.325085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785782, 31.959888, 43.136971>,  <35.321743, 31.310488, 43.093300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785782, 31.959888, 43.136971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.048370, 31.663221, 43.192070>,  <36.205921, 31.485220, 43.225128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.048370, 31.663221, 43.192070>,  <35.785782, 31.959888, 43.136971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048370, 31.663221, 43.192070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751948, 0.628808, -0.197925,
		0.060180, 0.233508, 0.970491,
		0.656470, -0.741670, 0.137745,
		36.245312, 31.440720, 43.233395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314968, 32.104210, 43.649303>,  <35.785782, 31.959888, 43.136971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314968, 32.104210, 43.649303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.462090, 31.846317, 43.381260>,  <36.550362, 31.691582, 43.220436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.462090, 31.846317, 43.381260>,  <36.314968, 32.104210, 43.649303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462090, 31.846317, 43.381260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812586, 0.573213, -0.105505,
		0.452135, -0.505712, 0.734731,
		0.367803, -0.644734, -0.670104,
		36.572430, 31.652897, 43.180229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982723, 32.414265, 43.612888>,  <36.314968, 32.104210, 43.649303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982723, 32.414265, 43.612888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.025745, 32.125648, 43.339302>,  <37.051559, 31.952478, 43.175148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.025745, 32.125648, 43.339302>,  <36.982723, 32.414265, 43.612888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025745, 32.125648, 43.339302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935443, 0.306442, -0.176180,
		0.336718, -0.620866, 0.707917,
		0.107551, -0.721539, -0.683969,
		37.058010, 31.909187, 43.134109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600697, 31.972349, 43.658409>,  <36.982723, 32.414265, 43.612888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600697, 31.972349, 43.658409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.499195, 31.970955, 43.271503>,  <37.438293, 31.970119, 43.039360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.499195, 31.970955, 43.271503>,  <37.600697, 31.972349, 43.658409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499195, 31.970955, 43.271503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907305, 0.345759, -0.239267,
		0.335273, -0.938317, -0.084577,
		-0.253752, -0.003482, -0.967263,
		37.423069, 31.969910, 42.981323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.548168, 36.975040, 27.984089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.389282, 36.617786, 27.899677>,  <28.293951, 36.403435, 27.849031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.389282, 36.617786, 27.899677>,  <28.548168, 36.975040, 27.984089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389282, 36.617786, 27.899677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629996, 0.098166, 0.770369,
		-0.667327, 0.438949, -0.601664,
		-0.397215, -0.893134, -0.211027,
		28.270117, 36.349846, 27.836369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874626, 37.045033, 28.024076>,  <28.548168, 36.975040, 27.984089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874626, 37.045033, 28.024076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917139, 36.653671, 28.094988>,  <27.942646, 36.418854, 28.137535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917139, 36.653671, 28.094988>,  <27.874626, 37.045033, 28.024076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917139, 36.653671, 28.094988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448880, 0.111876, 0.886561,
		-0.887249, -0.173802, -0.427296,
		0.106282, -0.978405, 0.177278,
		27.949024, 36.360149, 28.148170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211014, 36.796944, 28.350370>,  <27.874626, 37.045033, 28.024076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211014, 36.796944, 28.350370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.471931, 36.514160, 28.459711>,  <27.628481, 36.344490, 28.525316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.471931, 36.514160, 28.459711>,  <27.211014, 36.796944, 28.350370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471931, 36.514160, 28.459711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413636, -0.029808, 0.909954,
		-0.635153, -0.706625, -0.311868,
		0.652293, -0.706960, 0.273352,
		27.667620, 36.302071, 28.541718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823030, 36.371624, 28.777901>,  <27.211014, 36.796944, 28.350370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823030, 36.371624, 28.777901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.194170, 36.271355, 28.888359>,  <27.416855, 36.211193, 28.954634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.194170, 36.271355, 28.888359>,  <26.823030, 36.371624, 28.777901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194170, 36.271355, 28.888359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320700, -0.158293, 0.933860,
		-0.190377, -0.955044, -0.227262,
		0.927852, -0.250668, 0.276147,
		27.472525, 36.196152, 28.971203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784309, 35.829830, 29.286480>,  <26.823030, 36.371624, 28.777901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784309, 35.829830, 29.286480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.161812, 35.949375, 29.343058>,  <27.388313, 36.021103, 29.377005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.161812, 35.949375, 29.343058>,  <26.784309, 35.829830, 29.286480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161812, 35.949375, 29.343058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130909, -0.055094, 0.989862,
		0.303630, -0.952703, -0.012871,
		0.943754, 0.298867, 0.141445,
		27.444939, 36.039036, 29.385490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213787, 35.298935, 29.769661>,  <26.784309, 35.829830, 29.286480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213787, 35.298935, 29.769661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426451, 35.637695, 29.765667>,  <27.554049, 35.840950, 29.763271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426451, 35.637695, 29.765667>,  <27.213787, 35.298935, 29.769661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426451, 35.637695, 29.765667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105631, -0.054605, 0.992905,
		0.840346, -0.528941, -0.118491,
		0.531658, 0.846900, -0.009986,
		27.585949, 35.891766, 29.762671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827805, 35.192291, 30.245682>,  <27.213787, 35.298935, 29.769661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827805, 35.192291, 30.245682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753191, 35.584999, 30.231066>,  <27.708422, 35.820625, 30.222296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.753191, 35.584999, 30.231066>,  <27.827805, 35.192291, 30.245682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753191, 35.584999, 30.231066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131233, 0.061757, 0.989426,
		0.973644, 0.179769, -0.140361,
		-0.186536, 0.981769, -0.036538,
		27.697229, 35.879528, 30.220104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297014, 35.484844, 30.738808>,  <27.827805, 35.192291, 30.245682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297014, 35.484844, 30.738808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.035532, 35.782841, 30.685652>,  <27.878643, 35.961639, 30.653759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.035532, 35.782841, 30.685652>,  <28.297014, 35.484844, 30.738808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035532, 35.782841, 30.685652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098746, 0.258079, 0.961064,
		0.750278, 0.615132, -0.242273,
		-0.653707, 0.744988, -0.132889,
		27.839420, 36.006336, 30.645784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602104, 36.111668, 30.997465>,  <28.297014, 35.484844, 30.738808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602104, 36.111668, 30.997465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.202637, 36.130356, 31.006239>,  <27.962957, 36.141567, 31.011503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.202637, 36.130356, 31.006239>,  <28.602104, 36.111668, 30.997465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202637, 36.130356, 31.006239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027750, 0.127747, 0.991418,
		0.043516, 0.990706, -0.128873,
		-0.998667, 0.046719, 0.021933,
		27.903036, 36.144371, 31.012819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400761, 36.750950, 31.354263>,  <28.602104, 36.111668, 30.997465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400761, 36.750950, 31.354263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.068529, 36.529213, 31.375610>,  <27.869190, 36.396172, 31.388418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.068529, 36.529213, 31.375610>,  <28.400761, 36.750950, 31.354263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068529, 36.529213, 31.375610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177728, 0.354668, 0.917945,
		-0.527780, 0.752941, -0.393102,
		-0.830579, -0.554338, 0.053368,
		27.819355, 36.362911, 31.391621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767227, 37.134220, 31.612240>,  <28.400761, 36.750950, 31.354263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767227, 37.134220, 31.612240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.682661, 36.753254, 31.700058>,  <27.631922, 36.524673, 31.752748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.682661, 36.753254, 31.700058>,  <27.767227, 37.134220, 31.612240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682661, 36.753254, 31.700058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259948, 0.271323, 0.926720,
		-0.942194, 0.138854, -0.304942,
		-0.211417, -0.952420, 0.219544,
		27.619236, 36.467529, 31.765921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310308, 37.362354, 32.085800>,  <27.767227, 37.134220, 31.612240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310308, 37.362354, 32.085800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.348982, 36.965736, 32.120441>,  <27.372185, 36.727768, 32.141228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.348982, 36.965736, 32.120441>,  <27.310308, 37.362354, 32.085800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348982, 36.965736, 32.120441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258271, 0.059038, 0.964267,
		-0.961222, -0.115595, -0.250378,
		0.096682, -0.991540, 0.086604,
		27.377987, 36.668274, 32.146423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761705, 37.175808, 32.385502>,  <27.310308, 37.362354, 32.085800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761705, 37.175808, 32.385502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.031275, 36.888973, 32.456623>,  <27.193016, 36.716873, 32.499294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.031275, 36.888973, 32.456623>,  <26.761705, 37.175808, 32.385502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031275, 36.888973, 32.456623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206999, 0.047755, 0.977175,
		-0.709208, -0.695348, -0.116253,
		0.673925, -0.717085, 0.177804,
		27.233452, 36.673847, 32.509964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347616, 36.652931, 32.774086>,  <26.761705, 37.175808, 32.385502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347616, 36.652931, 32.774086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.732153, 36.573570, 32.850468>,  <26.962875, 36.525955, 32.896297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.732153, 36.573570, 32.850468>,  <26.347616, 36.652931, 32.774086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.732153, 36.573570, 32.850468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196955, -0.010781, 0.980353,
		-0.192442, -0.980062, -0.049439,
		0.961340, -0.198398, 0.190953,
		27.020555, 36.514050, 32.907753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347553, 36.221745, 33.359226>,  <26.347616, 36.652931, 32.774086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347553, 36.221745, 33.359226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.728022, 36.345093, 33.364635>,  <26.956303, 36.419102, 33.367882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.728022, 36.345093, 33.364635>,  <26.347553, 36.221745, 33.359226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728022, 36.345093, 33.364635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006058, -0.062461, 0.998029,
		0.308610, -0.949213, -0.061280,
		0.951169, 0.308373, 0.013526,
		27.013372, 36.437603, 33.368694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780476, 35.771610, 33.785217>,  <26.347553, 36.221745, 33.359226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780476, 35.771610, 33.785217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.026142, 36.086662, 33.765453>,  <27.173542, 36.275692, 33.753593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.026142, 36.086662, 33.765453>,  <26.780476, 35.771610, 33.785217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026142, 36.086662, 33.765453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235536, -0.123190, 0.964027,
		0.753206, -0.603712, -0.261174,
		0.614168, 0.787627, -0.049409,
		27.210392, 36.322948, 33.750629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362494, 35.512920, 33.976681>,  <26.780476, 35.771610, 33.785217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362494, 35.512920, 33.976681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.358210, 35.905792, 34.051727>,  <27.355639, 36.141518, 34.096756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.358210, 35.905792, 34.051727>,  <27.362494, 35.512920, 33.976681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358210, 35.905792, 34.051727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170573, -0.183084, 0.968186,
		0.985287, 0.042373, -0.165573,
		-0.010712, 0.982184, 0.187619,
		27.354996, 36.200447, 34.108013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996529, 35.554470, 34.490963>,  <27.362494, 35.512920, 33.976681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996529, 35.554470, 34.490963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.780151, 35.890610, 34.504765>,  <27.650324, 36.092293, 34.513046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.780151, 35.890610, 34.504765>,  <27.996529, 35.554470, 34.490963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780151, 35.890610, 34.504765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248446, 0.120463, 0.961126,
		0.803526, 0.528488, -0.273946,
		-0.540944, 0.840350, 0.034506,
		27.617868, 36.142715, 34.515118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333347, 35.974598, 35.126152>,  <27.996529, 35.554470, 34.490963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333347, 35.974598, 35.126152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.978388, 36.149052, 35.066406>,  <27.765413, 36.253723, 35.030560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.978388, 36.149052, 35.066406>,  <28.333347, 35.974598, 35.126152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978388, 36.149052, 35.066406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030830, 0.267128, 0.963168,
		0.459974, 0.859317, -0.223602,
		-0.887397, 0.436139, -0.149365,
		27.712170, 36.279892, 35.021595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357430, 36.629440, 35.410915>,  <28.333347, 35.974598, 35.126152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357430, 36.629440, 35.410915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.967751, 36.540726, 35.394173>,  <27.733944, 36.487495, 35.384125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.967751, 36.540726, 35.394173>,  <28.357430, 36.629440, 35.410915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967751, 36.540726, 35.394173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117389, 0.339487, 0.933257,
		-0.192773, 0.914089, -0.356762,
		-0.974196, -0.221787, -0.041861,
		27.675491, 36.474190, 35.381615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771057, 36.824924, 34.731621>,  <28.357430, 36.629440, 35.410915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771057, 36.824924, 34.731621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.119102, 36.718243, 34.897404>,  <29.327930, 36.654232, 34.996872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.119102, 36.718243, 34.897404>,  <28.771057, 36.824924, 34.731621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119102, 36.718243, 34.897404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466363, 0.173577, -0.867396,
		0.159398, 0.948019, 0.275412,
		0.870114, -0.266703, 0.414453,
		29.380136, 36.638233, 35.021740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192013, 37.347202, 34.563213>,  <28.771057, 36.824924, 34.731621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192013, 37.347202, 34.563213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431734, 37.044594, 34.667915>,  <29.575567, 36.863029, 34.730736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.431734, 37.044594, 34.667915>,  <29.192013, 37.347202, 34.563213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431734, 37.044594, 34.667915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500960, 0.099386, -0.859745,
		0.624400, 0.646374, 0.438548,
		0.599303, -0.756520, 0.261751,
		29.611525, 36.817638, 34.746441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863413, 37.539600, 34.355000>,  <29.192013, 37.347202, 34.563213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863413, 37.539600, 34.355000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.910690, 37.147190, 34.416473>,  <29.939056, 36.911743, 34.453358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.910690, 37.147190, 34.416473>,  <29.863413, 37.539600, 34.355000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910690, 37.147190, 34.416473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527580, -0.069080, -0.846692,
		0.841243, 0.181158, 0.509404,
		0.118195, -0.981025, 0.153689,
		29.946150, 36.852882, 34.462582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595127, 37.402927, 34.182816>,  <29.863413, 37.539600, 34.355000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595127, 37.402927, 34.182816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.393856, 37.057476, 34.170414>,  <30.273092, 36.850204, 34.162975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.393856, 37.057476, 34.170414>,  <30.595127, 37.402927, 34.182816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393856, 37.057476, 34.170414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434739, -0.221965, -0.872774,
		0.746869, -0.452639, 0.487140,
		-0.503180, -0.863626, -0.031001,
		30.242903, 36.798389, 34.161114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078964, 36.881958, 33.866245>,  <30.595127, 37.402927, 34.182816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078964, 36.881958, 33.866245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.738661, 36.675995, 33.824127>,  <30.534479, 36.552418, 33.798859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.738661, 36.675995, 33.824127>,  <31.078964, 36.881958, 33.866245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738661, 36.675995, 33.824127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313576, -0.336542, -0.887924,
		0.421760, -0.788425, 0.447777,
		-0.850757, -0.514904, -0.105291,
		30.483433, 36.521523, 33.792542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216738, 36.199249, 33.711807>,  <31.078964, 36.881958, 33.866245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216738, 36.199249, 33.711807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.870550, 36.304810, 33.541481>,  <30.662838, 36.368145, 33.439285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.870550, 36.304810, 33.541481>,  <31.216738, 36.199249, 33.711807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870550, 36.304810, 33.541481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320753, -0.361006, -0.875666,
		-0.384817, -0.894443, 0.227790,
		-0.865467, 0.263907, -0.425817,
		30.610909, 36.383980, 33.413738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130056, 35.757557, 33.209942>,  <31.216738, 36.199249, 33.711807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130056, 35.757557, 33.209942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.832783, 36.007137, 33.113312>,  <30.654419, 36.156887, 33.055332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.832783, 36.007137, 33.113312>,  <31.130056, 35.757557, 33.209942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832783, 36.007137, 33.113312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133397, -0.215636, -0.967319,
		-0.655652, -0.751124, 0.077025,
		-0.743186, 0.623950, -0.241580,
		30.609827, 36.194321, 33.040836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730391, 35.382507, 32.851112>,  <31.130056, 35.757557, 33.209942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730391, 35.382507, 32.851112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.610497, 35.746655, 32.737000>,  <30.538561, 35.965141, 32.668533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.610497, 35.746655, 32.737000>,  <30.730391, 35.382507, 32.851112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610497, 35.746655, 32.737000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008292, -0.296535, -0.954986,
		-0.953986, -0.288608, 0.081333,
		-0.299735, 0.910369, -0.285283,
		30.520576, 36.019764, 32.651413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068090, 35.425003, 32.445553>,  <30.730391, 35.382507, 32.851112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068090, 35.425003, 32.445553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.276077, 35.750980, 32.343185>,  <30.400869, 35.946568, 32.281765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.276077, 35.750980, 32.343185>,  <30.068090, 35.425003, 32.445553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276077, 35.750980, 32.343185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101053, -0.238815, -0.965793,
		-0.848186, 0.528044, -0.041824,
		0.519969, 0.814946, -0.255921,
		30.432068, 35.995464, 32.266411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741871, 35.779945, 31.967045>,  <30.068090, 35.425003, 32.445553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741871, 35.779945, 31.967045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.108727, 35.929619, 31.912130>,  <30.328840, 36.019421, 31.879183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.108727, 35.929619, 31.912130>,  <29.741871, 35.779945, 31.967045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108727, 35.929619, 31.912130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047991, -0.238265, -0.970014,
		-0.395669, 0.896225, -0.200565,
		0.917138, 0.374179, -0.137284,
		30.383867, 36.041874, 31.870945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688725, 36.020168, 31.278393>,  <29.741871, 35.779945, 31.967045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688725, 36.020168, 31.278393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.079052, 36.039619, 31.363636>,  <30.313248, 36.051292, 31.414782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.079052, 36.039619, 31.363636>,  <29.688725, 36.020168, 31.278393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079052, 36.039619, 31.363636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217085, -0.101519, -0.970859,
		-0.025579, 0.993644, -0.109621,
		0.975818, 0.048631, 0.213108,
		30.371798, 36.054207, 31.427568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949739, 36.558777, 30.992723>,  <29.688725, 36.020168, 31.278393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949739, 36.558777, 30.992723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.266993, 36.322449, 31.051874>,  <30.457344, 36.180653, 31.087364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.266993, 36.322449, 31.051874>,  <29.949739, 36.558777, 30.992723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266993, 36.322449, 31.051874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253964, 0.100145, -0.962015,
		0.553572, 0.800561, 0.229476,
		0.793133, -0.590824, 0.147876,
		30.504932, 36.145203, 31.096237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526075, 36.924572, 30.740889>,  <29.949739, 36.558777, 30.992723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526075, 36.924572, 30.740889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.625681, 36.537415, 30.754576>,  <30.685444, 36.305119, 30.762789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.625681, 36.537415, 30.754576>,  <30.526075, 36.924572, 30.740889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625681, 36.537415, 30.754576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376394, 0.064160, -0.924236,
		0.892368, 0.243027, 0.380286,
		0.249013, -0.967895, 0.034219,
		30.700384, 36.247047, 30.764841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173925, 36.935360, 30.503849>,  <30.526075, 36.924572, 30.740889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173925, 36.935360, 30.503849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.073757, 36.555595, 30.428049>,  <31.013657, 36.327736, 30.382570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.073757, 36.555595, 30.428049>,  <31.173925, 36.935360, 30.503849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073757, 36.555595, 30.428049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289374, 0.113384, -0.950477,
		0.923879, -0.292855, 0.246341,
		-0.250421, -0.949410, -0.189498,
		30.998631, 36.270771, 30.371201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724401, 36.639309, 30.052601>,  <31.173925, 36.935360, 30.503849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724401, 36.639309, 30.052601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.382769, 36.434509, 30.015940>,  <31.177790, 36.311630, 29.993942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.382769, 36.434509, 30.015940>,  <31.724401, 36.639309, 30.052601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382769, 36.434509, 30.015940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206797, -0.172568, -0.963045,
		0.477265, -0.841471, 0.253268,
		-0.854080, -0.512003, -0.091653,
		31.126545, 36.280907, 29.988443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756147, 36.240536, 29.471569>,  <31.724401, 36.639309, 30.052601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756147, 36.240536, 29.471569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.371538, 36.140686, 29.517462>,  <31.140772, 36.080776, 29.544998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.371538, 36.140686, 29.517462>,  <31.756147, 36.240536, 29.471569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371538, 36.140686, 29.517462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031175, -0.514071, -0.857181,
		0.272951, -0.820622, 0.502073,
		-0.961523, -0.249620, 0.114733,
		31.083082, 36.065800, 29.551882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741894, 35.485893, 29.497360>,  <31.756147, 36.240536, 29.471569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741894, 35.485893, 29.497360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.372259, 35.616619, 29.418110>,  <31.150478, 35.695057, 29.370560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.372259, 35.616619, 29.418110>,  <31.741894, 35.485893, 29.497360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372259, 35.616619, 29.418110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006892, -0.532576, -0.846354,
		-0.382120, -0.780739, 0.494399,
		-0.924088, 0.326816, -0.198127,
		31.095034, 35.714664, 29.358671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316145, 34.878544, 29.239367>,  <31.741894, 35.485893, 29.497360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316145, 34.878544, 29.239367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.179581, 35.225750, 29.095148>,  <31.097641, 35.434074, 29.008617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.179581, 35.225750, 29.095148>,  <31.316145, 34.878544, 29.239367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179581, 35.225750, 29.095148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140986, -0.331961, -0.932698,
		-0.929280, -0.369266, -0.009042,
		-0.341412, 0.868012, -0.360546,
		31.077158, 35.486153, 28.986984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681814, 34.715672, 29.007196>,  <31.316145, 34.878544, 29.239367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681814, 34.715672, 29.007196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.811342, 35.045502, 28.821632>,  <30.889059, 35.243401, 28.710295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.811342, 35.045502, 28.821632>,  <30.681814, 34.715672, 29.007196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811342, 35.045502, 28.821632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009222, -0.493057, -0.869948,
		-0.946073, 0.277430, -0.167267,
		0.323822, 0.824577, -0.463910,
		30.908489, 35.292873, 28.682459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207148, 34.932034, 28.478111>,  <30.681814, 34.715672, 29.007196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207148, 34.932034, 28.478111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.554865, 35.102707, 28.378294>,  <30.763494, 35.205112, 28.318403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.554865, 35.102707, 28.378294>,  <30.207148, 34.932034, 28.478111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554865, 35.102707, 28.378294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142100, -0.267812, -0.952935,
		-0.473435, 0.863837, -0.172175,
		0.869291, 0.426687, -0.249543,
		30.815653, 35.230713, 28.303431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013271, 35.282326, 27.837315>,  <30.207148, 34.932034, 28.478111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013271, 35.282326, 27.837315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.412863, 35.267757, 27.848017>,  <30.652618, 35.259018, 27.854439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.412863, 35.267757, 27.848017>,  <30.013271, 35.282326, 27.837315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412863, 35.267757, 27.848017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014623, -0.299694, -0.953923,
		0.042759, 0.953340, -0.298855,
		0.998978, -0.036419, 0.026755,
		30.712557, 35.256832, 27.856043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307253, 35.679352, 27.303202>,  <30.013271, 35.282326, 27.837315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307253, 35.679352, 27.303202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.600101, 35.424656, 27.400002>,  <30.775810, 35.271839, 27.458082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.600101, 35.424656, 27.400002>,  <30.307253, 35.679352, 27.303202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.600101, 35.424656, 27.400002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168930, -0.174450, -0.970067,
		0.659897, 0.751086, -0.020153,
		0.732119, -0.636740, 0.242000,
		30.819736, 35.233635, 27.472601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.092693, 26.782120, 44.642323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778030, 26.879408, 44.415337>,  <34.589233, 26.937780, 44.279144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778030, 26.879408, 44.415337>,  <35.092693, 26.782120, 44.642323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778030, 26.879408, 44.415337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612082, -0.427548, 0.665251,
		-0.080815, 0.870658, 0.485205,
		-0.786654, 0.243223, -0.567466,
		34.542034, 26.952375, 44.245098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682209, 27.116608, 45.052921>,  <35.092693, 26.782120, 44.642323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682209, 27.116608, 45.052921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446064, 26.960789, 44.770157>,  <34.304379, 26.867298, 44.600498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.446064, 26.960789, 44.770157>,  <34.682209, 27.116608, 45.052921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446064, 26.960789, 44.770157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623242, -0.336514, 0.705923,
		-0.512875, 0.857329, -0.044116,
		-0.590363, -0.389545, -0.706913,
		34.268955, 26.843925, 44.558083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115448, 27.346479, 45.235081>,  <34.682209, 27.116608, 45.052921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115448, 27.346479, 45.235081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.018482, 27.053770, 44.980289>,  <33.960300, 26.878143, 44.827415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.018482, 27.053770, 44.980289>,  <34.115448, 27.346479, 45.235081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018482, 27.053770, 44.980289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697142, -0.325215, 0.638927,
		-0.674705, 0.598951, -0.431313,
		-0.242416, -0.731774, -0.636978,
		33.945759, 26.834238, 44.789196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429661, 27.415033, 45.109783>,  <34.115448, 27.346479, 45.235081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429661, 27.415033, 45.109783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490929, 27.039272, 44.987103>,  <33.527687, 26.813816, 44.913494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490929, 27.039272, 44.987103>,  <33.429661, 27.415033, 45.109783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490929, 27.039272, 44.987103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602196, -0.334808, 0.724751,
		-0.783517, 0.073686, -0.616986,
		0.153168, -0.939401, -0.306702,
		33.536880, 26.757452, 44.895092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770054, 27.155510, 45.133034>,  <33.429661, 27.415033, 45.109783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770054, 27.155510, 45.133034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.987946, 26.820913, 45.109184>,  <33.118679, 26.620155, 45.094875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.987946, 26.820913, 45.109184>,  <32.770054, 27.155510, 45.133034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987946, 26.820913, 45.109184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621263, -0.450286, 0.641308,
		-0.563296, -0.312295, -0.764963,
		0.544729, -0.836490, -0.059627,
		33.151363, 26.569967, 45.091297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226307, 26.543447, 45.040047>,  <32.770054, 27.155510, 45.133034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226307, 26.543447, 45.040047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.567841, 26.414385, 45.203438>,  <32.772762, 26.336946, 45.301472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.567841, 26.414385, 45.203438>,  <32.226307, 26.543447, 45.040047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567841, 26.414385, 45.203438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515731, -0.417980, 0.747873,
		-0.070572, -0.849226, -0.523292,
		0.853839, -0.322657, 0.408475,
		32.823994, 26.317587, 45.325981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998444, 25.995262, 45.217930>,  <32.226307, 26.543447, 45.040047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998444, 25.995262, 45.217930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.314796, 26.049545, 45.456623>,  <32.504608, 26.082115, 45.599838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.314796, 26.049545, 45.456623>,  <31.998444, 25.995262, 45.217930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314796, 26.049545, 45.456623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523115, -0.356114, 0.774295,
		0.317583, -0.924536, -0.210653,
		0.790880, 0.135708, 0.596734,
		32.552059, 26.090258, 45.635643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081394, 25.320717, 45.587078>,  <31.998444, 25.995262, 45.217930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081394, 25.320717, 45.587078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.277802, 25.612749, 45.777187>,  <32.395645, 25.787968, 45.891251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.277802, 25.612749, 45.777187>,  <32.081394, 25.320717, 45.587078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277802, 25.612749, 45.777187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459508, -0.246439, 0.853300,
		0.740103, -0.637377, 0.214471,
		0.491020, 0.730081, 0.475270,
		32.425106, 25.831774, 45.919769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487652, 25.026161, 46.122654>,  <32.081394, 25.320717, 45.587078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487652, 25.026161, 46.122654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.449493, 25.408230, 46.234756>,  <32.426598, 25.637472, 46.302017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.449493, 25.408230, 46.234756>,  <32.487652, 25.026161, 46.122654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449493, 25.408230, 46.234756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522100, -0.287718, 0.802888,
		0.847532, -0.069729, 0.526144,
		-0.095396, 0.955173, 0.280256,
		32.420876, 25.694782, 46.318832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541603, 24.955685, 46.794353>,  <32.487652, 25.026161, 46.122654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541603, 24.955685, 46.794353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.369267, 25.315468, 46.765095>,  <32.265865, 25.531338, 46.747540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.369267, 25.315468, 46.765095>,  <32.541603, 24.955685, 46.794353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369267, 25.315468, 46.765095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537733, -0.190787, 0.821245,
		0.724721, 0.393158, 0.565867,
		-0.430839, 0.899459, -0.073147,
		32.240013, 25.585306, 46.743153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622635, 25.214384, 47.378208>,  <32.541603, 24.955685, 46.794353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622635, 25.214384, 47.378208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.320992, 25.431864, 47.230854>,  <32.140003, 25.562351, 47.142441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.320992, 25.431864, 47.230854>,  <32.622635, 25.214384, 47.378208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320992, 25.431864, 47.230854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569177, -0.261220, 0.779616,
		0.327648, 0.797593, 0.506450,
		-0.754112, 0.543699, -0.368383,
		32.094757, 25.594975, 47.120338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396973, 25.571795, 47.913319>,  <32.622635, 25.214384, 47.378208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396973, 25.571795, 47.913319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.086224, 25.555298, 47.661999>,  <31.899775, 25.545401, 47.511208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.086224, 25.555298, 47.661999>,  <32.396973, 25.571795, 47.913319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086224, 25.555298, 47.661999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616920, -0.149822, 0.772634,
		-0.125998, 0.987853, 0.090950,
		-0.776875, -0.041242, -0.628303,
		31.853161, 25.542925, 47.473507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780746, 25.970787, 48.186729>,  <32.396973, 25.571795, 47.913319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780746, 25.970787, 48.186729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.690796, 25.659433, 47.952278>,  <31.636826, 25.472620, 47.811607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.690796, 25.659433, 47.952278>,  <31.780746, 25.970787, 48.186729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690796, 25.659433, 47.952278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536901, -0.402993, 0.741170,
		-0.813122, 0.481366, -0.327291,
		-0.224878, -0.778385, -0.586128,
		31.623333, 25.425919, 47.776440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235260, 25.516760, 48.426033>,  <31.780746, 25.970787, 48.186729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235260, 25.516760, 48.426033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.452898, 25.226402, 48.257729>,  <31.583481, 25.052187, 48.156746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.452898, 25.226402, 48.257729>,  <31.235260, 25.516760, 48.426033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452898, 25.226402, 48.257729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515446, -0.684882, 0.515025,
		-0.662023, -0.063346, -0.746801,
		0.544095, -0.725895, -0.420757,
		31.616125, 25.008635, 48.131500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065960, 26.104536, 48.735775>,  <31.235260, 25.516760, 48.426033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065960, 26.104536, 48.735775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.902185, 26.307545, 49.039032>,  <30.803921, 26.429350, 49.220985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.902185, 26.307545, 49.039032>,  <31.065960, 26.104536, 48.735775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902185, 26.307545, 49.039032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379064, 0.850501, -0.364634,
		-0.829862, 0.138090, -0.540611,
		-0.409438, 0.507522, 0.758144,
		30.779354, 26.459801, 49.266476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639128, 26.602524, 48.444736>,  <31.065960, 26.104536, 48.735775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639128, 26.602524, 48.444736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.780558, 26.693075, 48.807777>,  <30.865416, 26.747406, 49.025600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.780558, 26.693075, 48.807777>,  <30.639128, 26.602524, 48.444736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780558, 26.693075, 48.807777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530474, 0.750634, -0.393885,
		-0.770443, 0.620726, 0.145318,
		0.353575, 0.226378, 0.907600,
		30.886631, 26.760988, 49.080059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703941, 27.365557, 48.400745>,  <30.639128, 26.602524, 48.444736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703941, 27.365557, 48.400745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.928581, 27.254885, 48.712654>,  <31.063366, 27.188480, 48.899799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.928581, 27.254885, 48.712654>,  <30.703941, 27.365557, 48.400745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928581, 27.254885, 48.712654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685889, 0.682785, -0.251716,
		-0.462774, 0.676204, 0.573226,
		0.561602, -0.276681, 0.779776,
		31.097061, 27.171881, 48.946587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814556, 27.983387, 48.761200>,  <30.703941, 27.365557, 48.400745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814556, 27.983387, 48.761200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.089535, 27.725393, 48.894714>,  <31.254522, 27.570597, 48.974823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.089535, 27.725393, 48.894714>,  <30.814556, 27.983387, 48.761200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089535, 27.725393, 48.894714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725538, 0.630054, -0.276813,
		-0.031762, 0.432467, 0.901090,
		0.687448, -0.644983, 0.333783,
		31.295769, 27.531898, 48.994850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290613, 28.398174, 49.168732>,  <30.814556, 27.983387, 48.761200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290613, 28.398174, 49.168732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.480324, 28.062180, 49.063293>,  <31.594151, 27.860582, 49.000031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.480324, 28.062180, 49.063293>,  <31.290613, 28.398174, 49.168732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480324, 28.062180, 49.063293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784948, 0.539046, -0.305428,
		0.398645, -0.062050, 0.915004,
		0.474277, -0.839988, -0.263594,
		31.622606, 27.810183, 48.984215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981213, 28.470434, 49.270969>,  <31.290613, 28.398174, 49.168732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981213, 28.470434, 49.270969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.003517, 28.166895, 49.011421>,  <32.016899, 27.984772, 48.855690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.003517, 28.166895, 49.011421>,  <31.981213, 28.470434, 49.270969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003517, 28.166895, 49.011421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792379, 0.429037, -0.433661,
		0.607475, -0.489974, 0.625220,
		0.055760, -0.758850, -0.648875,
		32.020245, 27.939240, 48.816757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757259, 28.369299, 49.132889>,  <31.981213, 28.470434, 49.270969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757259, 28.369299, 49.132889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574684, 28.188400, 48.826389>,  <32.465137, 28.079861, 48.642490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574684, 28.188400, 48.826389>,  <32.757259, 28.369299, 49.132889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574684, 28.188400, 48.826389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717667, 0.321925, -0.617510,
		0.525942, -0.831766, 0.177624,
		-0.456442, -0.452249, -0.766245,
		32.437752, 28.052725, 48.596516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300861, 28.119968, 48.684868>,  <32.757259, 28.369299, 49.132889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300861, 28.119968, 48.684868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.971199, 28.162844, 48.462414>,  <32.773403, 28.188568, 48.328941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.971199, 28.162844, 48.462414>,  <33.300861, 28.119968, 48.684868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971199, 28.162844, 48.462414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550129, 0.384959, -0.741057,
		0.134656, -0.916689, -0.376232,
		-0.824152, 0.107188, -0.556134,
		32.723953, 28.195000, 48.295574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604977, 28.000578, 48.057957>,  <33.300861, 28.119968, 48.684868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604977, 28.000578, 48.057957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249805, 28.165758, 47.976917>,  <33.036701, 28.264866, 47.928291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249805, 28.165758, 47.976917>,  <33.604977, 28.000578, 48.057957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249805, 28.165758, 47.976917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381550, 0.415251, -0.825824,
		-0.256895, -0.810579, -0.526276,
		-0.887933, 0.412951, -0.202601,
		32.983425, 28.289644, 47.916138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423153, 27.789980, 47.387821>,  <33.604977, 28.000578, 48.057957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423153, 27.789980, 47.387821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265793, 28.149174, 47.466671>,  <33.171375, 28.364691, 47.513981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265793, 28.149174, 47.466671>,  <33.423153, 27.789980, 47.387821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265793, 28.149174, 47.466671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319020, 0.334426, -0.886784,
		-0.862241, -0.285979, -0.418039,
		-0.393405, 0.897984, 0.197123,
		33.147770, 28.418570, 47.525806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209446, 28.015068, 46.722755>,  <33.423153, 27.789980, 47.387821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209446, 28.015068, 46.722755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.183048, 28.359333, 46.924706>,  <33.167210, 28.565893, 47.045876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.183048, 28.359333, 46.924706>,  <33.209446, 28.015068, 46.722755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183048, 28.359333, 46.924706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427636, 0.481554, -0.765005,
		-0.901539, 0.165417, -0.399831,
		-0.065995, 0.860664, 0.504878,
		33.163250, 28.617533, 47.076168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999386, 28.475269, 46.246323>,  <33.209446, 28.015068, 46.722755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999386, 28.475269, 46.246323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.115692, 28.716843, 46.543163>,  <33.185474, 28.861788, 46.721268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.115692, 28.716843, 46.543163>,  <32.999386, 28.475269, 46.246323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115692, 28.716843, 46.543163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250176, 0.700644, -0.668214,
		-0.923509, 0.379948, 0.052631,
		0.290762, 0.603935, 0.742105,
		33.202919, 28.898024, 46.765797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687767, 29.227333, 46.127869>,  <32.999386, 28.475269, 46.246323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687767, 29.227333, 46.127869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.026676, 29.240849, 46.339901>,  <33.230022, 29.248959, 46.467121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.026676, 29.240849, 46.339901>,  <32.687767, 29.227333, 46.127869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026676, 29.240849, 46.339901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392453, 0.632672, -0.667613,
		-0.357929, 0.773682, 0.522783,
		0.847271, 0.033790, 0.530085,
		33.280857, 29.250986, 46.498928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844948, 29.869638, 46.153248>,  <32.687767, 29.227333, 46.127869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844948, 29.869638, 46.153248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.189121, 29.669950, 46.194103>,  <33.395626, 29.550138, 46.218616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.189121, 29.669950, 46.194103>,  <32.844948, 29.869638, 46.153248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189121, 29.669950, 46.194103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460242, 0.675350, -0.576264,
		0.218701, 0.542847, 0.810856,
		0.860435, -0.499219, 0.102141,
		33.447250, 29.520185, 46.224747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535152, 30.620695, 46.187424>,  <32.844948, 29.869638, 46.153248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535152, 30.620695, 46.187424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.235306, 30.833757, 46.030273>,  <32.055397, 30.961596, 45.935982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.235306, 30.833757, 46.030273>,  <32.535152, 30.620695, 46.187424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235306, 30.833757, 46.030273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655234, -0.513362, 0.554191,
		0.093504, 0.672858, 0.733839,
		-0.749617, 0.532655, -0.392878,
		32.010422, 30.993553, 45.912411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057522, 30.700548, 46.723820>,  <32.535152, 30.620695, 46.187424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057522, 30.700548, 46.723820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.843681, 30.775776, 46.394253>,  <31.715378, 30.820913, 46.196514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.843681, 30.775776, 46.394253>,  <32.057522, 30.700548, 46.723820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843681, 30.775776, 46.394253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772761, -0.503457, 0.386486,
		-0.342119, 0.843304, 0.414480,
		-0.534598, 0.188070, -0.823914,
		31.683302, 30.832197, 46.147079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469997, 31.038696, 47.016281>,  <32.057522, 30.700548, 46.723820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469997, 31.038696, 47.016281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.377277, 30.890863, 46.656353>,  <31.321646, 30.802164, 46.440395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.377277, 30.890863, 46.656353>,  <31.469997, 31.038696, 47.016281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377277, 30.890863, 46.656353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887314, -0.298775, 0.351292,
		-0.398676, 0.879854, -0.258680,
		-0.231799, -0.369582, -0.899821,
		31.307737, 30.779989, 46.386406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821775, 31.181503, 46.893154>,  <31.469997, 31.038696, 47.016281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821775, 31.181503, 46.893154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.870310, 30.880329, 46.634430>,  <30.899431, 30.699625, 46.479195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.870310, 30.880329, 46.634430>,  <30.821775, 31.181503, 46.893154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870310, 30.880329, 46.634430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911042, -0.343162, 0.228564,
		-0.394055, 0.561538, -0.727596,
		0.121336, -0.752937, -0.646810,
		30.906712, 30.654448, 46.440388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137487, 31.025545, 46.539356>,  <30.821775, 31.181503, 46.893154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137487, 31.025545, 46.539356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.353268, 30.695358, 46.472908>,  <30.482737, 30.497246, 46.433041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.353268, 30.695358, 46.472908>,  <30.137487, 31.025545, 46.539356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353268, 30.695358, 46.472908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823856, -0.558195, 0.098387,
		-0.173941, 0.083780, -0.981186,
		0.539450, -0.825469, -0.166116,
		30.515102, 30.447718, 46.423073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659637, 30.560465, 46.382610>,  <30.137487, 31.025545, 46.539356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659637, 30.560465, 46.382610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.951992, 30.300169, 46.464916>,  <30.127405, 30.143991, 46.514301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.951992, 30.300169, 46.464916>,  <29.659637, 30.560465, 46.382610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951992, 30.300169, 46.464916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682062, -0.685660, 0.254286,
		-0.024387, -0.326201, -0.944986,
		0.730888, -0.650740, 0.205768,
		30.171259, 30.104946, 46.526646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407114, 29.812035, 46.125565>,  <29.659637, 30.560465, 46.382610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407114, 29.812035, 46.125565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.692141, 29.761108, 46.401546>,  <29.863157, 29.730553, 46.567135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.692141, 29.761108, 46.401546>,  <29.407114, 29.812035, 46.125565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692141, 29.761108, 46.401546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559548, -0.696394, 0.449379,
		0.423269, -0.706276, -0.567466,
		0.712566, -0.127316, 0.689957,
		29.905910, 29.722914, 46.608532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429955, 29.302574, 45.478065>,  <29.407114, 29.812035, 46.125565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429955, 29.302574, 45.478065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.131367, 29.176311, 45.243752>,  <28.952213, 29.100554, 45.103165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.131367, 29.176311, 45.243752>,  <29.429955, 29.302574, 45.478065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.131367, 29.176311, 45.243752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236603, 0.696885, -0.677031,
		0.621931, -0.643982, -0.445520,
		-0.746472, -0.315655, -0.585783,
		28.907425, 29.081615, 45.068016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786024, 29.111835, 44.813061>,  <29.429955, 29.302574, 45.478065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786024, 29.111835, 44.813061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.410730, 29.205664, 44.711323>,  <29.185555, 29.261961, 44.650280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.410730, 29.205664, 44.711323>,  <29.786024, 29.111835, 44.813061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410730, 29.205664, 44.711323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337795, 0.461846, -0.820118,
		-0.074908, -0.855380, -0.512557,
		-0.938234, 0.234572, -0.254347,
		29.129261, 29.276035, 44.635017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813805, 29.095238, 44.064106>,  <29.786024, 29.111835, 44.813061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813805, 29.095238, 44.064106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.468149, 29.281143, 44.141319>,  <29.260756, 29.392687, 44.187645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.468149, 29.281143, 44.141319>,  <29.813805, 29.095238, 44.064106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468149, 29.281143, 44.141319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214612, 0.687261, -0.693984,
		-0.455201, -0.558271, -0.693632,
		-0.864138, 0.464764, 0.193030,
		29.208908, 29.420572, 44.199226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371115, 29.031126, 43.489822>,  <29.813805, 29.095238, 44.064106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371115, 29.031126, 43.489822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.254553, 29.364185, 43.678196>,  <29.184616, 29.564022, 43.791218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.254553, 29.364185, 43.678196>,  <29.371115, 29.031126, 43.489822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254553, 29.364185, 43.678196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124704, 0.521163, -0.844298,
		-0.948436, -0.187306, -0.255705,
		-0.291406, 0.832650, 0.470932,
		29.167131, 29.613981, 43.819477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965609, 29.337605, 43.067509>,  <29.371115, 29.031126, 43.489822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965609, 29.337605, 43.067509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.036898, 29.645493, 43.312706>,  <29.079670, 29.830225, 43.459824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.036898, 29.645493, 43.312706>,  <28.965609, 29.337605, 43.067509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036898, 29.645493, 43.312706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224932, 0.574608, -0.786913,
		-0.957937, 0.278127, -0.070727,
		0.178221, 0.769721, 0.612998,
		29.090364, 29.876410, 43.496605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674231, 30.030226, 42.746071>,  <28.965609, 29.337605, 43.067509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674231, 30.030226, 42.746071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.953228, 30.102949, 43.023327>,  <29.120626, 30.146584, 43.189682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.953228, 30.102949, 43.023327>,  <28.674231, 30.030226, 42.746071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953228, 30.102949, 43.023327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540387, 0.501808, -0.675405,
		-0.470619, 0.845656, 0.251760,
		0.697495, 0.181811, 0.693141,
		29.162477, 30.157492, 43.231270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882999, 30.820040, 42.758751>,  <28.674231, 30.030226, 42.746071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882999, 30.820040, 42.758751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.195440, 30.678984, 42.964867>,  <29.382906, 30.594349, 43.088535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.195440, 30.678984, 42.964867>,  <28.882999, 30.820040, 42.758751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195440, 30.678984, 42.964867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620735, 0.527854, -0.579706,
		-0.067568, 0.772667, 0.631205,
		0.781104, -0.352641, 0.515287,
		29.429771, 30.573191, 43.119453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.492165, 25.658754, 45.312504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.797409, 25.733963, 45.559826>,  <28.980556, 25.779087, 45.708221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.797409, 25.733963, 45.559826>,  <28.492165, 25.658754, 45.312504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797409, 25.733963, 45.559826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600430, 0.147617, -0.785935,
		-0.239044, 0.971009, -0.000244,
		0.763113, 0.188020, 0.618310,
		29.026342, 25.790369, 45.745319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772705, 26.308851, 45.223232>,  <28.492165, 25.658754, 45.312504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772705, 26.308851, 45.223232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.075212, 26.096165, 45.375725>,  <29.256718, 25.968554, 45.467220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.075212, 26.096165, 45.375725>,  <28.772705, 26.308851, 45.223232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075212, 26.096165, 45.375725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596612, 0.321301, -0.735404,
		0.268535, 0.783610, 0.560218,
		0.756269, -0.531715, 0.381231,
		29.302094, 25.936651, 45.490093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391754, 26.761932, 45.121483>,  <28.772705, 26.308851, 45.223232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391754, 26.761932, 45.121483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.519701, 26.383703, 45.145420>,  <29.596470, 26.156767, 45.159782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.519701, 26.383703, 45.145420>,  <29.391754, 26.761932, 45.121483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519701, 26.383703, 45.145420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593321, 0.150667, -0.790740,
		0.738685, 0.288435, 0.609221,
		0.319867, -0.945571, 0.059840,
		29.615662, 26.100033, 45.163372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001701, 26.885199, 44.909851>,  <29.391754, 26.761932, 45.121483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001701, 26.885199, 44.909851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.947350, 26.489634, 44.885883>,  <29.914740, 26.252295, 44.871502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.947350, 26.489634, 44.885883>,  <30.001701, 26.885199, 44.909851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947350, 26.489634, 44.885883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728354, -0.058714, -0.682681,
		0.671594, -0.136401, 0.728256,
		-0.135877, -0.988912, -0.059917,
		29.906586, 26.192961, 44.867908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642511, 26.831583, 44.963867>,  <30.001701, 26.885199, 44.909851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642511, 26.831583, 44.963867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.473873, 26.517210, 44.782951>,  <30.372690, 26.328587, 44.674400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.473873, 26.517210, 44.782951>,  <30.642511, 26.831583, 44.963867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473873, 26.517210, 44.782951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798306, -0.085130, -0.596205,
		0.430074, -0.612424, 0.663305,
		-0.421597, -0.785933, -0.452290,
		30.347395, 26.281429, 44.647263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215446, 26.537401, 44.664658>,  <30.642511, 26.831583, 44.963867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215446, 26.537401, 44.664658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.925341, 26.326586, 44.487469>,  <30.751278, 26.200096, 44.381157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.925341, 26.326586, 44.487469>,  <31.215446, 26.537401, 44.664658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925341, 26.326586, 44.487469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618830, -0.217056, -0.754941,
		0.301734, -0.821655, 0.483570,
		-0.725263, -0.527039, -0.442971,
		30.707762, 26.168474, 44.354576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416355, 25.724771, 44.561405>,  <31.215446, 26.537401, 44.664658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416355, 25.724771, 44.561405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.153107, 25.859840, 44.292229>,  <30.995157, 25.940882, 44.130722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.153107, 25.859840, 44.292229>,  <31.416355, 25.724771, 44.561405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153107, 25.859840, 44.292229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583351, -0.336379, -0.739291,
		-0.476003, -0.879105, 0.024395,
		-0.658120, 0.337674, -0.672944,
		30.955671, 25.961142, 44.090347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648045, 25.408312, 43.983604>,  <31.416355, 25.724771, 44.561405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648045, 25.408312, 43.983604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.387619, 25.651598, 43.801971>,  <31.231363, 25.797569, 43.692993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.387619, 25.651598, 43.801971>,  <31.648045, 25.408312, 43.983604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387619, 25.651598, 43.801971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414432, -0.216339, -0.883993,
		-0.635894, -0.763721, -0.111214,
		-0.651064, 0.608217, -0.454079,
		31.192299, 25.834063, 43.665749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310364, 24.978811, 43.404560>,  <31.648045, 25.408312, 43.983604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310364, 24.978811, 43.404560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.295656, 25.368820, 43.316948>,  <31.286833, 25.602825, 43.264381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.295656, 25.368820, 43.316948>,  <31.310364, 24.978811, 43.404560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295656, 25.368820, 43.316948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205475, -0.207122, -0.956494,
		-0.977971, -0.080174, -0.192728,
		-0.036768, 0.975024, -0.219033,
		31.284626, 25.661327, 43.251240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154139, 24.937464, 42.661201>,  <31.310364, 24.978811, 43.404560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154139, 24.937464, 42.661201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.254866, 25.320175, 42.719387>,  <31.315302, 25.549803, 42.754299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.254866, 25.320175, 42.719387>,  <31.154139, 24.937464, 42.661201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254866, 25.320175, 42.719387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336209, 0.054457, -0.940212,
		-0.907497, 0.285669, -0.307965,
		0.251819, 0.956780, 0.145464,
		31.330412, 25.607208, 42.763027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992250, 25.256414, 42.055702>,  <31.154139, 24.937464, 42.661201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992250, 25.256414, 42.055702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.255260, 25.511221, 42.216633>,  <31.413067, 25.664104, 42.313190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.255260, 25.511221, 42.216633>,  <30.992250, 25.256414, 42.055702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255260, 25.511221, 42.216633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355263, 0.208768, -0.911155,
		-0.664415, 0.742041, -0.089038,
		0.657527, 0.637017, 0.402328,
		31.452518, 25.702326, 42.337330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093945, 25.772310, 41.485714>,  <30.992250, 25.256414, 42.055702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093945, 25.772310, 41.485714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.408258, 25.813065, 41.729733>,  <31.596848, 25.837517, 41.876144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.408258, 25.813065, 41.729733>,  <31.093945, 25.772310, 41.485714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408258, 25.813065, 41.729733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567168, 0.274730, -0.776431,
		-0.246705, 0.956108, 0.158093,
		0.785785, 0.101884, 0.610051,
		31.643993, 25.843630, 41.912746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627186, 26.437443, 41.688202>,  <31.093945, 25.772310, 41.485714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627186, 26.437443, 41.688202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.310034, 26.546764, 41.470341>,  <30.119743, 26.612356, 41.339622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.310034, 26.546764, 41.470341>,  <30.627186, 26.437443, 41.688202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310034, 26.546764, 41.470341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606979, -0.433418, 0.666127,
		-0.054007, 0.858752, 0.509538,
		-0.792881, 0.273303, -0.544652,
		30.072170, 26.628756, 41.306946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137472, 26.731791, 42.189892>,  <30.627186, 26.437443, 41.688202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137472, 26.731791, 42.189892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.920340, 26.625332, 41.871269>,  <29.790060, 26.561457, 41.680096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.920340, 26.625332, 41.871269>,  <30.137472, 26.731791, 42.189892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920340, 26.625332, 41.871269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754324, -0.262474, 0.601750,
		-0.369230, 0.927509, -0.058284,
		-0.542831, -0.266149, -0.796555,
		29.757490, 26.545486, 41.632301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545364, 26.992186, 42.335068>,  <30.137472, 26.731791, 42.189892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545364, 26.992186, 42.335068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.459459, 26.729019, 42.046341>,  <29.407917, 26.571119, 41.873104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.459459, 26.729019, 42.046341>,  <29.545364, 26.992186, 42.335068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459459, 26.729019, 42.046341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783473, -0.325218, 0.529531,
		-0.583136, 0.679249, -0.445616,
		-0.214761, -0.657917, -0.721820,
		29.395031, 26.531645, 41.829796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748526, 27.106993, 42.077694>,  <29.545364, 26.992186, 42.335068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748526, 27.106993, 42.077694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.874065, 26.742134, 41.972248>,  <28.949389, 26.523220, 41.908981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.874065, 26.742134, 41.972248>,  <28.748526, 27.106993, 42.077694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874065, 26.742134, 41.972248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720136, -0.409627, 0.560009,
		-0.618791, 0.014077, -0.785429,
		0.313849, -0.912144, -0.263611,
		28.968220, 26.468491, 41.893166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152697, 26.898077, 41.897919>,  <28.748526, 27.106993, 42.077694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152697, 26.898077, 41.897919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.391228, 26.588861, 41.984459>,  <28.534346, 26.403332, 42.036381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.391228, 26.588861, 41.984459>,  <28.152697, 26.898077, 41.897919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391228, 26.588861, 41.984459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707643, -0.378991, 0.596328,
		-0.378991, -0.508704, -0.773037,
		-0.596328, 0.773037, -0.216347,
		28.570126, 26.356951, 42.049362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676214, 26.443335, 41.852024>,  <28.152697, 26.898077, 41.897919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676214, 26.443335, 41.852024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.973274, 26.251942, 42.039440>,  <28.151510, 26.137106, 42.151890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.973274, 26.251942, 42.039440>,  <27.676214, 26.443335, 41.852024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973274, 26.251942, 42.039440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668782, -0.566144, 0.481883,
		0.034687, -0.671220, -0.740447,
		0.742649, -0.478483, 0.468538,
		28.196070, 26.108397, 42.180000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468649, 25.630800, 41.944649>,  <27.676214, 26.443335, 41.852024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468649, 25.630800, 41.944649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.770201, 25.674271, 42.203835>,  <27.951132, 25.700354, 42.359344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.770201, 25.674271, 42.203835>,  <27.468649, 25.630800, 41.944649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770201, 25.674271, 42.203835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574983, -0.368055, 0.730705,
		0.317897, -0.923431, -0.214982,
		0.753880, 0.108678, 0.647961,
		27.996365, 25.706875, 42.398224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349487, 25.081308, 42.350643>,  <27.468649, 25.630800, 41.944649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349487, 25.081308, 42.350643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.612204, 25.298931, 42.559498>,  <27.769833, 25.429504, 42.684811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.612204, 25.298931, 42.559498>,  <27.349487, 25.081308, 42.350643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612204, 25.298931, 42.559498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308595, -0.437863, 0.844420,
		0.688038, -0.715736, -0.119690,
		0.656789, 0.544057, 0.522139,
		27.809240, 25.462149, 42.716141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736008, 24.629044, 42.832352>,  <27.349487, 25.081308, 42.350643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736008, 24.629044, 42.832352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.747290, 24.998020, 42.986393>,  <27.754059, 25.219406, 43.078819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.747290, 24.998020, 42.986393>,  <27.736008, 24.629044, 42.832352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747290, 24.998020, 42.986393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260191, -0.365201, 0.893828,
		0.965145, -0.125410, 0.229711,
		0.028204, 0.922443, 0.385103,
		27.755751, 25.274754, 43.101925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938574, 24.518011, 43.530815>,  <27.736008, 24.629044, 42.832352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938574, 24.518011, 43.530815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.796194, 24.891809, 43.532475>,  <27.710766, 25.116089, 43.533470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.796194, 24.891809, 43.532475>,  <27.938574, 24.518011, 43.530815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796194, 24.891809, 43.532475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212950, -0.085429, 0.973321,
		0.909920, 0.345569, 0.229409,
		-0.355948, 0.934497, 0.004144,
		27.689409, 25.172159, 43.533718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179668, 24.760170, 44.196117>,  <27.938574, 24.518011, 43.530815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179668, 24.760170, 44.196117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.874138, 24.978704, 44.058662>,  <27.690819, 25.109825, 43.976189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.874138, 24.978704, 44.058662>,  <28.179668, 24.760170, 44.196117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874138, 24.978704, 44.058662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390411, 0.032871, 0.920054,
		0.513954, 0.836921, 0.188188,
		-0.763826, 0.546336, -0.343638,
		27.644991, 25.142605, 43.955570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117073, 25.116329, 44.758656>,  <28.179668, 24.760170, 44.196117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117073, 25.116329, 44.758656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.772589, 25.153887, 44.558853>,  <27.565899, 25.176420, 44.438972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.772589, 25.153887, 44.558853>,  <28.117073, 25.116329, 44.758656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772589, 25.153887, 44.558853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508055, -0.186328, 0.840929,
		-0.014115, 0.977991, 0.208170,
		-0.861209, 0.093892, -0.499503,
		27.514225, 25.182055, 44.409004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576866, 25.517361, 45.214718>,  <28.117073, 25.116329, 44.758656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576866, 25.517361, 45.214718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.367840, 25.335140, 44.926441>,  <27.242424, 25.225807, 44.753475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.367840, 25.335140, 44.926441>,  <27.576866, 25.517361, 45.214718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367840, 25.335140, 44.926441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768958, -0.113303, 0.629179,
		-0.368280, 0.882970, -0.291092,
		-0.522565, -0.455551, -0.720694,
		27.211071, 25.198475, 44.710232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044937, 25.916637, 45.142887>,  <27.576866, 25.517361, 45.214718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044937, 25.916637, 45.142887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.948891, 25.544529, 45.031940>,  <26.891262, 25.321262, 44.965370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.948891, 25.544529, 45.031940>,  <27.044937, 25.916637, 45.142887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948891, 25.544529, 45.031940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692356, -0.036162, 0.720650,
		-0.680432, 0.365080, -0.635397,
		-0.240118, -0.930274, -0.277371,
		26.876856, 25.265448, 44.948730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254835, 26.401937, 45.706371>,  <27.044937, 25.916637, 45.142887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254835, 26.401937, 45.706371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.198372, 26.718739, 45.943962>,  <27.164494, 26.908819, 46.086517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.198372, 26.718739, 45.943962>,  <27.254835, 26.401937, 45.706371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198372, 26.718739, 45.943962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521031, 0.569596, -0.635678,
		-0.841785, 0.219749, -0.493061,
		-0.141156, 0.792004, 0.593974,
		27.156025, 26.956339, 46.122154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994925, 26.959898, 45.303444>,  <27.254835, 26.401937, 45.706371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994925, 26.959898, 45.303444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.166197, 27.136082, 45.619080>,  <27.268961, 27.241793, 45.808460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.166197, 27.136082, 45.619080>,  <26.994925, 26.959898, 45.303444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166197, 27.136082, 45.619080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405784, 0.686490, -0.603383,
		-0.807465, 0.578556, 0.115211,
		0.428182, 0.440460, 0.789085,
		27.294651, 27.268219, 45.855804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978260, 27.692684, 45.110622>,  <26.994925, 26.959898, 45.303444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978260, 27.692684, 45.110622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.239582, 27.690380, 45.413452>,  <27.396376, 27.688997, 45.595150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.239582, 27.690380, 45.413452>,  <26.978260, 27.692684, 45.110622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239582, 27.690380, 45.413452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584742, 0.639019, -0.499731,
		-0.480905, 0.769170, 0.420842,
		0.653304, -0.005761, 0.757074,
		27.435574, 27.688652, 45.640575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148630, 28.410324, 45.305653>,  <26.978260, 27.692684, 45.110622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.148630, 28.410324, 45.305653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.454866, 28.197412, 45.450176>,  <27.638609, 28.069666, 45.536892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.454866, 28.197412, 45.450176>,  <27.148630, 28.410324, 45.305653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454866, 28.197412, 45.450176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641816, 0.593468, -0.485662,
		0.044081, 0.603716, 0.795980,
		0.765591, -0.532281, 0.361314,
		27.684544, 28.037727, 45.558571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548943, 28.855991, 45.629337>,  <27.148630, 28.410324, 45.305653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548943, 28.855991, 45.629337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.789339, 28.551775, 45.531044>,  <27.933577, 28.369246, 45.472069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.789339, 28.551775, 45.531044>,  <27.548943, 28.855991, 45.629337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789339, 28.551775, 45.531044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682480, 0.648338, -0.337459,
		0.415967, 0.035105, 0.908702,
		0.600992, -0.760543, -0.245729,
		27.969637, 28.323612, 45.457325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148403, 29.041431, 45.948971>,  <27.548943, 28.855991, 45.629337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148403, 29.041431, 45.948971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.254480, 28.781708, 45.663853>,  <28.318127, 28.625874, 45.492783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.254480, 28.781708, 45.663853>,  <28.148403, 29.041431, 45.948971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254480, 28.781708, 45.663853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788506, 0.571507, -0.227241,
		0.554914, -0.501778, 0.663543,
		0.265195, -0.649307, -0.712792,
		28.334040, 28.586916, 45.450016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.853252, 29.158937, 45.938545>,  <28.148403, 29.041431, 45.948971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.853252, 29.158937, 45.938545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.760363, 28.959185, 45.604671>,  <28.704628, 28.839333, 45.404346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.760363, 28.959185, 45.604671>,  <28.853252, 29.158937, 45.938545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760363, 28.959185, 45.604671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631051, 0.575665, -0.519986,
		0.740166, -0.647480, 0.181450,
		-0.232226, -0.499380, -0.834680,
		28.690695, 28.809370, 45.354267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494476, 29.015684, 46.214928>,  <28.853252, 29.158937, 45.938545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494476, 29.015684, 46.214928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.676575, 29.162207, 46.539539>,  <29.785833, 29.250120, 46.734306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.676575, 29.162207, 46.539539>,  <29.494476, 29.015684, 46.214928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676575, 29.162207, 46.539539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177188, -0.855948, 0.485754,
		0.872558, -0.364929, -0.324761,
		0.455245, 0.366305, 0.811525,
		29.813148, 29.272099, 46.782997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869419, 28.457443, 46.493214>,  <29.494476, 29.015684, 46.214928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869419, 28.457443, 46.493214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.829956, 28.707180, 46.803173>,  <29.806278, 28.857023, 46.989147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.829956, 28.707180, 46.803173>,  <29.869419, 28.457443, 46.493214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829956, 28.707180, 46.803173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365771, -0.746935, 0.555248,
		0.925461, -0.228653, 0.302058,
		-0.098659, 0.624344, 0.774894,
		29.800358, 28.894484, 47.035641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058987, 28.083025, 47.082043>,  <29.869419, 28.457443, 46.493214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058987, 28.083025, 47.082043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.848709, 28.389196, 47.230511>,  <29.722542, 28.572899, 47.319592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.848709, 28.389196, 47.230511>,  <30.058987, 28.083025, 47.082043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848709, 28.389196, 47.230511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398003, -0.606932, 0.687915,
		0.751824, 0.213905, 0.623703,
		-0.525694, 0.765427, 0.371171,
		29.691000, 28.618824, 47.341862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161610, 28.020639, 47.787338>,  <30.058987, 28.083025, 47.082043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161610, 28.020639, 47.787338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.846195, 28.265736, 47.766304>,  <29.656946, 28.412792, 47.753685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.846195, 28.265736, 47.766304>,  <30.161610, 28.020639, 47.787338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846195, 28.265736, 47.766304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469478, -0.544527, 0.695040,
		0.397245, 0.572749, 0.717046,
		-0.788535, 0.612739, -0.052582,
		29.609634, 28.449556, 47.750530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025354, 28.193701, 48.475727>,  <30.161610, 28.020639, 47.787338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025354, 28.193701, 48.475727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.685295, 28.240784, 48.270439>,  <29.481260, 28.269033, 48.147266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.685295, 28.240784, 48.270439>,  <30.025354, 28.193701, 48.475727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685295, 28.240784, 48.270439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466038, -0.621854, 0.629370,
		-0.245066, 0.774237, 0.583524,
		-0.850148, 0.117707, -0.513219,
		29.430250, 28.276096, 48.116474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627855, 28.144146, 48.952236>,  <30.025354, 28.193701, 48.475727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627855, 28.144146, 48.952236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.404039, 28.104546, 48.623089>,  <29.269749, 28.080786, 48.425602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.404039, 28.104546, 48.623089>,  <29.627855, 28.144146, 48.952236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404039, 28.104546, 48.623089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650610, -0.562593, 0.510094,
		-0.513439, 0.820785, 0.250384,
		-0.559542, -0.099000, -0.822868,
		29.236177, 28.074846, 48.376228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942726, 28.162214, 49.238815>,  <29.627855, 28.144146, 48.952236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942726, 28.162214, 49.238815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.960995, 27.939281, 48.907204>,  <28.971956, 27.805521, 48.708237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.960995, 27.939281, 48.907204>,  <28.942726, 28.162214, 49.238815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960995, 27.939281, 48.907204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461032, -0.747990, 0.477453,
		-0.886208, 0.360404, -0.291110,
		0.045671, -0.557334, -0.829032,
		28.974695, 27.772081, 48.658493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237236, 27.954956, 49.159096>,  <28.942726, 28.162214, 49.238815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237236, 27.954956, 49.159096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.457684, 27.697443, 48.946751>,  <28.589952, 27.542936, 48.819344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.457684, 27.697443, 48.946751>,  <28.237236, 27.954956, 49.159096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457684, 27.697443, 48.946751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459895, -0.765199, 0.450518,
		-0.696248, -0.004151, -0.717790,
		0.551122, -0.643780, -0.530859,
		28.623020, 27.504309, 48.787491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831619, 27.470547, 48.911747>,  <28.237236, 27.954956, 49.159096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831619, 27.470547, 48.911747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.189978, 27.293095, 48.902237>,  <28.404993, 27.186623, 48.896530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.189978, 27.293095, 48.902237>,  <27.831619, 27.470547, 48.911747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189978, 27.293095, 48.902237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400611, -0.829828, 0.388453,
		-0.192056, -0.338490, -0.921162,
		0.895894, -0.443632, -0.023771,
		28.458746, 27.160006, 48.895107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.284939, 35.555443, 38.103039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629383, 35.387901, 38.218315>,  <37.836048, 35.287376, 38.287483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629383, 35.387901, 38.218315>,  <37.284939, 35.555443, 38.103039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629383, 35.387901, 38.218315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495178, -0.562388, 0.662207,
		-0.115288, -0.712940, -0.691683,
		0.861108, -0.418851, 0.288196,
		37.887714, 35.262245, 38.304775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232929, 34.827969, 38.039158>,  <37.284939, 35.555443, 38.103039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232929, 34.827969, 38.039158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503094, 34.918102, 38.320026>,  <37.665192, 34.972183, 38.488548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503094, 34.918102, 38.320026>,  <37.232929, 34.827969, 38.039158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503094, 34.918102, 38.320026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577123, -0.431229, 0.693520,
		0.459072, -0.873650, -0.161210,
		0.675412, 0.225338, 0.702169,
		37.705719, 34.985703, 38.530678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225597, 34.222641, 38.435577>,  <37.232929, 34.827969, 38.039158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225597, 34.222641, 38.435577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390179, 34.483532, 38.690231>,  <37.488930, 34.640068, 38.843021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.390179, 34.483532, 38.690231>,  <37.225597, 34.222641, 38.435577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390179, 34.483532, 38.690231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572908, -0.358169, 0.737219,
		0.708858, -0.668064, 0.226297,
		0.411457, 0.652231, 0.636630,
		37.513615, 34.679203, 38.881222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390553, 33.867390, 39.021278>,  <37.225597, 34.222641, 38.435577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390553, 33.867390, 39.021278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376415, 34.232658, 39.183693>,  <37.367931, 34.451820, 39.281143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376415, 34.232658, 39.183693>,  <37.390553, 33.867390, 39.021278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376415, 34.232658, 39.183693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446857, -0.377856, 0.810890,
		0.893907, -0.152779, 0.421413,
		-0.035346, 0.913172, 0.406039,
		37.365810, 34.506611, 39.305504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301044, 33.725079, 39.685825>,  <37.390553, 33.867390, 39.021278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301044, 33.725079, 39.685825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214924, 34.115562, 39.675568>,  <37.163250, 34.349854, 39.669415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214924, 34.115562, 39.675568>,  <37.301044, 33.725079, 39.685825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214924, 34.115562, 39.675568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628736, -0.118480, 0.768540,
		0.747218, 0.181595, 0.639288,
		-0.215306, 0.976210, -0.025645,
		37.150333, 34.408424, 39.667873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194389, 33.893066, 40.464325>,  <37.301044, 33.725079, 39.685825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194389, 33.893066, 40.464325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037460, 34.184551, 40.239803>,  <36.943302, 34.359444, 40.105091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037460, 34.184551, 40.239803>,  <37.194389, 33.893066, 40.464325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037460, 34.184551, 40.239803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744499, 0.106803, 0.659025,
		0.540191, 0.676436, 0.500628,
		-0.392320, 0.728716, -0.561301,
		36.919765, 34.403168, 40.071415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063076, 34.482006, 40.874710>,  <37.194389, 33.893066, 40.464325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063076, 34.482006, 40.874710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805134, 34.516926, 40.570992>,  <36.650368, 34.537876, 40.388760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805134, 34.516926, 40.570992>,  <37.063076, 34.482006, 40.874710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805134, 34.516926, 40.570992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760987, 0.019080, 0.648486,
		0.071100, 0.996000, 0.054130,
		-0.644859, 0.087300, -0.759299,
		36.611675, 34.543118, 40.343201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495167, 34.848049, 41.221134>,  <37.063076, 34.482006, 40.874710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495167, 34.848049, 41.221134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325706, 34.752205, 40.871708>,  <36.224030, 34.694698, 40.662052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325706, 34.752205, 40.871708>,  <36.495167, 34.848049, 41.221134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325706, 34.752205, 40.871708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900778, 0.009753, 0.434171,
		-0.095512, 0.970820, -0.219967,
		-0.423647, -0.239610, -0.873562,
		36.198612, 34.680321, 40.609638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020866, 35.364246, 41.064743>,  <36.495167, 34.848049, 41.221134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020866, 35.364246, 41.064743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915054, 35.025940, 40.879398>,  <35.851566, 34.822956, 40.768192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915054, 35.025940, 40.879398>,  <36.020866, 35.364246, 41.064743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915054, 35.025940, 40.879398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850442, -0.021973, 0.525610,
		-0.454724, 0.533104, -0.713461,
		-0.264528, -0.845764, -0.463365,
		35.835697, 34.772209, 40.740387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295326, 35.321335, 40.945229>,  <36.020866, 35.364246, 41.064743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295326, 35.321335, 40.945229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390247, 34.933212, 40.926525>,  <35.447201, 34.700336, 40.915302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390247, 34.933212, 40.926525>,  <35.295326, 35.321335, 40.945229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390247, 34.933212, 40.926525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680457, -0.200383, 0.704858,
		-0.693300, -0.135451, -0.707806,
		0.237306, -0.970309, -0.046757,
		35.461441, 34.642120, 40.912498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588284, 34.957680, 40.951767>,  <35.295326, 35.321335, 40.945229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588284, 34.957680, 40.951767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875473, 34.694908, 41.043819>,  <35.047787, 34.537243, 41.099049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875473, 34.694908, 41.043819>,  <34.588284, 34.957680, 40.951767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875473, 34.694908, 41.043819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546785, -0.327681, 0.770488,
		-0.430751, -0.679017, -0.594466,
		0.717970, -0.656933, 0.230127,
		35.090866, 34.497829, 41.112858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203022, 34.257847, 40.916439>,  <34.588284, 34.957680, 40.951767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203022, 34.257847, 40.916439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533802, 34.212330, 41.136692>,  <34.732269, 34.185020, 41.268845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533802, 34.212330, 41.136692>,  <34.203022, 34.257847, 40.916439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533802, 34.212330, 41.136692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530914, -0.480490, 0.698040,
		0.185145, -0.869587, -0.457756,
		0.826953, -0.113790, 0.550636,
		34.781887, 34.178192, 41.301884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107391, 33.731621, 40.382961>,  <34.203022, 34.257847, 40.916439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107391, 33.731621, 40.382961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777328, 33.686954, 40.161457>,  <33.579292, 33.660156, 40.028557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777328, 33.686954, 40.161457>,  <34.107391, 33.731621, 40.382961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777328, 33.686954, 40.161457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422540, 0.528619, -0.736222,
		0.374937, -0.841483, -0.389011,
		-0.825156, -0.111664, -0.553759,
		33.529781, 33.653454, 39.995331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370262, 33.476227, 39.752071>,  <34.107391, 33.731621, 40.382961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370262, 33.476227, 39.752071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009525, 33.629623, 39.672455>,  <33.793083, 33.721661, 39.624687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009525, 33.629623, 39.672455>,  <34.370262, 33.476227, 39.752071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009525, 33.629623, 39.672455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291466, 0.199905, -0.935460,
		-0.318953, -0.901649, -0.292057,
		-0.901841, 0.383492, -0.199040,
		33.738972, 33.744671, 39.612743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231651, 33.192799, 39.039494>,  <34.370262, 33.476227, 39.752071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231651, 33.192799, 39.039494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011814, 33.518799, 39.112946>,  <33.879910, 33.714397, 39.157017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011814, 33.518799, 39.112946>,  <34.231651, 33.192799, 39.039494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011814, 33.518799, 39.112946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231709, 0.359880, -0.903769,
		-0.802654, -0.454161, -0.386632,
		-0.549597, 0.814999, 0.183626,
		33.846935, 33.763298, 39.168034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774715, 33.232342, 38.466705>,  <34.231651, 33.192799, 39.039494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774715, 33.232342, 38.466705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813198, 33.586510, 38.648598>,  <33.836288, 33.799011, 38.757732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813198, 33.586510, 38.648598>,  <33.774715, 33.232342, 38.466705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813198, 33.586510, 38.648598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151601, 0.438485, -0.885860,
		-0.983749, 0.154162, -0.092046,
		0.096206, 0.885418, 0.454731,
		33.842060, 33.852135, 38.785015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355267, 33.637939, 38.200504>,  <33.774715, 33.232342, 38.466705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355267, 33.637939, 38.200504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601315, 33.905006, 38.368240>,  <33.748943, 34.065247, 38.468884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601315, 33.905006, 38.368240>,  <33.355267, 33.637939, 38.200504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601315, 33.905006, 38.368240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021068, 0.517755, -0.855269,
		-0.788150, 0.534930, 0.304416,
		0.615122, 0.667667, 0.419339,
		33.785851, 34.105305, 38.494041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113144, 34.248531, 38.023632>,  <33.355267, 33.637939, 38.200504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113144, 34.248531, 38.023632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477085, 34.367485, 38.139374>,  <33.695450, 34.438858, 38.208820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477085, 34.367485, 38.139374>,  <33.113144, 34.248531, 38.023632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477085, 34.367485, 38.139374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016067, 0.671593, -0.740746,
		-0.414613, 0.678622, 0.606275,
		0.909856, 0.297382, 0.289354,
		33.750042, 34.456699, 38.226181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039135, 35.014420, 38.075500>,  <33.113144, 34.248531, 38.023632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039135, 35.014420, 38.075500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419029, 34.904560, 38.015411>,  <33.646965, 34.838642, 37.979359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419029, 34.904560, 38.015411>,  <33.039135, 35.014420, 38.075500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419029, 34.904560, 38.015411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075560, 0.666788, -0.741407,
		0.303794, 0.692791, 0.654026,
		0.949737, -0.274653, -0.150218,
		33.703949, 34.822163, 37.970345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372604, 35.519524, 37.722168>,  <33.039135, 35.014420, 38.075500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372604, 35.519524, 37.722168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645889, 35.239582, 37.638824>,  <33.809860, 35.071617, 37.588818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645889, 35.239582, 37.638824>,  <33.372604, 35.519524, 37.722168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645889, 35.239582, 37.638824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254098, 0.495366, -0.830691,
		0.684580, 0.514598, 0.516275,
		0.683216, -0.699858, -0.208359,
		33.850853, 35.029625, 37.576317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990662, 35.893406, 37.598431>,  <33.372604, 35.519524, 37.722168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990662, 35.893406, 37.598431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032310, 35.535492, 37.424755>,  <34.057301, 35.320744, 37.320549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032310, 35.535492, 37.424755>,  <33.990662, 35.893406, 37.598431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032310, 35.535492, 37.424755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340223, 0.442274, -0.829844,
		0.934562, -0.061313, 0.350478,
		0.104127, -0.894782, -0.434193,
		34.063549, 35.267059, 37.294498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442677, 36.089676, 37.011028>,  <33.990662, 35.893406, 37.598431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442677, 36.089676, 37.011028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307743, 35.719219, 36.943531>,  <34.226784, 35.496944, 36.903034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307743, 35.719219, 36.943531>,  <34.442677, 36.089676, 37.011028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307743, 35.719219, 36.943531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001479, 0.178728, -0.983897,
		0.941383, -0.332153, -0.058922,
		-0.337335, -0.926138, -0.168743,
		34.206543, 35.441380, 36.892910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820091, 35.751137, 36.390671>,  <34.442677, 36.089676, 37.011028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820091, 35.751137, 36.390671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484600, 35.536682, 36.428810>,  <34.283306, 35.408009, 36.451694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484600, 35.536682, 36.428810>,  <34.820091, 35.751137, 36.390671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484600, 35.536682, 36.428810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207144, 0.152194, -0.966400,
		0.503614, -0.830296, -0.238708,
		-0.838728, -0.536140, 0.095344,
		34.232983, 35.375839, 36.457413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815624, 35.217697, 35.852253>,  <34.820091, 35.751137, 36.390671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815624, 35.217697, 35.852253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440617, 35.288803, 35.971893>,  <34.215614, 35.331467, 36.043678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440617, 35.288803, 35.971893>,  <34.815624, 35.217697, 35.852253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440617, 35.288803, 35.971893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271499, 0.163875, -0.948384,
		-0.217606, -0.970332, -0.105372,
		-0.937516, 0.177765, 0.299105,
		34.159363, 35.342133, 36.061626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289612, 34.628746, 35.524364>,  <34.815624, 35.217697, 35.852253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289612, 34.628746, 35.524364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121147, 34.984367, 35.596146>,  <34.020069, 35.197742, 35.639214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121147, 34.984367, 35.596146>,  <34.289612, 34.628746, 35.524364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121147, 34.984367, 35.596146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313764, 0.042827, -0.948535,
		-0.850986, -0.455791, 0.260917,
		-0.421159, 0.889056, 0.179456,
		33.994801, 35.251083, 35.649982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463196, 34.597900, 35.560089>,  <34.289612, 34.628746, 35.524364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463196, 34.597900, 35.560089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200352, 34.297455, 35.585499>,  <33.042645, 34.117188, 35.600742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200352, 34.297455, 35.585499>,  <33.463196, 34.597900, 35.560089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200352, 34.297455, 35.585499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297508, 0.180996, -0.937406,
		0.692604, -0.634874, -0.342397,
		-0.657107, -0.751116, 0.063521,
		33.003220, 34.072121, 35.604557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281418, 34.415062, 34.957081>,  <33.463196, 34.597900, 35.560089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281418, 34.415062, 34.957081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956032, 34.266174, 35.135841>,  <32.760799, 34.176842, 35.243099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956032, 34.266174, 35.135841>,  <33.281418, 34.415062, 34.957081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956032, 34.266174, 35.135841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536735, 0.184484, -0.823335,
		0.224024, -0.909622, -0.349860,
		-0.813467, -0.372229, 0.446897,
		32.711990, 34.154507, 35.269913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946026, 34.355217, 34.681995>,  <33.281418, 34.415062, 34.957081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946026, 34.355217, 34.681995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175819, 34.044483, 34.578850>,  <34.313694, 33.858044, 34.516964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175819, 34.044483, 34.578850>,  <33.946026, 34.355217, 34.681995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175819, 34.044483, 34.578850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662269, -0.626282, 0.411303,
		-0.481010, -0.065513, -0.874264,
		0.574482, -0.776839, -0.257861,
		34.348164, 33.811432, 34.501492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594906, 33.867508, 34.123016>,  <33.946026, 34.355217, 34.681995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594906, 33.867508, 34.123016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862911, 33.659863, 34.335281>,  <34.023716, 33.535275, 34.462639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862911, 33.659863, 34.335281>,  <33.594906, 33.867508, 34.123016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862911, 33.659863, 34.335281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702848, -0.673678, 0.228393,
		0.238931, -0.526000, -0.816233,
		0.670013, -0.519117, 0.530661,
		34.063915, 33.504128, 34.494480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595833, 33.109367, 33.882996>,  <33.594906, 33.867508, 34.123016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595833, 33.109367, 33.882996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725346, 33.143105, 34.259941>,  <33.803055, 33.163345, 34.486107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725346, 33.143105, 34.259941>,  <33.595833, 33.109367, 33.882996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725346, 33.143105, 34.259941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603372, -0.748790, 0.274327,
		0.728770, -0.657419, -0.191556,
		0.323783, 0.084341, 0.942364,
		33.822479, 33.168407, 34.542652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510590, 32.411747, 34.181026>,  <33.595833, 33.109367, 33.882996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510590, 32.411747, 34.181026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603725, 32.589329, 34.527134>,  <33.659607, 32.695877, 34.734798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603725, 32.589329, 34.527134>,  <33.510590, 32.411747, 34.181026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603725, 32.589329, 34.527134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477478, -0.722919, 0.499403,
		0.847232, -0.529426, 0.043658,
		0.232835, 0.443956, 0.865269,
		33.673576, 32.722515, 34.786716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944889, 32.020241, 34.594376>,  <33.510590, 32.411747, 34.181026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944889, 32.020241, 34.594376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752914, 32.260693, 34.849968>,  <33.637730, 32.404964, 35.003323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752914, 32.260693, 34.849968>,  <33.944889, 32.020241, 34.594376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752914, 32.260693, 34.849968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325842, -0.798392, 0.506357,
		0.814546, 0.034813, 0.579054,
		-0.479940, 0.601131, 0.638983,
		33.608932, 32.441032, 35.041664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179249, 31.792820, 35.263683>,  <33.944889, 32.020241, 34.594376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179249, 31.792820, 35.263683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846439, 32.009956, 35.309399>,  <33.646755, 32.140240, 35.336826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846439, 32.009956, 35.309399>,  <34.179249, 31.792820, 35.263683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846439, 32.009956, 35.309399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355207, -0.679575, 0.641877,
		0.426105, 0.493460, 0.758243,
		-0.832023, 0.542840, 0.114290,
		33.596832, 32.172810, 35.343685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033222, 31.889740, 36.005405>,  <34.179249, 31.792820, 35.263683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033222, 31.889740, 36.005405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671391, 31.977169, 35.859005>,  <33.454292, 32.029625, 35.771164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671391, 31.977169, 35.859005>,  <34.033222, 31.889740, 36.005405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671391, 31.977169, 35.859005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417915, -0.624094, 0.660192,
		-0.084118, 0.750155, 0.655890,
		-0.904584, 0.218572, -0.365998,
		33.400017, 32.042740, 35.749207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598236, 31.951063, 36.585590>,  <34.033222, 31.889740, 36.005405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598236, 31.951063, 36.585590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333767, 31.934446, 36.285957>,  <33.175083, 31.924477, 36.106178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333767, 31.934446, 36.285957>,  <33.598236, 31.951063, 36.585590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333767, 31.934446, 36.285957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559421, -0.637999, 0.529155,
		-0.499895, 0.768916, 0.398590,
		-0.661176, -0.041542, -0.749080,
		33.135414, 31.921984, 36.061234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949467, 32.120003, 36.924065>,  <33.598236, 31.951063, 36.585590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949467, 32.120003, 36.924065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884506, 31.909309, 36.590313>,  <32.845531, 31.782894, 36.390064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884506, 31.909309, 36.590313>,  <32.949467, 32.120003, 36.924065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884506, 31.909309, 36.590313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509119, -0.679619, 0.528124,
		-0.845237, 0.510562, -0.157800,
		-0.162397, -0.526729, -0.834376,
		32.835789, 31.751291, 36.340000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208527, 31.951233, 36.857624>,  <32.949467, 32.120003, 36.924065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208527, 31.951233, 36.857624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400040, 31.670296, 36.646915>,  <32.514946, 31.501734, 36.520493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400040, 31.670296, 36.646915>,  <32.208527, 31.951233, 36.857624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400040, 31.670296, 36.646915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468242, -0.711829, 0.523496,
		-0.742642, -0.003986, -0.669677,
		0.478783, -0.702341, -0.526767,
		32.543674, 31.459593, 36.488884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790941, 31.468721, 36.917274>,  <32.208527, 31.951233, 36.857624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790941, 31.468721, 36.917274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111507, 31.282293, 36.767334>,  <32.303848, 31.170437, 36.677368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111507, 31.282293, 36.767334>,  <31.790941, 31.468721, 36.917274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111507, 31.282293, 36.767334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237795, -0.823351, 0.515312,
		-0.548806, -0.323841, -0.770674,
		0.801415, -0.466069, -0.374852,
		32.351933, 31.142473, 36.654877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516079, 30.851526, 36.576748>,  <31.790941, 31.468721, 36.917274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516079, 30.851526, 36.576748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901855, 30.812813, 36.675125>,  <32.133320, 30.789585, 36.734154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901855, 30.812813, 36.675125>,  <31.516079, 30.851526, 36.576748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901855, 30.812813, 36.675125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226058, -0.784218, 0.577841,
		0.136950, -0.612891, -0.778209,
		0.964439, -0.096785, 0.245947,
		32.191189, 30.783777, 36.748909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564814, 30.212337, 36.647518>,  <31.516079, 30.851526, 36.576748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564814, 30.212337, 36.647518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878885, 30.345493, 36.856396>,  <32.067329, 30.425386, 36.981720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878885, 30.345493, 36.856396>,  <31.564814, 30.212337, 36.647518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878885, 30.345493, 36.856396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047702, -0.808217, 0.586950,
		0.617431, -0.485769, -0.618714,
		0.785177, 0.332887, 0.522190,
		32.114437, 30.445360, 37.013054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945721, 29.636723, 36.766674>,  <31.564814, 30.212337, 36.647518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945721, 29.636723, 36.766674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085667, 29.889206, 37.043564>,  <32.169636, 30.040695, 37.209698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085667, 29.889206, 37.043564>,  <31.945721, 29.636723, 36.766674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085667, 29.889206, 37.043564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001205, -0.738617, 0.674124,
		0.936799, -0.236687, -0.257656,
		0.349866, 0.631209, 0.692221,
		32.190628, 30.078569, 37.251228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537838, 29.314869, 37.062546>,  <31.945721, 29.636723, 36.766674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537838, 29.314869, 37.062546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385223, 29.575504, 37.324802>,  <32.293655, 29.731886, 37.482155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385223, 29.575504, 37.324802>,  <32.537838, 29.314869, 37.062546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385223, 29.575504, 37.324802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010523, -0.706190, 0.707944,
		0.924295, 0.277004, 0.262578,
		-0.381534, 0.651586, 0.655643,
		32.270763, 29.770981, 37.521496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862850, 29.070578, 37.675182>,  <32.537838, 29.314869, 37.062546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862850, 29.070578, 37.675182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560383, 29.298244, 37.804340>,  <32.378902, 29.434845, 37.881836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560383, 29.298244, 37.804340>,  <32.862850, 29.070578, 37.675182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560383, 29.298244, 37.804340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064056, -0.555448, 0.829081,
		0.651238, 0.606239, 0.456469,
		-0.756166, 0.569168, 0.322895,
		32.333534, 29.468994, 37.901211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996365, 29.032719, 38.355076>,  <32.862850, 29.070578, 37.675182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996365, 29.032719, 38.355076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612061, 29.137051, 38.317326>,  <32.381477, 29.199650, 38.294674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612061, 29.137051, 38.317326>,  <32.996365, 29.032719, 38.355076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612061, 29.137051, 38.317326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227589, -0.546771, 0.805757,
		0.158561, 0.795620, 0.584677,
		-0.960761, 0.260828, -0.094378,
		32.323833, 29.215300, 38.289013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782166, 29.294025, 39.012894>,  <32.996365, 29.032719, 38.355076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782166, 29.294025, 39.012894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448517, 29.176945, 38.825893>,  <32.248325, 29.106695, 38.713692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448517, 29.176945, 38.825893>,  <32.782166, 29.294025, 39.012894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448517, 29.176945, 38.825893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342531, -0.389452, 0.854986,
		-0.432327, 0.873299, 0.224592,
		-0.834126, -0.292704, -0.467502,
		32.198280, 29.089134, 38.685642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251087, 29.387020, 39.447762>,  <32.782166, 29.294025, 39.012894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251087, 29.387020, 39.447762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045521, 29.143835, 39.205681>,  <31.922180, 28.997923, 39.060432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.045521, 29.143835, 39.205681>,  <32.251087, 29.387020, 39.447762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045521, 29.143835, 39.205681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446784, -0.412556, 0.793840,
		-0.732304, 0.678364, -0.059607,
		-0.513921, -0.607964, -0.605198,
		31.891344, 28.961445, 39.024120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552242, 29.405874, 39.722885>,  <32.251087, 29.387020, 39.447762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552242, 29.405874, 39.722885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567192, 29.082458, 39.487984>,  <31.576162, 28.888409, 39.347042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567192, 29.082458, 39.487984>,  <31.552242, 29.405874, 39.722885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567192, 29.082458, 39.487984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405810, -0.549308, 0.730465,
		-0.913193, 0.211012, -0.348644,
		0.037376, -0.808538, -0.587255,
		31.578405, 28.839897, 39.311806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822145, 29.095739, 39.710129>,  <31.552242, 29.405874, 39.722885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822145, 29.095739, 39.710129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083841, 28.813847, 39.600349>,  <31.240858, 28.644711, 39.534481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083841, 28.813847, 39.600349>,  <30.822145, 29.095739, 39.710129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083841, 28.813847, 39.600349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423320, -0.641956, 0.639291,
		-0.626711, -0.302073, -0.718322,
		0.654243, -0.704730, -0.274447,
		31.280113, 28.602427, 39.518013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367804, 28.494282, 39.530773>,  <30.822145, 29.095739, 39.710129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367804, 28.494282, 39.530773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733715, 28.356527, 39.615223>,  <30.953262, 28.273874, 39.665894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733715, 28.356527, 39.615223>,  <30.367804, 28.494282, 39.530773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733715, 28.356527, 39.615223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400481, -0.704832, 0.585515,
		-0.052838, -0.620169, -0.782687,
		0.914781, -0.344388, 0.211124,
		31.008150, 28.253210, 39.678558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387098, 27.868868, 39.365665>,  <30.367804, 28.494282, 39.530773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387098, 27.868868, 39.365665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683004, 27.862703, 39.634743>,  <30.860548, 27.859005, 39.796188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683004, 27.862703, 39.634743>,  <30.387098, 27.868868, 39.365665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683004, 27.862703, 39.634743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449575, -0.755152, 0.477103,
		0.500632, -0.655368, -0.565562,
		0.739764, -0.015410, 0.672690,
		30.904934, 27.858080, 39.836552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634893, 27.217445, 39.352028>,  <30.387098, 27.868868, 39.365665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634893, 27.217445, 39.352028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766844, 27.355259, 39.703590>,  <30.846014, 27.437946, 39.914528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766844, 27.355259, 39.703590>,  <30.634893, 27.217445, 39.352028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766844, 27.355259, 39.703590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528386, -0.704138, 0.474339,
		0.782299, -0.620875, -0.050230,
		0.329874, 0.344534, 0.878908,
		30.865807, 27.458618, 39.967262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661854, 26.656809, 39.729446>,  <30.634893, 27.217445, 39.352028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661854, 26.656809, 39.729446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685974, 26.936401, 40.014484>,  <30.700447, 27.104156, 40.185509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685974, 26.936401, 40.014484>,  <30.661854, 26.656809, 39.729446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685974, 26.936401, 40.014484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612916, -0.537533, 0.579131,
		0.787844, -0.471683, 0.396002,
		0.060302, 0.698980, 0.712594,
		30.704065, 27.146095, 40.228264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884771, 26.264877, 40.280701>,  <30.661854, 26.656809, 39.729446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884771, 26.264877, 40.280701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689167, 26.589952, 40.407448>,  <30.571804, 26.784998, 40.483498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689167, 26.589952, 40.407448>,  <30.884771, 26.264877, 40.280701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689167, 26.589952, 40.407448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530381, -0.565425, 0.631657,
		0.692506, 0.140825, 0.707534,
		-0.489010, 0.812688, 0.316869,
		30.542463, 26.833759, 40.502510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952578, 26.250366, 40.975693>,  <30.884771, 26.264877, 40.280701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952578, 26.250366, 40.975693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629845, 26.479021, 40.916031>,  <30.436205, 26.616215, 40.880234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629845, 26.479021, 40.916031>,  <30.952578, 26.250366, 40.975693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629845, 26.479021, 40.916031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481789, -0.490556, 0.726109,
		0.341904, 0.657711, 0.671207,
		-0.806834, 0.571639, -0.149155,
		30.387794, 26.650513, 40.871284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444477, 26.450140, 41.388271>,  <30.952578, 26.250366, 40.975693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444477, 26.450140, 41.388271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725853, 26.211826, 41.543301>,  <31.894678, 26.068838, 41.636318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725853, 26.211826, 41.543301>,  <31.444477, 26.450140, 41.388271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725853, 26.211826, 41.543301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655141, 0.332064, -0.678619,
		0.275613, 0.731281, 0.623911,
		0.703440, -0.595786, 0.387571,
		31.936886, 26.033091, 41.659573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116196, 26.913500, 41.533638>,  <31.444477, 26.450140, 41.388271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116196, 26.913500, 41.533638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208946, 26.528412, 41.477924>,  <32.264599, 26.297359, 41.444496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208946, 26.528412, 41.477924>,  <32.116196, 26.913500, 41.533638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208946, 26.528412, 41.477924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722768, 0.266346, -0.637704,
		0.651028, 0.047203, 0.757584,
		0.231881, -0.962721, -0.139282,
		32.278511, 26.239595, 41.436138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768669, 26.893387, 41.465122>,  <32.116196, 26.913500, 41.533638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768669, 26.893387, 41.465122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710907, 26.522581, 41.326675>,  <32.676250, 26.300098, 41.243607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710907, 26.522581, 41.326675>,  <32.768669, 26.893387, 41.465122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710907, 26.522581, 41.326675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729098, 0.136805, -0.670597,
		0.669002, -0.349186, 0.656129,
		-0.144401, -0.927013, -0.346114,
		32.667587, 26.244476, 41.222839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435711, 26.657478, 41.457630>,  <32.768669, 26.893387, 41.465122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435711, 26.657478, 41.457630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201763, 26.447706, 41.210114>,  <33.061394, 26.321844, 41.061604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201763, 26.447706, 41.210114>,  <33.435711, 26.657478, 41.457630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201763, 26.447706, 41.210114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728556, -0.004307, -0.684973,
		0.356554, -0.851444, 0.384594,
		-0.584873, -0.524429, -0.618788,
		33.026302, 26.290379, 41.024475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888405, 26.104916, 41.208504>,  <33.435711, 26.657478, 41.457630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888405, 26.104916, 41.208504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590019, 26.163872, 40.948715>,  <33.410988, 26.199245, 40.792843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590019, 26.163872, 40.948715>,  <33.888405, 26.104916, 41.208504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590019, 26.163872, 40.948715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628256, -0.167823, -0.759691,
		-0.220968, -0.974737, 0.032591,
		-0.745968, 0.147392, -0.649467,
		33.366230, 26.208088, 40.753876>
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
