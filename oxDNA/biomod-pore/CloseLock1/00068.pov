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
	<24.463482, 34.517952, 34.934097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.470545, 34.893330, 35.072086>,  <24.474783, 35.118557, 35.154881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.470545, 34.893330, 35.072086>,  <24.463482, 34.517952, 34.934097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.470545, 34.893330, 35.072086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064224, 0.343246, -0.937047,
		-0.997779, 0.038702, -0.054209,
		0.017659, 0.938448, 0.344969,
		24.475842, 35.174866, 35.175575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168238, 34.110012, 34.811207>,  <24.463482, 34.517952, 34.934097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168238, 34.110012, 34.811207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410851, 34.290688, 34.549488>,  <25.556417, 34.399094, 34.392456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410851, 34.290688, 34.549488>,  <25.168238, 34.110012, 34.811207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410851, 34.290688, 34.549488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770496, 0.536918, -0.343591,
		0.196107, 0.712529, 0.673680,
		0.606530, 0.451687, -0.654294,
		25.592810, 34.426193, 34.353199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.153894, 34.851532, 34.955692>,  <25.168238, 34.110012, 34.811207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.153894, 34.851532, 34.955692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273195, 34.793488, 34.578335>,  <25.344776, 34.758659, 34.351921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273195, 34.793488, 34.578335>,  <25.153894, 34.851532, 34.955692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.273195, 34.793488, 34.578335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734415, 0.596413, -0.323924,
		0.609657, 0.789451, 0.071308,
		0.298251, -0.145112, -0.943392,
		25.362671, 34.749954, 34.295319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.341257, 35.479145, 34.645382>,  <25.153894, 34.851532, 34.955692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.341257, 35.479145, 34.645382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205269, 35.218243, 34.374390>,  <25.123676, 35.061699, 34.211796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205269, 35.218243, 34.374390>,  <25.341257, 35.479145, 34.645382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.205269, 35.218243, 34.374390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659060, 0.679138, -0.323128,
		0.670863, 0.336641, -0.660769,
		-0.339976, -0.652261, -0.677475,
		25.103277, 35.022564, 34.171146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479826, 35.771244, 33.992981>,  <25.341257, 35.479145, 34.645382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479826, 35.771244, 33.992981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179182, 35.507477, 33.986698>,  <24.998796, 35.349216, 33.982929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179182, 35.507477, 33.986698>,  <25.479826, 35.771244, 33.992981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179182, 35.507477, 33.986698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582686, 0.674929, -0.452712,
		0.309129, -0.331111, -0.891518,
		-0.751609, -0.659421, -0.015706,
		24.953699, 35.309650, 33.981987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882723, 35.174492, 34.215580>,  <25.479826, 35.771244, 33.992981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882723, 35.174492, 34.215580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138128, 34.910503, 34.057220>,  <26.291372, 34.752110, 33.962204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138128, 34.910503, 34.057220>,  <25.882723, 35.174492, 34.215580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138128, 34.910503, 34.057220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387629, 0.720187, -0.575391,
		0.664863, 0.213935, 0.715674,
		0.638515, -0.659972, -0.395898,
		26.329683, 34.712513, 33.938450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553333, 35.506111, 34.070145>,  <25.882723, 35.174492, 34.215580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553333, 35.506111, 34.070145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580877, 35.185650, 33.832348>,  <26.597404, 34.993374, 33.689671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580877, 35.185650, 33.832348>,  <26.553333, 35.506111, 34.070145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580877, 35.185650, 33.832348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427006, 0.562229, -0.708213,
		0.901623, -0.205083, 0.380811,
		0.068860, -0.801149, -0.594490,
		26.601536, 34.945305, 33.653999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215937, 35.498947, 33.902687>,  <26.553333, 35.506111, 34.070145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215937, 35.498947, 33.902687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065001, 35.271923, 33.609978>,  <26.974440, 35.135708, 33.434353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065001, 35.271923, 33.609978>,  <27.215937, 35.498947, 33.902687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065001, 35.271923, 33.609978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482165, 0.554231, -0.678487,
		0.790653, -0.608855, 0.064523,
		-0.377340, -0.567559, -0.731773,
		26.951799, 35.101654, 33.390446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729650, 35.518093, 33.533340>,  <27.215937, 35.498947, 33.902687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729650, 35.518093, 33.533340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450737, 35.381351, 33.281330>,  <27.283388, 35.299309, 33.130123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450737, 35.381351, 33.281330>,  <27.729650, 35.518093, 33.533340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450737, 35.381351, 33.281330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513071, 0.375756, -0.771729,
		0.500554, -0.861362, -0.086614,
		-0.697284, -0.341853, -0.630026,
		27.241552, 35.278797, 33.092323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057291, 35.108612, 32.940399>,  <27.729650, 35.518093, 33.533340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057291, 35.108612, 32.940399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697615, 35.193455, 32.787315>,  <27.481810, 35.244362, 32.695465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697615, 35.193455, 32.787315>,  <28.057291, 35.108612, 32.940399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697615, 35.193455, 32.787315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434459, 0.328870, -0.838504,
		-0.051990, -0.920247, -0.387869,
		-0.899190, 0.212108, -0.382712,
		27.427858, 35.257088, 32.672501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937231, 34.793777, 32.341469>,  <28.057291, 35.108612, 32.940399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937231, 34.793777, 32.341469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677084, 35.094891, 32.300789>,  <27.520996, 35.275558, 32.276382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677084, 35.094891, 32.300789>,  <27.937231, 34.793777, 32.341469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677084, 35.094891, 32.300789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394197, 0.220017, -0.892301,
		-0.649331, -0.620414, -0.439836,
		-0.650368, 0.752781, -0.101701,
		27.481974, 35.320724, 32.270279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832035, 34.750942, 31.623524>,  <27.937231, 34.793777, 32.341469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832035, 34.750942, 31.623524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697538, 35.112343, 31.729830>,  <27.616840, 35.329182, 31.793613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.697538, 35.112343, 31.729830>,  <27.832035, 34.750942, 31.623524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697538, 35.112343, 31.729830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102575, 0.315651, -0.943315,
		-0.936172, -0.289923, -0.198811,
		-0.336244, 0.903498, 0.265765,
		27.596664, 35.383392, 31.809559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318745, 34.934814, 31.169682>,  <27.832035, 34.750942, 31.623524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318745, 34.934814, 31.169682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452385, 35.287067, 31.304060>,  <27.532570, 35.498421, 31.384687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452385, 35.287067, 31.304060>,  <27.318745, 34.934814, 31.169682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452385, 35.287067, 31.304060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078297, 0.381126, -0.921202,
		-0.939279, 0.281473, 0.196286,
		0.334103, 0.880634, 0.335945,
		27.552616, 35.551258, 31.404844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030207, 35.409428, 30.648895>,  <27.318745, 34.934814, 31.169682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030207, 35.409428, 30.648895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317629, 35.595291, 30.855883>,  <27.490082, 35.706810, 30.980074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317629, 35.595291, 30.855883>,  <27.030207, 35.409428, 30.648895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317629, 35.595291, 30.855883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275109, 0.493457, -0.825115,
		-0.638742, 0.735251, 0.226746,
		0.718556, 0.464656, 0.517466,
		27.533195, 35.734688, 31.011122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958509, 36.101566, 30.507139>,  <27.030207, 35.409428, 30.648895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958509, 36.101566, 30.507139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342722, 36.033714, 30.595327>,  <27.573250, 35.993004, 30.648241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342722, 36.033714, 30.595327>,  <26.958509, 36.101566, 30.507139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342722, 36.033714, 30.595327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277676, 0.537135, -0.796481,
		0.016685, 0.826264, 0.563036,
		0.960530, -0.169631, 0.220472,
		27.630880, 35.982826, 30.661469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237686, 36.733784, 30.406096>,  <26.958509, 36.101566, 30.507139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237686, 36.733784, 30.406096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551586, 36.487072, 30.430605>,  <27.739925, 36.339046, 30.445311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.551586, 36.487072, 30.430605>,  <27.237686, 36.733784, 30.406096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551586, 36.487072, 30.430605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382054, 0.403508, -0.831394,
		0.488063, 0.675844, 0.552295,
		0.784748, -0.616779, 0.061272,
		27.787010, 36.302040, 30.448986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894260, 37.132660, 30.423962>,  <27.237686, 36.733784, 30.406096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894260, 37.132660, 30.423962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996435, 36.773315, 30.281021>,  <28.057739, 36.557709, 30.195257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.996435, 36.773315, 30.281021>,  <27.894260, 37.132660, 30.423962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.996435, 36.773315, 30.281021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525148, 0.439257, -0.728885,
		0.811771, -0.001480, 0.583974,
		0.255436, -0.898360, -0.357353,
		28.073067, 36.503807, 30.173815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632248, 37.101543, 30.378950>,  <27.894260, 37.132660, 30.423962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632248, 37.101543, 30.378950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504717, 36.809147, 30.137621>,  <28.428198, 36.633709, 29.992823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.504717, 36.809147, 30.137621>,  <28.632248, 37.101543, 30.378950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504717, 36.809147, 30.137621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366524, 0.491932, -0.789723,
		0.874076, -0.472919, 0.111085,
		-0.318828, -0.730993, -0.603322,
		28.409069, 36.589848, 29.956625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242804, 36.980019, 29.849346>,  <28.632248, 37.101543, 30.378950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242804, 36.980019, 29.849346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914251, 36.826332, 29.680723>,  <28.717119, 36.734119, 29.579550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914251, 36.826332, 29.680723>,  <29.242804, 36.980019, 29.849346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914251, 36.826332, 29.680723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306859, 0.325340, -0.894422,
		0.480803, -0.864019, -0.149328,
		-0.821381, -0.384219, -0.421556,
		28.667837, 36.711067, 29.554256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547316, 36.450054, 29.354034>,  <29.242804, 36.980019, 29.849346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547316, 36.450054, 29.354034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178865, 36.543522, 29.229502>,  <28.957796, 36.599602, 29.154781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178865, 36.543522, 29.229502>,  <29.547316, 36.450054, 29.354034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178865, 36.543522, 29.229502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347077, 0.130863, -0.928662,
		-0.176261, -0.963469, -0.201643,
		-0.921124, 0.233672, -0.311332,
		28.902529, 36.613625, 29.136103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589018, 36.101845, 28.775003>,  <29.547316, 36.450054, 29.354034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589018, 36.101845, 28.775003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295584, 36.371780, 28.742874>,  <29.119524, 36.533741, 28.723597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295584, 36.371780, 28.742874>,  <29.589018, 36.101845, 28.775003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295584, 36.371780, 28.742874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409613, 0.344743, -0.844612,
		-0.542283, -0.652496, -0.529319,
		-0.733585, 0.674835, -0.080323,
		29.075508, 36.574230, 28.718777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350674, 35.933968, 28.073526>,  <29.589018, 36.101845, 28.775003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350674, 35.933968, 28.073526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230961, 36.311111, 28.132101>,  <29.159132, 36.537399, 28.167246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230961, 36.311111, 28.132101>,  <29.350674, 35.933968, 28.073526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230961, 36.311111, 28.132101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172392, 0.204378, -0.963593,
		-0.938461, -0.263144, -0.223709,
		-0.299284, 0.942860, 0.146437,
		29.141176, 36.593971, 28.176031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999395, 36.040871, 27.502497>,  <29.350674, 35.933968, 28.073526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999395, 36.040871, 27.502497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031269, 36.411392, 27.649801>,  <29.050392, 36.633705, 27.738184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031269, 36.411392, 27.649801>,  <28.999395, 36.040871, 27.502497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031269, 36.411392, 27.649801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157682, 0.353071, -0.922213,
		-0.984270, 0.131553, -0.117927,
		0.079683, 0.926302, 0.368261,
		29.055174, 36.689281, 27.760279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622112, 36.556164, 27.086411>,  <28.999395, 36.040871, 27.502497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622112, 36.556164, 27.086411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889132, 36.790421, 27.270323>,  <29.049343, 36.930977, 27.380671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889132, 36.790421, 27.270323>,  <28.622112, 36.556164, 27.086411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889132, 36.790421, 27.270323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238856, 0.416437, -0.877228,
		-0.705214, 0.695414, 0.138107,
		0.667549, 0.585645, 0.459780,
		29.089396, 36.966114, 27.408257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.520224, 37.114731, 26.780672>,  <28.622112, 36.556164, 27.086411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.520224, 37.114731, 26.780672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884806, 37.160244, 26.938812>,  <29.103556, 37.187553, 27.033697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884806, 37.160244, 26.938812>,  <28.520224, 37.114731, 26.780672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884806, 37.160244, 26.938812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369432, 0.196477, -0.908250,
		-0.181023, 0.973884, 0.137044,
		0.911456, 0.113786, 0.395350,
		29.158243, 37.194378, 27.057417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956388, 37.768528, 26.778116>,  <28.520224, 37.114731, 26.780672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956388, 37.768528, 26.778116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204021, 37.457268, 26.735750>,  <29.352602, 37.270512, 26.710331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204021, 37.457268, 26.735750>,  <28.956388, 37.768528, 26.778116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204021, 37.457268, 26.735750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301790, 0.360245, -0.882693,
		0.725022, 0.514497, 0.457860,
		0.619084, -0.778149, -0.105915,
		29.389748, 37.223824, 26.703976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675331, 37.900032, 26.740042>,  <28.956388, 37.768528, 26.778116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675331, 37.900032, 26.740042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602943, 37.561398, 26.539825>,  <29.559511, 37.358215, 26.419697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602943, 37.561398, 26.539825>,  <29.675331, 37.900032, 26.740042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602943, 37.561398, 26.539825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297049, 0.438123, -0.848416,
		0.937557, -0.302220, 0.172192,
		-0.180967, -0.846588, -0.500540,
		29.548653, 37.307423, 26.389664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241583, 37.876766, 26.247877>,  <29.675331, 37.900032, 26.740042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241583, 37.876766, 26.247877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913498, 37.676620, 26.136965>,  <29.716646, 37.556534, 26.070417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913498, 37.676620, 26.136965>,  <30.241583, 37.876766, 26.247877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913498, 37.676620, 26.136965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089655, 0.366277, -0.926177,
		0.564990, -0.784521, -0.255565,
		-0.820213, -0.500368, -0.277279,
		29.667435, 37.526512, 26.053782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392336, 37.546322, 25.619822>,  <30.241583, 37.876766, 26.247877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392336, 37.546322, 25.619822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998009, 37.612309, 25.632179>,  <29.761414, 37.651901, 25.639595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998009, 37.612309, 25.632179>,  <30.392336, 37.546322, 25.619822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998009, 37.612309, 25.632179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052366, 0.477227, -0.877218,
		-0.159454, -0.863157, -0.479097,
		-0.985815, 0.164964, 0.030895,
		29.702265, 37.661797, 25.641447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942482, 37.302864, 25.006411>,  <30.392336, 37.546322, 25.619822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942482, 37.302864, 25.006411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765467, 37.610218, 25.191339>,  <29.659258, 37.794632, 25.302298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765467, 37.610218, 25.191339>,  <29.942482, 37.302864, 25.006411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765467, 37.610218, 25.191339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026105, 0.504296, -0.863136,
		-0.896370, -0.394039, -0.203111,
		-0.442537, 0.768387, 0.462322,
		29.632706, 37.840733, 25.330036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252924, 37.378586, 24.792530>,  <29.942482, 37.302864, 25.006411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252924, 37.378586, 24.792530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422699, 37.728088, 24.887531>,  <29.524565, 37.937790, 24.944532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422699, 37.728088, 24.887531>,  <29.252924, 37.378586, 24.792530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422699, 37.728088, 24.887531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017360, 0.254403, -0.966942,
		-0.905290, 0.414531, 0.092810,
		0.424438, 0.873753, 0.237505,
		29.550030, 37.990215, 24.958782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311798, 36.696503, 24.528339>,  <29.252924, 37.378586, 24.792530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311798, 36.696503, 24.528339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016443, 36.847466, 24.751892>,  <28.839231, 36.938046, 24.886024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.016443, 36.847466, 24.751892>,  <29.311798, 36.696503, 24.528339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.016443, 36.847466, 24.751892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354789, -0.922176, 0.154002,
		0.573509, -0.084572, 0.814822,
		-0.738385, 0.377411, 0.558881,
		28.794928, 36.960690, 24.919556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149628, 36.269035, 25.155798>,  <29.311798, 36.696503, 24.528339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149628, 36.269035, 25.155798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828373, 36.448868, 24.999414>,  <28.635620, 36.556767, 24.905584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828373, 36.448868, 24.999414>,  <29.149628, 36.269035, 25.155798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828373, 36.448868, 24.999414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554874, -0.803405, 0.215997,
		-0.216990, 0.390408, 0.894705,
		-0.803138, 0.449579, -0.390959,
		28.587431, 36.583740, 24.882126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556633, 36.556965, 25.660767>,  <29.149628, 36.269035, 25.155798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556633, 36.556965, 25.660767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449343, 36.412319, 25.303602>,  <28.384968, 36.325531, 25.089304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449343, 36.412319, 25.303602>,  <28.556633, 36.556965, 25.660767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449343, 36.412319, 25.303602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323641, -0.839181, 0.437073,
		-0.907365, 0.406216, 0.108056,
		-0.268225, -0.361613, -0.892912,
		28.368876, 36.303837, 25.035728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819220, 36.516491, 25.564022>,  <28.556633, 36.556965, 25.660767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819220, 36.516491, 25.564022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994408, 36.227657, 25.349817>,  <28.099520, 36.054356, 25.221294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994408, 36.227657, 25.349817>,  <27.819220, 36.516491, 25.564022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994408, 36.227657, 25.349817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398643, -0.689910, 0.604242,
		-0.805772, -0.051159, -0.590013,
		0.437968, -0.722085, -0.535516,
		28.125799, 36.011032, 25.189163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355223, 36.076061, 25.547651>,  <27.819220, 36.516491, 25.564022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355223, 36.076061, 25.547651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.673792, 35.861504, 25.435940>,  <27.864933, 35.732769, 25.368914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.673792, 35.861504, 25.435940>,  <27.355223, 36.076061, 25.547651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673792, 35.861504, 25.435940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379670, -0.802953, 0.459475,
		-0.470705, -0.259903, -0.843142,
		0.796422, -0.536393, -0.279277,
		27.912718, 35.700584, 25.352158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128559, 35.408783, 25.290863>,  <27.355223, 36.076061, 25.547651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128559, 35.408783, 25.290863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502190, 35.357437, 25.424145>,  <27.726368, 35.326630, 25.504114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502190, 35.357437, 25.424145>,  <27.128559, 35.408783, 25.290863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502190, 35.357437, 25.424145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300777, -0.785775, 0.540455,
		0.192450, -0.605046, -0.772581,
		0.934075, -0.128364, 0.333206,
		27.782412, 35.318928, 25.524107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382757, 34.715801, 25.120411>,  <27.128559, 35.408783, 25.290863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382757, 34.715801, 25.120411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590960, 34.847805, 25.435413>,  <27.715881, 34.927010, 25.624414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590960, 34.847805, 25.435413>,  <27.382757, 34.715801, 25.120411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590960, 34.847805, 25.435413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337985, -0.767330, 0.544951,
		0.784116, -0.549816, -0.287862,
		0.520508, 0.330012, 0.787505,
		27.747112, 34.946808, 25.671665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519161, 34.127777, 25.554611>,  <27.382757, 34.715801, 25.120411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519161, 34.127777, 25.554611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633440, 34.400833, 25.823650>,  <27.702007, 34.564667, 25.985073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.633440, 34.400833, 25.823650>,  <27.519161, 34.127777, 25.554611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.633440, 34.400833, 25.823650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244941, -0.626522, 0.739915,
		0.926489, -0.376136, -0.011789,
		0.285695, 0.682636, 0.672597,
		27.719149, 34.605625, 26.025429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005892, 33.773411, 25.986828>,  <27.519161, 34.127777, 25.554611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005892, 33.773411, 25.986828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840256, 34.092876, 26.161489>,  <27.740875, 34.284557, 26.266287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840256, 34.092876, 26.161489>,  <28.005892, 33.773411, 25.986828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840256, 34.092876, 26.161489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240856, -0.558755, 0.793588,
		0.877792, 0.223446, 0.423737,
		-0.414089, 0.798665, 0.436652,
		27.716028, 34.332478, 26.292484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198721, 33.784798, 26.688749>,  <28.005892, 33.773411, 25.986828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198721, 33.784798, 26.688749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889709, 34.037666, 26.712618>,  <27.704302, 34.189388, 26.726938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889709, 34.037666, 26.712618>,  <28.198721, 33.784798, 26.688749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889709, 34.037666, 26.712618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254903, -0.394820, 0.882690,
		0.581567, 0.666694, 0.466152,
		-0.772531, 0.632167, 0.059672,
		27.657949, 34.227318, 26.730520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204805, 33.830399, 27.418282>,  <28.198721, 33.784798, 26.688749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204805, 33.830399, 27.418282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861824, 33.975983, 27.272787>,  <27.656034, 34.063332, 27.185490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.861824, 33.975983, 27.272787>,  <28.204805, 33.830399, 27.418282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.861824, 33.975983, 27.272787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492747, -0.377152, 0.784192,
		0.148230, 0.851640, 0.502730,
		-0.857455, 0.363959, -0.363738,
		27.604588, 34.085171, 27.163666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882502, 34.214958, 27.956263>,  <28.204805, 33.830399, 27.418282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882502, 34.214958, 27.956263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591139, 34.083412, 27.715839>,  <27.416321, 34.004486, 27.571585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591139, 34.083412, 27.715839>,  <27.882502, 34.214958, 27.956263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591139, 34.083412, 27.715839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508878, -0.327732, 0.796012,
		-0.458763, 0.885687, 0.071373,
		-0.728409, -0.328861, -0.601058,
		27.372616, 33.984753, 27.535522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307493, 34.266804, 28.358160>,  <27.882502, 34.214958, 27.956263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307493, 34.266804, 28.358160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168060, 34.035294, 28.063269>,  <27.084400, 33.896385, 27.886333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168060, 34.035294, 28.063269>,  <27.307493, 34.266804, 28.358160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168060, 34.035294, 28.063269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621300, -0.446236, 0.644096,
		-0.701766, 0.682561, -0.204044,
		-0.348584, -0.578778, -0.737228,
		27.063486, 33.861660, 27.842100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607178, 34.302299, 28.418467>,  <27.307493, 34.266804, 28.358160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607178, 34.302299, 28.418467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690268, 33.958775, 28.231155>,  <26.740122, 33.752659, 28.118769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.690268, 33.958775, 28.231155>,  <26.607178, 34.302299, 28.418467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.690268, 33.958775, 28.231155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433233, -0.509982, 0.743121,
		-0.877018, 0.048510, -0.478003,
		0.207724, -0.858816, -0.468279,
		26.752584, 33.701130, 28.090672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950106, 33.841690, 28.296459>,  <26.607178, 34.302299, 28.418467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.950106, 33.841690, 28.296459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282080, 33.618816, 28.307428>,  <26.481264, 33.485092, 28.314009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282080, 33.618816, 28.307428>,  <25.950106, 33.841690, 28.296459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282080, 33.618816, 28.307428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420762, -0.592940, 0.686572,
		-0.366290, -0.581347, -0.726544,
		0.829934, -0.557187, 0.027421,
		26.531059, 33.451660, 28.315655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759007, 33.184521, 28.300077>,  <25.950106, 33.841690, 28.296459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759007, 33.184521, 28.300077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137989, 33.159763, 28.425615>,  <26.365377, 33.144909, 28.500938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.137989, 33.159763, 28.425615>,  <25.759007, 33.184521, 28.300077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137989, 33.159763, 28.425615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257350, -0.730207, 0.632905,
		0.190000, -0.680417, -0.707766,
		0.947455, -0.061892, 0.313845,
		26.422226, 33.141197, 28.519768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.770342, 32.656490, 28.746771>,  <25.759007, 33.184521, 28.300077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.770342, 32.656490, 28.746771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149250, 32.764164, 28.816307>,  <26.376595, 32.828770, 28.858028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149250, 32.764164, 28.816307>,  <25.770342, 32.656490, 28.746771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149250, 32.764164, 28.816307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040143, -0.438541, 0.897814,
		0.317914, -0.857450, -0.404611,
		0.947269, 0.269185, 0.173839,
		26.433432, 32.844921, 28.868460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079435, 32.064487, 29.145470>,  <25.770342, 32.656490, 28.746771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079435, 32.064487, 29.145470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338816, 32.363720, 29.201881>,  <26.494444, 32.543259, 29.235729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338816, 32.363720, 29.201881>,  <26.079435, 32.064487, 29.145470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338816, 32.363720, 29.201881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063671, -0.131311, 0.989294,
		0.758591, -0.650486, -0.037518,
		0.648449, 0.748081, 0.141029,
		26.533350, 32.588142, 29.244190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741863, 31.818739, 29.595987>,  <26.079435, 32.064487, 29.145470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741863, 31.818739, 29.595987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662918, 32.208488, 29.639154>,  <26.615551, 32.442337, 29.665054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662918, 32.208488, 29.639154>,  <26.741863, 31.818739, 29.595987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662918, 32.208488, 29.639154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058390, -0.121570, 0.990864,
		0.978590, 0.189257, 0.080887,
		-0.197361, 0.974373, 0.107916,
		26.603710, 32.500801, 29.671530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110271, 31.961706, 30.195065>,  <26.741863, 31.818739, 29.595987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110271, 31.961706, 30.195065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842485, 32.257767, 30.169802>,  <26.681814, 32.435402, 30.154644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842485, 32.257767, 30.169802>,  <27.110271, 31.961706, 30.195065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842485, 32.257767, 30.169802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129726, -0.032771, 0.991008,
		0.731428, 0.671639, 0.117956,
		-0.669466, 0.740153, -0.063159,
		26.641645, 32.479813, 30.150854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205116, 32.352459, 30.838583>,  <27.110271, 31.961706, 30.195065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205116, 32.352459, 30.838583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862780, 32.523743, 30.722532>,  <26.657377, 32.626511, 30.652901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.862780, 32.523743, 30.722532>,  <27.205116, 32.352459, 30.838583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.862780, 32.523743, 30.722532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218331, 0.209425, 0.953139,
		0.468899, 0.879080, -0.085744,
		-0.855842, 0.428206, -0.290129,
		26.606028, 32.652203, 30.635494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222240, 32.998322, 31.179054>,  <27.205116, 32.352459, 30.838583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222240, 32.998322, 31.179054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847425, 32.890511, 31.090227>,  <26.622536, 32.825825, 31.036932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847425, 32.890511, 31.090227>,  <27.222240, 32.998322, 31.179054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847425, 32.890511, 31.090227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284238, 0.219176, 0.933365,
		-0.202894, 0.937720, -0.281986,
		-0.937040, -0.269525, -0.222066,
		26.566313, 32.809654, 31.023607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785715, 33.552814, 31.160465>,  <27.222240, 32.998322, 31.179054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785715, 33.552814, 31.160465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573647, 33.228168, 31.258608>,  <26.446405, 33.033382, 31.317493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.573647, 33.228168, 31.258608>,  <26.785715, 33.552814, 31.160465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573647, 33.228168, 31.258608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259905, 0.431001, 0.864111,
		-0.807074, 0.394358, -0.439447,
		-0.530171, -0.811616, 0.245354,
		26.414595, 32.984684, 31.332214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199413, 33.841911, 31.437206>,  <26.785715, 33.552814, 31.160465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199413, 33.841911, 31.437206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205620, 33.458942, 31.552519>,  <26.209343, 33.229160, 31.621706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205620, 33.458942, 31.552519>,  <26.199413, 33.841911, 31.437206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205620, 33.458942, 31.552519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190293, 0.280217, 0.940886,
		-0.981605, -0.069456, -0.177842,
		0.015516, -0.957421, 0.288280,
		26.210274, 33.171715, 31.639002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752651, 33.862610, 31.995312>,  <26.199413, 33.841911, 31.437206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752651, 33.862610, 31.995312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942976, 33.511810, 32.022045>,  <26.057171, 33.301331, 32.038086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.942976, 33.511810, 32.022045>,  <25.752651, 33.862610, 31.995312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942976, 33.511810, 32.022045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189536, 0.176441, 0.965891,
		-0.858882, -0.446916, 0.250177,
		0.475813, -0.877003, 0.066835,
		26.085720, 33.248711, 32.042095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482838, 33.517612, 32.602093>,  <25.752651, 33.862610, 31.995312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.482838, 33.517612, 32.602093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841215, 33.360882, 32.518421>,  <26.056242, 33.266842, 32.468220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841215, 33.360882, 32.518421>,  <25.482838, 33.517612, 32.602093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841215, 33.360882, 32.518421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225155, -0.005305, 0.974308,
		-0.382872, -0.920023, 0.083469,
		0.895943, -0.391829, -0.209179,
		26.109999, 33.243332, 32.455666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457050, 32.922123, 33.063381>,  <25.482838, 33.517612, 32.602093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457050, 32.922123, 33.063381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834549, 33.005318, 32.960552>,  <26.061049, 33.055233, 32.898853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834549, 33.005318, 32.960552>,  <25.457050, 32.922123, 33.063381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834549, 33.005318, 32.960552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282853, -0.105034, 0.953395,
		0.171292, -0.972476, -0.157955,
		0.943744, 0.207987, -0.257076,
		26.117672, 33.067715, 32.883430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877977, 33.128532, 33.708664>,  <25.457050, 32.922123, 33.063381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877977, 33.128532, 33.708664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179125, 33.136826, 33.445526>,  <26.359814, 33.141804, 33.287643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179125, 33.136826, 33.445526>,  <25.877977, 33.128532, 33.708664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179125, 33.136826, 33.445526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653236, 0.098633, 0.750702,
		0.080445, -0.994908, 0.060718,
		0.752869, 0.020727, -0.657844,
		26.404985, 33.143047, 33.248173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437696, 32.635792, 33.852509>,  <25.877977, 33.128532, 33.708664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.437696, 32.635792, 33.852509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570135, 32.962624, 33.663723>,  <26.649599, 33.158722, 33.550449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570135, 32.962624, 33.663723>,  <26.437696, 32.635792, 33.852509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570135, 32.962624, 33.663723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722445, 0.102248, 0.683827,
		0.606999, -0.567384, -0.556441,
		0.331098, 0.817080, -0.471968,
		26.669464, 33.207748, 33.522133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165857, 32.756077, 33.910679>,  <26.437696, 32.635792, 33.852509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165857, 32.756077, 33.910679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043634, 33.120289, 33.799278>,  <26.970301, 33.338818, 33.732437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.043634, 33.120289, 33.799278>,  <27.165857, 32.756077, 33.910679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043634, 33.120289, 33.799278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660076, 0.413364, 0.627240,
		0.686246, 0.007823, -0.727327,
		-0.305558, 0.910532, -0.278506,
		26.951967, 33.393448, 33.715725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726313, 33.136639, 33.636757>,  <27.165857, 32.756077, 33.910679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726313, 33.136639, 33.636757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437645, 33.383583, 33.762012>,  <27.264444, 33.531750, 33.837166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437645, 33.383583, 33.762012>,  <27.726313, 33.136639, 33.636757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437645, 33.383583, 33.762012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655171, 0.463108, 0.596893,
		0.223480, 0.635921, -0.738689,
		-0.721670, 0.617361, 0.313142,
		27.221144, 33.568790, 33.855953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096060, 33.825016, 33.595882>,  <27.726313, 33.136639, 33.636757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.096060, 33.825016, 33.595882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820805, 33.767792, 33.880417>,  <27.655651, 33.733459, 34.051136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820805, 33.767792, 33.880417>,  <28.096060, 33.825016, 33.595882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820805, 33.767792, 33.880417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666893, 0.261545, 0.697745,
		-0.285864, 0.954531, -0.084575,
		-0.688139, -0.143058, 0.711336,
		27.614363, 33.724873, 34.093819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161600, 34.250431, 34.081558>,  <28.096060, 33.825016, 33.595882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161600, 34.250431, 34.081558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965204, 33.976395, 34.296810>,  <27.847366, 33.811974, 34.425961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.965204, 33.976395, 34.296810>,  <28.161600, 34.250431, 34.081558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965204, 33.976395, 34.296810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642470, 0.132423, 0.754782,
		-0.588354, 0.716321, 0.375132,
		-0.490990, -0.685090, 0.538126,
		27.817907, 33.770866, 34.458248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792221, 34.400158, 34.793110>,  <28.161600, 34.250431, 34.081558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792221, 34.400158, 34.793110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878633, 34.010700, 34.822338>,  <27.930481, 33.777023, 34.839874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878633, 34.010700, 34.822338>,  <27.792221, 34.400158, 34.793110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878633, 34.010700, 34.822338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583974, 0.188818, 0.789507,
		-0.782499, -0.127889, 0.609376,
		0.216030, -0.973649, 0.073066,
		27.943443, 33.718605, 34.844257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526590, 34.015026, 35.386185>,  <27.792221, 34.400158, 34.793110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526590, 34.015026, 35.386185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886179, 33.871407, 35.285835>,  <28.101933, 33.785236, 35.225628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886179, 33.871407, 35.285835>,  <27.526590, 34.015026, 35.386185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886179, 33.871407, 35.285835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375472, 0.336766, 0.863487,
		-0.225550, -0.870444, 0.437556,
		0.898971, -0.359049, -0.250869,
		28.155870, 33.763691, 35.210575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855276, 33.697258, 36.087738>,  <27.526590, 34.015026, 35.386185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855276, 33.697258, 36.087738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162354, 33.796913, 35.851578>,  <28.346600, 33.856705, 35.709881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162354, 33.796913, 35.851578>,  <27.855276, 33.697258, 36.087738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162354, 33.796913, 35.851578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427364, 0.487475, 0.761399,
		0.477492, -0.836841, 0.267765,
		0.767699, 0.249129, -0.590401,
		28.392662, 33.871655, 35.674458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410824, 33.567188, 36.468014>,  <27.855276, 33.697258, 36.087738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410824, 33.567188, 36.468014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541052, 33.826900, 36.193077>,  <28.619188, 33.982727, 36.028114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541052, 33.826900, 36.193077>,  <28.410824, 33.567188, 36.468014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541052, 33.826900, 36.193077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461238, 0.525526, 0.714899,
		0.825387, -0.549777, -0.128378,
		0.325569, 0.649282, -0.687341,
		28.638723, 34.021687, 35.986874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885330, 33.865166, 36.863136>,  <28.410824, 33.567188, 36.468014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885330, 33.865166, 36.863136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876898, 34.099434, 36.539028>,  <28.871838, 34.239994, 36.344563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876898, 34.099434, 36.539028>,  <28.885330, 33.865166, 36.863136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876898, 34.099434, 36.539028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343895, 0.765248, 0.544181,
		0.938771, -0.267175, -0.217544,
		-0.021083, 0.585673, -0.810273,
		28.870573, 34.275135, 36.295948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505558, 34.197220, 36.736671>,  <28.885330, 33.865166, 36.863136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505558, 34.197220, 36.736671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245651, 34.448425, 36.565369>,  <29.089708, 34.599148, 36.462585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245651, 34.448425, 36.565369>,  <29.505558, 34.197220, 36.736671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245651, 34.448425, 36.565369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321878, 0.737714, 0.593442,
		0.688622, 0.247750, -0.681484,
		-0.649765, 0.628012, -0.428260,
		29.050722, 34.636829, 36.436890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911644, 34.705753, 36.286381>,  <29.505558, 34.197220, 36.736671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911644, 34.705753, 36.286381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560575, 34.856255, 36.405128>,  <29.349936, 34.946556, 36.476379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560575, 34.856255, 36.405128>,  <29.911644, 34.705753, 36.286381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560575, 34.856255, 36.405128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466128, 0.814172, 0.346192,
		-0.111451, 0.442223, -0.889953,
		-0.877669, 0.376249, 0.296873,
		29.297276, 34.969128, 36.494190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896458, 35.375275, 36.085209>,  <29.911644, 34.705753, 36.286381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896458, 35.375275, 36.085209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620783, 35.379257, 36.375015>,  <29.455378, 35.381645, 36.548901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620783, 35.379257, 36.375015>,  <29.896458, 35.375275, 36.085209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620783, 35.379257, 36.375015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308874, 0.908544, 0.281328,
		-0.655455, 0.417671, -0.629230,
		-0.689185, 0.009955, 0.724517,
		29.414028, 35.382244, 36.592369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757776, 36.078854, 36.093044>,  <29.896458, 35.375275, 36.085209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757776, 36.078854, 36.093044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559801, 35.966011, 36.421787>,  <29.441015, 35.898304, 36.619034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559801, 35.966011, 36.421787>,  <29.757776, 36.078854, 36.093044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559801, 35.966011, 36.421787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146450, 0.905218, 0.398915,
		-0.856497, 0.317800, -0.406713,
		-0.494939, -0.282107, 0.821858,
		29.411320, 35.881378, 36.668346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354504, 36.567028, 36.160748>,  <29.757776, 36.078854, 36.093044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354504, 36.567028, 36.160748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397730, 36.390373, 36.517014>,  <29.423666, 36.284382, 36.730774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397730, 36.390373, 36.517014>,  <29.354504, 36.567028, 36.160748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397730, 36.390373, 36.517014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029997, 0.894052, 0.446957,
		-0.993691, -0.075017, 0.083367,
		0.108064, -0.441637, 0.890662,
		29.430149, 36.257881, 36.784214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838892, 36.813522, 36.618107>,  <29.354504, 36.567028, 36.160748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838892, 36.813522, 36.618107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124798, 36.680164, 36.864017>,  <29.296341, 36.600147, 37.011566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.124798, 36.680164, 36.864017>,  <28.838892, 36.813522, 36.618107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124798, 36.680164, 36.864017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076841, 0.836295, 0.542868,
		-0.695129, -0.435264, 0.572137,
		0.714766, -0.333400, 0.614779,
		29.339228, 36.580143, 37.048450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680895, 37.071167, 37.295509>,  <28.838892, 36.813522, 36.618107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680895, 37.071167, 37.295509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065590, 36.977543, 37.352463>,  <29.296408, 36.921368, 37.386635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065590, 36.977543, 37.352463>,  <28.680895, 37.071167, 37.295509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065590, 36.977543, 37.352463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042060, 0.639698, 0.767474,
		-0.270723, -0.732121, 0.625067,
		0.961738, -0.234063, 0.142388,
		29.354111, 36.907326, 37.395180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809116, 36.835106, 37.964279>,  <28.680895, 37.071167, 37.295509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809116, 36.835106, 37.964279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151321, 36.989273, 37.825974>,  <29.356644, 37.081772, 37.742989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.151321, 36.989273, 37.825974>,  <28.809116, 36.835106, 37.964279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151321, 36.989273, 37.825974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030401, 0.704016, 0.709533,
		0.516888, -0.596503, 0.614012,
		0.855513, 0.385416, -0.345763,
		29.407974, 37.104897, 37.722244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982336, 37.120777, 38.502045>,  <28.809116, 36.835106, 37.964279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982336, 37.120777, 38.502045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251863, 37.271645, 38.247894>,  <29.413580, 37.362167, 38.095402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251863, 37.271645, 38.247894>,  <28.982336, 37.120777, 38.502045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251863, 37.271645, 38.247894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173994, 0.754729, 0.632543,
		0.718118, -0.536772, 0.442925,
		0.673820, 0.377174, -0.635380,
		29.454010, 37.384796, 38.057281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578642, 37.005424, 38.801987>,  <28.982336, 37.120777, 38.502045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578642, 37.005424, 38.801987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614841, 37.315887, 38.552383>,  <29.636562, 37.502167, 38.402622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614841, 37.315887, 38.552383>,  <29.578642, 37.005424, 38.801987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614841, 37.315887, 38.552383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152731, 0.608348, 0.778836,
		0.984115, -0.165790, -0.063488,
		0.090500, 0.776161, -0.624006,
		29.641991, 37.548737, 38.365181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101862, 37.440102, 38.966595>,  <29.578642, 37.005424, 38.801987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101862, 37.440102, 38.966595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923719, 37.713570, 38.735336>,  <29.816833, 37.877651, 38.596581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923719, 37.713570, 38.735336>,  <30.101862, 37.440102, 38.966595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923719, 37.713570, 38.735336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240290, 0.713290, 0.658391,
		0.862507, 0.154297, -0.481948,
		-0.445357, 0.683674, -0.578141,
		29.790112, 37.918671, 38.561893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546907, 38.057178, 38.974358>,  <30.101862, 37.440102, 38.966595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546907, 38.057178, 38.974358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185400, 38.186199, 38.861813>,  <29.968496, 38.263611, 38.794285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.185400, 38.186199, 38.861813>,  <30.546907, 38.057178, 38.974358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185400, 38.186199, 38.861813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038623, 0.716122, 0.696906,
		0.426277, 0.618974, -0.659666,
		-0.903768, 0.322553, -0.281360,
		29.914270, 38.282967, 38.777405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591232, 38.820217, 39.054939>,  <30.546907, 38.057178, 38.974358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591232, 38.820217, 39.054939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195580, 38.776939, 39.015121>,  <29.958187, 38.750973, 38.991230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195580, 38.776939, 39.015121>,  <30.591232, 38.820217, 39.054939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195580, 38.776939, 39.015121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146228, 0.794402, 0.589528,
		0.015296, 0.597678, -0.801590,
		-0.989133, -0.108198, -0.099549,
		29.898840, 38.744480, 38.985256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314962, 39.484737, 38.889812>,  <30.591232, 38.820217, 39.054939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314962, 39.484737, 38.889812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032213, 39.258823, 39.060150>,  <29.862564, 39.123276, 39.162354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032213, 39.258823, 39.060150>,  <30.314962, 39.484737, 38.889812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032213, 39.258823, 39.060150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144852, 0.704861, 0.694398,
		-0.692349, 0.429168, -0.580059,
		-0.706874, -0.564788, 0.425844,
		29.820150, 39.089386, 39.187904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844627, 39.926422, 39.059357>,  <30.314962, 39.484737, 38.889812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844627, 39.926422, 39.059357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786154, 39.614090, 39.302315>,  <29.751070, 39.426689, 39.448090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786154, 39.614090, 39.302315>,  <29.844627, 39.926422, 39.059357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786154, 39.614090, 39.302315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171728, 0.624697, 0.761750,
		-0.974238, 0.007050, -0.225413,
		-0.146185, -0.780835, 0.607393,
		29.742298, 39.379841, 39.484531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324829, 40.219742, 39.508305>,  <29.844627, 39.926422, 39.059357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324829, 40.219742, 39.508305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448921, 39.887905, 39.694004>,  <29.523376, 39.688801, 39.805424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.448921, 39.887905, 39.694004>,  <29.324829, 40.219742, 39.508305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448921, 39.887905, 39.694004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063541, 0.505348, 0.860573,
		-0.948535, -0.237479, 0.209489,
		0.310232, -0.829595, 0.464251,
		29.541990, 39.639027, 39.833279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966183, 40.267578, 40.152462>,  <29.324829, 40.219742, 39.508305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966183, 40.267578, 40.152462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275270, 40.019325, 40.205708>,  <29.460724, 39.870373, 40.237656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275270, 40.019325, 40.205708>,  <28.966183, 40.267578, 40.152462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275270, 40.019325, 40.205708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121778, 0.350768, 0.928511,
		-0.622957, -0.701267, 0.346624,
		0.772719, -0.620633, 0.133115,
		29.507086, 39.833134, 40.245644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852240, 39.895409, 40.748386>,  <28.966183, 40.267578, 40.152462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852240, 39.895409, 40.748386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247736, 39.842026, 40.721313>,  <29.485033, 39.809994, 40.705070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247736, 39.842026, 40.721313>,  <28.852240, 39.895409, 40.748386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247736, 39.842026, 40.721313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105324, 0.299391, 0.948300,
		-0.106298, -0.944750, 0.310076,
		0.988741, -0.133461, -0.067680,
		29.544357, 39.801987, 40.701008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067888, 39.525322, 41.367260>,  <28.852240, 39.895409, 40.748386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067888, 39.525322, 41.367260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401531, 39.694477, 41.225597>,  <29.601717, 39.795971, 41.140598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401531, 39.694477, 41.225597>,  <29.067888, 39.525322, 41.367260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401531, 39.694477, 41.225597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260316, 0.264269, 0.928654,
		0.486311, -0.866791, 0.110344,
		0.834109, 0.422890, -0.354156,
		29.651764, 39.821342, 41.119350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589397, 39.309155, 41.810482>,  <29.067888, 39.525322, 41.367260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589397, 39.309155, 41.810482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759686, 39.620121, 41.625275>,  <29.861858, 39.806702, 41.514149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759686, 39.620121, 41.625275>,  <29.589397, 39.309155, 41.810482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759686, 39.620121, 41.625275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309146, 0.355952, 0.881889,
		0.850407, -0.518578, -0.088799,
		0.425720, 0.777416, -0.463020,
		29.887402, 39.853344, 41.486370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230618, 39.390362, 42.140274>,  <29.589397, 39.309155, 41.810482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230618, 39.390362, 42.140274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141169, 39.740601, 41.969006>,  <30.087500, 39.950745, 41.866245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141169, 39.740601, 41.969006>,  <30.230618, 39.390362, 42.140274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141169, 39.740601, 41.969006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326794, 0.481222, 0.813407,
		0.918259, 0.041972, -0.393750,
		-0.223622, 0.875593, -0.428170,
		30.074081, 40.003277, 41.840553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841375, 39.864056, 42.087608>,  <30.230618, 39.390362, 42.140274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841375, 39.864056, 42.087608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508490, 40.085712, 42.095081>,  <30.308758, 40.218704, 42.099564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508490, 40.085712, 42.095081>,  <30.841375, 39.864056, 42.087608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508490, 40.085712, 42.095081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374422, 0.536828, 0.756058,
		0.408934, 0.636196, -0.654238,
		-0.832215, 0.554139, 0.018678,
		30.258825, 40.251953, 42.100685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137985, 40.535294, 42.081375>,  <30.841375, 39.864056, 42.087608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137985, 40.535294, 42.081375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760218, 40.541382, 42.212730>,  <30.533556, 40.545036, 42.291542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760218, 40.541382, 42.212730>,  <31.137985, 40.535294, 42.081375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760218, 40.541382, 42.212730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290409, 0.506759, 0.811701,
		-0.154056, 0.861953, -0.483015,
		-0.944420, 0.015225, 0.328388,
		30.476892, 40.545948, 42.311249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079287, 41.226006, 42.341492>,  <31.137985, 40.535294, 42.081375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079287, 41.226006, 42.341492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783268, 41.031040, 42.526859>,  <30.605658, 40.914059, 42.638081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783268, 41.031040, 42.526859>,  <31.079287, 41.226006, 42.341492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783268, 41.031040, 42.526859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183726, 0.516322, 0.836455,
		-0.646976, 0.704156, -0.292551,
		-0.740046, -0.487417, 0.463420,
		30.561255, 40.884815, 42.665886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998363, 41.618904, 42.872017>,  <31.079287, 41.226006, 42.341492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998363, 41.618904, 42.872017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744659, 41.321964, 42.958397>,  <30.592438, 41.143803, 43.010227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744659, 41.321964, 42.958397>,  <30.998363, 41.618904, 42.872017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744659, 41.321964, 42.958397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056651, 0.323204, 0.944632,
		-0.771041, 0.586909, -0.247050,
		-0.634261, -0.742345, 0.215954,
		30.554380, 41.099262, 43.023182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431538, 41.933323, 43.289719>,  <30.998363, 41.618904, 42.872017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431538, 41.933323, 43.289719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483027, 41.543461, 43.362904>,  <30.513920, 41.309544, 43.406815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483027, 41.543461, 43.362904>,  <30.431538, 41.933323, 43.289719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483027, 41.543461, 43.362904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114579, 0.168649, 0.978994,
		-0.985039, -0.146981, -0.089966,
		0.128721, -0.974656, 0.182967,
		30.521643, 41.251064, 43.417793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843462, 41.751122, 43.736900>,  <30.431538, 41.933323, 43.289719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843462, 41.751122, 43.736900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172142, 41.532242, 43.800629>,  <30.369350, 41.400913, 43.838867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172142, 41.532242, 43.800629>,  <29.843462, 41.751122, 43.736900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172142, 41.532242, 43.800629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043834, 0.218045, 0.974954,
		-0.568230, -0.808105, 0.155182,
		0.821702, -0.547195, 0.159322,
		30.418653, 41.368084, 43.848427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756506, 41.424644, 44.347118>,  <29.843462, 41.751122, 43.736900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756506, 41.424644, 44.347118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153353, 41.415802, 44.297779>,  <30.391460, 41.410496, 44.268177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153353, 41.415802, 44.297779>,  <29.756506, 41.424644, 44.347118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153353, 41.415802, 44.297779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120111, 0.448344, 0.885754,
		0.035719, -0.893587, 0.447466,
		0.992118, -0.022107, -0.123344,
		30.450989, 41.409168, 44.260777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020102, 41.426846, 45.085552>,  <29.756506, 41.424644, 44.347118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020102, 41.426846, 45.085552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353788, 41.482864, 44.872208>,  <30.554001, 41.516476, 44.744202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353788, 41.482864, 44.872208>,  <30.020102, 41.426846, 45.085552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353788, 41.482864, 44.872208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492868, 0.244435, 0.835064,
		0.247342, -0.959495, 0.134873,
		0.834208, 0.140072, -0.533364,
		30.604053, 41.524879, 44.712200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471994, 40.898117, 45.221649>,  <30.020102, 41.426846, 45.085552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471994, 40.898117, 45.221649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708755, 41.206470, 45.127506>,  <30.850811, 41.391483, 45.071022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708755, 41.206470, 45.127506>,  <30.471994, 40.898117, 45.221649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708755, 41.206470, 45.127506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425936, -0.051258, 0.903300,
		0.684276, -0.634910, -0.358686,
		0.591900, 0.770884, -0.235356,
		30.886326, 41.437737, 45.056900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237631, 40.702007, 45.343204>,  <30.471994, 40.898117, 45.221649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237631, 40.702007, 45.343204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162565, 41.094864, 45.348564>,  <31.117525, 41.330578, 45.351780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162565, 41.094864, 45.348564>,  <31.237631, 40.702007, 45.343204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162565, 41.094864, 45.348564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469604, 0.077735, 0.879449,
		0.862702, 0.171334, -0.475805,
		-0.187666, 0.982142, 0.013397,
		31.106266, 41.389507, 45.352585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740276, 40.819447, 45.785080>,  <31.237631, 40.702007, 45.343204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740276, 40.819447, 45.785080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542767, 41.167042, 45.772102>,  <31.424261, 41.375599, 45.764317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542767, 41.167042, 45.772102>,  <31.740276, 40.819447, 45.785080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542767, 41.167042, 45.772102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346788, 0.230996, 0.909054,
		0.797449, 0.437615, -0.415414,
		-0.493774, 0.868984, -0.032448,
		31.394634, 41.427738, 45.762367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231300, 41.426231, 45.925495>,  <31.740276, 40.819447, 45.785080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231300, 41.426231, 45.925495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867584, 41.574909, 46.000366>,  <31.649355, 41.664116, 46.045288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867584, 41.574909, 46.000366>,  <32.231300, 41.426231, 45.925495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867584, 41.574909, 46.000366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347646, 0.431170, 0.832607,
		0.228768, 0.822154, -0.521276,
		-0.909290, 0.371693, 0.187181,
		31.594797, 41.686417, 46.056519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280388, 42.273643, 45.988396>,  <32.231300, 41.426231, 45.925495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280388, 42.273643, 45.988396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980497, 42.103786, 46.191414>,  <31.800564, 42.001873, 46.313225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980497, 42.103786, 46.191414>,  <32.280388, 42.273643, 45.988396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980497, 42.103786, 46.191414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401651, 0.317541, 0.858979,
		-0.525921, 0.847850, -0.067511,
		-0.749723, -0.424639, 0.507541,
		31.755581, 41.976395, 46.343678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083920, 42.758179, 46.492447>,  <32.280388, 42.273643, 45.988396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083920, 42.758179, 46.492447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907642, 42.431946, 46.642437>,  <31.801874, 42.236206, 46.732430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907642, 42.431946, 46.642437>,  <32.083920, 42.758179, 46.492447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907642, 42.431946, 46.642437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278939, 0.272625, 0.920798,
		-0.853217, 0.510389, 0.107354,
		-0.440697, -0.815585, 0.374976,
		31.775433, 42.187271, 46.754929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740980, 42.956650, 47.165043>,  <32.083920, 42.758179, 46.492447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740980, 42.956650, 47.165043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773634, 42.558044, 47.171932>,  <31.793226, 42.318882, 47.176067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773634, 42.558044, 47.171932>,  <31.740980, 42.956650, 47.165043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773634, 42.558044, 47.171932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270602, 0.038795, 0.961909,
		-0.959224, -0.073866, 0.272826,
		0.081637, -0.996513, 0.017225,
		31.798124, 42.259090, 47.177101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576361, 42.699295, 47.827888>,  <31.740980, 42.956650, 47.165043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576361, 42.699295, 47.827888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831806, 42.436901, 47.666962>,  <31.985073, 42.279465, 47.570408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831806, 42.436901, 47.666962>,  <31.576361, 42.699295, 47.827888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831806, 42.436901, 47.666962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517287, -0.021117, 0.855551,
		-0.569724, -0.754479, 0.325847,
		0.638615, -0.655985, -0.402312,
		32.023392, 42.240105, 47.546268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694132, 42.111862, 48.446323>,  <31.576361, 42.699295, 47.827888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694132, 42.111862, 48.446323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953665, 42.213005, 48.159248>,  <32.109386, 42.273689, 47.987003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953665, 42.213005, 48.159248>,  <31.694132, 42.111862, 48.446323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953665, 42.213005, 48.159248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649941, 0.306331, 0.695513,
		0.395716, -0.917728, 0.034415,
		0.648834, 0.252857, -0.717689,
		32.148315, 42.288864, 47.943943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400486, 41.922203, 48.709927>,  <31.694132, 42.111862, 48.446323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400486, 41.922203, 48.709927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473019, 42.179375, 48.412266>,  <32.516541, 42.333679, 48.233669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473019, 42.179375, 48.412266>,  <32.400486, 41.922203, 48.709927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473019, 42.179375, 48.412266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819259, 0.319818, 0.475954,
		0.543998, -0.695957, -0.468733,
		0.181334, 0.642931, -0.744149,
		32.527420, 42.372253, 48.189022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102764, 41.932518, 48.542316>,  <32.400486, 41.922203, 48.709927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102764, 41.932518, 48.542316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014214, 42.311268, 48.449009>,  <32.961082, 42.538517, 48.393024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014214, 42.311268, 48.449009>,  <33.102764, 41.932518, 48.542316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014214, 42.311268, 48.449009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872249, 0.299225, 0.386842,
		0.436092, -0.117832, -0.892154,
		-0.221373, 0.946879, -0.233269,
		32.947803, 42.595333, 48.379028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209824, 41.247089, 48.248749>,  <33.102764, 41.932518, 48.542316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209824, 41.247089, 48.248749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919357, 41.004330, 48.377968>,  <32.745079, 40.858673, 48.455498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919357, 41.004330, 48.377968>,  <33.209824, 41.247089, 48.248749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919357, 41.004330, 48.377968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616189, -0.366086, 0.697346,
		-0.304959, 0.705444, 0.639804,
		-0.726162, -0.606902, 0.323046,
		32.701508, 40.822258, 48.474880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973667, 41.302368, 49.024097>,  <33.209824, 41.247089, 48.248749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973667, 41.302368, 49.024097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986286, 40.946987, 48.840946>,  <32.993858, 40.733757, 48.731056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986286, 40.946987, 48.840946>,  <32.973667, 41.302368, 49.024097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986286, 40.946987, 48.840946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689836, -0.312150, 0.653214,
		-0.723278, -0.336467, 0.603041,
		0.031546, -0.888455, -0.457879,
		32.995750, 40.680450, 48.703583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915070, 40.718960, 49.523373>,  <32.973667, 41.302368, 49.024097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915070, 40.718960, 49.523373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155819, 40.672100, 49.207390>,  <33.300266, 40.643982, 49.017799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155819, 40.672100, 49.207390>,  <32.915070, 40.718960, 49.523373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155819, 40.672100, 49.207390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675156, -0.453661, 0.581684,
		-0.426519, -0.883441, -0.193946,
		0.601869, -0.117155, -0.789955,
		33.336380, 40.636955, 48.970402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361328, 40.455402, 49.137627>,  <32.915070, 40.718960, 49.523373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361328, 40.455402, 49.137627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400448, 40.148983, 49.391747>,  <32.423920, 39.965130, 49.544216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400448, 40.148983, 49.391747>,  <32.361328, 40.455402, 49.137627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400448, 40.148983, 49.391747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983312, 0.024014, 0.180335,
		-0.153402, -0.642331, -0.750919,
		0.097802, -0.766051, 0.635295,
		32.429787, 39.919167, 49.582336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985050, 39.721874, 48.817478>,  <32.361328, 40.455402, 49.137627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985050, 39.721874, 48.817478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981319, 39.855560, 49.194458>,  <31.979080, 39.935772, 49.420647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981319, 39.855560, 49.194458>,  <31.985050, 39.721874, 48.817478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981319, 39.855560, 49.194458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975517, -0.210139, 0.064865,
		0.219725, -0.918771, 0.327996,
		-0.009329, 0.334218, 0.942450,
		31.978521, 39.955826, 49.477192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803244, 39.236984, 49.242947>,  <31.985050, 39.721874, 48.817478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803244, 39.236984, 49.242947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684032, 39.568466, 49.432442>,  <31.612505, 39.767357, 49.546139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684032, 39.568466, 49.432442>,  <31.803244, 39.236984, 49.242947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684032, 39.568466, 49.432442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949576, -0.308021, -0.058558,
		0.097394, -0.467302, 0.878717,
		-0.298028, 0.828705, 0.473738,
		31.594624, 39.817078, 49.574562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050835, 38.803959, 48.630836>,  <31.803244, 39.236984, 49.242947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050835, 38.803959, 48.630836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995619, 39.126900, 48.401356>,  <31.962490, 39.320663, 48.263668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995619, 39.126900, 48.401356>,  <32.050835, 38.803959, 48.630836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995619, 39.126900, 48.401356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121071, -0.561144, -0.818816,
		-0.982999, -0.182487, -0.020287,
		-0.138039, 0.807351, -0.573698,
		31.954206, 39.369106, 48.229248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683535, 38.566040, 48.186325>,  <32.050835, 38.803959, 48.630836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683535, 38.566040, 48.186325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812473, 38.904728, 48.017017>,  <31.889837, 39.107941, 47.915432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812473, 38.904728, 48.017017>,  <31.683535, 38.566040, 48.186325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812473, 38.904728, 48.017017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095691, -0.473991, -0.875314,
		-0.941773, 0.241651, -0.233813,
		0.322346, 0.846721, -0.423269,
		31.909178, 39.158745, 47.890038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315413, 38.571743, 47.581982>,  <31.683535, 38.566040, 48.186325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315413, 38.571743, 47.581982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658842, 38.765965, 47.516148>,  <31.864901, 38.882496, 47.476646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.658842, 38.765965, 47.516148>,  <31.315413, 38.571743, 47.581982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658842, 38.765965, 47.516148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037394, -0.379482, -0.924443,
		-0.511323, 0.787549, -0.343970,
		0.858575, 0.485551, -0.164588,
		31.916414, 38.911629, 47.466770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336735, 38.683262, 46.910385>,  <31.315413, 38.571743, 47.581982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336735, 38.683262, 46.910385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721163, 38.744102, 47.002655>,  <31.951820, 38.780605, 47.058018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721163, 38.744102, 47.002655>,  <31.336735, 38.683262, 46.910385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721163, 38.744102, 47.002655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276289, -0.520441, -0.807964,
		-0.002838, 0.840243, -0.542203,
		0.961071, 0.152098, 0.230672,
		32.009483, 38.789730, 47.071857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648018, 38.998959, 46.354034>,  <31.336735, 38.683262, 46.910385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648018, 38.998959, 46.354034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939047, 38.791973, 46.534199>,  <32.113663, 38.667782, 46.642296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939047, 38.791973, 46.534199>,  <31.648018, 38.998959, 46.354034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939047, 38.791973, 46.534199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386580, -0.233128, -0.892304,
		0.566741, 0.823334, 0.030426,
		0.727571, -0.517468, 0.450408,
		32.157318, 38.636734, 46.669323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245251, 39.049850, 45.921417>,  <31.648018, 38.998959, 46.354034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245251, 39.049850, 45.921417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380188, 38.760689, 46.162617>,  <32.461151, 38.587193, 46.307335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380188, 38.760689, 46.162617>,  <32.245251, 39.049850, 45.921417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380188, 38.760689, 46.162617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735623, -0.197261, -0.648033,
		0.587415, 0.662190, 0.465241,
		0.337347, -0.722906, 0.602996,
		32.481392, 38.543816, 46.343517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057869, 38.962418, 45.778633>,  <32.245251, 39.049850, 45.921417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057869, 38.962418, 45.778633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970791, 38.617348, 45.961235>,  <32.918545, 38.410305, 46.070797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970791, 38.617348, 45.961235>,  <33.057869, 38.962418, 45.778633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970791, 38.617348, 45.961235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792749, -0.429127, -0.432897,
		0.569348, 0.267651, 0.777307,
		-0.217698, -0.862678, 0.456502,
		32.905483, 38.358543, 46.098186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661522, 38.690098, 46.110817>,  <33.057869, 38.962418, 45.778633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661522, 38.690098, 46.110817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416557, 38.391171, 46.007698>,  <33.269577, 38.211815, 45.945827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416557, 38.391171, 46.007698>,  <33.661522, 38.690098, 46.110817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416557, 38.391171, 46.007698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729111, -0.407917, -0.549546,
		0.305525, -0.524515, 0.794694,
		-0.612414, -0.747320, -0.257801,
		33.232834, 38.166973, 45.930359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135509, 38.129028, 45.915157>,  <33.661522, 38.690098, 46.110817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135509, 38.129028, 45.915157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792450, 37.979385, 45.774025>,  <33.586617, 37.889599, 45.689346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792450, 37.979385, 45.774025>,  <34.135509, 38.129028, 45.915157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792450, 37.979385, 45.774025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505351, -0.486126, -0.712954,
		0.095199, -0.789765, 0.605978,
		-0.857647, -0.374103, -0.352830,
		33.535156, 37.867153, 45.668175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222137, 37.368752, 45.880516>,  <34.135509, 38.129028, 45.915157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222137, 37.368752, 45.880516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919014, 37.457569, 45.635105>,  <33.737141, 37.510860, 45.487858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919014, 37.457569, 45.635105>,  <34.222137, 37.368752, 45.880516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919014, 37.457569, 45.635105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485949, -0.435402, -0.757812,
		-0.435402, -0.872421, 0.222049,
		0.757812, -0.222049, 0.613527,
		33.691669, 37.524185, 45.451046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144859, 36.800831, 45.364456>,  <34.222137, 37.368752, 45.880516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144859, 36.800831, 45.364456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958477, 37.102901, 45.180027>,  <33.846645, 37.284145, 45.069370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958477, 37.102901, 45.180027>,  <34.144859, 36.800831, 45.364456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958477, 37.102901, 45.180027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251963, -0.386280, -0.887301,
		-0.848173, -0.529619, -0.010286,
		-0.465958, 0.755177, -0.461076,
		33.818691, 37.329453, 45.041702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687428, 36.457066, 44.892879>,  <34.144859, 36.800831, 45.364456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687428, 36.457066, 44.892879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728153, 36.834961, 44.768234>,  <33.752586, 37.061699, 44.693447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728153, 36.834961, 44.768234>,  <33.687428, 36.457066, 44.892879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728153, 36.834961, 44.768234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167137, -0.325028, -0.930818,
		-0.980663, 0.042688, -0.190993,
		0.101813, 0.944740, -0.311608,
		33.758698, 37.118382, 44.674751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237064, 36.475903, 44.305244>,  <33.687428, 36.457066, 44.892879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237064, 36.475903, 44.305244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492256, 36.781898, 44.269951>,  <33.645370, 36.965496, 44.248775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492256, 36.781898, 44.269951>,  <33.237064, 36.475903, 44.305244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492256, 36.781898, 44.269951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203062, -0.277650, -0.938976,
		-0.742801, 0.581126, -0.332473,
		0.637975, 0.764986, -0.088234,
		33.683647, 37.011395, 44.243481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104366, 36.755463, 43.745789>,  <33.237064, 36.475903, 44.305244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104366, 36.755463, 43.745789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479671, 36.887131, 43.788311>,  <33.704857, 36.966133, 43.813824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479671, 36.887131, 43.788311>,  <33.104366, 36.755463, 43.745789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479671, 36.887131, 43.788311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147099, -0.101539, -0.983896,
		-0.313078, 0.938794, -0.143691,
		0.938267, 0.329173, 0.106306,
		33.761150, 36.985882, 43.820202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181480, 37.239334, 43.138115>,  <33.104366, 36.755463, 43.745789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181480, 37.239334, 43.138115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544994, 37.139626, 43.271965>,  <33.763103, 37.079800, 43.352276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544994, 37.139626, 43.271965>,  <33.181480, 37.239334, 43.138115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544994, 37.139626, 43.271965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304527, -0.152018, -0.940294,
		0.285257, 0.956428, -0.062242,
		0.908786, -0.249271, 0.334623,
		33.817631, 37.064846, 43.372353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766705, 37.614502, 42.757431>,  <33.181480, 37.239334, 43.138115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766705, 37.614502, 42.757431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888584, 37.267166, 42.913967>,  <33.961712, 37.058765, 43.007889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888584, 37.267166, 42.913967>,  <33.766705, 37.614502, 42.757431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888584, 37.267166, 42.913967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221118, -0.335159, -0.915847,
		0.926426, 0.365590, 0.089882,
		0.304699, -0.868339, 0.391338,
		33.979996, 37.006664, 43.031368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303017, 37.546665, 42.384125>,  <33.766705, 37.614502, 42.757431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303017, 37.546665, 42.384125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251499, 37.183674, 42.544071>,  <34.220589, 36.965878, 42.640038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251499, 37.183674, 42.544071>,  <34.303017, 37.546665, 42.384125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251499, 37.183674, 42.544071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154937, -0.416684, -0.895751,
		0.979493, -0.053415, 0.194269,
		-0.128796, -0.907481, 0.399863,
		34.212860, 36.911430, 42.664028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883080, 37.072067, 42.086674>,  <34.303017, 37.546665, 42.384125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883080, 37.072067, 42.086674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560013, 36.857361, 42.184288>,  <34.366173, 36.728539, 42.242855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560013, 36.857361, 42.184288>,  <34.883080, 37.072067, 42.086674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560013, 36.857361, 42.184288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081723, -0.511783, -0.855219,
		0.583944, -0.670792, 0.457218,
		-0.807670, -0.536765, 0.244033,
		34.317711, 36.696331, 42.257500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031834, 36.352486, 41.786209>,  <34.883080, 37.072067, 42.086674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031834, 36.352486, 41.786209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642612, 36.396816, 41.867085>,  <34.409081, 36.423416, 41.915611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642612, 36.396816, 41.867085>,  <35.031834, 36.352486, 41.786209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642612, 36.396816, 41.867085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226177, -0.629186, -0.743619,
		0.044804, -0.769313, 0.637298,
		-0.973055, 0.110825, 0.202191,
		34.350697, 36.430065, 41.927742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827366, 35.763035, 41.531029>,  <35.031834, 36.352486, 41.786209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827366, 35.763035, 41.531029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487171, 35.970901, 41.563587>,  <34.283054, 36.095623, 41.583122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487171, 35.970901, 41.563587>,  <34.827366, 35.763035, 41.531029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487171, 35.970901, 41.563587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385989, -0.511458, -0.767739,
		-0.357337, -0.684367, 0.635572,
		-0.850484, 0.519665, 0.081395,
		34.232025, 36.126801, 41.588005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253387, 35.410683, 41.202457>,  <34.827366, 35.763035, 41.531029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253387, 35.410683, 41.202457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061066, 35.761028, 41.218903>,  <33.945671, 35.971237, 41.228771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061066, 35.761028, 41.218903>,  <34.253387, 35.410683, 41.202457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061066, 35.761028, 41.218903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369876, -0.160085, -0.915186,
		-0.794996, -0.455232, 0.400930,
		-0.480804, 0.875863, 0.041112,
		33.916824, 36.023788, 41.231236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506332, 35.329132, 41.131161>,  <34.253387, 35.410683, 41.202457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506332, 35.329132, 41.131161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615475, 35.693180, 41.006432>,  <33.680962, 35.911610, 40.931595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615475, 35.693180, 41.006432>,  <33.506332, 35.329132, 41.131161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615475, 35.693180, 41.006432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305783, -0.225274, -0.925067,
		-0.912165, 0.347765, 0.216830,
		0.272859, 0.910116, -0.311827,
		33.697334, 35.966213, 40.912884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847637, 35.594467, 40.835484>,  <33.506332, 35.329132, 41.131161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847637, 35.594467, 40.835484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155220, 35.809807, 40.697571>,  <33.339771, 35.939011, 40.614822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155220, 35.809807, 40.697571>,  <32.847637, 35.594467, 40.835484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155220, 35.809807, 40.697571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284931, -0.194183, -0.938673,
		-0.572289, 0.820042, 0.004075,
		0.768961, 0.538353, -0.344784,
		33.385910, 35.971313, 40.594135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538162, 35.873638, 40.308357>,  <32.847637, 35.594467, 40.835484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538162, 35.873638, 40.308357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930313, 35.927025, 40.250317>,  <33.165604, 35.959057, 40.215492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930313, 35.927025, 40.250317>,  <32.538162, 35.873638, 40.308357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930313, 35.927025, 40.250317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092663, -0.337671, -0.936692,
		-0.174015, 0.931753, -0.318676,
		0.980374, 0.133469, -0.145098,
		33.224426, 35.967064, 40.206787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483425, 36.025490, 39.687069>,  <32.538162, 35.873638, 40.308357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483425, 36.025490, 39.687069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876453, 35.965969, 39.731628>,  <33.112270, 35.930256, 39.758366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876453, 35.965969, 39.731628>,  <32.483425, 36.025490, 39.687069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876453, 35.965969, 39.731628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034064, -0.445015, -0.894875,
		0.182735, 0.883074, -0.432190,
		0.982572, -0.148803, 0.111401,
		33.171227, 35.921329, 39.765049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945789, 36.343414, 39.210060>,  <32.483425, 36.025490, 39.687069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945789, 36.343414, 39.210060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131626, 36.009426, 39.328022>,  <33.243130, 35.809032, 39.398800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131626, 36.009426, 39.328022>,  <32.945789, 36.343414, 39.210060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131626, 36.009426, 39.328022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074600, -0.368748, -0.926531,
		0.882375, 0.408463, -0.233608,
		0.464596, -0.834975, 0.294902,
		33.271004, 35.758934, 39.416492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480145, 36.214741, 38.691139>,  <32.945789, 36.343414, 39.210060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480145, 36.214741, 38.691139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402500, 35.863228, 38.865524>,  <33.355911, 35.652321, 38.970154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402500, 35.863228, 38.865524>,  <33.480145, 36.214741, 38.691139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402500, 35.863228, 38.865524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213551, -0.395900, -0.893118,
		0.957452, -0.266467, -0.110814,
		-0.194115, -0.878782, 0.435959,
		33.344265, 35.599594, 38.996311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520214, 35.728729, 38.151970>,  <33.480145, 36.214741, 38.691139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520214, 35.728729, 38.151970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398418, 35.477360, 38.438290>,  <33.325340, 35.326538, 38.610081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398418, 35.477360, 38.438290>,  <33.520214, 35.728729, 38.151970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398418, 35.477360, 38.438290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283413, -0.657676, -0.697953,
		0.909377, -0.415383, 0.022148,
		-0.304485, -0.628425, 0.715801,
		33.307072, 35.288834, 38.653030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663963, 35.008942, 37.896130>,  <33.520214, 35.728729, 38.151970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663963, 35.008942, 37.896130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385681, 34.991394, 38.182922>,  <33.218712, 34.980865, 38.355000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385681, 34.991394, 38.182922>,  <33.663963, 35.008942, 37.896130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385681, 34.991394, 38.182922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443399, -0.759055, -0.476689,
		0.565144, -0.649546, 0.508627,
		-0.695707, -0.043873, 0.716984,
		33.176968, 34.978233, 38.398018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695160, 34.398880, 38.128571>,  <33.663963, 35.008942, 37.896130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695160, 34.398880, 38.128571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322273, 34.522770, 38.203445>,  <33.098541, 34.597103, 38.248371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322273, 34.522770, 38.203445>,  <33.695160, 34.398880, 38.128571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322273, 34.522770, 38.203445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360054, -0.741650, -0.565965,
		-0.036461, -0.595002, 0.802896,
		-0.932219, 0.309722, 0.187191,
		33.042606, 34.615688, 38.259602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281582, 33.811916, 38.537086>,  <33.695160, 34.398880, 38.128571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281582, 33.811916, 38.537086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992580, 34.045216, 38.388596>,  <32.819180, 34.185196, 38.299503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992580, 34.045216, 38.388596>,  <33.281582, 33.811916, 38.537086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992580, 34.045216, 38.388596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350689, -0.771912, -0.530254,
		-0.595823, -0.252926, 0.762249,
		-0.722504, 0.583250, -0.371225,
		32.775829, 34.220192, 38.277229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744343, 33.376129, 38.478447>,  <33.281582, 33.811916, 38.537086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744343, 33.376129, 38.478447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608746, 33.696934, 38.281731>,  <32.527386, 33.889420, 38.163700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608746, 33.696934, 38.281731>,  <32.744343, 33.376129, 38.478447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608746, 33.696934, 38.281731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482883, -0.596957, -0.640676,
		-0.807408, 0.020291, 0.589644,
		-0.338992, 0.802016, -0.491787,
		32.507050, 33.937538, 38.134193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945538, 33.391144, 38.411198>,  <32.744343, 33.376129, 38.478447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945538, 33.391144, 38.411198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090012, 33.610352, 38.109409>,  <32.176697, 33.741875, 37.928337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090012, 33.610352, 38.109409>,  <31.945538, 33.391144, 38.411198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090012, 33.610352, 38.109409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449215, -0.606760, -0.655781,
		-0.817161, 0.575776, 0.027026,
		0.361184, 0.548019, -0.754467,
		32.198368, 33.774757, 37.883068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371525, 33.522503, 37.913982>,  <31.945538, 33.391144, 38.411198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371525, 33.522503, 37.913982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718327, 33.561081, 37.718433>,  <31.926409, 33.584229, 37.601105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718327, 33.561081, 37.718433>,  <31.371525, 33.522503, 37.913982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718327, 33.561081, 37.718433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383054, -0.498495, -0.777671,
		-0.318702, 0.861511, -0.395255,
		0.867005, 0.096441, -0.488877,
		31.978428, 33.590012, 37.571770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124201, 33.584602, 37.296680>,  <31.371525, 33.522503, 37.913982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124201, 33.584602, 37.296680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510477, 33.507023, 37.227604>,  <31.742243, 33.460476, 37.186157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510477, 33.507023, 37.227604>,  <31.124201, 33.584602, 37.296680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510477, 33.507023, 37.227604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256541, -0.609225, -0.750354,
		0.040322, 0.768914, -0.638080,
		0.965692, -0.193949, -0.172692,
		31.800184, 33.448837, 37.175797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179874, 33.618828, 36.548588>,  <31.124201, 33.584602, 37.296680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179874, 33.618828, 36.548588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524103, 33.438778, 36.643925>,  <31.730640, 33.330750, 36.701126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524103, 33.438778, 36.643925>,  <31.179874, 33.618828, 36.548588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524103, 33.438778, 36.643925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053423, -0.545146, -0.836637,
		0.506522, 0.707252, -0.493184,
		0.860570, -0.450123, 0.238345,
		31.782274, 33.303741, 36.715427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753660, 33.728096, 36.024364>,  <31.179874, 33.618828, 36.548588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753660, 33.728096, 36.024364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835522, 33.383999, 36.211170>,  <31.884638, 33.177540, 36.323254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835522, 33.383999, 36.211170>,  <31.753660, 33.728096, 36.024364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835522, 33.383999, 36.211170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114254, -0.452858, -0.884232,
		0.972143, 0.234320, 0.005606,
		0.204655, -0.860240, 0.467015,
		31.896917, 33.125927, 36.351276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321430, 33.463558, 35.636440>,  <31.753660, 33.728096, 36.024364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321430, 33.463558, 35.636440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182339, 33.148930, 35.840553>,  <32.098885, 32.960152, 35.963020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182339, 33.148930, 35.840553>,  <32.321430, 33.463558, 35.636440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182339, 33.148930, 35.840553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151310, -0.584188, -0.797389,
		0.925307, -0.200062, 0.322153,
		-0.347725, -0.786574, 0.510282,
		32.078022, 32.912956, 35.993637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828495, 33.031208, 35.650948>,  <32.321430, 33.463558, 35.636440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828495, 33.031208, 35.650948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495869, 32.813210, 35.693790>,  <32.296291, 32.682411, 35.719494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495869, 32.813210, 35.693790>,  <32.828495, 33.031208, 35.650948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495869, 32.813210, 35.693790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120231, -0.364890, -0.923255,
		0.542256, -0.754871, 0.368956,
		-0.831567, -0.545000, 0.107105,
		32.246399, 32.649708, 35.725922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012947, 32.398762, 35.489033>,  <32.828495, 33.031208, 35.650948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012947, 32.398762, 35.489033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615574, 32.373203, 35.451069>,  <32.377151, 32.357868, 35.428291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615574, 32.373203, 35.451069>,  <33.012947, 32.398762, 35.489033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615574, 32.373203, 35.451069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112447, -0.698439, -0.706781,
		-0.021133, -0.712812, 0.701037,
		-0.993433, -0.063893, -0.094913,
		32.317543, 32.354034, 35.422596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262714, 32.204952, 36.037251>,  <33.012947, 32.398762, 35.489033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262714, 32.204952, 36.037251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638458, 32.068596, 36.022305>,  <33.863903, 31.986782, 36.013336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638458, 32.068596, 36.022305>,  <33.262714, 32.204952, 36.037251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638458, 32.068596, 36.022305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244018, 0.587876, 0.771270,
		-0.240951, -0.733619, 0.635410,
		0.939360, -0.340890, -0.037367,
		33.920265, 31.966330, 36.011093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609180, 32.058338, 36.737259>,  <33.262714, 32.204952, 36.037251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609180, 32.058338, 36.737259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886917, 32.142525, 36.461987>,  <34.053558, 32.193035, 36.296822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886917, 32.142525, 36.461987>,  <33.609180, 32.058338, 36.737259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886917, 32.142525, 36.461987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530302, 0.496812, 0.686992,
		0.486481, -0.841953, 0.233350,
		0.694346, 0.210463, -0.688178,
		34.095219, 32.205666, 36.255531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168869, 31.763863, 36.900276>,  <33.609180, 32.058338, 36.737259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168869, 31.763863, 36.900276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334846, 32.052624, 36.678761>,  <34.434433, 32.225880, 36.545853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334846, 32.052624, 36.678761>,  <34.168869, 31.763863, 36.900276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334846, 32.052624, 36.678761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628899, 0.212283, 0.747945,
		0.657503, -0.658630, -0.365918,
		0.414941, 0.721902, -0.553789,
		34.459328, 32.269196, 36.512623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895279, 31.670963, 36.830360>,  <34.168869, 31.763863, 36.900276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895279, 31.670963, 36.830360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879547, 32.056282, 36.724144>,  <34.870106, 32.287472, 36.660416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879547, 32.056282, 36.724144>,  <34.895279, 31.670963, 36.830360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879547, 32.056282, 36.724144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544200, 0.243527, 0.802833,
		0.838033, -0.112929, -0.533805,
		-0.039333, 0.963297, -0.265540,
		34.867748, 32.345272, 36.644482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650715, 31.949726, 36.794155>,  <34.895279, 31.670963, 36.830360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650715, 31.949726, 36.794155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368172, 32.226521, 36.853764>,  <35.198647, 32.392597, 36.889530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368172, 32.226521, 36.853764>,  <35.650715, 31.949726, 36.794155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368172, 32.226521, 36.853764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416786, 0.236426, 0.877720,
		0.572137, 0.682099, -0.455412,
		-0.706363, 0.691986, 0.149021,
		35.156261, 32.434116, 36.898472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984581, 32.506283, 37.067150>,  <35.650715, 31.949726, 36.794155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984581, 32.506283, 37.067150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602741, 32.585499, 37.156166>,  <35.373638, 32.633026, 37.209576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602741, 32.585499, 37.156166>,  <35.984581, 32.506283, 37.067150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602741, 32.585499, 37.156166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278520, 0.328323, 0.902569,
		0.105678, 0.923572, -0.368574,
		-0.954599, 0.198037, 0.222537,
		35.316360, 32.644909, 37.222927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060703, 32.986843, 37.541302>,  <35.984581, 32.506283, 37.067150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060703, 32.986843, 37.541302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675667, 32.909100, 37.616810>,  <35.444645, 32.862453, 37.662117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675667, 32.909100, 37.616810>,  <36.060703, 32.986843, 37.541302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675667, 32.909100, 37.616810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094261, 0.412975, 0.905851,
		-0.254017, 0.889762, -0.379208,
		-0.962596, -0.194357, 0.188773,
		35.386887, 32.850792, 37.673443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765884, 33.575211, 37.838520>,  <36.060703, 32.986843, 37.541302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765884, 33.575211, 37.838520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513725, 33.284351, 37.947227>,  <35.362431, 33.109837, 38.012451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513725, 33.284351, 37.947227>,  <35.765884, 33.575211, 37.838520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513725, 33.284351, 37.947227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147697, 0.456056, 0.877610,
		-0.762093, 0.513102, -0.394893,
		-0.630397, -0.727145, 0.271773,
		35.324608, 33.066208, 38.028759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286823, 33.918236, 38.216362>,  <35.765884, 33.575211, 37.838520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286823, 33.918236, 38.216362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288448, 33.539310, 38.344479>,  <35.289421, 33.311954, 38.421349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288448, 33.539310, 38.344479>,  <35.286823, 33.918236, 38.216362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288448, 33.539310, 38.344479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309124, 0.305797, 0.900517,
		-0.951013, 0.095354, 0.294078,
		0.004061, -0.947310, 0.320294,
		35.289665, 33.255119, 38.440567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896160, 33.938007, 38.776237>,  <35.286823, 33.918236, 38.216362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896160, 33.938007, 38.776237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125874, 33.613518, 38.820278>,  <35.263702, 33.418823, 38.846703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125874, 33.613518, 38.820278>,  <34.896160, 33.938007, 38.776237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125874, 33.613518, 38.820278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220545, 0.282820, 0.933473,
		-0.788393, -0.511793, 0.341329,
		0.574279, -0.811222, 0.110100,
		35.298157, 33.370152, 38.853310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725464, 33.715553, 39.426796>,  <34.896160, 33.938007, 38.776237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725464, 33.715553, 39.426796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062748, 33.510662, 39.361534>,  <35.265118, 33.387730, 39.322376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062748, 33.510662, 39.361534>,  <34.725464, 33.715553, 39.426796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062748, 33.510662, 39.361534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145554, -0.074623, 0.986532,
		-0.517501, -0.855603, 0.011634,
		0.843212, -0.512225, -0.163154,
		35.315712, 33.356995, 39.312588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648396, 33.245270, 39.902847>,  <34.725464, 33.715553, 39.426796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648396, 33.245270, 39.902847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032307, 33.272270, 39.793835>,  <35.262653, 33.288471, 39.728428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032307, 33.272270, 39.793835>,  <34.648396, 33.245270, 39.902847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032307, 33.272270, 39.793835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272033, 0.016647, 0.962144,
		0.069488, -0.997580, -0.002387,
		0.959776, 0.067507, -0.272532,
		35.320240, 33.292522, 39.712074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970264, 32.760036, 40.357952>,  <34.648396, 33.245270, 39.902847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970264, 32.760036, 40.357952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252991, 33.007420, 40.220589>,  <35.422626, 33.155849, 40.138172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252991, 33.007420, 40.220589>,  <34.970264, 32.760036, 40.357952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252991, 33.007420, 40.220589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213419, 0.276403, 0.937045,
		0.674438, -0.735606, 0.063375,
		0.706813, 0.618454, -0.343409,
		35.465034, 33.192955, 40.117565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582199, 32.632275, 40.818665>,  <34.970264, 32.760036, 40.357952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582199, 32.632275, 40.818665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615173, 32.992641, 40.648228>,  <35.634956, 33.208862, 40.545967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615173, 32.992641, 40.648228>,  <35.582199, 32.632275, 40.818665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615173, 32.992641, 40.648228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102725, 0.417585, 0.902812,
		0.991288, -0.118194, -0.058123,
		0.082435, 0.900917, -0.426089,
		35.639904, 33.262917, 40.520401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056644, 32.883354, 41.154076>,  <35.582199, 32.632275, 40.818665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056644, 32.883354, 41.154076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851383, 33.181076, 40.983112>,  <35.728226, 33.359711, 40.880535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851383, 33.181076, 40.983112>,  <36.056644, 32.883354, 41.154076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851383, 33.181076, 40.983112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290351, 0.619150, 0.729623,
		0.807693, 0.250314, -0.533831,
		-0.513156, 0.744309, -0.427404,
		35.697437, 33.404369, 40.854893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482529, 33.363335, 41.390560>,  <36.056644, 32.883354, 41.154076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482529, 33.363335, 41.390560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171448, 33.591393, 41.284641>,  <35.984798, 33.728226, 41.221088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171448, 33.591393, 41.284641>,  <36.482529, 33.363335, 41.390560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171448, 33.591393, 41.284641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220565, 0.641929, 0.734356,
		0.588666, 0.512706, -0.624984,
		-0.777704, 0.570140, -0.264797,
		35.938137, 33.762436, 41.205204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741856, 34.073383, 41.363438>,  <36.482529, 33.363335, 41.390560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741856, 34.073383, 41.363438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344330, 34.081867, 41.407040>,  <36.105816, 34.086956, 41.433201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344330, 34.081867, 41.407040>,  <36.741856, 34.073383, 41.363438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344330, 34.081867, 41.407040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085614, 0.771512, 0.630428,
		-0.070733, 0.635861, -0.768556,
		-0.993814, 0.021207, 0.109010,
		36.046185, 34.088230, 41.439743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526836, 34.796711, 41.294281>,  <36.741856, 34.073383, 41.363438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526836, 34.796711, 41.294281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236595, 34.606010, 41.492760>,  <36.062450, 34.491592, 41.611847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236595, 34.606010, 41.492760>,  <36.526836, 34.796711, 41.294281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236595, 34.606010, 41.492760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077975, 0.773419, 0.629081,
		-0.683678, 0.417774, -0.598372,
		-0.725606, -0.476747, 0.496193,
		36.018913, 34.462986, 41.641617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163254, 35.383598, 41.481071>,  <36.526836, 34.796711, 41.294281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163254, 35.383598, 41.481071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030457, 35.097080, 41.726578>,  <35.950779, 34.925171, 41.873882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030457, 35.097080, 41.726578>,  <36.163254, 35.383598, 41.481071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030457, 35.097080, 41.726578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127584, 0.610589, 0.781603,
		-0.934615, 0.337790, -0.111321,
		-0.331989, -0.716296, 0.613762,
		35.930859, 34.882191, 41.910706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631207, 35.630932, 41.799335>,  <36.163254, 35.383598, 41.481071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631207, 35.630932, 41.799335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743446, 35.323044, 42.028698>,  <35.810791, 35.138309, 42.166317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743446, 35.323044, 42.028698>,  <35.631207, 35.630932, 41.799335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743446, 35.323044, 42.028698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059328, 0.582360, 0.810763,
		-0.957991, -0.261515, 0.117742,
		0.280595, -0.769719, 0.573411,
		35.827625, 35.092129, 42.200722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132610, 35.456909, 42.356850>,  <35.631207, 35.630932, 41.799335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132610, 35.456909, 42.356850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474350, 35.304668, 42.498402>,  <35.679394, 35.213326, 42.583332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474350, 35.304668, 42.498402>,  <35.132610, 35.456909, 42.356850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474350, 35.304668, 42.498402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071266, 0.588694, 0.805208,
		-0.514787, -0.713149, 0.475828,
		0.854351, -0.380601, 0.353875,
		35.730656, 35.190487, 42.604565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009453, 35.336166, 43.094204>,  <35.132610, 35.456909, 42.356850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009453, 35.336166, 43.094204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408371, 35.328972, 43.065678>,  <35.647720, 35.324657, 43.048561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408371, 35.328972, 43.065678>,  <35.009453, 35.336166, 43.094204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408371, 35.328972, 43.065678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070152, 0.523707, 0.849005,
		0.022079, -0.851708, 0.523551,
		0.997292, -0.017983, -0.071311,
		35.707558, 35.323578, 43.044285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149521, 35.342575, 43.773670>,  <35.009453, 35.336166, 43.094204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149521, 35.342575, 43.773670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497932, 35.439838, 43.602940>,  <35.706982, 35.498196, 43.500504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497932, 35.439838, 43.602940>,  <35.149521, 35.342575, 43.773670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497932, 35.439838, 43.602940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258251, 0.512449, 0.818964,
		0.417861, -0.823572, 0.383565,
		0.871033, 0.243157, -0.426821,
		35.759243, 35.512787, 43.474892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653885, 35.241196, 44.257919>,  <35.149521, 35.342575, 43.773670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653885, 35.241196, 44.257919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851288, 35.474174, 43.999554>,  <35.969730, 35.613960, 43.844532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851288, 35.474174, 43.999554>,  <35.653885, 35.241196, 44.257919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851288, 35.474174, 43.999554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337047, 0.556549, 0.759376,
		0.801780, -0.592461, 0.078349,
		0.493506, 0.582445, -0.645917,
		35.999340, 35.648907, 43.805779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423367, 35.295395, 44.411865>,  <35.653885, 35.241196, 44.257919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423367, 35.295395, 44.411865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338448, 35.637489, 44.222763>,  <36.287495, 35.842747, 44.109303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.338448, 35.637489, 44.222763>,  <36.423367, 35.295395, 44.411865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338448, 35.637489, 44.222763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490694, 0.511671, 0.705275,
		0.845074, -0.082252, -0.528285,
		-0.212298, 0.855236, -0.472760,
		36.274757, 35.894058, 44.080936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919682, 35.751469, 44.672935>,  <36.423367, 35.295395, 44.411865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919682, 35.751469, 44.672935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676552, 36.021515, 44.505714>,  <36.530674, 36.183544, 44.405384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676552, 36.021515, 44.505714>,  <36.919682, 35.751469, 44.672935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676552, 36.021515, 44.505714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414442, 0.718786, 0.558198,
		0.677336, 0.166030, -0.716693,
		-0.607827, 0.675115, -0.418050,
		36.494205, 36.224049, 44.380299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274189, 36.297119, 44.439117>,  <36.919682, 35.751469, 44.672935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274189, 36.297119, 44.439117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908031, 36.444359, 44.504311>,  <36.688339, 36.532703, 44.543427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.908031, 36.444359, 44.504311>,  <37.274189, 36.297119, 44.439117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908031, 36.444359, 44.504311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401669, 0.808106, 0.430843,
		0.026882, 0.459856, -0.887586,
		-0.915390, 0.368098, 0.162986,
		36.633415, 36.554787, 44.553207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197132, 36.939388, 44.185677>,  <37.274189, 36.297119, 44.439117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197132, 36.939388, 44.185677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913212, 36.926422, 44.467140>,  <36.742859, 36.918640, 44.636017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913212, 36.926422, 44.467140>,  <37.197132, 36.939388, 44.185677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913212, 36.926422, 44.467140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411591, 0.791582, 0.451652,
		-0.571646, 0.610202, -0.548520,
		-0.709798, -0.032419, 0.703659,
		36.700272, 36.916695, 44.678238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183712, 37.582939, 44.470890>,  <37.197132, 36.939388, 44.185677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183712, 37.582939, 44.470890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921711, 37.442116, 44.738331>,  <36.764511, 37.357620, 44.898796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921711, 37.442116, 44.738331>,  <37.183712, 37.582939, 44.470890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921711, 37.442116, 44.738331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187463, 0.781456, 0.595135,
		-0.732007, 0.515151, -0.445854,
		-0.654999, -0.352061, 0.668602,
		36.725212, 37.336498, 44.938911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765945, 38.166206, 44.638653>,  <37.183712, 37.582939, 44.470890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765945, 38.166206, 44.638653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681786, 37.914055, 44.937542>,  <36.631290, 37.762764, 45.116875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681786, 37.914055, 44.937542>,  <36.765945, 38.166206, 44.638653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681786, 37.914055, 44.937542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167003, 0.776278, 0.607867,
		-0.963246, 0.003106, -0.268604,
		-0.210399, -0.630383, 0.747228,
		36.618668, 37.724941, 45.161709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221119, 38.429943, 44.936234>,  <36.765945, 38.166206, 44.638653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221119, 38.429943, 44.936234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359207, 38.188759, 45.223919>,  <36.442062, 38.044048, 45.396530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359207, 38.188759, 45.223919>,  <36.221119, 38.429943, 44.936234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359207, 38.188759, 45.223919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105020, 0.786329, 0.608817,
		-0.932626, -0.134646, 0.334781,
		0.345223, -0.602958, 0.719210,
		36.462772, 38.007870, 45.439682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750626, 38.434536, 45.559681>,  <36.221119, 38.429943, 44.936234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750626, 38.434536, 45.559681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110649, 38.320370, 45.691399>,  <36.326664, 38.251869, 45.770428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110649, 38.320370, 45.691399>,  <35.750626, 38.434536, 45.559681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110649, 38.320370, 45.691399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002289, 0.758746, 0.651383,
		-0.435760, -0.585530, 0.683570,
		0.900060, -0.285412, 0.329291,
		36.380669, 38.234745, 45.790184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742630, 38.439041, 46.305939>,  <35.750626, 38.434536, 45.559681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742630, 38.439041, 46.305939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132092, 38.419178, 46.216923>,  <36.365768, 38.407261, 46.163513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132092, 38.419178, 46.216923>,  <35.742630, 38.439041, 46.305939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132092, 38.419178, 46.216923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209083, 0.583806, 0.784509,
		0.090964, -0.810373, 0.578810,
		0.973658, -0.049657, -0.222540,
		36.424191, 38.404282, 46.150162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098518, 38.616508, 46.984493>,  <35.742630, 38.439041, 46.305939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098518, 38.616508, 46.984493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354187, 38.680431, 46.683582>,  <36.507587, 38.718784, 46.503036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354187, 38.680431, 46.683582>,  <36.098518, 38.616508, 46.984493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354187, 38.680431, 46.683582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475428, 0.686761, 0.549843,
		0.604502, -0.709098, 0.362983,
		0.639175, 0.159809, -0.752274,
		36.545940, 38.728374, 46.457901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686047, 38.742035, 47.366966>,  <36.098518, 38.616508, 46.984493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686047, 38.742035, 47.366966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779423, 38.882004, 47.004074>,  <36.835449, 38.965984, 46.786339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779423, 38.882004, 47.004074>,  <36.686047, 38.742035, 47.366966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779423, 38.882004, 47.004074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511652, 0.749193, 0.420621,
		0.826872, -0.562375, -0.004145,
		0.233442, 0.349920, -0.907227,
		36.849457, 38.986980, 46.731907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502884, 39.037319, 47.303127>,  <36.686047, 38.742035, 47.366966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502884, 39.037319, 47.303127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296223, 39.217037, 47.011593>,  <37.172226, 39.324867, 46.836674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296223, 39.217037, 47.011593>,  <37.502884, 39.037319, 47.303127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296223, 39.217037, 47.011593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404711, 0.878302, 0.254546,
		0.754503, -0.163455, -0.635616,
		-0.516656, 0.449297, -0.728834,
		37.141228, 39.351826, 46.792942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907696, 39.528713, 47.043770>,  <37.502884, 39.037319, 47.303127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907696, 39.528713, 47.043770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530434, 39.636784, 46.966339>,  <37.304077, 39.701626, 46.919880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.530434, 39.636784, 46.966339>,  <37.907696, 39.528713, 47.043770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530434, 39.636784, 46.966339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227428, 0.949332, 0.216898,
		0.242367, 0.160544, -0.956809,
		-0.943152, 0.270174, -0.193575,
		37.247490, 39.717834, 46.908268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904999, 40.058449, 46.562851>,  <37.907696, 39.528713, 47.043770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904999, 40.058449, 46.562851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562271, 40.114433, 46.761353>,  <37.356632, 40.148026, 46.880455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.562271, 40.114433, 46.761353>,  <37.904999, 40.058449, 46.562851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562271, 40.114433, 46.761353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186571, 0.981395, 0.045341,
		-0.480675, 0.131436, -0.866993,
		-0.856821, 0.139962, 0.496254,
		37.305225, 40.156422, 46.910229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603146, 40.302464, 45.848419>,  <37.904999, 40.058449, 46.562851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603146, 40.302464, 45.848419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657276, 40.682941, 45.737484>,  <37.689754, 40.911228, 45.670921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657276, 40.682941, 45.737484>,  <37.603146, 40.302464, 45.848419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657276, 40.682941, 45.737484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076586, -0.289122, -0.954224,
		-0.987836, 0.107894, -0.111975,
		0.135330, 0.951193, -0.277342,
		37.697876, 40.968300, 45.654282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088490, 40.479889, 45.435493>,  <37.603146, 40.302464, 45.848419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088490, 40.479889, 45.435493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394039, 40.719990, 45.340675>,  <37.577370, 40.864052, 45.283783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394039, 40.719990, 45.340675>,  <37.088490, 40.479889, 45.435493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394039, 40.719990, 45.340675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002710, -0.370289, -0.928913,
		-0.645359, 0.708930, -0.284481,
		0.763874, 0.600253, -0.237048,
		37.623203, 40.900066, 45.269562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847084, 40.903885, 44.757942>,  <37.088490, 40.479889, 45.435493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847084, 40.903885, 44.757942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246986, 40.902943, 44.766655>,  <37.486927, 40.902378, 44.771881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246986, 40.902943, 44.766655>,  <36.847084, 40.903885, 44.757942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246986, 40.902943, 44.766655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019993, -0.308235, -0.951100,
		0.008950, 0.951307, -0.308114,
		0.999760, -0.002352, 0.021778,
		37.546913, 40.902237, 44.773190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058720, 40.996819, 44.052387>,  <36.847084, 40.903885, 44.757942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058720, 40.996819, 44.052387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415024, 40.908566, 44.211319>,  <37.628807, 40.855614, 44.306679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415024, 40.908566, 44.211319>,  <37.058720, 40.996819, 44.052387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415024, 40.908566, 44.211319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220290, -0.555078, -0.802098,
		0.397516, 0.802004, -0.445838,
		0.890760, -0.220633, 0.397326,
		37.682251, 40.842377, 44.330517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411098, 41.167332, 43.502857>,  <37.058720, 40.996819, 44.052387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411098, 41.167332, 43.502857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595963, 40.901104, 43.737270>,  <37.706882, 40.741367, 43.877918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595963, 40.901104, 43.737270>,  <37.411098, 41.167332, 43.502857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595963, 40.901104, 43.737270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280556, -0.517158, -0.808601,
		0.841248, 0.538116, -0.052280,
		0.462159, -0.665566, 0.586030,
		37.734612, 40.701435, 43.913078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123020, 41.097351, 43.188831>,  <37.411098, 41.167332, 43.502857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123020, 41.097351, 43.188831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043789, 40.771629, 43.407070>,  <37.996250, 40.576199, 43.538013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043789, 40.771629, 43.407070>,  <38.123020, 41.097351, 43.188831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043789, 40.771629, 43.407070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283180, -0.580435, -0.763482,
		0.938389, 0.003273, 0.345565,
		-0.198079, -0.814300, 0.545600,
		37.984364, 40.527340, 43.570751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694424, 40.642845, 43.032845>,  <38.123020, 41.097351, 43.188831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694424, 40.642845, 43.032845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407948, 40.409393, 43.185913>,  <38.236061, 40.269321, 43.277756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.407948, 40.409393, 43.185913>,  <38.694424, 40.642845, 43.032845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407948, 40.409393, 43.185913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208632, -0.702292, -0.680631,
		0.665990, -0.407623, 0.624741,
		-0.716192, -0.583634, 0.382676,
		38.193089, 40.234303, 43.300716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019947, 39.964127, 43.102879>,  <38.694424, 40.642845, 43.032845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019947, 39.964127, 43.102879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623909, 39.910599, 43.085846>,  <38.386288, 39.878483, 43.075626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623909, 39.910599, 43.085846>,  <39.019947, 39.964127, 43.102879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623909, 39.910599, 43.085846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114721, -0.595854, -0.794857,
		0.080992, -0.791865, 0.605301,
		-0.990091, -0.133818, -0.042584,
		38.326881, 39.870453, 43.073071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989487, 39.215702, 43.116482>,  <39.019947, 39.964127, 43.102879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989487, 39.215702, 43.116482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651573, 39.375736, 42.974342>,  <38.448826, 39.471756, 42.889057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.651573, 39.375736, 42.974342>,  <38.989487, 39.215702, 43.116482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651573, 39.375736, 42.974342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077686, -0.748731, -0.658306,
		-0.529440, -0.528520, 0.663596,
		-0.844783, 0.400086, -0.355349,
		38.398140, 39.495762, 42.867737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578598, 38.682682, 43.001129>,  <38.989487, 39.215702, 43.116482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578598, 38.682682, 43.001129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375263, 38.958134, 42.794289>,  <38.253262, 39.123405, 42.670185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375263, 38.958134, 42.794289>,  <38.578598, 38.682682, 43.001129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375263, 38.958134, 42.794289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071851, -0.632287, -0.771395,
		-0.858157, -0.354972, 0.370892,
		-0.508334, 0.688627, -0.517097,
		38.222763, 39.164722, 42.639160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076736, 38.349731, 42.646320>,  <38.578598, 38.682682, 43.001129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076736, 38.349731, 42.646320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053215, 38.699627, 42.453911>,  <38.039101, 38.909565, 42.338467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053215, 38.699627, 42.453911>,  <38.076736, 38.349731, 42.646320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053215, 38.699627, 42.453911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254419, -0.479073, -0.840095,
		-0.965305, 0.072980, 0.250721,
		-0.058803, 0.874736, -0.481019,
		38.035572, 38.962048, 42.309605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388130, 38.349499, 42.186913>,  <38.076736, 38.349731, 42.646320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388130, 38.349499, 42.186913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627796, 38.638004, 42.047894>,  <37.771595, 38.811108, 41.964481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627796, 38.638004, 42.047894>,  <37.388130, 38.349499, 42.186913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627796, 38.638004, 42.047894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186297, -0.296577, -0.936662,
		-0.778651, 0.625959, -0.043329,
		0.599163, 0.721261, -0.347544,
		37.807545, 38.854382, 41.943630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931404, 38.952396, 41.945015>,  <37.388130, 38.349499, 42.186913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931404, 38.952396, 41.945015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293503, 38.861984, 41.801105>,  <37.510761, 38.807735, 41.714760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293503, 38.861984, 41.801105>,  <36.931404, 38.952396, 41.945015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293503, 38.861984, 41.801105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424878, -0.485741, -0.763894,
		-0.002091, 0.844373, -0.535752,
		0.905248, -0.226032, -0.359771,
		37.565079, 38.794174, 41.693172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756474, 38.855392, 41.249905>,  <36.931404, 38.952396, 41.945015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756474, 38.855392, 41.249905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126320, 38.707832, 41.287842>,  <37.348228, 38.619297, 41.310604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126320, 38.707832, 41.287842>,  <36.756474, 38.855392, 41.249905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126320, 38.707832, 41.287842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176483, -0.635578, -0.751594,
		0.337540, 0.678200, -0.652771,
		0.924619, -0.368897, 0.094842,
		37.403706, 38.597164, 41.316296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080471, 38.795486, 40.558224>,  <36.756474, 38.855392, 41.249905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080471, 38.795486, 40.558224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289059, 38.533638, 40.777145>,  <37.414211, 38.376530, 40.908497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289059, 38.533638, 40.777145>,  <37.080471, 38.795486, 40.558224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289059, 38.533638, 40.777145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010829, -0.646444, -0.762885,
		0.853202, 0.391894, -0.344189,
		0.521469, -0.654621, 0.547303,
		37.445499, 38.337250, 40.941338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778175, 38.488022, 40.082878>,  <37.080471, 38.795486, 40.558224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778175, 38.488022, 40.082878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595814, 38.288216, 40.377533>,  <37.486397, 38.168331, 40.554325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595814, 38.288216, 40.377533>,  <37.778175, 38.488022, 40.082878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595814, 38.288216, 40.377533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168582, -0.764212, -0.622543,
		0.873919, -0.408002, 0.264196,
		-0.455901, -0.499513, 0.736642,
		37.459045, 38.138363, 40.598526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999180, 37.854420, 40.005314>,  <37.778175, 38.488022, 40.082878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999180, 37.854420, 40.005314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721924, 37.746685, 40.272751>,  <37.555569, 37.682045, 40.433212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721924, 37.746685, 40.272751>,  <37.999180, 37.854420, 40.005314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721924, 37.746685, 40.272751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148508, -0.854300, -0.498113,
		0.705338, -0.444553, 0.552151,
		-0.693140, -0.269339, 0.668590,
		37.513981, 37.665882, 40.473328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188629, 37.155754, 40.254879>,  <37.999180, 37.854420, 40.005314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188629, 37.155754, 40.254879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802010, 37.229008, 40.326714>,  <37.570038, 37.272961, 40.369812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802010, 37.229008, 40.326714>,  <38.188629, 37.155754, 40.254879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802010, 37.229008, 40.326714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254404, -0.773639, -0.580312,
		0.032658, -0.606585, 0.794348,
		-0.966546, 0.183133, 0.179583,
		37.512047, 37.283947, 40.380589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838661, 36.508320, 40.547657>,  <38.188629, 37.155754, 40.254879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838661, 36.508320, 40.547657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570858, 36.746338, 40.369812>,  <37.410175, 36.889149, 40.263103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570858, 36.746338, 40.369812>,  <37.838661, 36.508320, 40.547657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570858, 36.746338, 40.369812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365193, -0.784908, -0.500552,
		-0.646831, -0.172754, 0.742809,
		-0.669510, 0.595042, -0.444615,
		37.370007, 36.924850, 40.236427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225254, 36.185791, 40.607410>,  <37.838661, 36.508320, 40.547657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225254, 36.185791, 40.607410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157761, 36.423389, 40.292782>,  <37.117264, 36.565948, 40.104004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157761, 36.423389, 40.292782>,  <37.225254, 36.185791, 40.607410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157761, 36.423389, 40.292782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348458, -0.782432, -0.516117,
		-0.922013, 0.187005, 0.339001,
		-0.168729, 0.593994, -0.786576,
		37.107143, 36.601589, 40.056808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510609, 36.002083, 40.323719>,  <37.225254, 36.185791, 40.607410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510609, 36.002083, 40.323719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725719, 36.155506, 40.023407>,  <36.854786, 36.247562, 39.843220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725719, 36.155506, 40.023407>,  <36.510609, 36.002083, 40.323719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725719, 36.155506, 40.023407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276253, -0.761186, -0.586754,
		-0.796543, 0.522949, -0.303388,
		0.537777, 0.383563, -0.750783,
		36.887054, 36.270576, 39.798172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995789, 35.970158, 39.730797>,  <36.510609, 36.002083, 40.323719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995789, 35.970158, 39.730797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374660, 35.999073, 39.605820>,  <36.601986, 36.016422, 39.530834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374660, 35.999073, 39.605820>,  <35.995789, 35.970158, 39.730797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374660, 35.999073, 39.605820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166144, -0.722711, -0.670883,
		-0.274305, 0.687359, -0.672528,
		0.947181, 0.072290, -0.312444,
		36.658813, 36.020760, 39.512085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949100, 35.740463, 38.953663>,  <35.995789, 35.970158, 39.730797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949100, 35.740463, 38.953663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340572, 35.775497, 39.027969>,  <36.575455, 35.796516, 39.072552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340572, 35.775497, 39.027969>,  <35.949100, 35.740463, 38.953663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340572, 35.775497, 39.027969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198662, -0.633069, -0.748170,
		0.052074, 0.769125, -0.636973,
		0.978684, 0.087582, 0.185762,
		36.634178, 35.801773, 39.083698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209019, 35.758495, 38.322121>,  <35.949100, 35.740463, 38.953663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209019, 35.758495, 38.322121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515560, 35.638229, 38.549206>,  <36.699486, 35.566071, 38.685459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515560, 35.638229, 38.549206>,  <36.209019, 35.758495, 38.322121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515560, 35.638229, 38.549206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126394, -0.795877, -0.592119,
		0.629863, 0.525528, -0.571920,
		0.766353, -0.300666, 0.567717,
		36.745464, 35.548031, 38.719521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793560, 35.683975, 37.999733>,  <36.209019, 35.758495, 38.322121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793560, 35.683975, 37.999733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876953, 35.442692, 38.307674>,  <36.926991, 35.297924, 38.492439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876953, 35.442692, 38.307674>,  <36.793560, 35.683975, 37.999733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876953, 35.442692, 38.307674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287264, -0.714667, -0.637754,
		0.934888, 0.354112, 0.024283,
		0.208482, -0.603204, 0.769857,
		36.939499, 35.261730, 38.538631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375496, 35.434212, 37.834305>,  <36.793560, 35.683975, 37.999733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375496, 35.434212, 37.834305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245312, 35.159912, 38.094711>,  <37.167202, 34.995335, 38.250957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245312, 35.159912, 38.094711>,  <37.375496, 35.434212, 37.834305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245312, 35.159912, 38.094711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411784, -0.722579, -0.555259,
		0.851180, 0.087363, 0.517552,
		-0.325463, -0.685745, 0.651020,
		37.147675, 34.954189, 38.290016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907158, 34.965027, 37.749336>,  <37.375496, 35.434212, 37.834305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907158, 34.965027, 37.749336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641254, 34.757118, 37.963974>,  <37.481712, 34.632374, 38.092758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641254, 34.757118, 37.963974>,  <37.907158, 34.965027, 37.749336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641254, 34.757118, 37.963974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363172, -0.852530, -0.375898,
		0.652845, -0.055004, 0.755492,
		-0.664755, -0.519776, 0.536594,
		37.441830, 34.601185, 38.124950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278683, 34.550068, 38.096394>,  <37.907158, 34.965027, 37.749336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278683, 34.550068, 38.096394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914795, 34.386524, 38.067440>,  <37.696461, 34.288399, 38.050068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.914795, 34.386524, 38.067440>,  <38.278683, 34.550068, 38.096394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914795, 34.386524, 38.067440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401828, -0.822994, -0.401516,
		0.104596, -0.394352, 0.912988,
		-0.909722, -0.408861, -0.072380,
		37.641880, 34.263866, 38.045727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391476, 33.894356, 38.391098>,  <38.278683, 34.550068, 38.096394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391476, 33.894356, 38.391098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050827, 33.890575, 38.181469>,  <37.846439, 33.888306, 38.055691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050827, 33.890575, 38.181469>,  <38.391476, 33.894356, 38.391098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050827, 33.890575, 38.181469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282189, -0.850844, -0.443209,
		-0.441714, -0.525334, 0.727264,
		-0.851621, -0.009454, -0.524073,
		37.795341, 33.887741, 38.024246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214752, 33.229462, 38.377266>,  <38.391476, 33.894356, 38.391098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214752, 33.229462, 38.377266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996796, 33.387440, 38.081398>,  <37.866020, 33.482227, 37.903877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996796, 33.387440, 38.081398>,  <38.214752, 33.229462, 38.377266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996796, 33.387440, 38.081398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111611, -0.840116, -0.530799,
		-0.831038, -0.371788, 0.413702,
		-0.544903, 0.394941, -0.739664,
		37.833328, 33.505924, 37.859497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922760, 32.665081, 37.985710>,  <38.214752, 33.229462, 38.377266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922760, 32.665081, 37.985710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896305, 32.955276, 37.711689>,  <37.880432, 33.129395, 37.547276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896305, 32.955276, 37.711689>,  <37.922760, 32.665081, 37.985710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896305, 32.955276, 37.711689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184434, -0.665838, -0.722941,
		-0.980617, -0.174159, -0.089768,
		-0.066136, 0.725485, -0.685053,
		37.876465, 33.172920, 37.506172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743275, 32.336285, 37.379871>,  <37.922760, 32.665081, 37.985710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743275, 32.336285, 37.379871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877029, 32.670666, 37.205807>,  <37.957283, 32.871296, 37.101368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877029, 32.670666, 37.205807>,  <37.743275, 32.336285, 37.379871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877029, 32.670666, 37.205807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194954, -0.513111, -0.835889,
		-0.922049, 0.194678, -0.334552,
		0.334391, 0.835953, -0.435160,
		37.977348, 32.921452, 37.075260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389687, 32.320286, 36.763363>,  <37.743275, 32.336285, 37.379871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389687, 32.320286, 36.763363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683224, 32.582268, 36.691246>,  <37.859348, 32.739456, 36.647976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683224, 32.582268, 36.691246>,  <37.389687, 32.320286, 36.763363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683224, 32.582268, 36.691246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091979, -0.358761, -0.928887,
		-0.673059, 0.665078, -0.323517,
		0.733847, 0.654952, -0.180294,
		37.903378, 32.778755, 36.637157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152882, 32.736626, 36.172298>,  <37.389687, 32.320286, 36.763363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152882, 32.736626, 36.172298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552608, 32.739094, 36.186836>,  <37.792446, 32.740574, 36.195560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552608, 32.739094, 36.186836>,  <37.152882, 32.736626, 36.172298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552608, 32.739094, 36.186836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036862, -0.157321, -0.986859,
		-0.000372, 0.987528, -0.157442,
		0.999320, 0.006170, 0.036343,
		37.852406, 32.740944, 36.197739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309025, 33.076054, 35.626892>,  <37.152882, 32.736626, 36.172298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309025, 33.076054, 35.626892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685551, 32.955894, 35.688450>,  <37.911469, 32.883801, 35.725384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685551, 32.955894, 35.688450>,  <37.309025, 33.076054, 35.626892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685551, 32.955894, 35.688450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247086, 0.302701, -0.920500,
		0.229930, 0.904508, 0.359161,
		0.941318, -0.300395, 0.153892,
		37.967945, 32.865776, 35.734619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755848, 33.652119, 35.477734>,  <37.309025, 33.076054, 35.626892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755848, 33.652119, 35.477734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967594, 33.313427, 35.456524>,  <38.094643, 33.110210, 35.443798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967594, 33.313427, 35.456524>,  <37.755848, 33.652119, 35.477734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967594, 33.313427, 35.456524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341292, 0.269760, -0.900416,
		0.776717, 0.458554, 0.431786,
		0.529368, -0.846734, -0.053026,
		38.126404, 33.059406, 35.440617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496529, 33.838711, 35.348106>,  <37.755848, 33.652119, 35.477734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496529, 33.838711, 35.348106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458027, 33.456150, 35.237816>,  <38.434925, 33.226612, 35.171642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.458027, 33.456150, 35.237816>,  <38.496529, 33.838711, 35.348106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458027, 33.456150, 35.237816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376288, 0.221488, -0.899639,
		0.921490, -0.190341, 0.338566,
		-0.096250, -0.956406, -0.275722,
		38.429153, 33.169228, 35.155098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139286, 33.664867, 35.027107>,  <38.496529, 33.838711, 35.348106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139286, 33.664867, 35.027107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864849, 33.415531, 34.877056>,  <38.700188, 33.265930, 34.787025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864849, 33.415531, 34.877056>,  <39.139286, 33.664867, 35.027107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864849, 33.415531, 34.877056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355688, 0.162402, -0.920387,
		0.634641, -0.764896, 0.110294,
		-0.686088, -0.623345, -0.375131,
		38.659023, 33.228527, 34.764519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412773, 33.473663, 34.481205>,  <39.139286, 33.664867, 35.027107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412773, 33.473663, 34.481205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051769, 33.317226, 34.409065>,  <38.835167, 33.223366, 34.365784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051769, 33.317226, 34.409065>,  <39.412773, 33.473663, 34.481205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051769, 33.317226, 34.409065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185173, 0.025685, -0.982370,
		0.388829, -0.919993, 0.049239,
		-0.902509, -0.391092, -0.180345,
		38.781017, 33.199898, 34.354961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061157, 33.647152, 34.162312>,  <39.412773, 33.473663, 34.481205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061157, 33.647152, 34.162312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219704, 33.821457, 34.485546>,  <40.314831, 33.926041, 34.679485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219704, 33.821457, 34.485546>,  <40.061157, 33.647152, 34.162312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219704, 33.821457, 34.485546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751141, -0.352180, 0.558352,
		0.527900, -0.828301, 0.187724,
		0.396370, 0.435761, 0.808086,
		40.338615, 33.952187, 34.727970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244751, 33.196846, 34.676758>,  <40.061157, 33.647152, 34.162312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244751, 33.196846, 34.676758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141628, 33.536575, 34.861015>,  <40.079754, 33.740414, 34.971569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141628, 33.536575, 34.861015>,  <40.244751, 33.196846, 34.676758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141628, 33.536575, 34.861015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685545, -0.496756, 0.532223,
		0.680854, -0.178580, 0.710315,
		-0.257809, 0.849319, 0.460643,
		40.064285, 33.791370, 34.999207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365646, 32.553680, 34.970272>,  <40.244751, 33.196846, 34.676758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365646, 32.553680, 34.970272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498470, 32.473137, 35.338879>,  <40.578163, 32.424812, 35.560043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498470, 32.473137, 35.338879>,  <40.365646, 32.553680, 34.970272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498470, 32.473137, 35.338879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256505, -0.920858, -0.293642,
		0.907712, 0.333880, -0.254131,
		0.332060, -0.201357, 0.921516,
		40.598087, 32.412731, 35.615334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541325, 33.121941, 35.312225>,  <40.365646, 32.553680, 34.970272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541325, 33.121941, 35.312225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598827, 33.397499, 35.596409>,  <40.633327, 33.562836, 35.766918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598827, 33.397499, 35.596409>,  <40.541325, 33.121941, 35.312225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598827, 33.397499, 35.596409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966314, 0.057148, -0.250942,
		-0.213475, 0.722603, -0.657475,
		0.143758, 0.688897, 0.710461,
		40.641956, 33.604168, 35.809547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971367, 33.650986, 35.063072>,  <40.541325, 33.121941, 35.312225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971367, 33.650986, 35.063072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005985, 33.600719, 35.458389>,  <41.026756, 33.570560, 35.695580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005985, 33.600719, 35.458389>,  <40.971367, 33.650986, 35.063072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005985, 33.600719, 35.458389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993337, -0.064889, -0.095240,
		0.076097, 0.989948, 0.119211,
		0.086547, -0.125664, 0.988291,
		41.031948, 33.563019, 35.754875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221905, 34.013870, 34.455948>,  <40.971367, 33.650986, 35.063072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221905, 34.013870, 34.455948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054874, 33.769199, 34.187180>,  <40.954655, 33.622398, 34.025917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054874, 33.769199, 34.187180>,  <41.221905, 34.013870, 34.455948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054874, 33.769199, 34.187180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653242, 0.311914, -0.689916,
		0.631587, -0.727023, 0.269324,
		-0.417579, -0.611676, -0.671923,
		40.929600, 33.585697, 33.985603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714794, 33.921616, 33.935062>,  <41.221905, 34.013870, 34.455948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714794, 33.921616, 33.935062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381630, 33.785015, 33.760872>,  <41.181732, 33.703056, 33.656357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381630, 33.785015, 33.760872>,  <41.714794, 33.921616, 33.935062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381630, 33.785015, 33.760872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340206, 0.304681, -0.889623,
		0.436488, -0.889127, -0.137591,
		-0.832910, -0.341501, -0.435476,
		41.131756, 33.682564, 33.630230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.211205, 33.370796, 33.870461>,  <41.714794, 33.921616, 33.935062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.211205, 33.370796, 33.870461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455997, 33.299698, 33.562206>,  <42.602871, 33.257038, 33.377251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455997, 33.299698, 33.562206>,  <42.211205, 33.370796, 33.870461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455997, 33.299698, 33.562206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638135, -0.686591, -0.348391,
		-0.467189, 0.704980, -0.533608,
		0.611979, -0.177749, -0.770640,
		42.639591, 33.246372, 33.331013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664867, 33.979347, 33.957649>,  <42.211205, 33.370796, 33.870461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664867, 33.979347, 33.957649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047569, 34.067528, 33.881721>,  <43.277191, 34.120434, 33.836166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047569, 34.067528, 33.881721>,  <42.664867, 33.979347, 33.957649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047569, 34.067528, 33.881721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120472, 0.894161, 0.431234,
		0.264791, -0.389716, 0.882047,
		0.956751, 0.220449, -0.189816,
		43.334595, 34.133663, 33.824776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057034, 34.113991, 34.590569>,  <42.664867, 33.979347, 33.957649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057034, 34.113991, 34.590569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232952, 34.303070, 34.285114>,  <43.338501, 34.416519, 34.101841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.232952, 34.303070, 34.285114>,  <43.057034, 34.113991, 34.590569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232952, 34.303070, 34.285114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126745, 0.874435, 0.468294,
		0.889113, -0.109164, 0.444479,
		0.439789, 0.472702, -0.763636,
		43.364891, 34.444881, 34.056023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383305, 34.758175, 34.911480>,  <43.057034, 34.113991, 34.590569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383305, 34.758175, 34.911480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420853, 34.827568, 34.519337>,  <43.443382, 34.869205, 34.284050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420853, 34.827568, 34.519337>,  <43.383305, 34.758175, 34.911480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420853, 34.827568, 34.519337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551520, 0.828864, 0.093868,
		0.828864, 0.531873, 0.173482,
		-0.093868, -0.173482, 0.980353,
		43.449013, 34.879612, 34.225231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632038, 35.504070, 34.765396>,  <43.383305, 34.758175, 34.911480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632038, 35.504070, 34.765396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419746, 35.365978, 34.455780>,  <43.292370, 35.283123, 34.270008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419746, 35.365978, 34.455780>,  <43.632038, 35.504070, 34.765396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419746, 35.365978, 34.455780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548539, 0.836119, 0.003195,
		0.646088, 0.426288, -0.633126,
		-0.530731, -0.345230, -0.774042,
		43.260529, 35.262409, 34.223568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555058, 36.112045, 34.333908>,  <43.632038, 35.504070, 34.765396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555058, 36.112045, 34.333908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273380, 35.852551, 34.218494>,  <43.104374, 35.696854, 34.149246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273380, 35.852551, 34.218494>,  <43.555058, 36.112045, 34.333908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273380, 35.852551, 34.218494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613322, 0.760537, -0.213118,
		0.357700, 0.026889, -0.933449,
		-0.704192, -0.648738, -0.288535,
		43.062122, 35.657928, 34.131935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351238, 36.392590, 33.767315>,  <43.555058, 36.112045, 34.333908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351238, 36.392590, 33.767315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051235, 36.161068, 33.895363>,  <42.871235, 36.022156, 33.972191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051235, 36.161068, 33.895363>,  <43.351238, 36.392590, 33.767315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051235, 36.161068, 33.895363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626431, 0.776935, -0.062890,
		-0.212313, -0.247702, -0.945287,
		-0.750005, -0.578805, 0.320122,
		42.826233, 35.987427, 33.991398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805141, 36.493134, 33.262123>,  <43.351238, 36.392590, 33.767315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805141, 36.493134, 33.262123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606922, 36.325165, 33.566254>,  <42.487991, 36.224384, 33.748734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606922, 36.325165, 33.566254>,  <42.805141, 36.493134, 33.262123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606922, 36.325165, 33.566254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681077, 0.731113, -0.040109,
		-0.539044, -0.537718, -0.648298,
		-0.495546, -0.419920, 0.760330,
		42.458260, 36.199188, 33.794353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082321, 36.386292, 33.023582>,  <42.805141, 36.493134, 33.262123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082321, 36.386292, 33.023582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053074, 36.364414, 33.421913>,  <42.035526, 36.351288, 33.660912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053074, 36.364414, 33.421913>,  <42.082321, 36.386292, 33.023582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053074, 36.364414, 33.421913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854107, 0.518971, -0.034210,
		-0.514932, -0.853040, -0.084658,
		-0.073117, -0.054691, 0.995822,
		42.031139, 36.348007, 33.720661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333412, 36.481998, 33.102776>,  <42.082321, 36.386292, 33.023582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333412, 36.481998, 33.102776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465599, 36.495865, 33.480049>,  <41.544910, 36.504185, 33.706413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465599, 36.495865, 33.480049>,  <41.333412, 36.481998, 33.102776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465599, 36.495865, 33.480049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862762, 0.416267, 0.286989,
		-0.382668, -0.908581, 0.167466,
		0.330464, 0.034662, 0.943182,
		41.564739, 36.506264, 33.763004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804592, 36.248669, 33.512810>,  <41.333412, 36.481998, 33.102776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804592, 36.248669, 33.512810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022850, 36.444481, 33.784878>,  <41.153805, 36.561970, 33.948120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022850, 36.444481, 33.784878>,  <40.804592, 36.248669, 33.512810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022850, 36.444481, 33.784878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832175, 0.412182, 0.370932,
		-0.098772, -0.768419, 0.632279,
		0.545645, 0.489529, 0.680171,
		41.186543, 36.591339, 33.988930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529980, 36.105293, 34.198528>,  <40.804592, 36.248669, 33.512810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529980, 36.105293, 34.198528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746098, 36.441456, 34.215439>,  <40.875771, 36.643154, 34.225586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746098, 36.441456, 34.215439>,  <40.529980, 36.105293, 34.198528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746098, 36.441456, 34.215439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681186, 0.407330, 0.608332,
		0.494029, -0.357477, 0.792556,
		0.540296, 0.840412, 0.042276,
		40.908188, 36.693581, 34.228123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515667, 36.329769, 34.924309>,  <40.529980, 36.105293, 34.198528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515667, 36.329769, 34.924309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607773, 36.654484, 34.709656>,  <40.663036, 36.849312, 34.580864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607773, 36.654484, 34.709656>,  <40.515667, 36.329769, 34.924309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607773, 36.654484, 34.709656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636360, 0.542817, 0.548083,
		0.736222, 0.215289, 0.641582,
		0.230265, 0.811788, -0.536635,
		40.676853, 36.898022, 34.548664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749214, 36.764252, 35.475037>,  <40.515667, 36.329769, 34.924309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749214, 36.764252, 35.475037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646935, 36.964653, 35.144314>,  <40.585567, 37.084896, 34.945881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646935, 36.964653, 35.144314>,  <40.749214, 36.764252, 35.475037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646935, 36.964653, 35.144314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689313, 0.505167, 0.519282,
		0.677840, 0.702708, 0.216181,
		-0.255696, 0.501006, -0.826808,
		40.570225, 37.114956, 34.896271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739086, 37.492332, 35.645237>,  <40.749214, 36.764252, 35.475037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739086, 37.492332, 35.645237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525581, 37.477139, 35.307327>,  <40.397476, 37.468021, 35.104580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525581, 37.477139, 35.307327>,  <40.739086, 37.492332, 35.645237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525581, 37.477139, 35.307327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703522, 0.574238, 0.418697,
		0.469201, 0.817807, -0.333230,
		-0.533766, -0.037982, -0.844779,
		40.365452, 37.465744, 35.053894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528122, 38.195362, 35.425079>,  <40.739086, 37.492332, 35.645237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528122, 38.195362, 35.425079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245415, 37.976437, 35.245777>,  <40.075790, 37.845081, 35.138195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245415, 37.976437, 35.245777>,  <40.528122, 38.195362, 35.425079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245415, 37.976437, 35.245777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678344, 0.704157, 0.209790,
		0.200819, 0.452342, -0.868941,
		-0.706768, -0.547311, -0.448252,
		40.033386, 37.812244, 35.111301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087814, 38.677490, 35.061668>,  <40.528122, 38.195362, 35.425079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087814, 38.677490, 35.061668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869297, 38.343815, 35.091846>,  <39.738186, 38.143608, 35.109955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869297, 38.343815, 35.091846>,  <40.087814, 38.677490, 35.061668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869297, 38.343815, 35.091846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766274, 0.534121, 0.357127,
		-0.338208, 0.137284, -0.931004,
		-0.546296, -0.834187, 0.075447,
		39.705410, 38.093559, 35.114479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492737, 38.875599, 34.764359>,  <40.087814, 38.677490, 35.061668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492737, 38.875599, 34.764359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403439, 38.539463, 34.961941>,  <39.349861, 38.337780, 35.080490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403439, 38.539463, 34.961941>,  <39.492737, 38.875599, 34.764359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403439, 38.539463, 34.961941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840943, 0.422292, 0.338355,
		-0.492927, -0.339852, -0.800952,
		-0.223245, -0.840339, 0.493955,
		39.336464, 38.287361, 35.110126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902317, 38.675861, 34.409843>,  <39.492737, 38.875599, 34.764359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902317, 38.675861, 34.409843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929012, 38.530552, 34.781559>,  <38.945030, 38.443367, 35.004589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929012, 38.530552, 34.781559>,  <38.902317, 38.675861, 34.409843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929012, 38.530552, 34.781559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616252, 0.717481, 0.324736,
		-0.784716, -0.594348, -0.175988,
		0.066738, -0.363278, 0.929287,
		38.949036, 38.421570, 35.060345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263618, 38.497276, 34.594814>,  <38.902317, 38.675861, 34.409843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263618, 38.497276, 34.594814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448322, 38.566887, 34.942722>,  <38.559143, 38.608654, 35.151466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448322, 38.566887, 34.942722>,  <38.263618, 38.497276, 34.594814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448322, 38.566887, 34.942722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636427, 0.748023, 0.188209,
		-0.617852, -0.640450, 0.456161,
		0.461757, 0.174028, 0.869767,
		38.586849, 38.619095, 35.203651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681946, 38.751137, 35.064022>,  <38.263618, 38.497276, 34.594814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681946, 38.751137, 35.064022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027794, 38.842350, 35.243099>,  <38.235302, 38.897079, 35.350544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027794, 38.842350, 35.243099>,  <37.681946, 38.751137, 35.064022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027794, 38.842350, 35.243099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273661, 0.961035, 0.039011,
		-0.421351, -0.156245, 0.893337,
		0.864623, 0.228034, 0.447691,
		38.287182, 38.910759, 35.377407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637249, 39.161472, 35.728436>,  <37.681946, 38.751137, 35.064022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637249, 39.161472, 35.728436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970070, 39.225098, 35.515873>,  <38.169762, 39.263275, 35.388336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970070, 39.225098, 35.515873>,  <37.637249, 39.161472, 35.728436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970070, 39.225098, 35.515873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300434, 0.934551, -0.190664,
		0.466299, 0.318295, 0.825381,
		0.832048, 0.159066, -0.531407,
		38.219685, 39.272816, 35.356449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065697, 38.694736, 36.183289>,  <37.637249, 39.161472, 35.728436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065697, 38.694736, 36.183289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249928, 38.380844, 36.349209>,  <38.360466, 38.192509, 36.448761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249928, 38.380844, 36.349209>,  <38.065697, 38.694736, 36.183289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249928, 38.380844, 36.349209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878357, 0.335603, -0.340383,
		0.127901, 0.521117, 0.843847,
		0.460577, -0.784734, 0.414802,
		38.388100, 38.145424, 36.473648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430950, 38.962364, 36.720325>,  <38.065697, 38.694736, 36.183289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430950, 38.962364, 36.720325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377998, 39.235741, 37.007488>,  <38.346226, 39.399765, 37.179787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377998, 39.235741, 37.007488>,  <38.430950, 38.962364, 36.720325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377998, 39.235741, 37.007488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910484, -0.202434, 0.360609,
		0.391783, 0.701377, -0.595464,
		-0.132381, 0.683441, 0.717903,
		38.338284, 39.440773, 37.222858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041790, 39.344604, 36.684174>,  <38.430950, 38.962364, 36.720325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041790, 39.344604, 36.684174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906174, 39.363937, 37.059986>,  <38.824802, 39.375538, 37.285473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906174, 39.363937, 37.059986>,  <39.041790, 39.344604, 36.684174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906174, 39.363937, 37.059986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876498, -0.346568, 0.334128,
		0.341761, 0.936779, 0.075135,
		-0.339044, 0.048336, 0.939528,
		38.804462, 39.378437, 37.341843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640762, 39.190094, 37.050293>,  <39.041790, 39.344604, 36.684174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640762, 39.190094, 37.050293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347290, 39.200066, 37.321907>,  <39.171207, 39.206047, 37.484875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347290, 39.200066, 37.321907>,  <39.640762, 39.190094, 37.050293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347290, 39.200066, 37.321907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627370, -0.359001, 0.691032,
		0.261002, 0.933004, 0.247753,
		-0.733679, 0.024928, 0.679038,
		39.127186, 39.207542, 37.525620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902580, 39.258564, 37.711899>,  <39.640762, 39.190094, 37.050293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902580, 39.258564, 37.711899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558315, 39.088100, 37.823364>,  <39.351757, 38.985825, 37.890244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558315, 39.088100, 37.823364>,  <39.902580, 39.258564, 37.711899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558315, 39.088100, 37.823364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464512, -0.432985, 0.772498,
		-0.208545, 0.794303, 0.570607,
		-0.860661, -0.426154, 0.278666,
		39.300117, 38.960255, 37.906963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946133, 39.371338, 38.429672>,  <39.902580, 39.258564, 37.711899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946133, 39.371338, 38.429672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673920, 39.097073, 38.326332>,  <39.510593, 38.932514, 38.264328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673920, 39.097073, 38.326332>,  <39.946133, 39.371338, 38.429672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673920, 39.097073, 38.326332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478681, -0.682977, 0.551730,
		-0.554747, 0.251803, 0.793001,
		-0.680529, -0.685666, -0.258346,
		39.469761, 38.891373, 38.248829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364063, 39.904049, 38.745216>,  <39.946133, 39.371338, 38.429672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364063, 39.904049, 38.745216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728447, 40.045433, 38.830276>,  <40.947079, 40.130264, 38.881313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728447, 40.045433, 38.830276>,  <40.364063, 39.904049, 38.745216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728447, 40.045433, 38.830276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404410, -0.663710, -0.629239,
		-0.081277, 0.659207, -0.747556,
		0.910959, 0.353462, 0.212646,
		41.001736, 40.151470, 38.894070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699051, 39.900459, 38.101181>,  <40.364063, 39.904049, 38.745216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699051, 39.900459, 38.101181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964649, 39.872692, 38.398983>,  <41.124008, 39.856030, 38.577663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964649, 39.872692, 38.398983>,  <40.699051, 39.900459, 38.101181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964649, 39.872692, 38.398983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454520, -0.753140, -0.475596,
		0.593734, 0.654187, -0.468529,
		0.663997, -0.069422, 0.744506,
		41.163849, 39.851864, 38.622334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445560, 39.863762, 37.856670>,  <40.699051, 39.900459, 38.101181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445560, 39.863762, 37.856670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400066, 39.684837, 38.211517>,  <41.372768, 39.577484, 38.424427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400066, 39.684837, 38.211517>,  <41.445560, 39.863762, 37.856670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400066, 39.684837, 38.211517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402163, -0.837215, -0.370588,
		0.908476, 0.314618, 0.275112,
		-0.113734, -0.447310, 0.887118,
		41.365948, 39.550644, 38.477654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107830, 39.748905, 38.308735>,  <41.445560, 39.863762, 37.856670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107830, 39.748905, 38.308735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804714, 39.488770, 38.329933>,  <41.622845, 39.332687, 38.342651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804714, 39.488770, 38.329933>,  <42.107830, 39.748905, 38.308735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804714, 39.488770, 38.329933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623773, -0.745872, -0.233631,
		0.191469, -0.143986, 0.970880,
		-0.757791, -0.650342, 0.052997,
		41.577377, 39.293667, 38.345833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363586, 39.074741, 38.673790>,  <42.107830, 39.748905, 38.308735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363586, 39.074741, 38.673790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072456, 38.969128, 38.420631>,  <41.897778, 38.905762, 38.268738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072456, 38.969128, 38.420631>,  <42.363586, 39.074741, 38.673790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072456, 38.969128, 38.420631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477884, -0.857192, -0.191962,
		-0.491830, -0.442166, 0.750061,
		-0.727825, -0.264030, -0.632897,
		41.854107, 38.889919, 38.230762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259026, 38.372387, 38.828701>,  <42.363586, 39.074741, 38.673790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259026, 38.372387, 38.828701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113884, 38.435699, 38.461380>,  <42.026798, 38.473686, 38.240986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113884, 38.435699, 38.461380>,  <42.259026, 38.372387, 38.828701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113884, 38.435699, 38.461380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660043, -0.651980, -0.373183,
		-0.657786, -0.741531, 0.132098,
		-0.362852, 0.158284, -0.918305,
		42.005028, 38.483185, 38.185890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185944, 37.664673, 38.542950>,  <42.259026, 38.372387, 38.828701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185944, 37.664673, 38.542950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208553, 37.936188, 38.250088>,  <42.222118, 38.099098, 38.074371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208553, 37.936188, 38.250088>,  <42.185944, 37.664673, 38.542950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208553, 37.936188, 38.250088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561348, -0.628045, -0.538932,
		-0.825647, -0.380528, -0.416539,
		0.056527, 0.678791, -0.732153,
		42.225510, 38.139824, 38.030441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277061, 37.265530, 37.910030>,  <42.185944, 37.664673, 38.542950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277061, 37.265530, 37.910030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364483, 37.638954, 37.796406>,  <42.416935, 37.863010, 37.728230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364483, 37.638954, 37.796406>,  <42.277061, 37.265530, 37.910030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364483, 37.638954, 37.796406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602989, -0.358074, -0.712872,
		-0.767228, -0.015488, -0.641188,
		0.218552, 0.933565, -0.284064,
		42.430050, 37.919025, 37.711185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125381, 37.302010, 37.194118>,  <42.277061, 37.265530, 37.910030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125381, 37.302010, 37.194118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364655, 37.613548, 37.269577>,  <42.508217, 37.800472, 37.314854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364655, 37.613548, 37.269577>,  <42.125381, 37.302010, 37.194118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364655, 37.613548, 37.269577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652710, -0.336950, -0.678553,
		-0.464922, 0.529026, -0.709915,
		0.598178, 0.778843, 0.188646,
		42.544109, 37.847202, 37.326172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377319, 37.546425, 36.577564>,  <42.125381, 37.302010, 37.194118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377319, 37.546425, 36.577564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641415, 37.696548, 36.837791>,  <42.799870, 37.786621, 36.993927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.641415, 37.696548, 36.837791>,  <42.377319, 37.546425, 36.577564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641415, 37.696548, 36.837791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743177, -0.201301, -0.638095,
		-0.108525, 0.904777, -0.411827,
		0.660235, 0.375310, 0.650563,
		42.839485, 37.809143, 37.032959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864841, 37.983971, 36.197842>,  <42.377319, 37.546425, 36.577564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864841, 37.983971, 36.197842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073193, 37.847572, 36.510868>,  <43.198204, 37.765736, 36.698685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.073193, 37.847572, 36.510868>,  <42.864841, 37.983971, 36.197842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073193, 37.847572, 36.510868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772168, -0.202626, -0.602246,
		0.363930, 0.917969, 0.157761,
		0.520876, -0.340993, 0.782567,
		43.229454, 37.745274, 36.745640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560623, 38.170849, 36.125492>,  <42.864841, 37.983971, 36.197842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560623, 38.170849, 36.125492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603249, 37.873737, 36.389896>,  <43.628822, 37.695473, 36.548538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.603249, 37.873737, 36.389896>,  <43.560623, 38.170849, 36.125492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603249, 37.873737, 36.389896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796150, -0.334505, -0.504234,
		0.595642, 0.579992, 0.555715,
		0.106562, -0.742775, 0.661006,
		43.635216, 37.650906, 36.588200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243423, 38.249275, 36.254719>,  <43.560623, 38.170849, 36.125492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243423, 38.249275, 36.254719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109554, 37.884834, 36.350952>,  <44.029232, 37.666168, 36.408691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109554, 37.884834, 36.350952>,  <44.243423, 38.249275, 36.254719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109554, 37.884834, 36.350952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807338, -0.408902, -0.425446,
		0.486003, 0.051850, 0.872418,
		-0.334674, -0.911104, 0.240588,
		44.009151, 37.611504, 36.423130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808952, 37.795235, 36.664249>,  <44.243423, 38.249275, 36.254719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808952, 37.795235, 36.664249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.535194, 37.551750, 36.503712>,  <44.370941, 37.405659, 36.407391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.535194, 37.551750, 36.503712>,  <44.808952, 37.795235, 36.664249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.535194, 37.551750, 36.503712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728913, -0.584186, -0.356949,
		-0.017179, -0.536836, 0.843512,
		-0.684391, -0.608715, -0.401342,
		44.329876, 37.369137, 36.383308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069180, 37.181465, 36.733959>,  <44.808952, 37.795235, 36.664249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069180, 37.181465, 36.733959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.776836, 37.095989, 36.474670>,  <44.601433, 37.044704, 36.319099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.776836, 37.095989, 36.474670>,  <45.069180, 37.181465, 36.733959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.776836, 37.095989, 36.474670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615563, -0.616630, -0.490764,
		-0.294842, -0.757697, 0.582206,
		-0.730856, -0.213687, -0.648219,
		44.557579, 37.031883, 36.280205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.844921, 36.410946, 36.875229>,  <45.069180, 37.181465, 36.733959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.844921, 36.410946, 36.875229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.765789, 36.543919, 36.506371>,  <44.718307, 36.623703, 36.285057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.765789, 36.543919, 36.506371>,  <44.844921, 36.410946, 36.875229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.765789, 36.543919, 36.506371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439149, -0.810991, -0.386577,
		-0.876362, -0.481436, 0.014452,
		-0.197832, 0.332435, -0.922144,
		44.706440, 36.643650, 36.229729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768532, 35.812023, 36.553955>,  <44.844921, 36.410946, 36.875229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768532, 35.812023, 36.553955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802799, 36.053764, 36.237114>,  <44.823360, 36.198807, 36.047009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802799, 36.053764, 36.237114>,  <44.768532, 35.812023, 36.553955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802799, 36.053764, 36.237114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475243, -0.723537, -0.500639,
		-0.875674, -0.333549, -0.349199,
		0.085671, 0.604351, -0.792099,
		44.828499, 36.235069, 35.999485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498634, 35.503708, 36.024654>,  <44.768532, 35.812023, 36.553955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498634, 35.503708, 36.024654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742340, 35.773018, 35.857086>,  <44.888565, 35.934605, 35.756546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.742340, 35.773018, 35.857086>,  <44.498634, 35.503708, 36.024654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742340, 35.773018, 35.857086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354808, -0.703930, -0.615300,
		-0.709158, 0.226245, -0.667764,
		0.609267, 0.673273, -0.418924,
		44.925121, 35.974998, 35.731407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489735, 35.379131, 35.447289>,  <44.498634, 35.503708, 36.024654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489735, 35.379131, 35.447289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832756, 35.584057, 35.465763>,  <45.038570, 35.707012, 35.476849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832756, 35.584057, 35.465763>,  <44.489735, 35.379131, 35.447289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.832756, 35.584057, 35.465763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384141, -0.578111, -0.719877,
		-0.342106, 0.635075, -0.692563,
		0.857554, 0.512316, 0.046183,
		45.090023, 35.737751, 35.479618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701790, 35.397018, 34.711678>,  <44.489735, 35.379131, 35.447289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701790, 35.397018, 34.711678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.032486, 35.500248, 34.911640>,  <45.230904, 35.562183, 35.031616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.032486, 35.500248, 34.911640>,  <44.701790, 35.397018, 34.711678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032486, 35.500248, 34.911640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549464, -0.561198, -0.618988,
		0.120804, 0.786421, -0.605763,
		0.826738, 0.258069, 0.499905,
		45.280506, 35.577667, 35.061611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098099, 35.567005, 34.248074>,  <44.701790, 35.397018, 34.711678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098099, 35.567005, 34.248074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.348274, 35.471947, 34.545353>,  <45.498379, 35.414909, 34.723721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.348274, 35.471947, 34.545353>,  <45.098099, 35.567005, 34.248074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.348274, 35.471947, 34.545353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405932, -0.714339, -0.570035,
		0.666365, 0.658212, -0.350307,
		0.625441, -0.237650, 0.743200,
		45.535908, 35.400650, 34.768314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.816898, 35.544418, 33.985931>,  <45.098099, 35.567005, 34.248074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.816898, 35.544418, 33.985931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.810215, 35.307007, 34.307789>,  <45.806206, 35.164562, 34.500904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.810215, 35.307007, 34.307789>,  <45.816898, 35.544418, 33.985931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.810215, 35.307007, 34.307789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373283, -0.750270, -0.545669,
		0.927567, 0.291242, 0.234088,
		-0.016708, -0.593526, 0.804641,
		45.805202, 35.128948, 34.549183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.369488, 35.168156, 33.909298>,  <45.816898, 35.544418, 33.985931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.369488, 35.168156, 33.909298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163719, 34.940529, 34.165901>,  <46.040257, 34.803951, 34.319862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.163719, 34.940529, 34.165901>,  <46.369488, 35.168156, 33.909298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.163719, 34.940529, 34.165901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435895, -0.817752, -0.375868,
		0.738489, 0.086276, 0.668723,
		-0.514422, -0.569067, 0.641508,
		46.009392, 34.769810, 34.358353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.802135, 34.579704, 34.110504>,  <46.369488, 35.168156, 33.909298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.802135, 34.579704, 34.110504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449001, 34.442505, 34.238850>,  <46.237122, 34.360184, 34.315857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.449001, 34.442505, 34.238850>,  <46.802135, 34.579704, 34.110504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.449001, 34.442505, 34.238850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273553, -0.930819, -0.242373,
		0.381805, -0.126201, 0.915586,
		-0.882833, -0.343000, 0.320868,
		46.184151, 34.339603, 34.335110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.944672, 33.918442, 34.507038>,  <46.802135, 34.579704, 34.110504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.944672, 33.918442, 34.507038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.564110, 33.903385, 34.384781>,  <46.335773, 33.894352, 34.311428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.564110, 33.903385, 34.384781>,  <46.944672, 33.918442, 34.507038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.564110, 33.903385, 34.384781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130398, -0.948379, -0.289092,
		-0.278981, -0.314897, 0.907198,
		-0.951402, -0.037646, -0.305642,
		46.278690, 33.892090, 34.293087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.586449, 33.641655, 34.254944>,  <46.944672, 33.918442, 34.507038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.586449, 33.641655, 34.254944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.818924, 33.755875, 34.559753>,  <47.958408, 33.824406, 34.742638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.818924, 33.755875, 34.559753>,  <47.586449, 33.641655, 34.254944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.818924, 33.755875, 34.559753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597114, 0.486564, -0.637739,
		-0.552880, 0.825662, 0.112279,
		0.581187, 0.285550, 0.762025,
		47.993279, 33.841541, 34.788361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.596786, 34.447571, 34.159718>,  <47.586449, 33.641655, 34.254944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.596786, 34.447571, 34.159718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.887440, 34.225609, 34.321743>,  <48.061832, 34.092430, 34.418957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.887440, 34.225609, 34.321743>,  <47.596786, 34.447571, 34.159718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.887440, 34.225609, 34.321743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651408, 0.369117, -0.662887,
		0.218326, 0.745539, 0.629686,
		0.726637, -0.554909, 0.405063,
		48.105431, 34.059135, 34.443260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.302116, 35.096565, 34.472504>,  <47.596786, 34.447571, 34.159718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.302116, 35.096565, 34.472504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.254326, 35.170223, 34.862747>,  <47.225651, 35.214420, 35.096893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.254326, 35.170223, 34.862747>,  <47.302116, 35.096565, 34.472504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.254326, 35.170223, 34.862747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500758, -0.837327, 0.219372,
		0.857302, 0.514755, 0.007829,
		-0.119478, 0.184148, 0.975610,
		47.218483, 35.225468, 35.155430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.088772, 35.189392, 34.785664>,  <47.302116, 35.096565, 34.472504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.088772, 35.189392, 34.785664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.772121, 35.089054, 35.008522>,  <47.582130, 35.028851, 35.142239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.772121, 35.089054, 35.008522>,  <48.088772, 35.189392, 34.785664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.772121, 35.089054, 35.008522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407483, -0.896194, 0.175483,
		0.455294, 0.365944, 0.811660,
		-0.791622, -0.250842, 0.557148,
		47.534634, 35.013802, 35.175667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.445564, 39.971359, 39.924385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.057140, 40.066616, 39.917126>,  <32.824085, 40.123768, 39.912769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.057140, 40.066616, 39.917126>,  <33.445564, 39.971359, 39.924385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057140, 40.066616, 39.917126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180872, -0.782923, -0.595245,
		-0.155962, -0.574737, 0.803339,
		-0.971062, 0.238138, -0.018153,
		32.765823, 40.138058, 39.911678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139187, 39.317989, 39.856709>,  <33.445564, 39.971359, 39.924385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139187, 39.317989, 39.856709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.867249, 39.585758, 39.736916>,  <32.704086, 39.746418, 39.665039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.867249, 39.585758, 39.736916>,  <33.139187, 39.317989, 39.856709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867249, 39.585758, 39.736916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201175, -0.562941, -0.801640,
		-0.705224, -0.484741, 0.517383,
		-0.679843, 0.669420, -0.299482,
		32.663296, 39.786583, 39.647072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607903, 38.897102, 39.807011>,  <33.139187, 39.317989, 39.856709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607903, 38.897102, 39.807011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.560066, 39.216415, 39.570892>,  <32.531364, 39.408001, 39.429222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.560066, 39.216415, 39.570892>,  <32.607903, 38.897102, 39.807011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560066, 39.216415, 39.570892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260225, -0.598979, -0.757303,
		-0.958113, 0.063044, 0.279364,
		-0.119590, 0.798280, -0.590295,
		32.524189, 39.455898, 39.393803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977718, 38.958920, 39.616894>,  <32.607903, 38.897102, 39.807011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977718, 38.958920, 39.616894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.149929, 39.170521, 39.324375>,  <32.253254, 39.297482, 39.148865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.149929, 39.170521, 39.324375>,  <31.977718, 38.958920, 39.616894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149929, 39.170521, 39.324375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412508, -0.605339, -0.680736,
		-0.802799, 0.594742, -0.042394,
		0.430525, 0.529006, -0.731301,
		32.279087, 39.329224, 39.104984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469452, 38.917503, 39.078579>,  <31.977718, 38.958920, 39.616894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469452, 38.917503, 39.078579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.796656, 39.061531, 38.899151>,  <31.992977, 39.147945, 38.791492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.796656, 39.061531, 38.899151>,  <31.469452, 38.917503, 39.078579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796656, 39.061531, 38.899151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292643, -0.410855, -0.863457,
		-0.495199, 0.837586, -0.230711,
		0.818008, 0.360067, -0.448569,
		32.042057, 39.169552, 38.764580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234167, 39.159016, 38.350628>,  <31.469452, 38.917503, 39.078579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234167, 39.159016, 38.350628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.626257, 39.095345, 38.303600>,  <31.861511, 39.057140, 38.275383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.626257, 39.095345, 38.303600>,  <31.234167, 39.159016, 38.350628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626257, 39.095345, 38.303600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166604, -0.343205, -0.924367,
		0.106788, 0.925674, -0.362937,
		0.980224, -0.159178, -0.117571,
		31.920324, 39.047592, 38.268330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420866, 39.515903, 37.759083>,  <31.234167, 39.159016, 38.350628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420866, 39.515903, 37.759083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.688568, 39.224922, 37.819626>,  <31.849190, 39.050335, 37.855953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.688568, 39.224922, 37.819626>,  <31.420866, 39.515903, 37.759083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688568, 39.224922, 37.819626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103929, -0.293351, -0.950339,
		0.735726, 0.620291, -0.271931,
		0.669257, -0.727451, 0.151359,
		31.889345, 39.006687, 37.865032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851498, 39.449459, 37.107647>,  <31.420866, 39.515903, 37.759083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851498, 39.449459, 37.107647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.926332, 39.115395, 37.314529>,  <31.971233, 38.914955, 37.438660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.926332, 39.115395, 37.314529>,  <31.851498, 39.449459, 37.107647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926332, 39.115395, 37.314529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091127, -0.538989, -0.837369,
		0.978107, 0.109530, -0.176944,
		0.187088, -0.835161, 0.517208,
		31.982458, 38.864845, 37.469692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111206, 39.140079, 36.537075>,  <31.851498, 39.449459, 37.107647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111206, 39.140079, 36.537075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.044281, 38.866505, 36.821114>,  <32.004128, 38.702362, 36.991539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.044281, 38.866505, 36.821114>,  <32.111206, 39.140079, 36.537075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044281, 38.866505, 36.821114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070316, -0.710140, -0.700540,
		0.983393, -0.167140, 0.070724,
		-0.167312, -0.683934, 0.710100,
		31.994087, 38.661324, 37.034145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594891, 38.640430, 36.414032>,  <32.111206, 39.140079, 36.537075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594891, 38.640430, 36.414032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.311401, 38.450001, 36.622288>,  <32.141308, 38.335743, 36.747242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.311401, 38.450001, 36.622288>,  <32.594891, 38.640430, 36.414032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311401, 38.450001, 36.622288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031909, -0.758861, -0.650470,
		0.704765, -0.444390, 0.553013,
		-0.708723, -0.476075, 0.520639,
		32.098785, 38.307178, 36.778481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778744, 37.977295, 36.447323>,  <32.594891, 38.640430, 36.414032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778744, 37.977295, 36.447323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.391949, 37.955654, 36.546932>,  <32.159870, 37.942669, 36.606697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.391949, 37.955654, 36.546932>,  <32.778744, 37.977295, 36.447323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391949, 37.955654, 36.546932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138160, -0.709813, -0.690708,
		0.214124, -0.702310, 0.678905,
		-0.966986, -0.054100, 0.249019,
		32.101852, 37.939423, 36.621639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627090, 37.244217, 36.476032>,  <32.778744, 37.977295, 36.447323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627090, 37.244217, 36.476032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.272976, 37.418118, 36.409996>,  <32.060505, 37.522457, 36.370373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.272976, 37.418118, 36.409996>,  <32.627090, 37.244217, 36.476032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272976, 37.418118, 36.409996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233005, -0.721899, -0.651591,
		-0.402458, -0.538380, 0.740388,
		-0.885289, 0.434752, -0.165089,
		32.007389, 37.548542, 36.360470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158718, 36.724258, 36.548996>,  <32.627090, 37.244217, 36.476032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158718, 36.724258, 36.548996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.975409, 36.996628, 36.320496>,  <31.865423, 37.160049, 36.183395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.975409, 36.996628, 36.320496>,  <32.158718, 36.724258, 36.548996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975409, 36.996628, 36.320496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161391, -0.695783, -0.699885,
		-0.874037, -0.228541, 0.428752,
		-0.458271, 0.680922, -0.571255,
		31.837927, 37.200905, 36.149120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521118, 36.472004, 36.318871>,  <32.158718, 36.724258, 36.548996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521118, 36.472004, 36.318871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.603422, 36.745918, 36.039234>,  <31.652805, 36.910267, 35.871452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.603422, 36.745918, 36.039234>,  <31.521118, 36.472004, 36.318871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603422, 36.745918, 36.039234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275413, -0.644979, -0.712847,
		-0.939048, 0.339213, 0.055889,
		0.205760, 0.684789, -0.699090,
		31.665150, 36.951355, 35.829506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996319, 36.393417, 35.838989>,  <31.521118, 36.472004, 36.318871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996319, 36.393417, 35.838989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.299635, 36.572708, 35.649635>,  <31.481625, 36.680283, 35.536022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.299635, 36.572708, 35.649635>,  <30.996319, 36.393417, 35.838989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299635, 36.572708, 35.649635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153439, -0.583035, -0.797826,
		-0.633605, 0.677618, -0.373333,
		0.758288, 0.448223, -0.473387,
		31.527121, 36.707176, 35.507618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759684, 36.481834, 35.113319>,  <30.996319, 36.393417, 35.838989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759684, 36.481834, 35.113319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.156748, 36.521355, 35.085419>,  <31.394987, 36.545067, 35.068680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.156748, 36.521355, 35.085419>,  <30.759684, 36.481834, 35.113319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156748, 36.521355, 35.085419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002099, -0.590709, -0.806882,
		-0.120920, 0.800813, -0.586581,
		0.992660, 0.098799, -0.069747,
		31.454546, 36.550995, 35.064495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884012, 36.506737, 34.384125>,  <30.759684, 36.481834, 35.113319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884012, 36.506737, 34.384125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.236912, 36.424297, 34.553432>,  <31.448652, 36.374832, 34.655018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.236912, 36.424297, 34.553432>,  <30.884012, 36.506737, 34.384125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236912, 36.424297, 34.553432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252523, -0.551629, -0.794945,
		0.397326, 0.808226, -0.434630,
		0.882250, -0.206098, 0.423272,
		31.501587, 36.362469, 34.680412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408405, 36.450794, 33.772419>,  <30.884012, 36.506737, 34.384125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408405, 36.450794, 33.772419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.614164, 36.283604, 34.071938>,  <31.737619, 36.183289, 34.251648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.614164, 36.283604, 34.071938>,  <31.408405, 36.450794, 33.772419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614164, 36.283604, 34.071938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209146, -0.785661, -0.582233,
		0.831657, 0.456106, -0.316723,
		0.514396, -0.417977, 0.748793,
		31.768484, 36.158211, 34.296577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065876, 36.246681, 33.600025>,  <31.408405, 36.450794, 33.772419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065876, 36.246681, 33.600025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.997013, 35.994022, 33.902386>,  <31.955696, 35.842426, 34.083801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.997013, 35.994022, 33.902386>,  <32.065876, 36.246681, 33.600025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997013, 35.994022, 33.902386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186715, -0.774372, -0.604555,
		0.967213, 0.037062, 0.251249,
		-0.172154, -0.631645, 0.755902,
		31.945366, 35.804527, 34.129158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662636, 35.844509, 33.661400>,  <32.065876, 36.246681, 33.600025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662636, 35.844509, 33.661400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.352043, 35.645996, 33.816723>,  <32.165688, 35.526890, 33.909916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.352043, 35.645996, 33.816723>,  <32.662636, 35.844509, 33.661400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352043, 35.645996, 33.816723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251713, -0.809203, -0.530877,
		0.577683, -0.314475, 0.753252,
		-0.776482, -0.496282, 0.388305,
		32.119099, 35.497112, 33.933216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956791, 35.179249, 33.725624>,  <32.662636, 35.844509, 33.661400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956791, 35.179249, 33.725624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.577751, 35.088707, 33.815800>,  <32.350327, 35.034382, 33.869904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.577751, 35.088707, 33.815800>,  <32.956791, 35.179249, 33.725624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577751, 35.088707, 33.815800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065127, -0.827724, -0.557343,
		0.312760, -0.513455, 0.799091,
		-0.947597, -0.226357, 0.225439,
		32.293472, 35.020802, 33.883430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955376, 34.409428, 33.811749>,  <32.956791, 35.179249, 33.725624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955376, 34.409428, 33.811749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.585438, 34.530334, 33.719402>,  <32.363476, 34.602879, 33.663994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.585438, 34.530334, 33.719402>,  <32.955376, 34.409428, 33.811749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585438, 34.530334, 33.719402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065279, -0.724121, -0.686577,
		-0.374704, -0.619906, 0.689430,
		-0.924844, 0.302268, -0.230864,
		32.307983, 34.621014, 33.650143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661659, 34.697525, 33.780857>,  <32.955376, 34.409428, 33.811749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661659, 34.697525, 33.780857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.041328, 34.575245, 33.810863>,  <34.269131, 34.501877, 33.828869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.041328, 34.575245, 33.810863>,  <33.661659, 34.697525, 33.780857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041328, 34.575245, 33.810863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004476, 0.251418, 0.967868,
		-0.314737, -0.918334, 0.240006,
		0.949168, -0.305698, 0.075020,
		34.326080, 34.483536, 33.833370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725540, 34.288361, 34.467503>,  <33.661659, 34.697525, 33.780857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725540, 34.288361, 34.467503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.094208, 34.408817, 34.369648>,  <34.315407, 34.481091, 34.310936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.094208, 34.408817, 34.369648>,  <33.725540, 34.288361, 34.467503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094208, 34.408817, 34.369648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139470, 0.331236, 0.933183,
		0.362054, -0.894202, 0.263288,
		0.921664, 0.301142, -0.244639,
		34.370708, 34.499157, 34.296257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204926, 33.998859, 34.964802>,  <33.725540, 34.288361, 34.467503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204926, 33.998859, 34.964802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.379074, 34.314396, 34.791283>,  <34.483562, 34.503719, 34.687172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.379074, 34.314396, 34.791283>,  <34.204926, 33.998859, 34.964802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379074, 34.314396, 34.791283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295903, 0.329698, 0.896516,
		0.850234, -0.518675, -0.089882,
		0.435366, 0.788844, -0.433798,
		34.509686, 34.551048, 34.661144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817867, 34.192303, 35.401180>,  <34.204926, 33.998859, 34.964802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817867, 34.192303, 35.401180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.735386, 34.522320, 35.190735>,  <34.685898, 34.720329, 35.064468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.735386, 34.522320, 35.190735>,  <34.817867, 34.192303, 35.401180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735386, 34.522320, 35.190735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259246, 0.564513, 0.783656,
		0.943543, 0.025199, -0.330291,
		-0.206201, 0.825039, -0.526110,
		34.673527, 34.769833, 35.032902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471451, 34.588287, 35.531631>,  <34.817867, 34.192303, 35.401180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471451, 34.588287, 35.531631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.193707, 34.846134, 35.403671>,  <35.027061, 35.000843, 35.326897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.193707, 34.846134, 35.403671>,  <35.471451, 34.588287, 35.531631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193707, 34.846134, 35.403671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278766, 0.650760, 0.706258,
		0.663444, 0.401219, -0.631558,
		-0.694357, 0.644620, -0.319897,
		34.985401, 35.039520, 35.307701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893242, 35.181164, 35.415779>,  <35.471451, 34.588287, 35.531631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893242, 35.181164, 35.415779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.509304, 35.284946, 35.458435>,  <35.278942, 35.347218, 35.484028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.509304, 35.284946, 35.458435>,  <35.893242, 35.181164, 35.415779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509304, 35.284946, 35.458435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276036, 0.805918, 0.523737,
		0.049949, 0.532143, -0.845180,
		-0.959848, 0.259461, 0.106636,
		35.221348, 35.362785, 35.490425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902805, 35.864479, 35.239658>,  <35.893242, 35.181164, 35.415779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902805, 35.864479, 35.239658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.583138, 35.797260, 35.470516>,  <35.391338, 35.756931, 35.609032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.583138, 35.797260, 35.470516>,  <35.902805, 35.864479, 35.239658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583138, 35.797260, 35.470516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166733, 0.860485, 0.481420,
		-0.577520, 0.480964, -0.659654,
		-0.799168, -0.168044, 0.577140,
		35.343388, 35.746849, 35.643658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684742, 36.458897, 35.415142>,  <35.902805, 35.864479, 35.239658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684742, 36.458897, 35.415142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484058, 36.242271, 35.684959>,  <35.363647, 36.112297, 35.846848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484058, 36.242271, 35.684959>,  <35.684742, 36.458897, 35.415142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484058, 36.242271, 35.684959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069400, 0.752067, 0.655423,
		-0.862249, 0.375643, -0.339733,
		-0.501707, -0.541560, 0.674539,
		35.333546, 36.079803, 35.887321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263165, 36.899624, 35.706303>,  <35.684742, 36.458897, 35.415142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263165, 36.899624, 35.706303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.263042, 36.591530, 35.961407>,  <35.262970, 36.406673, 36.114468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.263042, 36.591530, 35.961407>,  <35.263165, 36.899624, 35.706303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263042, 36.591530, 35.961407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130810, 0.632250, 0.763642,
		-0.991407, 0.083661, 0.100560,
		-0.000308, -0.770234, 0.637761,
		35.262951, 36.360458, 36.152737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927704, 37.105415, 36.318195>,  <35.263165, 36.899624, 35.706303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927704, 37.105415, 36.318195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.140266, 36.797398, 36.459412>,  <35.267803, 36.612587, 36.544140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.140266, 36.797398, 36.459412>,  <34.927704, 37.105415, 36.318195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140266, 36.797398, 36.459412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203624, 0.520646, 0.829135,
		-0.822281, -0.368719, 0.433474,
		0.531405, -0.770047, 0.353038,
		35.299686, 36.566383, 36.565323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706272, 37.102573, 36.982803>,  <34.927704, 37.105415, 36.318195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706272, 37.102573, 36.982803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.041847, 36.884899, 36.980015>,  <35.243191, 36.754295, 36.978340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.041847, 36.884899, 36.980015>,  <34.706272, 37.102573, 36.982803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041847, 36.884899, 36.980015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295224, 0.444292, 0.845841,
		-0.457195, -0.711666, 0.533389,
		0.838937, -0.544184, -0.006973,
		35.293530, 36.721645, 36.977924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750526, 36.713116, 37.644581>,  <34.706272, 37.102573, 36.982803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750526, 36.713116, 37.644581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113743, 36.756092, 37.482635>,  <35.331673, 36.781879, 37.385468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113743, 36.756092, 37.482635>,  <34.750526, 36.713116, 37.644581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113743, 36.756092, 37.482635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272280, 0.583081, 0.765428,
		0.318305, -0.805278, 0.500209,
		0.908045, 0.107443, -0.404859,
		35.386158, 36.788326, 37.361179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270176, 36.494835, 38.077065>,  <34.750526, 36.713116, 37.644581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270176, 36.494835, 38.077065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.358635, 36.794891, 37.827785>,  <35.411713, 36.974926, 37.678219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.358635, 36.794891, 37.827785>,  <35.270176, 36.494835, 38.077065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358635, 36.794891, 37.827785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071139, 0.624912, 0.777447,
		0.972642, -0.216266, 0.084834,
		0.221149, 0.750143, -0.623201,
		35.424980, 37.019936, 37.640823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771835, 36.972881, 38.353848>,  <35.270176, 36.494835, 38.077065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771835, 36.972881, 38.353848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.593582, 37.202618, 38.079170>,  <35.486629, 37.340462, 37.914364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.593582, 37.202618, 38.079170>,  <35.771835, 36.972881, 38.353848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593582, 37.202618, 38.079170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166232, 0.806814, 0.566937,
		0.879649, 0.138493, -0.455013,
		-0.445628, 0.574344, -0.686691,
		35.459892, 37.374920, 37.873161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094395, 37.591644, 38.496204>,  <35.771835, 36.972881, 38.353848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094395, 37.591644, 38.496204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.776569, 37.705719, 38.281788>,  <35.585876, 37.774162, 38.153137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.776569, 37.705719, 38.281788>,  <36.094395, 37.591644, 38.496204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776569, 37.705719, 38.281788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043561, 0.907331, 0.418155,
		0.605619, 0.308899, -0.733353,
		-0.794562, 0.285188, -0.536041,
		35.538200, 37.791275, 38.120975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249973, 38.244766, 38.326424>,  <36.094395, 37.591644, 38.496204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249973, 38.244766, 38.326424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.852852, 38.228672, 38.281315>,  <35.614578, 38.219017, 38.254250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.852852, 38.228672, 38.281315>,  <36.249973, 38.244766, 38.326424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852852, 38.228672, 38.281315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095174, 0.836673, 0.539369,
		0.072652, 0.546222, -0.834484,
		-0.992806, -0.040235, -0.112773,
		35.555012, 38.216602, 38.247482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037071, 38.940979, 38.090137>,  <36.249973, 38.244766, 38.326424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037071, 38.940979, 38.090137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.732418, 38.754875, 38.270561>,  <35.549625, 38.643211, 38.378815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.732418, 38.754875, 38.270561>,  <36.037071, 38.940979, 38.090137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732418, 38.754875, 38.270561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159234, 0.809092, 0.565698,
		-0.628146, 0.359028, -0.690313,
		-0.761628, -0.465262, 0.451059,
		35.503929, 38.615295, 38.405880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551212, 39.470562, 38.096943>,  <36.037071, 38.940979, 38.090137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551212, 39.470562, 38.096943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.416779, 39.194660, 38.353470>,  <35.336117, 39.029121, 38.507385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.416779, 39.194660, 38.353470>,  <35.551212, 39.470562, 38.096943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416779, 39.194660, 38.353470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170903, 0.714285, 0.678667,
		-0.926196, 0.118486, -0.357941,
		-0.336084, -0.689752, 0.641319,
		35.315952, 38.987736, 38.545864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.910587, 39.879856, 38.565815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.056053, 39.560505, 38.757786>,  <35.143333, 39.368893, 38.872971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.056053, 39.560505, 38.757786>,  <34.910587, 39.879856, 38.565815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056053, 39.560505, 38.757786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184972, 0.443057, 0.877204,
		-0.912980, -0.407783, 0.013447,
		0.363667, -0.798382, 0.479930,
		35.165154, 39.320992, 38.901764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424511, 39.743576, 39.044018>,  <34.910587, 39.879856, 38.565815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424511, 39.743576, 39.044018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.765980, 39.572712, 39.163208>,  <34.970860, 39.470196, 39.234722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.765980, 39.572712, 39.163208>,  <34.424511, 39.743576, 39.044018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765980, 39.572712, 39.163208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126404, 0.385090, 0.914181,
		-0.505246, -0.818072, 0.274745,
		0.853668, -0.427157, 0.297972,
		35.022079, 39.444565, 39.252598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237797, 39.426487, 39.605114>,  <34.424511, 39.743576, 39.044018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237797, 39.426487, 39.605114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.632034, 39.476246, 39.650951>,  <34.868576, 39.506100, 39.678455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.632034, 39.476246, 39.650951>,  <34.237797, 39.426487, 39.605114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632034, 39.476246, 39.650951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150286, 0.333317, 0.930760,
		0.077584, -0.934573, 0.347209,
		0.985594, 0.124393, 0.114593,
		34.927711, 39.513565, 39.685329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302139, 39.153286, 40.282448>,  <34.237797, 39.426487, 39.605114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302139, 39.153286, 40.282448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.626698, 39.373528, 40.203995>,  <34.821434, 39.505672, 40.156921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.626698, 39.373528, 40.203995>,  <34.302139, 39.153286, 40.282448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626698, 39.373528, 40.203995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058745, 0.410682, 0.909884,
		0.581534, -0.726756, 0.365572,
		0.811398, 0.550604, -0.196133,
		34.870117, 39.538708, 40.145157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773846, 39.078285, 40.830654>,  <34.302139, 39.153286, 40.282448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773846, 39.078285, 40.830654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.893341, 39.424976, 40.670883>,  <34.965038, 39.632992, 40.575020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.893341, 39.424976, 40.670883>,  <34.773846, 39.078285, 40.830654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893341, 39.424976, 40.670883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094391, 0.443325, 0.891377,
		0.949654, -0.228590, 0.214251,
		0.298743, 0.866723, -0.399429,
		34.982964, 39.684994, 40.551056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204952, 39.361912, 41.379574>,  <34.773846, 39.078285, 40.830654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204952, 39.361912, 41.379574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165787, 39.670898, 41.128590>,  <35.142288, 39.856293, 40.978001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.165787, 39.670898, 41.128590>,  <35.204952, 39.361912, 41.379574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165787, 39.670898, 41.128590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068595, 0.634226, 0.770099,
		0.992828, 0.032367, -0.115090,
		-0.097919, 0.772470, -0.627457,
		35.136410, 39.902641, 40.940353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681057, 39.794796, 41.586163>,  <35.204952, 39.361912, 41.379574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681057, 39.794796, 41.586163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434261, 40.039696, 41.388386>,  <35.286182, 40.186634, 41.269722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434261, 40.039696, 41.388386>,  <35.681057, 39.794796, 41.586163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434261, 40.039696, 41.388386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081449, 0.575229, 0.813928,
		0.782742, 0.542460, -0.305045,
		-0.616993, 0.612250, -0.494438,
		35.249165, 40.223370, 41.240055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893562, 40.431236, 41.685333>,  <35.681057, 39.794796, 41.586163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893562, 40.431236, 41.685333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515129, 40.502514, 41.577133>,  <35.288067, 40.545280, 41.512215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.515129, 40.502514, 41.577133>,  <35.893562, 40.431236, 41.685333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515129, 40.502514, 41.577133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045546, 0.753610, 0.655742,
		0.320698, 0.632709, -0.704864,
		-0.946086, 0.178191, -0.270498,
		35.231304, 40.555973, 41.495983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871849, 41.145077, 41.654079>,  <35.893562, 40.431236, 41.685333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871849, 41.145077, 41.654079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.500496, 41.003433, 41.699181>,  <35.277683, 40.918446, 41.726242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.500496, 41.003433, 41.699181>,  <35.871849, 41.145077, 41.654079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500496, 41.003433, 41.699181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172910, 0.680162, 0.712378,
		-0.328950, 0.641862, -0.692679,
		-0.928383, -0.354108, 0.112755,
		35.221981, 40.897202, 41.733006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494999, 41.747837, 41.709766>,  <35.871849, 41.145077, 41.654079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494999, 41.747837, 41.709766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267792, 41.457737, 41.865391>,  <35.131466, 41.283676, 41.958767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267792, 41.457737, 41.865391>,  <35.494999, 41.747837, 41.709766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267792, 41.457737, 41.865391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028157, 0.455329, 0.889878,
		-0.822534, 0.516422, -0.238214,
		-0.568018, -0.725247, 0.389065,
		35.097385, 41.240162, 41.982109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909710, 42.131786, 41.976311>,  <35.494999, 41.747837, 41.709766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909710, 42.131786, 41.976311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949356, 41.783993, 42.169876>,  <34.973145, 41.575317, 42.286015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949356, 41.783993, 42.169876>,  <34.909710, 42.131786, 41.976311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949356, 41.783993, 42.169876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035419, 0.482922, 0.874947,
		-0.994446, -0.103859, 0.017068,
		0.099114, -0.869483, 0.483918,
		34.979092, 41.523148, 42.315052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644024, 42.317287, 42.602787>,  <34.909710, 42.131786, 41.976311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644024, 42.317287, 42.602787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.802551, 41.958122, 42.679394>,  <34.897667, 41.742622, 42.725357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.802551, 41.958122, 42.679394>,  <34.644024, 42.317287, 42.602787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802551, 41.958122, 42.679394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143277, 0.266530, 0.953118,
		-0.906863, -0.350301, 0.234282,
		0.396321, -0.897915, 0.191517,
		34.921448, 41.688747, 42.736847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281883, 42.006420, 43.234585>,  <34.644024, 42.317287, 42.602787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281883, 42.006420, 43.234585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.644566, 41.838398, 43.219471>,  <34.862175, 41.737583, 43.210403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.644566, 41.838398, 43.219471>,  <34.281883, 42.006420, 43.234585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644566, 41.838398, 43.219471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164331, 0.269349, 0.948918,
		-0.388425, -0.866602, 0.313251,
		0.906709, -0.420060, -0.037788,
		34.916580, 41.712379, 43.208134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341568, 41.562801, 43.865757>,  <34.281883, 42.006420, 43.234585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341568, 41.562801, 43.865757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.712372, 41.647411, 43.741882>,  <34.934856, 41.698177, 43.667557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.712372, 41.647411, 43.741882>,  <34.341568, 41.562801, 43.865757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712372, 41.647411, 43.741882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255425, 0.248533, 0.934339,
		0.274609, -0.945244, 0.176362,
		0.927011, 0.211531, -0.309688,
		34.990475, 41.710869, 43.648975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681236, 41.259964, 44.377007>,  <34.341568, 41.562801, 43.865757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681236, 41.259964, 44.377007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949944, 41.495655, 44.197433>,  <35.111168, 41.637070, 44.089691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949944, 41.495655, 44.197433>,  <34.681236, 41.259964, 44.377007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949944, 41.495655, 44.197433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347175, 0.284919, 0.893471,
		0.654367, -0.756063, -0.013165,
		0.671769, 0.589228, -0.448928,
		35.151474, 41.672424, 44.062756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260273, 41.122040, 44.723347>,  <34.681236, 41.259964, 44.377007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260273, 41.122040, 44.723347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.343269, 41.475861, 44.556248>,  <35.393066, 41.688152, 44.455990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.343269, 41.475861, 44.556248>,  <35.260273, 41.122040, 44.723347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343269, 41.475861, 44.556248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407209, 0.310184, 0.859050,
		0.889454, -0.348355, -0.295838,
		0.207490, 0.884553, -0.417748,
		35.405518, 41.741226, 44.430923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967125, 41.169327, 44.875374>,  <35.260273, 41.122040, 44.723347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967125, 41.169327, 44.875374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827595, 41.533245, 44.785400>,  <35.743877, 41.751595, 44.731415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827595, 41.533245, 44.785400>,  <35.967125, 41.169327, 44.875374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827595, 41.533245, 44.785400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480444, 0.379667, 0.790586,
		0.804670, 0.167709, -0.569543,
		-0.348826, 0.909795, -0.224932,
		35.722946, 41.806183, 44.717922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572319, 41.647358, 44.820602>,  <35.967125, 41.169327, 44.875374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572319, 41.647358, 44.820602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243076, 41.861099, 44.897507>,  <36.045528, 41.989342, 44.943649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243076, 41.861099, 44.897507>,  <36.572319, 41.647358, 44.820602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243076, 41.861099, 44.897507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433760, 0.373065, 0.820167,
		0.366530, 0.758481, -0.538852,
		-0.823109, 0.534349, 0.192259,
		35.996143, 42.021404, 44.955185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799088, 42.313210, 44.984196>,  <36.572319, 41.647358, 44.820602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799088, 42.313210, 44.984196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422504, 42.353249, 45.112972>,  <36.196556, 42.377274, 45.190239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422504, 42.353249, 45.112972>,  <36.799088, 42.313210, 44.984196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422504, 42.353249, 45.112972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318365, 0.578180, 0.751233,
		-0.110942, 0.809746, -0.576198,
		-0.941454, 0.100097, 0.321939,
		36.140068, 42.383278, 45.209553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714420, 43.057915, 45.157696>,  <36.799088, 42.313210, 44.984196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714420, 43.057915, 45.157696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.415630, 42.865852, 45.341640>,  <36.236355, 42.750614, 45.452007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.415630, 42.865852, 45.341640>,  <36.714420, 43.057915, 45.157696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415630, 42.865852, 45.341640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199107, 0.498376, 0.843787,
		-0.634339, 0.721850, -0.276671,
		-0.746974, -0.480160, 0.459865,
		36.191540, 42.721806, 45.479599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374321, 43.531769, 45.573750>,  <36.714420, 43.057915, 45.157696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374321, 43.531769, 45.573750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.270508, 43.181229, 45.736061>,  <36.208221, 42.970905, 45.833447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.270508, 43.181229, 45.736061>,  <36.374321, 43.531769, 45.573750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270508, 43.181229, 45.736061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207854, 0.359638, 0.909647,
		-0.943101, 0.320425, 0.088815,
		-0.259532, -0.876350, 0.405777,
		36.192650, 42.918324, 45.857796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869316, 43.644119, 46.116692>,  <36.374321, 43.531769, 45.573750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869316, 43.644119, 46.116692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.090607, 43.320984, 46.198009>,  <36.223381, 43.127102, 46.246799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.090607, 43.320984, 46.198009>,  <35.869316, 43.644119, 46.116692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090607, 43.320984, 46.198009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087061, 0.298778, 0.950343,
		-0.828468, -0.508058, 0.235624,
		0.553229, -0.807842, 0.203295,
		36.256577, 43.078632, 46.258999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397549, 44.027447, 46.398170>,  <35.869316, 43.644119, 46.116692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397549, 44.027447, 46.398170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.142181, 44.060806, 46.704235>,  <34.988960, 44.080822, 46.887875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.142181, 44.060806, 46.704235>,  <35.397549, 44.027447, 46.398170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142181, 44.060806, 46.704235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372064, 0.903686, 0.211944,
		-0.673786, 0.419997, -0.607959,
		-0.638420, 0.083395, 0.765157,
		34.950657, 44.085823, 46.933781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978558, 44.530022, 46.317005>,  <35.397549, 44.027447, 46.398170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978558, 44.530022, 46.317005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.023834, 44.475845, 46.710724>,  <35.050999, 44.443340, 46.946957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.023834, 44.475845, 46.710724>,  <34.978558, 44.530022, 46.317005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023834, 44.475845, 46.710724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007109, 0.990530, 0.137113,
		-0.993548, -0.022517, 0.111154,
		0.113189, -0.135438, 0.984299,
		35.057793, 44.435215, 47.006012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629608, 45.128010, 45.858807>,  <34.978558, 44.530022, 46.317005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629608, 45.128010, 45.858807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.306717, 45.342628, 45.760422>,  <34.112980, 45.471397, 45.701389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.306717, 45.342628, 45.760422>,  <34.629608, 45.128010, 45.858807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306717, 45.342628, 45.760422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425294, -0.817694, -0.387945,
		-0.409270, -0.208556, 0.888258,
		-0.807232, 0.536545, -0.245960,
		34.064548, 45.503593, 45.686634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036083, 44.776608, 46.110455>,  <34.629608, 45.128010, 45.858807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036083, 44.776608, 46.110455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.900173, 45.006451, 45.812626>,  <33.818626, 45.144356, 45.633930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.900173, 45.006451, 45.812626>,  <34.036083, 44.776608, 46.110455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900173, 45.006451, 45.812626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526390, -0.772241, -0.355751,
		-0.779406, 0.271065, 0.564845,
		-0.339764, 0.574603, -0.744575,
		33.798241, 45.178833, 45.589256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326084, 44.635887, 46.015015>,  <34.036083, 44.776608, 46.110455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326084, 44.635887, 46.015015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.442863, 44.794224, 45.666744>,  <33.512932, 44.889225, 45.457783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.442863, 44.794224, 45.666744>,  <33.326084, 44.635887, 46.015015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442863, 44.794224, 45.666744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479883, -0.726830, -0.491356,
		-0.827334, 0.561271, -0.022233,
		0.291944, 0.395846, -0.870675,
		33.530445, 44.912979, 45.405540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763233, 44.567383, 45.584793>,  <33.326084, 44.635887, 46.015015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763233, 44.567383, 45.584793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.041634, 44.641041, 45.307182>,  <33.208675, 44.685234, 45.140617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.041634, 44.641041, 45.307182>,  <32.763233, 44.567383, 45.584793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041634, 44.641041, 45.307182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489196, -0.585924, -0.646050,
		-0.525612, 0.789167, -0.317722,
		0.696002, 0.184143, -0.694026,
		33.250435, 44.696285, 45.098976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410812, 44.674557, 44.958641>,  <32.763233, 44.567383, 45.584793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410812, 44.674557, 44.958641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.783131, 44.586475, 44.841938>,  <33.006523, 44.533627, 44.771915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.783131, 44.586475, 44.841938>,  <32.410812, 44.674557, 44.958641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783131, 44.586475, 44.841938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358466, -0.706088, -0.610689,
		-0.071531, 0.673015, -0.736162,
		0.930798, -0.220206, -0.291760,
		33.062370, 44.520412, 44.754410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391785, 44.627625, 44.281616>,  <32.410812, 44.674557, 44.958641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391785, 44.627625, 44.281616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.749557, 44.459000, 44.341316>,  <32.964222, 44.357826, 44.377136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.749557, 44.459000, 44.341316>,  <32.391785, 44.627625, 44.281616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749557, 44.459000, 44.341316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217958, -0.702355, -0.677636,
		0.390487, 0.573572, -0.720093,
		0.894435, -0.421559, 0.149246,
		33.017887, 44.332531, 44.386089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679562, 44.499073, 43.696152>,  <32.391785, 44.627625, 44.281616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679562, 44.499073, 43.696152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.857899, 44.231525, 43.934090>,  <32.964901, 44.070995, 44.076851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.857899, 44.231525, 43.934090>,  <32.679562, 44.499073, 43.696152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857899, 44.231525, 43.934090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196262, -0.721424, -0.664100,
		0.873329, 0.179341, -0.452917,
		0.445846, -0.668868, 0.594843,
		32.991653, 44.030865, 44.112541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962585, 44.105953, 43.246532>,  <32.679562, 44.499073, 43.696152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962585, 44.105953, 43.246532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.950150, 43.860306, 43.561974>,  <32.942688, 43.712917, 43.751236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.950150, 43.860306, 43.561974>,  <32.962585, 44.105953, 43.246532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950150, 43.860306, 43.561974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005014, -0.789066, -0.614288,
		0.999504, -0.015145, 0.027612,
		-0.031092, -0.614122, 0.788599,
		32.940823, 43.676067, 43.798553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307987, 43.592461, 43.053253>,  <32.962585, 44.105953, 43.246532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307987, 43.592461, 43.053253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.131454, 43.436180, 43.376381>,  <33.025536, 43.342411, 43.570259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.131454, 43.436180, 43.376381>,  <33.307987, 43.592461, 43.053253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131454, 43.436180, 43.376381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040522, -0.890643, -0.452894,
		0.896428, -0.232612, 0.377239,
		-0.441333, -0.390700, 0.807823,
		32.999054, 43.318970, 43.618729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729111, 43.090549, 43.385365>,  <33.307987, 43.592461, 43.053253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729111, 43.090549, 43.385365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.348419, 43.000271, 43.468575>,  <33.120003, 42.946106, 43.518501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.348419, 43.000271, 43.468575>,  <33.729111, 43.090549, 43.385365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348419, 43.000271, 43.468575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074286, -0.826957, -0.557336,
		0.297815, -0.514980, 0.803805,
		-0.951729, -0.225695, 0.208024,
		33.062901, 42.932564, 43.530983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744473, 42.394638, 43.668312>,  <33.729111, 43.090549, 43.385365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744473, 42.394638, 43.668312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.388714, 42.476021, 43.504562>,  <33.175259, 42.524849, 43.406311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.388714, 42.476021, 43.504562>,  <33.744473, 42.394638, 43.668312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388714, 42.476021, 43.504562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042397, -0.854935, -0.517000,
		-0.455172, -0.477172, 0.751748,
		-0.889393, 0.203452, -0.409374,
		33.121895, 42.537056, 43.381752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448566, 41.750778, 43.625568>,  <33.744473, 42.394638, 43.668312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448566, 41.750778, 43.625568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.232727, 41.980709, 43.379509>,  <33.103222, 42.118668, 43.231873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.232727, 41.980709, 43.379509>,  <33.448566, 41.750778, 43.625568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232727, 41.980709, 43.379509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058950, -0.754651, -0.653472,
		-0.839857, -0.316348, 0.441093,
		-0.539597, 0.574826, -0.615151,
		33.070847, 42.153156, 43.194965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877663, 41.310799, 43.336643>,  <33.448566, 41.750778, 43.625568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877663, 41.310799, 43.336643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.857079, 41.622955, 43.087376>,  <32.844730, 41.810249, 42.937817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.857079, 41.622955, 43.087376>,  <32.877663, 41.310799, 43.336643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857079, 41.622955, 43.087376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170736, -0.621680, -0.764436,
		-0.983972, 0.067062, 0.165231,
		-0.051457, 0.780395, -0.623166,
		32.841640, 41.857075, 42.900425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324875, 41.131187, 42.917465>,  <32.877663, 41.310799, 43.336643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324875, 41.131187, 42.917465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.591770, 41.374424, 42.745407>,  <32.751907, 41.520367, 42.642174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.591770, 41.374424, 42.745407>,  <32.324875, 41.131187, 42.917465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591770, 41.374424, 42.745407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060618, -0.531242, -0.845049,
		-0.742377, 0.589920, -0.317602,
		0.667235, 0.608092, -0.430141,
		32.791939, 41.556850, 42.616364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976320, 41.386299, 42.238964>,  <32.324875, 41.131187, 42.917465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976320, 41.386299, 42.238964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.372265, 41.430901, 42.203773>,  <32.609833, 41.457661, 42.182659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.372265, 41.430901, 42.203773>,  <31.976320, 41.386299, 42.238964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372265, 41.430901, 42.203773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041897, -0.362613, -0.930998,
		-0.135710, 0.925245, -0.354265,
		0.989862, 0.111503, -0.087976,
		32.669224, 41.464352, 42.177380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.959440, 41.648739, 41.613274>,  <31.976320, 41.386299, 42.238964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.959440, 41.648739, 41.613274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.312584, 41.472336, 41.677860>,  <32.524471, 41.366493, 41.716614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.312584, 41.472336, 41.677860>,  <31.959440, 41.648739, 41.613274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312584, 41.472336, 41.677860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085793, -0.186588, -0.978685,
		0.461736, 0.877894, -0.126896,
		0.882859, -0.441007, 0.161471,
		32.577442, 41.340034, 41.726303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194141, 41.919758, 40.956989>,  <31.959440, 41.648739, 41.613274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194141, 41.919758, 40.956989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.417316, 41.617054, 41.093235>,  <32.551220, 41.435432, 41.174980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.417316, 41.617054, 41.093235>,  <32.194141, 41.919758, 40.956989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417316, 41.617054, 41.093235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085473, -0.460651, -0.883456,
		0.825472, 0.463798, -0.321696,
		0.557935, -0.756764, 0.340612,
		32.584698, 41.390026, 41.195419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486904, 41.687542, 40.357147>,  <32.194141, 41.919758, 40.956989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486904, 41.687542, 40.357147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.545265, 41.369457, 40.592556>,  <32.580280, 41.178608, 40.733799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.545265, 41.369457, 40.592556>,  <32.486904, 41.687542, 40.357147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545265, 41.369457, 40.592556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038884, -0.599034, -0.799779,
		0.988535, 0.093805, -0.118321,
		0.145902, -0.795210, 0.588518,
		32.589035, 41.130894, 40.769112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933163, 41.374210, 39.921982>,  <32.486904, 41.687542, 40.357147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933163, 41.374210, 39.921982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.821735, 41.090000, 40.180454>,  <32.754879, 40.919472, 40.335537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.821735, 41.090000, 40.180454>,  <32.933163, 41.374210, 39.921982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821735, 41.090000, 40.180454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198958, -0.615524, -0.762591,
		0.939582, -0.340998, 0.030101,
		-0.278570, -0.710528, 0.646180,
		32.738163, 40.876842, 40.374310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368080, 40.749382, 39.824871>,  <32.933163, 41.374210, 39.921982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368080, 40.749382, 39.824871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.032497, 40.615189, 39.996265>,  <32.831146, 40.534672, 40.099102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.032497, 40.615189, 39.996265>,  <33.368080, 40.749382, 39.824871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032497, 40.615189, 39.996265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187939, -0.560318, -0.806674,
		0.510715, -0.757295, 0.407032,
		-0.838957, -0.335483, 0.428488,
		32.780811, 40.514545, 40.124813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.220501, 39.721523, 35.416958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.874683, 39.551476, 35.524166>,  <38.667191, 39.449448, 35.588490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.874683, 39.551476, 35.524166>,  <39.220501, 39.721523, 35.416958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874683, 39.551476, 35.524166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482259, -0.851823, 0.204507,
		0.141366, 0.306060, 0.941458,
		-0.864547, -0.425116, 0.268019,
		38.615318, 39.423939, 35.604572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337883, 39.287876, 35.979439>,  <39.220501, 39.721523, 35.416958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337883, 39.287876, 35.979439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.006847, 39.157681, 35.796505>,  <38.808228, 39.079563, 35.686745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.006847, 39.157681, 35.796505>,  <39.337883, 39.287876, 35.979439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006847, 39.157681, 35.796505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313289, -0.943855, 0.104818,
		-0.465776, -0.056532, 0.883095,
		-0.827589, -0.325486, -0.457336,
		38.758572, 39.060036, 35.659306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165237, 38.672501, 36.349312>,  <39.337883, 39.287876, 35.979439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165237, 38.672501, 36.349312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986584, 38.644409, 35.992531>,  <38.879391, 38.627552, 35.778461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.986584, 38.644409, 35.992531>,  <39.165237, 38.672501, 36.349312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986584, 38.644409, 35.992531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206229, -0.978152, -0.026245,
		-0.870626, -0.195669, 0.451358,
		-0.446632, -0.070233, -0.891957,
		38.852592, 38.623341, 35.724945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078865, 37.903572, 36.264549>,  <39.165237, 38.672501, 36.349312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078865, 37.903572, 36.264549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.023033, 38.060150, 35.900726>,  <38.989532, 38.154095, 35.682434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.023033, 38.060150, 35.900726>,  <39.078865, 37.903572, 36.264549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023033, 38.060150, 35.900726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420547, -0.808156, -0.412340,
		-0.896470, -0.440065, -0.051819,
		-0.139579, 0.391442, -0.909555,
		38.981159, 38.177582, 35.627861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969528, 37.252865, 35.857082>,  <39.078865, 37.903572, 36.264549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969528, 37.252865, 35.857082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.078960, 37.569965, 35.639202>,  <39.144619, 37.760227, 35.508476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.078960, 37.569965, 35.639202>,  <38.969528, 37.252865, 35.857082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078960, 37.569965, 35.639202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458375, -0.605317, -0.650756,
		-0.845604, -0.071642, -0.528982,
		0.273580, 0.792754, -0.544697,
		39.161034, 37.807793, 35.475792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902092, 37.103390, 35.200535>,  <38.969528, 37.252865, 35.857082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902092, 37.103390, 35.200535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.167282, 37.402203, 35.180878>,  <39.326397, 37.581490, 35.169083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.167282, 37.402203, 35.180878>,  <38.902092, 37.103390, 35.200535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167282, 37.402203, 35.180878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556451, -0.535628, -0.635188,
		-0.500829, 0.393764, -0.770792,
		0.662973, 0.747028, -0.049148,
		39.366173, 37.626312, 35.166134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208080, 37.115528, 34.449966>,  <38.902092, 37.103390, 35.200535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208080, 37.115528, 34.449966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463669, 37.336906, 34.663666>,  <39.617020, 37.469734, 34.791885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463669, 37.336906, 34.663666>,  <39.208080, 37.115528, 34.449966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463669, 37.336906, 34.663666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765676, -0.390871, -0.510843,
		-0.073904, 0.735470, -0.673515,
		0.638967, 0.553447, 0.534245,
		39.655357, 37.502941, 34.823940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673771, 37.483307, 33.986038>,  <39.208080, 37.115528, 34.449966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673771, 37.483307, 33.986038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.881916, 37.458504, 34.326714>,  <40.006802, 37.443623, 34.531120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.881916, 37.458504, 34.326714>,  <39.673771, 37.483307, 33.986038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881916, 37.458504, 34.326714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809847, -0.280534, -0.515217,
		0.270876, 0.957839, -0.095761,
		0.520359, -0.062008, 0.851693,
		40.038025, 37.439899, 34.582222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197094, 37.838734, 33.848213>,  <39.673771, 37.483307, 33.986038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197094, 37.838734, 33.848213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299088, 37.625252, 34.170738>,  <40.360283, 37.497162, 34.364254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299088, 37.625252, 34.170738>,  <40.197094, 37.838734, 33.848213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299088, 37.625252, 34.170738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853790, -0.267167, -0.446838,
		0.453899, 0.802361, 0.387546,
		0.254986, -0.533702, 0.806315,
		40.375584, 37.465141, 34.412632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944565, 37.964592, 33.888248>,  <40.197094, 37.838734, 33.848213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944565, 37.964592, 33.888248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.874176, 37.639931, 34.111053>,  <40.831944, 37.445133, 34.244736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.874176, 37.639931, 34.111053>,  <40.944565, 37.964592, 33.888248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874176, 37.639931, 34.111053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846760, -0.413373, -0.334844,
		0.502029, 0.412732, 0.760012,
		-0.175967, -0.811650, 0.557010,
		40.821384, 37.396435, 34.278156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535439, 37.839745, 34.289738>,  <40.944565, 37.964592, 33.888248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535439, 37.839745, 34.289738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.350574, 37.485096, 34.296726>,  <41.239658, 37.272305, 34.300919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.350574, 37.485096, 34.296726>,  <41.535439, 37.839745, 34.289738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350574, 37.485096, 34.296726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843622, -0.445645, -0.299504,
		0.273334, -0.123677, 0.953935,
		-0.462158, -0.886626, 0.017473,
		41.211926, 37.219109, 34.301968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880543, 37.419598, 34.719929>,  <41.535439, 37.839745, 34.289738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880543, 37.419598, 34.719929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.664940, 37.163445, 34.501068>,  <41.535580, 37.009754, 34.369751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.664940, 37.163445, 34.501068>,  <41.880543, 37.419598, 34.719929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664940, 37.163445, 34.501068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784300, -0.618461, -0.048780,
		-0.307157, -0.455427, 0.835608,
		-0.539007, -0.640384, -0.547156,
		41.503239, 36.971329, 34.336922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241768, 36.801315, 34.903316>,  <41.880543, 37.419598, 34.719929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241768, 36.801315, 34.903316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.038673, 36.737919, 34.564590>,  <41.916817, 36.699883, 34.361355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.038673, 36.737919, 34.564590>,  <42.241768, 36.801315, 34.903316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038673, 36.737919, 34.564590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590928, -0.779328, -0.208451,
		-0.626906, -0.606242, 0.489347,
		-0.507733, -0.158489, -0.846810,
		41.886353, 36.690372, 34.310547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959911, 36.158691, 34.978245>,  <42.241768, 36.801315, 34.903316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959911, 36.158691, 34.978245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.976265, 36.237946, 34.586517>,  <41.986076, 36.285500, 34.351479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.976265, 36.237946, 34.586517>,  <41.959911, 36.158691, 34.978245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976265, 36.237946, 34.586517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652148, -0.747868, -0.124086,
		-0.756989, -0.633589, -0.159792,
		0.040884, 0.198139, -0.979321,
		41.988529, 36.297386, 34.292721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765675, 35.559944, 34.683407>,  <41.959911, 36.158691, 34.978245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765675, 35.559944, 34.683407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.974621, 35.748734, 34.399330>,  <42.099987, 35.862007, 34.228886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.974621, 35.748734, 34.399330>,  <41.765675, 35.559944, 34.683407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974621, 35.748734, 34.399330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639503, -0.767755, -0.039860,
		-0.564067, -0.433348, -0.702878,
		0.522365, 0.471977, -0.710192,
		42.131329, 35.890327, 34.186272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900375, 35.063656, 34.130749>,  <41.765675, 35.559944, 34.683407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900375, 35.063656, 34.130749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.179356, 35.343430, 34.068325>,  <42.346745, 35.511295, 34.030872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.179356, 35.343430, 34.068325>,  <41.900375, 35.063656, 34.130749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179356, 35.343430, 34.068325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657625, -0.711190, -0.248472,
		-0.284778, 0.070667, -0.955985,
		0.697446, 0.699439, -0.156059,
		42.388588, 35.553261, 34.021507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.235371, 34.786674, 33.638241>,  <41.900375, 35.063656, 34.130749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.235371, 34.786674, 33.638241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.485886, 35.069782, 33.768978>,  <42.636196, 35.239647, 33.847420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.485886, 35.069782, 33.768978>,  <42.235371, 34.786674, 33.638241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485886, 35.069782, 33.768978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779132, -0.582610, -0.231341,
		0.026685, 0.399539, -0.916328,
		0.626291, 0.707767, 0.326841,
		42.673775, 35.282112, 33.867031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753857, 34.760094, 33.219898>,  <42.235371, 34.786674, 33.638241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753857, 34.760094, 33.219898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.905224, 34.925438, 33.551182>,  <42.996044, 35.024643, 33.749954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.905224, 34.925438, 33.551182>,  <42.753857, 34.760094, 33.219898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905224, 34.925438, 33.551182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813598, -0.575235, -0.084639,
		0.441430, 0.705860, -0.553986,
		0.378416, 0.413360, 0.828212,
		43.018749, 35.049446, 33.799644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383080, 35.024101, 33.011608>,  <42.753857, 34.760094, 33.219898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383080, 35.024101, 33.011608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.391376, 34.956543, 33.405773>,  <43.396355, 34.916008, 33.642273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.391376, 34.956543, 33.405773>,  <43.383080, 35.024101, 33.011608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391376, 34.956543, 33.405773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782044, -0.611316, -0.121239,
		0.622878, 0.773153, 0.119404,
		0.020743, -0.168897, 0.985415,
		43.397598, 34.905872, 33.701397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088081, 35.037060, 33.187077>,  <43.383080, 35.024101, 33.011608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088081, 35.037060, 33.187077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.862049, 34.843361, 33.454266>,  <43.726429, 34.727142, 33.614578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.862049, 34.843361, 33.454266>,  <44.088081, 35.037060, 33.187077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862049, 34.843361, 33.454266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444034, -0.860874, -0.248456,
		0.695357, 0.156207, 0.701483,
		-0.565078, -0.484247, 0.667976,
		43.692524, 34.698086, 33.654659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554234, 34.581505, 33.603870>,  <44.088081, 35.037060, 33.187077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554234, 34.581505, 33.603870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.186935, 34.435883, 33.666206>,  <43.966557, 34.348511, 33.703609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.186935, 34.435883, 33.666206>,  <44.554234, 34.581505, 33.603870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186935, 34.435883, 33.666206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317711, -0.912170, -0.258855,
		0.236393, -0.188179, 0.953261,
		-0.918247, -0.364053, 0.155844,
		43.911461, 34.326668, 33.712959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639263, 33.945164, 34.000446>,  <44.554234, 34.581505, 33.603870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639263, 33.945164, 34.000446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.299309, 33.913322, 33.792080>,  <44.095337, 33.894218, 33.667061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.299309, 33.913322, 33.792080>,  <44.639263, 33.945164, 34.000446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299309, 33.913322, 33.792080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153480, -0.983060, -0.100182,
		-0.504115, -0.165093, 0.847710,
		-0.849889, -0.079604, -0.520914,
		44.044342, 33.889442, 33.635807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007404, 33.940685, 34.647041>,  <44.639263, 33.945164, 34.000446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007404, 33.940685, 34.647041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.378601, 34.064278, 34.563759>,  <45.601318, 34.138435, 34.513790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.378601, 34.064278, 34.563759>,  <45.007404, 33.940685, 34.647041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.378601, 34.064278, 34.563759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065400, 0.685224, 0.725390,
		0.366804, -0.659543, 0.656093,
		0.927996, 0.308985, -0.208209,
		45.657001, 34.156975, 34.501297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344284, 34.163906, 35.265865>,  <45.007404, 33.940685, 34.647041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344284, 34.163906, 35.265865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.568871, 34.353107, 34.994270>,  <45.703625, 34.466629, 34.831314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.568871, 34.353107, 34.994270>,  <45.344284, 34.163906, 35.265865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568871, 34.353107, 34.994270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101153, 0.775142, 0.623637,
		0.821292, -0.418833, 0.387372,
		0.561468, 0.473005, -0.678985,
		45.737312, 34.495010, 34.790577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.909828, 34.477688, 35.642017>,  <45.344284, 34.163906, 35.265865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.909828, 34.477688, 35.642017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.886581, 34.692192, 35.305199>,  <45.872635, 34.820896, 35.103107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.886581, 34.692192, 35.305199>,  <45.909828, 34.477688, 35.642017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.886581, 34.692192, 35.305199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044151, 0.841266, 0.538815,
		0.997333, 0.068492, -0.025216,
		-0.058118, 0.536265, -0.842046,
		45.869144, 34.853073, 35.052586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.340279, 35.070560, 35.782871>,  <45.909828, 34.477688, 35.642017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.340279, 35.070560, 35.782871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.068123, 35.153065, 35.501579>,  <45.904831, 35.202568, 35.332806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.068123, 35.153065, 35.501579>,  <46.340279, 35.070560, 35.782871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.068123, 35.153065, 35.501579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229278, 0.851496, 0.471577,
		0.696062, 0.482091, -0.532058,
		-0.680389, 0.206257, -0.703227,
		45.864006, 35.214943, 35.290611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.330917, 35.761032, 35.782104>,  <46.340279, 35.070560, 35.782871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.330917, 35.761032, 35.782104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.007263, 35.685276, 35.559597>,  <45.813072, 35.639824, 35.426090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.007263, 35.685276, 35.559597>,  <46.330917, 35.761032, 35.782104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007263, 35.685276, 35.559597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480126, 0.758861, 0.440011,
		0.338801, 0.623107, -0.704948,
		-0.809131, -0.189388, -0.556273,
		45.764523, 35.628460, 35.392715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.192322, 36.421150, 35.573910>,  <46.330917, 35.761032, 35.782104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.192322, 36.421150, 35.573910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.855103, 36.207237, 35.550980>,  <45.652771, 36.078892, 35.537224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.855103, 36.207237, 35.550980>,  <46.192322, 36.421150, 35.573910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.855103, 36.207237, 35.550980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498333, 0.736576, 0.457297,
		-0.202331, 0.414087, -0.887465,
		-0.843046, -0.534779, -0.057321,
		45.602188, 36.046803, 35.533783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665527, 36.923889, 35.224712>,  <46.192322, 36.421150, 35.573910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665527, 36.923889, 35.224712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413311, 36.640305, 35.351074>,  <45.261982, 36.470154, 35.426891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.413311, 36.640305, 35.351074>,  <45.665527, 36.923889, 35.224712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413311, 36.640305, 35.351074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654293, 0.704466, 0.275007,
		-0.417511, -0.033290, -0.908062,
		-0.630543, -0.708957, 0.315904,
		45.224148, 36.427616, 35.445847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.001301, 37.125156, 35.069130>,  <45.665527, 36.923889, 35.224712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.001301, 37.125156, 35.069130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.961678, 36.842850, 35.349724>,  <44.937904, 36.673466, 35.518078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.961678, 36.842850, 35.349724>,  <45.001301, 37.125156, 35.069130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.961678, 36.842850, 35.349724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704219, 0.547778, 0.451679,
		-0.703038, -0.449254, -0.551280,
		-0.099061, -0.705769, 0.701482,
		44.931961, 36.631119, 35.560169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322243, 37.077847, 35.135887>,  <45.001301, 37.125156, 35.069130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322243, 37.077847, 35.135887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.433434, 36.896019, 35.474377>,  <44.500149, 36.786922, 35.677471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.433434, 36.896019, 35.474377>,  <44.322243, 37.077847, 35.135887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.433434, 36.896019, 35.474377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814039, 0.356214, 0.458751,
		-0.509971, -0.816382, -0.271017,
		0.277976, -0.454568, 0.846226,
		44.516827, 36.759647, 35.728245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778904, 36.660538, 35.315861>,  <44.322243, 37.077847, 35.135887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778904, 36.660538, 35.315861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.004021, 36.749424, 35.634331>,  <44.139091, 36.802757, 35.825413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.004021, 36.749424, 35.634331>,  <43.778904, 36.660538, 35.315861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004021, 36.749424, 35.634331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819840, 0.272994, 0.503326,
		-0.105502, -0.935999, 0.335821,
		0.562789, 0.222218, 0.796170,
		44.172859, 36.816090, 35.873180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514431, 36.388992, 36.040974>,  <43.778904, 36.660538, 35.315861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514431, 36.388992, 36.040974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.760845, 36.687252, 36.142570>,  <43.908691, 36.866207, 36.203529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.760845, 36.687252, 36.142570>,  <43.514431, 36.388992, 36.040974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760845, 36.687252, 36.142570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670254, 0.326776, 0.666316,
		0.413843, -0.580707, 0.701080,
		0.616031, 0.745652, 0.253987,
		43.945656, 36.910946, 36.218769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612389, 36.367279, 36.723293>,  <43.514431, 36.388992, 36.040974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612389, 36.367279, 36.723293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.729340, 36.738037, 36.629169>,  <43.799511, 36.960491, 36.572697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.729340, 36.738037, 36.629169>,  <43.612389, 36.367279, 36.723293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729340, 36.738037, 36.629169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634223, 0.372109, 0.677714,
		0.715734, -0.048912, 0.696658,
		0.292381, 0.926899, -0.235310,
		43.817055, 37.016106, 36.558575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.808548, 36.667915, 37.372681>,  <43.612389, 36.367279, 36.723293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.808548, 36.667915, 37.372681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.724098, 36.972210, 37.127178>,  <43.673428, 37.154789, 36.979877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.724098, 36.972210, 37.127178>,  <43.808548, 36.667915, 37.372681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724098, 36.972210, 37.127178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481478, 0.465515, 0.742614,
		0.850650, 0.452296, 0.267997,
		-0.211125, 0.760739, -0.613761,
		43.660759, 37.200432, 36.943050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875011, 37.392445, 37.794518>,  <43.808548, 36.667915, 37.372681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875011, 37.392445, 37.794518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.659554, 37.484142, 37.470219>,  <43.530277, 37.539162, 37.275639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.659554, 37.484142, 37.470219>,  <43.875011, 37.392445, 37.794518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659554, 37.484142, 37.470219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604123, 0.565654, 0.561312,
		0.587277, 0.792139, -0.166197,
		-0.538647, 0.229242, -0.810745,
		43.497959, 37.552914, 37.226994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765797, 38.144642, 37.842236>,  <43.875011, 37.392445, 37.794518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765797, 38.144642, 37.842236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.476135, 38.042171, 37.586121>,  <43.302338, 37.980690, 37.432449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.476135, 38.042171, 37.586121>,  <43.765797, 38.144642, 37.842236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476135, 38.042171, 37.586121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641332, 0.591522, 0.488666,
		0.253561, 0.764510, -0.592648,
		-0.724154, -0.256178, -0.640292,
		43.258888, 37.965317, 37.394032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379368, 38.756035, 37.744747>,  <43.765797, 38.144642, 37.842236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379368, 38.756035, 37.744747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131916, 38.474361, 37.605366>,  <42.983444, 38.305359, 37.521736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131916, 38.474361, 37.605366>,  <43.379368, 38.756035, 37.744747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131916, 38.474361, 37.605366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777870, 0.486558, 0.397719,
		-0.110523, 0.517094, -0.848763,
		-0.618630, -0.704184, -0.348456,
		42.946327, 38.263107, 37.500828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.848400, 39.112251, 37.342525>,  <43.379368, 38.756035, 37.744747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.848400, 39.112251, 37.342525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.738598, 38.749065, 37.469177>,  <42.672718, 38.531155, 37.545170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.738598, 38.749065, 37.469177>,  <42.848400, 39.112251, 37.342525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738598, 38.749065, 37.469177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765024, 0.405702, 0.500143,
		-0.582568, -0.104939, -0.805979,
		-0.274503, -0.907961, 0.316630,
		42.656246, 38.476677, 37.564167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143478, 38.908207, 37.016251>,  <42.848400, 39.112251, 37.342525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143478, 38.908207, 37.016251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.173935, 38.683392, 37.345688>,  <42.192207, 38.548500, 37.543350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.173935, 38.683392, 37.345688>,  <42.143478, 38.908207, 37.016251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173935, 38.683392, 37.345688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929928, 0.258010, 0.262040,
		-0.359774, -0.785836, -0.503015,
		0.076138, -0.562043, 0.823596,
		42.196777, 38.514778, 37.592766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505932, 38.577641, 37.012424>,  <42.143478, 38.908207, 37.016251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505932, 38.577641, 37.012424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.683254, 38.557201, 37.370388>,  <41.789650, 38.544937, 37.585167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.683254, 38.557201, 37.370388>,  <41.505932, 38.577641, 37.012424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683254, 38.557201, 37.370388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803610, 0.419632, 0.422043,
		-0.397098, -0.906255, 0.144966,
		0.443311, -0.051096, 0.894911,
		41.816246, 38.541874, 37.638863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033882, 38.284523, 37.470261>,  <41.505932, 38.577641, 37.012424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033882, 38.284523, 37.470261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.281879, 38.492252, 37.705517>,  <41.430679, 38.616890, 37.846668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.281879, 38.492252, 37.705517>,  <41.033882, 38.284523, 37.470261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281879, 38.492252, 37.705517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774425, 0.525411, 0.352434,
		-0.125987, -0.673976, 0.727931,
		0.619995, 0.519326, 0.588139,
		41.467876, 38.648048, 37.881958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.588989, 36.916908, 36.844860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231354, 36.866493, 37.016773>,  <36.016773, 36.836243, 37.119919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231354, 36.866493, 37.016773>,  <36.588989, 36.916908, 36.844860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231354, 36.866493, 37.016773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163069, -0.802116, -0.574472,
		0.417141, -0.583715, 0.696614,
		-0.894093, -0.126040, 0.429781,
		35.963127, 36.828682, 37.145706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448704, 36.158813, 36.933956>,  <36.588989, 36.916908, 36.844860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448704, 36.158813, 36.933956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098240, 36.351036, 36.948944>,  <35.887962, 36.466370, 36.957935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098240, 36.351036, 36.948944>,  <36.448704, 36.158813, 36.933956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098240, 36.351036, 36.948944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383582, -0.648057, -0.657941,
		-0.291898, -0.590835, 0.752136,
		-0.876162, 0.480557, 0.037467,
		35.835392, 36.495205, 36.960186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032581, 35.656593, 37.005074>,  <36.448704, 36.158813, 36.933956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032581, 35.656593, 37.005074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781944, 35.948841, 36.896572>,  <35.631561, 36.124191, 36.831470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781944, 35.948841, 36.896572>,  <36.032581, 35.656593, 37.005074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781944, 35.948841, 36.896572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362250, -0.581204, -0.728682,
		-0.690045, -0.358322, 0.628843,
		-0.626588, 0.730621, -0.271254,
		35.593967, 36.168026, 36.815197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413574, 35.423973, 37.041088>,  <36.032581, 35.656593, 37.005074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413574, 35.423973, 37.041088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387131, 35.714588, 36.767513>,  <35.371265, 35.888958, 36.603367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387131, 35.714588, 36.767513>,  <35.413574, 35.423973, 37.041088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387131, 35.714588, 36.767513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229068, -0.678182, -0.698281,
		-0.971163, 0.110505, 0.211261,
		-0.066110, 0.726538, -0.683939,
		35.367298, 35.932549, 36.562332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727158, 35.297344, 36.722698>,  <35.413574, 35.423973, 37.041088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727158, 35.297344, 36.722698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926422, 35.550571, 36.485699>,  <35.045982, 35.702507, 36.343498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926422, 35.550571, 36.485699>,  <34.727158, 35.297344, 36.722698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926422, 35.550571, 36.485699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468367, -0.378592, -0.798311,
		-0.729702, 0.675197, 0.107907,
		0.498164, 0.633070, -0.592499,
		35.075871, 35.740494, 36.307949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177826, 35.493217, 36.286285>,  <34.727158, 35.297344, 36.722698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177826, 35.493217, 36.286285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525963, 35.573086, 36.106224>,  <34.734844, 35.621006, 35.998188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525963, 35.573086, 36.106224>,  <34.177826, 35.493217, 36.286285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525963, 35.573086, 36.106224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333827, -0.432800, -0.837403,
		-0.362036, 0.879098, -0.310026,
		0.870339, 0.199676, -0.450156,
		34.787064, 35.632988, 35.971176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993603, 35.656769, 35.614914>,  <34.177826, 35.493217, 36.286285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993603, 35.656769, 35.614914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383869, 35.574364, 35.584896>,  <34.618031, 35.524921, 35.566887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383869, 35.574364, 35.584896>,  <33.993603, 35.656769, 35.614914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383869, 35.574364, 35.584896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143851, -0.343175, -0.928191,
		0.165462, 0.916402, -0.364459,
		0.975669, -0.206009, -0.075043,
		34.676571, 35.512562, 35.562382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032261, 35.815849, 34.940250>,  <33.993603, 35.656769, 35.614914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032261, 35.815849, 34.940250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358486, 35.603180, 35.031620>,  <34.554222, 35.475578, 35.086441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358486, 35.603180, 35.031620>,  <34.032261, 35.815849, 34.940250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358486, 35.603180, 35.031620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101093, -0.519579, -0.848421,
		0.569772, 0.668847, -0.477497,
		0.815561, -0.531678, 0.228426,
		34.603153, 35.443676, 35.100147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510593, 35.819225, 34.318512>,  <34.032261, 35.815849, 34.940250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510593, 35.819225, 34.318512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591114, 35.497414, 34.542011>,  <34.639427, 35.304325, 34.676113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591114, 35.497414, 34.542011>,  <34.510593, 35.819225, 34.318512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591114, 35.497414, 34.542011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018298, -0.573418, -0.819059,
		0.979358, 0.154653, -0.130151,
		0.201301, -0.804533, 0.558752,
		34.651505, 35.256054, 34.709637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103371, 35.561699, 33.995262>,  <34.510593, 35.819225, 34.318512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103371, 35.561699, 33.995262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933243, 35.262703, 34.199364>,  <34.831165, 35.083305, 34.321827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933243, 35.262703, 34.199364>,  <35.103371, 35.561699, 33.995262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933243, 35.262703, 34.199364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112463, -0.515771, -0.849313,
		0.898027, -0.418617, 0.135305,
		-0.425323, -0.747489, 0.510256,
		34.805645, 35.038456, 34.352440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597641, 34.918896, 33.970497>,  <35.103371, 35.561699, 33.995262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597641, 34.918896, 33.970497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217560, 34.818954, 34.044998>,  <34.989513, 34.758987, 34.089699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217560, 34.818954, 34.044998>,  <35.597641, 34.918896, 33.970497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217560, 34.818954, 34.044998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043507, -0.485454, -0.873179,
		0.308587, -0.837798, 0.450408,
		-0.950200, -0.249856, 0.186255,
		34.932499, 34.743999, 34.100876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526089, 34.142342, 33.954662>,  <35.597641, 34.918896, 33.970497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526089, 34.142342, 33.954662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169956, 34.313755, 33.893131>,  <34.956276, 34.416603, 33.856213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169956, 34.313755, 33.893131>,  <35.526089, 34.142342, 33.954662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169956, 34.313755, 33.893131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145643, -0.588158, -0.795524,
		-0.431384, -0.685878, 0.586070,
		-0.890335, 0.428533, -0.153829,
		34.902855, 34.442314, 33.846981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237118, 34.078972, 33.853905>,  <35.526089, 34.142342, 33.954662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237118, 34.078972, 33.853905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322147, 34.241825, 34.209221>,  <36.373165, 34.339535, 34.422409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322147, 34.241825, 34.209221>,  <36.237118, 34.078972, 33.853905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322147, 34.241825, 34.209221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104678, -0.913323, 0.393552,
		0.971522, 0.009326, -0.236766,
		0.212574, 0.407129, 0.888290,
		36.385921, 34.363964, 34.475708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862633, 33.721836, 34.137802>,  <36.237118, 34.078972, 33.853905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862633, 33.721836, 34.137802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725941, 33.933376, 34.448555>,  <36.643925, 34.060299, 34.635006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725941, 33.933376, 34.448555>,  <36.862633, 33.721836, 34.137802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725941, 33.933376, 34.448555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107229, -0.799306, 0.591280,
		0.933661, 0.285362, 0.216438,
		-0.341729, 0.528847, 0.776880,
		36.623421, 34.092030, 34.681618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714603, 33.674152, 34.166195>,  <36.862633, 33.721836, 34.137802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714603, 33.674152, 34.166195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028790, 33.462952, 34.037037>,  <38.217300, 33.336231, 33.959541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028790, 33.462952, 34.037037>,  <37.714603, 33.674152, 34.166195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028790, 33.462952, 34.037037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088840, -0.612497, 0.785465,
		-0.612497, -0.588269, -0.528003,
		-0.785465, 0.528003, 0.322890,
		38.264427, 33.304550, 33.940170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582043, 32.921207, 34.066032>,  <37.714603, 33.674152, 34.166195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582043, 32.921207, 34.066032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966774, 33.000797, 34.141174>,  <38.197613, 33.048550, 34.186260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966774, 33.000797, 34.141174>,  <37.582043, 32.921207, 34.066032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966774, 33.000797, 34.141174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066630, -0.495537, 0.866028,
		0.265406, -0.845489, -0.463365,
		0.961832, 0.198975, 0.187853,
		38.255325, 33.060490, 34.197529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903091, 32.279320, 34.261421>,  <37.582043, 32.921207, 34.066032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903091, 32.279320, 34.261421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118629, 32.580082, 34.413357>,  <38.247952, 32.760540, 34.504520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118629, 32.580082, 34.413357>,  <37.903091, 32.279320, 34.261421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118629, 32.580082, 34.413357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031850, -0.432396, 0.901121,
		0.841803, -0.497663, -0.209046,
		0.538845, 0.751908, 0.379842,
		38.280281, 32.805653, 34.527309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241867, 31.963984, 34.830624>,  <37.903091, 32.279320, 34.261421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241867, 31.963984, 34.830624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305943, 32.347374, 34.924999>,  <38.344387, 32.577408, 34.981625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305943, 32.347374, 34.924999>,  <38.241867, 31.963984, 34.830624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305943, 32.347374, 34.924999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009191, -0.240462, 0.970615,
		0.987043, -0.153316, -0.047330,
		0.160192, 0.958474, 0.235937,
		38.354000, 32.634914, 34.995781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819794, 31.963654, 35.448330>,  <38.241867, 31.963984, 34.830624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819794, 31.963654, 35.448330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607872, 32.302883, 35.444805>,  <38.480721, 32.506420, 35.442692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607872, 32.302883, 35.444805>,  <38.819794, 31.963654, 35.448330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607872, 32.302883, 35.444805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066912, 0.052154, 0.996395,
		0.845477, 0.527303, -0.084378,
		-0.529803, 0.848075, -0.008812,
		38.448933, 32.557304, 35.442162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991871, 32.265167, 36.121738>,  <38.819794, 31.963654, 35.448330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991871, 32.265167, 36.121738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695427, 32.505833, 36.002571>,  <38.517559, 32.650234, 35.931072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695427, 32.505833, 36.002571>,  <38.991871, 32.265167, 36.121738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695427, 32.505833, 36.002571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233269, 0.185338, 0.954587,
		0.629558, 0.776948, 0.002995,
		-0.741109, 0.601666, -0.297919,
		38.473095, 32.686333, 35.913197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091217, 32.938026, 36.361324>,  <38.991871, 32.265167, 36.121738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091217, 32.938026, 36.361324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697636, 32.945599, 36.290359>,  <38.461487, 32.950142, 36.247780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697636, 32.945599, 36.290359>,  <39.091217, 32.938026, 36.361324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697636, 32.945599, 36.290359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155080, 0.400945, 0.902881,
		0.088228, 0.915907, -0.391575,
		-0.983954, 0.018934, -0.177414,
		38.402451, 32.951279, 36.237137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882484, 33.641552, 36.426430>,  <39.091217, 32.938026, 36.361324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882484, 33.641552, 36.426430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577724, 33.389313, 36.485558>,  <38.394867, 33.237968, 36.521034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577724, 33.389313, 36.485558>,  <38.882484, 33.641552, 36.426430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577724, 33.389313, 36.485558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240142, 0.486985, 0.839748,
		-0.601529, 0.604309, -0.522468,
		-0.761902, -0.630600, 0.147815,
		38.349155, 33.200134, 36.529903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316704, 34.032627, 36.541805>,  <38.882484, 33.641552, 36.426430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316704, 34.032627, 36.541805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225708, 33.680721, 36.708782>,  <38.171108, 33.469578, 36.808968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225708, 33.680721, 36.708782>,  <38.316704, 34.032627, 36.541805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225708, 33.680721, 36.708782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516711, 0.472411, 0.714030,
		-0.825383, -0.053259, -0.562055,
		-0.227493, -0.879768, 0.417439,
		38.157459, 33.416790, 36.834015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624989, 34.036152, 36.553188>,  <38.316704, 34.032627, 36.541805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624989, 34.036152, 36.553188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734005, 33.784443, 36.844318>,  <37.799416, 33.633415, 37.018997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734005, 33.784443, 36.844318>,  <37.624989, 34.036152, 36.553188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734005, 33.784443, 36.844318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584225, 0.492806, 0.644843,
		-0.764462, -0.600962, -0.233328,
		0.272541, -0.629274, 0.727829,
		37.815765, 33.595661, 37.062668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068539, 34.146076, 37.006371>,  <37.624989, 34.036152, 36.553188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068539, 34.146076, 37.006371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303528, 33.917313, 37.235382>,  <37.444523, 33.780052, 37.372791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303528, 33.917313, 37.235382>,  <37.068539, 34.146076, 37.006371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303528, 33.917313, 37.235382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581195, 0.194120, 0.790272,
		-0.563106, -0.797016, -0.218352,
		0.587473, -0.571912, 0.572532,
		37.479771, 33.745739, 37.407143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695011, 33.638802, 37.459133>,  <37.068539, 34.146076, 37.006371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695011, 33.638802, 37.459133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045376, 33.749523, 37.617199>,  <37.255596, 33.815956, 37.712036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045376, 33.749523, 37.617199>,  <36.695011, 33.638802, 37.459133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045376, 33.749523, 37.617199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482417, 0.490610, 0.725655,
		0.006996, -0.826245, 0.563268,
		0.875914, 0.276807, 0.395162,
		37.308151, 33.832565, 37.735748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458107, 33.675217, 38.181576>,  <36.695011, 33.638802, 37.459133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458107, 33.675217, 38.181576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811764, 33.857471, 38.140202>,  <37.023956, 33.966824, 38.115376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811764, 33.857471, 38.140202>,  <36.458107, 33.675217, 38.181576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811764, 33.857471, 38.140202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269601, 0.678322, 0.683516,
		0.381597, -0.576435, 0.722569,
		0.884137, 0.455633, -0.103439,
		37.077003, 33.994160, 38.109169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620483, 33.898972, 38.820885>,  <36.458107, 33.675217, 38.181576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620483, 33.898972, 38.820885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895477, 34.104771, 38.615883>,  <37.060474, 34.228249, 38.492882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895477, 34.104771, 38.615883>,  <36.620483, 33.898972, 38.820885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895477, 34.104771, 38.615883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168325, 0.799408, 0.576726,
		0.706423, -0.310223, 0.636183,
		0.687484, 0.514498, -0.512502,
		37.101723, 34.259121, 38.462132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570068, 33.352097, 39.375134>,  <36.620483, 33.898972, 38.820885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570068, 33.352097, 39.375134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186893, 33.321018, 39.485638>,  <35.956989, 33.302372, 39.551941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186893, 33.321018, 39.485638>,  <36.570068, 33.352097, 39.375134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186893, 33.321018, 39.485638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197498, -0.519959, -0.831046,
		0.208210, -0.850651, 0.482744,
		-0.957937, -0.077691, 0.276262,
		35.899513, 33.297710, 39.568516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399010, 32.704853, 39.076164>,  <36.570068, 33.352097, 39.375134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399010, 32.704853, 39.076164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050438, 32.884232, 39.155663>,  <35.841293, 32.991859, 39.203362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050438, 32.884232, 39.155663>,  <36.399010, 32.704853, 39.076164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050438, 32.884232, 39.155663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409280, -0.441422, -0.798521,
		-0.270360, -0.777202, 0.568209,
		-0.871433, 0.448445, 0.198751,
		35.789009, 33.018764, 39.215286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872662, 32.216457, 38.917927>,  <36.399010, 32.704853, 39.076164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872662, 32.216457, 38.917927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693241, 32.573727, 38.904987>,  <35.585590, 32.788090, 38.897224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693241, 32.573727, 38.904987>,  <35.872662, 32.216457, 38.917927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693241, 32.573727, 38.904987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380691, -0.223675, -0.897243,
		-0.808627, -0.390144, 0.440352,
		-0.448550, 0.893173, -0.032346,
		35.558678, 32.841679, 38.895283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181946, 32.037121, 38.828007>,  <35.872662, 32.216457, 38.917927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181946, 32.037121, 38.828007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222225, 32.416443, 38.707619>,  <35.246391, 32.644035, 38.635384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222225, 32.416443, 38.707619>,  <35.181946, 32.037121, 38.828007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222225, 32.416443, 38.707619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505575, -0.211771, -0.836389,
		-0.856887, 0.236384, 0.458113,
		0.100694, 0.948301, -0.300974,
		35.252434, 32.700932, 38.617325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554401, 32.164177, 38.512283>,  <35.181946, 32.037121, 38.828007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554401, 32.164177, 38.512283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808090, 32.429607, 38.353573>,  <34.960304, 32.588867, 38.258347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808090, 32.429607, 38.353573>,  <34.554401, 32.164177, 38.512283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808090, 32.429607, 38.353573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395414, -0.162614, -0.903993,
		-0.664390, 0.730222, 0.159254,
		0.634219, 0.663576, -0.396780,
		34.998356, 32.628681, 38.234539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172493, 32.418957, 37.969028>,  <34.554401, 32.164177, 38.512283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172493, 32.418957, 37.969028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537315, 32.559731, 37.884842>,  <34.756207, 32.644196, 37.834328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537315, 32.559731, 37.884842>,  <34.172493, 32.418957, 37.969028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537315, 32.559731, 37.884842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171570, -0.138666, -0.975364,
		-0.372453, 0.925695, -0.066089,
		0.912054, 0.351939, -0.210468,
		34.810932, 32.665314, 37.821701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120178, 33.049652, 37.569847>,  <34.172493, 32.418957, 37.969028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120178, 33.049652, 37.569847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484150, 32.921219, 37.464825>,  <34.702534, 32.844158, 37.401810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484150, 32.921219, 37.464825>,  <34.120178, 33.049652, 37.569847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484150, 32.921219, 37.464825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264859, 0.037331, -0.963564,
		0.319189, 0.946314, -0.051074,
		0.909927, -0.321087, -0.262555,
		34.757130, 32.824894, 37.386059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332829, 33.508476, 37.061836>,  <34.120178, 33.049652, 37.569847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332829, 33.508476, 37.061836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559608, 33.181908, 37.017975>,  <34.695675, 32.985966, 36.991657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559608, 33.181908, 37.017975>,  <34.332829, 33.508476, 37.061836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559608, 33.181908, 37.017975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112506, 0.055129, -0.992120,
		0.816036, 0.574816, -0.060597,
		0.566946, -0.816424, -0.109657,
		34.729691, 32.936981, 36.985077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852047, 33.608677, 36.492378>,  <34.332829, 33.508476, 37.061836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852047, 33.608677, 36.492378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819859, 33.213123, 36.542389>,  <34.800545, 32.975792, 36.572395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819859, 33.213123, 36.542389>,  <34.852047, 33.608677, 36.492378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819859, 33.213123, 36.542389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096260, -0.117141, -0.988439,
		0.992098, -0.091577, -0.085763,
		-0.080472, -0.988884, 0.125030,
		34.795715, 32.916458, 36.579899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998039, 33.204674, 35.852070>,  <34.852047, 33.608677, 36.492378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998039, 33.204674, 35.852070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831017, 32.897697, 36.046669>,  <34.730804, 32.713512, 36.163429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831017, 32.897697, 36.046669>,  <34.998039, 33.204674, 35.852070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831017, 32.897697, 36.046669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251266, -0.417007, -0.873482,
		0.873220, -0.486966, -0.018710,
		-0.417554, -0.767443, 0.486497,
		34.705750, 32.667465, 36.192619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144218, 32.521229, 35.423058>,  <34.998039, 33.204674, 35.852070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144218, 32.521229, 35.423058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846527, 32.402504, 35.662399>,  <34.667912, 32.331268, 35.806004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846527, 32.402504, 35.662399>,  <35.144218, 32.521229, 35.423058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846527, 32.402504, 35.662399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370058, -0.562545, -0.739324,
		0.556039, -0.771652, 0.308825,
		-0.744229, -0.296810, 0.598353,
		34.623257, 32.313461, 35.841904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218830, 31.825172, 35.652344>,  <35.144218, 32.521229, 35.423058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218830, 31.825172, 35.652344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854271, 31.976332, 35.587173>,  <34.635536, 32.067028, 35.548069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854271, 31.976332, 35.587173>,  <35.218830, 31.825172, 35.652344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854271, 31.976332, 35.587173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076279, -0.544185, -0.835490,
		-0.404392, -0.749037, 0.524796,
		-0.911399, 0.377897, -0.162928,
		34.580853, 32.089703, 35.538296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.597225, 34.603222, 43.331139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.337063, 34.786713, 43.088966>,  <36.180965, 34.896805, 42.943665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.337063, 34.786713, 43.088966>,  <36.597225, 34.603222, 43.331139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337063, 34.786713, 43.088966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047179, -0.819908, -0.570549,
		-0.758119, -0.342525, 0.554916,
		-0.650407, 0.458724, -0.605428,
		36.141941, 34.924332, 42.907337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229610, 34.044258, 42.964081>,  <36.597225, 34.603222, 43.331139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229610, 34.044258, 42.964081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.099930, 34.359528, 42.754822>,  <36.022121, 34.548687, 42.629269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.099930, 34.359528, 42.754822>,  <36.229610, 34.044258, 42.964081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099930, 34.359528, 42.754822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207940, -0.598864, -0.773384,
		-0.922850, -0.141953, 0.358047,
		-0.324206, 0.788169, -0.523144,
		36.002666, 34.595978, 42.597878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532253, 33.929485, 42.708893>,  <36.229610, 34.044258, 42.964081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532253, 33.929485, 42.708893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.665279, 34.201946, 42.447994>,  <35.745094, 34.365421, 42.291454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.665279, 34.201946, 42.447994>,  <35.532253, 33.929485, 42.708893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665279, 34.201946, 42.447994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251912, -0.602325, -0.757460,
		-0.908812, 0.416215, -0.028723,
		0.332566, 0.681153, -0.652250,
		35.765049, 34.406292, 42.252319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016758, 34.047268, 42.251999>,  <35.532253, 33.929485, 42.708893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016758, 34.047268, 42.251999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.356903, 34.148991, 42.067734>,  <35.560989, 34.210026, 41.957176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.356903, 34.148991, 42.067734>,  <35.016758, 34.047268, 42.251999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356903, 34.148991, 42.067734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293451, -0.497483, -0.816332,
		-0.436775, 0.829359, -0.348413,
		0.850362, 0.254311, -0.460664,
		35.612011, 34.225285, 41.929535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741745, 34.157715, 41.609951>,  <35.016758, 34.047268, 42.251999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741745, 34.157715, 41.609951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135517, 34.125870, 41.547276>,  <35.371780, 34.106762, 41.509670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135517, 34.125870, 41.547276>,  <34.741745, 34.157715, 41.609951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135517, 34.125870, 41.547276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175393, -0.387954, -0.904837,
		0.011250, 0.918234, -0.395879,
		0.984434, -0.079614, -0.156687,
		35.430847, 34.101986, 41.500271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821770, 34.346016, 40.971458>,  <34.741745, 34.157715, 41.609951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821770, 34.346016, 40.971458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.178776, 34.174652, 41.027851>,  <35.392979, 34.071835, 41.061687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.178776, 34.174652, 41.027851>,  <34.821770, 34.346016, 40.971458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178776, 34.174652, 41.027851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054671, -0.207517, -0.976703,
		0.447685, 0.879433, -0.161791,
		0.892519, -0.428410, 0.140982,
		35.446533, 34.046127, 41.070145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388836, 34.622635, 40.452301>,  <34.821770, 34.346016, 40.971458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388836, 34.622635, 40.452301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.491795, 34.253883, 40.568150>,  <35.553570, 34.032631, 40.637657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.491795, 34.253883, 40.568150>,  <35.388836, 34.622635, 40.452301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491795, 34.253883, 40.568150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164256, -0.253613, -0.953258,
		0.952243, 0.292937, 0.086145,
		0.257397, -0.921883, 0.289618,
		35.569016, 33.977318, 40.655037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840240, 34.395653, 39.958538>,  <35.388836, 34.622635, 40.452301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840240, 34.395653, 39.958538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.775497, 34.043125, 40.136116>,  <35.736652, 33.831608, 40.242661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.775497, 34.043125, 40.136116>,  <35.840240, 34.395653, 39.958538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775497, 34.043125, 40.136116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143239, -0.466092, -0.873064,
		0.976363, -0.077722, 0.201679,
		-0.161857, -0.881316, 0.443942,
		35.726940, 33.778732, 40.269299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331436, 33.996960, 39.678097>,  <35.840240, 34.395653, 39.958538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331436, 33.996960, 39.678097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068775, 33.736877, 39.830959>,  <35.911179, 33.580830, 39.922676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.068775, 33.736877, 39.830959>,  <36.331436, 33.996960, 39.678097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068775, 33.736877, 39.830959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022318, -0.523237, -0.851895,
		0.753866, -0.550867, 0.358094,
		-0.656649, -0.650207, 0.382156,
		35.871780, 33.541817, 39.945606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993900, 34.213306, 39.355301>,  <36.331436, 33.996960, 39.678097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993900, 34.213306, 39.355301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.052238, 34.430870, 39.024750>,  <37.087242, 34.561409, 38.826420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.052238, 34.430870, 39.024750>,  <36.993900, 34.213306, 39.355301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052238, 34.430870, 39.024750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049750, 0.838280, 0.542965,
		0.988056, -0.038077, 0.149320,
		0.145846, 0.543908, -0.826373,
		37.095993, 34.594044, 38.776836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430580, 34.645119, 39.535759>,  <36.993900, 34.213306, 39.355301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430580, 34.645119, 39.535759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.273293, 34.833130, 39.219669>,  <37.178921, 34.945938, 39.030018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.273293, 34.833130, 39.219669>,  <37.430580, 34.645119, 39.535759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273293, 34.833130, 39.219669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138215, 0.879907, 0.454599,
		0.908997, 0.069537, -0.410962,
		-0.393220, 0.470030, -0.790221,
		37.155327, 34.974140, 38.982601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643772, 35.236732, 39.616516>,  <37.430580, 34.645119, 39.535759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643772, 35.236732, 39.616516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.396511, 35.347084, 39.322094>,  <37.248154, 35.413296, 39.145439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.396511, 35.347084, 39.322094>,  <37.643772, 35.236732, 39.616516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396511, 35.347084, 39.322094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013445, 0.932542, 0.360810,
		0.785940, 0.232933, -0.572748,
		-0.618156, 0.275875, -0.736054,
		37.211063, 35.429848, 39.101276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903732, 35.839821, 39.311455>,  <37.643772, 35.236732, 39.616516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903732, 35.839821, 39.311455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.514500, 35.837135, 39.219303>,  <37.280960, 35.835526, 39.164013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.514500, 35.837135, 39.219303>,  <37.903732, 35.839821, 39.311455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514500, 35.837135, 39.219303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112158, 0.887025, 0.447891,
		0.201346, 0.461672, -0.863898,
		-0.973078, -0.006712, -0.230379,
		37.222576, 35.835121, 39.150188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745487, 36.449162, 39.029766>,  <37.903732, 35.839821, 39.311455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745487, 36.449162, 39.029766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398602, 36.314472, 39.176491>,  <37.190468, 36.233658, 39.264526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.398602, 36.314472, 39.176491>,  <37.745487, 36.449162, 39.029766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398602, 36.314472, 39.176491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097582, 0.837316, 0.537940,
		-0.488277, 0.430716, -0.758993,
		-0.867216, -0.336727, 0.366812,
		37.138435, 36.213455, 39.286533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409607, 36.979607, 38.872936>,  <37.745487, 36.449162, 39.029766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409607, 36.979607, 38.872936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.225101, 36.772793, 39.161354>,  <37.114399, 36.648705, 39.334404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.225101, 36.772793, 39.161354>,  <37.409607, 36.979607, 38.872936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225101, 36.772793, 39.161354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005849, 0.814420, 0.580247,
		-0.887245, 0.263429, -0.378685,
		-0.461262, -0.517036, 0.721049,
		37.086723, 36.617683, 39.377670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943676, 37.532097, 39.214565>,  <37.409607, 36.979607, 38.872936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943676, 37.532097, 39.214565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.974945, 37.236168, 39.481865>,  <36.993706, 37.058613, 39.642246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.974945, 37.236168, 39.481865>,  <36.943676, 37.532097, 39.214565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974945, 37.236168, 39.481865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032026, 0.671819, 0.740023,
		-0.996426, -0.036444, 0.076208,
		0.078168, -0.739818, 0.668251,
		36.998394, 37.014221, 39.682339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373428, 37.593361, 39.721939>,  <36.943676, 37.532097, 39.214565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373428, 37.593361, 39.721939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.684772, 37.402142, 39.884724>,  <36.871582, 37.287411, 39.982395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.684772, 37.402142, 39.884724>,  <36.373428, 37.593361, 39.721939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684772, 37.402142, 39.884724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005022, 0.643463, 0.765461,
		-0.627792, -0.597852, 0.498448,
		0.778365, -0.478047, 0.406963,
		36.918282, 37.258728, 40.006813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235001, 37.552174, 40.483227>,  <36.373428, 37.593361, 39.721939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235001, 37.552174, 40.483227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626976, 37.479061, 40.451447>,  <36.862160, 37.435192, 40.432381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.626976, 37.479061, 40.451447>,  <36.235001, 37.552174, 40.483227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626976, 37.479061, 40.451447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184525, 0.681457, 0.708214,
		-0.075310, -0.708666, 0.701514,
		0.979938, -0.182783, -0.079446,
		36.920956, 37.424225, 40.427612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461716, 37.479603, 41.126671>,  <36.235001, 37.552174, 40.483227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461716, 37.479603, 41.126671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.810497, 37.530140, 40.937469>,  <37.019768, 37.560463, 40.823948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.810497, 37.530140, 40.937469>,  <36.461716, 37.479603, 41.126671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810497, 37.530140, 40.937469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305914, 0.613715, 0.727854,
		0.382245, -0.779354, 0.496483,
		0.871955, 0.126338, -0.473005,
		37.072083, 37.568043, 40.795567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086742, 37.440235, 41.636486>,  <36.461716, 37.479603, 41.126671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086742, 37.440235, 41.636486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.226006, 37.615341, 41.304909>,  <37.309563, 37.720406, 41.105961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.226006, 37.615341, 41.304909>,  <37.086742, 37.440235, 41.636486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226006, 37.615341, 41.304909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550285, 0.620447, 0.558777,
		0.758930, -0.650696, -0.024885,
		0.348154, 0.437767, -0.828944,
		37.330452, 37.746670, 41.056225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842812, 37.478359, 41.785370>,  <37.086742, 37.440235, 41.636486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842812, 37.478359, 41.785370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732967, 37.753014, 41.516113>,  <37.667061, 37.917805, 41.354561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732967, 37.753014, 41.516113>,  <37.842812, 37.478359, 41.785370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732967, 37.753014, 41.516113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579649, 0.676768, 0.453863,
		0.767200, -0.265551, -0.583856,
		-0.274611, 0.686635, -0.673143,
		37.650585, 37.959003, 41.314171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425419, 37.874924, 41.589451>,  <37.842812, 37.478359, 41.785370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425419, 37.874924, 41.589451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.116028, 38.111008, 41.497028>,  <37.930393, 38.252659, 41.441574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.116028, 38.111008, 41.497028>,  <38.425419, 37.874924, 41.589451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116028, 38.111008, 41.497028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477651, 0.782409, 0.399607,
		0.416635, 0.198720, -0.887088,
		-0.773476, 0.590209, -0.231061,
		37.883984, 38.288071, 41.427711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746708, 38.569172, 41.266602>,  <38.425419, 37.874924, 41.589451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746708, 38.569172, 41.266602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.373356, 38.646755, 41.387390>,  <38.149345, 38.693306, 41.459862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.373356, 38.646755, 41.387390>,  <38.746708, 38.569172, 41.266602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373356, 38.646755, 41.387390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325757, 0.810984, 0.485991,
		-0.150631, 0.551983, -0.820137,
		-0.933377, 0.193960, 0.301972,
		38.093342, 38.704945, 41.477982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.264853, 41.054104, 41.945446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.573227, 40.809586, 42.016968>,  <29.758251, 40.662872, 42.059879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.573227, 40.809586, 42.016968>,  <29.264853, 41.054104, 41.945446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573227, 40.809586, 42.016968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071042, -0.361514, -0.929656,
		0.632936, 0.704005, -0.322132,
		0.770938, -0.611297, 0.178801,
		29.804508, 40.626198, 42.070610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721680, 41.158810, 41.373070>,  <29.264853, 41.054104, 41.945446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721680, 41.158810, 41.373070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.823822, 40.799690, 41.516602>,  <29.885107, 40.584221, 41.602722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.823822, 40.799690, 41.516602>,  <29.721680, 41.158810, 41.373070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823822, 40.799690, 41.516602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016308, -0.375081, -0.926849,
		0.966710, 0.230823, -0.110420,
		0.255354, -0.897794, 0.358830,
		29.900429, 40.530354, 41.624252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374886, 40.960354, 41.030334>,  <29.721680, 41.158810, 41.373070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374886, 40.960354, 41.030334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.200806, 40.622871, 41.156044>,  <30.096357, 40.420383, 41.231468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.200806, 40.622871, 41.156044>,  <30.374886, 40.960354, 41.030334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200806, 40.622871, 41.156044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036386, -0.365256, -0.930196,
		0.899599, -0.393384, 0.189657,
		-0.435197, -0.843705, 0.314271,
		30.070246, 40.369759, 41.250324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674257, 40.472702, 40.615173>,  <30.374886, 40.960354, 41.030334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674257, 40.472702, 40.615173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.352922, 40.295273, 40.774113>,  <30.160122, 40.188816, 40.869476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.352922, 40.295273, 40.774113>,  <30.674257, 40.472702, 40.615173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352922, 40.295273, 40.774113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113061, -0.541496, -0.833066,
		0.584693, -0.714158, 0.384853,
		-0.803337, -0.443576, 0.397353,
		30.111921, 40.162201, 40.893318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826078, 39.694138, 40.587605>,  <30.674257, 40.472702, 40.615173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826078, 39.694138, 40.587605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.431875, 39.758217, 40.609921>,  <30.195354, 39.796665, 40.623310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.431875, 39.758217, 40.609921>,  <30.826078, 39.694138, 40.587605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431875, 39.758217, 40.609921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153612, -0.703200, -0.694199,
		-0.071977, -0.692708, 0.717617,
		-0.985506, 0.160201, 0.055794,
		30.136223, 39.806278, 40.626659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470943, 38.996845, 40.629570>,  <30.826078, 39.694138, 40.587605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470943, 38.996845, 40.629570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.178774, 39.244350, 40.513905>,  <30.003471, 39.392853, 40.444508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.178774, 39.244350, 40.513905>,  <30.470943, 38.996845, 40.629570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178774, 39.244350, 40.513905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333196, -0.692400, -0.639971,
		-0.596204, -0.371104, 0.711915,
		-0.730425, 0.618760, -0.289162,
		29.959646, 39.429977, 40.427155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034723, 38.578865, 40.382183>,  <30.470943, 38.996845, 40.629570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034723, 38.578865, 40.382183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.875021, 38.904907, 40.214283>,  <29.779200, 39.100533, 40.113544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.875021, 38.904907, 40.214283>,  <30.034723, 38.578865, 40.382183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875021, 38.904907, 40.214283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346397, -0.557999, -0.754087,
		-0.848884, -0.155674, 0.505136,
		-0.399257, 0.815109, -0.419751,
		29.755243, 39.149441, 40.088356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380035, 38.456295, 40.225449>,  <30.034723, 38.578865, 40.382183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380035, 38.456295, 40.225449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.478388, 38.744778, 39.966404>,  <29.537399, 38.917870, 39.810978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.478388, 38.744778, 39.966404>,  <29.380035, 38.456295, 40.225449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478388, 38.744778, 39.966404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191119, -0.618931, -0.761839,
		-0.950271, 0.311094, -0.014347,
		0.245884, 0.721211, -0.647608,
		29.552153, 38.961140, 39.772121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829899, 38.447361, 39.720951>,  <29.380035, 38.456295, 40.225449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829899, 38.447361, 39.720951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.143417, 38.630024, 39.552608>,  <29.331530, 38.739624, 39.451603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.143417, 38.630024, 39.552608>,  <28.829899, 38.447361, 39.720951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143417, 38.630024, 39.552608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112565, -0.561999, -0.819443,
		-0.610729, 0.689652, -0.389089,
		0.783798, 0.456660, -0.420860,
		29.378557, 38.767021, 39.426350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589624, 38.552986, 39.054359>,  <28.829899, 38.447361, 39.720951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589624, 38.552986, 39.054359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.982363, 38.621227, 39.021187>,  <29.218006, 38.662170, 39.001282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.982363, 38.621227, 39.021187>,  <28.589624, 38.552986, 39.054359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982363, 38.621227, 39.021187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027339, -0.559889, -0.828117,
		-0.187711, 0.810814, -0.554387,
		0.981844, 0.170603, -0.082930,
		29.276917, 38.672409, 38.996307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698475, 38.605209, 38.344482>,  <28.589624, 38.552986, 39.054359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698475, 38.605209, 38.344482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.073910, 38.532722, 38.461929>,  <29.299171, 38.489231, 38.532398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.073910, 38.532722, 38.461929>,  <28.698475, 38.605209, 38.344482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073910, 38.532722, 38.461929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143757, -0.568209, -0.810230,
		0.313662, 0.802682, -0.507264,
		0.938589, -0.181216, 0.293617,
		29.355486, 38.478359, 38.550014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093040, 38.721107, 37.773628>,  <28.698475, 38.605209, 38.344482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093040, 38.721107, 37.773628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.324484, 38.497604, 38.011284>,  <29.463350, 38.363503, 38.153877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.324484, 38.497604, 38.011284>,  <29.093040, 38.721107, 37.773628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324484, 38.497604, 38.011284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348886, -0.488889, -0.799541,
		0.737217, 0.669909, -0.087934,
		0.578610, -0.558756, 0.594140,
		29.498066, 38.329979, 38.189526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708757, 38.520596, 37.475056>,  <29.093040, 38.721107, 37.773628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708757, 38.520596, 37.475056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.696369, 38.235088, 37.754936>,  <29.688936, 38.063786, 37.922863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.696369, 38.235088, 37.754936>,  <29.708757, 38.520596, 37.475056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696369, 38.235088, 37.754936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497938, -0.618004, -0.608383,
		0.866660, 0.329565, 0.374550,
		-0.030972, -0.713764, 0.699702,
		29.687078, 38.020958, 37.964848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275362, 38.110920, 37.414703>,  <29.708757, 38.520596, 37.475056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275362, 38.110920, 37.414703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.004738, 37.871548, 37.586349>,  <29.842363, 37.727924, 37.689339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.004738, 37.871548, 37.586349>,  <30.275362, 38.110920, 37.414703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004738, 37.871548, 37.586349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408822, -0.789925, -0.457038,
		0.612478, -0.133781, 0.779085,
		-0.676562, -0.598432, 0.429119,
		29.801769, 37.692017, 37.715084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065140, 37.907066, 37.512691>,  <30.275362, 38.110920, 37.414703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065140, 37.907066, 37.512691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.377058, 38.014912, 37.286694>,  <31.564209, 38.079620, 37.151093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.377058, 38.014912, 37.286694>,  <31.065140, 37.907066, 37.512691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377058, 38.014912, 37.286694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412979, 0.456732, 0.787936,
		0.470495, -0.847763, 0.244812,
		0.779796, 0.269618, -0.564999,
		31.610998, 38.095795, 37.117195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685093, 37.627419, 37.794006>,  <31.065140, 37.907066, 37.512691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685093, 37.627419, 37.794006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.795822, 37.939678, 37.569878>,  <31.862259, 38.127033, 37.435402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.795822, 37.939678, 37.569878>,  <31.685093, 37.627419, 37.794006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795822, 37.939678, 37.569878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261935, 0.499726, 0.825629,
		0.924532, -0.375321, -0.066143,
		0.276822, 0.780646, -0.560323,
		31.878868, 38.173870, 37.401779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418262, 37.771679, 37.954052>,  <31.685093, 37.627419, 37.794006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418262, 37.771679, 37.954052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.250851, 38.113541, 37.831154>,  <32.150402, 38.318657, 37.757416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.250851, 38.113541, 37.831154>,  <32.418262, 37.771679, 37.954052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250851, 38.113541, 37.831154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394841, 0.475886, 0.785897,
		0.817882, 0.207610, -0.536626,
		-0.418532, 0.854652, -0.307246,
		32.125290, 38.369938, 37.738979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856838, 38.236118, 38.263184>,  <32.418262, 37.771679, 37.954052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856838, 38.236118, 38.263184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.554497, 38.451672, 38.114429>,  <32.373093, 38.581005, 38.025177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.554497, 38.451672, 38.114429>,  <32.856838, 38.236118, 38.263184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554497, 38.451672, 38.114429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176270, 0.714493, 0.677074,
		0.630572, 0.446214, -0.635037,
		-0.755849, 0.538882, -0.371885,
		32.327744, 38.613335, 38.002865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234020, 38.887089, 38.173336>,  <32.856838, 38.236118, 38.263184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234020, 38.887089, 38.173336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.841061, 38.950397, 38.213028>,  <32.605286, 38.988384, 38.236843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.841061, 38.950397, 38.213028>,  <33.234020, 38.887089, 38.173336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841061, 38.950397, 38.213028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170847, 0.546368, 0.819935,
		0.075558, 0.822454, -0.563790,
		-0.982396, 0.158275, 0.099232,
		32.546341, 38.997879, 38.242798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182266, 39.602982, 38.276768>,  <33.234020, 38.887089, 38.173336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182266, 39.602982, 38.276768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.838165, 39.451717, 38.413567>,  <32.631706, 39.360958, 38.495647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.838165, 39.451717, 38.413567>,  <33.182266, 39.602982, 38.276768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838165, 39.451717, 38.413567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141767, 0.466905, 0.872870,
		-0.489764, 0.799372, -0.348045,
		-0.860252, -0.378159, 0.341998,
		32.580090, 39.338268, 38.516167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684929, 40.207005, 38.235985>,  <33.182266, 39.602982, 38.276768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684929, 40.207005, 38.235985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.566891, 39.926556, 38.495628>,  <32.496067, 39.758286, 38.651413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.566891, 39.926556, 38.495628>,  <32.684929, 40.207005, 38.235985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566891, 39.926556, 38.495628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191786, 0.622068, 0.759111,
		-0.936022, 0.348500, -0.049104,
		-0.295096, -0.701127, 0.649107,
		32.478363, 39.716217, 38.690361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309017, 40.507153, 38.657848>,  <32.684929, 40.207005, 38.235985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309017, 40.507153, 38.657848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.373280, 40.181049, 38.880398>,  <32.411839, 39.985390, 39.013927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.373280, 40.181049, 38.880398>,  <32.309017, 40.507153, 38.657848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373280, 40.181049, 38.880398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182956, 0.578524, 0.794882,
		-0.969905, -0.025915, 0.242101,
		0.160661, -0.815253, 0.556372,
		32.421478, 39.936474, 39.047310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737307, 40.530815, 39.227112>,  <32.309017, 40.507153, 38.657848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737307, 40.530815, 39.227112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.998720, 40.269634, 39.380238>,  <32.155567, 40.112926, 39.472115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.998720, 40.269634, 39.380238>,  <31.737307, 40.530815, 39.227112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998720, 40.269634, 39.380238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017924, 0.518975, 0.854601,
		-0.756685, -0.551650, 0.350871,
		0.653534, -0.652953, 0.382813,
		32.194782, 40.073750, 39.495083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496351, 40.428040, 39.917980>,  <31.737307, 40.530815, 39.227112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496351, 40.428040, 39.917980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.883312, 40.326740, 39.917812>,  <32.115490, 40.265961, 39.917713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.883312, 40.326740, 39.917812>,  <31.496351, 40.428040, 39.917980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883312, 40.326740, 39.917812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143880, 0.548258, 0.823840,
		-0.208403, -0.797045, 0.566823,
		0.967402, -0.253245, -0.000420,
		32.173534, 40.250767, 39.917686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648121, 40.153286, 40.611019>,  <31.496351, 40.428040, 39.917980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648121, 40.153286, 40.611019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.986340, 40.297287, 40.453312>,  <32.189270, 40.383690, 40.358688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.986340, 40.297287, 40.453312>,  <31.648121, 40.153286, 40.611019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986340, 40.297287, 40.453312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254021, 0.378267, 0.890161,
		0.469604, -0.852824, 0.228392,
		0.845544, 0.360007, -0.394271,
		32.240002, 40.405289, 40.335030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138313, 39.999847, 41.140892>,  <31.648121, 40.153286, 40.611019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138313, 39.999847, 41.140892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.317261, 40.273689, 40.910698>,  <32.424629, 40.437996, 40.772583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.317261, 40.273689, 40.910698>,  <32.138313, 39.999847, 41.140892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317261, 40.273689, 40.910698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461591, 0.374394, 0.804216,
		0.766026, -0.625418, -0.148515,
		0.447368, 0.684603, -0.575483,
		32.451469, 40.479069, 40.738052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772430, 40.050030, 41.431671>,  <32.138313, 39.999847, 41.140892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772430, 40.050030, 41.431671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733490, 40.393188, 41.229866>,  <32.710125, 40.599083, 41.108784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.733490, 40.393188, 41.229866>,  <32.772430, 40.050030, 41.431671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733490, 40.393188, 41.229866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461535, 0.488030, 0.740819,
		0.881765, -0.160730, -0.443460,
		-0.097350, 0.857900, -0.504510,
		32.704285, 40.650558, 41.078514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418461, 40.439583, 41.516361>,  <32.772430, 40.050030, 41.431671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418461, 40.439583, 41.516361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.135147, 40.706383, 41.423885>,  <32.965160, 40.866463, 41.368401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.135147, 40.706383, 41.423885>,  <33.418461, 40.439583, 41.516361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135147, 40.706383, 41.423885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279723, 0.565867, 0.775596,
		0.648144, 0.484672, -0.587369,
		-0.708283, 0.666999, -0.231189,
		32.922661, 40.906483, 41.354530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994434, 40.570206, 41.125534>,  <33.418461, 40.439583, 41.516361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994434, 40.570206, 41.125534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.373260, 40.577950, 41.253716>,  <34.600555, 40.582596, 41.330624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.373260, 40.577950, 41.253716>,  <33.994434, 40.570206, 41.125534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373260, 40.577950, 41.253716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299813, -0.410263, -0.861276,
		0.114800, 0.911762, -0.394349,
		0.947066, 0.019356, 0.320456,
		34.657379, 40.583755, 41.349854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362274, 41.010086, 40.694447>,  <33.994434, 40.570206, 41.125534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362274, 41.010086, 40.694447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.618736, 40.748302, 40.854744>,  <34.772614, 40.591232, 40.950920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.618736, 40.748302, 40.854744>,  <34.362274, 41.010086, 40.694447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618736, 40.748302, 40.854744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270040, -0.296391, -0.916095,
		0.718327, 0.695579, -0.013302,
		0.641159, -0.654464, 0.400740,
		34.811085, 40.551964, 40.974964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928448, 40.980194, 40.286644>,  <34.362274, 41.010086, 40.694447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928448, 40.980194, 40.286644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.989944, 40.638378, 40.485085>,  <35.026844, 40.433289, 40.604149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.989944, 40.638378, 40.485085>,  <34.928448, 40.980194, 40.286644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989944, 40.638378, 40.485085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265962, -0.447758, -0.853684,
		0.951645, 0.263192, 0.158437,
		0.153742, -0.854542, 0.496105,
		35.036068, 40.382015, 40.633915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418236, 40.746925, 39.946705>,  <34.928448, 40.980194, 40.286644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418236, 40.746925, 39.946705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.287369, 40.413361, 40.124493>,  <35.208851, 40.213223, 40.231167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.287369, 40.413361, 40.124493>,  <35.418236, 40.746925, 39.946705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287369, 40.413361, 40.124493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299769, -0.537648, -0.788082,
		0.896160, -0.124593, 0.425880,
		-0.327163, -0.833913, 0.444470,
		35.189220, 40.163185, 40.257835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910538, 40.268841, 39.874493>,  <35.418236, 40.746925, 39.946705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910538, 40.268841, 39.874493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.598862, 40.035538, 39.966297>,  <35.411858, 39.895557, 40.021378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.598862, 40.035538, 39.966297>,  <35.910538, 40.268841, 39.874493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598862, 40.035538, 39.966297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213853, -0.591582, -0.777366,
		0.589179, -0.556633, 0.585686,
		-0.779189, -0.583258, 0.229510,
		35.365105, 39.860561, 40.035149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194515, 39.562862, 39.804634>,  <35.910538, 40.268841, 39.874493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194515, 39.562862, 39.804634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.796959, 39.540287, 39.766705>,  <35.558426, 39.526741, 39.743946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.796959, 39.540287, 39.766705>,  <36.194515, 39.562862, 39.804634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796959, 39.540287, 39.766705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109531, -0.608935, -0.785621,
		-0.013402, -0.791210, 0.611398,
		-0.993893, -0.056438, -0.094823,
		35.498791, 39.523357, 39.738258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034172, 38.865433, 39.741398>,  <36.194515, 39.562862, 39.804634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034172, 38.865433, 39.741398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.706409, 39.040417, 39.593239>,  <35.509750, 39.145405, 39.504341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.706409, 39.040417, 39.593239>,  <36.034172, 38.865433, 39.741398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706409, 39.040417, 39.593239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014600, -0.661911, -0.749440,
		-0.573018, -0.608693, 0.548765,
		-0.819413, 0.437455, -0.370401,
		35.460587, 39.171654, 39.482117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584770, 38.359562, 39.623856>,  <36.034172, 38.865433, 39.741398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584770, 38.359562, 39.623856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.462769, 38.648823, 39.375977>,  <35.389568, 38.822380, 39.227249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.462769, 38.648823, 39.375977>,  <35.584770, 38.359562, 39.623856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462769, 38.648823, 39.375977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183882, -0.683177, -0.706722,
		-0.934430, -0.101602, 0.341346,
		-0.305004, 0.723150, -0.619699,
		35.371265, 38.865768, 39.190067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037796, 38.066513, 39.380993>,  <35.584770, 38.359562, 39.623856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037796, 38.066513, 39.380993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.121857, 38.374607, 39.140133>,  <35.172295, 38.559464, 38.995617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.121857, 38.374607, 39.140133>,  <35.037796, 38.066513, 39.380993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121857, 38.374607, 39.140133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208690, -0.566366, -0.797294,
		-0.955136, 0.293214, 0.041717,
		0.210151, 0.770231, -0.602147,
		35.184902, 38.605675, 38.959488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461384, 38.107887, 38.926735>,  <35.037796, 38.066513, 39.380993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461384, 38.107887, 38.926735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.786621, 38.267887, 38.757561>,  <34.981766, 38.363888, 38.656055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.786621, 38.267887, 38.757561>,  <34.461384, 38.107887, 38.926735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786621, 38.267887, 38.757561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172536, -0.528300, -0.831342,
		-0.555973, 0.748933, -0.360545,
		0.813096, 0.399997, -0.422938,
		35.030548, 38.387886, 38.630680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259758, 38.169720, 38.257236>,  <34.461384, 38.107887, 38.926735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259758, 38.169720, 38.257236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656979, 38.201244, 38.222263>,  <34.895309, 38.220158, 38.201279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656979, 38.201244, 38.222263>,  <34.259758, 38.169720, 38.257236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656979, 38.201244, 38.222263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001218, -0.749612, -0.661876,
		-0.117702, 0.657168, -0.744497,
		0.993048, 0.078811, -0.087430,
		34.954891, 38.224888, 38.196033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401810, 38.063564, 37.485943>,  <34.259758, 38.169720, 38.257236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401810, 38.063564, 37.485943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.758266, 37.994049, 37.653595>,  <34.972141, 37.952339, 37.754185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.758266, 37.994049, 37.653595>,  <34.401810, 38.063564, 37.485943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758266, 37.994049, 37.653595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166317, -0.734329, -0.658103,
		0.422150, 0.656169, -0.625485,
		0.891139, -0.173789, 0.419129,
		35.025608, 37.941914, 37.779335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026577, 38.182529, 37.012074>,  <34.401810, 38.063564, 37.485943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026577, 38.182529, 37.012074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.172081, 37.924995, 37.281342>,  <35.259384, 37.770473, 37.442902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.172081, 37.924995, 37.281342>,  <35.026577, 38.182529, 37.012074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172081, 37.924995, 37.281342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190927, -0.655797, -0.730396,
		0.911714, 0.394217, -0.115630,
		0.363764, -0.643835, 0.673166,
		35.281212, 37.731846, 37.483292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649075, 37.993172, 36.768898>,  <35.026577, 38.182529, 37.012074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649075, 37.993172, 36.768898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.514721, 37.700752, 37.006466>,  <35.434109, 37.525299, 37.149006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.514721, 37.700752, 37.006466>,  <35.649075, 37.993172, 36.768898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514721, 37.700752, 37.006466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240196, -0.676189, -0.696473,
		0.910763, -0.091274, 0.402716,
		-0.335882, -0.731053, 0.593924,
		35.413956, 37.481438, 37.184643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.351183, 37.352371, 27.554268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.983961, 37.303036, 27.403555>,  <29.763628, 37.273434, 27.313128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.983961, 37.303036, 27.403555>,  <30.351183, 37.352371, 27.554268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983961, 37.303036, 27.403555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367057, -0.094732, 0.925362,
		-0.149824, 0.987833, 0.041698,
		-0.918053, -0.123336, -0.376784,
		29.708546, 37.266033, 27.290520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856859, 37.793896, 27.976990>,  <30.351183, 37.352371, 27.554268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856859, 37.793896, 27.976990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.620955, 37.512791, 27.817839>,  <29.479412, 37.344128, 27.722347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.620955, 37.512791, 27.817839>,  <29.856859, 37.793896, 27.976990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620955, 37.512791, 27.817839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381961, -0.191355, 0.904151,
		-0.711539, 0.685207, -0.155574,
		-0.589761, -0.702762, -0.397879,
		29.444027, 37.301964, 27.698475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200001, 37.968113, 28.221527>,  <29.856859, 37.793896, 27.976990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200001, 37.968113, 28.221527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.157307, 37.589527, 28.099669>,  <29.131691, 37.362373, 28.026554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.157307, 37.589527, 28.099669>,  <29.200001, 37.968113, 28.221527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157307, 37.589527, 28.099669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550264, -0.198968, 0.810939,
		-0.828141, 0.254189, -0.499570,
		-0.106733, -0.946467, -0.304645,
		29.125286, 37.305588, 28.008276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758909, 37.783890, 28.596920>,  <29.200001, 37.968113, 28.221527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758909, 37.783890, 28.596920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.813240, 37.417519, 28.445856>,  <28.845839, 37.197697, 28.355217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.813240, 37.417519, 28.445856>,  <28.758909, 37.783890, 28.596920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813240, 37.417519, 28.445856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539550, -0.388091, 0.747175,
		-0.830925, 0.102280, -0.546903,
		0.135827, -0.915928, -0.377660,
		28.853989, 37.142738, 28.332558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115915, 37.434090, 28.523657>,  <28.758909, 37.783890, 28.596920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115915, 37.434090, 28.523657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.407043, 37.167645, 28.588871>,  <28.581720, 37.007778, 28.627998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.407043, 37.167645, 28.588871>,  <28.115915, 37.434090, 28.523657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407043, 37.167645, 28.588871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566932, -0.450685, 0.689544,
		-0.385833, -0.594293, -0.705655,
		0.727819, -0.666108, 0.163035,
		28.625389, 36.967812, 28.637781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.706915, 36.854500, 28.654482>,  <28.115915, 37.434090, 28.523657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.706915, 36.854500, 28.654482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.070059, 36.790169, 28.809364>,  <28.287945, 36.751572, 28.902294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.070059, 36.790169, 28.809364>,  <27.706915, 36.854500, 28.654482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070059, 36.790169, 28.809364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418540, -0.402425, 0.814174,
		0.024880, -0.901215, -0.432657,
		0.907858, -0.160828, 0.387207,
		28.342417, 36.741920, 28.925526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660318, 36.102024, 28.978167>,  <27.706915, 36.854500, 28.654482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660318, 36.102024, 28.978167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.968643, 36.286274, 29.154202>,  <28.153639, 36.396824, 29.259823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.968643, 36.286274, 29.154202>,  <27.660318, 36.102024, 28.978167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968643, 36.286274, 29.154202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117629, -0.576025, 0.808924,
		0.626110, -0.675295, -0.389824,
		0.770811, 0.460620, 0.440090,
		28.199886, 36.424461, 29.286228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999666, 35.548088, 29.287889>,  <27.660318, 36.102024, 28.978167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999666, 35.548088, 29.287889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.135309, 35.874870, 29.474474>,  <28.216696, 36.070938, 29.586426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.135309, 35.874870, 29.474474>,  <27.999666, 35.548088, 29.287889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135309, 35.874870, 29.474474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185989, -0.427835, 0.884514,
		0.922179, -0.386703, 0.006862,
		0.339108, 0.816957, 0.466463,
		28.237041, 36.119957, 29.614412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455853, 35.322258, 29.805307>,  <27.999666, 35.548088, 29.287889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455853, 35.322258, 29.805307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.340803, 35.688469, 29.917799>,  <28.271774, 35.908195, 29.985294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.340803, 35.688469, 29.917799>,  <28.455853, 35.322258, 29.805307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340803, 35.688469, 29.917799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294896, -0.364029, 0.883470,
		0.911213, 0.171172, 0.374687,
		-0.287622, 0.915523, 0.281230,
		28.254517, 35.963127, 30.002169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813644, 35.527493, 30.449745>,  <28.455853, 35.322258, 29.805307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813644, 35.527493, 30.449745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.509439, 35.786976, 30.461096>,  <28.326918, 35.942665, 30.467907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.509439, 35.786976, 30.461096>,  <28.813644, 35.527493, 30.449745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509439, 35.786976, 30.461096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104642, -0.165577, 0.980630,
		0.640838, 0.742810, 0.193804,
		-0.760511, 0.648704, 0.028379,
		28.281286, 35.981586, 30.469610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877594, 35.961735, 31.030441>,  <28.813644, 35.527493, 30.449745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877594, 35.961735, 31.030441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.488974, 35.979847, 30.937454>,  <28.255802, 35.990715, 30.881662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.488974, 35.979847, 30.937454>,  <28.877594, 35.961735, 31.030441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488974, 35.979847, 30.937454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236524, -0.235727, 0.942597,
		-0.012119, 0.970764, 0.239730,
		-0.971550, 0.045279, -0.232465,
		28.197508, 35.993431, 30.867714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567684, 36.366245, 31.512047>,  <28.877594, 35.961735, 31.030441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567684, 36.366245, 31.512047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.247555, 36.172295, 31.370983>,  <28.055477, 36.055923, 31.286345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.247555, 36.172295, 31.370983>,  <28.567684, 36.366245, 31.512047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247555, 36.172295, 31.370983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343504, -0.111272, 0.932536,
		-0.491410, 0.867473, -0.077505,
		-0.800326, -0.484881, -0.352661,
		28.007458, 36.026829, 31.265184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.077868, 36.593987, 31.889820>,  <28.567684, 36.366245, 31.512047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.077868, 36.593987, 31.889820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917559, 36.263275, 31.731928>,  <27.821373, 36.064846, 31.637192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.917559, 36.263275, 31.731928>,  <28.077868, 36.593987, 31.889820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917559, 36.263275, 31.731928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506100, -0.159357, 0.847625,
		-0.763704, 0.539479, -0.354568,
		-0.400774, -0.826781, -0.394732,
		27.797327, 36.015240, 31.613508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374508, 36.640015, 32.116436>,  <28.077868, 36.593987, 31.889820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374508, 36.640015, 32.116436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.431227, 36.255302, 32.022736>,  <27.465258, 36.024475, 31.966516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.431227, 36.255302, 32.022736>,  <27.374508, 36.640015, 32.116436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431227, 36.255302, 32.022736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457367, -0.273520, 0.846169,
		-0.877900, -0.012846, -0.478671,
		0.141795, -0.961781, -0.234248,
		27.473766, 35.966766, 31.952461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725334, 36.295036, 32.172436>,  <27.374508, 36.640015, 32.116436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725334, 36.295036, 32.172436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.981138, 35.989117, 32.203697>,  <27.134621, 35.805565, 32.222454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.981138, 35.989117, 32.203697>,  <26.725334, 36.295036, 32.172436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981138, 35.989117, 32.203697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566179, -0.399760, 0.720855,
		-0.520066, -0.505245, -0.688664,
		0.639509, -0.764800, 0.078157,
		27.172991, 35.759678, 32.227146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.290617, 35.668003, 32.215664>,  <26.725334, 36.295036, 32.172436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.290617, 35.668003, 32.215664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.641266, 35.547295, 32.365582>,  <26.851654, 35.474869, 32.455532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.641266, 35.547295, 32.365582>,  <26.290617, 35.668003, 32.215664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641266, 35.547295, 32.365582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478186, -0.633135, 0.608670,
		0.053616, -0.712793, -0.699322,
		0.876620, -0.301772, 0.374794,
		26.904251, 35.456764, 32.478020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362015, 34.947102, 32.131817>,  <26.290617, 35.668003, 32.215664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362015, 34.947102, 32.131817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.593903, 35.056396, 32.438873>,  <26.733034, 35.121971, 32.623108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.593903, 35.056396, 32.438873>,  <26.362015, 34.947102, 32.131817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593903, 35.056396, 32.438873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467983, -0.659567, 0.588186,
		0.667023, -0.700224, -0.254493,
		0.579717, 0.273235, 0.767640,
		26.767818, 35.138367, 32.669167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442163, 34.284565, 32.455605>,  <26.362015, 34.947102, 32.131817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442163, 34.284565, 32.455605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.603483, 34.528416, 32.728577>,  <26.700275, 34.674725, 32.892361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.603483, 34.528416, 32.728577>,  <26.442163, 34.284565, 32.455605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603483, 34.528416, 32.728577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147468, -0.692719, 0.705970,
		0.903108, -0.385352, -0.189471,
		0.403297, 0.609627, 0.682427,
		26.724472, 34.711304, 32.933304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072056, 34.076023, 32.697502>,  <26.442163, 34.284565, 32.455605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072056, 34.076023, 32.697502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.900869, 34.295738, 32.984592>,  <26.798159, 34.427567, 33.156845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.900869, 34.295738, 32.984592>,  <27.072056, 34.076023, 32.697502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900869, 34.295738, 32.984592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079429, -0.768190, 0.635276,
		0.900298, 0.328884, 0.285129,
		-0.427965, 0.549290, 0.717723,
		26.772480, 34.460526, 33.199909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377460, 33.232132, 32.736439>,  <27.072056, 34.076023, 32.697502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377460, 33.232132, 32.736439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.981947, 33.188431, 32.777180>,  <26.744638, 33.162212, 32.801624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.981947, 33.188431, 32.777180>,  <27.377460, 33.232132, 32.736439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981947, 33.188431, 32.777180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074059, -0.233560, -0.969518,
		0.129708, -0.966185, 0.222849,
		-0.988783, -0.109250, 0.101849,
		26.685312, 33.155655, 32.807735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224897, 32.600685, 32.360443>,  <27.377460, 33.232132, 32.736439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224897, 32.600685, 32.360443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.869957, 32.783722, 32.383118>,  <26.656992, 32.893543, 32.396725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.869957, 32.783722, 32.383118>,  <27.224897, 32.600685, 32.360443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.869957, 32.783722, 32.383118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143123, -0.156469, -0.977258,
		-0.438318, -0.875285, 0.204335,
		-0.887352, 0.457595, 0.056690,
		26.603752, 32.921001, 32.400124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841021, 32.183434, 31.951838>,  <27.224897, 32.600685, 32.360443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841021, 32.183434, 31.951838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.634527, 32.520836, 32.011181>,  <26.510632, 32.723278, 32.046787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.634527, 32.520836, 32.011181>,  <26.841021, 32.183434, 31.951838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634527, 32.520836, 32.011181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288243, -0.007997, -0.957524,
		-0.806487, -0.537066, 0.247262,
		-0.516231, 0.843502, 0.148356,
		26.479658, 32.773888, 32.055687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184322, 31.921923, 31.871302>,  <26.841021, 32.183434, 31.951838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184322, 31.921923, 31.871302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.217478, 32.314140, 31.800125>,  <26.237371, 32.549473, 31.757420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.217478, 32.314140, 31.800125>,  <26.184322, 31.921923, 31.871302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217478, 32.314140, 31.800125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202231, -0.158290, -0.966461,
		-0.975824, 0.116093, 0.185176,
		0.082888, 0.980544, -0.177940,
		26.242344, 32.608303, 31.746742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579636, 32.063366, 31.445810>,  <26.184322, 31.921923, 31.871302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579636, 32.063366, 31.445810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.824585, 32.376213, 31.399706>,  <25.971556, 32.563923, 31.372044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.824585, 32.376213, 31.399706>,  <25.579636, 32.063366, 31.445810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.824585, 32.376213, 31.399706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089378, -0.076370, -0.993066,
		-0.785499, 0.618431, 0.023137,
		0.612375, 0.782119, -0.115263,
		26.008297, 32.610847, 31.365128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330063, 32.469055, 30.819960>,  <25.579636, 32.063366, 31.445810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330063, 32.469055, 30.819960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.708061, 32.584175, 30.882120>,  <25.934860, 32.653248, 30.919416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.708061, 32.584175, 30.882120>,  <25.330063, 32.469055, 30.819960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708061, 32.584175, 30.882120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157682, 0.015388, -0.987370,
		-0.286560, 0.957566, -0.030840,
		0.944997, 0.287803, 0.155401,
		25.991560, 32.670517, 30.928740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.443722, 33.069271, 30.447351>,  <25.330063, 32.469055, 30.819960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.443722, 33.069271, 30.447351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.808695, 32.908905, 30.480158>,  <26.027679, 32.812683, 30.499842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.808695, 32.908905, 30.480158>,  <25.443722, 33.069271, 30.447351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808695, 32.908905, 30.480158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156349, 0.156319, -0.975253,
		0.378176, 0.902679, 0.205314,
		0.912435, -0.400919, 0.082017,
		26.082426, 32.788628, 30.504763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.855759, 33.523827, 30.063080>,  <25.443722, 33.069271, 30.447351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.855759, 33.523827, 30.063080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.101900, 33.209297, 30.085114>,  <26.249586, 33.020580, 30.098333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.101900, 33.209297, 30.085114>,  <25.855759, 33.523827, 30.063080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101900, 33.209297, 30.085114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211219, 0.097162, -0.972598,
		0.759424, 0.610127, 0.225876,
		0.615355, -0.786323, 0.055083,
		26.286507, 32.973400, 30.101639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460032, 33.770054, 29.760269>,  <25.855759, 33.523827, 30.063080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460032, 33.770054, 29.760269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.491199, 33.371578, 29.744545>,  <26.509899, 33.132492, 29.735111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.491199, 33.371578, 29.744545>,  <26.460032, 33.770054, 29.760269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491199, 33.371578, 29.744545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353893, 0.064499, -0.933059,
		0.932034, 0.058792, 0.357569,
		0.077919, -0.996184, -0.039309,
		26.514576, 33.072723, 29.732752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102665, 33.718086, 29.561249>,  <26.460032, 33.770054, 29.760269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102665, 33.718086, 29.561249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.916752, 33.381790, 29.450161>,  <26.805204, 33.180012, 29.383509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.916752, 33.381790, 29.450161>,  <27.102665, 33.718086, 29.561249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916752, 33.381790, 29.450161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380745, 0.093399, -0.919951,
		0.799380, -0.533319, 0.276699,
		-0.464784, -0.840742, -0.277720,
		26.777317, 33.129566, 29.366844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583961, 33.339069, 29.104162>,  <27.102665, 33.718086, 29.561249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583961, 33.339069, 29.104162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.215672, 33.208111, 29.019243>,  <26.994698, 33.129536, 28.968292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.215672, 33.208111, 29.019243>,  <27.583961, 33.339069, 29.104162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215672, 33.208111, 29.019243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234546, -0.029540, -0.971656,
		0.311850, -0.944424, 0.103989,
		-0.920727, -0.327401, -0.212299,
		26.939453, 33.109890, 28.955553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690641, 32.861198, 28.595043>,  <27.583961, 33.339069, 29.104162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690641, 32.861198, 28.595043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.296288, 32.927338, 28.584501>,  <27.059675, 32.967022, 28.578176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.296288, 32.927338, 28.584501>,  <27.690641, 32.861198, 28.595043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296288, 32.927338, 28.584501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079619, 0.324483, -0.942535,
		-0.147294, -0.931328, -0.333067,
		-0.985883, 0.165348, -0.026357,
		27.000523, 32.976940, 28.576593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423334, 32.504765, 28.037054>,  <27.690641, 32.861198, 28.595043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423334, 32.504765, 28.037054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.143808, 32.786877, 28.084778>,  <26.976093, 32.956146, 28.113413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.143808, 32.786877, 28.084778>,  <27.423334, 32.504765, 28.037054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143808, 32.786877, 28.084778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282308, 0.425193, -0.859949,
		-0.657237, -0.567263, -0.496238,
		-0.698814, 0.705283, 0.119310,
		26.934164, 32.998463, 28.120571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242798, 32.698730, 27.412344>,  <27.423334, 32.504765, 28.037054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.242798, 32.698730, 27.412344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.079254, 33.004829, 27.611235>,  <26.981129, 33.188488, 27.730570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.079254, 33.004829, 27.611235>,  <27.242798, 32.698730, 27.412344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079254, 33.004829, 27.611235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191950, 0.604770, -0.772922,
		-0.892183, -0.220572, -0.394154,
		-0.408857, 0.765246, 0.497227,
		26.956596, 33.234402, 27.760403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637688, 32.957344, 27.093517>,  <27.242798, 32.698730, 27.412344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637688, 32.957344, 27.093517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.797579, 33.257313, 27.304358>,  <26.893515, 33.437294, 27.430861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.797579, 33.257313, 27.304358>,  <26.637688, 32.957344, 27.093517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797579, 33.257313, 27.304358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145879, 0.515664, -0.844281,
		-0.904951, 0.414376, 0.096727,
		0.399729, 0.749922, 0.527099,
		26.917498, 33.482288, 27.462488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480515, 33.657631, 26.697170>,  <26.637688, 32.957344, 27.093517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480515, 33.657631, 26.697170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.747715, 33.770905, 26.972439>,  <26.908035, 33.838867, 27.137600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.747715, 33.770905, 26.972439>,  <26.480515, 33.657631, 26.697170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747715, 33.770905, 26.972439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380205, 0.665078, -0.642741,
		-0.639700, 0.690999, 0.336607,
		0.668003, 0.283181, 0.688172,
		26.948116, 33.855858, 27.178890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351072, 34.352783, 26.819944>,  <26.480515, 33.657631, 26.697170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351072, 34.352783, 26.819944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.737473, 34.282238, 26.895565>,  <26.969313, 34.239910, 26.940937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.737473, 34.282238, 26.895565>,  <26.351072, 34.352783, 26.819944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.737473, 34.282238, 26.895565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258543, 0.660232, -0.705159,
		-0.000454, 0.730061, 0.683382,
		0.966000, -0.176363, 0.189052,
		27.027273, 34.229328, 26.952280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650948, 35.033234, 26.791485>,  <26.351072, 34.352783, 26.819944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650948, 35.033234, 26.791485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.960871, 34.782093, 26.761871>,  <27.146824, 34.631409, 26.744102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.960871, 34.782093, 26.761871>,  <26.650948, 35.033234, 26.791485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960871, 34.782093, 26.761871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371713, 0.547155, -0.749967,
		0.511372, 0.553561, 0.657320,
		0.774808, -0.627847, -0.074034,
		27.193314, 34.593739, 26.739660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.165211, 35.414513, 26.831251>,  <26.650948, 35.033234, 26.791485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.165211, 35.414513, 26.831251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.315039, 35.086952, 26.657307>,  <27.404936, 34.890415, 26.552940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.315039, 35.086952, 26.657307>,  <27.165211, 35.414513, 26.831251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315039, 35.086952, 26.657307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608698, 0.570967, -0.550894,
		0.699417, -0.058352, 0.712327,
		0.374570, -0.818897, -0.434863,
		27.427410, 34.841282, 26.526848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813326, 35.628056, 26.819576>,  <27.165211, 35.414513, 26.831251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813326, 35.628056, 26.819576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.805351, 35.305782, 26.582771>,  <27.800568, 35.112419, 26.440687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.805351, 35.305782, 26.582771>,  <27.813326, 35.628056, 26.819576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805351, 35.305782, 26.582771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641828, 0.443700, -0.625450,
		0.766590, -0.392438, 0.508264,
		-0.019934, -0.805682, -0.592013,
		27.799372, 35.064079, 26.405167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440424, 35.481640, 26.556349>,  <27.813326, 35.628056, 26.819576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440424, 35.481640, 26.556349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.234612, 35.283989, 26.276035>,  <28.111124, 35.165398, 26.107847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.234612, 35.283989, 26.276035>,  <28.440424, 35.481640, 26.556349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234612, 35.283989, 26.276035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517140, 0.473087, -0.713271,
		0.683978, -0.729402, 0.012116,
		-0.514529, -0.494127, -0.700784,
		28.080252, 35.135750, 26.065800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947243, 35.273148, 26.148907>,  <28.440424, 35.481640, 26.556349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947243, 35.273148, 26.148907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.595657, 35.284840, 25.958509>,  <28.384706, 35.291855, 25.844271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.595657, 35.284840, 25.958509>,  <28.947243, 35.273148, 26.148907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595657, 35.284840, 25.958509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404046, 0.575842, -0.710741,
		0.253322, -0.817038, -0.517955,
		-0.878962, 0.029231, -0.475995,
		28.331968, 35.293610, 25.815712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014118, 34.955257, 25.423399>,  <28.947243, 35.273148, 26.148907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014118, 34.955257, 25.423399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.713758, 35.219364, 25.429045>,  <28.533543, 35.377827, 25.432432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.713758, 35.219364, 25.429045>,  <29.014118, 34.955257, 25.423399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713758, 35.219364, 25.429045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346207, 0.411752, -0.842971,
		-0.562396, -0.628101, -0.537773,
		-0.750900, 0.660265, 0.014115,
		28.488489, 35.417442, 25.433279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.585316, 39.537048, 41.227768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.320831, 39.344570, 41.457985>,  <38.162140, 39.229084, 41.596115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.320831, 39.344570, 41.457985>,  <38.585316, 39.537048, 41.227768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320831, 39.344570, 41.457985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263007, 0.569807, 0.778555,
		-0.702588, 0.666160, -0.250203,
		-0.661209, -0.481198, 0.575544,
		38.122467, 39.200211, 41.630650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054722, 39.935558, 41.477356>,  <38.585316, 39.537048, 41.227768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054722, 39.935558, 41.477356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.064243, 39.643833, 41.750862>,  <38.069958, 39.468796, 41.914967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.064243, 39.643833, 41.750862>,  <38.054722, 39.935558, 41.477356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064243, 39.643833, 41.750862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005390, 0.683854, 0.729599,
		-0.999702, -0.021056, 0.012350,
		0.023808, -0.729315, 0.683763,
		38.071384, 39.425037, 41.955990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630951, 40.120258, 42.032597>,  <38.054722, 39.935558, 41.477356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630951, 40.120258, 42.032597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.831326, 39.824230, 42.212086>,  <37.951553, 39.646614, 42.319778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.831326, 39.824230, 42.212086>,  <37.630951, 40.120258, 42.032597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831326, 39.824230, 42.212086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062618, 0.486120, 0.871646,
		-0.863213, -0.464742, 0.197176,
		0.500941, -0.740069, 0.448726,
		37.981609, 39.602211, 42.346703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161381, 39.871517, 42.567402>,  <37.630951, 40.120258, 42.032597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161381, 39.871517, 42.567402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.544788, 39.786266, 42.643097>,  <37.774834, 39.735115, 42.688515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.544788, 39.786266, 42.643097>,  <37.161381, 39.871517, 42.567402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544788, 39.786266, 42.643097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088224, 0.409478, 0.908044,
		-0.271020, -0.887076, 0.373691,
		0.958522, -0.213130, 0.189238,
		37.832344, 39.722328, 42.699867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055088, 39.649181, 43.144234>,  <37.161381, 39.871517, 42.567402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055088, 39.649181, 43.144234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451118, 39.701752, 43.124302>,  <37.688736, 39.733295, 43.112343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451118, 39.701752, 43.124302>,  <37.055088, 39.649181, 43.144234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451118, 39.701752, 43.124302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000983, 0.348057, 0.937473,
		0.140552, -0.928215, 0.344473,
		0.990072, 0.131425, -0.049832,
		37.748138, 39.741180, 43.109352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241688, 39.532124, 43.806770>,  <37.055088, 39.649181, 43.144234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241688, 39.532124, 43.806770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.550377, 39.729721, 43.646564>,  <37.735592, 39.848278, 43.550442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.550377, 39.729721, 43.646564>,  <37.241688, 39.532124, 43.806770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550377, 39.729721, 43.646564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147367, 0.473725, 0.868255,
		0.618647, -0.729076, 0.292787,
		0.771725, 0.493996, -0.400510,
		37.781895, 39.877918, 43.526413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873646, 39.422447, 44.250965>,  <37.241688, 39.532124, 43.806770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873646, 39.422447, 44.250965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.887665, 39.770630, 44.054569>,  <37.896076, 39.979538, 43.936729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.887665, 39.770630, 44.054569>,  <37.873646, 39.422447, 44.250965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887665, 39.770630, 44.054569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151291, 0.481011, 0.863562,
		0.987868, -0.104552, -0.114832,
		0.035052, 0.870458, -0.490993,
		37.898182, 40.031769, 43.907272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370174, 39.841679, 44.688759>,  <37.873646, 39.422447, 44.250965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370174, 39.841679, 44.688759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.189915, 40.100487, 44.442741>,  <38.081760, 40.255772, 44.295132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.189915, 40.100487, 44.442741>,  <38.370174, 39.841679, 44.688759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189915, 40.100487, 44.442741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072502, 0.713221, 0.697179,
		0.889752, 0.269592, -0.368324,
		-0.450650, 0.647021, -0.615044,
		38.054718, 40.294594, 44.258228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878067, 40.431690, 44.608845>,  <38.370174, 39.841679, 44.688759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878067, 40.431690, 44.608845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.503307, 40.549068, 44.532833>,  <38.278454, 40.619495, 44.487225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.503307, 40.549068, 44.532833>,  <38.878067, 40.431690, 44.608845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503307, 40.549068, 44.532833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060223, 0.670901, 0.739097,
		0.344378, 0.681014, -0.646238,
		-0.936898, 0.293447, -0.190031,
		38.222237, 40.637104, 44.475822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851601, 41.119431, 44.894588>,  <38.878067, 40.431690, 44.608845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851601, 41.119431, 44.894588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.461571, 41.039967, 44.855072>,  <38.227554, 40.992287, 44.831364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.461571, 41.039967, 44.855072>,  <38.851601, 41.119431, 44.894588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461571, 41.039967, 44.855072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199563, 0.590714, 0.781813,
		-0.096960, 0.782042, -0.615637,
		-0.975076, -0.198663, -0.098790,
		38.169048, 40.980370, 44.825436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562576, 41.797894, 44.973831>,  <38.851601, 41.119431, 44.894588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562576, 41.797894, 44.973831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.292023, 41.516518, 45.061172>,  <38.129688, 41.347694, 45.113579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.292023, 41.516518, 45.061172>,  <38.562576, 41.797894, 44.973831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292023, 41.516518, 45.061172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387244, 0.591805, 0.706971,
		-0.626531, 0.393632, -0.672691,
		-0.676389, -0.703435, 0.218353,
		38.089108, 41.305489, 45.126678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990654, 42.119030, 45.183655>,  <38.562576, 41.797894, 44.973831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990654, 42.119030, 45.183655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.927547, 41.762604, 45.353882>,  <37.889683, 41.548748, 45.456017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.927547, 41.762604, 45.353882>,  <37.990654, 42.119030, 45.183655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927547, 41.762604, 45.353882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435407, 0.449579, 0.779935,
		-0.886301, -0.062243, -0.458908,
		-0.157770, -0.891069, 0.425564,
		37.880215, 41.495281, 45.481552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307903, 42.060841, 45.428837>,  <37.990654, 42.119030, 45.183655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307903, 42.060841, 45.428837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.546364, 41.825798, 45.647678>,  <37.689442, 41.684772, 45.778984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.546364, 41.825798, 45.647678>,  <37.307903, 42.060841, 45.428837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546364, 41.825798, 45.647678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325371, 0.446151, 0.833716,
		-0.733987, -0.675034, 0.074785,
		0.596152, -0.587604, 0.547105,
		37.725208, 41.649517, 45.811810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959629, 41.685799, 45.900612>,  <37.307903, 42.060841, 45.428837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959629, 41.685799, 45.900612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.323196, 41.712444, 46.065258>,  <37.541336, 41.728432, 46.164043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.323196, 41.712444, 46.065258>,  <36.959629, 41.685799, 45.900612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323196, 41.712444, 46.065258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415444, 0.228921, 0.880341,
		-0.035588, -0.971163, 0.235744,
		0.908922, 0.066609, 0.411611,
		37.595875, 41.732426, 46.188740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684002, 41.928322, 46.523994>,  <36.959629, 41.685799, 45.900612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684002, 41.928322, 46.523994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.452164, 42.250885, 46.477058>,  <36.313061, 42.444424, 46.448898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.452164, 42.250885, 46.477058>,  <36.684002, 41.928322, 46.523994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452164, 42.250885, 46.477058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492601, -0.461415, -0.737862,
		-0.649164, -0.369859, 0.664673,
		-0.579595, 0.806412, -0.117340,
		36.278286, 42.492809, 46.441856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962955, 41.743317, 46.337048>,  <36.684002, 41.928322, 46.523994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962955, 41.743317, 46.337048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.029877, 42.114223, 46.203068>,  <36.070030, 42.336765, 46.122681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.029877, 42.114223, 46.203068>,  <35.962955, 41.743317, 46.337048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029877, 42.114223, 46.203068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557919, -0.191061, -0.807602,
		-0.812857, 0.321986, 0.485374,
		0.167301, 0.927265, -0.334948,
		36.080067, 42.392403, 46.102585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274120, 41.979919, 46.129944>,  <35.962955, 41.743317, 46.337048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274120, 41.979919, 46.129944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558804, 42.183559, 45.936325>,  <35.729614, 42.305744, 45.820156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558804, 42.183559, 45.936325>,  <35.274120, 41.979919, 46.129944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558804, 42.183559, 45.936325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542487, -0.039462, -0.839137,
		-0.446302, 0.859805, 0.248092,
		0.711704, 0.509096, -0.484045,
		35.772316, 42.336288, 45.791111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976303, 42.448666, 45.701328>,  <35.274120, 41.979919, 46.129944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976303, 42.448666, 45.701328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339191, 42.411625, 45.537193>,  <35.556923, 42.389400, 45.438713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339191, 42.411625, 45.537193>,  <34.976303, 42.448666, 45.701328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339191, 42.411625, 45.537193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420637, -0.189662, -0.887183,
		0.004327, 0.977473, -0.211016,
		0.907219, -0.092600, -0.410340,
		35.611359, 42.383846, 45.414093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887554, 42.803352, 45.112469>,  <34.976303, 42.448666, 45.701328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887554, 42.803352, 45.112469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.209652, 42.571068, 45.064545>,  <35.402912, 42.431698, 45.035789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.209652, 42.571068, 45.064545>,  <34.887554, 42.803352, 45.112469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209652, 42.571068, 45.064545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290782, -0.210659, -0.933310,
		0.516746, 0.786382, -0.338492,
		0.805245, -0.580712, -0.119809,
		35.451225, 42.396854, 45.028603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160713, 42.957767, 44.464314>,  <34.887554, 42.803352, 45.112469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160713, 42.957767, 44.464314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329365, 42.602669, 44.538219>,  <35.430553, 42.389610, 44.582561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.329365, 42.602669, 44.538219>,  <35.160713, 42.957767, 44.464314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329365, 42.602669, 44.538219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145532, -0.267371, -0.952540,
		0.895014, 0.374728, -0.241927,
		0.421627, -0.887745, 0.184766,
		35.455853, 42.336346, 44.593651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405506, 42.888981, 43.870800>,  <35.160713, 42.957767, 44.464314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405506, 42.888981, 43.870800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431084, 42.526722, 44.038471>,  <35.446430, 42.309364, 44.139072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431084, 42.526722, 44.038471>,  <35.405506, 42.888981, 43.870800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431084, 42.526722, 44.038471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074693, -0.423204, -0.902950,
		0.995155, 0.026424, -0.094705,
		0.063939, -0.905649, 0.419179,
		35.450264, 42.255028, 44.164227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975197, 42.528080, 43.518398>,  <35.405506, 42.888981, 43.870800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975197, 42.528080, 43.518398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.734756, 42.250328, 43.676647>,  <35.590492, 42.083675, 43.771595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.734756, 42.250328, 43.676647>,  <35.975197, 42.528080, 43.518398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734756, 42.250328, 43.676647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088590, -0.434091, -0.896503,
		0.794250, -0.573934, 0.199416,
		-0.601098, -0.694381, 0.395622,
		35.554428, 42.042015, 43.795334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234333, 41.912991, 43.233299>,  <35.975197, 42.528080, 43.518398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234333, 41.912991, 43.233299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860695, 41.856815, 43.364594>,  <35.636513, 41.823112, 43.443371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.860695, 41.856815, 43.364594>,  <36.234333, 41.912991, 43.233299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860695, 41.856815, 43.364594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225013, -0.482223, -0.846658,
		0.277185, -0.864719, 0.418843,
		-0.934097, -0.140436, 0.328239,
		35.580467, 41.814686, 43.463066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064644, 41.343056, 42.920280>,  <36.234333, 41.912991, 43.233299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064644, 41.343056, 42.920280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692852, 41.418396, 43.047138>,  <35.469776, 41.463600, 43.123253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692852, 41.418396, 43.047138>,  <36.064644, 41.343056, 42.920280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692852, 41.418396, 43.047138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366568, -0.567434, -0.737324,
		0.041084, -0.801587, 0.596465,
		-0.929484, 0.188353, 0.317149,
		35.414005, 41.474903, 43.142284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645973, 40.643291, 43.026848>,  <36.064644, 41.343056, 42.920280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645973, 40.643291, 43.026848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.416561, 40.955181, 42.926376>,  <35.278912, 41.142315, 42.866093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.416561, 40.955181, 42.926376>,  <35.645973, 40.643291, 43.026848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416561, 40.955181, 42.926376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399141, -0.533750, -0.745518,
		-0.715366, -0.327322, 0.617342,
		-0.573531, 0.779725, -0.251179,
		35.244503, 41.189098, 42.851021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963638, 40.412636, 42.955383>,  <35.645973, 40.643291, 43.026848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963638, 40.412636, 42.955383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.985504, 40.748943, 42.739933>,  <34.998623, 40.950729, 42.610664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.985504, 40.748943, 42.739933>,  <34.963638, 40.412636, 42.955383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985504, 40.748943, 42.739933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427508, -0.467782, -0.773574,
		-0.902357, 0.272553, 0.333866,
		0.054663, 0.840771, -0.538625,
		35.001904, 41.001175, 42.578346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254898, 40.589451, 42.576008>,  <34.963638, 40.412636, 42.955383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254898, 40.589451, 42.576008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575195, 40.740925, 42.390362>,  <34.767372, 40.831810, 42.278973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.575195, 40.740925, 42.390362>,  <34.254898, 40.589451, 42.576008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575195, 40.740925, 42.390362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251602, -0.490517, -0.834320,
		-0.543603, 0.784850, -0.297500,
		0.800745, 0.378687, -0.464116,
		34.815418, 40.854530, 42.251125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999451, 40.347523, 41.906128>,  <34.254898, 40.589451, 42.576008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999451, 40.347523, 41.906128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.367817, 40.496738, 41.860950>,  <34.588837, 40.586266, 41.833843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.367817, 40.496738, 41.860950>,  <33.999451, 40.347523, 41.906128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367817, 40.496738, 41.860950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061939, -0.426164, -0.902523,
		-0.384806, 0.824153, -0.415567,
		0.920917, 0.373036, -0.112943,
		34.644093, 40.608650, 41.827068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804790, 41.045025, 41.793129>,  <33.999451, 40.347523, 41.906128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804790, 41.045025, 41.793129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.421631, 41.147209, 41.740726>,  <33.191734, 41.208519, 41.709286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.421631, 41.147209, 41.740726>,  <33.804790, 41.045025, 41.793129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421631, 41.147209, 41.740726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044047, 0.581690, 0.812217,
		0.283694, 0.772255, -0.568454,
		-0.957903, 0.255460, -0.131006,
		33.134258, 41.223846, 41.701424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894173, 41.752041, 42.013748>,  <33.804790, 41.045025, 41.793129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894173, 41.752041, 42.013748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501892, 41.680111, 42.044418>,  <33.266521, 41.636951, 42.062820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501892, 41.680111, 42.044418>,  <33.894173, 41.752041, 42.013748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501892, 41.680111, 42.044418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063933, 0.665687, 0.743488,
		-0.184745, 0.724240, -0.664339,
		-0.980705, -0.179828, 0.076680,
		33.207680, 41.626163, 42.067421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653488, 42.407772, 42.025928>,  <33.894173, 41.752041, 42.013748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653488, 42.407772, 42.025928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395061, 42.149704, 42.189075>,  <33.240005, 41.994862, 42.286964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395061, 42.149704, 42.189075>,  <33.653488, 42.407772, 42.025928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395061, 42.149704, 42.189075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205213, 0.661508, 0.721315,
		-0.735180, 0.382314, -0.559773,
		-0.646063, -0.645169, 0.407872,
		33.201244, 41.956154, 42.311436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120182, 42.895111, 42.165825>,  <33.653488, 42.407772, 42.025928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120182, 42.895111, 42.165825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034863, 42.565132, 42.375195>,  <32.983669, 42.367146, 42.500816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034863, 42.565132, 42.375195>,  <33.120182, 42.895111, 42.165825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034863, 42.565132, 42.375195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179243, 0.559700, 0.809078,
		-0.960403, 0.078758, -0.267250,
		-0.213302, -0.824944, 0.523421,
		32.970871, 42.317650, 42.532223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429840, 42.890503, 42.374176>,  <33.120182, 42.895111, 42.165825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429840, 42.890503, 42.374176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.653606, 42.685196, 42.634518>,  <32.787865, 42.562012, 42.790722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.653606, 42.685196, 42.634518>,  <32.429840, 42.890503, 42.374176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653606, 42.685196, 42.634518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307476, 0.600690, 0.737990,
		-0.769749, -0.612964, 0.178217,
		0.559415, -0.513270, 0.650852,
		32.821430, 42.531216, 42.829773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885904, 42.677723, 43.013142>,  <32.429840, 42.890503, 42.374176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885904, 42.677723, 43.013142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272453, 42.675686, 43.115978>,  <32.504383, 42.674465, 43.177681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272453, 42.675686, 43.115978>,  <31.885904, 42.677723, 43.013142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272453, 42.675686, 43.115978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226044, 0.459803, 0.858770,
		-0.122585, -0.888007, 0.443190,
		0.966373, -0.005092, 0.257093,
		32.562366, 42.674160, 43.193108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846781, 42.644444, 43.840813>,  <31.885904, 42.677723, 43.013142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846781, 42.644444, 43.840813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.221096, 42.742882, 43.739830>,  <32.445686, 42.801945, 43.679241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.221096, 42.742882, 43.739830>,  <31.846781, 42.644444, 43.840813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221096, 42.742882, 43.739830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010893, 0.695548, 0.718397,
		0.352390, -0.675019, 0.648206,
		0.935790, 0.246095, -0.252456,
		32.501835, 42.816711, 43.664093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692205, 41.952370, 44.103767>,  <31.846781, 42.644444, 43.840813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692205, 41.952370, 44.103767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.362228, 41.795353, 44.266434>,  <31.164242, 41.701145, 44.364033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.362228, 41.795353, 44.266434>,  <31.692205, 41.952370, 44.103767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362228, 41.795353, 44.266434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178759, -0.501370, -0.846566,
		0.536202, -0.771066, 0.343432,
		-0.824944, -0.392538, 0.406670,
		31.114744, 41.677593, 44.388435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720827, 41.160831, 44.062271>,  <31.692205, 41.952370, 44.103767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720827, 41.160831, 44.062271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.335884, 41.260468, 44.105759>,  <31.104918, 41.320248, 44.131851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.335884, 41.260468, 44.105759>,  <31.720827, 41.160831, 44.062271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335884, 41.260468, 44.105759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245351, -0.624150, -0.741782,
		-0.116909, -0.740535, 0.661770,
		-0.962360, 0.249086, 0.108722,
		31.047176, 41.335194, 44.138374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391567, 40.501415, 44.068192>,  <31.720827, 41.160831, 44.062271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391567, 40.501415, 44.068192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.106461, 40.769955, 43.986946>,  <30.935396, 40.931080, 43.938198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.106461, 40.769955, 43.986946>,  <31.391567, 40.501415, 44.068192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106461, 40.769955, 43.986946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241538, -0.506807, -0.827530,
		-0.658502, -0.540775, 0.523390,
		-0.712765, 0.671349, -0.203116,
		30.892632, 40.971359, 43.926010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829050, 40.045296, 43.808998>,  <31.391567, 40.501415, 44.068192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829050, 40.045296, 43.808998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.744776, 40.413647, 43.677792>,  <30.694212, 40.634659, 43.599068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.744776, 40.413647, 43.677792>,  <30.829050, 40.045296, 43.808998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744776, 40.413647, 43.677792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351708, -0.384486, -0.853506,
		-0.912093, -0.064454, 0.404885,
		-0.210685, 0.920878, -0.328018,
		30.681570, 40.689911, 43.579388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207911, 39.994923, 43.481937>,  <30.829050, 40.045296, 43.808998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207911, 39.994923, 43.481937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.340235, 40.344650, 43.339882>,  <30.419628, 40.554489, 43.254650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.340235, 40.344650, 43.339882>,  <30.207911, 39.994923, 43.481937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340235, 40.344650, 43.339882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500834, -0.156297, -0.851315,
		-0.799831, 0.459489, 0.386186,
		0.330810, 0.874323, -0.355139,
		30.439478, 40.606949, 43.233341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546425, 40.381233, 43.338306>,  <30.207911, 39.994923, 43.481937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546425, 40.381233, 43.338306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.866665, 40.507591, 43.134640>,  <30.058809, 40.583408, 43.012440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.866665, 40.507591, 43.134640>,  <29.546425, 40.381233, 43.338306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866665, 40.507591, 43.134640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516566, -0.066745, -0.853642,
		-0.303647, 0.946443, 0.109746,
		0.800598, 0.315897, -0.509167,
		30.106844, 40.602360, 42.981888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315903, 40.845154, 42.790874>,  <29.546425, 40.381233, 43.338306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315903, 40.845154, 42.790874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.665731, 40.739082, 42.628490>,  <29.875629, 40.675442, 42.531059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.665731, 40.739082, 42.628490>,  <29.315903, 40.845154, 42.790874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665731, 40.739082, 42.628490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455091, -0.159877, -0.875975,
		0.167383, 0.950853, -0.260504,
		0.874571, -0.265177, -0.405963,
		29.928102, 40.659531, 42.506702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.085640, 40.160053, 47.334927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.447445, 40.228878, 47.178844>,  <36.664528, 40.270172, 47.085194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.447445, 40.228878, 47.178844>,  <36.085640, 40.160053, 47.334927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447445, 40.228878, 47.178844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160204, -0.710889, -0.684815,
		-0.395221, 0.681933, -0.615441,
		0.904508, 0.172057, -0.390207,
		36.718796, 40.280495, 47.061783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070759, 40.118084, 46.531254>,  <36.085640, 40.160053, 47.334927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070759, 40.118084, 46.531254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.443287, 40.009804, 46.628712>,  <36.666805, 39.944836, 46.687187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.443287, 40.009804, 46.628712>,  <36.070759, 40.118084, 46.531254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443287, 40.009804, 46.628712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027530, -0.719400, -0.694051,
		0.363153, 0.639678, -0.677445,
		0.931323, -0.270697, 0.243642,
		36.722683, 39.928596, 46.701805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386406, 39.922108, 45.876484>,  <36.070759, 40.118084, 46.531254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386406, 39.922108, 45.876484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.583809, 39.748276, 46.177837>,  <36.702251, 39.643974, 46.358650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.583809, 39.748276, 46.177837>,  <36.386406, 39.922108, 45.876484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583809, 39.748276, 46.177837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030654, -0.856987, -0.514426,
		0.869201, 0.276967, -0.409608,
		0.493508, -0.434583, 0.753384,
		36.731861, 39.617901, 46.403854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832859, 39.451801, 45.551186>,  <36.386406, 39.922108, 45.876484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832859, 39.451801, 45.551186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.851093, 39.310886, 45.925098>,  <36.862034, 39.226337, 46.149445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.851093, 39.310886, 45.925098>,  <36.832859, 39.451801, 45.551186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851093, 39.310886, 45.925098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022199, -0.935167, -0.353512,
		0.998714, 0.036867, -0.034809,
		0.045585, -0.352284, 0.934782,
		36.864769, 39.205200, 46.205532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353893, 38.969315, 45.494808>,  <36.832859, 39.451801, 45.551186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353893, 38.969315, 45.494808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.137135, 38.879955, 45.818893>,  <37.007080, 38.826340, 46.013344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.137135, 38.879955, 45.818893>,  <37.353893, 38.969315, 45.494808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137135, 38.879955, 45.818893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094863, -0.941605, -0.323079,
		0.835073, -0.251934, 0.489062,
		-0.541898, -0.223401, 0.810209,
		36.974564, 38.812935, 46.061954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649925, 38.321159, 45.774151>,  <37.353893, 38.969315, 45.494808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649925, 38.321159, 45.774151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.271709, 38.369480, 45.895058>,  <37.044781, 38.398472, 45.967602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.271709, 38.369480, 45.895058>,  <37.649925, 38.321159, 45.774151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271709, 38.369480, 45.895058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209472, -0.936582, -0.280955,
		0.249156, -0.328970, 0.910879,
		-0.945538, 0.120802, 0.302265,
		36.988049, 38.405720, 45.985737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527805, 37.707642, 46.319054>,  <37.649925, 38.321159, 45.774151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527805, 37.707642, 46.319054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.196026, 37.866356, 46.161785>,  <36.996960, 37.961586, 46.067425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.196026, 37.866356, 46.161785>,  <37.527805, 37.707642, 46.319054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196026, 37.866356, 46.161785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207369, -0.872291, -0.442839,
		-0.518668, -0.285780, 0.805800,
		-0.829447, 0.396784, -0.393168,
		36.947193, 37.985390, 46.043835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982731, 37.226517, 46.348183>,  <37.527805, 37.707642, 46.319054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982731, 37.226517, 46.348183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.829109, 37.463814, 46.065182>,  <36.736935, 37.606194, 45.895382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.829109, 37.463814, 46.065182>,  <36.982731, 37.226517, 46.348183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829109, 37.463814, 46.065182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360772, -0.801773, -0.476448,
		-0.849909, 0.072268, 0.521950,
		-0.384053, 0.593243, -0.707507,
		36.713894, 37.641788, 45.852932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401405, 36.875156, 46.149647>,  <36.982731, 37.226517, 46.348183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401405, 36.875156, 46.149647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.462128, 37.137997, 45.854305>,  <36.498562, 37.295700, 45.677101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.462128, 37.137997, 45.854305>,  <36.401405, 36.875156, 46.149647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462128, 37.137997, 45.854305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320273, -0.674009, -0.665685,
		-0.935083, 0.337531, 0.108133,
		0.151806, 0.657103, -0.738357,
		36.507671, 37.335129, 45.632797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829548, 36.905148, 45.727142>,  <36.401405, 36.875156, 46.149647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829548, 36.905148, 45.727142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.102024, 37.049900, 45.472580>,  <36.265511, 37.136753, 45.319843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.102024, 37.049900, 45.472580>,  <35.829548, 36.905148, 45.727142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102024, 37.049900, 45.472580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333928, -0.620009, -0.709987,
		-0.651512, 0.696153, -0.301502,
		0.681193, 0.361885, -0.636408,
		36.306381, 37.158466, 45.281658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488277, 36.802330, 45.181103>,  <35.829548, 36.905148, 45.727142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488277, 36.802330, 45.181103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.852924, 36.896786, 45.046528>,  <36.071712, 36.953461, 44.965782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.852924, 36.896786, 45.046528>,  <35.488277, 36.802330, 45.181103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852924, 36.896786, 45.046528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140006, -0.591174, -0.794299,
		-0.386461, 0.771201, -0.505863,
		0.911617, 0.236141, -0.336439,
		36.126411, 36.967628, 44.945595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428478, 37.106258, 44.577232>,  <35.488277, 36.802330, 45.181103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428478, 37.106258, 44.577232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.788445, 36.932552, 44.561417>,  <36.004425, 36.828327, 44.551926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.788445, 36.932552, 44.561417>,  <35.428478, 37.106258, 44.577232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788445, 36.932552, 44.561417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288765, -0.525538, -0.800266,
		0.326748, 0.731590, -0.598341,
		0.899917, -0.434265, -0.039540,
		36.058418, 36.802273, 44.549553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892479, 37.450287, 44.091988>,  <35.428478, 37.106258, 44.577232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892479, 37.450287, 44.091988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.530052, 37.325325, 43.977837>,  <34.312595, 37.250347, 43.909344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.530052, 37.325325, 43.977837>,  <34.892479, 37.450287, 44.091988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530052, 37.325325, 43.977837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415588, 0.530307, 0.738959,
		-0.079514, 0.788150, -0.610326,
		-0.906071, -0.312402, -0.285379,
		34.258232, 37.231606, 43.892223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503613, 38.065342, 44.046116>,  <34.892479, 37.450287, 44.091988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503613, 38.065342, 44.046116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.265335, 37.754906, 44.128899>,  <34.122368, 37.568645, 44.178566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.265335, 37.754906, 44.128899>,  <34.503613, 38.065342, 44.046116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265335, 37.754906, 44.128899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332899, 0.473041, 0.815727,
		-0.730976, 0.417030, -0.540148,
		-0.595695, -0.776091, 0.206953,
		34.086628, 37.522079, 44.190983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850418, 38.308388, 44.217289>,  <34.503613, 38.065342, 44.046116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850418, 38.308388, 44.217289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.826611, 37.935993, 44.361359>,  <33.812328, 37.712559, 44.447800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.826611, 37.935993, 44.361359>,  <33.850418, 38.308388, 44.217289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826611, 37.935993, 44.361359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498476, 0.340325, 0.797308,
		-0.864858, -0.132087, -0.484328,
		-0.059515, -0.930985, 0.360175,
		33.808758, 37.656696, 44.469410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120605, 38.161869, 44.310959>,  <33.850418, 38.308388, 44.217289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120605, 38.161869, 44.310959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.336761, 37.920288, 44.545300>,  <33.466457, 37.775341, 44.685902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.336761, 37.920288, 44.545300>,  <33.120605, 38.161869, 44.310959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336761, 37.920288, 44.545300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622675, 0.181238, 0.761202,
		-0.565908, -0.776141, -0.278126,
		0.540393, -0.603952, 0.585847,
		33.498878, 37.739101, 44.721054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700081, 37.826206, 44.679604>,  <33.120605, 38.161869, 44.310959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700081, 37.826206, 44.679604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.015282, 37.754757, 44.915279>,  <33.204403, 37.711887, 45.056686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.015282, 37.754757, 44.915279>,  <32.700081, 37.826206, 44.679604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015282, 37.754757, 44.915279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541450, 0.254474, 0.801296,
		-0.293061, -0.950441, 0.103813,
		0.788002, -0.178619, 0.589192,
		33.251682, 37.701172, 45.092037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465408, 37.308971, 45.237984>,  <32.700081, 37.826206, 44.679604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465408, 37.308971, 45.237984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.790760, 37.501289, 45.368980>,  <32.985973, 37.616680, 45.447578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.790760, 37.501289, 45.368980>,  <32.465408, 37.308971, 45.237984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790760, 37.501289, 45.368980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513806, 0.329768, 0.791996,
		0.272785, -0.812463, 0.515259,
		0.813383, 0.480788, 0.327492,
		33.034775, 37.645527, 45.467228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491367, 37.123924, 45.862270>,  <32.465408, 37.308971, 45.237984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491367, 37.123924, 45.862270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.706310, 37.460747, 45.843555>,  <32.835278, 37.662838, 45.832325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.706310, 37.460747, 45.843555>,  <32.491367, 37.123924, 45.862270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706310, 37.460747, 45.843555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546269, 0.389797, 0.741383,
		0.642521, -0.372832, 0.669450,
		0.537361, 0.842054, -0.046786,
		32.867519, 37.713364, 45.829521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545258, 37.204346, 46.549850>,  <32.491367, 37.123924, 45.862270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545258, 37.204346, 46.549850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.634521, 37.560043, 46.390125>,  <32.688080, 37.773460, 46.294289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.634521, 37.560043, 46.390125>,  <32.545258, 37.204346, 46.549850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634521, 37.560043, 46.390125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385205, 0.456751, 0.801870,
		0.895443, -0.025126, 0.444468,
		0.223159, 0.889240, -0.399315,
		32.701469, 37.826817, 46.270332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703644, 37.500244, 47.136349>,  <32.545258, 37.204346, 46.549850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703644, 37.500244, 47.136349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.640049, 37.802757, 46.882496>,  <32.601891, 37.984264, 46.730183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.640049, 37.802757, 46.882496>,  <32.703644, 37.500244, 47.136349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640049, 37.802757, 46.882496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253369, 0.590028, 0.766597,
		0.954215, 0.282680, 0.097809,
		-0.158992, 0.756280, -0.634636,
		32.592350, 38.029640, 46.692104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096954, 38.123280, 47.384243>,  <32.703644, 37.500244, 47.136349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096954, 38.123280, 47.384243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.819736, 38.297405, 47.154392>,  <32.653408, 38.401878, 47.016479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.819736, 38.297405, 47.154392>,  <33.096954, 38.123280, 47.384243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819736, 38.297405, 47.154392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164325, 0.680725, 0.713871,
		0.701921, 0.589167, -0.400237,
		-0.693040, 0.435312, -0.574629,
		32.611824, 38.427998, 46.982002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231571, 38.884567, 47.371494>,  <33.096954, 38.123280, 47.384243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231571, 38.884567, 47.371494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.848164, 38.890755, 47.257656>,  <32.618118, 38.894466, 47.189354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.848164, 38.890755, 47.257656>,  <33.231571, 38.884567, 47.371494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848164, 38.890755, 47.257656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171485, 0.766272, 0.619209,
		0.227656, 0.642330, -0.731837,
		-0.958523, 0.015468, -0.284596,
		32.560608, 38.895393, 47.172276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963108, 39.617779, 47.259453>,  <33.231571, 38.884567, 47.371494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963108, 39.617779, 47.259453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.641666, 39.387337, 47.319225>,  <32.448803, 39.249073, 47.355091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.641666, 39.387337, 47.319225>,  <32.963108, 39.617779, 47.259453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641666, 39.387337, 47.319225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396575, 0.705527, 0.587333,
		-0.443793, 0.412720, -0.795431,
		-0.803602, -0.576102, 0.149433,
		32.400585, 39.214508, 47.364056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457390, 40.165348, 47.289906>,  <32.963108, 39.617779, 47.259453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457390, 40.165348, 47.289906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.280094, 39.845116, 47.451206>,  <32.173717, 39.652977, 47.547985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.280094, 39.845116, 47.451206>,  <32.457390, 40.165348, 47.289906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280094, 39.845116, 47.451206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539199, 0.597483, 0.593531,
		-0.716105, 0.045643, -0.696499,
		-0.443237, -0.800581, 0.403250,
		32.147121, 39.604942, 47.572182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787947, 40.296791, 47.354065>,  <32.457390, 40.165348, 47.289906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787947, 40.296791, 47.354065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.841293, 40.017937, 47.635834>,  <31.873302, 39.850624, 47.804893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.841293, 40.017937, 47.635834>,  <31.787947, 40.296791, 47.354065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841293, 40.017937, 47.635834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519789, 0.555966, 0.648630,
		-0.843820, -0.452657, -0.288217,
		0.133368, -0.697139, 0.704422,
		31.881304, 39.808796, 47.847160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717543, 40.981884, 47.214569>,  <31.787947, 40.296791, 47.354065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717543, 40.981884, 47.214569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.733919, 41.381531, 47.218529>,  <31.743744, 41.621319, 47.220905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.733919, 41.381531, 47.218529>,  <31.717543, 40.981884, 47.214569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733919, 41.381531, 47.218529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474898, 0.028174, -0.879589,
		-0.879088, 0.031310, 0.475630,
		0.040940, 0.999113, 0.009898,
		31.746201, 41.681263, 47.221497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017435, 41.180992, 46.998356>,  <31.717543, 40.981884, 47.214569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017435, 41.180992, 46.998356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.238834, 41.506493, 46.927418>,  <31.371674, 41.701794, 46.884853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.238834, 41.506493, 46.927418>,  <31.017435, 41.180992, 46.998356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238834, 41.506493, 46.927418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529724, 0.179653, -0.828925,
		-0.642677, 0.552752, 0.530500,
		0.553497, 0.813750, -0.177347,
		31.404884, 41.750618, 46.874214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619478, 41.750809, 46.867142>,  <31.017435, 41.180992, 46.998356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619478, 41.750809, 46.867142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.972952, 41.824993, 46.695232>,  <31.185036, 41.869503, 46.592087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.972952, 41.824993, 46.695232>,  <30.619478, 41.750809, 46.867142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972952, 41.824993, 46.695232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457971, 0.152750, -0.875745,
		-0.096768, 0.970707, 0.219919,
		0.883685, 0.185460, -0.429774,
		31.238058, 41.880630, 46.566299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440506, 42.244968, 46.295094>,  <30.619478, 41.750809, 46.867142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440506, 42.244968, 46.295094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.793198, 42.072330, 46.218906>,  <31.004812, 41.968746, 46.173195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.793198, 42.072330, 46.218906>,  <30.440506, 42.244968, 46.295094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793198, 42.072330, 46.218906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273466, -0.138629, -0.951840,
		0.384410, 0.891349, -0.240261,
		0.881729, -0.431600, -0.190463,
		31.057716, 41.942852, 46.161766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707615, 42.535259, 45.704937>,  <30.440506, 42.244968, 46.295094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707615, 42.535259, 45.704937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.926441, 42.200962, 45.723934>,  <31.057737, 42.000385, 45.735332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.926441, 42.200962, 45.723934>,  <30.707615, 42.535259, 45.704937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926441, 42.200962, 45.723934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020784, -0.043162, -0.998852,
		0.836831, 0.547426, -0.006243,
		0.547066, -0.835741, 0.047497,
		31.090561, 41.950241, 45.738182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378609, 42.612095, 45.280022>,  <30.707615, 42.535259, 45.704937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378609, 42.612095, 45.280022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.239157, 42.240223, 45.327606>,  <31.155485, 42.017101, 45.356155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.239157, 42.240223, 45.327606>,  <31.378609, 42.612095, 45.280022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239157, 42.240223, 45.327606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079040, -0.155636, -0.984647,
		0.933922, -0.333873, 0.127741,
		-0.348629, -0.929681, 0.118963,
		31.134567, 41.961319, 45.363297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738846, 42.279690, 44.741657>,  <31.378609, 42.612095, 45.280022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738846, 42.279690, 44.741657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.434202, 42.037128, 44.833069>,  <31.251417, 41.891590, 44.887917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.434202, 42.037128, 44.833069>,  <31.738846, 42.279690, 44.741657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434202, 42.037128, 44.833069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119785, -0.214843, -0.969275,
		0.636873, -0.765581, 0.090988,
		-0.761607, -0.606406, 0.228533,
		31.205721, 41.855206, 44.901630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461407, 42.627995, 44.557137>,  <31.738846, 42.279690, 44.741657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461407, 42.627995, 44.557137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.622025, 42.871532, 44.283474>,  <32.718395, 43.017654, 44.119278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.622025, 42.871532, 44.283474>,  <32.461407, 42.627995, 44.557137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622025, 42.871532, 44.283474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324344, 0.604072, 0.727941,
		0.856483, -0.514202, 0.045085,
		0.401544, 0.608847, -0.684156,
		32.742489, 43.054188, 44.078228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021595, 42.846653, 44.790871>,  <32.461407, 42.627995, 44.557137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021595, 42.846653, 44.790871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.004345, 43.109646, 44.489979>,  <32.993996, 43.267441, 44.309444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.004345, 43.109646, 44.489979>,  <33.021595, 42.846653, 44.790871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004345, 43.109646, 44.489979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460932, 0.681107, 0.568889,
		0.886387, -0.322194, -0.332429,
		-0.043127, 0.657483, -0.752234,
		32.991405, 43.306892, 44.264309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633209, 43.191437, 44.897030>,  <33.021595, 42.846653, 44.790871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633209, 43.191437, 44.897030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442940, 43.444935, 44.653027>,  <33.328777, 43.597034, 44.506626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442940, 43.444935, 44.653027>,  <33.633209, 43.191437, 44.897030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442940, 43.444935, 44.653027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473450, 0.768924, 0.429653,
		0.741335, -0.084430, -0.665803,
		-0.475676, 0.633741, -0.610004,
		33.300236, 43.635056, 44.470024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044380, 43.679707, 44.733738>,  <33.633209, 43.191437, 44.897030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044380, 43.679707, 44.733738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.719318, 43.880688, 44.615665>,  <33.524281, 44.001278, 44.544823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.719318, 43.880688, 44.615665>,  <34.044380, 43.679707, 44.733738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719318, 43.880688, 44.615665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394472, 0.847147, 0.355996,
		0.428932, 0.172863, -0.886643,
		-0.812656, 0.502454, -0.295179,
		33.475521, 44.031425, 44.527111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239159, 44.370312, 44.336704>,  <34.044380, 43.679707, 44.733738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239159, 44.370312, 44.336704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.876110, 44.397907, 44.502338>,  <33.658283, 44.414467, 44.601719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.876110, 44.397907, 44.502338>,  <34.239159, 44.370312, 44.336704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876110, 44.397907, 44.502338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207401, 0.931305, 0.299426,
		-0.364983, 0.357647, -0.859579,
		-0.907619, 0.068992, 0.414087,
		33.603825, 44.418606, 44.626564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050167, 44.929329, 44.107315>,  <34.239159, 44.370312, 44.336704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050167, 44.929329, 44.107315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.822460, 44.857414, 44.428219>,  <33.685837, 44.814266, 44.620762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.822460, 44.857414, 44.428219>,  <34.050167, 44.929329, 44.107315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822460, 44.857414, 44.428219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363138, 0.820470, 0.441542,
		-0.737609, 0.542684, -0.401780,
		-0.569266, -0.179784, 0.802255,
		33.651680, 44.803478, 44.668896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806934, 45.574890, 44.226734>,  <34.050167, 44.929329, 44.107315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806934, 45.574890, 44.226734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.708401, 45.385521, 44.565010>,  <33.649281, 45.271900, 44.767975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.708401, 45.385521, 44.565010>,  <33.806934, 45.574890, 44.226734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708401, 45.385521, 44.565010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103462, 0.854747, 0.508629,
		-0.963647, 0.212789, -0.161571,
		-0.246333, -0.473422, 0.845690,
		33.634502, 45.243496, 44.818718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314034, 45.905300, 44.561214>,  <33.806934, 45.574890, 44.226734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314034, 45.905300, 44.561214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.465244, 45.691448, 44.863544>,  <33.555969, 45.563137, 45.044941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.465244, 45.691448, 44.863544>,  <33.314034, 45.905300, 44.561214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465244, 45.691448, 44.863544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174171, 0.842896, 0.509108,
		-0.909265, -0.060811, 0.411751,
		0.378023, -0.534629, 0.755824,
		33.578651, 45.531059, 45.090290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079456, 46.227032, 45.203682>,  <33.314034, 45.905300, 44.561214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079456, 46.227032, 45.203682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.399952, 46.008842, 45.302044>,  <33.592251, 45.877930, 45.361061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.399952, 46.008842, 45.302044>,  <33.079456, 46.227032, 45.203682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399952, 46.008842, 45.302044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409486, 0.799555, 0.439355,
		-0.436273, -0.251334, 0.864001,
		0.801241, -0.545475, 0.245906,
		33.640324, 45.845200, 45.375816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.116449, 34.691635, 33.381603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479086, 34.644524, 33.543697>,  <31.696669, 34.616257, 33.640953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479086, 34.644524, 33.543697>,  <31.116449, 34.691635, 33.381603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479086, 34.644524, 33.543697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182637, 0.756170, 0.628371,
		-0.380436, -0.643689, 0.664028,
		0.906594, -0.117779, 0.405236,
		31.751064, 34.609192, 33.665268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051287, 34.802074, 34.035969>,  <31.116449, 34.691635, 33.381603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051287, 34.802074, 34.035969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444965, 34.865631, 34.004700>,  <31.681173, 34.903763, 33.985939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444965, 34.865631, 34.004700>,  <31.051287, 34.802074, 34.035969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444965, 34.865631, 34.004700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060437, 0.716344, 0.695125,
		0.166443, -0.679416, 0.714626,
		0.984197, 0.158888, -0.078169,
		31.740225, 34.913300, 33.981251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337429, 34.784420, 34.686867>,  <31.051287, 34.802074, 34.035969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337429, 34.784420, 34.686867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571142, 35.007366, 34.450912>,  <31.711370, 35.141132, 34.309341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571142, 35.007366, 34.450912>,  <31.337429, 34.784420, 34.686867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571142, 35.007366, 34.450912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071305, 0.688790, 0.721446,
		0.808412, -0.463590, 0.362705,
		0.584283, 0.557363, -0.589882,
		31.746428, 35.174576, 34.273949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884453, 35.072922, 35.163269>,  <31.337429, 34.784420, 34.686867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884453, 35.072922, 35.163269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889706, 35.304535, 34.837189>,  <31.892859, 35.443504, 34.641541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889706, 35.304535, 34.837189>,  <31.884453, 35.072922, 35.163269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889706, 35.304535, 34.837189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109043, 0.809578, 0.576796,
		0.993950, -0.096467, -0.052507,
		0.013133, 0.579032, -0.815199,
		31.893646, 35.478245, 34.592628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157681, 35.629185, 35.464352>,  <31.884453, 35.072922, 35.163269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157681, 35.629185, 35.464352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047859, 35.766689, 35.105141>,  <31.981966, 35.849194, 34.889614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047859, 35.766689, 35.105141>,  <32.157681, 35.629185, 35.464352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047859, 35.766689, 35.105141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147911, 0.937897, 0.313803,
		0.950127, -0.046671, -0.308352,
		-0.274557, 0.343762, -0.898024,
		31.965492, 35.869820, 34.835735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686657, 36.076340, 35.154690>,  <32.157681, 35.629185, 35.464352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686657, 36.076340, 35.154690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314117, 36.170067, 35.043198>,  <32.090595, 36.226303, 34.976303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314117, 36.170067, 35.043198>,  <32.686657, 36.076340, 35.154690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314117, 36.170067, 35.043198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169525, 0.956453, 0.237612,
		0.322271, 0.174046, -0.930510,
		-0.931345, 0.234320, -0.278732,
		32.034714, 36.240364, 34.959579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690857, 36.832962, 35.112675>,  <32.686657, 36.076340, 35.154690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690857, 36.832962, 35.112675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302410, 36.753166, 35.060303>,  <32.069344, 36.705288, 35.028877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302410, 36.753166, 35.060303>,  <32.690857, 36.832962, 35.112675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302410, 36.753166, 35.060303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238434, 0.833020, 0.499227,
		0.009479, 0.516025, -0.856521,
		-0.971112, -0.199492, -0.130934,
		32.011078, 36.693317, 35.021023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379559, 37.447525, 34.830608>,  <32.690857, 36.832962, 35.112675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379559, 37.447525, 34.830608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124512, 37.218712, 35.036995>,  <31.971483, 37.081425, 35.160828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124512, 37.218712, 35.036995>,  <32.379559, 37.447525, 34.830608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124512, 37.218712, 35.036995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093415, 0.722255, 0.685290,
		-0.764670, 0.388752, -0.513957,
		-0.637616, -0.572032, 0.515971,
		31.933228, 37.047104, 35.191788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781181, 37.909134, 35.012081>,  <32.379559, 37.447525, 34.830608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781181, 37.909134, 35.012081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735142, 37.608837, 35.272278>,  <31.707518, 37.428658, 35.428394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735142, 37.608837, 35.272278>,  <31.781181, 37.909134, 35.012081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735142, 37.608837, 35.272278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032277, 0.657321, 0.752919,
		-0.992829, 0.065665, -0.099890,
		-0.115100, -0.750744, 0.650488,
		31.700611, 37.383614, 35.467422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335897, 38.173714, 35.452236>,  <31.781181, 37.909134, 35.012081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335897, 38.173714, 35.452236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479551, 37.869884, 35.669147>,  <31.565744, 37.687588, 35.799294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479551, 37.869884, 35.669147>,  <31.335897, 38.173714, 35.452236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479551, 37.869884, 35.669147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009080, 0.583857, 0.811806,
		-0.933242, -0.286623, 0.216580,
		0.359134, -0.759578, 0.542277,
		31.587292, 37.642010, 35.831829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880964, 38.149834, 36.061089>,  <31.335897, 38.173714, 35.452236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880964, 38.149834, 36.061089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205761, 37.954414, 36.188831>,  <31.400639, 37.837162, 36.265476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205761, 37.954414, 36.188831>,  <30.880964, 38.149834, 36.061089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205761, 37.954414, 36.188831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000427, 0.547651, 0.836707,
		-0.583667, -0.679264, 0.444898,
		0.811993, -0.488548, 0.319356,
		31.449360, 37.807850, 36.284637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823166, 37.994236, 36.843433>,  <30.880964, 38.149834, 36.061089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823166, 37.994236, 36.843433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212934, 37.971874, 36.756371>,  <31.446796, 37.958458, 36.704132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212934, 37.971874, 36.756371>,  <30.823166, 37.994236, 36.843433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212934, 37.971874, 36.756371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220255, 0.429698, 0.875698,
		0.044568, -0.901240, 0.431022,
		0.974423, -0.055907, -0.217653,
		31.505262, 37.955101, 36.691074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555351, 37.437012, 37.273289>,  <30.823166, 37.994236, 36.843433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555351, 37.437012, 37.273289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205633, 37.339386, 37.441120>,  <29.995802, 37.280811, 37.541817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205633, 37.339386, 37.441120>,  <30.555351, 37.437012, 37.273289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205633, 37.339386, 37.441120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074510, -0.921633, -0.380841,
		0.479643, -0.301705, 0.823964,
		-0.874294, -0.244061, 0.419575,
		29.943344, 37.266167, 37.566994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581432, 36.672325, 37.364994>,  <30.555351, 37.437012, 37.273289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581432, 36.672325, 37.364994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191416, 36.759762, 37.380527>,  <29.957405, 36.812225, 37.389847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191416, 36.759762, 37.380527>,  <30.581432, 36.672325, 37.364994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191416, 36.759762, 37.380527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220951, -0.938280, -0.266104,
		-0.021730, -0.268044, 0.963162,
		-0.975043, 0.218594, 0.038836,
		29.898903, 36.825340, 37.392178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282677, 36.095478, 37.794518>,  <30.581432, 36.672325, 37.364994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282677, 36.095478, 37.794518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993143, 36.246876, 37.563763>,  <29.819422, 36.337715, 37.425308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993143, 36.246876, 37.563763>,  <30.282677, 36.095478, 37.794518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993143, 36.246876, 37.563763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346038, -0.922494, -0.171064,
		-0.596925, 0.075804, 0.798708,
		-0.723836, 0.378495, -0.576891,
		29.775991, 36.360424, 37.390694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681185, 35.619263, 37.918976>,  <30.282677, 36.095478, 37.794518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681185, 35.619263, 37.918976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611538, 35.826168, 37.583805>,  <29.569750, 35.950310, 37.382702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611538, 35.826168, 37.583805>,  <29.681185, 35.619263, 37.918976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611538, 35.826168, 37.583805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469292, -0.791667, -0.391187,
		-0.865707, 0.325122, 0.380588,
		-0.174116, 0.517261, -0.837929,
		29.559303, 35.981346, 37.332428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966776, 35.703156, 37.815125>,  <29.681185, 35.619263, 37.918976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966776, 35.703156, 37.815125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094835, 35.718697, 37.436497>,  <29.171671, 35.728020, 37.209320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094835, 35.718697, 37.436497>,  <28.966776, 35.703156, 37.815125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094835, 35.718697, 37.436497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586960, -0.776147, -0.230376,
		-0.743629, 0.629354, -0.225676,
		0.320146, 0.038852, -0.946571,
		29.190880, 35.730350, 37.152527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364944, 35.461067, 37.419460>,  <28.966776, 35.703156, 37.815125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364944, 35.461067, 37.419460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678768, 35.439262, 37.172398>,  <28.867062, 35.426182, 37.024158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678768, 35.439262, 37.172398>,  <28.364944, 35.461067, 37.419460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678768, 35.439262, 37.172398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449133, -0.736730, -0.505479,
		-0.427492, 0.673986, -0.602489,
		0.784558, -0.054510, -0.617655,
		28.914135, 35.422909, 36.987103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093155, 35.338711, 36.800137>,  <28.364944, 35.461067, 37.419460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093155, 35.338711, 36.800137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471067, 35.232491, 36.723328>,  <28.697815, 35.168758, 36.677242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.471067, 35.232491, 36.723328>,  <28.093155, 35.338711, 36.800137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471067, 35.232491, 36.723328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327701, -0.764177, -0.555559,
		0.000786, 0.587808, -0.808999,
		0.944781, -0.265547, -0.192025,
		28.754501, 35.152828, 36.665722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196657, 35.483673, 35.962246>,  <28.093155, 35.338711, 36.800137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196657, 35.483673, 35.962246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457264, 35.211205, 36.095829>,  <28.613628, 35.047722, 36.175980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.457264, 35.211205, 36.095829>,  <28.196657, 35.483673, 35.962246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457264, 35.211205, 36.095829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302814, -0.637127, -0.708783,
		0.695581, 0.360654, -0.621366,
		0.651515, -0.681174, 0.333962,
		28.652718, 35.006851, 36.196018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581053, 35.230595, 35.389084>,  <28.196657, 35.483673, 35.962246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581053, 35.230595, 35.389084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676411, 34.943050, 35.650280>,  <28.733625, 34.770523, 35.806999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676411, 34.943050, 35.650280>,  <28.581053, 35.230595, 35.389084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676411, 34.943050, 35.650280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070795, -0.683455, -0.726551,
		0.968585, 0.126977, -0.213824,
		0.238395, -0.718864, 0.652995,
		28.747929, 34.727390, 35.846180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166853, 34.876125, 35.158897>,  <28.581053, 35.230595, 35.389084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166853, 34.876125, 35.158897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.973934, 34.620449, 35.398506>,  <28.858183, 34.467041, 35.542271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.973934, 34.620449, 35.398506>,  <29.166853, 34.876125, 35.158897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973934, 34.620449, 35.398506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187526, -0.592618, -0.783350,
		0.855701, -0.490139, 0.165953,
		-0.482297, -0.639193, 0.599018,
		28.829245, 34.428692, 35.578213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372761, 34.210110, 34.907204>,  <29.166853, 34.876125, 35.158897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372761, 34.210110, 34.907204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043364, 34.121220, 35.116001>,  <28.845726, 34.067886, 35.241280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.043364, 34.121220, 35.116001>,  <29.372761, 34.210110, 34.907204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043364, 34.121220, 35.116001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294970, -0.618247, -0.728535,
		0.484619, -0.753915, 0.443572,
		-0.823491, -0.222221, 0.521997,
		28.796316, 34.054554, 35.272598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316605, 33.403645, 34.946079>,  <29.372761, 34.210110, 34.907204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316605, 33.403645, 34.946079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956108, 33.568855, 34.998508>,  <28.739811, 33.667980, 35.029964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956108, 33.568855, 34.998508>,  <29.316605, 33.403645, 34.946079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956108, 33.568855, 34.998508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401713, -0.682948, -0.610089,
		-0.162465, -0.602489, 0.781416,
		-0.901239, 0.413023, 0.131072,
		28.685736, 33.692760, 35.037830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717861, 33.458504, 35.489861>,  <29.316605, 33.403645, 34.946079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717861, 33.458504, 35.489861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901236, 33.178165, 35.708454>,  <30.011259, 33.009960, 35.839611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901236, 33.178165, 35.708454>,  <29.717861, 33.458504, 35.489861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901236, 33.178165, 35.708454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170148, -0.534320, -0.827981,
		0.872288, 0.472559, -0.125703,
		0.458435, -0.700850, 0.546485,
		30.038767, 32.967911, 35.872398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151623, 33.208000, 34.979084>,  <29.717861, 33.458504, 35.489861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151623, 33.208000, 34.979084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249832, 32.938122, 35.257511>,  <30.308758, 32.776196, 35.424568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249832, 32.938122, 35.257511>,  <30.151623, 33.208000, 34.979084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249832, 32.938122, 35.257511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469594, -0.545391, -0.694284,
		0.848056, 0.497333, 0.182924,
		0.245525, -0.674691, 0.696067,
		30.323490, 32.735714, 35.466331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818964, 32.987244, 34.940853>,  <30.151623, 33.208000, 34.979084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818964, 32.987244, 34.940853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629337, 32.667973, 35.089539>,  <30.515560, 32.476410, 35.178749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629337, 32.667973, 35.089539>,  <30.818964, 32.987244, 34.940853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629337, 32.667973, 35.089539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440235, -0.580484, -0.685004,
		0.762530, -0.161097, 0.626575,
		-0.474069, -0.798176, 0.371716,
		30.487116, 32.428520, 35.201054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198460, 32.370758, 34.648857>,  <30.818964, 32.987244, 34.940853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198460, 32.370758, 34.648857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532558, 32.271126, 34.844948>,  <31.733019, 32.211346, 34.962601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532558, 32.271126, 34.844948>,  <31.198460, 32.370758, 34.648857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532558, 32.271126, 34.844948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403394, 0.328287, 0.854108,
		-0.373677, -0.911145, 0.173723,
		0.835248, -0.249082, 0.490223,
		31.783133, 32.196400, 34.992016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093277, 32.145359, 35.303013>,  <31.198460, 32.370758, 34.648857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093277, 32.145359, 35.303013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481508, 32.234390, 35.339752>,  <31.714447, 32.287811, 35.361797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481508, 32.234390, 35.339752>,  <31.093277, 32.145359, 35.303013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481508, 32.234390, 35.339752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175773, 0.394235, 0.902043,
		0.164568, -0.891648, 0.421760,
		0.970578, 0.222581, 0.091849,
		31.772682, 32.301167, 35.367306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242195, 31.893862, 35.949505>,  <31.093277, 32.145359, 35.303013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242195, 31.893862, 35.949505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532457, 32.154648, 35.861534>,  <31.706615, 32.311119, 35.808750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532457, 32.154648, 35.861534>,  <31.242195, 31.893862, 35.949505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532457, 32.154648, 35.861534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067137, 0.251018, 0.965651,
		0.684775, -0.715496, 0.138382,
		0.725655, 0.651963, -0.219928,
		31.750154, 32.350235, 35.795555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720894, 31.818300, 36.517952>,  <31.242195, 31.893862, 35.949505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720894, 31.818300, 36.517952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859024, 32.159496, 36.361412>,  <31.941902, 32.364216, 36.267487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859024, 32.159496, 36.361412>,  <31.720894, 31.818300, 36.517952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859024, 32.159496, 36.361412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106145, 0.378827, 0.919360,
		0.932461, -0.359017, 0.040277,
		0.345324, 0.852992, -0.391350,
		31.962622, 32.415394, 36.244007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234486, 32.075279, 36.998974>,  <31.720894, 31.818300, 36.517952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234486, 32.075279, 36.998974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138920, 32.401180, 36.787651>,  <32.081581, 32.596722, 36.660858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138920, 32.401180, 36.787651>,  <32.234486, 32.075279, 36.998974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138920, 32.401180, 36.787651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063717, 0.556041, 0.828709,
		0.968949, 0.164326, -0.184758,
		-0.238911, 0.814749, -0.528305,
		32.067245, 32.645603, 36.629158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701878, 32.516689, 37.153542>,  <32.234486, 32.075279, 36.998974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701878, 32.516689, 37.153542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416790, 32.767071, 37.026917>,  <32.245739, 32.917301, 36.950943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416790, 32.767071, 37.026917>,  <32.701878, 32.516689, 37.153542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416790, 32.767071, 37.026917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260895, 0.655477, 0.708720,
		0.651126, 0.422529, -0.630480,
		-0.712720, 0.625955, -0.316562,
		32.202972, 32.954857, 36.931950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014370, 33.082031, 37.035587>,  <32.701878, 32.516689, 37.153542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014370, 33.082031, 37.035587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632122, 33.185352, 37.092258>,  <32.402775, 33.247345, 37.126263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632122, 33.185352, 37.092258>,  <33.014370, 33.082031, 37.035587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632122, 33.185352, 37.092258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293558, 0.794356, 0.531810,
		0.024819, 0.549799, -0.834928,
		-0.955619, 0.258299, 0.141682,
		32.345436, 33.262840, 37.134762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047531, 33.793991, 36.876244>,  <33.014370, 33.082031, 37.035587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047531, 33.793991, 36.876244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720631, 33.730305, 37.097782>,  <32.524490, 33.692093, 37.230705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720631, 33.730305, 37.097782>,  <33.047531, 33.793991, 36.876244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720631, 33.730305, 37.097782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260656, 0.755021, 0.601665,
		-0.513958, 0.636078, -0.575546,
		-0.817255, -0.159211, 0.553847,
		32.475452, 33.682541, 37.263935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651794, 34.466152, 36.927666>,  <33.047531, 33.793991, 36.876244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651794, 34.466152, 36.927666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528324, 34.234913, 37.229797>,  <32.454243, 34.096169, 37.411076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528324, 34.234913, 37.229797>,  <32.651794, 34.466152, 36.927666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528324, 34.234913, 37.229797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144962, 0.756242, 0.638031,
		-0.940057, 0.306438, -0.149631,
		-0.308675, -0.578094, 0.755332,
		32.435722, 34.061485, 37.456398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122711, 34.860954, 37.234798>,  <32.651794, 34.466152, 36.927666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122711, 34.860954, 37.234798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231590, 34.587444, 37.505608>,  <32.296917, 34.423336, 37.668091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231590, 34.587444, 37.505608>,  <32.122711, 34.860954, 37.234798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231590, 34.587444, 37.505608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210208, 0.728848, 0.651608,
		-0.938999, -0.035053, 0.342128,
		0.272200, -0.683777, 0.677020,
		32.313251, 34.382313, 37.708714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827938, 35.081787, 37.919498>,  <32.122711, 34.860954, 37.234798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827938, 35.081787, 37.919498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108715, 34.816608, 38.023636>,  <32.277184, 34.657501, 38.086117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108715, 34.816608, 38.023636>,  <31.827938, 35.081787, 37.919498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108715, 34.816608, 38.023636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309917, 0.613415, 0.726411,
		-0.641268, -0.429216, 0.636041,
		0.701945, -0.662945, 0.260342,
		32.319298, 34.617725, 38.101738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871517, 35.158920, 38.639179>,  <31.827938, 35.081787, 37.919498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871517, 35.158920, 38.639179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215309, 34.985905, 38.530220>,  <32.421585, 34.882095, 38.464844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215309, 34.985905, 38.530220>,  <31.871517, 35.158920, 38.639179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215309, 34.985905, 38.530220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479723, 0.498519, 0.722042,
		-0.176512, -0.751259, 0.635966,
		0.859482, -0.432537, -0.272401,
		32.473152, 34.856144, 38.448498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176399, 34.923111, 39.264206>,  <31.871517, 35.158920, 38.639179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176399, 34.923111, 39.264206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484577, 34.924511, 39.009205>,  <32.669483, 34.925350, 38.856205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484577, 34.924511, 39.009205>,  <32.176399, 34.923111, 39.264206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484577, 34.924511, 39.009205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587807, 0.383210, 0.712484,
		0.246787, -0.923655, 0.293186,
		0.770441, 0.003495, -0.637502,
		32.715710, 34.925560, 38.817955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699928, 34.613407, 39.580963>,  <32.176399, 34.923111, 39.264206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699928, 34.613407, 39.580963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883423, 34.840626, 39.307648>,  <32.993519, 34.976955, 39.143658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883423, 34.840626, 39.307648>,  <32.699928, 34.613407, 39.580963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883423, 34.840626, 39.307648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501734, 0.469066, 0.726802,
		0.733365, -0.676240, -0.069831,
		0.458737, 0.568047, -0.683289,
		33.021046, 35.011040, 39.102661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411419, 34.518234, 39.689960>,  <32.699928, 34.613407, 39.580963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411419, 34.518234, 39.689960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367325, 34.854946, 39.478580>,  <33.340870, 35.056973, 39.351753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367325, 34.854946, 39.478580>,  <33.411419, 34.518234, 39.689960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367325, 34.854946, 39.478580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501893, 0.506062, 0.701431,
		0.857877, -0.187902, -0.478268,
		-0.110233, 0.841780, -0.528446,
		33.334255, 35.107479, 39.320045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039642, 34.836285, 39.855488>,  <33.411419, 34.518234, 39.689960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039642, 34.836285, 39.855488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786469, 35.115906, 39.722393>,  <33.634563, 35.283680, 39.642536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786469, 35.115906, 39.722393>,  <34.039642, 34.836285, 39.855488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786469, 35.115906, 39.722393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299787, 0.617546, 0.727162,
		0.713804, 0.360500, -0.600436,
		-0.632939, 0.699054, -0.332733,
		33.596588, 35.325623, 39.622574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403549, 35.433754, 39.883137>,  <34.039642, 34.836285, 39.855488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403549, 35.433754, 39.883137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031666, 35.574718, 39.840359>,  <33.808533, 35.659298, 39.814690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031666, 35.574718, 39.840359>,  <34.403549, 35.433754, 39.883137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031666, 35.574718, 39.840359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201564, 0.729949, 0.653105,
		0.308229, 0.585644, -0.749677,
		-0.929713, 0.352414, -0.106947,
		33.752750, 35.680443, 39.808273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484962, 36.204411, 39.711216>,  <34.403549, 35.433754, 39.883137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484962, 36.204411, 39.711216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152142, 36.101200, 39.907631>,  <33.952450, 36.039272, 40.025478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152142, 36.101200, 39.907631>,  <34.484962, 36.204411, 39.711216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152142, 36.101200, 39.907631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252454, 0.612082, 0.749415,
		-0.493925, 0.747513, -0.444142,
		-0.832049, -0.258029, 0.491035,
		33.902527, 36.023792, 40.054943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337238, 36.805355, 40.177151>,  <34.484962, 36.204411, 39.711216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337238, 36.805355, 40.177151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067459, 36.533955, 40.293594>,  <33.905590, 36.371113, 40.363461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067459, 36.533955, 40.293594>,  <34.337238, 36.805355, 40.177151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067459, 36.533955, 40.293594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013037, 0.383281, 0.923540,
		-0.738203, 0.626679, -0.249659,
		-0.674453, -0.678505, 0.291110,
		33.865124, 36.330402, 40.380928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027702, 37.148178, 40.600479>,  <34.337238, 36.805355, 40.177151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027702, 37.148178, 40.600479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928890, 36.770992, 40.689747>,  <33.869602, 36.544682, 40.743305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928890, 36.770992, 40.689747>,  <34.027702, 37.148178, 40.600479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928890, 36.770992, 40.689747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113495, 0.200562, 0.973084,
		-0.962339, 0.265707, 0.057477,
		-0.247027, -0.942960, 0.223165,
		33.854782, 36.488106, 40.756695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459988, 37.201809, 41.055840>,  <34.027702, 37.148178, 40.600479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459988, 37.201809, 41.055840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635098, 36.847961, 41.120098>,  <33.740166, 36.635654, 41.158653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635098, 36.847961, 41.120098>,  <33.459988, 37.201809, 41.055840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635098, 36.847961, 41.120098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111913, 0.230906, 0.966518,
		-0.892091, -0.405140, 0.200085,
		0.437777, -0.884615, 0.160649,
		33.766430, 36.582577, 41.168293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136002, 36.967804, 41.685211>,  <33.459988, 37.201809, 41.055840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136002, 36.967804, 41.685211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457417, 36.733486, 41.642929>,  <33.650265, 36.592896, 41.617561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457417, 36.733486, 41.642929>,  <33.136002, 36.967804, 41.685211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457417, 36.733486, 41.642929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104632, -0.035818, 0.993866,
		-0.585984, -0.809670, 0.032511,
		0.803539, -0.585791, -0.105706,
		33.698479, 36.557751, 41.611217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051765, 36.423302, 42.234940>,  <33.136002, 36.967804, 41.685211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051765, 36.423302, 42.234940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443443, 36.427151, 42.153870>,  <33.678452, 36.429459, 42.105228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443443, 36.427151, 42.153870>,  <33.051765, 36.423302, 42.234940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443443, 36.427151, 42.153870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202779, -0.011084, 0.979162,
		0.007191, -0.999892, -0.012808,
		0.979198, 0.009638, -0.202677,
		33.737202, 36.430038, 42.093067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377384, 35.855717, 42.657806>,  <33.051765, 36.423302, 42.234940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377384, 35.855717, 42.657806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672489, 36.101967, 42.547020>,  <33.849552, 36.249718, 42.480549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672489, 36.101967, 42.547020>,  <33.377384, 35.855717, 42.657806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672489, 36.101967, 42.547020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225714, 0.161710, 0.960678,
		0.636210, -0.771265, -0.019653,
		0.737760, 0.615629, -0.276967,
		33.893818, 36.286655, 42.463928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927692, 35.648418, 43.103851>,  <33.377384, 35.855717, 42.657806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927692, 35.648418, 43.103851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991821, 36.018978, 42.967571>,  <34.030300, 36.241314, 42.885803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991821, 36.018978, 42.967571>,  <33.927692, 35.648418, 43.103851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991821, 36.018978, 42.967571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185963, 0.310637, 0.932160,
		0.969388, -0.212808, -0.122473,
		0.160326, 0.926400, -0.340702,
		34.039921, 36.296898, 42.865360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465401, 35.924652, 43.441471>,  <33.927692, 35.648418, 43.103851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465401, 35.924652, 43.441471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324364, 36.276207, 43.312950>,  <34.239742, 36.487141, 43.235840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324364, 36.276207, 43.312950>,  <34.465401, 35.924652, 43.441471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324364, 36.276207, 43.312950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181499, 0.401057, 0.897893,
		0.918009, 0.258271, -0.300926,
		-0.352588, 0.878891, -0.321298,
		34.218586, 36.539875, 43.216560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910080, 36.493378, 43.816174>,  <34.465401, 35.924652, 43.441471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910080, 36.493378, 43.816174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562725, 36.640144, 43.682735>,  <34.354313, 36.728203, 43.602673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562725, 36.640144, 43.682735>,  <34.910080, 36.493378, 43.816174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562725, 36.640144, 43.682735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082169, 0.556945, 0.826475,
		0.489040, 0.745107, -0.453493,
		-0.868383, 0.366916, -0.333593,
		34.302212, 36.750217, 43.582657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558224, 36.970039, 43.882904>,  <34.910080, 36.493378, 43.816174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558224, 36.970039, 43.882904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842113, 36.741146, 44.047264>,  <36.012447, 36.603809, 44.145882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842113, 36.741146, 44.047264>,  <35.558224, 36.970039, 43.882904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842113, 36.741146, 44.047264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153249, -0.694711, -0.702774,
		0.687610, 0.435805, -0.580747,
		0.709724, -0.572233, 0.410904,
		36.055031, 36.569477, 44.170536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117268, 36.916382, 43.378723>,  <35.558224, 36.970039, 43.882904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117268, 36.916382, 43.378723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162949, 36.587303, 43.601479>,  <36.190357, 36.389854, 43.735130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162949, 36.587303, 43.601479>,  <36.117268, 36.916382, 43.378723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162949, 36.587303, 43.601479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077378, -0.566217, -0.820617,
		0.990440, 0.050624, -0.128322,
		0.114201, -0.822701, 0.556886,
		36.197208, 36.340492, 43.768543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684040, 36.566227, 43.184109>,  <36.117268, 36.916382, 43.378723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684040, 36.566227, 43.184109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438080, 36.301018, 43.354897>,  <36.290504, 36.141891, 43.457371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.438080, 36.301018, 43.354897>,  <36.684040, 36.566227, 43.184109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438080, 36.301018, 43.354897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069188, -0.584694, -0.808298,
		0.785564, -0.467482, 0.405402,
		-0.614900, -0.663019, 0.426970,
		36.253609, 36.102112, 43.482986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776859, 36.009365, 42.796345>,  <36.684040, 36.566227, 43.184109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776859, 36.009365, 42.796345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480637, 35.854019, 43.015709>,  <36.302902, 35.760811, 43.147327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480637, 35.854019, 43.015709>,  <36.776859, 36.009365, 42.796345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480637, 35.854019, 43.015709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050842, -0.781369, -0.621995,
		0.670067, -0.488505, 0.558903,
		-0.740557, -0.388363, 0.548407,
		36.258469, 35.737511, 43.180229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949387, 35.358154, 42.982277>,  <36.776859, 36.009365, 42.796345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949387, 35.358154, 42.982277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550125, 35.382263, 42.979214>,  <36.310570, 35.396729, 42.977375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550125, 35.382263, 42.979214>,  <36.949387, 35.358154, 42.982277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550125, 35.382263, 42.979214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044886, -0.816425, -0.575705,
		-0.040950, -0.574298, 0.817622,
		-0.998152, 0.060275, -0.007655,
		36.250679, 35.400345, 42.976917>
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
