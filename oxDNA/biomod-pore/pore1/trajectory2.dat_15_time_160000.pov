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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<50.009285, 42.955677, 47.047867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.706093, 43.187363, 47.167854>,  <49.524178, 43.326374, 47.239845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.706093, 43.187363, 47.167854>,  <50.009285, 42.955677, 47.047867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.706093, 43.187363, 47.167854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296358, -0.715473, 0.632669,
		0.581069, 0.390652, 0.713968,
		-0.757978, 0.579214, 0.299966,
		49.478699, 43.361126, 47.257843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.946480, 42.977058, 47.785976>,  <50.009285, 42.955677, 47.047867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.946480, 42.977058, 47.785976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.585434, 43.116547, 47.685032>,  <49.368809, 43.200241, 47.624466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.585434, 43.116547, 47.685032>,  <49.946480, 42.977058, 47.785976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.585434, 43.116547, 47.685032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392915, -0.428006, 0.813897,
		0.175812, 0.833789, 0.523341,
		-0.902612, 0.348721, -0.252360,
		49.314651, 43.221165, 47.609325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.600655, 43.288574, 48.366444>,  <49.946480, 42.977058, 47.785976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.600655, 43.288574, 48.366444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.300056, 43.184998, 48.123722>,  <49.119698, 43.122852, 47.978088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.300056, 43.184998, 48.123722>,  <49.600655, 43.288574, 48.366444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.300056, 43.184998, 48.123722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513356, -0.348210, 0.784357,
		-0.414395, 0.900944, 0.128750,
		-0.751494, -0.258939, -0.606801,
		49.074608, 43.107315, 47.941681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.950329, 43.580338, 48.648884>,  <49.600655, 43.288574, 48.366444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.950329, 43.580338, 48.648884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.833092, 43.278061, 48.414612>,  <48.762749, 43.096695, 48.274048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.833092, 43.278061, 48.414612>,  <48.950329, 43.580338, 48.648884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.833092, 43.278061, 48.414612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511764, -0.393438, 0.763744,
		-0.807584, 0.523583, -0.271420,
		-0.293097, -0.755691, -0.585684,
		48.745163, 43.051353, 48.238907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.364326, 43.428730, 48.961193>,  <48.950329, 43.580338, 48.648884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.364326, 43.428730, 48.961193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.413750, 43.126190, 48.704239>,  <48.443405, 42.944664, 48.550064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.413750, 43.126190, 48.704239>,  <48.364326, 43.428730, 48.961193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.413750, 43.126190, 48.704239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544309, -0.592932, 0.593429,
		-0.829735, 0.276334, -0.484953,
		0.123560, -0.756354, -0.642388,
		48.450817, 42.899284, 48.511524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.676414, 43.139584, 48.699238>,  <48.364326, 43.428730, 48.961193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.676414, 43.139584, 48.699238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.969688, 42.867722, 48.690266>,  <48.145653, 42.704605, 48.684883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.969688, 42.867722, 48.690266>,  <47.676414, 43.139584, 48.699238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.969688, 42.867722, 48.690266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558524, -0.620677, 0.550283,
		-0.387925, -0.390934, -0.834677,
		0.733189, -0.679655, -0.022430,
		48.189644, 42.663826, 48.683537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.242260, 42.573631, 48.591736>,  <47.676414, 43.139584, 48.699238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.242260, 42.573631, 48.591736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.598450, 42.413139, 48.677589>,  <47.812164, 42.316845, 48.729099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.598450, 42.413139, 48.677589>,  <47.242260, 42.573631, 48.591736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.598450, 42.413139, 48.677589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450385, -0.709942, 0.541421,
		-0.064858, -0.578789, -0.812894,
		0.890476, -0.401231, 0.214632,
		47.865593, 42.292770, 48.741978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.296017, 41.842873, 48.372177>,  <47.242260, 42.573631, 48.591736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.296017, 41.842873, 48.372177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.570427, 41.910683, 48.655197>,  <47.735073, 41.951366, 48.825008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.570427, 41.910683, 48.655197>,  <47.296017, 41.842873, 48.372177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.570427, 41.910683, 48.655197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404907, -0.719015, 0.564860,
		0.604495, -0.674002, -0.424625,
		0.686029, 0.169522, 0.707549,
		47.776237, 41.961540, 48.867462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.614719, 41.244141, 48.521282>,  <47.296017, 41.842873, 48.372177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.614719, 41.244141, 48.521282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.679062, 41.461861, 48.850613>,  <47.717667, 41.592491, 49.048210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.679062, 41.461861, 48.850613>,  <47.614719, 41.244141, 48.521282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.679062, 41.461861, 48.850613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376675, -0.737192, 0.560949,
		0.912272, -0.400359, 0.086441,
		0.160857, 0.544298, 0.823325,
		47.727318, 41.625149, 49.097610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.640518, 40.742325, 49.075226>,  <47.614719, 41.244141, 48.521282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.640518, 40.742325, 49.075226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636513, 41.071815, 49.301987>,  <47.634109, 41.269508, 49.438042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636513, 41.071815, 49.301987>,  <47.640518, 40.742325, 49.075226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.636513, 41.071815, 49.301987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363218, -0.531203, 0.765438,
		0.931650, -0.198243, 0.304512,
		-0.010015, 0.823725, 0.566901,
		47.633507, 41.318932, 49.472057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.933357, 40.607704, 49.729847>,  <47.640518, 40.742325, 49.075226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.933357, 40.607704, 49.729847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.661499, 40.892982, 49.798473>,  <47.498383, 41.064148, 49.839649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.661499, 40.892982, 49.798473>,  <47.933357, 40.607704, 49.729847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.661499, 40.892982, 49.798473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313196, -0.493628, 0.811320,
		0.663317, 0.497678, 0.558862,
		-0.679646, 0.713196, 0.171561,
		47.457603, 41.106941, 49.849941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.945343, 40.611984, 50.460308>,  <47.933357, 40.607704, 49.729847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.945343, 40.611984, 50.460308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.625328, 40.842438, 50.393364>,  <47.433319, 40.980709, 50.353195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.625328, 40.842438, 50.393364>,  <47.945343, 40.611984, 50.460308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.625328, 40.842438, 50.393364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401741, -0.307264, 0.862666,
		0.445590, 0.757399, 0.477280,
		-0.800034, 0.576138, -0.167364,
		47.385319, 41.015278, 50.343155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.807766, 40.869888, 51.059044>,  <47.945343, 40.611984, 50.460308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.807766, 40.869888, 51.059044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.460350, 40.886841, 50.861526>,  <47.251900, 40.897015, 50.743015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.460350, 40.886841, 50.861526>,  <47.807766, 40.869888, 51.059044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.460350, 40.886841, 50.861526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491466, -0.202252, 0.847086,
		-0.063969, 0.978416, 0.196495,
		-0.868544, 0.042383, -0.493796,
		47.199787, 40.899555, 50.713387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.404938, 41.285263, 51.461678>,  <47.807766, 40.869888, 51.059044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.404938, 41.285263, 51.461678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.130913, 41.079353, 51.255497>,  <46.966496, 40.955807, 51.131786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.130913, 41.079353, 51.255497>,  <47.404938, 41.285263, 51.461678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.130913, 41.079353, 51.255497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478120, -0.216126, 0.851287,
		-0.549622, 0.829638, -0.098061,
		-0.685067, -0.514771, -0.515455,
		46.925392, 40.924923, 51.100861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.704155, 41.597248, 51.659794>,  <47.404938, 41.285263, 51.461678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.704155, 41.597248, 51.659794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.625610, 41.234482, 51.510689>,  <46.578484, 41.016823, 51.421227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.625610, 41.234482, 51.510689>,  <46.704155, 41.597248, 51.659794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.625610, 41.234482, 51.510689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659538, -0.159152, 0.734629,
		-0.725571, 0.390102, -0.566893,
		-0.196358, -0.906913, -0.372763,
		46.566704, 40.962406, 51.398861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.965321, 41.574833, 51.562092>,  <46.704155, 41.597248, 51.659794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.965321, 41.574833, 51.562092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104118, 41.202194, 51.605389>,  <46.187397, 40.978611, 51.631367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.104118, 41.202194, 51.605389>,  <45.965321, 41.574833, 51.562092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.104118, 41.202194, 51.605389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432038, -0.056338, 0.900094,
		-0.832430, -0.359091, -0.422036,
		0.346993, -0.931601, 0.108244,
		46.208218, 40.922714, 51.637863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.391850, 41.208256, 51.919075>,  <45.965321, 41.574833, 51.562092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.391850, 41.208256, 51.919075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737526, 41.010376, 51.955833>,  <45.944931, 40.891647, 51.977886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737526, 41.010376, 51.955833>,  <45.391850, 41.208256, 51.919075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737526, 41.010376, 51.955833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214245, -0.196532, 0.956804,
		-0.455271, -0.846550, -0.275828,
		0.864192, -0.494700, 0.091894,
		45.996784, 40.861965, 51.983402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.245121, 40.776215, 52.317852>,  <45.391850, 41.208256, 51.919075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.245121, 40.776215, 52.317852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642433, 40.772827, 52.364021>,  <45.880821, 40.770794, 52.391724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642433, 40.772827, 52.364021>,  <45.245121, 40.776215, 52.317852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.642433, 40.772827, 52.364021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115728, -0.061557, 0.991372,
		-0.001293, -0.998068, -0.062124,
		0.993280, -0.008471, 0.115425,
		45.940418, 40.770287, 52.398647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269497, 40.455235, 52.967220>,  <45.245121, 40.776215, 52.317852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269497, 40.455235, 52.967220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653000, 40.562012, 52.928185>,  <45.883102, 40.626080, 52.904762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653000, 40.562012, 52.928185>,  <45.269497, 40.455235, 52.967220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653000, 40.562012, 52.928185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157401, -0.212795, 0.964336,
		0.236658, -0.939925, -0.246036,
		0.958758, 0.266944, -0.097586,
		45.940628, 40.642094, 52.898911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651962, 39.920345, 53.135479>,  <45.269497, 40.455235, 52.967220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651962, 39.920345, 53.135479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.864082, 40.249809, 53.215843>,  <45.991352, 40.447487, 53.264061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.864082, 40.249809, 53.215843>,  <45.651962, 39.920345, 53.135479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864082, 40.249809, 53.215843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189215, -0.116022, 0.975057,
		0.826429, -0.555084, 0.094323,
		0.530295, 0.823663, 0.200914,
		46.023170, 40.496906, 53.276119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.925941, 39.773525, 53.692001>,  <45.651962, 39.920345, 53.135479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.925941, 39.773525, 53.692001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987862, 40.168343, 53.708889>,  <46.025013, 40.405231, 53.719021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.987862, 40.168343, 53.708889>,  <45.925941, 39.773525, 53.692001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.987862, 40.168343, 53.708889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073800, -0.031063, 0.996789,
		0.985186, -0.157416, 0.068036,
		0.154798, 0.987044, 0.042220,
		46.034302, 40.464455, 53.721554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420856, 39.870960, 54.154606>,  <45.925941, 39.773525, 53.692001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420856, 39.870960, 54.154606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.238258, 40.226234, 54.133652>,  <46.128700, 40.439400, 54.121078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.238258, 40.226234, 54.133652>,  <46.420856, 39.870960, 54.154606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.238258, 40.226234, 54.133652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025482, 0.045802, 0.998626,
		0.889361, 0.457204, 0.001724,
		-0.456496, 0.888182, -0.052385,
		46.101311, 40.492687, 54.117935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.483997, 40.125408, 54.792919>,  <46.420856, 39.870960, 54.154606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.483997, 40.125408, 54.792919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236244, 40.405403, 54.650719>,  <46.087593, 40.573399, 54.565399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236244, 40.405403, 54.650719>,  <46.483997, 40.125408, 54.792919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.236244, 40.405403, 54.650719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360626, 0.148548, 0.920805,
		0.697360, 0.698536, 0.160425,
		-0.619385, 0.699986, -0.355502,
		46.050430, 40.615398, 54.544067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.498325, 40.668541, 55.360809>,  <46.483997, 40.125408, 54.792919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.498325, 40.668541, 55.360809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.159325, 40.702950, 55.151299>,  <45.955925, 40.723595, 55.025593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.159325, 40.702950, 55.151299>,  <46.498325, 40.668541, 55.360809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.159325, 40.702950, 55.151299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530162, -0.088956, 0.843217,
		0.025945, 0.992314, 0.120998,
		-0.847499, 0.086026, -0.523779,
		45.905075, 40.728756, 54.994164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.167091, 41.198383, 55.529449>,  <46.498325, 40.668541, 55.360809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.167091, 41.198383, 55.529449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.881439, 40.965324, 55.374252>,  <45.710049, 40.825489, 55.281136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.881439, 40.965324, 55.374252>,  <46.167091, 41.198383, 55.529449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.881439, 40.965324, 55.374252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496897, 0.031534, 0.867237,
		-0.493059, 0.812113, -0.312035,
		-0.714134, -0.582647, -0.387988,
		45.667198, 40.790531, 55.257854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527775, 41.525768, 55.816784>,  <46.167091, 41.198383, 55.529449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527775, 41.525768, 55.816784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.430840, 41.162552, 55.680119>,  <45.372681, 40.944622, 55.598118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.430840, 41.162552, 55.680119>,  <45.527775, 41.525768, 55.816784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.430840, 41.162552, 55.680119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609410, -0.131550, 0.781866,
		-0.754913, 0.397686, -0.521491,
		-0.242335, -0.908042, -0.341662,
		45.358139, 40.890141, 55.577621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855633, 41.568527, 55.855827>,  <45.527775, 41.525768, 55.816784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855633, 41.568527, 55.855827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951328, 41.181114, 55.883301>,  <45.008747, 40.948666, 55.899784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.951328, 41.181114, 55.883301>,  <44.855633, 41.568527, 55.855827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951328, 41.181114, 55.883301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757378, -0.141880, 0.637377,
		-0.607572, -0.204505, -0.767485,
		0.239238, -0.968529, 0.068685,
		45.023098, 40.890556, 55.903908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292278, 41.185173, 55.922409>,  <44.855633, 41.568527, 55.855827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292278, 41.185173, 55.922409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534061, 40.900269, 56.065140>,  <44.679131, 40.729328, 56.150780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534061, 40.900269, 56.065140>,  <44.292278, 41.185173, 55.922409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534061, 40.900269, 56.065140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638383, -0.165127, 0.751798,
		-0.476553, -0.682218, -0.554505,
		0.604454, -0.712258, 0.356825,
		44.715397, 40.686592, 56.172188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805599, 40.747532, 56.046715>,  <44.292278, 41.185173, 55.922409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805599, 40.747532, 56.046715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132900, 40.642632, 56.251335>,  <44.329281, 40.579689, 56.374107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.132900, 40.642632, 56.251335>,  <43.805599, 40.747532, 56.046715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.132900, 40.642632, 56.251335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534633, -0.020130, 0.844845,
		-0.211264, -0.964789, -0.156680,
		0.818251, -0.262252, 0.511555,
		44.378376, 40.563957, 56.404800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625732, 40.185711, 56.499466>,  <43.805599, 40.747532, 56.046715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625732, 40.185711, 56.499466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961781, 40.320694, 56.669323>,  <44.163410, 40.401684, 56.771236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961781, 40.320694, 56.669323>,  <43.625732, 40.185711, 56.499466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961781, 40.320694, 56.669323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503199, 0.192688, 0.842414,
		0.202482, -0.921398, 0.331703,
		0.840114, 0.337486, 0.424631,
		44.213818, 40.421928, 56.796715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701107, 39.776802, 57.112034>,  <43.625732, 40.185711, 56.499466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701107, 39.776802, 57.112034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912395, 40.105904, 57.195999>,  <44.039169, 40.303364, 57.246380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912395, 40.105904, 57.195999>,  <43.701107, 39.776802, 57.112034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912395, 40.105904, 57.195999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526292, 0.123235, 0.841326,
		0.666333, -0.554883, 0.498102,
		0.528221, 0.822751, 0.209915,
		44.070862, 40.352730, 57.258972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805168, 39.798180, 57.766754>,  <43.701107, 39.776802, 57.112034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805168, 39.798180, 57.766754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903458, 40.180588, 57.702698>,  <43.962433, 40.410030, 57.664265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.903458, 40.180588, 57.702698>,  <43.805168, 39.798180, 57.766754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903458, 40.180588, 57.702698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415530, 0.253151, 0.873642,
		0.875759, -0.148132, 0.459460,
		0.245727, 0.956019, -0.160146,
		43.977177, 40.467392, 57.654655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041405, 40.034870, 58.430519>,  <43.805168, 39.798180, 57.766754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041405, 40.034870, 58.430519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956131, 40.365295, 58.221836>,  <43.904968, 40.563549, 58.096626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956131, 40.365295, 58.221836>,  <44.041405, 40.034870, 58.430519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956131, 40.365295, 58.221836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472003, 0.380456, 0.795277,
		0.855433, 0.415788, 0.308796,
		-0.213183, 0.826059, -0.521708,
		43.892178, 40.613113, 58.065323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960659, 40.688969, 58.982433>,  <44.041405, 40.034870, 58.430519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960659, 40.688969, 58.982433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772514, 40.815247, 58.652805>,  <43.659626, 40.891014, 58.455029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772514, 40.815247, 58.652805>,  <43.960659, 40.688969, 58.982433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772514, 40.815247, 58.652805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678669, 0.467481, 0.566454,
		0.564063, 0.825713, -0.005636,
		-0.470363, 0.315691, -0.824074,
		43.631405, 40.909954, 58.405582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661205, 41.230167, 59.091431>,  <43.960659, 40.688969, 58.982433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661205, 41.230167, 59.091431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417831, 41.149750, 58.784344>,  <43.271809, 41.101498, 58.600090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417831, 41.149750, 58.784344>,  <43.661205, 41.230167, 59.091431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417831, 41.149750, 58.784344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792820, 0.197078, 0.576713,
		0.035353, 0.959552, -0.279303,
		-0.608430, -0.201048, -0.767719,
		43.235302, 41.089436, 58.554028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269142, 41.776386, 58.956009>,  <43.661205, 41.230167, 59.091431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269142, 41.776386, 58.956009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048428, 41.482201, 58.798721>,  <42.916000, 41.305687, 58.704350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048428, 41.482201, 58.798721>,  <43.269142, 41.776386, 58.956009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048428, 41.482201, 58.798721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784493, 0.297718, 0.543999,
		-0.283026, 0.608647, -0.741246,
		-0.551785, -0.735468, -0.393217,
		42.882893, 41.261559, 58.680756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559361, 42.076981, 58.907646>,  <43.269142, 41.776386, 58.956009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559361, 42.076981, 58.907646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476608, 41.685936, 58.892242>,  <42.426956, 41.451309, 58.882999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476608, 41.685936, 58.892242>,  <42.559361, 42.076981, 58.907646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476608, 41.685936, 58.892242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728909, 0.127755, 0.672584,
		-0.652603, 0.167218, -0.739018,
		-0.206881, -0.977608, -0.038514,
		42.414543, 41.392654, 58.880688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.832855, 42.029350, 59.012974>,  <42.559361, 42.076981, 58.907646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.832855, 42.029350, 59.012974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960503, 41.657524, 59.086807>,  <42.037090, 41.434429, 59.131107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960503, 41.657524, 59.086807>,  <41.832855, 42.029350, 59.012974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960503, 41.657524, 59.086807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528474, -0.012866, 0.848852,
		-0.786690, -0.368429, -0.495358,
		0.319115, -0.929567, 0.184583,
		42.056236, 41.378654, 59.142181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332745, 41.602100, 59.073303>,  <41.832855, 42.029350, 59.012974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332745, 41.602100, 59.073303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630592, 41.434181, 59.280884>,  <41.809299, 41.333431, 59.405434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630592, 41.434181, 59.280884>,  <41.332745, 41.602100, 59.073303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630592, 41.434181, 59.280884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572023, -0.000657, 0.820237,
		-0.343992, -0.907618, -0.240622,
		0.744620, -0.419797, 0.518953,
		41.853977, 41.308243, 59.436569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101711, 41.079376, 59.438725>,  <41.332745, 41.602100, 59.073303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101711, 41.079376, 59.438725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439766, 41.133400, 59.645607>,  <41.642597, 41.165813, 59.769737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439766, 41.133400, 59.645607>,  <41.101711, 41.079376, 59.438725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439766, 41.133400, 59.645607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529615, 0.080339, 0.844425,
		0.072474, -0.987579, 0.139414,
		0.845136, 0.135034, 0.517214,
		41.693306, 41.173920, 59.800770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055851, 40.566029, 59.947052>,  <41.101711, 41.079376, 59.438725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055851, 40.566029, 59.947052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325905, 40.826584, 60.085552>,  <41.487938, 40.982918, 60.168652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325905, 40.826584, 60.085552>,  <41.055851, 40.566029, 59.947052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325905, 40.826584, 60.085552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489731, 0.044737, 0.870725,
		0.551690, -0.757425, 0.349208,
		0.675131, 0.651388, 0.346254,
		41.528442, 41.021999, 60.189426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409489, 40.257412, 60.467033>,  <41.055851, 40.566029, 59.947052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409489, 40.257412, 60.467033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434357, 40.649391, 60.542755>,  <41.449276, 40.884579, 60.588188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.434357, 40.649391, 60.542755>,  <41.409489, 40.257412, 60.467033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434357, 40.649391, 60.542755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562766, -0.122230, 0.817529,
		0.824275, -0.157359, 0.543882,
		0.062167, 0.979948, 0.189307,
		41.453007, 40.943375, 60.599548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758671, 40.428196, 61.112072>,  <41.409489, 40.257412, 60.467033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758671, 40.428196, 61.112072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507195, 40.727081, 61.025890>,  <41.356308, 40.906410, 60.974182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507195, 40.727081, 61.025890>,  <41.758671, 40.428196, 61.112072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507195, 40.727081, 61.025890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416847, -0.089920, 0.904518,
		0.656493, 0.658475, 0.368005,
		-0.628694, 0.747212, -0.215451,
		41.318588, 40.951244, 60.961254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692154, 40.852207, 61.750412>,  <41.758671, 40.428196, 61.112072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692154, 40.852207, 61.750412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367439, 40.895172, 61.520817>,  <41.172611, 40.920952, 61.383060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367439, 40.895172, 61.520817>,  <41.692154, 40.852207, 61.750412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367439, 40.895172, 61.520817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583615, -0.115697, 0.803746,
		0.019925, 0.987460, 0.156611,
		-0.811786, 0.107415, -0.573991,
		41.123905, 40.927395, 61.348621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258053, 41.376617, 62.038559>,  <41.692154, 40.852207, 61.750412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258053, 41.376617, 62.038559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122337, 41.045761, 61.859352>,  <41.040909, 40.847248, 61.751827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122337, 41.045761, 61.859352>,  <41.258053, 41.376617, 62.038559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122337, 41.045761, 61.859352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428275, -0.288221, 0.856452,
		-0.837534, 0.482461, -0.256453,
		-0.339290, -0.827139, -0.448021,
		41.020550, 40.797619, 61.724945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975998, 41.267723, 62.389771>,  <41.258053, 41.376617, 62.038559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975998, 41.267723, 62.389771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118942, 41.327637, 62.758522>,  <42.204708, 41.363583, 62.979774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118942, 41.327637, 62.758522>,  <41.975998, 41.267723, 62.389771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118942, 41.327637, 62.758522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559559, 0.755961, -0.339730,
		-0.747790, 0.637251, 0.186338,
		0.357357, 0.149779, 0.921880,
		42.226151, 41.372570, 63.035088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824608, 41.970558, 62.834965>,  <41.975998, 41.267723, 62.389771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824608, 41.970558, 62.834965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177643, 41.788361, 62.881538>,  <42.389465, 41.679043, 62.909485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.177643, 41.788361, 62.881538>,  <41.824608, 41.970558, 62.834965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.177643, 41.788361, 62.881538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470104, 0.851782, -0.231234,
		0.006147, 0.258823, 0.965905,
		0.882590, -0.455497, 0.116438,
		42.442421, 41.651711, 62.916470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275524, 42.638245, 62.585358>,  <41.824608, 41.970558, 62.834965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275524, 42.638245, 62.585358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938438, 42.848946, 62.629837>,  <41.736187, 42.975365, 62.656525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.938438, 42.848946, 62.629837>,  <42.275524, 42.638245, 62.585358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938438, 42.848946, 62.629837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011835, 0.224626, -0.974373,
		-0.538229, -0.819803, -0.195530,
		-0.842715, 0.526750, 0.111198,
		41.685623, 43.006969, 62.663197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856010, 42.600147, 61.978977>,  <42.275524, 42.638245, 62.585358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856010, 42.600147, 61.978977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714272, 42.945381, 62.122932>,  <41.629227, 43.152523, 62.209305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714272, 42.945381, 62.122932>,  <41.856010, 42.600147, 61.978977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714272, 42.945381, 62.122932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291901, 0.467723, -0.834283,
		-0.888387, -0.190573, -0.417672,
		-0.354347, 0.863086, 0.359891,
		41.607967, 43.204308, 62.230900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519779, 42.963848, 61.473076>,  <41.856010, 42.600147, 61.978977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519779, 42.963848, 61.473076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620358, 43.249260, 61.734657>,  <41.680706, 43.420506, 61.891605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.620358, 43.249260, 61.734657>,  <41.519779, 42.963848, 61.473076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620358, 43.249260, 61.734657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169093, 0.632881, -0.755559,
		-0.952985, 0.300562, 0.038484,
		0.251448, 0.713529, 0.653949,
		41.695793, 43.463318, 61.930843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077194, 43.646568, 61.375603>,  <41.519779, 42.963848, 61.473076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077194, 43.646568, 61.375603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444298, 43.718201, 61.517395>,  <41.664558, 43.761181, 61.602470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.444298, 43.718201, 61.517395>,  <41.077194, 43.646568, 61.375603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444298, 43.718201, 61.517395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204740, 0.551465, -0.808683,
		-0.340304, 0.814749, 0.469444,
		0.917755, 0.179084, 0.354477,
		41.719624, 43.771927, 61.623737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242271, 44.441360, 61.256851>,  <41.077194, 43.646568, 61.375603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242271, 44.441360, 61.256851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545670, 44.181107, 61.242104>,  <41.727707, 44.024952, 61.233257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.545670, 44.181107, 61.242104>,  <41.242271, 44.441360, 61.256851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545670, 44.181107, 61.242104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339073, 0.442324, -0.830288,
		0.556524, 0.617267, 0.556114,
		0.758492, -0.650639, -0.036865,
		41.773216, 43.985916, 61.231045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870220, 44.814953, 61.033245>,  <41.242271, 44.441360, 61.256851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870220, 44.814953, 61.033245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901394, 44.423523, 60.957016>,  <41.920097, 44.188663, 60.911278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901394, 44.423523, 60.957016>,  <41.870220, 44.814953, 61.033245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901394, 44.423523, 60.957016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400012, 0.205790, -0.893108,
		0.913190, -0.006628, 0.407480,
		0.077936, -0.978574, -0.190576,
		41.924774, 44.129951, 60.899841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666573, 44.665539, 60.895618>,  <41.870220, 44.814953, 61.033245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666573, 44.665539, 60.895618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432991, 44.390564, 60.722908>,  <42.292843, 44.225578, 60.619282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432991, 44.390564, 60.722908>,  <42.666573, 44.665539, 60.895618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432991, 44.390564, 60.722908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461768, 0.156162, -0.873146,
		0.667660, -0.709255, 0.226246,
		-0.583952, -0.687437, -0.431775,
		42.257805, 44.184334, 60.593376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180916, 44.375095, 60.451859>,  <42.666573, 44.665539, 60.895618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180916, 44.375095, 60.451859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818787, 44.252419, 60.334335>,  <42.601509, 44.178810, 60.263821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818787, 44.252419, 60.334335>,  <43.180916, 44.375095, 60.451859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818787, 44.252419, 60.334335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292720, 0.050674, -0.954855,
		0.307738, -0.950458, 0.043900,
		-0.905325, -0.306695, -0.293813,
		42.547188, 44.160412, 60.246193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242901, 44.031193, 59.781002>,  <43.180916, 44.375095, 60.451859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242901, 44.031193, 59.781002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849823, 44.099953, 59.753372>,  <42.613976, 44.141209, 59.736794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849823, 44.099953, 59.753372>,  <43.242901, 44.031193, 59.781002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849823, 44.099953, 59.753372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090058, 0.117421, -0.988990,
		-0.161896, -0.978092, -0.130869,
		-0.982690, 0.171899, -0.069075,
		42.555016, 44.151524, 59.732651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955261, 43.501167, 59.277351>,  <43.242901, 44.031193, 59.781002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955261, 43.501167, 59.277351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731396, 43.831749, 59.301838>,  <42.597076, 44.030098, 59.316528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731396, 43.831749, 59.301838>,  <42.955261, 43.501167, 59.277351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731396, 43.831749, 59.301838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053734, 0.037518, -0.997850,
		-0.826976, -0.561749, 0.023411,
		-0.559663, 0.826457, 0.061212,
		42.563496, 44.079685, 59.320202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372540, 43.363564, 58.811985>,  <42.955261, 43.501167, 59.277351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372540, 43.363564, 58.811985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378761, 43.759705, 58.867069>,  <42.382496, 43.997387, 58.900120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.378761, 43.759705, 58.867069>,  <42.372540, 43.363564, 58.811985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378761, 43.759705, 58.867069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075216, 0.136178, -0.987825,
		-0.997046, 0.025726, -0.072372,
		0.015558, 0.990350, 0.137711,
		42.383427, 44.056808, 58.908382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855228, 43.760632, 58.284966>,  <42.372540, 43.363564, 58.811985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855228, 43.760632, 58.284966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144501, 44.010536, 58.402737>,  <42.318062, 44.160477, 58.473400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144501, 44.010536, 58.402737>,  <41.855228, 43.760632, 58.284966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144501, 44.010536, 58.402737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157837, 0.265521, -0.951097,
		-0.672383, 0.734286, 0.093409,
		0.723179, 0.624758, 0.294429,
		42.361454, 44.197964, 58.491066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631569, 44.383892, 58.055744>,  <41.855228, 43.760632, 58.284966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631569, 44.383892, 58.055744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023964, 44.449768, 58.096825>,  <42.259399, 44.489296, 58.121471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023964, 44.449768, 58.096825>,  <41.631569, 44.383892, 58.055744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023964, 44.449768, 58.096825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021901, 0.431816, -0.901696,
		-0.192851, 0.886798, 0.419997,
		0.980984, 0.164694, 0.102698,
		42.318260, 44.499176, 58.127636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686310, 45.049393, 57.722919>,  <41.631569, 44.383892, 58.055744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686310, 45.049393, 57.722919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059425, 44.906097, 57.738754>,  <42.283295, 44.820118, 57.748257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059425, 44.906097, 57.738754>,  <41.686310, 45.049393, 57.722919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059425, 44.906097, 57.738754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065273, 0.059891, -0.996069,
		0.354463, 0.931706, 0.079249,
		0.932789, -0.358242, 0.039586,
		42.339264, 44.798626, 57.750629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094639, 45.588612, 57.352413>,  <41.686310, 45.049393, 57.722919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094639, 45.588612, 57.352413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298531, 45.245117, 57.373413>,  <42.420864, 45.039021, 57.386013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298531, 45.245117, 57.373413>,  <42.094639, 45.588612, 57.352413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298531, 45.245117, 57.373413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185845, 0.050326, -0.981289,
		0.840023, 0.509947, 0.185244,
		0.509728, -0.858732, 0.052496,
		42.451450, 44.987499, 57.389160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628761, 45.611767, 56.846302>,  <42.094639, 45.588612, 57.352413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628761, 45.611767, 56.846302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629028, 45.215042, 56.897377>,  <42.629189, 44.977005, 56.928024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629028, 45.215042, 56.897377>,  <42.628761, 45.611767, 56.846302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629028, 45.215042, 56.897377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179390, -0.125501, -0.975740,
		0.983778, 0.023553, 0.177838,
		0.000663, -0.991814, 0.127690,
		42.629227, 44.917500, 56.935684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187874, 45.405785, 56.383263>,  <42.628761, 45.611767, 56.846302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187874, 45.405785, 56.383263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969593, 45.077698, 56.451916>,  <42.838623, 44.880844, 56.493107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969593, 45.077698, 56.451916>,  <43.187874, 45.405785, 56.383263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969593, 45.077698, 56.451916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074994, -0.251793, -0.964871,
		0.834617, -0.513660, 0.198915,
		-0.545701, -0.820216, 0.171629,
		42.805882, 44.831635, 56.503403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620277, 44.905979, 56.284569>,  <43.187874, 45.405785, 56.383263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620277, 44.905979, 56.284569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251060, 44.758072, 56.242111>,  <43.029530, 44.669327, 56.216637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251060, 44.758072, 56.242111>,  <43.620277, 44.905979, 56.284569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251060, 44.758072, 56.242111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242894, -0.346215, -0.906167,
		0.298327, -0.862209, 0.409386,
		-0.923040, -0.369771, -0.106140,
		42.974148, 44.647141, 56.210270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703262, 44.270611, 55.946468>,  <43.620277, 44.905979, 56.284569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703262, 44.270611, 55.946468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321800, 44.363739, 55.870228>,  <43.092922, 44.419617, 55.824486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321800, 44.363739, 55.870228>,  <43.703262, 44.270611, 55.946468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321800, 44.363739, 55.870228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115887, -0.300376, -0.946755,
		-0.277669, -0.924971, 0.259477,
		-0.953661, 0.232815, -0.190598,
		43.035702, 44.433586, 55.813049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563198, 43.767811, 55.465736>,  <43.703262, 44.270611, 55.946468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563198, 43.767811, 55.465736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268929, 44.035835, 55.426147>,  <43.092365, 44.196651, 55.402393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.268929, 44.035835, 55.426147>,  <43.563198, 43.767811, 55.465736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268929, 44.035835, 55.426147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147751, -0.301360, -0.941993,
		-0.661020, -0.678380, 0.320706,
		-0.735678, 0.670061, -0.098974,
		43.048225, 44.236855, 55.396454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007488, 43.322025, 55.312565>,  <43.563198, 43.767811, 55.465736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007488, 43.322025, 55.312565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940033, 43.695457, 55.186085>,  <42.899559, 43.919518, 55.110195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.940033, 43.695457, 55.186085>,  <43.007488, 43.322025, 55.312565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940033, 43.695457, 55.186085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026480, -0.316387, -0.948260,
		-0.985323, -0.168282, 0.028632,
		-0.168634, 0.933585, -0.316200,
		42.889442, 43.975533, 55.091225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712463, 43.258713, 54.673557>,  <43.007488, 43.322025, 55.312565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712463, 43.258713, 54.673557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831734, 43.640488, 54.678371>,  <42.903294, 43.869553, 54.681259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831734, 43.640488, 54.678371>,  <42.712463, 43.258713, 54.673557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831734, 43.640488, 54.678371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306726, -0.083872, -0.948095,
		-0.903887, 0.286386, -0.317759,
		0.298173, 0.954436, 0.012031,
		42.921185, 43.926819, 54.681980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403942, 43.522694, 54.084564>,  <42.712463, 43.258713, 54.673557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403942, 43.522694, 54.084564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700264, 43.778137, 54.167881>,  <42.878056, 43.931404, 54.217873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700264, 43.778137, 54.167881>,  <42.403942, 43.522694, 54.084564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700264, 43.778137, 54.167881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323049, -0.066831, -0.944019,
		-0.588943, 0.766620, -0.255812,
		0.740801, 0.638613, 0.208296,
		42.922504, 43.969723, 54.230370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461990, 43.993725, 53.492443>,  <42.403942, 43.522694, 54.084564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461990, 43.993725, 53.492443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807705, 44.008461, 53.693100>,  <43.015133, 44.017303, 53.813496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.807705, 44.008461, 53.693100>,  <42.461990, 43.993725, 53.492443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807705, 44.008461, 53.693100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497701, 0.081701, -0.863492,
		-0.072800, 0.995976, 0.052276,
		0.864288, 0.036845, 0.501646,
		43.066990, 44.019516, 53.843594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801750, 44.699856, 53.191319>,  <42.461990, 43.993725, 53.492443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801750, 44.699856, 53.191319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038971, 44.416176, 53.343803>,  <43.181301, 44.245968, 53.435295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038971, 44.416176, 53.343803>,  <42.801750, 44.699856, 53.191319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038971, 44.416176, 53.343803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544892, 0.004940, -0.838491,
		0.592778, 0.704987, 0.389369,
		0.593049, -0.709203, 0.381213,
		43.216885, 44.203415, 53.458168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520248, 44.974060, 53.173908>,  <42.801750, 44.699856, 53.191319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520248, 44.974060, 53.173908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.535053, 44.575294, 53.201584>,  <43.543938, 44.336033, 53.218189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.535053, 44.575294, 53.201584>,  <43.520248, 44.974060, 53.173908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535053, 44.575294, 53.201584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686393, -0.024955, -0.726803,
		0.726288, 0.074389, 0.683353,
		0.037013, -0.996917, 0.069185,
		43.546158, 44.276218, 53.222340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137394, 44.878090, 53.023632>,  <43.520248, 44.974060, 53.173908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137394, 44.878090, 53.023632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013481, 44.498528, 52.999569>,  <43.939133, 44.270790, 52.985130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013481, 44.498528, 52.999569>,  <44.137394, 44.878090, 53.023632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013481, 44.498528, 52.999569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705058, -0.186804, -0.684104,
		0.637909, -0.254340, 0.726899,
		-0.309783, -0.948902, -0.060161,
		43.920547, 44.213856, 52.981522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745296, 44.546757, 52.806961>,  <44.137394, 44.878090, 53.023632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745296, 44.546757, 52.806961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475636, 44.273964, 52.693535>,  <44.313839, 44.110287, 52.625477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475636, 44.273964, 52.693535>,  <44.745296, 44.546757, 52.806961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475636, 44.273964, 52.693535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607939, -0.294348, -0.737407,
		0.419431, -0.669521, 0.613041,
		-0.674157, -0.681983, -0.283570,
		44.273388, 44.069370, 52.608463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138237, 43.923386, 52.671402>,  <44.745296, 44.546757, 52.806961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138237, 43.923386, 52.671402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783634, 43.880737, 52.491295>,  <44.570873, 43.855148, 52.383232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.783634, 43.880737, 52.491295>,  <45.138237, 43.923386, 52.671402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.783634, 43.880737, 52.491295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456948, -0.354903, -0.815624,
		-0.072835, -0.928803, 0.363345,
		-0.886507, -0.106624, -0.450264,
		44.517681, 43.848751, 52.356216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159698, 43.254776, 52.356384>,  <45.138237, 43.923386, 52.671402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159698, 43.254776, 52.356384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891083, 43.473656, 52.156540>,  <44.729912, 43.604984, 52.036633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891083, 43.473656, 52.156540>,  <45.159698, 43.254776, 52.356384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891083, 43.473656, 52.156540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351171, -0.358692, -0.864881,
		-0.652467, -0.756250, 0.048716,
		-0.671540, 0.547198, -0.499608,
		44.689621, 43.637814, 52.006657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.906101, 42.947762, 51.796307>,  <45.159698, 43.254776, 52.356384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.906101, 42.947762, 51.796307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833626, 43.330994, 51.707542>,  <44.790142, 43.560932, 51.654282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833626, 43.330994, 51.707542>,  <44.906101, 42.947762, 51.796307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833626, 43.330994, 51.707542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481081, -0.110462, -0.869689,
		-0.857749, -0.264334, -0.440902,
		-0.181186, 0.958084, -0.221914,
		44.779270, 43.618420, 51.640968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730980, 42.964127, 51.015610>,  <44.906101, 42.947762, 51.796307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730980, 42.964127, 51.015610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.827538, 43.333923, 51.133629>,  <44.885471, 43.555801, 51.204441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.827538, 43.333923, 51.133629>,  <44.730980, 42.964127, 51.015610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827538, 43.333923, 51.133629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517624, 0.134512, -0.844969,
		-0.820850, 0.356692, -0.446067,
		0.241392, 0.924488, 0.295046,
		44.899956, 43.611271, 51.222141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831223, 43.279465, 50.371635>,  <44.730980, 42.964127, 51.015610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.831223, 43.279465, 50.371635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986397, 43.549347, 50.622803>,  <45.079502, 43.711277, 50.773502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986397, 43.549347, 50.622803>,  <44.831223, 43.279465, 50.371635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986397, 43.549347, 50.622803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596915, 0.335179, -0.728936,
		-0.702282, 0.657592, -0.272715,
		0.387934, 0.674706, 0.627917,
		45.102776, 43.751759, 50.811176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875668, 43.880466, 50.026512>,  <44.831223, 43.279465, 50.371635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875668, 43.880466, 50.026512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130249, 43.955406, 50.325802>,  <45.282997, 44.000370, 50.505375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130249, 43.955406, 50.325802>,  <44.875668, 43.880466, 50.026512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130249, 43.955406, 50.325802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662182, 0.364730, -0.654589,
		-0.395534, 0.912071, 0.108074,
		0.636450, 0.187348, 0.748220,
		45.321182, 44.011612, 50.550266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051247, 44.663578, 50.004635>,  <44.875668, 43.880466, 50.026512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051247, 44.663578, 50.004635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330872, 44.433693, 50.174820>,  <45.498646, 44.295761, 50.276932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330872, 44.433693, 50.174820>,  <45.051247, 44.663578, 50.004635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330872, 44.433693, 50.174820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701399, 0.435348, -0.564369,
		0.139127, 0.692946, 0.707439,
		0.699059, -0.574716, 0.425463,
		45.540588, 44.261280, 50.302460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579071, 45.055542, 50.023056>,  <45.051247, 44.663578, 50.004635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579071, 45.055542, 50.023056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776482, 44.716728, 50.102009>,  <45.894928, 44.513439, 50.149380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776482, 44.716728, 50.102009>,  <45.579071, 45.055542, 50.023056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776482, 44.716728, 50.102009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778854, 0.329430, -0.533725,
		0.387058, 0.417145, 0.822299,
		0.493531, -0.847034, 0.197386,
		45.924541, 44.462620, 50.161224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.288055, 45.278904, 50.269451>,  <45.579071, 45.055542, 50.023056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.288055, 45.278904, 50.269451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322853, 44.902008, 50.140068>,  <46.343731, 44.675873, 50.062439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322853, 44.902008, 50.140068>,  <46.288055, 45.278904, 50.269451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322853, 44.902008, 50.140068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765091, 0.271133, -0.584057,
		0.638019, -0.196665, 0.744483,
		0.086990, -0.942237, -0.323454,
		46.348949, 44.619335, 50.043034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.942818, 45.188671, 50.399025>,  <46.288055, 45.278904, 50.269451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.942818, 45.188671, 50.399025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.839134, 44.931664, 50.110584>,  <46.776924, 44.777458, 49.937519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.839134, 44.931664, 50.110584>,  <46.942818, 45.188671, 50.399025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.839134, 44.931664, 50.110584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894543, 0.121790, -0.430070,
		0.364150, -0.756529, 0.543192,
		-0.259205, -0.642519, -0.721098,
		46.761372, 44.738907, 49.894257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.499008, 44.730011, 50.296913>,  <46.942818, 45.188671, 50.399025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.499008, 44.730011, 50.296913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.269180, 44.718155, 49.969746>,  <47.131283, 44.711040, 49.773445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.269180, 44.718155, 49.969746>,  <47.499008, 44.730011, 50.296913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.269180, 44.718155, 49.969746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811111, 0.112948, -0.573884,
		0.109393, -0.993159, -0.040854,
		-0.574572, -0.029641, -0.817917,
		47.096809, 44.709263, 49.724369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.727757, 44.223663, 49.786278>,  <47.499008, 44.730011, 50.296913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.727757, 44.223663, 49.786278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.489189, 44.461823, 49.570953>,  <47.346046, 44.604717, 49.441757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.489189, 44.461823, 49.570953>,  <47.727757, 44.223663, 49.786278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.489189, 44.461823, 49.570953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740049, 0.148194, -0.656022,
		-0.310822, -0.789643, -0.529012,
		-0.596420, 0.595401, -0.538313,
		47.310265, 44.640442, 49.409458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.019211, 44.180664, 49.078033>,  <47.727757, 44.223663, 49.786278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.019211, 44.180664, 49.078033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.787582, 44.506119, 49.057354>,  <47.648605, 44.701393, 49.044949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.787582, 44.506119, 49.057354>,  <48.019211, 44.180664, 49.078033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.787582, 44.506119, 49.057354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607346, 0.388212, -0.693125,
		-0.543885, -0.432763, -0.718961,
		-0.579068, 0.813639, -0.051695,
		47.613861, 44.750210, 49.041847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.970047, 44.234497, 48.365158>,  <48.019211, 44.180664, 49.078033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.970047, 44.234497, 48.365158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.874283, 44.596283, 48.506371>,  <47.816826, 44.813354, 48.591099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.874283, 44.596283, 48.506371>,  <47.970047, 44.234497, 48.365158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.874283, 44.596283, 48.506371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457348, 0.425790, -0.780728,
		-0.856456, -0.025455, -0.515592,
		-0.239407, 0.904464, 0.353029,
		47.802460, 44.867622, 48.612278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.652222, 44.699017, 47.774849>,  <47.970047, 44.234497, 48.365158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.652222, 44.699017, 47.774849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.775177, 44.961159, 48.050827>,  <47.848949, 45.118443, 48.216415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.775177, 44.961159, 48.050827>,  <47.652222, 44.699017, 47.774849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.775177, 44.961159, 48.050827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455572, 0.535209, -0.711340,
		-0.835445, 0.532977, -0.134045,
		0.307386, 0.655352, 0.689947,
		47.867393, 45.157764, 48.257812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.593956, 45.361366, 47.499550>,  <47.652222, 44.699017, 47.774849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.593956, 45.361366, 47.499550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.855568, 45.429619, 47.794338>,  <48.012535, 45.470570, 47.971210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.855568, 45.429619, 47.794338>,  <47.593956, 45.361366, 47.499550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.855568, 45.429619, 47.794338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564232, 0.538881, -0.625500,
		-0.503870, 0.824919, 0.256169,
		0.654031, 0.170632, 0.736972,
		48.051777, 45.480808, 48.015430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.645306, 46.086235, 47.656670>,  <47.593956, 45.361366, 47.499550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.645306, 46.086235, 47.656670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.998817, 45.959785, 47.794655>,  <48.210926, 45.883915, 47.877445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.998817, 45.959785, 47.794655>,  <47.645306, 46.086235, 47.656670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.998817, 45.959785, 47.794655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464030, 0.686810, -0.559435,
		-0.060073, 0.654490, 0.753680,
		0.883780, -0.316123, 0.344962,
		48.263950, 45.864948, 47.898144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.949272, 45.934486, 47.367706>,  <47.645306, 46.086235, 47.656670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.949272, 45.934486, 47.367706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718880, 46.049080, 47.061459>,  <46.580643, 46.117836, 46.877708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.718880, 46.049080, 47.061459>,  <46.949272, 45.934486, 47.367706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.718880, 46.049080, 47.061459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727074, 0.248560, 0.639986,
		0.373646, 0.925282, 0.065127,
		-0.575980, 0.286480, -0.765622,
		46.546085, 46.135025, 46.831772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.695408, 46.692955, 47.451069>,  <46.949272, 45.934486, 47.367706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.695408, 46.692955, 47.451069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.437508, 46.463448, 47.249046>,  <46.282768, 46.325741, 47.127834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.437508, 46.463448, 47.249046>,  <46.695408, 46.692955, 47.451069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.437508, 46.463448, 47.249046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688967, 0.150029, 0.709096,
		-0.331085, 0.805158, -0.492041,
		-0.644754, -0.573770, -0.505054,
		46.244080, 46.291317, 47.097530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.067169, 47.046032, 47.477051>,  <46.695408, 46.692955, 47.451069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.067169, 47.046032, 47.477051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951004, 46.678009, 47.371857>,  <45.881306, 46.457195, 47.308739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.951004, 46.678009, 47.371857>,  <46.067169, 47.046032, 47.477051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951004, 46.678009, 47.371857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820915, 0.098328, 0.562521,
		-0.491690, 0.379254, -0.783841,
		-0.290412, -0.920053, -0.262989,
		45.863880, 46.401993, 47.292961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.399094, 47.177105, 47.468082>,  <46.067169, 47.046032, 47.477051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.399094, 47.177105, 47.468082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.426491, 46.778351, 47.452492>,  <45.442928, 46.539097, 47.443138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.426491, 46.778351, 47.452492>,  <45.399094, 47.177105, 47.468082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426491, 46.778351, 47.452492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785671, -0.077974, 0.613710,
		-0.614841, -0.011414, -0.788569,
		0.068493, -0.996890, -0.038974,
		45.447041, 46.479282, 47.440800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.796669, 46.911213, 47.230068>,  <45.399094, 47.177105, 47.468082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.796669, 46.911213, 47.230068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971642, 46.619690, 47.440777>,  <45.076626, 46.444778, 47.567204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.971642, 46.619690, 47.440777>,  <44.796669, 46.911213, 47.230068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971642, 46.619690, 47.440777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829703, -0.101216, 0.548951,
		-0.346761, -0.677198, -0.648968,
		0.437435, -0.728806, 0.526775,
		45.102871, 46.401047, 47.598808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354492, 46.334732, 47.226936>,  <44.796669, 46.911213, 47.230068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354492, 46.334732, 47.226936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579506, 46.289665, 47.554558>,  <44.714516, 46.262627, 47.751133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579506, 46.289665, 47.554558>,  <44.354492, 46.334732, 47.226936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579506, 46.289665, 47.554558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801643, -0.316715, 0.507011,
		0.202284, -0.941806, -0.268483,
		0.562538, -0.112667, 0.819059,
		44.748268, 46.255863, 47.800274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963078, 45.873745, 47.596203>,  <44.354492, 46.334732, 47.226936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963078, 45.873745, 47.596203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235966, 45.965462, 47.873909>,  <44.399700, 46.020493, 48.040531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235966, 45.965462, 47.873909>,  <43.963078, 45.873745, 47.596203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235966, 45.965462, 47.873909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539162, -0.483589, 0.689526,
		0.493842, -0.844728, -0.206287,
		0.682220, 0.229295, 0.694262,
		44.440632, 46.034248, 48.082188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943859, 45.301517, 48.063866>,  <43.963078, 45.873745, 47.596203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943859, 45.301517, 48.063866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089478, 45.611084, 48.271145>,  <44.176849, 45.796822, 48.395512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.089478, 45.611084, 48.271145>,  <43.943859, 45.301517, 48.063866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089478, 45.611084, 48.271145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537509, -0.279804, 0.795484,
		0.760629, -0.568129, 0.314123,
		0.364044, 0.773912, 0.518201,
		44.198692, 45.843258, 48.426605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074909, 45.009972, 48.664673>,  <43.943859, 45.301517, 48.063866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074909, 45.009972, 48.664673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.071922, 45.403748, 48.734898>,  <44.070129, 45.640015, 48.777031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.071922, 45.403748, 48.734898>,  <44.074909, 45.009972, 48.664673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071922, 45.403748, 48.734898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526725, -0.153104, 0.836134,
		0.850003, -0.086230, 0.519672,
		-0.007464, 0.984441, 0.175559,
		44.069683, 45.699081, 48.787563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342705, 45.065475, 49.384872>,  <44.074909, 45.009972, 48.664673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342705, 45.065475, 49.384872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142506, 45.399719, 49.294312>,  <44.022388, 45.600266, 49.239975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142506, 45.399719, 49.294312>,  <44.342705, 45.065475, 49.384872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142506, 45.399719, 49.294312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631178, -0.173203, 0.756052,
		0.592554, 0.521298, 0.614108,
		-0.500494, 0.835613, -0.226399,
		43.992359, 45.650402, 49.226391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102180, 45.350651, 49.957397>,  <44.342705, 45.065475, 49.384872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102180, 45.350651, 49.957397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.847130, 45.542465, 49.716240>,  <43.694099, 45.657555, 49.571545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.847130, 45.542465, 49.716240>,  <44.102180, 45.350651, 49.957397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.847130, 45.542465, 49.716240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634110, 0.117674, 0.764237,
		0.437422, 0.869598, 0.229045,
		-0.637626, 0.479533, -0.602894,
		43.655842, 45.686325, 49.535370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855381, 45.991444, 50.260574>,  <44.102180, 45.350651, 49.957397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855381, 45.991444, 50.260574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565338, 45.869232, 50.013714>,  <43.391312, 45.795906, 49.865597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565338, 45.869232, 50.013714>,  <43.855381, 45.991444, 50.260574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565338, 45.869232, 50.013714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653921, 0.024528, 0.756165,
		-0.215890, 0.951868, -0.217575,
		-0.725106, -0.305526, -0.617151,
		43.347805, 45.777573, 49.828568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416279, 46.494335, 50.304691>,  <43.855381, 45.991444, 50.260574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416279, 46.494335, 50.304691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218361, 46.177406, 50.161915>,  <43.099609, 45.987251, 50.076248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.218361, 46.177406, 50.161915>,  <43.416279, 46.494335, 50.304691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218361, 46.177406, 50.161915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682123, 0.099626, 0.724419,
		-0.538409, 0.601919, -0.589753,
		-0.494797, -0.792318, -0.356943,
		43.069923, 45.939713, 50.054832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.799294, 46.793587, 50.166328>,  <43.416279, 46.494335, 50.304691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.799294, 46.793587, 50.166328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763485, 46.398888, 50.220459>,  <42.742001, 46.162067, 50.252937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763485, 46.398888, 50.220459>,  <42.799294, 46.793587, 50.166328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763485, 46.398888, 50.220459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668426, 0.160251, 0.726309,
		-0.738371, -0.025437, -0.673915,
		-0.089520, -0.986749, 0.135328,
		42.736629, 46.102863, 50.261059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088196, 46.658916, 50.211956>,  <42.799294, 46.793587, 50.166328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088196, 46.658916, 50.211956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209709, 46.311737, 50.369118>,  <42.282616, 46.103428, 50.463417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209709, 46.311737, 50.369118>,  <42.088196, 46.658916, 50.211956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209709, 46.311737, 50.369118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644968, 0.116187, 0.755326,
		-0.701237, -0.482867, -0.524505,
		0.303781, -0.867952, 0.392908,
		42.300842, 46.051353, 50.486992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466995, 46.230286, 50.415798>,  <42.088196, 46.658916, 50.211956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466995, 46.230286, 50.415798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782265, 46.111221, 50.631275>,  <41.971424, 46.039783, 50.760563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782265, 46.111221, 50.631275>,  <41.466995, 46.230286, 50.415798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782265, 46.111221, 50.631275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574101, -0.040137, 0.817800,
		-0.221806, -0.953828, -0.202522,
		0.788169, -0.297661, 0.538691,
		42.018715, 46.021923, 50.792881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183643, 45.601391, 50.911873>,  <41.466995, 46.230286, 50.415798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183643, 45.601391, 50.911873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526253, 45.735954, 51.068436>,  <41.731819, 45.816692, 51.162373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526253, 45.735954, 51.068436>,  <41.183643, 45.601391, 50.911873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526253, 45.735954, 51.068436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327557, -0.231734, 0.915972,
		0.398846, -0.912758, -0.088291,
		0.856521, 0.336411, 0.391407,
		41.783211, 45.836876, 51.185856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286907, 45.205257, 51.490570>,  <41.183643, 45.601391, 50.911873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286907, 45.205257, 51.490570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533577, 45.506424, 51.582512>,  <41.681580, 45.687122, 51.637676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533577, 45.506424, 51.582512>,  <41.286907, 45.205257, 51.490570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533577, 45.506424, 51.582512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159594, -0.166345, 0.973067,
		0.770873, -0.636746, 0.017581,
		0.616672, 0.752916, 0.229852,
		41.718578, 45.732300, 51.651466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769108, 44.876575, 51.885292>,  <41.286907, 45.205257, 51.490570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769108, 44.876575, 51.885292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768272, 45.262520, 51.990398>,  <41.767773, 45.494087, 52.053463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768272, 45.262520, 51.990398>,  <41.769108, 44.876575, 51.885292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768272, 45.262520, 51.990398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291104, -0.251969, 0.922914,
		0.956689, -0.074563, 0.281401,
		-0.002089, 0.964858, 0.262761,
		41.767647, 45.551979, 52.069225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193207, 44.993160, 52.482365>,  <41.769108, 44.876575, 51.885292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193207, 44.993160, 52.482365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941483, 45.303993, 52.478104>,  <41.790447, 45.490494, 52.475548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941483, 45.303993, 52.478104>,  <42.193207, 44.993160, 52.482365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941483, 45.303993, 52.478104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350418, -0.271488, 0.896383,
		0.693669, 0.567836, 0.443153,
		-0.629309, 0.777082, -0.010657,
		41.752689, 45.537117, 52.474907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203167, 45.192509, 53.198360>,  <42.193207, 44.993160, 52.482365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203167, 45.192509, 53.198360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901535, 45.401039, 53.038567>,  <41.720558, 45.526157, 52.942688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901535, 45.401039, 53.038567>,  <42.203167, 45.192509, 53.198360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901535, 45.401039, 53.038567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477622, -0.017762, 0.878386,
		0.450827, 0.853174, 0.262389,
		-0.754077, 0.521323, -0.399488,
		41.675312, 45.557438, 52.918720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132778, 45.616089, 53.696812>,  <42.203167, 45.192509, 53.198360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132778, 45.616089, 53.696812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786278, 45.610420, 53.497047>,  <41.578377, 45.607018, 53.377190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.786278, 45.610420, 53.497047>,  <42.132778, 45.616089, 53.696812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786278, 45.610420, 53.497047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495690, 0.149324, 0.855567,
		0.062446, 0.988687, -0.136378,
		-0.866252, -0.014175, -0.499407,
		41.526402, 45.606167, 53.347225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711365, 46.226933, 53.873108>,  <42.132778, 45.616089, 53.696812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711365, 46.226933, 53.873108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450768, 45.948112, 53.753319>,  <41.294411, 45.780819, 53.681446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450768, 45.948112, 53.753319>,  <41.711365, 46.226933, 53.873108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450768, 45.948112, 53.753319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467330, 0.057768, 0.882194,
		-0.597632, 0.714693, -0.363387,
		-0.651490, -0.697049, -0.299473,
		41.255322, 45.738998, 53.663475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054390, 46.421780, 54.187767>,  <41.711365, 46.226933, 53.873108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054390, 46.421780, 54.187767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994698, 46.042259, 54.076408>,  <40.958881, 45.814548, 54.009594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.994698, 46.042259, 54.076408>,  <41.054390, 46.421780, 54.187767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994698, 46.042259, 54.076408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583914, -0.142657, 0.799183,
		-0.797982, 0.281824, -0.532729,
		-0.149231, -0.948802, -0.278398,
		40.949928, 45.757618, 53.992889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300018, 46.188129, 54.361629>,  <41.054390, 46.421780, 54.187767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300018, 46.188129, 54.361629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513092, 45.849838, 54.348984>,  <40.640938, 45.646866, 54.341396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513092, 45.849838, 54.348984>,  <40.300018, 46.188129, 54.361629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513092, 45.849838, 54.348984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467823, -0.325377, 0.821749,
		-0.705260, -0.422943, -0.568972,
		0.532683, -0.845724, -0.031613,
		40.672897, 45.596123, 54.339500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772923, 45.693260, 54.368713>,  <40.300018, 46.188129, 54.361629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772923, 45.693260, 54.368713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107117, 45.494385, 54.462326>,  <40.307632, 45.375061, 54.518494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107117, 45.494385, 54.462326>,  <39.772923, 45.693260, 54.368713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107117, 45.494385, 54.462326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500579, -0.512912, 0.697382,
		-0.226694, -0.699802, -0.677412,
		0.835482, -0.497190, 0.234032,
		40.357761, 45.345226, 54.532536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645939, 44.935326, 54.370724>,  <39.772923, 45.693260, 54.368713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645939, 44.935326, 54.370724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967712, 45.007805, 54.597015>,  <40.160778, 45.051292, 54.732788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967712, 45.007805, 54.597015>,  <39.645939, 44.935326, 54.370724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967712, 45.007805, 54.597015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401690, -0.535678, 0.742761,
		0.437636, -0.824752, -0.358133,
		0.804438, 0.181200, 0.565727,
		40.209045, 45.062164, 54.766735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680721, 44.354797, 54.604332>,  <39.645939, 44.935326, 54.370724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680721, 44.354797, 54.604332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907799, 44.554596, 54.866089>,  <40.044044, 44.674473, 55.023144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907799, 44.554596, 54.866089>,  <39.680721, 44.354797, 54.604332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907799, 44.554596, 54.866089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522646, -0.395478, 0.755273,
		0.636050, -0.770782, 0.036545,
		0.567698, 0.499492, 0.654390,
		40.078110, 44.704445, 55.062405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984833, 43.923122, 55.064499>,  <39.680721, 44.354797, 54.604332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984833, 43.923122, 55.064499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950123, 44.267555, 55.264904>,  <39.929298, 44.474213, 55.385147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950123, 44.267555, 55.264904>,  <39.984833, 43.923122, 55.064499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950123, 44.267555, 55.264904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511846, -0.469991, 0.719112,
		0.854684, -0.194044, 0.481521,
		-0.086771, 0.861078, 0.501014,
		39.924091, 44.525879, 55.415207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211903, 43.790752, 55.786541>,  <39.984833, 43.923122, 55.064499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211903, 43.790752, 55.786541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002731, 44.129982, 55.820763>,  <39.877228, 44.333519, 55.841293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002731, 44.129982, 55.820763>,  <40.211903, 43.790752, 55.786541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002731, 44.129982, 55.820763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669666, -0.470856, 0.574319,
		0.527346, 0.243038, 0.814149,
		-0.522928, 0.848073, 0.085550,
		39.845852, 44.384403, 55.846428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003838, 43.795017, 56.506897>,  <40.211903, 43.790752, 55.786541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003838, 43.795017, 56.506897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767220, 44.048843, 56.307941>,  <39.625248, 44.201141, 56.188568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767220, 44.048843, 56.307941>,  <40.003838, 43.795017, 56.506897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767220, 44.048843, 56.307941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773765, -0.273408, 0.571433,
		0.226625, 0.722890, 0.652741,
		-0.591548, 0.634569, -0.497386,
		39.589756, 44.239216, 56.158726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633518, 44.092415, 57.084206>,  <40.003838, 43.795017, 56.506897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633518, 44.092415, 57.084206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423225, 44.118103, 56.744915>,  <39.297050, 44.133518, 56.541340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423225, 44.118103, 56.744915>,  <39.633518, 44.092415, 57.084206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423225, 44.118103, 56.744915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850483, -0.059620, 0.522613,
		-0.017007, 0.996153, 0.085964,
		-0.525728, 0.064223, -0.848225,
		39.265507, 44.137371, 56.490448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167797, 44.396744, 57.342113>,  <39.633518, 44.092415, 57.084206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167797, 44.396744, 57.342113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993050, 44.292580, 56.997711>,  <38.888203, 44.230080, 56.791069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993050, 44.292580, 56.997711>,  <39.167797, 44.396744, 57.342113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993050, 44.292580, 56.997711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894074, 0.020466, 0.447451,
		-0.098900, 0.965281, -0.241768,
		-0.436864, -0.260411, -0.861009,
		38.861992, 44.214455, 56.739410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538380, 44.763725, 57.337032>,  <39.167797, 44.396744, 57.342113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538380, 44.763725, 57.337032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473312, 44.465744, 57.078239>,  <38.434273, 44.286957, 56.922962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473312, 44.465744, 57.078239>,  <38.538380, 44.763725, 57.337032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473312, 44.465744, 57.078239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938210, -0.086216, 0.335155,
		-0.305454, 0.661526, -0.684895,
		-0.162664, -0.744950, -0.646985,
		38.424515, 44.242260, 56.884144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898720, 44.882153, 57.093071>,  <38.538380, 44.763725, 57.337032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898720, 44.882153, 57.093071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956646, 44.494705, 57.012276>,  <37.991402, 44.262238, 56.963799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956646, 44.494705, 57.012276>,  <37.898720, 44.882153, 57.093071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956646, 44.494705, 57.012276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953128, -0.191370, 0.234360,
		-0.265660, 0.158579, -0.950935,
		0.144816, -0.968623, -0.201985,
		38.000092, 44.204117, 56.951679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285648, 44.681171, 56.757221>,  <37.898720, 44.882153, 57.093071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285648, 44.681171, 56.757221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432819, 44.334335, 56.891552>,  <37.521122, 44.126232, 56.972149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432819, 44.334335, 56.891552>,  <37.285648, 44.681171, 56.757221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432819, 44.334335, 56.891552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915464, -0.274492, 0.294245,
		-0.162957, -0.415697, -0.894785,
		0.367928, -0.867093, 0.335825,
		37.543198, 44.074207, 56.992298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789707, 44.182564, 56.514530>,  <37.285648, 44.681171, 56.757221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789707, 44.182564, 56.514530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990692, 43.979660, 56.794594>,  <37.111282, 43.857918, 56.962631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.990692, 43.979660, 56.794594>,  <36.789707, 44.182564, 56.514530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990692, 43.979660, 56.794594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860734, -0.369964, 0.349662,
		0.081666, -0.778344, -0.622505,
		0.502461, -0.507256, 0.700161,
		37.141430, 43.827484, 57.004642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547527, 43.606045, 56.427044>,  <36.789707, 44.182564, 56.514530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547527, 43.606045, 56.427044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699795, 43.600235, 56.796883>,  <36.791157, 43.596748, 57.018787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699795, 43.600235, 56.796883>,  <36.547527, 43.606045, 56.427044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699795, 43.600235, 56.796883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867079, -0.353071, 0.351446,
		0.321344, -0.935484, -0.146998,
		0.380673, -0.014524, 0.924596,
		36.813995, 43.595879, 57.074261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940701, 43.072674, 56.836075>,  <36.547527, 43.606045, 56.427044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940701, 43.072674, 56.836075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625828, 42.832245, 56.891289>,  <36.436905, 42.687988, 56.924419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625828, 42.832245, 56.891289>,  <36.940701, 43.072674, 56.836075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625828, 42.832245, 56.891289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243231, -0.508266, -0.826138,
		0.566731, -0.616745, 0.546298,
		-0.787181, -0.601075, 0.138039,
		36.389675, 42.651924, 56.932701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232414, 42.427090, 56.926792>,  <36.940701, 43.072674, 56.836075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232414, 42.427090, 56.926792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869530, 42.420433, 56.758652>,  <36.651798, 42.416439, 56.657768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869530, 42.420433, 56.758652>,  <37.232414, 42.427090, 56.926792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869530, 42.420433, 56.758652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367128, -0.519180, -0.771796,
		-0.205389, -0.854503, 0.477117,
		-0.907211, -0.016644, -0.420346,
		36.597366, 42.415440, 56.632549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189842, 41.730595, 56.617336>,  <37.232414, 42.427090, 56.926792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189842, 41.730595, 56.617336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920319, 41.967308, 56.440353>,  <36.758606, 42.109337, 56.334164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920319, 41.967308, 56.440353>,  <37.189842, 41.730595, 56.617336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920319, 41.967308, 56.440353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360782, -0.259080, -0.895943,
		-0.644839, -0.763326, -0.038935,
		-0.673809, 0.591786, -0.442459,
		36.718174, 42.144844, 56.307617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196453, 41.535549, 55.908329>,  <37.189842, 41.730595, 56.617336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196453, 41.535549, 55.908329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918922, 41.822563, 55.883858>,  <36.752403, 41.994774, 55.869175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918922, 41.822563, 55.883858>,  <37.196453, 41.535549, 55.908329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918922, 41.822563, 55.883858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021726, -0.105766, -0.994154,
		-0.719815, -0.688440, 0.088973,
		-0.693826, 0.717540, -0.061175,
		36.710773, 42.037827, 55.865505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718491, 41.320381, 55.349365>,  <37.196453, 41.535549, 55.908329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718491, 41.320381, 55.349365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724243, 41.715111, 55.413818>,  <36.727695, 41.951950, 55.452492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724243, 41.715111, 55.413818>,  <36.718491, 41.320381, 55.349365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724243, 41.715111, 55.413818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247020, 0.152652, -0.956911,
		-0.968904, 0.053564, -0.241571,
		0.014379, 0.986827, 0.161137,
		36.728558, 42.011158, 55.462158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269768, 41.606697, 54.780029>,  <36.718491, 41.320381, 55.349365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269768, 41.606697, 54.780029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532303, 41.870399, 54.926785>,  <36.689823, 42.028622, 55.014835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532303, 41.870399, 54.926785>,  <36.269768, 41.606697, 54.780029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532303, 41.870399, 54.926785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336812, 0.179109, -0.924379,
		-0.675113, 0.730278, -0.104488,
		0.656339, 0.659253, 0.366885,
		36.729206, 42.068176, 55.036850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247353, 42.216255, 54.339275>,  <36.269768, 41.606697, 54.780029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247353, 42.216255, 54.339275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597885, 42.262085, 54.526428>,  <36.808205, 42.289581, 54.638721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597885, 42.262085, 54.526428>,  <36.247353, 42.216255, 54.339275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597885, 42.262085, 54.526428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396469, 0.380113, -0.835659,
		-0.273592, 0.917816, 0.287681,
		0.876333, 0.114573, 0.467881,
		36.860786, 42.296455, 54.666794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540195, 42.797485, 53.991875>,  <36.247353, 42.216255, 54.339275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540195, 42.797485, 53.991875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859001, 42.628174, 54.164204>,  <37.050285, 42.526588, 54.267601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859001, 42.628174, 54.164204>,  <36.540195, 42.797485, 53.991875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859001, 42.628174, 54.164204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594795, 0.426287, -0.681541,
		0.104828, 0.799447, 0.591520,
		0.797013, -0.423277, 0.430821,
		37.098106, 42.501190, 54.293449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000069, 43.332859, 54.066898>,  <36.540195, 42.797485, 53.991875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000069, 43.332859, 54.066898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234798, 43.011261, 54.105324>,  <37.375637, 42.818302, 54.128380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234798, 43.011261, 54.105324>,  <37.000069, 43.332859, 54.066898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234798, 43.011261, 54.105324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635657, 0.383935, -0.669727,
		0.501574, 0.454078, 0.736367,
		0.586825, -0.803995, 0.096066,
		37.410847, 42.770061, 54.134144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658939, 43.646721, 54.084148>,  <37.000069, 43.332859, 54.066898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658939, 43.646721, 54.084148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704002, 43.266434, 53.968605>,  <37.731041, 43.038261, 53.899281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704002, 43.266434, 53.968605>,  <37.658939, 43.646721, 54.084148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704002, 43.266434, 53.968605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797537, 0.259909, -0.544410,
		0.592659, -0.169044, 0.787515,
		0.112653, -0.950722, -0.288857,
		37.737797, 42.981216, 53.881947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365925, 43.562874, 54.046597>,  <37.658939, 43.646721, 54.084148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365925, 43.562874, 54.046597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208130, 43.268341, 53.826706>,  <38.113453, 43.091621, 53.694771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208130, 43.268341, 53.826706>,  <38.365925, 43.562874, 54.046597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208130, 43.268341, 53.826706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729449, 0.112883, -0.674657,
		0.558827, -0.667135, 0.492587,
		-0.394483, -0.736334, -0.549723,
		38.089787, 43.047440, 53.661789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941219, 43.125229, 53.836761>,  <38.365925, 43.562874, 54.046597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941219, 43.125229, 53.836761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637100, 43.076843, 53.581474>,  <38.454628, 43.047810, 53.428303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637100, 43.076843, 53.581474>,  <38.941219, 43.125229, 53.836761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637100, 43.076843, 53.581474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610687, 0.201755, -0.765740,
		0.221398, -0.971936, -0.079515,
		-0.760293, -0.120974, -0.638217,
		38.409012, 43.040554, 53.390011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143898, 42.684818, 53.311359>,  <38.941219, 43.125229, 53.836761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143898, 42.684818, 53.311359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853050, 42.906677, 53.149540>,  <38.678539, 43.039791, 53.052448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853050, 42.906677, 53.149540>,  <39.143898, 42.684818, 53.311359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853050, 42.906677, 53.149540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605598, 0.240676, -0.758503,
		-0.323332, -0.796521, -0.510892,
		-0.727123, 0.554643, -0.404553,
		38.634914, 43.073071, 53.028175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207371, 42.589149, 52.569321>,  <39.143898, 42.684818, 53.311359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207371, 42.589149, 52.569321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976780, 42.915916, 52.562119>,  <38.838425, 43.111977, 52.557796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976780, 42.915916, 52.562119>,  <39.207371, 42.589149, 52.569321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976780, 42.915916, 52.562119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499217, 0.334673, -0.799235,
		-0.646881, -0.469730, -0.600749,
		-0.576479, 0.816914, -0.018004,
		38.803837, 43.160992, 52.556717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904251, 42.578938, 51.930893>,  <39.207371, 42.589149, 52.569321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904251, 42.578938, 51.930893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906319, 42.953835, 52.070351>,  <38.907558, 43.178772, 52.154026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906319, 42.953835, 52.070351>,  <38.904251, 42.578938, 51.930893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906319, 42.953835, 52.070351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327402, 0.327850, -0.886184,
		-0.944871, 0.118729, -0.305160,
		0.005169, 0.937239, 0.348648,
		38.907871, 43.235008, 52.174946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538944, 43.020081, 51.373508>,  <38.904251, 42.578938, 51.930893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538944, 43.020081, 51.373508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797935, 43.229530, 51.594994>,  <38.953331, 43.355198, 51.727886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.797935, 43.229530, 51.594994>,  <38.538944, 43.020081, 51.373508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797935, 43.229530, 51.594994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456494, 0.315321, -0.831977,
		-0.610239, 0.791450, -0.034868,
		0.647474, 0.523622, 0.553713,
		38.992176, 43.386616, 51.761108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750237, 43.463188, 50.893375>,  <38.538944, 43.020081, 51.373508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750237, 43.463188, 50.893375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997551, 43.546494, 51.196522>,  <39.145939, 43.596478, 51.378410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997551, 43.546494, 51.196522>,  <38.750237, 43.463188, 50.893375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997551, 43.546494, 51.196522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672939, 0.357897, -0.647350,
		-0.406053, 0.910240, 0.081136,
		0.618283, 0.208259, 0.757862,
		39.183037, 43.608971, 51.423882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871975, 44.173473, 50.786232>,  <38.750237, 43.463188, 50.893375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871975, 44.173473, 50.786232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183258, 44.046379, 51.002907>,  <39.370029, 43.970123, 51.132912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183258, 44.046379, 51.002907>,  <38.871975, 44.173473, 50.786232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183258, 44.046379, 51.002907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618707, 0.535765, -0.574593,
		-0.107648, 0.782303, 0.613525,
		0.778211, -0.317739, 0.541691,
		39.416721, 43.951057, 51.165413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324215, 44.723347, 50.884251>,  <38.871975, 44.173473, 50.786232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324215, 44.723347, 50.884251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550735, 44.395943, 50.922905>,  <39.686649, 44.199501, 50.946098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.550735, 44.395943, 50.922905>,  <39.324215, 44.723347, 50.884251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550735, 44.395943, 50.922905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593338, 0.323496, -0.737089,
		0.572055, 0.474753, 0.668851,
		0.566306, -0.818511, 0.096632,
		39.720627, 44.150391, 50.951893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922943, 45.005955, 50.674103>,  <39.324215, 44.723347, 50.884251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922943, 45.005955, 50.674103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001640, 44.615112, 50.641693>,  <40.048859, 44.380608, 50.622250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001640, 44.615112, 50.641693>,  <39.922943, 45.005955, 50.674103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001640, 44.615112, 50.641693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513818, 0.173132, -0.840248,
		0.835035, 0.123681, 0.536115,
		0.196741, -0.977102, -0.081022,
		40.060661, 44.321983, 50.617386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.621025, 44.930779, 50.614052>,  <39.922943, 45.005955, 50.674103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.621025, 44.930779, 50.614052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486687, 44.582443, 50.470467>,  <40.406086, 44.373444, 50.384315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486687, 44.582443, 50.470467>,  <40.621025, 44.930779, 50.614052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486687, 44.582443, 50.470467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748919, -0.015749, -0.662475,
		0.571253, -0.491321, 0.657475,
		-0.335842, -0.870836, -0.358963,
		40.385933, 44.321194, 50.362778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206852, 44.539604, 50.489487>,  <40.621025, 44.930779, 50.614052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206852, 44.539604, 50.489487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926945, 44.384071, 50.249775>,  <40.759003, 44.290752, 50.105946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926945, 44.384071, 50.249775>,  <41.206852, 44.539604, 50.489487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926945, 44.384071, 50.249775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671965, -0.073536, -0.736923,
		0.242471, -0.918369, 0.312740,
		-0.699764, -0.388833, -0.599282,
		40.717014, 44.267422, 50.069992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568398, 44.077633, 50.150406>,  <41.206852, 44.539604, 50.489487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568398, 44.077633, 50.150406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231667, 44.140724, 49.943928>,  <41.029629, 44.178581, 49.820042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231667, 44.140724, 49.943928>,  <41.568398, 44.077633, 50.150406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231667, 44.140724, 49.943928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510965, -0.075263, -0.856300,
		-0.173919, -0.984609, -0.017239,
		-0.841823, 0.157735, -0.516191,
		40.979118, 44.188046, 49.789070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519306, 43.461922, 49.705269>,  <41.568398, 44.077633, 50.150406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519306, 43.461922, 49.705269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316372, 43.767464, 49.545700>,  <41.194611, 43.950790, 49.449959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316372, 43.767464, 49.545700>,  <41.519306, 43.461922, 49.705269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316372, 43.767464, 49.545700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593674, -0.025740, -0.804294,
		-0.624633, -0.644874, -0.440422,
		-0.507332, 0.763856, -0.398923,
		41.164173, 43.996620, 49.426022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460155, 43.301849, 49.052132>,  <41.519306, 43.461922, 49.705269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460155, 43.301849, 49.052132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395214, 43.696419, 49.042210>,  <41.356251, 43.933159, 49.036255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395214, 43.696419, 49.042210>,  <41.460155, 43.301849, 49.052132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395214, 43.696419, 49.042210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504910, 0.061448, -0.860982,
		-0.847766, -0.152306, -0.508030,
		-0.162351, 0.986421, -0.024807,
		41.346508, 43.992344, 49.034767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269562, 43.425072, 48.333881>,  <41.460155, 43.301849, 49.052132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269562, 43.425072, 48.333881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338703, 43.798103, 48.460640>,  <41.380188, 44.021923, 48.536694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338703, 43.798103, 48.460640>,  <41.269562, 43.425072, 48.333881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338703, 43.798103, 48.460640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539825, 0.179415, -0.822435,
		-0.823839, 0.313227, -0.472417,
		0.172850, 0.932576, 0.316898,
		41.390556, 44.077877, 48.555710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077454, 43.928505, 47.801785>,  <41.269562, 43.425072, 48.333881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077454, 43.928505, 47.801785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347412, 44.117226, 48.028736>,  <41.509388, 44.230457, 48.164906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347412, 44.117226, 48.028736>,  <41.077454, 43.928505, 47.801785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347412, 44.117226, 48.028736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514745, 0.249916, -0.820109,
		-0.528723, 0.845546, -0.074188,
		0.674899, 0.471798, 0.567378,
		41.549881, 44.258766, 48.198948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097240, 44.635849, 47.558136>,  <41.077454, 43.928505, 47.801785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097240, 44.635849, 47.558136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438309, 44.528496, 47.737438>,  <41.642948, 44.464085, 47.845020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438309, 44.528496, 47.737438>,  <41.097240, 44.635849, 47.558136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438309, 44.528496, 47.737438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474142, 0.037155, -0.879664,
		0.219429, 0.962596, 0.158931,
		0.852667, -0.268379, 0.448255,
		41.694107, 44.447983, 47.871914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668762, 45.088268, 47.277954>,  <41.097240, 44.635849, 47.558136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668762, 45.088268, 47.277954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857185, 44.790092, 47.466599>,  <41.970242, 44.611187, 47.579784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.857185, 44.790092, 47.466599>,  <41.668762, 45.088268, 47.277954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857185, 44.790092, 47.466599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753640, 0.062274, -0.654331,
		0.458398, 0.663654, 0.591131,
		0.471062, -0.745443, 0.471609,
		41.998505, 44.566460, 47.608082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299004, 45.282139, 47.444660>,  <41.668762, 45.088268, 47.277954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299004, 45.282139, 47.444660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354965, 44.886513, 47.463326>,  <42.388542, 44.649136, 47.474525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354965, 44.886513, 47.463326>,  <42.299004, 45.282139, 47.444660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354965, 44.886513, 47.463326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821659, 0.089665, -0.562882,
		0.552543, 0.117089, 0.825219,
		0.139900, -0.989065, 0.046663,
		42.396935, 44.589794, 47.477325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026638, 45.259884, 47.401806>,  <42.299004, 45.282139, 47.444660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026638, 45.259884, 47.401806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918427, 44.879021, 47.344933>,  <42.853500, 44.650505, 47.310810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.918427, 44.879021, 47.344933>,  <43.026638, 45.259884, 47.401806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918427, 44.879021, 47.344933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774194, -0.127384, -0.619997,
		0.572223, -0.277800, 0.771614,
		-0.270526, -0.952156, -0.142179,
		42.837269, 44.593372, 47.302280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651493, 44.780693, 47.566246>,  <43.026638, 45.259884, 47.401806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651493, 44.780693, 47.566246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.397049, 44.590393, 47.323257>,  <43.244381, 44.476212, 47.177464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.397049, 44.590393, 47.323257>,  <43.651493, 44.780693, 47.566246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397049, 44.590393, 47.323257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770439, -0.434770, -0.466261,
		-0.042287, -0.764615, 0.643099,
		-0.636110, -0.475751, -0.607474,
		43.206215, 44.447666, 47.141014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968620, 44.108250, 47.569828>,  <43.651493, 44.780693, 47.566246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968620, 44.108250, 47.569828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732571, 44.154350, 47.250214>,  <43.590939, 44.182011, 47.058445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732571, 44.154350, 47.250214>,  <43.968620, 44.108250, 47.569828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732571, 44.154350, 47.250214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683152, -0.456100, -0.570330,
		-0.430176, -0.882434, 0.190419,
		-0.590128, 0.115257, -0.799040,
		43.555531, 44.188927, 47.010502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.032490, 43.464451, 47.140457>,  <43.968620, 44.108250, 47.569828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.032490, 43.464451, 47.140457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888237, 43.735512, 46.884102>,  <43.801685, 43.898148, 46.730289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888237, 43.735512, 46.884102>,  <44.032490, 43.464451, 47.140457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888237, 43.735512, 46.884102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559393, -0.392688, -0.729983,
		-0.746341, -0.621763, -0.237456,
		-0.360631, 0.677648, -0.640889,
		43.780048, 43.938805, 46.691833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940281, 43.079224, 46.519596>,  <44.032490, 43.464451, 47.140457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940281, 43.079224, 46.519596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950977, 43.462250, 46.404800>,  <43.957394, 43.692066, 46.335922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950977, 43.462250, 46.404800>,  <43.940281, 43.079224, 46.519596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950977, 43.462250, 46.404800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548222, -0.254112, -0.796793,
		-0.835905, -0.136029, -0.531751,
		0.026737, 0.957561, -0.286988,
		43.959000, 43.749519, 46.318703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870403, 43.015995, 45.798553>,  <43.940281, 43.079224, 46.519596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870403, 43.015995, 45.798553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997704, 43.393990, 45.828796>,  <44.074085, 43.620785, 45.846943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997704, 43.393990, 45.828796>,  <43.870403, 43.015995, 45.798553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.997704, 43.393990, 45.828796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516455, -0.105941, -0.849736,
		-0.794979, 0.309477, -0.521759,
		0.318249, 0.944987, 0.075610,
		44.093178, 43.677486, 45.851479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713268, 43.401127, 45.224346>,  <43.870403, 43.015995, 45.798553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713268, 43.401127, 45.224346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016697, 43.607765, 45.383194>,  <44.198753, 43.731747, 45.478500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016697, 43.607765, 45.383194>,  <43.713268, 43.401127, 45.224346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016697, 43.607765, 45.383194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373941, 0.153963, -0.914584,
		-0.533610, 0.842275, -0.076384,
		0.758570, 0.516593, 0.397118,
		44.244267, 43.762745, 45.502331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797535, 44.050434, 44.847279>,  <43.713268, 43.401127, 45.224346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797535, 44.050434, 44.847279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146366, 43.952591, 45.016819>,  <44.355663, 43.893887, 45.118542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146366, 43.952591, 45.016819>,  <43.797535, 44.050434, 44.847279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146366, 43.952591, 45.016819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426513, -0.044741, -0.903374,
		0.239932, 0.968590, 0.065310,
		0.872077, -0.244604, 0.423851,
		44.407990, 43.879211, 45.143974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.292107, 44.502628, 44.478374>,  <43.797535, 44.050434, 44.847279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.292107, 44.502628, 44.478374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.541149, 44.242195, 44.652020>,  <44.690575, 44.085938, 44.756207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.541149, 44.242195, 44.652020>,  <44.292107, 44.502628, 44.478374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.541149, 44.242195, 44.652020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624560, 0.079213, -0.776949,
		0.471469, 0.754864, 0.455957,
		0.622609, -0.651080, 0.434112,
		44.727932, 44.046871, 44.782253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984894, 44.802231, 44.622681>,  <44.292107, 44.502628, 44.478374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984894, 44.802231, 44.622681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.061066, 44.409988, 44.604187>,  <45.106770, 44.174641, 44.593090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.061066, 44.409988, 44.604187>,  <44.984894, 44.802231, 44.622681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.061066, 44.409988, 44.604187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663436, 0.163270, -0.730203,
		0.723594, 0.108379, 0.681664,
		0.190434, -0.980610, -0.046239,
		45.118195, 44.115807, 44.590317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.949444, 39.249657, 52.604897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.282932, 39.192909, 52.818356>,  <42.483025, 39.158859, 52.946430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.282932, 39.192909, 52.818356>,  <41.949444, 39.249657, 52.604897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282932, 39.192909, 52.818356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526606, -0.086450, -0.845702,
		0.166113, 0.986103, 0.002635,
		0.833722, -0.141870, 0.533648,
		42.533051, 39.150349, 52.978451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458076, 39.790680, 52.470016>,  <41.949444, 39.249657, 52.604897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458076, 39.790680, 52.470016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.659904, 39.475883, 52.612034>,  <42.781002, 39.287006, 52.697243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.659904, 39.475883, 52.612034>,  <42.458076, 39.790680, 52.470016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659904, 39.475883, 52.612034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675661, 0.103926, -0.729851,
		0.537487, 0.608151, 0.584176,
		0.504570, -0.786989, 0.355045,
		42.811275, 39.239788, 52.718548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119549, 40.016193, 52.455093>,  <42.458076, 39.790680, 52.470016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119549, 40.016193, 52.455093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.127022, 39.616287, 52.459496>,  <43.131504, 39.376343, 52.462135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.127022, 39.616287, 52.459496>,  <43.119549, 40.016193, 52.455093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127022, 39.616287, 52.459496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743476, 0.006531, -0.668731,
		0.668502, 0.020671, 0.743423,
		0.018679, -0.999765, 0.011002,
		43.132626, 39.316357, 52.462795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820820, 39.846157, 52.513294>,  <43.119549, 40.016193, 52.455093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820820, 39.846157, 52.513294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.689564, 39.483475, 52.407307>,  <43.610809, 39.265865, 52.343716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.689564, 39.483475, 52.407307>,  <43.820820, 39.846157, 52.513294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689564, 39.483475, 52.407307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757439, -0.084938, -0.647358,
		0.564458, -0.413119, 0.714647,
		-0.328136, -0.906707, -0.264969,
		43.591122, 39.211464, 52.327816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.496899, 39.415733, 52.424889>,  <43.820820, 39.846157, 52.513294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.496899, 39.415733, 52.424889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.203979, 39.222427, 52.232975>,  <44.028229, 39.106445, 52.117828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.203979, 39.222427, 52.232975>,  <44.496899, 39.415733, 52.424889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.203979, 39.222427, 52.232975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601520, -0.128759, -0.788413,
		0.319236, -0.865954, 0.384984,
		-0.732299, -0.483265, -0.479784,
		43.984291, 39.077450, 52.089039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.834076, 38.985970, 52.071404>,  <44.496899, 39.415733, 52.424889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.834076, 38.985970, 52.071404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.491241, 39.006401, 51.866352>,  <44.285538, 39.018661, 51.743320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.491241, 39.006401, 51.866352>,  <44.834076, 38.985970, 52.071404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491241, 39.006401, 51.866352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503441, -0.128027, -0.854492,
		-0.109272, -0.990455, 0.084018,
		-0.857092, 0.051074, -0.512626,
		44.234116, 39.021725, 51.712563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775307, 38.465321, 51.559635>,  <44.834076, 38.985970, 52.071404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775307, 38.465321, 51.559635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.547638, 38.772980, 51.443382>,  <44.411037, 38.957573, 51.373631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.547638, 38.772980, 51.443382>,  <44.775307, 38.465321, 51.559635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547638, 38.772980, 51.443382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463669, 0.008342, -0.885969,
		-0.679014, -0.639021, -0.361376,
		-0.569168, 0.769144, -0.290630,
		44.376888, 39.003723, 51.356194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670593, 38.250515, 50.877285>,  <44.775307, 38.465321, 51.559635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670593, 38.250515, 50.877285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.535187, 38.626900, 50.877262>,  <44.453941, 38.852730, 50.877247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.535187, 38.626900, 50.877262>,  <44.670593, 38.250515, 50.877285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.535187, 38.626900, 50.877262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326216, 0.117300, -0.937989,
		-0.882603, -0.317546, -0.346664,
		-0.338519, 0.940960, -0.000059,
		44.433632, 38.909187, 50.877243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.388279, 38.412418, 50.210464>,  <44.670593, 38.250515, 50.877285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.388279, 38.412418, 50.210464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.441170, 38.782318, 50.353218>,  <44.472904, 39.004257, 50.438869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.441170, 38.782318, 50.353218>,  <44.388279, 38.412418, 50.210464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441170, 38.782318, 50.353218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295725, 0.306843, -0.904652,
		-0.946078, 0.225154, -0.232898,
		0.132223, 0.924745, 0.356881,
		44.480835, 39.059742, 50.460281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159779, 38.741112, 49.672466>,  <44.388279, 38.412418, 50.210464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159779, 38.741112, 49.672466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.387802, 38.978134, 49.900116>,  <44.524616, 39.120350, 50.036705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.387802, 38.978134, 49.900116>,  <44.159779, 38.741112, 49.672466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387802, 38.978134, 49.900116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436718, 0.368203, -0.820794,
		-0.695923, 0.716451, -0.048883,
		0.570060, 0.592558, 0.569128,
		44.558819, 39.155903, 50.070854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054092, 39.326900, 49.345673>,  <44.159779, 38.741112, 49.672466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054092, 39.326900, 49.345673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.390312, 39.383453, 49.554855>,  <44.592045, 39.417385, 49.680367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.390312, 39.383453, 49.554855>,  <44.054092, 39.326900, 49.345673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390312, 39.383453, 49.554855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442188, 0.378626, -0.813088,
		-0.312964, 0.914687, 0.255736,
		0.840549, 0.141384, 0.522960,
		44.642475, 39.425869, 49.711742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327457, 40.038609, 49.319637>,  <44.054092, 39.326900, 49.345673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327457, 40.038609, 49.319637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.649178, 39.816330, 49.403824>,  <44.842209, 39.682961, 49.454334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.649178, 39.816330, 49.403824>,  <44.327457, 40.038609, 49.319637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649178, 39.816330, 49.403824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465574, 0.369239, -0.804303,
		0.369239, 0.744890, 0.555699,
		0.804303, -0.555699, 0.210464,
		44.890469, 39.649620, 49.466965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853256, 40.512127, 49.212463>,  <44.327457, 40.038609, 49.319637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853256, 40.512127, 49.212463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.003166, 40.141281, 49.213531>,  <45.093113, 39.918774, 49.214172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.003166, 40.141281, 49.213531>,  <44.853256, 40.512127, 49.212463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003166, 40.141281, 49.213531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478667, 0.191025, -0.856964,
		0.793992, 0.322445, 0.515369,
		0.374773, -0.927113, 0.002671,
		45.115597, 39.863148, 49.214333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563133, 40.603622, 49.156624>,  <44.853256, 40.512127, 49.212463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.563133, 40.603622, 49.156624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.449669, 40.246864, 49.015739>,  <45.381592, 40.032810, 48.931210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.449669, 40.246864, 49.015739>,  <45.563133, 40.603622, 49.156624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449669, 40.246864, 49.015739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408816, 0.219764, -0.885761,
		0.867413, -0.395245, 0.302285,
		-0.283661, -0.891900, -0.352209,
		45.364571, 39.979294, 48.910076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100616, 40.417332, 48.776291>,  <45.563133, 40.603622, 49.156624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100616, 40.417332, 48.776291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.838867, 40.153152, 48.628990>,  <45.681816, 39.994644, 48.540611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.838867, 40.153152, 48.628990>,  <46.100616, 40.417332, 48.776291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838867, 40.153152, 48.628990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340816, 0.177122, -0.923294,
		0.675012, -0.729683, 0.109186,
		-0.654373, -0.660447, -0.368247,
		45.642555, 39.955017, 48.518517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.541340, 39.995216, 48.396065>,  <46.100616, 40.417332, 48.776291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.541340, 39.995216, 48.396065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.167831, 39.945663, 48.261765>,  <45.943726, 39.915932, 48.181183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.167831, 39.945663, 48.261765>,  <46.541340, 39.995216, 48.396065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.167831, 39.945663, 48.261765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322876, 0.113032, -0.939667,
		0.154364, -0.985838, -0.065546,
		-0.933768, -0.123888, -0.335752,
		45.887699, 39.908497, 48.161037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.643166, 39.642311, 47.826599>,  <46.541340, 39.995216, 48.396065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.643166, 39.642311, 47.826599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.275238, 39.792290, 47.780396>,  <46.054482, 39.882278, 47.752674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.275238, 39.792290, 47.780396>,  <46.643166, 39.642311, 47.826599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.275238, 39.792290, 47.780396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204483, 0.206893, -0.956756,
		-0.334835, -0.903665, -0.266975,
		-0.919822, 0.374947, -0.115509,
		45.999290, 39.904774, 47.745743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.318012, 39.295708, 47.255527>,  <46.643166, 39.642311, 47.826599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.318012, 39.295708, 47.255527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.112991, 39.638077, 47.282883>,  <45.989979, 39.843498, 47.299297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.112991, 39.638077, 47.282883>,  <46.318012, 39.295708, 47.255527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.112991, 39.638077, 47.282883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024600, 0.094254, -0.995244,
		-0.858302, -0.508434, -0.069366,
		-0.512554, 0.855927, 0.068391,
		45.959225, 39.894855, 47.303398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771507, 39.171417, 46.808582>,  <46.318012, 39.295708, 47.255527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771507, 39.171417, 46.808582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.838867, 39.563095, 46.853859>,  <45.879284, 39.798103, 46.881023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.838867, 39.563095, 46.853859>,  <45.771507, 39.171417, 46.808582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838867, 39.563095, 46.853859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144609, 0.089046, -0.985474,
		-0.975054, 0.182323, -0.126605,
		0.168401, 0.979198, 0.113190,
		45.889389, 39.856853, 46.887817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344479, 39.514694, 46.331596>,  <45.771507, 39.171417, 46.808582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344479, 39.514694, 46.331596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.626991, 39.783913, 46.419388>,  <45.796497, 39.945446, 46.472061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.626991, 39.783913, 46.419388>,  <45.344479, 39.514694, 46.331596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.626991, 39.783913, 46.419388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207671, 0.099408, -0.973135,
		-0.676784, 0.732887, -0.069562,
		0.706283, 0.673048, 0.219477,
		45.838875, 39.985828, 46.485229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.247368, 39.899147, 45.825207>,  <45.344479, 39.514694, 46.331596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.247368, 39.899147, 45.825207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.606583, 40.028595, 45.944401>,  <45.822113, 40.106262, 46.015919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.606583, 40.028595, 45.944401>,  <45.247368, 39.899147, 45.825207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.606583, 40.028595, 45.944401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295506, 0.058017, -0.953578,
		-0.325881, 0.944408, -0.043529,
		0.898041, 0.323616, 0.297985,
		45.875996, 40.125679, 46.033794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.401047, 40.537094, 45.463394>,  <45.247368, 39.899147, 45.825207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.401047, 40.537094, 45.463394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.736763, 40.350105, 45.574436>,  <45.938194, 40.237911, 45.641060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.736763, 40.350105, 45.574436>,  <45.401047, 40.537094, 45.463394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.736763, 40.350105, 45.574436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323119, 0.018249, -0.946182,
		0.437245, 0.883821, 0.166365,
		0.839292, -0.467469, 0.277601,
		45.988552, 40.209866, 45.657715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.485714, 41.088799, 45.857605>,  <45.401047, 40.537094, 45.463394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.485714, 41.088799, 45.857605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.295547, 41.154366, 45.511864>,  <45.181446, 41.193707, 45.304420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.295547, 41.154366, 45.511864>,  <45.485714, 41.088799, 45.857605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295547, 41.154366, 45.511864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848911, 0.172414, 0.499624,
		0.230924, 0.971290, 0.057182,
		-0.475421, 0.163917, -0.864353,
		45.152920, 41.203541, 45.252556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.128490, 41.690651, 45.964165>,  <45.485714, 41.088799, 45.857605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.128490, 41.690651, 45.964165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.953857, 41.521835, 45.646351>,  <44.849079, 41.420547, 45.455662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.953857, 41.521835, 45.646351>,  <45.128490, 41.690651, 45.964165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.953857, 41.521835, 45.646351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895836, 0.285316, 0.340695,
		0.082905, 0.860510, -0.502642,
		-0.436583, -0.422039, -0.794530,
		44.822884, 41.395222, 45.407993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745094, 42.226933, 45.616032>,  <45.128490, 41.690651, 45.964165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745094, 42.226933, 45.616032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.595463, 41.865662, 45.531803>,  <44.505684, 41.648899, 45.481266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.595463, 41.865662, 45.531803>,  <44.745094, 42.226933, 45.616032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.595463, 41.865662, 45.531803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877368, 0.271090, 0.395899,
		-0.300483, 0.332847, -0.893825,
		-0.374080, -0.903174, -0.210571,
		44.483238, 41.594707, 45.468632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.022644, 42.330021, 45.400311>,  <44.745094, 42.226933, 45.616032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.022644, 42.330021, 45.400311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.057785, 41.950645, 45.522125>,  <44.078869, 41.723019, 45.595215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.057785, 41.950645, 45.522125>,  <44.022644, 42.330021, 45.400311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057785, 41.950645, 45.522125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801799, 0.114083, 0.586604,
		-0.591101, -0.295708, -0.750437,
		0.087851, -0.948442, 0.304533,
		44.084141, 41.666111, 45.613483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318649, 42.241779, 45.724796>,  <44.022644, 42.330021, 45.400311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318649, 42.241779, 45.724796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.537888, 41.919052, 45.813019>,  <43.669430, 41.725418, 45.865952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.537888, 41.919052, 45.813019>,  <43.318649, 42.241779, 45.724796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537888, 41.919052, 45.813019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624305, -0.219138, 0.749814,
		-0.556630, -0.548660, -0.623807,
		0.548093, -0.806815, 0.220553,
		43.702316, 41.677006, 45.879185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869541, 41.598831, 45.774109>,  <43.318649, 42.241779, 45.724796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869541, 41.598831, 45.774109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.190048, 41.495430, 45.989944>,  <43.382351, 41.433388, 46.119446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.190048, 41.495430, 45.989944>,  <42.869541, 41.598831, 45.774109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190048, 41.495430, 45.989944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592459, -0.468629, 0.655270,
		0.083474, -0.844726, -0.528649,
		0.801264, -0.258505, 0.539585,
		43.430428, 41.417877, 46.151821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771362, 40.896675, 46.078285>,  <42.869541, 41.598831, 45.774109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771362, 40.896675, 46.078285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.075893, 40.999664, 46.316307>,  <43.258614, 41.061459, 46.459122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.075893, 40.999664, 46.316307>,  <42.771362, 40.896675, 46.078285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075893, 40.999664, 46.316307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543712, -0.246445, 0.802273,
		0.353214, -0.934329, -0.047632,
		0.761326, 0.257476, 0.595053,
		43.304291, 41.076908, 46.494823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819157, 40.346661, 46.570972>,  <42.771362, 40.896675, 46.078285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819157, 40.346661, 46.570972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.979546, 40.681915, 46.718887>,  <43.075779, 40.883068, 46.807636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.979546, 40.681915, 46.718887>,  <42.819157, 40.346661, 46.570972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979546, 40.681915, 46.718887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504444, -0.134942, 0.852834,
		0.764692, -0.528505, 0.368685,
		0.400976, 0.838136, 0.369791,
		43.099838, 40.933357, 46.829826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049175, 40.115700, 47.155849>,  <42.819157, 40.346661, 46.570972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049175, 40.115700, 47.155849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.043594, 40.514153, 47.190552>,  <43.040245, 40.753223, 47.211372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.043594, 40.514153, 47.190552>,  <43.049175, 40.115700, 47.155849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043594, 40.514153, 47.190552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580931, -0.078695, 0.810140,
		0.813833, -0.039096, 0.579782,
		-0.013952, 0.996132, 0.086757,
		43.039410, 40.812992, 47.216579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209877, 40.264660, 47.975651>,  <43.049175, 40.115700, 47.155849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209877, 40.264660, 47.975651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.003883, 40.558975, 47.799740>,  <42.880287, 40.735565, 47.694195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.003883, 40.558975, 47.799740>,  <43.209877, 40.264660, 47.975651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003883, 40.558975, 47.799740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624288, 0.029638, 0.780632,
		0.587415, 0.676561, 0.444081,
		-0.514984, 0.735790, -0.439778,
		42.849388, 40.779713, 47.667805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028381, 40.732323, 48.498093>,  <43.209877, 40.264660, 47.975651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028381, 40.732323, 48.498093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.758438, 40.823586, 48.217377>,  <42.596470, 40.878342, 48.048946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.758438, 40.823586, 48.217377>,  <43.028381, 40.732323, 48.498093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758438, 40.823586, 48.217377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705029, 0.081512, 0.704479,
		0.217934, 0.970207, 0.105846,
		-0.674862, 0.228155, -0.701788,
		42.555981, 40.892033, 48.006840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872482, 41.366623, 48.710045>,  <43.028381, 40.732323, 48.498093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872482, 41.366623, 48.710045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.563622, 41.264763, 48.477169>,  <42.378304, 41.203648, 48.337444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.563622, 41.264763, 48.477169>,  <42.872482, 41.366623, 48.710045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563622, 41.264763, 48.477169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632282, 0.216677, 0.743821,
		-0.063265, 0.942447, -0.328315,
		-0.772151, -0.254646, -0.582185,
		42.331978, 41.188370, 48.302513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354534, 41.908722, 48.763412>,  <42.872482, 41.366623, 48.710045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354534, 41.908722, 48.763412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.199627, 41.553040, 48.665981>,  <42.106682, 41.339630, 48.607521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.199627, 41.553040, 48.665981>,  <42.354534, 41.908722, 48.763412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199627, 41.553040, 48.665981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597416, 0.040805, 0.800892,
		-0.702221, 0.455679, -0.547030,
		-0.387272, -0.889208, -0.243576,
		42.083447, 41.286278, 48.592907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602245, 41.905350, 48.785076>,  <42.354534, 41.908722, 48.763412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602245, 41.905350, 48.785076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.670692, 41.512054, 48.810249>,  <41.711761, 41.276077, 48.825352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.670692, 41.512054, 48.810249>,  <41.602245, 41.905350, 48.785076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670692, 41.512054, 48.810249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675260, -0.070527, 0.734200,
		-0.717456, -0.168132, -0.676010,
		0.171119, -0.983238, 0.062933,
		41.722027, 41.217083, 48.829128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989494, 41.603840, 48.968304>,  <41.602245, 41.905350, 48.785076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989494, 41.603840, 48.968304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.252449, 41.321846, 49.074768>,  <41.410221, 41.152649, 49.138645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.252449, 41.321846, 49.074768>,  <40.989494, 41.603840, 48.968304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252449, 41.321846, 49.074768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524819, -0.174878, 0.833057,
		-0.540746, -0.687326, -0.484951,
		0.657388, -0.704983, 0.266157,
		41.449665, 41.110352, 49.154613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506618, 41.074043, 49.305439>,  <40.989494, 41.603840, 48.968304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506618, 41.074043, 49.305439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.883930, 40.995018, 49.412170>,  <41.110317, 40.947601, 49.476208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.883930, 40.995018, 49.412170>,  <40.506618, 41.074043, 49.305439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883930, 40.995018, 49.412170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306211, -0.207106, 0.929162,
		-0.128306, -0.958163, -0.255854,
		0.943278, -0.197562, 0.266827,
		41.166912, 40.935749, 49.492218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419441, 40.393421, 49.548927>,  <40.506618, 41.074043, 49.305439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419441, 40.393421, 49.548927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.759281, 40.545609, 49.695038>,  <40.963184, 40.636921, 49.782703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.759281, 40.545609, 49.695038>,  <40.419441, 40.393421, 49.548927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759281, 40.545609, 49.695038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294534, -0.232260, 0.926987,
		0.437525, -0.895154, -0.085268,
		0.849601, 0.380466, 0.365272,
		41.014160, 40.659748, 49.804619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678413, 39.807556, 49.949364>,  <40.419441, 40.393421, 49.548927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678413, 39.807556, 49.949364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.845261, 40.148781, 50.074772>,  <40.945370, 40.353516, 50.150017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.845261, 40.148781, 50.074772>,  <40.678413, 39.807556, 49.949364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845261, 40.148781, 50.074772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243952, -0.227210, 0.942795,
		0.875499, -0.469741, 0.113333,
		0.417119, 0.853064, 0.313516,
		40.970398, 40.404701, 50.168827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.766880, 39.776241, 50.727802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.533554, 40.100929, 50.739456>,  <41.393559, 40.295742, 50.746449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.533554, 40.100929, 50.739456>,  <41.766880, 39.776241, 50.727802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533554, 40.100929, 50.739456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238524, -0.205471, 0.949152,
		0.776434, 0.546706, 0.313470,
		-0.583315, 0.811723, 0.029132,
		41.358559, 40.344444, 50.748196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837299, 39.993866, 51.410408>,  <41.766880, 39.776241, 50.727802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837299, 39.993866, 51.410408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.505730, 40.177841, 51.283073>,  <41.306786, 40.288227, 51.206673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.505730, 40.177841, 51.283073>,  <41.837299, 39.993866, 51.410408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505730, 40.177841, 51.283073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322553, 0.071923, 0.943815,
		0.456991, 0.885034, 0.088735,
		-0.828926, 0.459937, -0.318338,
		41.257053, 40.315823, 51.187572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861233, 40.619888, 51.721485>,  <41.837299, 39.993866, 51.410408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861233, 40.619888, 51.721485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.480568, 40.551895, 51.619164>,  <41.252167, 40.511097, 51.557770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.480568, 40.551895, 51.619164>,  <41.861233, 40.619888, 51.721485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480568, 40.551895, 51.619164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279181, 0.131609, 0.951177,
		-0.128019, 0.976619, -0.172705,
		-0.951667, -0.169985, -0.255805,
		41.195068, 40.500900, 51.542423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604504, 41.013824, 52.239071>,  <41.861233, 40.619888, 51.721485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604504, 41.013824, 52.239071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.313824, 40.795387, 52.072365>,  <41.139416, 40.664326, 51.972340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.313824, 40.795387, 52.072365>,  <41.604504, 41.013824, 52.239071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313824, 40.795387, 52.072365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473283, -0.041731, 0.879922,
		-0.497907, 0.836687, -0.228128,
		-0.726699, -0.546089, -0.416767,
		41.095814, 40.631561, 51.947334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948219, 41.182426, 52.555115>,  <41.604504, 41.013824, 52.239071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948219, 41.182426, 52.555115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.864414, 40.817268, 52.414986>,  <40.814133, 40.598175, 52.330910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.864414, 40.817268, 52.414986>,  <40.948219, 41.182426, 52.555115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864414, 40.817268, 52.414986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568649, -0.177705, 0.803156,
		-0.795451, 0.367483, -0.481885,
		-0.209514, -0.912895, -0.350324,
		40.801559, 40.543400, 52.309887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297878, 41.125893, 52.754612>,  <40.948219, 41.182426, 52.555115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297878, 41.125893, 52.754612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.445854, 40.757133, 52.708580>,  <40.534641, 40.535877, 52.680962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.445854, 40.757133, 52.708580>,  <40.297878, 41.125893, 52.754612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445854, 40.757133, 52.708580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417568, -0.275639, 0.865829,
		-0.829929, -0.272251, -0.486926,
		0.369939, -0.921901, -0.115077,
		40.556835, 40.480564, 52.674057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835358, 40.715794, 52.865200>,  <40.297878, 41.125893, 52.754612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835358, 40.715794, 52.865200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.109798, 40.429001, 52.914520>,  <40.274464, 40.256924, 52.944115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.109798, 40.429001, 52.914520>,  <39.835358, 40.715794, 52.865200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109798, 40.429001, 52.914520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456829, -0.292691, 0.840023,
		-0.566191, -0.632669, -0.528354,
		0.686101, -0.716981, 0.123303,
		40.315628, 40.213905, 52.951511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477360, 40.080284, 53.047020>,  <39.835358, 40.715794, 52.865200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477360, 40.080284, 53.047020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.853962, 40.028374, 53.171425>,  <40.079922, 39.997227, 53.246067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.853962, 40.028374, 53.171425>,  <39.477360, 40.080284, 53.047020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853962, 40.028374, 53.171425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336633, -0.405287, 0.849953,
		0.015748, -0.904932, -0.425266,
		0.941504, -0.129773, 0.311012,
		40.136414, 39.989441, 53.264729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521080, 39.400307, 53.234985>,  <39.477360, 40.080284, 53.047020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521080, 39.400307, 53.234985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.816452, 39.597984, 53.418503>,  <39.993675, 39.716591, 53.528614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.816452, 39.597984, 53.418503>,  <39.521080, 39.400307, 53.234985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816452, 39.597984, 53.418503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264325, -0.413796, 0.871152,
		0.620368, -0.764554, -0.174930,
		0.738428, 0.494196, 0.458797,
		40.037979, 39.746243, 53.556141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817345, 38.878181, 53.620289>,  <39.521080, 39.400307, 53.234985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817345, 38.878181, 53.620289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.921589, 39.228676, 53.782425>,  <39.984135, 39.438972, 53.879707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.921589, 39.228676, 53.782425>,  <39.817345, 38.878181, 53.620289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921589, 39.228676, 53.782425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319801, -0.317792, 0.892601,
		0.910938, -0.362251, 0.197399,
		0.260614, 0.876232, 0.405337,
		39.999771, 39.491547, 53.904026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883171, 38.672333, 54.280174>,  <39.817345, 38.878181, 53.620289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883171, 38.672333, 54.280174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.860054, 39.070473, 54.311024>,  <39.846184, 39.309357, 54.329533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.860054, 39.070473, 54.311024>,  <39.883171, 38.672333, 54.280174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860054, 39.070473, 54.311024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538878, -0.096132, 0.836881,
		0.840399, 0.006809, 0.541925,
		-0.057795, 0.995345, 0.077120,
		39.842716, 39.369076, 54.334160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113617, 38.858295, 54.958176>,  <39.883171, 38.672333, 54.280174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113617, 38.858295, 54.958176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.895996, 39.167290, 54.827168>,  <39.765423, 39.352688, 54.748562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.895996, 39.167290, 54.827168>,  <40.113617, 38.858295, 54.958176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895996, 39.167290, 54.827168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572225, -0.056125, 0.818174,
		0.613648, 0.632543, 0.472572,
		-0.544053, 0.772489, -0.327516,
		39.732780, 39.399036, 54.728912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044445, 39.211361, 55.540913>,  <40.113617, 38.858295, 54.958176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044445, 39.211361, 55.540913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.762772, 39.366760, 55.303192>,  <39.593769, 39.459999, 55.160561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.762772, 39.366760, 55.303192>,  <40.044445, 39.211361, 55.540913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762772, 39.366760, 55.303192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593125, 0.138241, 0.793153,
		0.390296, 0.911021, 0.133082,
		-0.704181, 0.388498, -0.594304,
		39.551517, 39.483311, 55.124901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869633, 39.859859, 55.853897>,  <40.044445, 39.211361, 55.540913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869633, 39.859859, 55.853897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.566429, 39.742264, 55.621002>,  <39.384506, 39.671707, 55.481266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.566429, 39.742264, 55.621002>,  <39.869633, 39.859859, 55.853897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566429, 39.742264, 55.621002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636837, 0.140688, 0.758054,
		-0.140949, 0.945397, -0.293867,
		-0.758005, -0.293992, -0.582234,
		39.339027, 39.654068, 55.446331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322369, 40.269466, 56.028854>,  <39.869633, 39.859859, 55.853897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322369, 40.269466, 56.028854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.123726, 39.981644, 55.834694>,  <39.004539, 39.808949, 55.718197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.123726, 39.981644, 55.834694>,  <39.322369, 40.269466, 56.028854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123726, 39.981644, 55.834694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764838, 0.098378, 0.636667,
		-0.410367, 0.687427, -0.599202,
		-0.496610, -0.719559, -0.485399,
		38.974743, 39.765778, 55.689075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674812, 40.408794, 55.992603>,  <39.322369, 40.269466, 56.028854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674812, 40.408794, 55.992603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.668266, 40.012817, 55.936386>,  <38.664337, 39.775230, 55.902657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.668266, 40.012817, 55.936386>,  <38.674812, 40.408794, 55.992603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668266, 40.012817, 55.936386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866899, -0.055988, 0.495330,
		-0.498216, 0.129942, -0.857261,
		-0.016368, -0.989940, -0.140540,
		38.663357, 39.715836, 55.894222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922985, 40.282978, 55.747910>,  <38.674812, 40.408794, 55.992603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922985, 40.282978, 55.747910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.081898, 39.964081, 55.929710>,  <38.177246, 39.772743, 56.038792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.081898, 39.964081, 55.929710>,  <37.922985, 40.282978, 55.747910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081898, 39.964081, 55.929710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772574, -0.023266, 0.634499,
		-0.495277, -0.603206, -0.625175,
		0.397278, -0.797246, 0.454498,
		38.201080, 39.724907, 56.066059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399391, 39.947357, 56.003120>,  <37.922985, 40.282978, 55.747910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399391, 39.947357, 56.003120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.681557, 39.759033, 56.215057>,  <37.850857, 39.646038, 56.342220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.681557, 39.759033, 56.215057>,  <37.399391, 39.947357, 56.003120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681557, 39.759033, 56.215057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633743, -0.084174, 0.768950,
		-0.317429, -0.878211, -0.357748,
		0.705414, -0.470807, 0.529841,
		37.893181, 39.617790, 56.374008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011173, 39.446815, 56.306278>,  <37.399391, 39.947357, 56.003120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011173, 39.446815, 56.306278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338852, 39.446716, 56.535683>,  <37.535461, 39.446659, 56.673325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.338852, 39.446716, 56.535683>,  <37.011173, 39.446815, 56.306278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338852, 39.446716, 56.535683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566566, -0.155490, 0.809213,
		0.088979, -0.987837, -0.127514,
		0.819198, -0.000242, 0.573510,
		37.584610, 39.446644, 56.707737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031540, 38.847504, 56.681145>,  <37.011173, 39.446815, 56.306278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031540, 38.847504, 56.681145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.231659, 39.124680, 56.888809>,  <37.351730, 39.290985, 57.013409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.231659, 39.124680, 56.888809>,  <37.031540, 38.847504, 56.681145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231659, 39.124680, 56.888809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637336, -0.111142, 0.762528,
		0.586090, -0.712374, 0.386033,
		0.500301, 0.692943, 0.519162,
		37.381748, 39.332561, 57.044559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811749, 38.547455, 57.376698>,  <37.031540, 38.847504, 56.681145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811749, 38.547455, 57.376698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.973392, 38.900581, 57.472473>,  <37.070381, 39.112457, 57.529938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.973392, 38.900581, 57.472473>,  <36.811749, 38.547455, 57.376698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973392, 38.900581, 57.472473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292335, -0.123392, 0.948322,
		0.866736, -0.453228, 0.208213,
		0.404114, 0.882813, 0.239443,
		37.094627, 39.165424, 57.544308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036388, 38.492523, 58.151569>,  <36.811749, 38.547455, 57.376698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036388, 38.492523, 58.151569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048958, 38.881721, 58.060108>,  <37.056499, 39.115242, 58.005230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048958, 38.881721, 58.060108>,  <37.036388, 38.492523, 58.151569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048958, 38.881721, 58.060108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362991, 0.224261, 0.904403,
		0.931262, 0.054578, 0.360238,
		0.031426, 0.972999, -0.228657,
		37.058384, 39.173622, 57.991512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693733, 38.829906, 58.473526>,  <37.036388, 38.492523, 58.151569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693733, 38.829906, 58.473526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.359276, 39.042603, 58.419693>,  <37.158600, 39.170219, 58.387394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.359276, 39.042603, 58.419693>,  <37.693733, 38.829906, 58.473526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359276, 39.042603, 58.419693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022096, 0.212512, 0.976909,
		0.548067, 0.819809, -0.165941,
		-0.836143, 0.531745, -0.134585,
		37.108433, 39.202126, 58.379318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848709, 39.484871, 58.975166>,  <37.693733, 38.829906, 58.473526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848709, 39.484871, 58.975166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.464272, 39.406395, 58.897396>,  <37.233608, 39.359310, 58.850735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.464272, 39.406395, 58.897396>,  <37.848709, 39.484871, 58.975166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464272, 39.406395, 58.897396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196113, -0.010983, 0.980520,
		-0.194502, 0.980505, -0.027920,
		-0.961098, -0.196189, -0.194426,
		37.175941, 39.347538, 58.839069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459694, 39.323589, 59.304333>,  <37.848709, 39.484871, 58.975166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459694, 39.323589, 59.304333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685242, 39.127708, 59.570335>,  <38.820572, 39.010178, 59.729939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685242, 39.127708, 59.570335>,  <38.459694, 39.323589, 59.304333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685242, 39.127708, 59.570335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807320, 0.157168, -0.568799,
		0.174026, 0.857605, 0.483972,
		0.563869, -0.489706, 0.665011,
		38.854401, 38.980797, 59.769840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953533, 39.752918, 59.507015>,  <38.459694, 39.323589, 59.304333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953533, 39.752918, 59.507015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.103966, 39.401024, 59.623383>,  <39.194225, 39.189888, 59.693203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.103966, 39.401024, 59.623383>,  <38.953533, 39.752918, 59.507015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103966, 39.401024, 59.623383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905841, 0.283002, -0.315218,
		0.194978, 0.382072, 0.903330,
		0.376080, -0.879734, 0.290917,
		39.216789, 39.137104, 59.710659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651340, 39.967426, 59.837086>,  <38.953533, 39.752918, 59.507015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651340, 39.967426, 59.837086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.684288, 39.576645, 59.758324>,  <39.704056, 39.342175, 59.711067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.684288, 39.576645, 59.758324>,  <39.651340, 39.967426, 59.837086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684288, 39.576645, 59.758324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886756, 0.162020, -0.432911,
		0.454838, -0.138945, 0.879668,
		0.082373, -0.976956, -0.196904,
		39.709000, 39.283558, 59.699253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291740, 39.935966, 60.023926>,  <39.651340, 39.967426, 59.837086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291740, 39.935966, 60.023926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.203712, 39.625290, 59.787853>,  <40.150894, 39.438885, 59.646210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.203712, 39.625290, 59.787853>,  <40.291740, 39.935966, 60.023926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203712, 39.625290, 59.787853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832285, 0.166059, -0.528891,
		0.508791, -0.607594, 0.609886,
		-0.220074, -0.776694, -0.590181,
		40.137691, 39.392281, 59.610798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860210, 39.494785, 59.818611>,  <40.291740, 39.935966, 60.023926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860210, 39.494785, 59.818611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.631790, 39.406799, 59.502254>,  <40.494736, 39.354008, 59.312439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.631790, 39.406799, 59.502254>,  <40.860210, 39.494785, 59.818611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631790, 39.406799, 59.502254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766458, 0.202179, -0.609644,
		0.294006, -0.954325, 0.053143,
		-0.571054, -0.219971, -0.790892,
		40.460472, 39.340809, 59.264988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359310, 39.166756, 59.219364>,  <40.860210, 39.494785, 59.818611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359310, 39.166756, 59.219364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.023777, 39.254524, 59.020081>,  <40.822456, 39.307186, 58.900509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.023777, 39.254524, 59.020081>,  <41.359310, 39.166756, 59.219364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023777, 39.254524, 59.020081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513289, 0.013892, -0.858104,
		-0.181366, -0.975531, -0.124280,
		-0.838833, 0.219423, -0.498210,
		40.772125, 39.320351, 58.870617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290588, 38.659595, 58.684948>,  <41.359310, 39.166756, 59.219364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290588, 38.659595, 58.684948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.127499, 39.013832, 58.595963>,  <41.029644, 39.226372, 58.542572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.127499, 39.013832, 58.595963>,  <41.290588, 38.659595, 58.684948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127499, 39.013832, 58.595963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305304, -0.097395, -0.947261,
		-0.860551, -0.454143, -0.230664,
		-0.407726, 0.885590, -0.222465,
		41.005180, 39.279510, 58.529224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140663, 38.557549, 57.942188>,  <41.290588, 38.659595, 58.684948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140663, 38.557549, 57.942188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.088646, 38.948463, 58.009132>,  <41.057438, 39.183010, 58.049297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.088646, 38.948463, 58.009132>,  <41.140663, 38.557549, 57.942188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088646, 38.948463, 58.009132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286210, 0.198604, -0.937358,
		-0.949302, -0.073995, -0.305534,
		-0.130040, 0.977283, 0.167357,
		41.049633, 39.241650, 58.059338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628860, 38.839706, 57.441177>,  <41.140663, 38.557549, 57.942188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628860, 38.839706, 57.441177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.846413, 39.155945, 57.553719>,  <40.976944, 39.345688, 57.621243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.846413, 39.155945, 57.553719>,  <40.628860, 38.839706, 57.441177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846413, 39.155945, 57.553719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106475, 0.267551, -0.957643,
		-0.832380, 0.550801, 0.061337,
		0.543881, 0.790592, 0.281351,
		41.009579, 39.393124, 57.638123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370697, 39.378178, 56.995468>,  <40.628860, 38.839706, 57.441177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370697, 39.378178, 56.995468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.727570, 39.514427, 57.114124>,  <40.941692, 39.596176, 57.185318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.727570, 39.514427, 57.114124>,  <40.370697, 39.378178, 56.995468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727570, 39.514427, 57.114124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245602, 0.185345, -0.951487,
		-0.379077, 0.921751, 0.081704,
		0.892177, 0.340620, 0.296644,
		40.995224, 39.616611, 57.203117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511711, 40.145943, 56.756721>,  <40.370697, 39.378178, 56.995468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511711, 40.145943, 56.756721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.848206, 39.934311, 56.801247>,  <41.050102, 39.807331, 56.827961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.848206, 39.934311, 56.801247>,  <40.511711, 40.145943, 56.756721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.848206, 39.934311, 56.801247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251953, 0.201471, -0.946535,
		0.478370, 0.824306, 0.302789,
		0.841238, -0.529083, 0.111309,
		41.100578, 39.775585, 56.834641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024792, 40.423267, 56.343712>,  <40.511711, 40.145943, 56.756721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024792, 40.423267, 56.343712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.183311, 40.065140, 56.425056>,  <41.278423, 39.850262, 56.473862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.183311, 40.065140, 56.425056>,  <41.024792, 40.423267, 56.343712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183311, 40.065140, 56.425056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425346, -0.017258, -0.904866,
		0.813652, 0.445094, 0.373980,
		0.396296, -0.895318, 0.203361,
		41.302200, 39.796543, 56.486065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.694782, 40.448868, 55.943859>,  <41.024792, 40.423267, 56.343712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.694782, 40.448868, 55.943859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.602226, 40.066269, 56.014927>,  <41.546692, 39.836708, 56.057568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.602226, 40.066269, 56.014927>,  <41.694782, 40.448868, 55.943859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602226, 40.066269, 56.014927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510504, -0.274843, -0.814768,
		0.828156, -0.097831, 0.551894,
		-0.231394, -0.956499, 0.177670,
		41.532806, 39.779320, 56.068230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364292, 40.094921, 55.884552>,  <41.694782, 40.448868, 55.943859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364292, 40.094921, 55.884552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.076698, 39.818748, 55.852638>,  <41.904144, 39.653046, 55.833488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.076698, 39.818748, 55.852638>,  <42.364292, 40.094921, 55.884552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076698, 39.818748, 55.852638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341133, -0.250544, -0.906011,
		0.605551, -0.678623, 0.415667,
		-0.718983, -0.690433, -0.079783,
		41.861004, 39.611618, 55.828705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745846, 39.462296, 55.706894>,  <42.364292, 40.094921, 55.884552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745846, 39.462296, 55.706894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.372311, 39.370087, 55.597488>,  <42.148190, 39.314762, 55.531845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.372311, 39.370087, 55.597488>,  <42.745846, 39.462296, 55.706894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372311, 39.370087, 55.597488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328553, -0.250455, -0.910673,
		0.141430, -0.940282, 0.309623,
		-0.933836, -0.230524, -0.273511,
		42.092159, 39.300930, 55.515434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.774899, 38.798946, 55.432091>,  <42.745846, 39.462296, 55.706894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.774899, 38.798946, 55.432091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.450546, 38.961815, 55.263954>,  <42.255936, 39.059536, 55.163071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.450546, 38.961815, 55.263954>,  <42.774899, 38.798946, 55.432091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450546, 38.961815, 55.263954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332026, -0.271385, -0.903387,
		-0.481906, -0.872103, 0.084870,
		-0.810880, 0.407168, -0.420343,
		42.207283, 39.083965, 55.137852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710567, 38.348930, 54.796230>,  <42.774899, 38.798946, 55.432091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710567, 38.348930, 54.796230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.461357, 38.651932, 54.718227>,  <42.311832, 38.833733, 54.671425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.461357, 38.651932, 54.718227>,  <42.710567, 38.348930, 54.796230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461357, 38.651932, 54.718227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206021, -0.081594, -0.975140,
		-0.754585, -0.647710, -0.105228,
		-0.623022, 0.757506, -0.195011,
		42.274452, 38.879185, 54.659725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185184, 38.138878, 54.321159>,  <42.710567, 38.348930, 54.796230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185184, 38.138878, 54.321159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.243282, 38.533112, 54.286442>,  <42.278141, 38.769650, 54.265614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.243282, 38.533112, 54.286442>,  <42.185184, 38.138878, 54.321159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243282, 38.533112, 54.286442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125216, -0.105325, -0.986523,
		-0.981440, 0.132420, -0.138709,
		0.145244, 0.985582, -0.086789,
		42.286854, 38.828785, 54.260406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818806, 38.390083, 53.703991>,  <42.185184, 38.138878, 54.321159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818806, 38.390083, 53.703991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.099979, 38.670525, 53.751900>,  <42.268684, 38.838787, 53.780643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.099979, 38.670525, 53.751900>,  <41.818806, 38.390083, 53.703991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099979, 38.670525, 53.751900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226891, -0.061434, -0.971981,
		-0.674098, 0.710411, -0.202258,
		0.702931, 0.701101, 0.119773,
		42.310860, 38.880856, 53.787830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767929, 38.805058, 53.123562>,  <41.818806, 38.390083, 53.703991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767929, 38.805058, 53.123562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.135803, 38.876152, 53.263615>,  <42.356529, 38.918808, 53.347645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.135803, 38.876152, 53.263615>,  <41.767929, 38.805058, 53.123562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135803, 38.876152, 53.263615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358300, -0.015100, -0.933484,
		-0.160623, 0.983963, -0.077568,
		0.919685, 0.177732, 0.350129,
		42.411709, 38.929470, 53.368652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.407082, 40.748047, 47.479252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.675663, 40.895424, 47.736439>,  <41.836811, 40.983849, 47.890751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.675663, 40.895424, 47.736439>,  <41.407082, 40.748047, 47.479252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675663, 40.895424, 47.736439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628579, 0.176353, -0.757488,
		-0.392478, 0.912771, -0.113182,
		0.671453, 0.368441, 0.642963,
		41.877098, 41.005955, 47.929329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709011, 41.326580, 47.167831>,  <41.407082, 40.748047, 47.479252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709011, 41.326580, 47.167831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.984848, 41.195770, 47.426292>,  <42.150349, 41.117287, 47.581371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.984848, 41.195770, 47.426292>,  <41.709011, 41.326580, 47.167831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984848, 41.195770, 47.426292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711123, 0.136993, -0.689592,
		0.136993, 0.935034, 0.327022,
		0.689592, -0.327022, 0.646157,
		42.191727, 41.097664, 47.620140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292812, 41.859455, 47.215923>,  <41.709011, 41.326580, 47.167831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292812, 41.859455, 47.215923> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.432629, 41.503761, 47.333961>,  <42.516518, 41.290344, 47.404785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.432629, 41.503761, 47.333961>,  <42.292812, 41.859455, 47.215923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432629, 41.503761, 47.333961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583243, -0.039974, -0.811314,
		0.733246, 0.455696, 0.504669,
		0.349539, -0.889237, 0.295093,
		42.537491, 41.236992, 47.422489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979824, 42.067616, 47.370586>,  <42.292812, 41.859455, 47.215923>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979824, 42.067616, 47.370586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.008240, 41.671188, 47.325451>,  <43.025288, 41.433331, 47.298370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.008240, 41.671188, 47.325451>,  <42.979824, 42.067616, 47.370586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008240, 41.671188, 47.325451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743706, 0.128011, -0.656136,
		0.664721, -0.037307, 0.746159,
		0.071038, -0.991071, -0.112837,
		43.029552, 41.373867, 47.291599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641758, 41.971569, 47.360935>,  <42.979824, 42.067616, 47.370586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641758, 41.971569, 47.360935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.484497, 41.643944, 47.193810>,  <43.390141, 41.447369, 47.093536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.484497, 41.643944, 47.193810>,  <43.641758, 41.971569, 47.360935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484497, 41.643944, 47.193810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746613, -0.019166, -0.664983,
		0.536655, -0.573384, 0.619057,
		-0.393156, -0.819062, -0.417811,
		43.366550, 41.398224, 47.068466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.173706, 41.513512, 47.362240>,  <43.641758, 41.971569, 47.360935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.173706, 41.513512, 47.362240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.911335, 41.412109, 47.077850>,  <43.753910, 41.351269, 46.907215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.911335, 41.412109, 47.077850>,  <44.173706, 41.513512, 47.362240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911335, 41.412109, 47.077850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727827, 0.037229, -0.684750,
		0.200057, -0.966617, 0.160089,
		-0.655931, -0.253507, -0.710978,
		43.714558, 41.336056, 46.864555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497520, 41.107971, 46.828861>,  <44.173706, 41.513512, 47.362240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497520, 41.107971, 46.828861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.167210, 41.184731, 46.616722>,  <43.969025, 41.230785, 46.489437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.167210, 41.184731, 46.616722>,  <44.497520, 41.107971, 46.828861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167210, 41.184731, 46.616722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541917, 0.009427, -0.840379,
		-0.156271, -0.981369, -0.111779,
		-0.825775, 0.191902, -0.530348,
		43.919476, 41.242302, 46.457619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.431320, 40.698734, 46.382084>,  <44.497520, 41.107971, 46.828861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.431320, 40.698734, 46.382084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.204987, 40.977043, 46.205116>,  <44.069187, 41.144028, 46.098934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.204987, 40.977043, 46.205116>,  <44.431320, 40.698734, 46.382084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204987, 40.977043, 46.205116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464768, -0.174066, -0.868154,
		-0.681048, -0.696852, -0.224881,
		-0.565831, 0.695772, -0.442422,
		44.035236, 41.185776, 46.072392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.175369, 40.406330, 45.851242>,  <44.431320, 40.698734, 46.382084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.175369, 40.406330, 45.851242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.125031, 40.793098, 45.762489>,  <44.094830, 41.025158, 45.709236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.125031, 40.793098, 45.762489>,  <44.175369, 40.406330, 45.851242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125031, 40.793098, 45.762489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482229, -0.135839, -0.865449,
		-0.866959, -0.215911, -0.449182,
		-0.125843, 0.966918, -0.221885,
		44.087276, 41.083176, 45.695923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999187, 40.472954, 45.133892>,  <44.175369, 40.406330, 45.851242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999187, 40.472954, 45.133892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.140705, 40.834496, 45.230118>,  <44.225616, 41.051422, 45.287853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.140705, 40.834496, 45.230118>,  <43.999187, 40.472954, 45.133892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140705, 40.834496, 45.230118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657623, -0.057494, -0.751150,
		-0.665102, 0.423953, -0.614739,
		0.353796, 0.903858, 0.240562,
		44.246845, 41.105652, 45.302288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098724, 40.785511, 44.494240>,  <43.999187, 40.472954, 45.133892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098724, 40.785511, 44.494240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.334625, 40.977119, 44.754311>,  <44.476166, 41.092083, 44.910355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.334625, 40.977119, 44.754311>,  <44.098724, 40.785511, 44.494240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.334625, 40.977119, 44.754311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733272, 0.019728, -0.679650,
		-0.338393, 0.877582, -0.339618,
		0.589748, 0.479021, 0.650182,
		44.511551, 41.120827, 44.949364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448738, 41.346699, 44.087955>,  <44.098724, 40.785511, 44.494240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448738, 41.346699, 44.087955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.640381, 41.271919, 44.431004>,  <44.755367, 41.227051, 44.636833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.640381, 41.271919, 44.431004>,  <44.448738, 41.346699, 44.087955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.640381, 41.271919, 44.431004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859317, -0.099333, -0.501705,
		0.178981, 0.977335, 0.113055,
		0.479104, -0.186946, 0.857619,
		44.784111, 41.215836, 44.688290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938583, 41.949478, 44.143280>,  <44.448738, 41.346699, 44.087955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938583, 41.949478, 44.143280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049374, 41.598946, 44.300926>,  <45.115849, 41.388626, 44.395515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049374, 41.598946, 44.300926>,  <44.938583, 41.949478, 44.143280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049374, 41.598946, 44.300926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910694, 0.108597, -0.398550,
		0.306461, 0.469312, 0.828147,
		0.276979, -0.876329, 0.394119,
		45.132465, 41.336048, 44.419163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.428856, 42.037407, 44.689220>,  <44.938583, 41.949478, 44.143280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.428856, 42.037407, 44.689220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.461456, 41.703644, 44.471184>,  <45.481014, 41.503387, 44.340363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.461456, 41.703644, 44.471184>,  <45.428856, 42.037407, 44.689220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.461456, 41.703644, 44.471184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965353, 0.202114, -0.165058,
		0.247896, -0.512749, 0.821971,
		0.081499, -0.834409, -0.545087,
		45.485905, 41.453320, 44.307659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.386082, 42.873192, 44.741928>,  <45.428856, 42.037407, 44.689220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.386082, 42.873192, 44.741928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.308014, 43.260605, 44.680157>,  <45.261173, 43.493053, 44.643093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.308014, 43.260605, 44.680157>,  <45.386082, 42.873192, 44.741928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.308014, 43.260605, 44.680157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439778, 0.054322, 0.896462,
		0.876645, 0.242875, 0.415339,
		-0.195166, 0.968535, -0.154432,
		45.249466, 43.551167, 44.633827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537724, 43.194736, 45.390209>,  <45.386082, 42.873192, 44.741928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537724, 43.194736, 45.390209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.295326, 43.447937, 45.197510>,  <45.149887, 43.599857, 45.081890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.295326, 43.447937, 45.197510>,  <45.537724, 43.194736, 45.390209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295326, 43.447937, 45.197510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527683, 0.133290, 0.838918,
		0.595250, 0.762589, 0.253252,
		-0.605994, 0.633003, -0.481746,
		45.113529, 43.637836, 45.052986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.570412, 43.848518, 45.744949>,  <45.537724, 43.194736, 45.390209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.570412, 43.848518, 45.744949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.223095, 43.835365, 45.546967>,  <45.014706, 43.827473, 45.428177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.223095, 43.835365, 45.546967>,  <45.570412, 43.848518, 45.744949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223095, 43.835365, 45.546967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474930, 0.343152, 0.810363,
		0.143197, 0.938704, -0.313575,
		-0.868295, -0.032884, -0.494957,
		44.962605, 43.825500, 45.398479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.236290, 44.395710, 46.038010>,  <45.570412, 43.848518, 45.744949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.236290, 44.395710, 46.038010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.936432, 44.190292, 45.871010>,  <44.756516, 44.067043, 45.770809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.936432, 44.190292, 45.871010>,  <45.236290, 44.395710, 46.038010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.936432, 44.190292, 45.871010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581984, 0.211103, 0.785322,
		-0.315162, 0.831690, -0.457127,
		-0.749645, -0.513543, -0.417498,
		44.711536, 44.036228, 45.745762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640312, 44.842316, 46.154911>,  <45.236290, 44.395710, 46.038010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640312, 44.842316, 46.154911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.486656, 44.486000, 46.057800>,  <44.394463, 44.272213, 45.999535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.486656, 44.486000, 46.057800>,  <44.640312, 44.842316, 46.154911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486656, 44.486000, 46.057800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810667, 0.199572, 0.550445,
		-0.441878, 0.408256, -0.798794,
		-0.384139, -0.890785, -0.242774,
		44.371414, 44.218765, 45.984970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953453, 45.034256, 45.906311>,  <44.640312, 44.842316, 46.154911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953453, 45.034256, 45.906311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.959023, 44.651176, 46.021282>,  <43.962364, 44.421329, 46.090263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.959023, 44.651176, 46.021282>,  <43.953453, 45.034256, 45.906311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959023, 44.651176, 46.021282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895184, 0.116131, 0.430302,
		-0.445480, -0.263287, -0.855703,
		0.013919, -0.957702, 0.287425,
		43.963200, 44.363865, 46.107510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304131, 44.812481, 45.833214>,  <43.953453, 45.034256, 45.906311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304131, 44.812481, 45.833214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.453281, 44.543549, 46.089005>,  <43.542770, 44.382187, 46.242477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.453281, 44.543549, 46.089005>,  <43.304131, 44.812481, 45.833214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453281, 44.543549, 46.089005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808336, 0.103006, 0.579640,
		-0.455582, -0.733045, -0.505065,
		0.372878, -0.672336, 0.639474,
		43.565144, 44.341846, 46.280846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780895, 44.250828, 45.949291>,  <43.304131, 44.812481, 45.833214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780895, 44.250828, 45.949291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.012886, 44.253235, 46.275135>,  <43.152081, 44.254681, 46.470642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.012886, 44.253235, 46.275135>,  <42.780895, 44.250828, 45.949291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012886, 44.253235, 46.275135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814225, 0.036002, 0.579432,
		-0.025843, -0.999334, 0.025777,
		0.579974, 0.006013, 0.814613,
		43.186878, 44.255039, 46.519520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430538, 43.870346, 46.346497>,  <42.780895, 44.250828, 45.949291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430538, 43.870346, 46.346497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.675583, 44.023491, 46.623085>,  <42.822609, 44.115376, 46.789036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.675583, 44.023491, 46.623085>,  <42.430538, 43.870346, 46.346497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675583, 44.023491, 46.623085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756278, 0.029714, 0.653576,
		0.229681, -0.923329, 0.307750,
		0.612610, 0.382858, 0.691468,
		42.859367, 44.138348, 46.830524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238789, 43.525440, 46.910675>,  <42.430538, 43.870346, 46.346497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238789, 43.525440, 46.910675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.440796, 43.844994, 47.041363>,  <42.562000, 44.036724, 47.119774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.440796, 43.844994, 47.041363>,  <42.238789, 43.525440, 46.910675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440796, 43.844994, 47.041363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572725, 0.026981, 0.819304,
		0.645714, -0.600879, 0.471167,
		0.505015, 0.798885, 0.326717,
		42.592300, 44.084660, 47.139378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399883, 43.300346, 47.515873>,  <42.238789, 43.525440, 46.910675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399883, 43.300346, 47.515873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.414558, 43.699951, 47.505848>,  <42.423363, 43.939713, 47.499832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.414558, 43.699951, 47.505848>,  <42.399883, 43.300346, 47.515873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414558, 43.699951, 47.505848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556181, 0.041249, 0.830037,
		0.830251, -0.016509, 0.557145,
		0.036685, 0.999013, -0.025065,
		42.425564, 43.999657, 47.498329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735294, 43.610058, 48.173523>,  <42.399883, 43.300346, 47.515873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735294, 43.610058, 48.173523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.497307, 43.888992, 48.013657>,  <42.354515, 44.056355, 47.917736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.497307, 43.888992, 48.013657>,  <42.735294, 43.610058, 48.173523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497307, 43.888992, 48.013657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408628, 0.165760, 0.897523,
		0.692123, 0.697315, 0.186328,
		-0.594970, 0.697335, -0.399668,
		42.318817, 44.098194, 47.893757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740997, 44.233738, 48.635746>,  <42.735294, 43.610058, 48.173523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740997, 44.233738, 48.635746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.437454, 44.294922, 48.382530>,  <42.255329, 44.331631, 48.230602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.437454, 44.294922, 48.382530>,  <42.740997, 44.233738, 48.635746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437454, 44.294922, 48.382530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594368, 0.234646, 0.769199,
		0.266197, 0.959971, -0.087149,
		-0.758858, 0.152960, -0.633038,
		42.209797, 44.340809, 48.192619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462978, 44.768532, 48.957535>,  <42.740997, 44.233738, 48.635746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462978, 44.768532, 48.957535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.178982, 44.615608, 48.720978>,  <42.008583, 44.523853, 48.579044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.178982, 44.615608, 48.720978>,  <42.462978, 44.768532, 48.957535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178982, 44.615608, 48.720978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646033, 0.019378, 0.763063,
		-0.280262, 0.923833, -0.260740,
		-0.709996, -0.382305, -0.591396,
		41.965984, 44.500916, 48.543560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509754, 45.459351, 48.878841>,  <42.462978, 44.768532, 48.957535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509754, 45.459351, 48.878841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.732651, 45.601318, 49.179111>,  <42.866386, 45.686501, 49.359272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.732651, 45.601318, 49.179111>,  <42.509754, 45.459351, 48.878841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.732651, 45.601318, 49.179111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612830, 0.434224, -0.660218,
		-0.560288, 0.827936, 0.024459,
		0.557240, 0.354924, 0.750675,
		42.899822, 45.707794, 49.404316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738720, 46.179314, 48.791050>,  <42.509754, 45.459351, 48.878841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738720, 46.179314, 48.791050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.034199, 46.025513, 49.012493>,  <43.211487, 45.933231, 49.145359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.034199, 46.025513, 49.012493>,  <42.738720, 46.179314, 48.791050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034199, 46.025513, 49.012493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673670, 0.393991, -0.625252,
		0.022293, 0.834822, 0.550068,
		0.738696, -0.384503, 0.553612,
		43.255806, 45.910160, 49.178577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295971, 46.597198, 48.694511>,  <42.738720, 46.179314, 48.791050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295971, 46.597198, 48.694511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.517288, 46.322090, 48.882484>,  <43.650078, 46.157024, 48.995266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.517288, 46.322090, 48.882484>,  <43.295971, 46.597198, 48.694511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517288, 46.322090, 48.882484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804957, 0.296354, -0.514023,
		0.214265, 0.662680, 0.717597,
		0.553295, -0.687771, 0.469931,
		43.683277, 46.115757, 49.023464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968056, 46.959053, 49.060280>,  <43.295971, 46.597198, 48.694511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968056, 46.959053, 49.060280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.011715, 46.570518, 48.975811>,  <44.037910, 46.337399, 48.925129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.011715, 46.570518, 48.975811>,  <43.968056, 46.959053, 49.060280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011715, 46.570518, 48.975811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756389, 0.218998, -0.616372,
		0.644951, -0.092457, 0.758610,
		0.109146, -0.971335, -0.211176,
		44.044460, 46.279118, 48.912457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.673790, 46.817783, 49.133667>,  <43.968056, 46.959053, 49.060280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.673790, 46.817783, 49.133667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.544525, 46.512482, 48.909878>,  <44.466969, 46.329300, 48.775604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.544525, 46.512482, 48.909878>,  <44.673790, 46.817783, 49.133667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544525, 46.512482, 48.909878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712509, 0.192844, -0.674642,
		0.622816, -0.616644, 0.481509,
		-0.323158, -0.763257, -0.559471,
		44.447578, 46.283504, 48.742035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.271774, 46.457973, 49.048653>,  <44.673790, 46.817783, 49.133667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.271774, 46.457973, 49.048653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.022270, 46.329681, 48.763542>,  <44.872566, 46.252705, 48.592476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.022270, 46.329681, 48.763542>,  <45.271774, 46.457973, 49.048653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.022270, 46.329681, 48.763542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772892, -0.117246, -0.623611,
		0.116441, -0.939885, 0.321024,
		-0.623762, -0.320731, -0.712778,
		44.835140, 46.233463, 48.549709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511112, 45.755444, 48.751057>,  <45.271774, 46.457973, 49.048653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511112, 45.755444, 48.751057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.281303, 45.905701, 48.460178>,  <45.143417, 45.995853, 48.285652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.281303, 45.905701, 48.460178>,  <45.511112, 45.755444, 48.751057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281303, 45.905701, 48.460178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734994, -0.154166, -0.660316,
		-0.360150, -0.913853, -0.187522,
		-0.574522, 0.375640, -0.727200,
		45.108948, 46.018394, 48.242020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.755970, 45.396572, 48.148685>,  <45.511112, 45.755444, 48.751057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.755970, 45.396572, 48.148685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.540024, 45.694763, 47.992325>,  <45.410458, 45.873680, 47.898506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.540024, 45.694763, 47.992325>,  <45.755970, 45.396572, 48.148685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.540024, 45.694763, 47.992325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665453, 0.093588, -0.740550,
		-0.515481, -0.659924, -0.546607,
		-0.539862, 0.745481, -0.390906,
		45.378063, 45.918407, 47.875053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.657047, 45.135838, 47.519382>,  <45.755970, 45.396572, 48.148685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.657047, 45.135838, 47.519382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.588020, 45.528152, 47.483009>,  <45.546604, 45.763542, 47.461185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.588020, 45.528152, 47.483009>,  <45.657047, 45.135838, 47.519382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.588020, 45.528152, 47.483009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620401, 0.036522, -0.783434,
		-0.765064, -0.191612, -0.614787,
		-0.172569, 0.980791, -0.090934,
		45.536251, 45.822392, 47.455730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.547436, 45.234825, 46.806526>,  <45.657047, 45.135838, 47.519382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.547436, 45.234825, 46.806526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.635902, 45.590279, 46.967236>,  <45.688984, 45.803551, 47.063660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.635902, 45.590279, 46.967236>,  <45.547436, 45.234825, 46.806526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635902, 45.590279, 46.967236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639014, 0.179166, -0.748038,
		-0.736712, 0.422182, -0.528221,
		0.221169, 0.888629, 0.401774,
		45.702251, 45.856869, 47.087769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415894, 45.697090, 46.296383>,  <45.547436, 45.234825, 46.806526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415894, 45.697090, 46.296383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.665939, 45.881157, 46.548569>,  <45.815968, 45.991596, 46.699879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.665939, 45.881157, 46.548569>,  <45.415894, 45.697090, 46.296383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.665939, 45.881157, 46.548569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661193, 0.117064, -0.741026,
		-0.414798, 0.880082, -0.231080,
		0.625113, 0.460164, 0.630462,
		45.853474, 46.019207, 46.737709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417530, 46.350029, 46.116135>,  <45.415894, 45.697090, 46.296383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417530, 46.350029, 46.116135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.751419, 46.237183, 46.305305>,  <45.951752, 46.169476, 46.418808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.751419, 46.237183, 46.305305>,  <45.417530, 46.350029, 46.116135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.751419, 46.237183, 46.305305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437681, -0.181292, -0.880664,
		0.334183, 0.942097, -0.027853,
		0.834720, -0.282112, 0.472923,
		46.001835, 46.152550, 46.447182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.580612, 46.050152, 52.399582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911781, 45.897293, 52.563782>,  <41.110481, 45.805576, 52.662300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911781, 45.897293, 52.563782>,  <40.580612, 46.050152, 52.399582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911781, 45.897293, 52.563782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552197, 0.427380, -0.715839,
		0.098116, 0.819335, 0.564857,
		0.827920, -0.382148, 0.410501,
		41.160156, 45.782650, 52.686932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057186, 46.607441, 52.469254>,  <40.580612, 46.050152, 52.399582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057186, 46.607441, 52.469254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245895, 46.255455, 52.447014>,  <41.359119, 46.044262, 52.433670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245895, 46.255455, 52.447014>,  <41.057186, 46.607441, 52.469254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245895, 46.255455, 52.447014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592189, 0.362941, -0.719435,
		0.653257, 0.306485, 0.692331,
		0.471771, -0.879966, -0.055596,
		41.387428, 45.991467, 52.430336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704872, 46.874397, 52.243954>,  <41.057186, 46.607441, 52.469254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704872, 46.874397, 52.243954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724190, 46.477303, 52.199883>,  <41.735783, 46.239044, 52.173439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724190, 46.477303, 52.199883>,  <41.704872, 46.874397, 52.243954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724190, 46.477303, 52.199883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532572, 0.118910, -0.837990,
		0.845006, -0.018204, 0.534447,
		0.048296, -0.992738, -0.110175,
		41.738678, 46.179482, 52.166832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364674, 46.763256, 51.993210>,  <41.704872, 46.874397, 52.243954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364674, 46.763256, 51.993210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184021, 46.419716, 51.896545>,  <42.075630, 46.213593, 51.838547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.184021, 46.419716, 51.896545>,  <42.364674, 46.763256, 51.993210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184021, 46.419716, 51.896545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564457, -0.065279, -0.822877,
		0.690957, -0.508042, 0.514268,
		-0.451627, -0.858855, -0.241663,
		42.048534, 46.162060, 51.824047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887444, 46.356281, 51.725048>,  <42.364674, 46.763256, 51.993210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887444, 46.356281, 51.725048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560661, 46.192078, 51.563030>,  <42.364590, 46.093555, 51.465820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560661, 46.192078, 51.563030>,  <42.887444, 46.356281, 51.725048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560661, 46.192078, 51.563030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480071, -0.094923, -0.872079,
		0.319547, -0.906903, 0.274621,
		-0.816959, -0.410508, -0.405045,
		42.315575, 46.068924, 51.441517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977875, 45.641727, 51.530510>,  <42.887444, 46.356281, 51.725048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977875, 45.641727, 51.530510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686996, 45.798790, 51.305298>,  <42.512470, 45.893028, 51.170170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686996, 45.798790, 51.305298>,  <42.977875, 45.641727, 51.530510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686996, 45.798790, 51.305298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508284, -0.243243, -0.826124,
		-0.461339, -0.886934, -0.022697,
		-0.727196, 0.392659, -0.563032,
		42.468838, 45.916588, 51.136387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905952, 45.125076, 51.055206>,  <42.977875, 45.641727, 51.530510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905952, 45.125076, 51.055206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736534, 45.446381, 50.887695>,  <42.634884, 45.639164, 50.787189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736534, 45.446381, 50.887695>,  <42.905952, 45.125076, 51.055206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736534, 45.446381, 50.887695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455154, -0.210999, -0.865051,
		-0.783225, -0.557000, -0.276240,
		-0.423548, 0.803262, -0.418781,
		42.609470, 45.687359, 50.762062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750942, 44.774849, 50.342842>,  <42.905952, 45.125076, 51.055206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750942, 44.774849, 50.342842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729385, 45.174164, 50.333763>,  <42.716450, 45.413754, 50.328316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729385, 45.174164, 50.333763>,  <42.750942, 44.774849, 50.342842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729385, 45.174164, 50.333763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448352, 0.003885, -0.893849,
		-0.892231, -0.058346, -0.447794,
		-0.053892, 0.998289, -0.022693,
		42.713219, 45.473652, 50.326954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486607, 44.889584, 49.707039>,  <42.750942, 44.774849, 50.342842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486607, 44.889584, 49.707039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662968, 45.232491, 49.813393>,  <42.768784, 45.438236, 49.877205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.662968, 45.232491, 49.813393>,  <42.486607, 44.889584, 49.707039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.662968, 45.232491, 49.813393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532503, -0.011374, -0.846352,
		-0.722525, 0.514747, -0.461512,
		0.440906, 0.857267, 0.265886,
		42.795238, 45.489670, 49.893158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809856, 45.110115, 49.277466>,  <42.486607, 44.889584, 49.707039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809856, 45.110115, 49.277466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674358, 44.837608, 49.017887>,  <41.593060, 44.674103, 48.862141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674358, 44.837608, 49.017887>,  <41.809856, 45.110115, 49.277466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674358, 44.837608, 49.017887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801175, -0.152782, 0.578599,
		-0.493327, 0.715914, -0.494060,
		-0.338744, -0.681267, -0.648944,
		41.572735, 44.633228, 48.823204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117596, 45.301529, 48.971752>,  <41.809856, 45.110115, 49.277466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117596, 45.301529, 48.971752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185051, 44.907730, 48.991070>,  <41.225525, 44.671452, 49.002659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185051, 44.907730, 48.991070>,  <41.117596, 45.301529, 48.971752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185051, 44.907730, 48.991070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859796, -0.122966, 0.495611,
		-0.481988, -0.125098, -0.867201,
		0.168636, -0.984495, 0.048291,
		41.235641, 44.612381, 49.005558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.365673, 44.927441, 48.817974>,  <41.117596, 45.301529, 48.971752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.365673, 44.927441, 48.817974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615768, 44.669662, 48.994049>,  <40.765827, 44.514996, 49.099693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615768, 44.669662, 48.994049>,  <40.365673, 44.927441, 48.817974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615768, 44.669662, 48.994049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699292, -0.212195, 0.682616,
		-0.346504, -0.734618, -0.583328,
		0.625241, -0.644446, 0.440186,
		40.803341, 44.476330, 49.126106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947945, 44.352333, 49.043678>,  <40.365673, 44.927441, 48.817974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947945, 44.352333, 49.043678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270054, 44.322517, 49.278957>,  <40.463318, 44.304630, 49.420124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270054, 44.322517, 49.278957>,  <39.947945, 44.352333, 49.043678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270054, 44.322517, 49.278957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582941, -0.280629, 0.762514,
		0.108230, -0.956918, -0.269434,
		0.805274, -0.074537, 0.588199,
		40.511635, 44.300156, 49.455418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755405, 43.745918, 49.382591>,  <39.947945, 44.352333, 49.043678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755405, 43.745918, 49.382591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060829, 43.904655, 49.586357>,  <40.244083, 43.999897, 49.708614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060829, 43.904655, 49.586357>,  <39.755405, 43.745918, 49.382591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060829, 43.904655, 49.586357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415719, -0.301562, 0.858043,
		0.494126, -0.866936, -0.065285,
		0.763556, 0.396841, 0.509411,
		40.289894, 44.023708, 49.739182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904881, 43.197857, 49.845181>,  <39.755405, 43.745918, 49.382591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904881, 43.197857, 49.845181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060455, 43.532227, 50.000080>,  <40.153801, 43.732849, 50.093021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060455, 43.532227, 50.000080>,  <39.904881, 43.197857, 49.845181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060455, 43.532227, 50.000080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466742, -0.183617, 0.865122,
		0.794281, -0.517222, 0.318745,
		0.388933, 0.835922, 0.387253,
		40.177135, 43.783005, 50.116257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229332, 43.031364, 50.467403>,  <39.904881, 43.197857, 49.845181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229332, 43.031364, 50.467403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177406, 43.423119, 50.529312>,  <40.146252, 43.658173, 50.566456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177406, 43.423119, 50.529312>,  <40.229332, 43.031364, 50.467403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177406, 43.423119, 50.529312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412580, -0.195289, 0.889742,
		0.901624, 0.051646, 0.429425,
		-0.129813, 0.979385, 0.154769,
		40.138462, 43.716934, 50.575745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487701, 43.142838, 51.142319>,  <40.229332, 43.031364, 50.467403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487701, 43.142838, 51.142319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240753, 43.448242, 51.066525>,  <40.092587, 43.631485, 51.021049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240753, 43.448242, 51.066525>,  <40.487701, 43.142838, 51.142319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240753, 43.448242, 51.066525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459698, -0.154674, 0.874502,
		0.638386, 0.626994, 0.446477,
		-0.617366, 0.763514, -0.189487,
		40.055542, 43.677296, 51.009678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410900, 43.524239, 51.793747>,  <40.487701, 43.142838, 51.142319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410900, 43.524239, 51.793747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090141, 43.665291, 51.600830>,  <39.897686, 43.749924, 51.485081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090141, 43.665291, 51.600830>,  <40.410900, 43.524239, 51.793747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090141, 43.665291, 51.600830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568570, -0.202440, 0.797337,
		0.183534, 0.913601, 0.362835,
		-0.801900, 0.352635, -0.482291,
		39.849571, 43.771080, 51.456142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026997, 43.740520, 52.400036>,  <40.410900, 43.524239, 51.793747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026997, 43.740520, 52.400036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753265, 43.761963, 52.109154>,  <39.589027, 43.774830, 51.934624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753265, 43.761963, 52.109154>,  <40.026997, 43.740520, 52.400036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753265, 43.761963, 52.109154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719801, -0.209076, 0.661946,
		-0.116554, 0.976429, 0.181664,
		-0.684325, 0.053610, -0.727204,
		39.547966, 43.778046, 51.890991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579895, 44.237164, 52.583378>,  <40.026997, 43.740520, 52.400036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579895, 44.237164, 52.583378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389404, 43.995461, 52.327850>,  <39.275108, 43.850441, 52.174534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389404, 43.995461, 52.327850>,  <39.579895, 44.237164, 52.583378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389404, 43.995461, 52.327850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658819, -0.235966, 0.714337,
		-0.582380, 0.761050, -0.285721,
		-0.476226, -0.604254, -0.638816,
		39.246536, 43.814186, 52.136204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810593, 44.472538, 52.508034>,  <39.579895, 44.237164, 52.583378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810593, 44.472538, 52.508034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869591, 44.086685, 52.420639>,  <38.904987, 43.855175, 52.368202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869591, 44.086685, 52.420639>,  <38.810593, 44.472538, 52.508034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869591, 44.086685, 52.420639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506423, -0.263405, 0.821069,
		-0.849578, -0.010452, -0.527360,
		0.147491, -0.964629, -0.218490,
		38.913837, 43.797298, 52.355091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052914, 44.214508, 52.538254>,  <38.810593, 44.472538, 52.508034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052914, 44.214508, 52.538254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270489, 43.879227, 52.554020>,  <38.401031, 43.678059, 52.563480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270489, 43.879227, 52.554020>,  <38.052914, 44.214508, 52.538254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270489, 43.879227, 52.554020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647523, -0.389393, 0.655047,
		-0.533713, -0.381826, -0.754559,
		0.543934, -0.838202, 0.039417,
		38.433670, 43.627766, 52.565845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577465, 43.592003, 52.433842>,  <38.052914, 44.214508, 52.538254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577465, 43.592003, 52.433842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901272, 43.430229, 52.604073>,  <38.095558, 43.333164, 52.706211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901272, 43.430229, 52.604073>,  <37.577465, 43.592003, 52.433842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901272, 43.430229, 52.604073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584383, -0.485518, 0.650206,
		-0.056339, -0.775054, -0.629379,
		0.809520, -0.404431, 0.425575,
		38.144127, 43.308899, 52.731747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<45.437355, 39.734200, 56.536720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.196487, 40.036316, 56.433235>,  <45.051968, 40.217587, 56.371143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.196487, 40.036316, 56.433235>,  <45.437355, 39.734200, 56.536720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.196487, 40.036316, 56.433235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445244, 0.048731, -0.894082,
		-0.662682, -0.653579, -0.365632,
		-0.602171, 0.755288, -0.258710,
		45.015835, 40.262901, 56.355621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344273, 39.623962, 55.821808>,  <45.437355, 39.734200, 56.536720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344273, 39.623962, 55.821808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.227043, 40.005783, 55.843494>,  <45.156708, 40.234875, 55.856506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.227043, 40.005783, 55.843494>,  <45.344273, 39.623962, 55.821808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227043, 40.005783, 55.843494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341138, 0.157372, -0.926746,
		-0.893160, -0.253107, -0.371755,
		-0.293070, 0.954553, 0.054214,
		45.139122, 40.292149, 55.859760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102036, 39.720413, 55.203545>,  <45.344273, 39.623962, 55.821808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102036, 39.720413, 55.203545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.137253, 40.104538, 55.309414>,  <45.158382, 40.335011, 55.372936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.137253, 40.104538, 55.309414>,  <45.102036, 39.720413, 55.203545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137253, 40.104538, 55.309414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380832, 0.213072, -0.899759,
		-0.920443, 0.180017, -0.346957,
		0.088045, 0.960310, 0.264676,
		45.163666, 40.392632, 55.388817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739040, 40.151810, 54.633781>,  <45.102036, 39.720413, 55.203545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739040, 40.151810, 54.633781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.011635, 40.384644, 54.811207>,  <45.175194, 40.524345, 54.917664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.011635, 40.384644, 54.811207>,  <44.739040, 40.151810, 54.633781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.011635, 40.384644, 54.811207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317135, 0.311343, -0.895819,
		-0.659543, 0.751161, 0.027577,
		0.681490, 0.582085, 0.443563,
		45.216084, 40.559269, 54.944275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.816444, 40.715141, 54.236073>,  <44.739040, 40.151810, 54.633781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.816444, 40.715141, 54.236073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.147545, 40.708191, 54.460403>,  <45.346203, 40.704021, 54.595001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.147545, 40.708191, 54.460403>,  <44.816444, 40.715141, 54.236073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147545, 40.708191, 54.460403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518409, 0.406097, -0.752554,
		-0.214672, 0.913665, 0.345156,
		0.827749, -0.017380, 0.560830,
		45.395870, 40.702976, 54.628651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.156475, 41.377403, 54.131626>,  <44.816444, 40.715141, 54.236073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.156475, 41.377403, 54.131626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.420418, 41.098396, 54.243382>,  <45.578785, 40.930992, 54.310436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.420418, 41.098396, 54.243382>,  <45.156475, 41.377403, 54.131626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420418, 41.098396, 54.243382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595098, 0.258125, -0.761071,
		0.458740, 0.668465, 0.585416,
		0.659860, -0.697514, 0.279390,
		45.618378, 40.889141, 54.327198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.733101, 41.733086, 54.000561>,  <45.156475, 41.377403, 54.131626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.733101, 41.733086, 54.000561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.827324, 41.344681, 54.016754>,  <45.883858, 41.111637, 54.026470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.827324, 41.344681, 54.016754>,  <45.733101, 41.733086, 54.000561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.827324, 41.344681, 54.016754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416861, 0.063318, -0.906762,
		0.877917, 0.230472, 0.419695,
		0.235558, -0.971017, 0.040487,
		45.897991, 41.053375, 54.028900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.384499, 41.727585, 53.802784>,  <45.733101, 41.733086, 54.000561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.384499, 41.727585, 53.802784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.260788, 41.348289, 53.773960>,  <46.186562, 41.120712, 53.756668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.260788, 41.348289, 53.773960>,  <46.384499, 41.727585, 53.802784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260788, 41.348289, 53.773960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423156, -0.069370, -0.903398,
		0.851637, -0.309893, 0.422707,
		-0.309280, -0.948237, -0.072055,
		46.168003, 41.063820, 53.752342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.860458, 41.477646, 53.462605>,  <46.384499, 41.727585, 53.802784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.860458, 41.477646, 53.462605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.574562, 41.202530, 53.411873>,  <46.403023, 41.037460, 53.381435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.574562, 41.202530, 53.411873>,  <46.860458, 41.477646, 53.462605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574562, 41.202530, 53.411873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252320, -0.084459, -0.963951,
		0.652285, -0.720979, 0.233910,
		-0.714744, -0.687791, -0.126826,
		46.360138, 40.996193, 53.373825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.118111, 41.119633, 52.879402>,  <46.860458, 41.477646, 53.462605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.118111, 41.119633, 52.879402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.748169, 40.968384, 52.863068>,  <46.526203, 40.877632, 52.853268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.748169, 40.968384, 52.863068>,  <47.118111, 41.119633, 52.879402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.748169, 40.968384, 52.863068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129302, -0.211635, -0.968758,
		0.357668, -0.901240, 0.244623,
		-0.924854, -0.378124, -0.040837,
		46.470715, 40.854946, 52.850815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.210175, 40.675571, 52.397354>,  <47.118111, 41.119633, 52.879402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.210175, 40.675571, 52.397354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.811508, 40.681740, 52.429405>,  <46.572308, 40.685440, 52.448635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.811508, 40.681740, 52.429405>,  <47.210175, 40.675571, 52.397354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.811508, 40.681740, 52.429405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081344, -0.265476, -0.960680,
		0.006459, -0.963994, 0.265845,
		-0.996665, 0.015420, 0.080130,
		46.512508, 40.686367, 52.453445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.066387, 40.032810, 52.089272>,  <47.210175, 40.675571, 52.397354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.066387, 40.032810, 52.089272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.752449, 40.278770, 52.058487>,  <46.564087, 40.426346, 52.040016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.752449, 40.278770, 52.058487>,  <47.066387, 40.032810, 52.089272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.752449, 40.278770, 52.058487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063922, -0.203858, -0.976911,
		-0.616389, -0.761802, 0.199302,
		-0.784843, 0.614898, -0.076961,
		46.516994, 40.463238, 52.035400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.567989, 39.676987, 51.680229>,  <47.066387, 40.032810, 52.089272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.567989, 39.676987, 51.680229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.478081, 40.066620, 51.670128>,  <46.424133, 40.300400, 51.664066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.478081, 40.066620, 51.670128>,  <46.567989, 39.676987, 51.680229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.478081, 40.066620, 51.670128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178872, 0.015774, -0.983746,
		-0.957852, -0.225638, -0.177782,
		-0.224775, 0.974084, -0.025251,
		46.410648, 40.358845, 51.662552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.170517, 39.794968, 51.076763>,  <46.567989, 39.676987, 51.680229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.170517, 39.794968, 51.076763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.320786, 40.153824, 51.169716>,  <46.410946, 40.369137, 51.225487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.320786, 40.153824, 51.169716>,  <46.170517, 39.794968, 51.076763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320786, 40.153824, 51.169716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249360, 0.143651, -0.957697,
		-0.892575, 0.417727, -0.169746,
		0.375672, 0.897145, 0.232384,
		46.433487, 40.422966, 51.239429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368702, 39.845974, 50.840633>,  <46.170517, 39.794968, 51.076763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368702, 39.845974, 50.840633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.103523, 39.677406, 50.593117>,  <44.944416, 39.576267, 50.444607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.103523, 39.677406, 50.593117>,  <45.368702, 39.845974, 50.840633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.103523, 39.677406, 50.593117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669194, -0.037037, 0.742164,
		-0.335682, 0.906109, -0.257458,
		-0.662946, -0.421421, -0.618795,
		44.904640, 39.550980, 50.407478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741180, 40.195992, 50.978153>,  <45.368702, 39.845974, 50.840633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741180, 40.195992, 50.978153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.654961, 39.846169, 50.804405>,  <44.603230, 39.636272, 50.700157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.654961, 39.846169, 50.804405>,  <44.741180, 40.195992, 50.978153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654961, 39.846169, 50.804405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653443, -0.201372, 0.729700,
		-0.725638, 0.441128, -0.528069,
		-0.215553, -0.874560, -0.434375,
		44.590294, 39.583801, 50.674091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010757, 40.141064, 51.018047>,  <44.741180, 40.195992, 50.978153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010757, 40.141064, 51.018047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.148315, 39.766434, 50.991039>,  <44.230850, 39.541656, 50.974834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.148315, 39.766434, 50.991039>,  <44.010757, 40.141064, 51.018047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148315, 39.766434, 50.991039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461029, -0.231054, 0.856776,
		-0.818038, -0.263513, -0.511248,
		0.343898, -0.936576, -0.067524,
		44.251484, 39.485462, 50.970783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422096, 39.767048, 51.016022>,  <44.010757, 40.141064, 51.018047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422096, 39.767048, 51.016022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.730347, 39.540184, 51.132271>,  <43.915295, 39.404064, 51.202023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.730347, 39.540184, 51.132271>,  <43.422096, 39.767048, 51.016022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730347, 39.540184, 51.132271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480925, -0.218331, 0.849142,
		-0.418151, -0.794139, -0.441014,
		0.770624, -0.567164, 0.290626,
		43.961533, 39.370033, 51.219460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160080, 39.086971, 51.008968>,  <43.422096, 39.767048, 51.016022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160080, 39.086971, 51.008968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.487446, 39.070107, 51.238197>,  <43.683865, 39.059986, 51.375736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.487446, 39.070107, 51.238197>,  <43.160080, 39.086971, 51.008968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.487446, 39.070107, 51.238197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518304, -0.484764, 0.704531,
		0.248098, -0.873628, -0.418595,
		0.818418, -0.042166, 0.573074,
		43.732971, 39.057457, 51.410118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111729, 38.454311, 51.276058>,  <43.160080, 39.086971, 51.008968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111729, 38.454311, 51.276058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.361816, 38.645164, 51.523102>,  <43.511868, 38.759678, 51.671329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.361816, 38.645164, 51.523102>,  <43.111729, 38.454311, 51.276058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361816, 38.645164, 51.523102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488459, -0.377967, 0.786479,
		0.608693, -0.793399, -0.003251,
		0.625220, 0.477136, 0.617609,
		43.549381, 38.788307, 51.708385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169704, 38.065998, 51.908817>,  <43.111729, 38.454311, 51.276058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169704, 38.065998, 51.908817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.271343, 38.435501, 52.023434>,  <43.332329, 38.657204, 52.092205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.271343, 38.435501, 52.023434>,  <43.169704, 38.065998, 51.908817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271343, 38.435501, 52.023434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564283, -0.099023, 0.819621,
		0.785505, -0.369958, 0.496098,
		0.254100, 0.923756, 0.286544,
		43.347572, 38.712627, 52.109398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184380, 37.990925, 52.563004>,  <43.169704, 38.065998, 51.908817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184380, 37.990925, 52.563004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.198200, 38.389130, 52.527744>,  <43.206493, 38.628052, 52.506588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.198200, 38.389130, 52.527744>,  <43.184380, 37.990925, 52.563004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198200, 38.389130, 52.527744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340168, 0.094652, 0.935589,
		0.939730, -0.002341, 0.341910,
		0.034553, 0.995507, -0.088151,
		43.208565, 38.687782, 52.501301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408371, 38.184006, 53.220772>,  <43.184380, 37.990925, 52.563004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408371, 38.184006, 53.220772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.264400, 38.515564, 53.049477>,  <43.178017, 38.714500, 52.946701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.264400, 38.515564, 53.049477>,  <43.408371, 38.184006, 53.220772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264400, 38.515564, 53.049477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534089, 0.193294, 0.823035,
		0.764985, 0.524948, 0.373132,
		-0.359927, 0.828895, -0.428236,
		43.156422, 38.764233, 52.921005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.652245, 38.820251, 53.598885>,  <43.408371, 38.184006, 53.220772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.652245, 38.820251, 53.598885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.309830, 38.918930, 53.417191>,  <43.104382, 38.978138, 53.308174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.309830, 38.918930, 53.417191>,  <43.652245, 38.820251, 53.598885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309830, 38.918930, 53.417191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389838, 0.268939, 0.880737,
		0.339441, 0.931027, -0.134049,
		-0.856041, 0.246701, -0.454239,
		43.053017, 38.992939, 53.280918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545670, 39.559166, 53.706497>,  <43.652245, 38.820251, 53.598885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545670, 39.559166, 53.706497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.220528, 39.337097, 53.636021>,  <43.025440, 39.203854, 53.593735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.220528, 39.337097, 53.636021>,  <43.545670, 39.559166, 53.706497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220528, 39.337097, 53.636021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384238, 0.283773, 0.878541,
		-0.437745, 0.781828, -0.443986,
		-0.812859, -0.555174, -0.176187,
		42.976669, 39.170544, 53.583164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073433, 39.851772, 54.069374>,  <43.545670, 39.559166, 53.706497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073433, 39.851772, 54.069374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.852470, 39.527557, 53.991516>,  <42.719894, 39.333031, 53.944801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.852470, 39.527557, 53.991516>,  <43.073433, 39.851772, 54.069374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.852470, 39.527557, 53.991516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460916, 0.102434, 0.881512,
		-0.694556, 0.576666, -0.430172,
		-0.552403, -0.810533, -0.194648,
		42.686749, 39.284397, 53.933121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423317, 40.097435, 54.126495>,  <43.073433, 39.851772, 54.069374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423317, 40.097435, 54.126495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.394886, 39.700378, 54.165726>,  <42.377827, 39.462147, 54.189262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.394886, 39.700378, 54.165726>,  <42.423317, 40.097435, 54.126495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394886, 39.700378, 54.165726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593979, 0.121111, 0.795312,
		-0.801334, -0.001723, -0.598215,
		-0.071080, -0.992637, 0.098074,
		42.373562, 39.402588, 54.195148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742237, 39.985844, 54.297764>,  <42.423317, 40.097435, 54.126495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742237, 39.985844, 54.297764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.921059, 39.648972, 54.418350>,  <42.028351, 39.446850, 54.490704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.921059, 39.648972, 54.418350>,  <41.742237, 39.985844, 54.297764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921059, 39.648972, 54.418350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578124, -0.014854, 0.815813,
		-0.682581, -0.538997, -0.493523,
		0.447052, -0.842177, 0.301468,
		42.055176, 39.396320, 54.508789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389915, 39.877464, 53.680698>,  <41.742237, 39.985844, 54.297764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389915, 39.877464, 53.680698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.011112, 39.918869, 53.559074>,  <40.783829, 39.943710, 53.486099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.011112, 39.918869, 53.559074>,  <41.389915, 39.877464, 53.680698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011112, 39.918869, 53.559074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319827, 0.216567, -0.922393,
		-0.029627, -0.970765, -0.238197,
		-0.947012, 0.103510, -0.304061,
		40.727009, 39.949921, 53.467857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306667, 39.454975, 53.144016>,  <41.389915, 39.877464, 53.680698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306667, 39.454975, 53.144016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.015419, 39.726509, 53.106018>,  <40.840668, 39.889427, 53.083221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.015419, 39.726509, 53.106018>,  <41.306667, 39.454975, 53.144016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015419, 39.726509, 53.106018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140273, 0.011919, -0.990041,
		-0.670940, -0.734196, -0.103900,
		-0.728123, 0.678832, -0.094991,
		40.796982, 39.930161, 53.077522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966148, 39.244579, 52.595776>,  <41.306667, 39.454975, 53.144016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966148, 39.244579, 52.595776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.869064, 39.631737, 52.621933>,  <40.810814, 39.864033, 52.637627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.869064, 39.631737, 52.621933>,  <40.966148, 39.244579, 52.595776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869064, 39.631737, 52.621933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065973, 0.083722, -0.994303,
		-0.967854, -0.237008, -0.084174,
		-0.242705, 0.967893, 0.065395,
		40.796253, 39.922104, 52.641552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744446, 39.355659, 51.913433>,  <40.966148, 39.244579, 52.595776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744446, 39.355659, 51.913433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.717293, 39.728523, 52.055683>,  <40.701000, 39.952240, 52.141033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.717293, 39.728523, 52.055683>,  <40.744446, 39.355659, 51.913433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717293, 39.728523, 52.055683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000742, 0.356401, -0.934333,
		-0.997693, -0.063693, -0.023503,
		-0.067887, 0.932160, 0.355626,
		40.696926, 40.008171, 52.162373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276516, 39.628799, 51.475903>,  <40.744446, 39.355659, 51.913433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276516, 39.628799, 51.475903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.493740, 39.927475, 51.629543>,  <40.624077, 40.106682, 51.721729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.493740, 39.927475, 51.629543>,  <40.276516, 39.628799, 51.475903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493740, 39.927475, 51.629543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119094, 0.384315, -0.915488,
		-0.831204, 0.542912, 0.119781,
		0.543063, 0.746692, 0.384101,
		40.656658, 40.151482, 51.744774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009701, 40.128448, 51.095127>,  <40.276516, 39.628799, 51.475903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009701, 40.128448, 51.095127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.360512, 40.244682, 51.248169>,  <40.570999, 40.314423, 51.339996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.360512, 40.244682, 51.248169>,  <40.009701, 40.128448, 51.095127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360512, 40.244682, 51.248169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271739, 0.356724, -0.893815,
		-0.396214, 0.887868, 0.233893,
		0.877025, 0.290584, 0.382607,
		40.623619, 40.331856, 51.362949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159260, 40.929951, 50.787659>,  <40.009701, 40.128448, 51.095127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159260, 40.929951, 50.787659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.507599, 40.761314, 50.888756>,  <40.716602, 40.660133, 50.949413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.507599, 40.761314, 50.888756>,  <40.159260, 40.929951, 50.787659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507599, 40.761314, 50.888756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452264, 0.485796, -0.747971,
		0.192559, 0.765676, 0.613727,
		0.870849, -0.421595, 0.252743,
		40.768852, 40.634834, 50.964577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636158, 41.442417, 50.636791>,  <40.159260, 40.929951, 50.787659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636158, 41.442417, 50.636791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.846119, 41.105339, 50.684692>,  <40.972095, 40.903091, 50.713432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.846119, 41.105339, 50.684692>,  <40.636158, 41.442417, 50.636791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846119, 41.105339, 50.684692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482725, 0.178849, -0.857315,
		0.701038, 0.507815, 0.500669,
		0.524902, -0.842696, 0.119755,
		41.003590, 40.852531, 50.720619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462250, 41.510773, 50.589157>,  <40.636158, 41.442417, 50.636791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462250, 41.510773, 50.589157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.309723, 41.163902, 50.461037>,  <41.218204, 40.955780, 50.384163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.309723, 41.163902, 50.461037>,  <41.462250, 41.510773, 50.589157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309723, 41.163902, 50.461037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572153, 0.050763, -0.818575,
		0.726111, -0.495401, 0.476803,
		-0.381319, -0.867180, -0.320304,
		41.195328, 40.903748, 50.364944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106800, 41.180321, 50.283688>,  <41.462250, 41.510773, 50.589157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106800, 41.180321, 50.283688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.768349, 41.020332, 50.142780>,  <41.565277, 40.924339, 50.058235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.768349, 41.020332, 50.142780>,  <42.106800, 41.180321, 50.283688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768349, 41.020332, 50.142780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456777, -0.203618, -0.865964,
		0.274632, -0.893624, 0.354984,
		-0.846128, -0.399970, -0.352267,
		41.514511, 40.900341, 50.037102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384274, 40.544792, 49.901550>,  <42.106800, 41.180321, 50.283688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384274, 40.544792, 49.901550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.015022, 40.638794, 49.779827>,  <41.793472, 40.695194, 49.706791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.015022, 40.638794, 49.779827>,  <42.384274, 40.544792, 49.901550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015022, 40.638794, 49.779827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264283, -0.187027, -0.946137,
		-0.279265, -0.953830, 0.110541,
		-0.923128, 0.235009, -0.304311,
		41.738083, 40.709297, 49.688534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153664, 40.082962, 49.415249>,  <42.384274, 40.544792, 49.901550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153664, 40.082962, 49.415249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.945404, 40.414764, 49.334400>,  <41.820450, 40.613846, 49.285892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.945404, 40.414764, 49.334400>,  <42.153664, 40.082962, 49.415249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945404, 40.414764, 49.334400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266826, -0.066786, -0.961428,
		-0.811007, -0.554493, -0.186561,
		-0.520646, 0.829504, -0.202117,
		41.789211, 40.663616, 49.273766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903786, 39.928104, 48.702904>,  <42.153664, 40.082962, 49.415249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903786, 39.928104, 48.702904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.863777, 40.322762, 48.754322>,  <41.839771, 40.559555, 48.785172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.863777, 40.322762, 48.754322>,  <41.903786, 39.928104, 48.702904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863777, 40.322762, 48.754322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208192, 0.147083, -0.966966,
		-0.972961, -0.069953, -0.220123,
		-0.100019, 0.986647, 0.128542,
		41.833771, 40.618755, 48.792885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556759, 40.188633, 48.135639>,  <41.903786, 39.928104, 48.702904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556759, 40.188633, 48.135639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.713531, 40.524673, 48.285637>,  <41.807594, 40.726299, 48.375633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.713531, 40.524673, 48.285637>,  <41.556759, 40.188633, 48.135639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713531, 40.524673, 48.285637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311138, 0.262546, -0.913380,
		-0.865786, 0.474654, -0.158489,
		0.391928, 0.840103, 0.374992,
		41.831108, 40.776703, 48.398136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.358475, 42.769089, 52.669857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.686134, 42.863556, 52.878937>,  <37.882732, 42.920235, 53.004383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.686134, 42.863556, 52.878937>,  <37.358475, 42.769089, 52.669857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686134, 42.863556, 52.878937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433838, -0.341006, 0.833966,
		0.375196, -0.909913, -0.176879,
		0.819154, 0.236165, 0.522699,
		37.931881, 42.934406, 53.035748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601620, 42.082272, 52.925663>,  <37.358475, 42.769089, 52.669857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601620, 42.082272, 52.925663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.742981, 42.374504, 53.159367>,  <37.827797, 42.549843, 53.299587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.742981, 42.374504, 53.159367>,  <37.601620, 42.082272, 52.925663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742981, 42.374504, 53.159367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397253, -0.448241, 0.800794,
		0.846933, -0.515102, 0.131815,
		0.353405, 0.730582, 0.584255,
		37.849003, 42.593678, 53.334644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841019, 41.738964, 53.590801>,  <37.601620, 42.082272, 52.925663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841019, 41.738964, 53.590801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.821037, 42.127159, 53.685165>,  <37.809048, 42.360077, 53.741783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.821037, 42.127159, 53.685165>,  <37.841019, 41.738964, 53.590801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821037, 42.127159, 53.685165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585151, -0.219859, 0.780551,
		0.809384, -0.099051, 0.578866,
		-0.049954, 0.970490, 0.235910,
		37.806049, 42.418304, 53.755939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189034, 41.755791, 54.240211>,  <37.841019, 41.738964, 53.590801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189034, 41.755791, 54.240211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.938126, 42.063309, 54.190426>,  <37.787582, 42.247818, 54.160553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.938126, 42.063309, 54.190426>,  <38.189034, 41.755791, 54.240211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938126, 42.063309, 54.190426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511729, -0.286386, 0.810010,
		0.587088, 0.571783, 0.573056,
		-0.627265, 0.768796, -0.124464,
		37.749947, 42.293949, 54.153088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137951, 42.092983, 54.940559>,  <38.189034, 41.755791, 54.240211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137951, 42.092983, 54.940559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.816940, 42.227486, 54.743431>,  <37.624332, 42.308189, 54.625153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.816940, 42.227486, 54.743431>,  <38.137951, 42.092983, 54.940559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816940, 42.227486, 54.743431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546832, -0.084252, 0.832992,
		0.238580, 0.937993, 0.251492,
		-0.802530, 0.336259, -0.492824,
		37.576180, 42.328365, 54.595585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931847, 42.545063, 55.294891>,  <38.137951, 42.092983, 54.940559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931847, 42.545063, 55.294891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.600052, 42.471657, 55.083885>,  <37.400974, 42.427612, 54.957283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.600052, 42.471657, 55.083885>,  <37.931847, 42.545063, 55.294891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600052, 42.471657, 55.083885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537678, 0.006758, 0.843123,
		-0.151158, 0.982994, -0.104276,
		-0.829490, -0.183512, -0.527513,
		37.351204, 42.416603, 54.925632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498329, 43.047695, 55.510509>,  <37.931847, 42.545063, 55.294891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498329, 43.047695, 55.510509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.251656, 42.775070, 55.352947>,  <37.103649, 42.611496, 55.258411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.251656, 42.775070, 55.352947>,  <37.498329, 43.047695, 55.510509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251656, 42.775070, 55.352947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566941, 0.037380, 0.822910,
		-0.546144, 0.730800, -0.409460,
		-0.616688, -0.681567, -0.393906,
		37.066650, 42.570599, 55.234776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759125, 43.300961, 55.582081>,  <37.498329, 43.047695, 55.510509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759125, 43.300961, 55.582081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.753090, 42.904007, 55.533165>,  <36.749470, 42.665836, 55.503815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.753090, 42.904007, 55.533165>,  <36.759125, 43.300961, 55.582081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753090, 42.904007, 55.533165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769759, -0.066528, 0.634859,
		-0.638156, 0.103715, -0.762889,
		-0.015091, -0.992380, -0.122290,
		36.748562, 42.606293, 55.496479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035191, 43.065853, 55.490486>,  <36.759125, 43.300961, 55.582081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035191, 43.065853, 55.490486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.248306, 42.769508, 55.654079>,  <36.376175, 42.591702, 55.752235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.248306, 42.769508, 55.654079>,  <36.035191, 43.065853, 55.490486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248306, 42.769508, 55.654079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653329, -0.052932, 0.755222,
		-0.537864, -0.669573, -0.512225,
		0.532789, -0.740858, 0.408981,
		36.408142, 42.547253, 55.776775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552322, 42.647293, 55.891285>,  <36.035191, 43.065853, 55.490486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552322, 42.647293, 55.891285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.900822, 42.496330, 56.016819>,  <36.109921, 42.405754, 56.092140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.900822, 42.496330, 56.016819>,  <35.552322, 42.647293, 55.891285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900822, 42.496330, 56.016819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343955, -0.013291, 0.938892,
		-0.350172, -0.925953, -0.141390,
		0.871249, -0.377406, 0.313832,
		36.162197, 42.383110, 56.110970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344009, 42.151573, 56.457222>,  <35.552322, 42.647293, 55.891285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344009, 42.151573, 56.457222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.738525, 42.193275, 56.508392>,  <35.975235, 42.218296, 56.539093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.738525, 42.193275, 56.508392>,  <35.344009, 42.151573, 56.457222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738525, 42.193275, 56.508392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126288, -0.022184, 0.991745,
		0.106237, -0.994303, -0.008713,
		0.986288, 0.104260, 0.127926,
		36.034412, 42.224552, 56.546768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570824, 41.687492, 57.003029>,  <35.344009, 42.151573, 56.457222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570824, 41.687492, 57.003029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.811512, 42.006973, 57.002701>,  <35.955925, 42.198662, 57.002502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.811512, 42.006973, 57.002701>,  <35.570824, 41.687492, 57.003029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811512, 42.006973, 57.002701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320585, 0.242464, 0.915662,
		0.731546, -0.550707, 0.401949,
		0.601720, 0.798707, -0.000825,
		35.992027, 42.246586, 57.002453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054516, 41.661419, 57.557400>,  <35.570824, 41.687492, 57.003029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054516, 41.661419, 57.557400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.936668, 42.022835, 57.432938>,  <35.865959, 42.239685, 57.358261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.936668, 42.022835, 57.432938>,  <36.054516, 41.661419, 57.557400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936668, 42.022835, 57.432938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423385, 0.168492, 0.890144,
		0.856705, 0.393995, 0.332903,
		-0.294620, 0.903537, -0.311159,
		35.848282, 42.293896, 57.339588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370285, 41.028351, 57.372997>,  <36.054516, 41.661419, 57.557400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370285, 41.028351, 57.372997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.354912, 41.002861, 57.771889>,  <36.345688, 40.987568, 58.011223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.354912, 41.002861, 57.771889>,  <36.370285, 41.028351, 57.372997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354912, 41.002861, 57.771889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732937, -0.676531, -0.071477,
		0.679210, -0.733652, -0.020704,
		-0.038433, -0.063723, 0.997227,
		36.343384, 40.983746, 58.071056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916157, 40.440750, 57.680317>,  <36.370285, 41.028351, 57.372997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916157, 40.440750, 57.680317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.985435, 40.055862, 57.764343>,  <37.027000, 39.824928, 57.814758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.985435, 40.055862, 57.764343>,  <36.916157, 40.440750, 57.680317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985435, 40.055862, 57.764343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804439, 0.015147, -0.593843,
		0.568228, 0.271838, 0.776673,
		0.173193, -0.962224, 0.210070,
		37.037392, 39.767197, 57.827366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647755, 40.314266, 57.824455>,  <36.916157, 40.440750, 57.680317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647755, 40.314266, 57.824455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512562, 39.950455, 57.727692>,  <37.431446, 39.732166, 57.669632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512562, 39.950455, 57.727692>,  <37.647755, 40.314266, 57.824455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512562, 39.950455, 57.727692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594431, -0.007016, -0.804116,
		0.729671, -0.415577, 0.543025,
		-0.337982, -0.909531, -0.241913,
		37.411167, 39.677597, 57.655117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282993, 39.952042, 57.767841>,  <37.647755, 40.314266, 57.824455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282993, 39.952042, 57.767841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.001091, 39.775513, 57.545654>,  <37.831947, 39.669594, 57.412342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.001091, 39.775513, 57.545654>,  <38.282993, 39.952042, 57.767841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001091, 39.775513, 57.545654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671264, -0.161422, -0.723428,
		0.229603, -0.882709, 0.410010,
		-0.704761, -0.441326, -0.555468,
		37.789661, 39.643116, 57.379013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645012, 39.401638, 57.457935>,  <38.282993, 39.952042, 57.767841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645012, 39.401638, 57.457935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.331707, 39.443504, 57.212807>,  <38.143726, 39.468624, 57.065731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.331707, 39.443504, 57.212807>,  <38.645012, 39.401638, 57.457935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331707, 39.443504, 57.212807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612721, -0.036925, -0.789436,
		-0.105255, -0.993822, -0.035209,
		-0.783258, 0.104666, -0.612823,
		38.096729, 39.474903, 57.028961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773880, 38.962738, 57.017612>,  <38.645012, 39.401638, 57.457935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773880, 38.962738, 57.017612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.513054, 39.188431, 56.815052>,  <38.356556, 39.323849, 56.693516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.513054, 39.188431, 56.815052>,  <38.773880, 38.962738, 57.017612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513054, 39.188431, 56.815052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544143, -0.116819, -0.830820,
		-0.527935, -0.817308, -0.230851,
		-0.652068, 0.564234, -0.506405,
		38.317432, 39.357700, 56.663132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588276, 38.573414, 56.462387>,  <38.773880, 38.962738, 57.017612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588276, 38.573414, 56.462387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.500023, 38.951462, 56.365997>,  <38.447071, 39.178291, 56.308163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.500023, 38.951462, 56.365997>,  <38.588276, 38.573414, 56.462387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500023, 38.951462, 56.365997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517170, -0.096117, -0.850469,
		-0.826957, -0.312266, -0.467581,
		-0.220630, 0.945120, -0.240979,
		38.433834, 39.234997, 56.293705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548607, 38.454956, 55.753399>,  <38.588276, 38.573414, 56.462387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548607, 38.454956, 55.753399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.578392, 38.851250, 55.798817>,  <38.596264, 39.089027, 55.826065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.578392, 38.851250, 55.798817>,  <38.548607, 38.454956, 55.753399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578392, 38.851250, 55.798817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529165, 0.057248, -0.846586,
		-0.845245, 0.123124, -0.520001,
		0.074466, 0.990739, 0.113541,
		38.600731, 39.148472, 55.832878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547817, 38.716160, 55.044521>,  <38.548607, 38.454956, 55.753399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547817, 38.716160, 55.044521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.650867, 39.047745, 55.243095>,  <38.712700, 39.246696, 55.362240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.650867, 39.047745, 55.243095>,  <38.547817, 38.716160, 55.044521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650867, 39.047745, 55.243095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514832, 0.317013, -0.796524,
		-0.817665, 0.460790, -0.345104,
		0.257628, 0.828961, 0.496440,
		38.728157, 39.296432, 55.392029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358692, 39.223228, 54.619877>,  <38.547817, 38.716160, 55.044521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358692, 39.223228, 54.619877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.652439, 39.343079, 54.863495>,  <38.828686, 39.414989, 55.009666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.652439, 39.343079, 54.863495>,  <38.358692, 39.223228, 54.619877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652439, 39.343079, 54.863495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593016, 0.153309, -0.790461,
		-0.330211, 0.941660, -0.065095,
		0.734365, 0.299621, 0.609044,
		38.872749, 39.432964, 55.046207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608658, 39.824383, 54.352104>,  <38.358692, 39.223228, 54.619877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608658, 39.824383, 54.352104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.904907, 39.734016, 54.605225>,  <39.082657, 39.679798, 54.757095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.904907, 39.734016, 54.605225>,  <38.608658, 39.824383, 54.352104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904907, 39.734016, 54.605225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665688, 0.118770, -0.736718,
		0.091280, 0.966879, 0.238354,
		0.740627, -0.225917, 0.632798,
		39.127094, 39.666241, 54.795063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109268, 40.443348, 54.283524>,  <38.608658, 39.824383, 54.352104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109268, 40.443348, 54.283524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.295006, 40.119164, 54.426369>,  <39.406448, 39.924652, 54.512077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.295006, 40.119164, 54.426369>,  <39.109268, 40.443348, 54.283524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295006, 40.119164, 54.426369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667619, 0.055358, -0.742442,
		0.581955, 0.583165, 0.566787,
		0.464342, -0.810466, 0.357116,
		39.434307, 39.876022, 54.533504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756767, 40.684631, 54.570892>,  <39.109268, 40.443348, 54.283524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756767, 40.684631, 54.570892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782982, 40.301224, 54.459930>,  <39.798710, 40.071178, 54.393353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782982, 40.301224, 54.459930>,  <39.756767, 40.684631, 54.570892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782982, 40.301224, 54.459930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628883, 0.255519, -0.734313,
		0.774733, -0.126334, 0.619539,
		0.065535, -0.958515, -0.277408,
		39.802643, 40.013668, 54.376709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457294, 40.614998, 54.468479>,  <39.756767, 40.684631, 54.570892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457294, 40.614998, 54.468479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.288635, 40.298729, 54.290916>,  <40.187439, 40.108967, 54.184380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.288635, 40.298729, 54.290916>,  <40.457294, 40.614998, 54.468479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288635, 40.298729, 54.290916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642456, 0.084978, -0.761596,
		0.639892, -0.606320, 0.472138,
		-0.421649, -0.790668, -0.443911,
		40.162140, 40.061527, 54.157742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021637, 40.290962, 54.211231>,  <40.457294, 40.614998, 54.468479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021637, 40.290962, 54.211231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.719116, 40.128845, 54.005806>,  <40.537601, 40.031574, 53.882553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.719116, 40.128845, 54.005806>,  <41.021637, 40.290962, 54.211231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719116, 40.128845, 54.005806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509440, 0.127663, -0.850983,
		0.410457, -0.905231, 0.109918,
		-0.756304, -0.405289, -0.513561,
		40.492226, 40.007259, 53.851738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170345, 39.688828, 54.649872>,  <41.021637, 40.290962, 54.211231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170345, 39.688828, 54.649872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.483215, 39.485718, 54.794296>,  <41.670937, 39.363853, 54.880951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.483215, 39.485718, 54.794296>,  <41.170345, 39.688828, 54.649872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483215, 39.485718, 54.794296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509745, -0.188296, 0.839467,
		-0.358274, -0.840660, -0.406116,
		0.782176, -0.507775, 0.361061,
		41.717869, 39.333385, 54.902615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912865, 39.101582, 55.066113>,  <41.170345, 39.688828, 54.649872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912865, 39.101582, 55.066113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.286285, 39.139389, 55.204418>,  <41.510338, 39.162071, 55.287403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.286285, 39.139389, 55.204418>,  <40.912865, 39.101582, 55.066113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286285, 39.139389, 55.204418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351061, 0.046237, 0.935210,
		0.072403, -0.994449, 0.076344,
		0.933549, 0.094514, 0.345765,
		41.566349, 39.167744, 55.308147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086487, 38.615147, 55.598824>,  <40.912865, 39.101582, 55.066113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086487, 38.615147, 55.598824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.330246, 38.924339, 55.669395>,  <41.476501, 39.109856, 55.711739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.330246, 38.924339, 55.669395>,  <41.086487, 38.615147, 55.598824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330246, 38.924339, 55.669395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325997, 0.041436, 0.944462,
		0.722745, -0.633069, 0.277242,
		0.609398, 0.772985, 0.176431,
		41.513065, 39.156235, 55.722324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404209, 38.505306, 56.312672>,  <41.086487, 38.615147, 55.598824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404209, 38.505306, 56.312672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.433472, 38.895905, 56.231579>,  <41.451031, 39.130264, 56.182922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.433472, 38.895905, 56.231579>,  <41.404209, 38.505306, 56.312672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433472, 38.895905, 56.231579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141848, 0.211402, 0.967051,
		0.987181, -0.041990, 0.153980,
		0.073159, 0.976497, -0.202736,
		41.455418, 39.188854, 56.170757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962372, 38.713573, 56.641613>,  <41.404209, 38.505306, 56.312672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962372, 38.713573, 56.641613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.748756, 39.049675, 56.604118>,  <41.620586, 39.251335, 56.581623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.748756, 39.049675, 56.604118>,  <41.962372, 38.713573, 56.641613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748756, 39.049675, 56.604118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016520, 0.121220, 0.992488,
		0.845301, 0.528475, -0.078617,
		-0.534035, 0.840250, -0.093737,
		41.588547, 39.301750, 56.575996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263817, 39.241539, 57.120216>,  <41.962372, 38.713573, 56.641613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263817, 39.241539, 57.120216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.914158, 39.425499, 57.057796>,  <41.704361, 39.535873, 57.020344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.914158, 39.425499, 57.057796>,  <42.263817, 39.241539, 57.120216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914158, 39.425499, 57.057796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112135, 0.121503, 0.986237,
		0.472530, 0.879619, -0.054641,
		-0.874152, 0.459899, -0.156050,
		41.651913, 39.563469, 57.010983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224129, 39.908871, 57.544029>,  <42.263817, 39.241539, 57.120216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224129, 39.908871, 57.544029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.845970, 39.821457, 57.447304>,  <41.619076, 39.769009, 57.389267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.845970, 39.821457, 57.447304>,  <42.224129, 39.908871, 57.544029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845970, 39.821457, 57.447304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239899, -0.035683, 0.970142,
		-0.220638, 0.975177, -0.018691,
		-0.945393, -0.218534, -0.241817,
		41.562351, 39.755898, 57.374760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576897, 40.566307, 57.645508>,  <42.224129, 39.908871, 57.544029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576897, 40.566307, 57.645508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.786278, 40.713570, 57.952873>,  <42.911907, 40.801926, 58.137291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.786278, 40.713570, 57.952873>,  <42.576897, 40.566307, 57.645508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786278, 40.713570, 57.952873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845055, -0.108976, -0.523457,
		-0.108976, 0.923355, -0.368157,
		0.523457, 0.368157, 0.768409,
		42.943314, 40.824017, 58.183395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930725, 41.190216, 57.319710>,  <42.576897, 40.566307, 57.645508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930725, 41.190216, 57.319710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.135616, 41.098885, 57.650887>,  <43.258553, 41.044086, 57.849594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.135616, 41.098885, 57.650887>,  <42.930725, 41.190216, 57.319710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135616, 41.098885, 57.650887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834285, -0.096632, -0.542800,
		0.203942, 0.968777, 0.140992,
		0.512227, -0.228327, 0.827943,
		43.289284, 41.030388, 57.899269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552399, 41.611530, 57.287697>,  <42.930725, 41.190216, 57.319710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552399, 41.611530, 57.287697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.662231, 41.307693, 57.523533>,  <43.728130, 41.125389, 57.665035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.662231, 41.307693, 57.523533>,  <43.552399, 41.611530, 57.287697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662231, 41.307693, 57.523533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677232, -0.282509, -0.679372,
		0.682613, 0.585834, 0.436850,
		0.274585, -0.759596, 0.589590,
		43.744606, 41.079815, 57.700409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289288, 41.628025, 57.333496>,  <43.552399, 41.611530, 57.287697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289288, 41.628025, 57.333496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.210918, 41.254829, 57.454254>,  <44.163895, 41.030910, 57.526711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.210918, 41.254829, 57.454254>,  <44.289288, 41.628025, 57.333496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210918, 41.254829, 57.454254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690984, -0.349804, -0.632596,
		0.695811, 0.084665, 0.713217,
		-0.195927, -0.932989, 0.301900,
		44.152142, 40.974934, 57.544823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.847771, 41.319336, 57.510845>,  <44.289288, 41.628025, 57.333496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.847771, 41.319336, 57.510845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.598076, 41.019875, 57.421547>,  <44.448257, 40.840199, 57.367966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.598076, 41.019875, 57.421547>,  <44.847771, 41.319336, 57.510845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.598076, 41.019875, 57.421547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705687, -0.417765, -0.572257,
		0.335157, -0.514771, 0.789102,
		-0.624240, -0.748655, -0.223250,
		44.410805, 40.795277, 57.354572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268070, 40.903435, 57.348381>,  <44.847771, 41.319336, 57.510845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268070, 40.903435, 57.348381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.936310, 40.758492, 57.178303>,  <44.737255, 40.671524, 57.076256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.936310, 40.758492, 57.178303>,  <45.268070, 40.903435, 57.348381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.936310, 40.758492, 57.178303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544948, -0.357185, -0.758585,
		0.123008, -0.860879, 0.493717,
		-0.829398, -0.362362, -0.425198,
		44.687489, 40.649784, 57.050743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.434582, 40.281635, 57.101700>,  <45.268070, 40.903435, 57.348381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.434582, 40.281635, 57.101700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.112144, 40.369270, 56.881805>,  <44.918682, 40.421852, 56.749866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.112144, 40.369270, 56.881805>,  <45.434582, 40.281635, 57.101700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112144, 40.369270, 56.881805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566468, 0.016849, -0.823911,
		-0.171250, -0.975559, -0.137691,
		-0.806094, 0.219093, -0.549738,
		44.870316, 40.434998, 56.716885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.297676, 43.700169, 58.307468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.177921, 43.625023, 57.933289>,  <37.106068, 43.579937, 57.708778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.177921, 43.625023, 57.933289>,  <37.297676, 43.700169, 58.307468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177921, 43.625023, 57.933289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914320, 0.223763, -0.337565,
		0.272735, -0.956367, 0.104775,
		-0.299391, -0.187863, -0.935453,
		37.088104, 43.568665, 57.652653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761665, 43.166985, 57.954018>,  <37.297676, 43.700169, 58.307468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761665, 43.166985, 57.954018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.580952, 43.369987, 57.660534>,  <37.472523, 43.491791, 57.484444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.580952, 43.369987, 57.660534>,  <37.761665, 43.166985, 57.954018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580952, 43.369987, 57.660534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884710, 0.149027, -0.441678,
		-0.114813, -0.848661, -0.516326,
		-0.451781, 0.507509, -0.733708,
		37.445415, 43.522240, 57.440422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075607, 42.932114, 57.372910>,  <37.761665, 43.166985, 57.954018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075607, 42.932114, 57.372910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.909393, 43.276367, 57.255173>,  <37.809666, 43.482922, 57.184532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.909393, 43.276367, 57.255173>,  <38.075607, 42.932114, 57.372910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909393, 43.276367, 57.255173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812034, 0.205215, -0.546341,
		-0.409798, -0.466038, -0.784140,
		-0.415533, 0.860637, -0.294342,
		37.784733, 43.534557, 57.166870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369007, 42.994957, 56.667423>,  <38.075607, 42.932114, 57.372910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369007, 42.994957, 56.667423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.241055, 43.365883, 56.745163>,  <38.164284, 43.588436, 56.791805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.241055, 43.365883, 56.745163>,  <38.369007, 42.994957, 56.667423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241055, 43.365883, 56.745163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713858, 0.370760, -0.594091,
		-0.622963, -0.051304, -0.780567,
		-0.319883, 0.927310, 0.194346,
		38.145088, 43.644077, 56.803467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311066, 43.310570, 55.935459>,  <38.369007, 42.994957, 56.667423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311066, 43.310570, 55.935459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.334049, 43.594353, 56.216423>,  <38.347839, 43.764622, 56.385002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.334049, 43.594353, 56.216423>,  <38.311066, 43.310570, 55.935459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334049, 43.594353, 56.216423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746185, 0.436899, -0.502323,
		-0.663255, 0.552987, -0.504281,
		0.057458, 0.709454, 0.702405,
		38.351288, 43.807190, 56.427143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460838, 43.871090, 55.558514>,  <38.311066, 43.310570, 55.935459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460838, 43.871090, 55.558514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.565071, 43.991745, 55.925362>,  <38.627609, 44.064137, 56.145470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.565071, 43.991745, 55.925362>,  <38.460838, 43.871090, 55.558514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565071, 43.991745, 55.925362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780091, 0.493900, -0.384085,
		-0.568821, 0.815524, -0.106602,
		0.260580, 0.301635, 0.917123,
		38.643246, 44.082237, 56.200497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480583, 44.566036, 55.550995>,  <38.460838, 43.871090, 55.558514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480583, 44.566036, 55.550995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.730507, 44.427956, 55.831123>,  <38.880459, 44.345108, 55.999199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.730507, 44.427956, 55.831123>,  <38.480583, 44.566036, 55.550995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730507, 44.427956, 55.831123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752083, 0.507034, -0.421055,
		-0.209736, 0.789778, 0.576421,
		0.624805, -0.345206, 0.700322,
		38.917950, 44.324394, 56.041222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836815, 45.180241, 55.631603>,  <38.480583, 44.566036, 55.550995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836815, 45.180241, 55.631603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.054039, 44.888351, 55.797783>,  <39.184372, 44.713219, 55.897491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.054039, 44.888351, 55.797783>,  <38.836815, 45.180241, 55.631603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054039, 44.888351, 55.797783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839560, 0.462976, -0.284239,
		0.015073, 0.503150, 0.864068,
		0.543057, -0.729721, 0.415446,
		39.216957, 44.669434, 55.922417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352036, 45.559647, 56.077442>,  <38.836815, 45.180241, 55.631603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352036, 45.559647, 56.077442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.509136, 45.200310, 55.998726>,  <39.603397, 44.984707, 55.951496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.509136, 45.200310, 55.998726>,  <39.352036, 45.559647, 56.077442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509136, 45.200310, 55.998726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784751, 0.438952, -0.437591,
		0.479487, 0.017437, 0.877376,
		0.392756, -0.898341, -0.196788,
		39.626965, 44.930809, 55.939690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995071, 45.664043, 56.077068>,  <39.352036, 45.559647, 56.077442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995071, 45.664043, 56.077068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.991882, 45.306145, 55.898464>,  <39.989971, 45.091408, 55.791302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.991882, 45.306145, 55.898464>,  <39.995071, 45.664043, 56.077068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991882, 45.306145, 55.898464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692332, 0.317255, -0.648094,
		0.721535, -0.314298, 0.616931,
		-0.007970, -0.894744, -0.446509,
		39.989491, 45.037724, 55.764511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714622, 45.526344, 55.856712>,  <39.995071, 45.664043, 56.077068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714622, 45.526344, 55.856712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.535110, 45.264801, 55.613052>,  <40.427402, 45.107876, 55.466858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.535110, 45.264801, 55.613052>,  <40.714622, 45.526344, 55.856712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535110, 45.264801, 55.613052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596780, 0.288085, -0.748906,
		0.665166, -0.699623, 0.260923,
		-0.448784, -0.653861, -0.609146,
		40.400475, 45.068642, 55.430309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229961, 45.106037, 55.531502>,  <40.714622, 45.526344, 55.856712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229961, 45.106037, 55.531502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.907925, 45.104042, 55.294250>,  <40.714703, 45.102844, 55.151901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.907925, 45.104042, 55.294250>,  <41.229961, 45.106037, 55.531502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907925, 45.104042, 55.294250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573387, 0.249403, -0.780401,
		0.151821, -0.968387, -0.197932,
		-0.805095, -0.004990, -0.593125,
		40.666397, 45.102547, 55.116314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783203, 44.692486, 55.635094>,  <41.229961, 45.106037, 55.531502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783203, 44.692486, 55.635094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.173870, 44.626602, 55.690220>,  <42.408272, 44.587074, 55.723297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.173870, 44.626602, 55.690220>,  <41.783203, 44.692486, 55.635094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173870, 44.626602, 55.690220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123710, 0.093086, 0.987943,
		-0.175550, -0.981940, 0.070538,
		0.976667, -0.164707, 0.137817,
		42.466869, 44.577190, 55.731564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775829, 44.183533, 56.185452>,  <41.783203, 44.692486, 55.635094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775829, 44.183533, 56.185452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.151878, 44.319847, 56.187881>,  <42.377506, 44.401638, 56.189339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.151878, 44.319847, 56.187881>,  <41.775829, 44.183533, 56.185452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151878, 44.319847, 56.187881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001554, -0.022107, 0.999754,
		0.340840, -0.939879, -0.021313,
		0.940120, 0.340790, 0.006075,
		42.433914, 44.422085, 56.189705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130493, 43.716114, 56.652794>,  <41.775829, 44.183533, 56.185452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130493, 43.716114, 56.652794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.351070, 44.048470, 56.623047>,  <42.483418, 44.247883, 56.605198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.351070, 44.048470, 56.623047>,  <42.130493, 43.716114, 56.652794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351070, 44.048470, 56.623047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152968, -0.013074, 0.988145,
		0.820066, -0.556286, -0.134309,
		0.551447, 0.830889, -0.074372,
		42.516506, 44.297737, 56.600735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523327, 43.639523, 57.146603>,  <42.130493, 43.716114, 56.652794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523327, 43.639523, 57.146603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.553032, 44.031372, 57.071957>,  <42.570854, 44.266479, 57.027168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.553032, 44.031372, 57.071957>,  <42.523327, 43.639523, 57.146603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553032, 44.031372, 57.071957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146753, 0.174362, 0.973685,
		0.986382, -0.099692, -0.130814,
		0.074259, 0.979622, -0.186618,
		42.575310, 44.325260, 57.015972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252064, 43.901138, 57.442234>,  <42.523327, 43.639523, 57.146603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252064, 43.901138, 57.442234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.978035, 44.190666, 57.409340>,  <42.813618, 44.364384, 57.389603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.978035, 44.190666, 57.409340>,  <43.252064, 43.901138, 57.442234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978035, 44.190666, 57.409340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017187, 0.128913, 0.991507,
		0.728271, 0.677842, -0.100755,
		-0.685074, 0.723817, -0.082233,
		42.772514, 44.407810, 57.384670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543613, 44.391140, 57.896618>,  <43.252064, 43.901138, 57.442234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543613, 44.391140, 57.896618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.163918, 44.509346, 57.853516>,  <42.936100, 44.580269, 57.827656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.163918, 44.509346, 57.853516>,  <43.543613, 44.391140, 57.896618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163918, 44.509346, 57.853516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079883, 0.104845, 0.991275,
		0.304232, 0.949568, -0.075917,
		-0.949243, 0.295513, -0.107751,
		42.879147, 44.598000, 57.821190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488483, 45.023914, 58.286221>,  <43.543613, 44.391140, 57.896618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488483, 45.023914, 58.286221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.127541, 44.855339, 58.250153>,  <42.910973, 44.754192, 58.228512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.127541, 44.855339, 58.250153>,  <43.488483, 45.023914, 58.286221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127541, 44.855339, 58.250153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099505, 0.000158, 0.995037,
		-0.419336, 0.906856, -0.042078,
		-0.902362, -0.421441, -0.090170,
		42.856831, 44.728905, 58.223103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159481, 45.236000, 58.834171>,  <43.488483, 45.023914, 58.286221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159481, 45.236000, 58.834171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.908417, 44.939781, 58.738152>,  <42.757778, 44.762051, 58.680542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.908417, 44.939781, 58.738152>,  <43.159481, 45.236000, 58.834171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.908417, 44.939781, 58.738152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334045, -0.022314, 0.942293,
		-0.703173, 0.671630, -0.233372,
		-0.627664, -0.740551, -0.240045,
		42.720116, 44.717617, 58.666138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517754, 45.383770, 59.191914>,  <43.159481, 45.236000, 58.834171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517754, 45.383770, 59.191914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.512749, 44.993217, 59.105644>,  <42.509747, 44.758884, 59.053883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.512749, 44.993217, 59.105644>,  <42.517754, 45.383770, 59.191914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512749, 44.993217, 59.105644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318226, -0.200588, 0.926551,
		-0.947932, 0.080225, -0.308201,
		-0.012511, -0.976385, -0.215674,
		42.508995, 44.700302, 59.040943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874050, 45.118877, 59.591362>,  <42.517754, 45.383770, 59.191914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874050, 45.118877, 59.591362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.092148, 44.798370, 59.492825>,  <42.223007, 44.606068, 59.433701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.092148, 44.798370, 59.492825>,  <41.874050, 45.118877, 59.591362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092148, 44.798370, 59.492825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289429, -0.455740, 0.841744,
		-0.786729, -0.387654, -0.480397,
		0.545241, -0.801265, -0.246345,
		42.255722, 44.557991, 59.418922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339687, 44.582043, 59.625034>,  <41.874050, 45.118877, 59.591362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339687, 44.582043, 59.625034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.710869, 44.436981, 59.659401>,  <41.933578, 44.349945, 59.680019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.710869, 44.436981, 59.659401>,  <41.339687, 44.582043, 59.625034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710869, 44.436981, 59.659401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236464, -0.394720, 0.887852,
		-0.288072, -0.844202, -0.452037,
		0.927954, -0.362656, 0.085915,
		41.989254, 44.328186, 59.685177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178093, 43.967464, 59.979515>,  <41.339687, 44.582043, 59.625034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178093, 43.967464, 59.979515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.572975, 44.008461, 60.028366>,  <41.809906, 44.033058, 60.057678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.572975, 44.008461, 60.028366>,  <41.178093, 43.967464, 59.979515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572975, 44.008461, 60.028366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063804, -0.448029, 0.891739,
		0.146117, -0.888124, -0.435758,
		0.987208, 0.102495, 0.122131,
		41.869137, 44.039211, 60.065006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485222, 43.316368, 59.996895>,  <41.178093, 43.967464, 59.979515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485222, 43.316368, 59.996895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.717484, 43.576569, 60.192726>,  <41.856842, 43.732689, 60.310226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.717484, 43.576569, 60.192726>,  <41.485222, 43.316368, 59.996895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717484, 43.576569, 60.192726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238304, -0.439202, 0.866206,
		0.778490, -0.619638, -0.100010,
		0.580658, 0.650500, 0.489577,
		41.891682, 43.771717, 60.339600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899040, 42.898884, 60.433651>,  <41.485222, 43.316368, 59.996895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899040, 42.898884, 60.433651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.930668, 43.272499, 60.572975>,  <41.949646, 43.496670, 60.656570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.930668, 43.272499, 60.572975>,  <41.899040, 42.898884, 60.433651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930668, 43.272499, 60.572975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152539, -0.333953, 0.930165,
		0.985129, -0.126679, 0.116071,
		0.079070, 0.934038, 0.348310,
		41.954388, 43.552711, 60.677467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804371, 42.221634, 60.823666>,  <41.899040, 42.898884, 60.433651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804371, 42.221634, 60.823666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.700394, 41.837486, 60.783436>,  <41.638008, 41.606998, 60.759300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.700394, 41.837486, 60.783436>,  <41.804371, 42.221634, 60.823666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700394, 41.837486, 60.783436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755351, -0.137347, -0.640766,
		0.601562, -0.242527, 0.761120,
		-0.259940, -0.960373, -0.100571,
		41.622410, 41.549374, 60.753265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350136, 41.900368, 60.696510>,  <41.804371, 42.221634, 60.823666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350136, 41.900368, 60.696510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.116203, 41.622536, 60.528923>,  <41.975845, 41.455837, 60.428371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.116203, 41.622536, 60.528923>,  <42.350136, 41.900368, 60.696510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116203, 41.622536, 60.528923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725325, -0.216553, -0.653459,
		0.363149, -0.686052, 0.630441,
		-0.584830, -0.694577, -0.418970,
		41.940754, 41.414162, 60.403233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801552, 41.325142, 60.448814>,  <42.350136, 41.900368, 60.696510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801552, 41.325142, 60.448814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.453285, 41.262924, 60.262165>,  <42.244324, 41.225594, 60.150173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.453285, 41.262924, 60.262165>,  <42.801552, 41.325142, 60.448814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453285, 41.262924, 60.262165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486536, -0.133057, -0.863469,
		0.072222, -0.978826, 0.191528,
		-0.870670, -0.155547, -0.466625,
		42.192085, 41.216259, 60.122177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755157, 40.605907, 60.054806>,  <42.801552, 41.325142, 60.448814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755157, 40.605907, 60.054806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.480324, 40.818130, 59.856239>,  <42.315422, 40.945465, 59.737099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.480324, 40.818130, 59.856239>,  <42.755157, 40.605907, 60.054806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480324, 40.818130, 59.856239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430505, -0.253104, -0.866374,
		-0.585304, -0.808980, -0.054503,
		-0.687084, 0.530556, -0.496413,
		42.274197, 40.977299, 59.707317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676193, 40.260639, 59.491539>,  <42.755157, 40.605907, 60.054806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676193, 40.260639, 59.491539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.463806, 40.583817, 59.389320>,  <42.336372, 40.777721, 59.327988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.463806, 40.583817, 59.389320>,  <42.676193, 40.260639, 59.491539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463806, 40.583817, 59.389320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345789, -0.068742, -0.935791,
		-0.773629, -0.585242, -0.242877,
		-0.530969, 0.807940, -0.255551,
		42.304516, 40.826199, 59.312656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302036, 40.118687, 58.849548>,  <42.676193, 40.260639, 59.491539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302036, 40.118687, 58.849548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.345451, 40.516296, 58.854347>,  <42.371502, 40.754860, 58.857227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.345451, 40.516296, 58.854347>,  <42.302036, 40.118687, 58.849548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345451, 40.516296, 58.854347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597456, -0.055580, -0.799973,
		-0.794522, 0.094000, -0.599916,
		0.108541, 0.994020, 0.012001,
		42.378014, 40.814503, 58.857948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302464, 40.240238, 58.239822>,  <42.302036, 40.118687, 58.849548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302464, 40.240238, 58.239822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.494690, 40.551590, 58.401405>,  <42.610027, 40.738400, 58.498356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.494690, 40.551590, 58.401405>,  <42.302464, 40.240238, 58.239822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.494690, 40.551590, 58.401405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649074, -0.005948, -0.760702,
		-0.589711, 0.627767, -0.508083,
		0.480566, 0.778378, 0.403960,
		42.638859, 40.785103, 58.522594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543091, 40.417412, 58.147938>,  <42.302464, 40.240238, 58.239822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543091, 40.417412, 58.147938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.376770, 40.099686, 57.970772>,  <41.276978, 39.909050, 57.864471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.376770, 40.099686, 57.970772>,  <41.543091, 40.417412, 58.147938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376770, 40.099686, 57.970772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566351, -0.154895, 0.809477,
		-0.711584, 0.587430, -0.385454,
		-0.415806, -0.794313, -0.442913,
		41.252029, 39.861393, 57.837898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813633, 40.531380, 58.211739>,  <41.543091, 40.417412, 58.147938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813633, 40.531380, 58.211739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.874660, 40.141006, 58.149406>,  <40.911278, 39.906784, 58.112007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.874660, 40.141006, 58.149406>,  <40.813633, 40.531380, 58.211739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874660, 40.141006, 58.149406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697297, -0.218041, 0.682814,
		-0.700357, 0.004486, -0.713779,
		0.152570, -0.975929, -0.155835,
		40.920433, 39.848228, 58.102657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129017, 40.132915, 58.131321>,  <40.813633, 40.531380, 58.211739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129017, 40.132915, 58.131321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.395470, 39.857368, 58.245674>,  <40.555344, 39.692039, 58.314285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.395470, 39.857368, 58.245674>,  <40.129017, 40.132915, 58.131321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395470, 39.857368, 58.245674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647982, -0.344743, 0.679170,
		-0.369308, -0.637658, -0.676021,
		0.666131, -0.688872, 0.285875,
		40.595310, 39.650707, 58.331440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808537, 39.624123, 58.115849>,  <40.129017, 40.132915, 58.131321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808537, 39.624123, 58.115849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.111671, 39.534477, 58.360947>,  <40.293552, 39.480690, 58.508003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.111671, 39.534477, 58.360947>,  <39.808537, 39.624123, 58.115849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111671, 39.534477, 58.360947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652181, -0.286693, 0.701760,
		0.018396, -0.931440, -0.363428,
		0.757840, -0.224112, 0.612742,
		40.339024, 39.467243, 58.544769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639881, 38.967831, 58.365398>,  <39.808537, 39.624123, 58.115849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639881, 38.967831, 58.365398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.887848, 39.102219, 58.649040>,  <40.036629, 39.182850, 58.819225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.887848, 39.102219, 58.649040>,  <39.639881, 38.967831, 58.365398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887848, 39.102219, 58.649040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548674, -0.460439, 0.697820,
		0.560943, -0.821658, -0.101099,
		0.619919, 0.335967, 0.709102,
		40.073822, 39.203011, 58.861771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765076, 38.455738, 58.784580>,  <39.639881, 38.967831, 58.365398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765076, 38.455738, 58.784580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.845856, 38.766434, 59.023209>,  <39.894321, 38.952850, 59.166386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.845856, 38.766434, 59.023209>,  <39.765076, 38.455738, 58.784580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845856, 38.766434, 59.023209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597097, -0.385188, 0.703637,
		0.776333, -0.498309, 0.386000,
		0.201946, 0.776736, 0.596573,
		39.906441, 38.999454, 59.202179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894688, 38.083931, 59.344967>,  <39.765076, 38.455738, 58.784580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894688, 38.083931, 59.344967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.815422, 38.462593, 59.446609>,  <39.767860, 38.689789, 59.507595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.815422, 38.462593, 59.446609>,  <39.894688, 38.083931, 59.344967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.815422, 38.462593, 59.446609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591524, -0.322223, 0.739102,
		0.781555, -0.003845, 0.623825,
		-0.198168, 0.946656, 0.254110,
		39.755970, 38.746590, 59.522842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772598, 38.011074, 60.079563>,  <39.894688, 38.083931, 59.344967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772598, 38.011074, 60.079563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.597408, 38.348946, 59.956467>,  <39.492294, 38.551666, 59.882610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.597408, 38.348946, 59.956467>,  <39.772598, 38.011074, 60.079563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597408, 38.348946, 59.956467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810268, -0.222617, 0.542132,
		0.389419, 0.486788, 0.781915,
		-0.437970, 0.844677, -0.307738,
		39.466019, 38.602348, 59.864147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532524, 38.355831, 60.717369>,  <39.772598, 38.011074, 60.079563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532524, 38.355831, 60.717369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.319885, 38.535637, 60.430222>,  <39.192303, 38.643520, 60.257931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.319885, 38.535637, 60.430222>,  <39.532524, 38.355831, 60.717369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319885, 38.535637, 60.430222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793900, 0.030925, 0.607262,
		0.295173, 0.892737, 0.340430,
		-0.531597, 0.449515, -0.717872,
		39.160404, 38.670490, 60.214859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<47.014446, 39.636490, 46.148605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.696785, 39.812378, 45.980808>,  <46.506187, 39.917912, 45.880131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.696785, 39.812378, 45.980808>,  <47.014446, 39.636490, 46.148605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.696785, 39.812378, 45.980808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430050, 0.081099, 0.899155,
		0.429395, 0.894467, 0.124696,
		-0.794152, 0.439718, -0.419489,
		46.458538, 39.944294, 45.854961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.066910, 40.298313, 46.460308>,  <47.014446, 39.636490, 46.148605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.066910, 40.298313, 46.460308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.697426, 40.233643, 46.321384>,  <46.475735, 40.194839, 46.238029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.697426, 40.233643, 46.321384>,  <47.066910, 40.298313, 46.460308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.697426, 40.233643, 46.321384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382888, 0.359403, 0.851015,
		-0.012767, 0.919070, -0.393888,
		-0.923707, -0.161679, -0.347312,
		46.420315, 40.185139, 46.217190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.671814, 40.923386, 46.630947>,  <47.066910, 40.298313, 46.460308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.671814, 40.923386, 46.630947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.424011, 40.611908, 46.591259>,  <46.275330, 40.425022, 46.567448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.424011, 40.611908, 46.591259>,  <46.671814, 40.923386, 46.630947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.424011, 40.611908, 46.591259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410898, 0.213982, 0.886214,
		-0.668863, 0.589781, -0.452528,
		-0.619505, -0.778698, -0.099216,
		46.238159, 40.378300, 46.561493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.053066, 41.170231, 47.017574>,  <46.671814, 40.923386, 46.630947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.053066, 41.170231, 47.017574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.982162, 40.778175, 46.982002>,  <45.939621, 40.542942, 46.960659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.982162, 40.778175, 46.982002>,  <46.053066, 41.170231, 47.017574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.982162, 40.778175, 46.982002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441658, -0.001532, 0.897182,
		-0.879498, 0.198312, -0.432615,
		-0.177259, -0.980138, -0.088934,
		45.928986, 40.484135, 46.955322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342129, 41.009071, 47.349594>,  <46.053066, 41.170231, 47.017574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342129, 41.009071, 47.349594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.556946, 40.671692, 47.344193>,  <45.685837, 40.469265, 47.340950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.556946, 40.671692, 47.344193>,  <45.342129, 41.009071, 47.349594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.556946, 40.671692, 47.344193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356674, -0.241551, 0.902462,
		-0.764444, -0.479839, -0.430558,
		0.537038, -0.843450, -0.013506,
		45.718056, 40.418655, 47.340141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.844425, 40.406811, 47.510826>,  <45.342129, 41.009071, 47.349594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.844425, 40.406811, 47.510826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.203194, 40.246323, 47.585186>,  <45.418453, 40.150032, 47.629803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.203194, 40.246323, 47.585186>,  <44.844425, 40.406811, 47.510826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.203194, 40.246323, 47.585186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383975, -0.498156, 0.777435,
		-0.219313, -0.768678, -0.600863,
		0.896920, -0.401217, 0.185901,
		45.472271, 40.125957, 47.640957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.658390, 39.707008, 47.653744>,  <44.844425, 40.406811, 47.510826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.658390, 39.707008, 47.653744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.018730, 39.783836, 47.809471>,  <45.234936, 39.829933, 47.902908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.018730, 39.783836, 47.809471>,  <44.658390, 39.707008, 47.653744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.018730, 39.783836, 47.809471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274825, -0.441894, 0.853933,
		0.336057, -0.876263, -0.345295,
		0.900854, 0.192074, 0.389320,
		45.288986, 39.841457, 47.926266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.879101, 39.083920, 48.007870>,  <44.658390, 39.707008, 47.653744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.879101, 39.083920, 48.007870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.102482, 39.372536, 48.171577>,  <45.236511, 39.545708, 48.269802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.102482, 39.372536, 48.171577>,  <44.879101, 39.083920, 48.007870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102482, 39.372536, 48.171577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142927, -0.402301, 0.904282,
		0.817130, -0.563495, -0.121538,
		0.558453, 0.721545, 0.409271,
		45.270020, 39.589001, 48.294357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235626, 38.763718, 48.545319>,  <44.879101, 39.083920, 48.007870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235626, 38.763718, 48.545319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.261860, 39.149757, 48.646729>,  <45.277599, 39.381382, 48.707573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.261860, 39.149757, 48.646729>,  <45.235626, 38.763718, 48.545319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261860, 39.149757, 48.646729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104461, -0.246032, 0.963616,
		0.992364, -0.089683, 0.084680,
		0.065586, 0.965104, 0.253522,
		45.281536, 39.439289, 48.722786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622246, 38.670467, 49.209206>,  <45.235626, 38.763718, 48.545319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622246, 38.670467, 49.209206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.466972, 39.038727, 49.225792>,  <45.373810, 39.259682, 49.235744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.466972, 39.038727, 49.225792>,  <45.622246, 38.670467, 49.209206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.466972, 39.038727, 49.225792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265735, -0.154900, 0.951520,
		0.882439, 0.358346, 0.304778,
		-0.388184, 0.920649, 0.041465,
		45.350517, 39.314922, 49.238232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.862816, 38.914879, 49.856907>,  <45.622246, 38.670467, 49.209206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.862816, 38.914879, 49.856907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.583572, 39.173813, 49.734535>,  <45.416027, 39.329174, 49.661110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.583572, 39.173813, 49.734535>,  <45.862816, 38.914879, 49.856907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.583572, 39.173813, 49.734535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458386, -0.075847, 0.885511,
		0.550021, 0.758420, 0.349680,
		-0.698111, 0.647338, -0.305932,
		45.374138, 39.368015, 49.642757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813511, 39.599827, 50.333549>,  <45.862816, 38.914879, 49.856907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813511, 39.599827, 50.333549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.464813, 39.508171, 50.160316>,  <45.255596, 39.453178, 50.056377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.464813, 39.508171, 50.160316>,  <45.813511, 39.599827, 50.333549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464813, 39.508171, 50.160316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448548, 0.017530, 0.893587,
		-0.197166, 0.973235, -0.118063,
		-0.871740, -0.229142, -0.433086,
		45.203293, 39.439430, 50.030392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.143398, 40.207058, 50.321198>,  <45.813511, 39.599827, 50.333549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.143398, 40.207058, 50.321198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.376152, 40.416878, 50.569798>,  <46.515804, 40.542770, 50.718956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.376152, 40.416878, 50.569798>,  <46.143398, 40.207058, 50.321198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.376152, 40.416878, 50.569798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403901, 0.476896, -0.780663,
		-0.705884, 0.705280, 0.065634,
		0.581887, 0.524547, 0.621496,
		46.550716, 40.574242, 50.756245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046825, 40.887245, 50.100006>,  <46.143398, 40.207058, 50.321198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046825, 40.887245, 50.100006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.394974, 40.905739, 50.296093>,  <46.603863, 40.916836, 50.413746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.394974, 40.905739, 50.296093>,  <46.046825, 40.887245, 50.100006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.394974, 40.905739, 50.296093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367742, 0.601018, -0.709608,
		-0.327435, 0.797898, 0.506109,
		0.870375, 0.046233, 0.490215,
		46.656086, 40.919609, 50.443157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239182, 41.602531, 50.079052>,  <46.046825, 40.887245, 50.100006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239182, 41.602531, 50.079052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.589790, 41.425957, 50.155830>,  <46.800156, 41.320011, 50.201897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.589790, 41.425957, 50.155830>,  <46.239182, 41.602531, 50.079052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.589790, 41.425957, 50.155830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456991, 0.637844, -0.619932,
		0.151233, 0.631099, 0.760817,
		0.876521, -0.441440, 0.191944,
		46.852745, 41.293526, 50.213413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.747139, 42.129387, 50.140896>,  <46.239182, 41.602531, 50.079052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.747139, 42.129387, 50.140896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.966370, 41.808083, 50.047623>,  <47.097908, 41.615299, 49.991657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.966370, 41.808083, 50.047623>,  <46.747139, 42.129387, 50.140896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.966370, 41.808083, 50.047623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548874, 0.555761, -0.624393,
		0.631146, 0.214230, 0.745493,
		0.548080, -0.803265, -0.233181,
		47.130795, 41.567104, 49.977669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.361855, 42.378582, 50.088310>,  <46.747139, 42.129387, 50.140896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.361855, 42.378582, 50.088310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.431107, 42.041176, 49.884933>,  <47.472660, 41.838734, 49.762909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.431107, 42.041176, 49.884933>,  <47.361855, 42.378582, 50.088310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.431107, 42.041176, 49.884933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508711, 0.518631, -0.687193,
		0.843349, -0.139672, 0.518897,
		0.173134, -0.843513, -0.508440,
		47.483047, 41.788120, 49.732403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.025738, 42.257858, 50.164391>,  <47.361855, 42.378582, 50.088310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.025738, 42.257858, 50.164391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.914978, 42.052780, 49.839314>,  <47.848522, 41.929733, 49.644268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.914978, 42.052780, 49.839314>,  <48.025738, 42.257858, 50.164391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.914978, 42.052780, 49.839314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722461, 0.446552, -0.527865,
		0.633543, -0.733306, 0.246751,
		-0.276900, -0.512693, -0.812695,
		47.831909, 41.898972, 49.595505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.666142, 42.068871, 49.808144>,  <48.025738, 42.257858, 50.164391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.666142, 42.068871, 49.808144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.376137, 42.051941, 49.533173>,  <48.202133, 42.041782, 49.368187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.376137, 42.051941, 49.533173>,  <48.666142, 42.068871, 49.808144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.376137, 42.051941, 49.533173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581964, 0.496146, -0.644326,
		0.368336, -0.867207, -0.335083,
		-0.725014, -0.042323, -0.687432,
		48.158634, 42.039246, 49.326942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.944042, 41.753712, 49.122456>,  <48.666142, 42.068871, 49.808144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.944042, 41.753712, 49.122456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.609612, 41.932884, 48.995750>,  <48.408955, 42.040386, 48.919727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.609612, 41.932884, 48.995750>,  <48.944042, 41.753712, 49.122456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.609612, 41.932884, 48.995750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502992, 0.395352, -0.768567,
		-0.219030, -0.801909, -0.555849,
		-0.836077, 0.447927, -0.316760,
		48.358788, 42.067261, 48.900723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.925419, 41.661701, 48.393497>,  <48.944042, 41.753712, 49.122456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.925419, 41.661701, 48.393497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.684074, 41.970146, 48.474815>,  <48.539268, 42.155212, 48.523605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.684074, 41.970146, 48.474815>,  <48.925419, 41.661701, 48.393497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.684074, 41.970146, 48.474815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335281, 0.476599, -0.812675,
		-0.723559, -0.422178, -0.546103,
		-0.603366, 0.771116, 0.203299,
		48.503063, 42.201481, 48.535805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.695354, 41.864307, 47.742748>,  <48.925419, 41.661701, 48.393497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.695354, 41.864307, 47.742748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.593590, 42.175102, 47.973076>,  <48.532532, 42.361580, 48.111275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.593590, 42.175102, 47.973076>,  <48.695354, 41.864307, 47.742748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.593590, 42.175102, 47.973076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087780, 0.611508, -0.786354,
		-0.963105, -0.149508, -0.223776,
		-0.254407, 0.776985, 0.575822,
		48.517269, 42.408199, 48.145824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.250431, 42.262238, 47.332073>,  <48.695354, 41.864307, 47.742748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.250431, 42.262238, 47.332073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.401619, 42.517220, 47.600639>,  <48.492332, 42.670208, 47.761780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.401619, 42.517220, 47.600639>,  <48.250431, 42.262238, 47.332073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.401619, 42.517220, 47.600639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344896, 0.576059, -0.741082,
		-0.859178, 0.511673, -0.002122,
		0.377969, 0.637453, 0.671412,
		48.515011, 42.708454, 47.802063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.105194, 42.901058, 47.124008>,  <48.250431, 42.262238, 47.332073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.105194, 42.901058, 47.124008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.406738, 42.977943, 47.375320>,  <48.587666, 43.024075, 47.526108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.406738, 42.977943, 47.375320>,  <48.105194, 42.901058, 47.124008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.406738, 42.977943, 47.375320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392557, 0.635039, -0.665300,
		-0.526865, 0.748184, 0.403279,
		0.753865, 0.192213, 0.628285,
		48.632896, 43.035606, 47.563805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.196629, 43.678123, 47.175892>,  <48.105194, 42.901058, 47.124008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.196629, 43.678123, 47.175892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.536430, 43.533020, 47.329121>,  <48.740311, 43.445957, 47.421059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.536430, 43.533020, 47.329121>,  <48.196629, 43.678123, 47.175892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.536430, 43.533020, 47.329121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517961, 0.711461, -0.474910,
		-0.100262, 0.601855, 0.792286,
		0.849508, -0.362758, 0.383070,
		48.791283, 43.424194, 47.444042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.575649, 44.247906, 47.541367>,  <48.196629, 43.678123, 47.175892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.575649, 44.247906, 47.541367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.821510, 43.959496, 47.413418>,  <48.969028, 43.786449, 47.336647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.821510, 43.959496, 47.413418>,  <48.575649, 44.247906, 47.541367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.821510, 43.959496, 47.413418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448081, 0.652901, -0.610692,
		0.649173, 0.232033, 0.724386,
		0.614653, -0.721028, -0.319876,
		49.005905, 43.743187, 47.317455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.161976, 44.558414, 47.392315>,  <48.575649, 44.247906, 47.541367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.161976, 44.558414, 47.392315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.163498, 44.219055, 47.180573>,  <49.164410, 44.015442, 47.053528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.163498, 44.219055, 47.180573>,  <49.161976, 44.558414, 47.392315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.163498, 44.219055, 47.180573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442104, 0.476240, -0.760092,
		0.896956, -0.231137, 0.376890,
		0.003805, -0.848394, -0.529352,
		49.164639, 43.964539, 47.021767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.492004, 45.076851, 47.687054>,  <49.161976, 44.558414, 47.392315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.492004, 45.076851, 47.687054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.280716, 45.406586, 47.768501>,  <49.153942, 45.604427, 47.817371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.280716, 45.406586, 47.768501>,  <49.492004, 45.076851, 47.687054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.280716, 45.406586, 47.768501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561467, -0.518984, 0.644523,
		0.636978, 0.226122, 0.736972,
		-0.528218, 0.824333, 0.203622,
		49.122250, 45.653885, 47.829586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.322830, 45.275211, 48.334740>,  <49.492004, 45.076851, 47.687054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.322830, 45.275211, 48.334740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.001648, 45.477112, 48.207943>,  <48.808937, 45.598251, 48.131866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<49.001648, 45.477112, 48.207943>,  <49.322830, 45.275211, 48.334740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<49.001648, 45.477112, 48.207943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580935, -0.543806, 0.605631,
		0.133309, 0.670449, 0.729881,
		-0.802959, 0.504749, -0.316993,
		48.760761, 45.628536, 48.112846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.906567, 45.527466, 48.951305>,  <49.322830, 45.275211, 48.334740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.906567, 45.527466, 48.951305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.643120, 45.515457, 48.650555>,  <48.485050, 45.508251, 48.470104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.643120, 45.515457, 48.650555>,  <48.906567, 45.527466, 48.951305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.643120, 45.515457, 48.650555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685414, -0.388417, 0.615905,
		-0.310533, 0.920994, 0.235241,
		-0.658617, -0.030021, -0.751879,
		48.445534, 45.506451, 48.424992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.275272, 45.955112, 49.185219>,  <48.906567, 45.527466, 48.951305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.275272, 45.955112, 49.185219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.133217, 45.714378, 48.899094>,  <48.047985, 45.569939, 48.727417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<48.133217, 45.714378, 48.899094>,  <48.275272, 45.955112, 49.185219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<48.133217, 45.714378, 48.899094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696535, -0.339984, 0.631863,
		-0.623472, 0.722637, -0.298459,
		-0.355136, -0.601836, -0.715312,
		48.026676, 45.533829, 48.684502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.493336, 46.052010, 49.086781>,  <48.275272, 45.955112, 49.185219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.493336, 46.052010, 49.086781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.600113, 45.690483, 48.952999>,  <47.664181, 45.473568, 48.872730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.600113, 45.690483, 48.952999>,  <47.493336, 46.052010, 49.086781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.600113, 45.690483, 48.952999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677702, -0.422794, 0.601636,
		-0.685173, 0.066060, -0.725379,
		0.266941, -0.903815, -0.334456,
		47.680195, 45.419338, 48.852661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.852661, 45.786968, 48.932205>,  <47.493336, 46.052010, 49.086781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.852661, 45.786968, 48.932205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.089676, 45.465034, 48.945724>,  <47.231884, 45.271873, 48.953838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<47.089676, 45.465034, 48.945724>,  <46.852661, 45.786968, 48.932205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<47.089676, 45.465034, 48.945724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767334, -0.551164, 0.327746,
		-0.245150, -0.220139, -0.944161,
		0.592537, -0.804834, 0.033802,
		47.267437, 45.223583, 48.955864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435200, 45.259583, 48.623718>,  <46.852661, 45.786968, 48.932205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435200, 45.259583, 48.623718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.712051, 45.067635, 48.839382>,  <46.878162, 44.952465, 48.968781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.712051, 45.067635, 48.839382>,  <46.435200, 45.259583, 48.623718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.712051, 45.067635, 48.839382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717955, -0.534476, 0.445954,
		0.074168, -0.695747, -0.714447,
		0.692126, -0.479865, 0.539157,
		46.919689, 44.923676, 49.001129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.383450, 44.489021, 48.616554>,  <46.435200, 45.259583, 48.623718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.383450, 44.489021, 48.616554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.569283, 44.589584, 48.956192>,  <46.680782, 44.649921, 49.159973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.569283, 44.589584, 48.956192>,  <46.383450, 44.489021, 48.616554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.569283, 44.589584, 48.956192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727968, -0.437530, 0.527854,
		0.504209, -0.863344, -0.020253,
		0.464581, 0.251405, 0.849094,
		46.708656, 44.665005, 49.210918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.406197, 43.769917, 49.018097>,  <46.383450, 44.489021, 48.616554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.406197, 43.769917, 49.018097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.534630, 44.020844, 49.301895>,  <46.611691, 44.171398, 49.472176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.534630, 44.020844, 49.301895>,  <46.406197, 43.769917, 49.018097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.534630, 44.020844, 49.301895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628985, -0.418824, 0.654954,
		0.708016, -0.656555, 0.260095,
		0.321079, 0.627313, 0.709497,
		46.630955, 44.209038, 49.514744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.646542, 43.437862, 49.696575>,  <46.406197, 43.769917, 49.018097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.646542, 43.437862, 49.696575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.525696, 43.808067, 49.787922>,  <46.453190, 44.030190, 49.842731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.525696, 43.808067, 49.787922>,  <46.646542, 43.437862, 49.696575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525696, 43.808067, 49.787922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678222, -0.377031, 0.630764,
		0.669882, 0.035680, 0.741610,
		-0.302115, 0.925513, 0.228367,
		46.435062, 44.085720, 49.856434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.486538, 43.363026, 50.310307>,  <46.646542, 43.437862, 49.696575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.486538, 43.363026, 50.310307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.287354, 43.703972, 50.246414>,  <46.167843, 43.908539, 50.208080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.287354, 43.703972, 50.246414>,  <46.486538, 43.363026, 50.310307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.287354, 43.703972, 50.246414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720034, -0.303726, 0.623940,
		0.483310, 0.425707, 0.764974,
		-0.497958, 0.852364, -0.159730,
		46.137966, 43.959682, 50.198494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.373180, 43.480286, 50.955086>,  <46.486538, 43.363026, 50.310307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.373180, 43.480286, 50.955086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.142426, 43.741554, 50.758896>,  <46.003971, 43.898315, 50.641182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.142426, 43.741554, 50.758896>,  <46.373180, 43.480286, 50.955086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.142426, 43.741554, 50.758896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754858, -0.196904, 0.625634,
		0.312071, 0.731160, 0.606644,
		-0.576889, 0.653172, -0.490474,
		45.969360, 43.937508, 50.611755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228134, 43.950920, 51.503555>,  <46.373180, 43.480286, 50.955086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228134, 43.950920, 51.503555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.945908, 43.970757, 51.220795>,  <45.776569, 43.982658, 51.051136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.945908, 43.970757, 51.220795>,  <46.228134, 43.950920, 51.503555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.945908, 43.970757, 51.220795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708603, -0.039002, 0.704528,
		0.007365, 0.998008, 0.062656,
		-0.705569, 0.049587, -0.706905,
		45.734238, 43.985634, 51.008724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.672626, 44.482655, 51.690231>,  <46.228134, 43.950920, 51.503555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.672626, 44.482655, 51.690231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.490997, 44.261909, 51.410439>,  <45.382019, 44.129463, 51.242565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.490997, 44.261909, 51.410439>,  <45.672626, 44.482655, 51.690231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490997, 44.261909, 51.410439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836738, -0.005573, 0.547575,
		-0.306083, 0.833919, -0.459231,
		-0.454074, -0.551859, -0.699477,
		45.354774, 44.096352, 51.200596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065338, 44.823208, 51.604202>,  <45.672626, 44.482655, 51.690231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065338, 44.823208, 51.604202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.020546, 44.450768, 51.465343>,  <44.993671, 44.227303, 51.382027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.020546, 44.450768, 51.465343>,  <45.065338, 44.823208, 51.604202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020546, 44.450768, 51.465343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871696, -0.075679, 0.484168,
		-0.477081, 0.356826, -0.803162,
		-0.111981, -0.931100, -0.347149,
		44.986950, 44.171436, 51.361198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.459160, 44.817017, 51.292439>,  <45.065338, 44.823208, 51.604202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.459160, 44.817017, 51.292439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.537361, 44.441605, 51.406242>,  <44.584282, 44.216358, 51.474525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.537361, 44.441605, 51.406242>,  <44.459160, 44.817017, 51.292439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.537361, 44.441605, 51.406242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765010, 0.035579, 0.643035,
		-0.613628, -0.343367, -0.711027,
		0.195499, -0.938527, 0.284511,
		44.596012, 44.160046, 51.491596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.808704, 44.387321, 51.396618>,  <44.459160, 44.817017, 51.292439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.808704, 44.387321, 51.396618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.071907, 44.159996, 51.594223>,  <44.229828, 44.023602, 51.712784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.071907, 44.159996, 51.594223>,  <43.808704, 44.387321, 51.396618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071907, 44.159996, 51.594223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644228, -0.085200, 0.760074,
		-0.389874, -0.818387, -0.422187,
		0.658004, -0.568317, 0.494010,
		44.269310, 43.989502, 51.742428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376846, 43.829292, 51.687164>,  <43.808704, 44.387321, 51.396618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376846, 43.829292, 51.687164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.726929, 43.833336, 51.880623>,  <43.936977, 43.835762, 51.996700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.726929, 43.833336, 51.880623>,  <43.376846, 43.829292, 51.687164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726929, 43.833336, 51.880623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483756, 0.019832, 0.874978,
		-0.000759, -0.999752, 0.022241,
		0.875203, 0.010096, 0.483651,
		43.989491, 43.836369, 52.025719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260654, 43.321548, 52.247910>,  <43.376846, 43.829292, 51.687164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260654, 43.321548, 52.247910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.587894, 43.525261, 52.354759>,  <43.784237, 43.647488, 52.418869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.587894, 43.525261, 52.354759>,  <43.260654, 43.321548, 52.247910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587894, 43.525261, 52.354759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378798, 0.127716, 0.916625,
		0.432702, -0.851072, 0.297397,
		0.818096, 0.509279, 0.267122,
		43.833324, 43.678043, 52.434895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468903, 42.977089, 52.799553>,  <43.260654, 43.321548, 52.247910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468903, 42.977089, 52.799553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.590889, 43.354645, 52.850273>,  <43.664082, 43.581177, 52.880707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.590889, 43.354645, 52.850273>,  <43.468903, 42.977089, 52.799553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590889, 43.354645, 52.850273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368629, -0.005774, 0.929559,
		0.878129, -0.330222, 0.346183,
		0.304962, 0.943885, 0.126800,
		43.682377, 43.637810, 52.888313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846134, 43.009674, 53.383633>,  <43.468903, 42.977089, 52.799553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846134, 43.009674, 53.383633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.732700, 43.388229, 53.321754>,  <43.664639, 43.615364, 53.284626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.732700, 43.388229, 53.321754>,  <43.846134, 43.009674, 53.383633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732700, 43.388229, 53.321754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193705, 0.101462, 0.975799,
		0.939179, 0.306688, 0.154547,
		-0.283586, 0.946387, -0.154698,
		43.647625, 43.672146, 53.275345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160313, 43.412094, 53.993343>,  <43.846134, 43.009674, 53.383633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160313, 43.412094, 53.993343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.873859, 43.640060, 53.832172>,  <43.701988, 43.776840, 53.735470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.873859, 43.640060, 53.832172>,  <44.160313, 43.412094, 53.993343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873859, 43.640060, 53.832172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239666, 0.341402, 0.908848,
		0.655526, 0.747425, -0.107900,
		-0.716133, 0.569913, -0.402930,
		43.659019, 43.811035, 53.711292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219963, 44.028065, 54.402069>,  <44.160313, 43.412094, 53.993343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219963, 44.028065, 54.402069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.856518, 44.039040, 54.235374>,  <43.638451, 44.045624, 54.135357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.856518, 44.039040, 54.235374>,  <44.219963, 44.028065, 54.402069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856518, 44.039040, 54.235374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401534, 0.217052, 0.889752,
		0.114867, 0.975774, -0.186199,
		-0.908612, 0.027437, -0.416739,
		43.583935, 44.047272, 54.110352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960510, 44.666340, 54.566208>,  <44.219963, 44.028065, 54.402069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960510, 44.666340, 54.566208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.646530, 44.444344, 54.456047>,  <43.458141, 44.311146, 54.389950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.646530, 44.444344, 54.456047>,  <43.960510, 44.666340, 54.566208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646530, 44.444344, 54.456047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513616, 0.334298, 0.790217,
		-0.346493, 0.761731, -0.547457,
		-0.784946, -0.554988, -0.275405,
		43.411045, 44.277847, 54.373425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405384, 45.133568, 54.605762>,  <43.960510, 44.666340, 54.566208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405384, 45.133568, 54.605762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.245682, 44.768402, 54.639679>,  <43.149860, 44.549305, 54.660030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.245682, 44.768402, 54.639679>,  <43.405384, 45.133568, 54.605762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245682, 44.768402, 54.639679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418495, 0.263750, 0.869079,
		-0.815756, 0.311498, -0.487352,
		-0.399255, -0.912910, 0.084795,
		43.125904, 44.494530, 54.665119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638733, 45.191822, 54.795246>,  <43.405384, 45.133568, 54.605762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638733, 45.191822, 54.795246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.722290, 44.809738, 54.879093>,  <42.772427, 44.580490, 54.929401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.722290, 44.809738, 54.879093>,  <42.638733, 45.191822, 54.795246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722290, 44.809738, 54.879093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481837, 0.085992, 0.872031,
		-0.850997, -0.283167, -0.442291,
		0.208897, -0.955208, 0.209619,
		42.784958, 44.523174, 54.941978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060261, 45.079147, 55.091534>,  <42.638733, 45.191822, 54.795246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060261, 45.079147, 55.091534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.364449, 44.838440, 55.189152>,  <42.546963, 44.694016, 55.247723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.364449, 44.838440, 55.189152>,  <42.060261, 45.079147, 55.091534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364449, 44.838440, 55.189152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173561, 0.173788, 0.969368,
		-0.625749, -0.779532, 0.027716,
		0.760471, -0.601770, 0.244045,
		42.592590, 44.657909, 55.262363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438961, 44.752899, 54.922901>,  <42.060261, 45.079147, 55.091534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438961, 44.752899, 54.922901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.101471, 44.927307, 54.797668>,  <40.898979, 45.031952, 54.722527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.101471, 44.927307, 54.797668>,  <41.438961, 44.752899, 54.922901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101471, 44.927307, 54.797668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410316, 0.147824, -0.899883,
		-0.346085, -0.887714, -0.303627,
		-0.843722, 0.436019, -0.313084,
		40.848354, 45.058113, 54.703743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267387, 44.473335, 54.279930>,  <41.438961, 44.752899, 54.922901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267387, 44.473335, 54.279930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.070232, 44.821335, 54.284874>,  <40.951939, 45.030136, 54.287842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.070232, 44.821335, 54.284874>,  <41.267387, 44.473335, 54.279930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070232, 44.821335, 54.284874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157134, 0.102976, -0.982194,
		-0.855785, -0.482172, -0.187463,
		-0.492890, 0.870004, 0.012360,
		40.922367, 45.082336, 54.288582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831429, 44.412849, 53.756046>,  <41.267387, 44.473335, 54.279930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831429, 44.412849, 53.756046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.863235, 44.804413, 53.831314>,  <40.882320, 45.039352, 53.876472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.863235, 44.804413, 53.831314>,  <40.831429, 44.412849, 53.756046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863235, 44.804413, 53.831314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170835, 0.172588, -0.970066,
		-0.982085, 0.109286, -0.153508,
		0.079521, 0.978913, 0.188166,
		40.887093, 45.098087, 53.887764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418690, 44.775444, 53.320866>,  <40.831429, 44.412849, 53.756046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418690, 44.775444, 53.320866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.685543, 45.056160, 53.420803>,  <40.845657, 45.224590, 53.480766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.685543, 45.056160, 53.420803>,  <40.418690, 44.775444, 53.320866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685543, 45.056160, 53.420803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233114, 0.121867, -0.964783,
		-0.707521, 0.701885, -0.082295,
		0.667137, 0.701788, 0.249843,
		40.885685, 45.266697, 53.495754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324169, 45.397110, 52.760479>,  <40.418690, 44.775444, 53.320866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324169, 45.397110, 52.760479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.689770, 45.433968, 52.918526>,  <40.909130, 45.456081, 53.013355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.689770, 45.433968, 52.918526>,  <40.324169, 45.397110, 52.760479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689770, 45.433968, 52.918526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367270, 0.225909, -0.902263,
		-0.172401, 0.969781, 0.172637,
		0.913997, 0.092147, 0.395118,
		40.963970, 45.461613, 53.037060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
