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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.695549, 31.359430, 23.466574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532894, 31.672165, 23.277523>,  <43.435303, 31.859806, 23.164093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532894, 31.672165, 23.277523>,  <43.695549, 31.359430, 23.466574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532894, 31.672165, 23.277523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901754, -0.426487, 0.070339,
		-0.146576, 0.454796, 0.878451,
		-0.406638, 0.781837, -0.472627,
		43.410904, 31.906715, 23.135735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162647, 31.920294, 23.885078>,  <43.695549, 31.359430, 23.466574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162647, 31.920294, 23.885078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108234, 31.844437, 23.496124>,  <43.075588, 31.798922, 23.262753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108234, 31.844437, 23.496124>,  <43.162647, 31.920294, 23.885078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108234, 31.844437, 23.496124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891517, -0.404636, 0.203637,
		-0.432079, 0.894598, -0.114028,
		-0.136033, -0.189645, -0.972383,
		43.067425, 31.787542, 23.204409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447727, 32.011528, 23.750689>,  <43.162647, 31.920294, 23.885078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447727, 32.011528, 23.750689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593712, 31.774498, 23.463451>,  <42.681305, 31.632280, 23.291109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593712, 31.774498, 23.463451>,  <42.447727, 32.011528, 23.750689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593712, 31.774498, 23.463451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845151, -0.534404, 0.011452,
		-0.390537, 0.602716, -0.695855,
		0.364966, -0.592575, -0.718091,
		42.703201, 31.596725, 23.248024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961094, 31.643105, 23.383213>,  <42.447727, 32.011528, 23.750689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961094, 31.643105, 23.383213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780273, 31.920715, 23.159077>,  <41.671783, 32.087280, 23.024595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780273, 31.920715, 23.159077>,  <41.961094, 31.643105, 23.383213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780273, 31.920715, 23.159077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481960, 0.338553, 0.808143,
		0.750577, 0.635382, 0.181450,
		-0.452049, 0.694025, -0.560339,
		41.644657, 32.128922, 22.990974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907871, 31.749121, 22.627254>,  <41.961094, 31.643105, 23.383213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907871, 31.749121, 22.627254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709743, 32.048126, 22.450218>,  <41.590866, 32.227528, 22.343996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709743, 32.048126, 22.450218>,  <41.907871, 31.749121, 22.627254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709743, 32.048126, 22.450218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649572, -0.019593, -0.760048,
		-0.576818, -0.663957, -0.475859,
		-0.495316, 0.747514, -0.442589,
		41.561150, 32.272381, 22.317442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.553246, 31.578608, 22.028496>,  <41.907871, 31.749121, 22.627254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.553246, 31.578608, 22.028496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705822, 31.948250, 22.037731>,  <41.797367, 32.170036, 22.043272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705822, 31.948250, 22.037731>,  <41.553246, 31.578608, 22.028496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705822, 31.948250, 22.037731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463916, -0.169765, -0.869461,
		-0.799552, 0.342361, -0.493463,
		0.381442, 0.924104, 0.023091,
		41.820255, 32.225483, 22.044659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469769, 31.882738, 21.383314>,  <41.553246, 31.578608, 22.028496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469769, 31.882738, 21.383314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760078, 32.118980, 21.524414>,  <41.934265, 32.260727, 21.609074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760078, 32.118980, 21.524414>,  <41.469769, 31.882738, 21.383314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760078, 32.118980, 21.524414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500309, -0.101214, -0.859911,
		-0.472164, 0.800588, -0.368944,
		0.725777, 0.590605, 0.352751,
		41.977810, 32.296162, 21.630239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582123, 32.486179, 20.920376>,  <41.469769, 31.882738, 21.383314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582123, 32.486179, 20.920376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926495, 32.451839, 21.120949>,  <42.133118, 32.431236, 21.241293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926495, 32.451839, 21.120949>,  <41.582123, 32.486179, 20.920376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926495, 32.451839, 21.120949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504216, 0.013004, -0.863480,
		0.067607, 0.996224, 0.054481,
		0.860927, -0.085847, 0.501433,
		42.184772, 32.426086, 21.271379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950832, 32.914589, 20.569302>,  <41.582123, 32.486179, 20.920376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950832, 32.914589, 20.569302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235226, 32.708424, 20.760654>,  <42.405861, 32.584724, 20.875465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235226, 32.708424, 20.760654>,  <41.950832, 32.914589, 20.569302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235226, 32.708424, 20.760654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599603, 0.088926, -0.795341,
		0.367390, 0.852314, 0.372269,
		0.710986, -0.515414, 0.478380,
		42.448521, 32.553799, 20.904169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654449, 33.369690, 20.562868>,  <41.950832, 32.914589, 20.569302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654449, 33.369690, 20.562868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758453, 32.987083, 20.615738>,  <42.820854, 32.757519, 20.647461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.758453, 32.987083, 20.615738>,  <42.654449, 33.369690, 20.562868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.758453, 32.987083, 20.615738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626224, 0.062840, -0.777106,
		0.735010, 0.284825, 0.615333,
		0.260007, -0.956518, 0.132176,
		42.836456, 32.700127, 20.655392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406590, 33.290638, 20.538614>,  <42.654449, 33.369690, 20.562868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406590, 33.290638, 20.538614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286224, 32.910305, 20.509308>,  <43.214005, 32.682106, 20.491724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286224, 32.910305, 20.509308>,  <43.406590, 33.290638, 20.538614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286224, 32.910305, 20.509308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691571, -0.164671, -0.703287,
		0.656643, -0.262299, 0.707120,
		-0.300914, -0.950833, -0.073268,
		43.195950, 32.625053, 20.487328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.024673, 32.955170, 20.644800>,  <43.406590, 33.290638, 20.538614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.024673, 32.955170, 20.644800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751858, 32.743004, 20.443413>,  <43.588169, 32.615704, 20.322580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751858, 32.743004, 20.443413>,  <44.024673, 32.955170, 20.644800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751858, 32.743004, 20.443413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627752, -0.071458, -0.775127,
		0.375163, -0.844721, 0.381707,
		-0.682042, -0.530416, -0.503466,
		43.547245, 32.583878, 20.292374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391838, 32.462006, 20.128408>,  <44.024673, 32.955170, 20.644800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391838, 32.462006, 20.128408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.019264, 32.539089, 20.004932>,  <43.795719, 32.585339, 19.930847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.019264, 32.539089, 20.004932>,  <44.391838, 32.462006, 20.128408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.019264, 32.539089, 20.004932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352100, 0.262923, -0.898275,
		-0.091947, -0.945375, -0.312749,
		-0.931435, 0.192713, -0.308692,
		43.739834, 32.596905, 19.912325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340130, 31.942345, 19.618298>,  <44.391838, 32.462006, 20.128408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340130, 31.942345, 19.618298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055336, 32.212406, 19.541100>,  <43.884460, 32.374443, 19.494781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055336, 32.212406, 19.541100>,  <44.340130, 31.942345, 19.618298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.055336, 32.212406, 19.541100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253101, -0.009625, -0.967392,
		-0.654994, -0.737616, -0.164029,
		-0.711985, 0.675152, -0.192995,
		43.841740, 32.414951, 19.483200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999691, 31.732687, 18.956139>,  <44.340130, 31.942345, 19.618298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999691, 31.732687, 18.956139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881031, 32.113892, 18.980698>,  <43.809837, 32.342613, 18.995434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881031, 32.113892, 18.980698>,  <43.999691, 31.732687, 18.956139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881031, 32.113892, 18.980698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145524, 0.108653, -0.983370,
		-0.943834, -0.282779, -0.170917,
		-0.296647, 0.953011, 0.061399,
		43.792038, 32.399796, 18.999117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.541077, 31.779753, 18.419157>,  <43.999691, 31.732687, 18.956139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.541077, 31.779753, 18.419157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659973, 32.149532, 18.514690>,  <43.731312, 32.371399, 18.572010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.659973, 32.149532, 18.514690>,  <43.541077, 31.779753, 18.419157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.659973, 32.149532, 18.514690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030358, 0.259162, -0.965357,
		-0.954320, 0.279694, 0.105098,
		0.297242, 0.924449, 0.238832,
		43.749146, 32.426868, 18.586340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157452, 32.170975, 18.019491>,  <43.541077, 31.779753, 18.419157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157452, 32.170975, 18.019491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494438, 32.377850, 18.079849>,  <43.696629, 32.501976, 18.116064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494438, 32.377850, 18.079849>,  <43.157452, 32.170975, 18.019491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494438, 32.377850, 18.079849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036583, 0.224520, -0.973783,
		-0.537509, 0.825897, 0.170230,
		0.842464, 0.517189, 0.150895,
		43.747177, 32.533005, 18.125118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176933, 32.752686, 17.518499>,  <43.157452, 32.170975, 18.019491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176933, 32.752686, 17.518499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552914, 32.769981, 17.653919>,  <43.778503, 32.780357, 17.735170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552914, 32.769981, 17.653919>,  <43.176933, 32.752686, 17.518499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552914, 32.769981, 17.653919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323919, 0.199478, -0.924816,
		-0.107519, 0.978948, 0.173495,
		0.939955, 0.043237, 0.338548,
		43.834900, 32.782951, 17.755484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437389, 33.256008, 17.039833>,  <43.176933, 32.752686, 17.518499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.437389, 33.256008, 17.039833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774033, 33.142319, 17.223537>,  <43.976017, 33.074104, 17.333759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774033, 33.142319, 17.223537>,  <43.437389, 33.256008, 17.039833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774033, 33.142319, 17.223537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516790, 0.176688, -0.837681,
		0.156942, 0.942337, 0.295585,
		0.841604, -0.284222, 0.459260,
		44.026512, 33.057053, 17.361315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997566, 33.856434, 17.023048>,  <43.437389, 33.256008, 17.039833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997566, 33.856434, 17.023048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215023, 33.527218, 17.088848>,  <44.345497, 33.329689, 17.128328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215023, 33.527218, 17.088848>,  <43.997566, 33.856434, 17.023048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215023, 33.527218, 17.088848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579200, 0.226040, -0.783220,
		0.607435, 0.521072, 0.599589,
		0.543645, -0.823037, 0.164500,
		44.378117, 33.280308, 17.138199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.815495, 34.049828, 17.163099>,  <43.997566, 33.856434, 17.023048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.815495, 34.049828, 17.163099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.749146, 33.677578, 17.032604>,  <44.709335, 33.454227, 16.954308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.749146, 33.677578, 17.032604>,  <44.815495, 34.049828, 17.163099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749146, 33.677578, 17.032604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621045, 0.158393, -0.767603,
		0.766021, -0.329933, 0.551684,
		-0.165875, -0.930621, -0.326236,
		44.699383, 33.398392, 16.934732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.495819, 33.713020, 16.943464>,  <44.815495, 34.049828, 17.163099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.495819, 33.713020, 16.943464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237045, 33.474827, 16.752937>,  <45.081779, 33.331909, 16.638622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237045, 33.474827, 16.752937>,  <45.495819, 33.713020, 16.943464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.237045, 33.474827, 16.752937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565318, 0.044672, -0.823663,
		0.511755, -0.802125, 0.307737,
		-0.646933, -0.595483, -0.476316,
		45.042965, 33.296181, 16.610043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955349, 33.181847, 16.569834>,  <45.495819, 33.713020, 16.943464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955349, 33.181847, 16.569834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592628, 33.238266, 16.410927>,  <45.374996, 33.272118, 16.315582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592628, 33.238266, 16.410927>,  <45.955349, 33.181847, 16.569834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592628, 33.238266, 16.410927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412307, 0.100325, -0.905504,
		-0.087868, -0.984906, -0.149132,
		-0.906797, 0.141053, -0.397268,
		45.320591, 33.280582, 16.291746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.938236, 32.742065, 15.928775>,  <45.955349, 33.181847, 16.569834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.938236, 32.742065, 15.928775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647209, 33.010342, 15.871057>,  <45.472591, 33.171307, 15.836426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647209, 33.010342, 15.871057>,  <45.938236, 32.742065, 15.928775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647209, 33.010342, 15.871057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376294, 0.214281, -0.901380,
		-0.573626, -0.710113, -0.408280,
		-0.727569, 0.670689, -0.144294,
		45.428940, 33.211548, 15.827768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.690895, 32.492104, 15.254693>,  <45.938236, 32.742065, 15.928775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.690895, 32.492104, 15.254693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579628, 32.868816, 15.330245>,  <45.512867, 33.094845, 15.375576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.579628, 32.868816, 15.330245>,  <45.690895, 32.492104, 15.254693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579628, 32.868816, 15.330245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082884, 0.219442, -0.972099,
		-0.956950, -0.254750, -0.139100,
		-0.278167, 0.941779, 0.188880,
		45.496178, 33.151352, 15.386909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591183, 32.782082, 14.547544>,  <45.690895, 32.492104, 15.254693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591183, 32.782082, 14.547544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568935, 33.123539, 14.754697>,  <45.555588, 33.328411, 14.878989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568935, 33.123539, 14.754697>,  <45.591183, 32.782082, 14.547544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568935, 33.123539, 14.754697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171100, 0.519163, -0.837374,
		-0.983683, 0.042039, -0.174931,
		-0.055616, 0.853641, 0.517884,
		45.552250, 33.379631, 14.910062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098068, 33.219128, 14.205909>,  <45.591183, 32.782082, 14.547544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098068, 33.219128, 14.205909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.338905, 33.469952, 14.403607>,  <45.483406, 33.620445, 14.522226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.338905, 33.469952, 14.403607>,  <45.098068, 33.219128, 14.205909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.338905, 33.469952, 14.403607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122536, 0.539120, -0.833268,
		-0.788968, 0.562267, 0.247762,
		0.602092, 0.627062, 0.494246,
		45.519531, 33.658070, 14.551881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838768, 33.883911, 14.174931>,  <45.098068, 33.219128, 14.205909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838768, 33.883911, 14.174931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.232872, 33.922993, 14.231093>,  <45.469334, 33.946442, 14.264791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.232872, 33.922993, 14.231093>,  <44.838768, 33.883911, 14.174931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.232872, 33.922993, 14.231093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033385, 0.695203, -0.718038,
		-0.167766, 0.712143, 0.681694,
		0.985261, 0.097704, 0.140406,
		45.528450, 33.952305, 14.273215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.069206, 34.642731, 14.371231>,  <44.838768, 33.883911, 14.174931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.069206, 34.642731, 14.371231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330498, 34.439953, 14.146270>,  <45.487270, 34.318287, 14.011293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330498, 34.439953, 14.146270>,  <45.069206, 34.642731, 14.371231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330498, 34.439953, 14.146270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144921, 0.645334, -0.750028,
		0.743164, 0.571442, 0.348082,
		0.653227, -0.506949, -0.562403,
		45.526466, 34.287868, 13.977549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467384, 35.050186, 13.962957>,  <45.069206, 34.642731, 14.371231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467384, 35.050186, 13.962957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533871, 34.717373, 13.751264>,  <45.573765, 34.517685, 13.624248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533871, 34.717373, 13.751264>,  <45.467384, 35.050186, 13.962957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533871, 34.717373, 13.751264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111246, 0.517453, -0.848450,
		0.979793, 0.199904, -0.006550,
		0.166219, -0.832034, -0.529235,
		45.583736, 34.467762, 13.592493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.693836, 35.771038, 13.683821>,  <45.467384, 35.050186, 13.962957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.693836, 35.771038, 13.683821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.517887, 36.103516, 13.547799>,  <45.412319, 36.303001, 13.466187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.517887, 36.103516, 13.547799>,  <45.693836, 35.771038, 13.683821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.517887, 36.103516, 13.547799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767971, -0.151855, 0.622222,
		0.465546, 0.534849, 0.705127,
		-0.439872, 0.831190, -0.340053,
		45.385925, 36.352871, 13.445784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.588490, 36.203270, 14.259517>,  <45.693836, 35.771038, 13.683821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.588490, 36.203270, 14.259517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.338165, 36.356434, 13.987712>,  <45.187969, 36.448334, 13.824629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.338165, 36.356434, 13.987712>,  <45.588490, 36.203270, 14.259517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.338165, 36.356434, 13.987712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713341, 0.071350, 0.697176,
		0.315440, 0.921026, 0.228494,
		-0.625814, 0.382911, -0.679512,
		45.150421, 36.471306, 13.783858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041821, 35.927391, 14.507083>,  <45.588490, 36.203270, 14.259517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041821, 35.927391, 14.507083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007984, 36.300091, 14.365838>,  <44.987682, 36.523712, 14.281091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007984, 36.300091, 14.365838>,  <45.041821, 35.927391, 14.507083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007984, 36.300091, 14.365838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741520, 0.177849, 0.646929,
		0.665576, 0.316567, 0.675865,
		-0.084594, 0.931749, -0.353113,
		44.982605, 36.579617, 14.259904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.019539, 36.463226, 15.113962>,  <45.041821, 35.927391, 14.507083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.019539, 36.463226, 15.113962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811470, 36.524998, 14.777968>,  <44.686630, 36.562061, 14.576372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811470, 36.524998, 14.777968>,  <45.019539, 36.463226, 15.113962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811470, 36.524998, 14.777968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845516, 0.045675, 0.531993,
		0.120521, 0.986947, 0.106814,
		-0.520171, 0.154429, -0.839985,
		44.655418, 36.571327, 14.525973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521763, 37.144802, 15.159299>,  <45.019539, 36.463226, 15.113962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521763, 37.144802, 15.159299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400913, 36.860863, 14.904794>,  <44.328403, 36.690498, 14.752090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400913, 36.860863, 14.904794>,  <44.521763, 37.144802, 15.159299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400913, 36.860863, 14.904794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787835, -0.189839, 0.585899,
		-0.536689, 0.678286, -0.501890,
		-0.302129, -0.709851, -0.636262,
		44.310276, 36.647907, 14.713915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847496, 37.252892, 14.893668>,  <44.521763, 37.144802, 15.159299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847496, 37.252892, 14.893668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911530, 36.858551, 14.873765>,  <43.949951, 36.621948, 14.861823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911530, 36.858551, 14.873765>,  <43.847496, 37.252892, 14.893668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911530, 36.858551, 14.873765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751927, -0.154450, 0.640898,
		-0.639513, -0.065186, -0.766012,
		0.160088, -0.985848, -0.049758,
		43.959557, 36.562798, 14.858838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251007, 36.974709, 14.926016>,  <43.847496, 37.252892, 14.893668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251007, 36.974709, 14.926016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492893, 36.671516, 15.023822>,  <43.638023, 36.489601, 15.082505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492893, 36.671516, 15.023822>,  <43.251007, 36.974709, 14.926016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492893, 36.671516, 15.023822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539994, -0.164532, 0.825431,
		-0.585429, -0.631186, -0.508799,
		0.604714, -0.757979, 0.244515,
		43.674309, 36.444122, 15.097177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817371, 36.429962, 15.064404>,  <43.251007, 36.974709, 14.926016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817371, 36.429962, 15.064404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145615, 36.357754, 15.281299>,  <43.342560, 36.314430, 15.411435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145615, 36.357754, 15.281299>,  <42.817371, 36.429962, 15.064404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145615, 36.357754, 15.281299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560894, -0.072483, 0.824708,
		-0.109585, -0.980894, -0.160740,
		0.820603, -0.180534, 0.542235,
		43.391796, 36.303596, 15.443970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627350, 36.009796, 15.523163>,  <42.817371, 36.429962, 15.064404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627350, 36.009796, 15.523163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973526, 36.082287, 15.709998>,  <43.181232, 36.125782, 15.822099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.973526, 36.082287, 15.709998>,  <42.627350, 36.009796, 15.523163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973526, 36.082287, 15.709998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473372, -0.009605, 0.880810,
		0.164114, -0.983394, 0.077476,
		0.865439, 0.181229, 0.467087,
		43.233158, 36.136654, 15.850124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787601, 35.469105, 15.914474>,  <42.627350, 36.009796, 15.523163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787601, 35.469105, 15.914474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954964, 35.803261, 16.057060>,  <43.055382, 36.003754, 16.142612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954964, 35.803261, 16.057060>,  <42.787601, 35.469105, 15.914474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954964, 35.803261, 16.057060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490131, -0.122748, 0.862963,
		0.764662, -0.535783, 0.358091,
		0.418406, 0.835386, 0.356464,
		43.080486, 36.053875, 16.164000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260204, 35.294895, 16.551498>,  <42.787601, 35.469105, 15.914474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260204, 35.294895, 16.551498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153736, 35.679329, 16.581100>,  <43.089855, 35.909988, 16.598862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.153736, 35.679329, 16.581100>,  <43.260204, 35.294895, 16.551498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153736, 35.679329, 16.581100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130765, -0.112067, 0.985059,
		0.955015, 0.252516, 0.155505,
		-0.266170, 0.961081, 0.074005,
		43.073887, 35.967651, 16.603302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590172, 35.557041, 17.246277>,  <43.260204, 35.294895, 16.551498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590172, 35.557041, 17.246277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300743, 35.819382, 17.160194>,  <43.127087, 35.976784, 17.108545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.300743, 35.819382, 17.160194>,  <43.590172, 35.557041, 17.246277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300743, 35.819382, 17.160194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291895, -0.008201, 0.956415,
		0.625498, 0.754848, 0.197373,
		-0.723567, 0.655848, -0.215207,
		43.083672, 36.016136, 17.095633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679390, 35.943638, 17.772345>,  <43.590172, 35.557041, 17.246277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679390, 35.943638, 17.772345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330948, 36.058590, 17.613052>,  <43.121883, 36.127560, 17.517477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330948, 36.058590, 17.613052>,  <43.679390, 35.943638, 17.772345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330948, 36.058590, 17.613052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430123, -0.055127, 0.901086,
		0.236997, 0.956230, 0.171628,
		-0.871107, 0.287375, -0.398232,
		43.069614, 36.144802, 17.493584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483612, 36.525845, 18.125925>,  <43.679390, 35.943638, 17.772345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483612, 36.525845, 18.125925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144245, 36.397568, 17.957474>,  <42.940624, 36.320602, 17.856403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144245, 36.397568, 17.957474>,  <43.483612, 36.525845, 18.125925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144245, 36.397568, 17.957474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451698, 0.023839, 0.891852,
		-0.275969, 0.946884, -0.165081,
		-0.848416, -0.320691, -0.421126,
		42.889721, 36.301361, 17.831137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900238, 36.914780, 18.437210>,  <43.483612, 36.525845, 18.125925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900238, 36.914780, 18.437210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769108, 36.567184, 18.288948>,  <42.690430, 36.358627, 18.199991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.769108, 36.567184, 18.288948>,  <42.900238, 36.914780, 18.437210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769108, 36.567184, 18.288948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538833, -0.150285, 0.828899,
		-0.776011, 0.471453, -0.418975,
		-0.327821, -0.868992, -0.370657,
		42.670761, 36.306488, 18.177752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133770, 36.951698, 18.570362>,  <42.900238, 36.914780, 18.437210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133770, 36.951698, 18.570362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249298, 36.574337, 18.505154>,  <42.318615, 36.347919, 18.466028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.249298, 36.574337, 18.505154>,  <42.133770, 36.951698, 18.570362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.249298, 36.574337, 18.505154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472717, -0.288600, 0.832616,
		-0.832539, -0.163414, -0.529315,
		0.288821, -0.943401, -0.163022,
		42.335945, 36.291317, 18.456247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540451, 36.499874, 18.645252>,  <42.133770, 36.951698, 18.570362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540451, 36.499874, 18.645252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850594, 36.253300, 18.700146>,  <42.036678, 36.105354, 18.733082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850594, 36.253300, 18.700146>,  <41.540451, 36.499874, 18.645252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850594, 36.253300, 18.700146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407661, -0.322578, 0.854258,
		-0.482325, -0.718298, -0.501409,
		0.775355, -0.616435, 0.137235,
		42.083199, 36.068371, 18.741316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315498, 35.844536, 18.639170>,  <41.540451, 36.499874, 18.645252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315498, 35.844536, 18.639170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661663, 35.837811, 18.839481>,  <41.869362, 35.833775, 18.959669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661663, 35.837811, 18.839481>,  <41.315498, 35.844536, 18.639170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661663, 35.837811, 18.839481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462610, -0.410776, 0.785656,
		0.192498, -0.911581, -0.363269,
		0.865412, -0.016815, 0.500780,
		41.921288, 35.832767, 18.989716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374752, 35.154518, 19.027243>,  <41.315498, 35.844536, 18.639170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374752, 35.154518, 19.027243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648567, 35.377792, 19.214787>,  <41.812859, 35.511757, 19.327312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.648567, 35.377792, 19.214787>,  <41.374752, 35.154518, 19.027243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648567, 35.377792, 19.214787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129950, -0.539434, 0.831940,
		0.717297, -0.630426, -0.296729,
		0.684542, 0.558188, 0.468858,
		41.853931, 35.545250, 19.355444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804203, 34.640800, 19.446184>,  <41.374752, 35.154518, 19.027243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804203, 34.640800, 19.446184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821579, 35.007309, 19.605461>,  <41.832005, 35.227215, 19.701027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821579, 35.007309, 19.605461>,  <41.804203, 34.640800, 19.446184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821579, 35.007309, 19.605461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078856, -0.394182, 0.915643,
		0.995939, -0.071174, 0.055131,
		0.043439, 0.916272, 0.398193,
		41.834610, 35.282192, 19.724918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311234, 34.504398, 19.814690>,  <41.804203, 34.640800, 19.446184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311234, 34.504398, 19.814690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149303, 34.826664, 19.987675>,  <42.052143, 35.020023, 20.091465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149303, 34.826664, 19.987675>,  <42.311234, 34.504398, 19.814690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149303, 34.826664, 19.987675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041668, -0.488711, 0.871450,
		0.913443, 0.334768, 0.231414,
		-0.404828, 0.805663, 0.432461,
		42.027855, 35.068363, 20.117413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584129, 34.374950, 20.468729>,  <42.311234, 34.504398, 19.814690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584129, 34.374950, 20.468729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276932, 34.628479, 20.505497>,  <42.092613, 34.780598, 20.527557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276932, 34.628479, 20.505497>,  <42.584129, 34.374950, 20.468729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276932, 34.628479, 20.505497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269357, -0.449865, 0.851510,
		0.581058, 0.629197, 0.516219,
		-0.767996, 0.633824, 0.091919,
		42.046532, 34.818626, 20.533073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616226, 34.513367, 21.151331>,  <42.584129, 34.374950, 20.468729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616226, 34.513367, 21.151331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259869, 34.656101, 21.038918>,  <42.046055, 34.741741, 20.971470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259869, 34.656101, 21.038918>,  <42.616226, 34.513367, 21.151331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259869, 34.656101, 21.038918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424898, -0.436049, 0.793299,
		0.160531, 0.826155, 0.540091,
		-0.890894, 0.356832, -0.281032,
		41.992599, 34.763149, 20.954609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285374, 34.910366, 21.763254>,  <42.616226, 34.513367, 21.151331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285374, 34.910366, 21.763254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000912, 34.780346, 21.513905>,  <41.830235, 34.702335, 21.364294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000912, 34.780346, 21.513905>,  <42.285374, 34.910366, 21.763254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000912, 34.780346, 21.513905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540612, -0.314006, 0.780474,
		-0.449437, 0.892044, 0.047582,
		-0.711158, -0.325051, -0.623375,
		41.787563, 34.682831, 21.326893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540737, 35.121586, 21.968151>,  <42.285374, 34.910366, 21.763254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540737, 35.121586, 21.968151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491306, 34.794830, 21.742790>,  <41.461647, 34.598778, 21.607573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491306, 34.794830, 21.742790>,  <41.540737, 35.121586, 21.968151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491306, 34.794830, 21.742790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594111, -0.393852, 0.701365,
		-0.794834, 0.421397, -0.436651,
		-0.123577, -0.816888, -0.563404,
		41.454235, 34.549763, 21.573769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829983, 34.913967, 22.235353>,  <41.540737, 35.121586, 21.968151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829983, 34.913967, 22.235353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965527, 34.599163, 22.029137>,  <41.046852, 34.410278, 21.905407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965527, 34.599163, 22.029137>,  <40.829983, 34.913967, 22.235353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965527, 34.599163, 22.029137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484284, -0.615701, 0.621596,
		-0.806624, 0.039033, -0.589775,
		0.338862, -0.787013, -0.515542,
		41.067184, 34.363060, 21.874474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245483, 34.597008, 21.870733>,  <40.829983, 34.913967, 22.235353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245483, 34.597008, 21.870733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521454, 34.311295, 21.917721>,  <40.687035, 34.139866, 21.945913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.521454, 34.311295, 21.917721>,  <40.245483, 34.597008, 21.870733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521454, 34.311295, 21.917721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691615, -0.602531, 0.398278,
		-0.213704, -0.356027, -0.909712,
		0.689927, -0.714284, 0.117471,
		40.728432, 34.097008, 21.952961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967018, 33.911613, 21.740952>,  <40.245483, 34.597008, 21.870733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967018, 33.911613, 21.740952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282158, 33.892830, 21.986584>,  <40.471241, 33.881557, 22.133963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282158, 33.892830, 21.986584>,  <39.967018, 33.911613, 21.740952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282158, 33.892830, 21.986584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505528, -0.618818, 0.601253,
		0.351768, -0.784129, -0.511274,
		0.787845, -0.046962, 0.614080,
		40.518513, 33.878742, 22.170807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354362, 33.468357, 21.663229>,  <39.967018, 33.911613, 21.740952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354362, 33.468357, 21.663229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093510, 33.165115, 21.662231>,  <38.936996, 32.983170, 21.661633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093510, 33.165115, 21.662231>,  <39.354362, 33.468357, 21.663229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093510, 33.165115, 21.662231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674276, 0.581523, -0.455174,
		0.346518, -0.295152, -0.890399,
		-0.652133, -0.758100, -0.002494,
		38.897869, 32.937687, 21.661484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006607, 33.647240, 21.041538>,  <39.354362, 33.468357, 21.663229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006607, 33.647240, 21.041538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792416, 33.419590, 21.291134>,  <38.663902, 33.283001, 21.440891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792416, 33.419590, 21.291134>,  <39.006607, 33.647240, 21.041538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792416, 33.419590, 21.291134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813788, 0.545294, -0.201008,
		-0.225860, -0.615431, -0.755137,
		-0.535478, -0.569121, 0.623991,
		38.631771, 33.248852, 21.478331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328350, 33.568153, 20.806797>,  <39.006607, 33.647240, 21.041538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328350, 33.568153, 20.806797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261181, 33.465256, 21.187454>,  <38.220879, 33.403515, 21.415848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261181, 33.465256, 21.187454>,  <38.328350, 33.568153, 20.806797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261181, 33.465256, 21.187454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938647, 0.336712, -0.074612,
		-0.301235, -0.905786, -0.298008,
		-0.167925, -0.257249, 0.951643,
		38.210804, 33.388081, 21.472946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894138, 33.048645, 20.707689>,  <38.328350, 33.568153, 20.806797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894138, 33.048645, 20.707689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852089, 33.211868, 21.070442>,  <37.826859, 33.309803, 21.288094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852089, 33.211868, 21.070442>,  <37.894138, 33.048645, 20.707689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852089, 33.211868, 21.070442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967213, 0.170054, -0.188629,
		-0.231191, -0.896979, 0.376803,
		-0.105120, 0.408058, 0.906884,
		37.820553, 33.334286, 21.342508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435188, 32.618523, 21.118275>,  <37.894138, 33.048645, 20.707689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435188, 32.618523, 21.118275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460472, 33.002872, 21.226139>,  <37.475643, 33.233482, 21.290857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460472, 33.002872, 21.226139>,  <37.435188, 32.618523, 21.118275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460472, 33.002872, 21.226139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994039, 0.084667, -0.068687,
		-0.088831, -0.263710, 0.960503,
		0.063209, 0.960879, 0.269659,
		37.479435, 33.291138, 21.307037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859554, 32.714012, 21.547482>,  <37.435188, 32.618523, 21.118275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859554, 32.714012, 21.547482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970810, 33.067223, 21.396271>,  <37.037563, 33.279148, 21.305544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970810, 33.067223, 21.396271>,  <36.859554, 32.714012, 21.547482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970810, 33.067223, 21.396271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943346, 0.176977, -0.280673,
		-0.180940, 0.434674, 0.882224,
		0.278135, 0.883028, -0.378025,
		37.054249, 33.332130, 21.282864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556068, 32.486935, 22.262514>,  <36.859554, 32.714012, 21.547482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556068, 32.486935, 22.262514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472878, 32.750496, 22.551678>,  <36.422962, 32.908630, 22.725176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472878, 32.750496, 22.551678>,  <36.556068, 32.486935, 22.262514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472878, 32.750496, 22.551678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064319, -0.746682, 0.662064,
		0.976017, 0.091197, 0.197671,
		-0.207976, 0.658900, 0.722909,
		36.410484, 32.948166, 22.768551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979839, 32.223587, 22.928749>,  <36.556068, 32.486935, 22.262514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979839, 32.223587, 22.928749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705463, 32.468929, 23.085350>,  <36.540836, 32.616135, 23.179310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705463, 32.468929, 23.085350>,  <36.979839, 32.223587, 22.928749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705463, 32.468929, 23.085350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190130, -0.670417, 0.717211,
		0.702377, 0.417530, 0.576486,
		-0.685943, 0.613360, 0.391501,
		36.499680, 32.652939, 23.202801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165989, 32.254681, 23.648262>,  <36.979839, 32.223587, 22.928749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165989, 32.254681, 23.648262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784416, 32.367229, 23.606621>,  <36.555473, 32.434757, 23.581636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784416, 32.367229, 23.606621>,  <37.165989, 32.254681, 23.648262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784416, 32.367229, 23.606621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253744, -0.571566, 0.780337,
		0.160060, 0.770808, 0.616633,
		-0.953937, 0.281368, -0.104103,
		36.498234, 32.451641, 23.575390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921913, 32.395267, 24.355051>,  <37.165989, 32.254681, 23.648262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921913, 32.395267, 24.355051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593563, 32.323158, 24.138290>,  <36.396553, 32.279892, 24.008234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593563, 32.323158, 24.138290>,  <36.921913, 32.395267, 24.355051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593563, 32.323158, 24.138290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395455, -0.505156, 0.767094,
		-0.412034, 0.843989, 0.343380,
		-0.820879, -0.180278, -0.541901,
		36.347298, 32.269073, 23.975719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513123, 32.396084, 24.801052>,  <36.921913, 32.395267, 24.355051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513123, 32.396084, 24.801052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284161, 32.220955, 24.523731>,  <36.146782, 32.115879, 24.357338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284161, 32.220955, 24.523731>,  <36.513123, 32.396084, 24.801052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284161, 32.220955, 24.523731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337896, -0.644447, 0.685940,
		-0.747114, 0.626900, 0.220947,
		-0.572405, -0.437818, -0.693302,
		36.112438, 32.089611, 24.315741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853573, 32.332466, 25.031925>,  <36.513123, 32.396084, 24.801052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853573, 32.332466, 25.031925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831936, 32.066925, 24.733562>,  <35.818954, 31.907600, 24.554544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831936, 32.066925, 24.733562>,  <35.853573, 32.332466, 25.031925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831936, 32.066925, 24.733562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632325, -0.555364, 0.540125,
		-0.772813, 0.500871, -0.389729,
		-0.054092, -0.663851, -0.745906,
		35.815708, 31.867769, 24.509790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114067, 32.236992, 24.863859>,  <35.853573, 32.332466, 25.031925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114067, 32.236992, 24.863859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318169, 31.921162, 24.727501>,  <35.440632, 31.731663, 24.645685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318169, 31.921162, 24.727501>,  <35.114067, 32.236992, 24.863859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318169, 31.921162, 24.727501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520807, -0.599122, 0.608123,
		-0.684397, -0.132756, -0.716921,
		0.510255, -0.789575, -0.340897,
		35.471245, 31.684290, 24.625233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530396, 31.756920, 24.643629>,  <35.114067, 32.236992, 24.863859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530396, 31.756920, 24.643629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874992, 31.573296, 24.730431>,  <35.081749, 31.463121, 24.782513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874992, 31.573296, 24.730431>,  <34.530396, 31.756920, 24.643629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874992, 31.573296, 24.730431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502252, -0.707566, 0.497085,
		-0.074647, -0.537227, -0.840128,
		0.861493, -0.459062, 0.217005,
		35.133442, 31.435577, 24.795532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471966, 31.049746, 24.488827>,  <34.530396, 31.756920, 24.643629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471966, 31.049746, 24.488827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794357, 31.055832, 24.725525>,  <34.987793, 31.059484, 24.867544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794357, 31.055832, 24.725525>,  <34.471966, 31.049746, 24.488827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794357, 31.055832, 24.725525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426756, -0.677830, 0.598687,
		0.410214, -0.735061, -0.539823,
		0.805980, 0.015217, 0.591747,
		35.036152, 31.060396, 24.903049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582691, 30.329731, 24.654236>,  <34.471966, 31.049746, 24.488827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582691, 30.329731, 24.654236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751972, 30.565975, 24.929066>,  <34.853542, 30.707722, 25.093964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751972, 30.565975, 24.929066>,  <34.582691, 30.329731, 24.654236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751972, 30.565975, 24.929066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378089, -0.574028, 0.726320,
		0.823375, -0.567159, -0.019628,
		0.423206, 0.590613, 0.687076,
		34.878933, 30.743158, 25.135189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862930, 29.878708, 25.061941>,  <34.582691, 30.329731, 24.654236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862930, 29.878708, 25.061941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888828, 30.208569, 25.286709>,  <34.904369, 30.406485, 25.421570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888828, 30.208569, 25.286709>,  <34.862930, 29.878708, 25.061941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888828, 30.208569, 25.286709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196343, -0.541566, 0.817408,
		0.978395, -0.163255, 0.126850,
		0.064748, 0.824654, 0.561919,
		34.908253, 30.455965, 25.455284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207642, 29.590738, 25.620569>,  <34.862930, 29.878708, 25.061941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207642, 29.590738, 25.620569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022537, 29.925568, 25.737297>,  <34.911476, 30.126465, 25.807333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022537, 29.925568, 25.737297>,  <35.207642, 29.590738, 25.620569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022537, 29.925568, 25.737297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332395, -0.469016, 0.818252,
		0.821807, 0.281655, 0.495282,
		-0.462760, 0.837074, 0.291820,
		34.883709, 30.176689, 25.824842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358685, 29.805105, 26.310125>,  <35.207642, 29.590738, 25.620569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358685, 29.805105, 26.310125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013073, 29.991432, 26.233734>,  <34.805706, 30.103228, 26.187899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013073, 29.991432, 26.233734>,  <35.358685, 29.805105, 26.310125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013073, 29.991432, 26.233734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381773, -0.358951, 0.851706,
		0.328187, 0.808807, 0.487979,
		-0.864027, 0.465817, -0.190978,
		34.753864, 30.131178, 26.176441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132927, 30.192574, 26.956068>,  <35.358685, 29.805105, 26.310125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132927, 30.192574, 26.956068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802944, 30.143940, 26.735283>,  <34.604954, 30.114759, 26.602812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802944, 30.143940, 26.735283>,  <35.132927, 30.192574, 26.956068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802944, 30.143940, 26.735283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495677, -0.313601, 0.809913,
		-0.271570, 0.941739, 0.198440,
		-0.824957, -0.121586, -0.551963,
		34.555458, 30.107464, 26.569695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570808, 30.421833, 27.384520>,  <35.132927, 30.192574, 26.956068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570808, 30.421833, 27.384520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420029, 30.159016, 27.123383>,  <34.329563, 30.001326, 26.966700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420029, 30.159016, 27.123383>,  <34.570808, 30.421833, 27.384520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420029, 30.159016, 27.123383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363921, -0.543093, 0.756711,
		-0.851748, 0.522822, -0.034397,
		-0.376945, -0.657045, -0.652844,
		34.306946, 29.961903, 26.927530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960571, 30.322634, 27.680693>,  <34.570808, 30.421833, 27.384520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960571, 30.322634, 27.680693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014519, 30.002213, 27.447411>,  <34.046886, 29.809959, 27.307442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014519, 30.002213, 27.447411>,  <33.960571, 30.322634, 27.680693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014519, 30.002213, 27.447411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298485, -0.594087, 0.746972,
		-0.944837, 0.073332, -0.319227,
		0.134872, -0.801051, -0.583204,
		34.054981, 29.761898, 27.272449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437744, 29.892611, 27.904905>,  <33.960571, 30.322634, 27.680693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437744, 29.892611, 27.904905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666710, 29.637459, 27.698818>,  <33.804089, 29.484367, 27.575165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666710, 29.637459, 27.698818>,  <33.437744, 29.892611, 27.904905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666710, 29.637459, 27.698818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255710, -0.735879, 0.626973,
		-0.779070, -0.227144, -0.584341,
		0.572417, -0.637878, -0.515218,
		33.838436, 29.446095, 27.544252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151157, 29.336348, 27.938435>,  <33.437744, 29.892611, 27.904905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151157, 29.336348, 27.938435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517624, 29.211056, 27.838417>,  <33.737503, 29.135881, 27.778406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517624, 29.211056, 27.838417>,  <33.151157, 29.336348, 27.938435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517624, 29.211056, 27.838417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034885, -0.683830, 0.728807,
		-0.399272, -0.658987, -0.637431,
		0.916169, -0.313229, -0.250045,
		33.792473, 29.117086, 27.763403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189709, 28.519857, 28.011227>,  <33.151157, 29.336348, 27.938435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189709, 28.519857, 28.011227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579456, 28.608799, 28.024834>,  <33.813305, 28.662165, 28.032997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579456, 28.608799, 28.024834>,  <33.189709, 28.519857, 28.011227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579456, 28.608799, 28.024834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127680, -0.671210, 0.730188,
		0.185195, -0.707132, -0.682399,
		0.974372, 0.222356, 0.034018,
		33.871769, 28.675507, 28.035040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527069, 27.904362, 27.981123>,  <33.189709, 28.519857, 28.011227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527069, 27.904362, 27.981123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773876, 28.165775, 28.156475>,  <33.921963, 28.322624, 28.261686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773876, 28.165775, 28.156475>,  <33.527069, 27.904362, 27.981123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773876, 28.165775, 28.156475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324545, -0.718809, 0.614804,
		0.716907, -0.237073, -0.655622,
		0.617021, 0.653536, 0.438379,
		33.958984, 28.361835, 28.287989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037636, 27.506124, 28.170141>,  <33.527069, 27.904362, 27.981123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037636, 27.506124, 28.170141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160336, 27.824825, 28.378407>,  <34.233955, 28.016047, 28.503366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160336, 27.824825, 28.378407>,  <34.037636, 27.506124, 28.170141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160336, 27.824825, 28.378407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221111, -0.591723, 0.775225,
		0.925751, -0.122674, -0.357681,
		0.306748, 0.796752, 0.520664,
		34.252361, 28.063850, 28.534605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614727, 27.390961, 28.329630>,  <34.037636, 27.506124, 28.170141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614727, 27.390961, 28.329630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532288, 27.662331, 28.611698>,  <34.482826, 27.825153, 28.780939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532288, 27.662331, 28.611698>,  <34.614727, 27.390961, 28.329630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532288, 27.662331, 28.611698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414949, -0.592047, 0.690867,
		0.886195, 0.434995, -0.159493,
		-0.206097, 0.678425, 0.705170,
		34.470459, 27.865858, 28.823250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348492, 27.672892, 28.681732>,  <34.614727, 27.390961, 28.329630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348492, 27.672892, 28.681732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039616, 27.707127, 28.933571>,  <34.854290, 27.727669, 29.084675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039616, 27.707127, 28.933571>,  <35.348492, 27.672892, 28.681732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039616, 27.707127, 28.933571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528084, -0.464578, 0.710841,
		0.353338, 0.881387, 0.313545,
		-0.772191, 0.085589, 0.629599,
		34.807957, 27.732803, 29.122450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724346, 27.881622, 29.225157>,  <35.348492, 27.672892, 28.681732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724346, 27.881622, 29.225157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365219, 27.757545, 29.350185>,  <35.149742, 27.683100, 29.425203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365219, 27.757545, 29.350185>,  <35.724346, 27.881622, 29.225157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365219, 27.757545, 29.350185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436838, -0.537723, 0.721129,
		-0.055612, 0.783987, 0.618282,
		-0.897820, -0.310193, 0.312571,
		35.095875, 27.664488, 29.443956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767933, 27.923162, 29.981407>,  <35.724346, 27.881622, 29.225157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767933, 27.923162, 29.981407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466667, 27.675934, 29.891308>,  <35.285908, 27.527596, 29.837248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466667, 27.675934, 29.891308>,  <35.767933, 27.923162, 29.981407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466667, 27.675934, 29.891308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116673, -0.462481, 0.878919,
		-0.647408, 0.635686, 0.420434,
		-0.753160, -0.618073, -0.225247,
		35.240719, 27.490513, 29.823734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651402, 27.492144, 30.701923>,  <35.767933, 27.923162, 29.981407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651402, 27.492144, 30.701923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440804, 27.306526, 30.416977>,  <35.314445, 27.195156, 30.246010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440804, 27.306526, 30.416977>,  <35.651402, 27.492144, 30.701923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440804, 27.306526, 30.416977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115568, -0.791060, 0.600722,
		-0.842286, 0.398604, 0.362861,
		-0.526495, -0.464045, -0.712366,
		35.282856, 27.167313, 30.203268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023552, 27.283344, 31.008308>,  <35.651402, 27.492144, 30.701923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023552, 27.283344, 31.008308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102901, 27.049221, 30.693840>,  <35.150509, 26.908747, 30.505159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102901, 27.049221, 30.693840>,  <35.023552, 27.283344, 31.008308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102901, 27.049221, 30.693840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059899, -0.807852, 0.586333,
		-0.978295, -0.069221, -0.195313,
		0.198371, -0.585306, -0.786172,
		35.162415, 26.873629, 30.457989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495674, 26.714443, 30.988031>,  <35.023552, 27.283344, 31.008308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495674, 26.714443, 30.988031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817974, 26.593281, 30.784458>,  <35.011356, 26.520582, 30.662315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817974, 26.593281, 30.784458>,  <34.495674, 26.714443, 30.988031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817974, 26.593281, 30.784458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104990, -0.772650, 0.626091,
		-0.582874, -0.557906, -0.590761,
		0.805752, -0.302908, -0.508932,
		35.059700, 26.502409, 30.631779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440434, 26.020048, 30.934668>,  <34.495674, 26.714443, 30.988031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440434, 26.020048, 30.934668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833710, 26.074730, 30.886265>,  <35.069675, 26.107538, 30.857224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833710, 26.074730, 30.886265>,  <34.440434, 26.020048, 30.934668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833710, 26.074730, 30.886265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180303, -0.831113, 0.526063,
		-0.028656, -0.539040, -0.841792,
		0.983193, 0.136702, -0.121007,
		35.128670, 26.115740, 30.849962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692657, 25.346708, 30.787807>,  <34.440434, 26.020048, 30.934668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692657, 25.346708, 30.787807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011330, 25.558254, 30.904835>,  <35.202534, 25.685183, 30.975050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.011330, 25.558254, 30.904835>,  <34.692657, 25.346708, 30.787807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011330, 25.558254, 30.904835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268907, -0.743678, 0.612071,
		0.541279, -0.408954, -0.734693,
		0.796684, 0.528865, 0.292567,
		35.250336, 25.716913, 30.992605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220127, 24.907566, 30.859070>,  <34.692657, 25.346708, 30.787807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220127, 24.907566, 30.859070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354980, 25.201439, 31.094555>,  <35.435894, 25.377762, 31.235846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354980, 25.201439, 31.094555>,  <35.220127, 24.907566, 30.859070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354980, 25.201439, 31.094555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260515, -0.673704, 0.691560,
		0.904694, -0.079781, -0.418525,
		0.337135, 0.734682, 0.588712,
		35.456120, 25.421844, 31.271168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804745, 24.611158, 31.149534>,  <35.220127, 24.907566, 30.859070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804745, 24.611158, 31.149534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646809, 24.897915, 31.379375>,  <35.552048, 25.069969, 31.517281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646809, 24.897915, 31.379375>,  <35.804745, 24.611158, 31.149534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646809, 24.897915, 31.379375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171459, -0.556932, 0.812667,
		0.902610, 0.419393, 0.096980,
		-0.394838, 0.716893, 0.574601,
		35.528358, 25.112984, 31.551756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076027, 24.476736, 31.735495>,  <35.804745, 24.611158, 31.149534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076027, 24.476736, 31.735495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784782, 24.719532, 31.862877>,  <35.610035, 24.865210, 31.939306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784782, 24.719532, 31.862877>,  <36.076027, 24.476736, 31.735495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784782, 24.719532, 31.862877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013445, -0.451853, 0.891991,
		0.685325, 0.653752, 0.320839,
		-0.728113, 0.606990, 0.318456,
		35.566349, 24.901628, 31.958414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108192, 24.541304, 32.398750>,  <36.076027, 24.476736, 31.735495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108192, 24.541304, 32.398750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732983, 24.674698, 32.361008>,  <35.507858, 24.754734, 32.338360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732983, 24.674698, 32.361008>,  <36.108192, 24.541304, 32.398750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732983, 24.674698, 32.361008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178967, -0.232927, 0.955885,
		0.296796, 0.913527, 0.278174,
		-0.938021, 0.333487, -0.094360,
		35.451576, 24.774744, 32.332699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005650, 24.840092, 33.013443>,  <36.108192, 24.541304, 32.398750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005650, 24.840092, 33.013443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647476, 24.745644, 32.862473>,  <35.432571, 24.688974, 32.771893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.647476, 24.745644, 32.862473>,  <36.005650, 24.840092, 33.013443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647476, 24.745644, 32.862473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317132, -0.256694, 0.912982,
		-0.312454, 0.937207, 0.154971,
		-0.895433, -0.236118, -0.377423,
		35.378845, 24.674809, 32.749245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563454, 25.230232, 33.288044>,  <36.005650, 24.840092, 33.013443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563454, 25.230232, 33.288044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349594, 24.914780, 33.166576>,  <35.221279, 24.725508, 33.093697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349594, 24.914780, 33.166576>,  <35.563454, 25.230232, 33.288044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349594, 24.914780, 33.166576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345747, -0.123752, 0.930131,
		-0.771110, 0.602284, -0.206503,
		-0.534649, -0.788631, -0.303664,
		35.189201, 24.678190, 33.075478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038242, 25.258640, 33.710285>,  <35.563454, 25.230232, 33.288044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038242, 25.258640, 33.710285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959126, 24.900780, 33.550045>,  <34.911655, 24.686064, 33.453899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959126, 24.900780, 33.550045>,  <35.038242, 25.258640, 33.710285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959126, 24.900780, 33.550045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375012, -0.308522, 0.874174,
		-0.905674, 0.323133, -0.274481,
		-0.197791, -0.894650, -0.400599,
		34.899788, 24.632385, 33.429867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365589, 25.046515, 34.032051>,  <35.038242, 25.258640, 33.710285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365589, 25.046515, 34.032051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545391, 24.711567, 33.907623>,  <34.653271, 24.510599, 33.832966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545391, 24.711567, 33.907623>,  <34.365589, 25.046515, 34.032051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545391, 24.711567, 33.907623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299397, -0.469314, 0.830726,
		-0.841612, -0.280280, -0.461663,
		0.449500, -0.837369, -0.311065,
		34.680241, 24.460356, 33.814304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901306, 24.568274, 34.223915>,  <34.365589, 25.046515, 34.032051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901306, 24.568274, 34.223915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263813, 24.403217, 34.187237>,  <34.481316, 24.304184, 34.165230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263813, 24.403217, 34.187237>,  <33.901306, 24.568274, 34.223915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263813, 24.403217, 34.187237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174448, -0.562695, 0.808048,
		-0.385030, -0.716311, -0.581936,
		0.906267, -0.412640, -0.091696,
		34.535694, 24.279425, 34.159729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831829, 23.913654, 34.280476>,  <33.901306, 24.568274, 34.223915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831829, 23.913654, 34.280476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221806, 23.945778, 34.363464>,  <34.455791, 23.965052, 34.413258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221806, 23.945778, 34.363464>,  <33.831829, 23.913654, 34.280476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221806, 23.945778, 34.363464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125908, -0.569659, 0.812180,
		0.183411, -0.817948, -0.545271,
		0.974940, 0.080309, 0.207468,
		34.514286, 23.969870, 34.425705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172272, 23.212408, 34.357399>,  <33.831829, 23.913654, 34.280476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172272, 23.212408, 34.357399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365421, 23.481377, 34.581787>,  <34.481312, 23.642757, 34.716419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365421, 23.481377, 34.581787>,  <34.172272, 23.212408, 34.357399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365421, 23.481377, 34.581787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162913, -0.560439, 0.812014,
		0.860404, -0.483487, -0.161074,
		0.482870, 0.672420, 0.560970,
		34.510281, 23.683102, 34.750080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226414, 22.781582, 34.847633>,  <34.172272, 23.212408, 34.357399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226414, 22.781582, 34.847633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393250, 23.120556, 34.979019>,  <34.493351, 23.323940, 35.057850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393250, 23.120556, 34.979019>,  <34.226414, 22.781582, 34.847633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393250, 23.120556, 34.979019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108622, -0.405287, 0.907714,
		0.902350, -0.342923, -0.261092,
		0.417093, 0.847435, 0.328461,
		34.518379, 23.374786, 35.077557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823826, 22.659241, 35.079300>,  <34.226414, 22.781582, 34.847633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823826, 22.659241, 35.079300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667580, 22.947777, 35.308067>,  <34.573833, 23.120899, 35.445328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667580, 22.947777, 35.308067>,  <34.823826, 22.659241, 35.079300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667580, 22.947777, 35.308067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015746, -0.615949, 0.787628,
		0.920421, 0.316662, 0.229239,
		-0.390612, 0.721340, 0.571919,
		34.550396, 23.164179, 35.479645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952759, 22.434469, 35.815937>,  <34.823826, 22.659241, 35.079300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952759, 22.434469, 35.815937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664833, 22.711956, 35.805901>,  <34.492077, 22.878448, 35.799877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664833, 22.711956, 35.805901>,  <34.952759, 22.434469, 35.815937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664833, 22.711956, 35.805901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318413, -0.297836, 0.899948,
		0.616835, 0.655782, 0.435274,
		-0.719810, 0.693717, -0.025094,
		34.448891, 22.920071, 35.798374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979755, 22.877134, 36.472622>,  <34.952759, 22.434469, 35.815937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979755, 22.877134, 36.472622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627262, 22.876919, 36.283554>,  <34.415764, 22.876789, 36.170113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627262, 22.876919, 36.283554>,  <34.979755, 22.877134, 36.472622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627262, 22.876919, 36.283554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450095, -0.304424, 0.839488,
		-0.144345, 0.952537, 0.268028,
		-0.881237, -0.000538, -0.472674,
		34.362892, 22.876757, 36.141750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450394, 23.521124, 36.814472>,  <34.979755, 22.877134, 36.472622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450394, 23.521124, 36.814472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354378, 23.159931, 36.671921>,  <34.296768, 22.943216, 36.586391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354378, 23.159931, 36.671921>,  <34.450394, 23.521124, 36.814472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354378, 23.159931, 36.671921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278450, -0.287642, 0.916367,
		-0.929971, 0.319198, -0.182390,
		-0.240039, -0.902981, -0.356379,
		34.282368, 22.889036, 36.565006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025192, 23.160770, 37.189510>,  <34.450394, 23.521124, 36.814472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025192, 23.160770, 37.189510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227310, 23.472576, 37.337585>,  <35.348579, 23.659660, 37.426430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227310, 23.472576, 37.337585>,  <35.025192, 23.160770, 37.189510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227310, 23.472576, 37.337585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768236, 0.210954, 0.604411,
		0.393056, -0.589792, 0.705445,
		0.505293, 0.779515, 0.370182,
		35.378899, 23.706430, 37.448639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914722, 23.709469, 37.550430>,  <35.025192, 23.160770, 37.189510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914722, 23.709469, 37.550430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095604, 23.973053, 37.790855>,  <35.204132, 24.131203, 37.935112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095604, 23.973053, 37.790855>,  <34.914722, 23.709469, 37.550430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095604, 23.973053, 37.790855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273927, -0.538727, 0.796704,
		0.848806, -0.524924, -0.063109,
		0.452208, 0.658960, 0.601066,
		35.231266, 24.170740, 37.971176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937134, 24.385624, 37.113792>,  <34.914722, 23.709469, 37.550430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937134, 24.385624, 37.113792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676094, 24.242992, 37.381218>,  <34.519470, 24.157413, 37.541672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676094, 24.242992, 37.381218>,  <34.937134, 24.385624, 37.113792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676094, 24.242992, 37.381218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549484, 0.830250, -0.093549,
		-0.521714, -0.428413, -0.737751,
		-0.652596, -0.356577, 0.668560,
		34.480316, 24.136019, 37.581787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320389, 24.253601, 36.800961>,  <34.937134, 24.385624, 37.113792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320389, 24.253601, 36.800961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285484, 24.363220, 37.184059>,  <34.264542, 24.428991, 37.413918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285484, 24.363220, 37.184059>,  <34.320389, 24.253601, 36.800961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285484, 24.363220, 37.184059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308726, 0.906642, -0.287555,
		-0.947140, -0.320775, 0.005489,
		-0.087264, 0.274050, 0.957748,
		34.259304, 24.445435, 37.471382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587486, 24.395136, 37.044350>,  <34.320389, 24.253601, 36.800961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587486, 24.395136, 37.044350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881771, 24.624393, 37.188702>,  <34.058342, 24.761948, 37.275314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881771, 24.624393, 37.188702>,  <33.587486, 24.395136, 37.044350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881771, 24.624393, 37.188702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370787, 0.786721, -0.493545,
		-0.566787, 0.229295, 0.791313,
		0.735711, 0.573143, 0.360884,
		34.102486, 24.796337, 37.296967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260807, 24.869217, 37.351364>,  <33.587486, 24.395136, 37.044350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260807, 24.869217, 37.351364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623764, 24.996029, 37.240993>,  <33.841537, 25.072115, 37.174770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623764, 24.996029, 37.240993>,  <33.260807, 24.869217, 37.351364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623764, 24.996029, 37.240993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398902, 0.856377, -0.327864,
		0.132352, 0.407567, 0.903533,
		0.907392, 0.317028, -0.275922,
		33.895981, 25.091137, 37.158218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372883, 25.572123, 37.648041>,  <33.260807, 24.869217, 37.351364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372883, 25.572123, 37.648041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588390, 25.505157, 37.317780>,  <33.717693, 25.464979, 37.119621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588390, 25.505157, 37.317780>,  <33.372883, 25.572123, 37.648041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588390, 25.505157, 37.317780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258906, 0.899724, -0.351375,
		0.801683, 0.403077, 0.441400,
		0.538769, -0.167411, -0.825652,
		33.750023, 25.454935, 37.070084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772602, 26.163652, 37.554283>,  <33.372883, 25.572123, 37.648041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772602, 26.163652, 37.554283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753799, 25.991055, 37.193928>,  <33.742519, 25.887497, 36.977715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753799, 25.991055, 37.193928>,  <33.772602, 26.163652, 37.554283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753799, 25.991055, 37.193928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244782, 0.879365, -0.408411,
		0.968438, 0.201324, -0.146958,
		-0.047006, -0.431494, -0.900891,
		33.739697, 25.861607, 36.923660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967094, 26.708651, 37.135506>,  <33.772602, 26.163652, 37.554283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967094, 26.708651, 37.135506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791393, 26.459984, 36.876095>,  <33.685970, 26.310783, 36.720448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791393, 26.459984, 36.876095>,  <33.967094, 26.708651, 37.135506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791393, 26.459984, 36.876095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176240, 0.767500, -0.616347,
		0.880905, -0.156438, -0.446692,
		-0.439256, -0.621668, -0.648524,
		33.659615, 26.273483, 36.681538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281326, 26.905853, 36.419220>,  <33.967094, 26.708651, 37.135506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281326, 26.905853, 36.419220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948708, 26.690250, 36.365547>,  <33.749138, 26.560888, 36.333344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948708, 26.690250, 36.365547>,  <34.281326, 26.905853, 36.419220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948708, 26.690250, 36.365547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255101, 0.585171, -0.769739,
		0.493415, -0.605842, -0.624097,
		-0.831544, -0.539009, -0.134181,
		33.699245, 26.528547, 36.325291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188122, 26.681688, 35.692326>,  <34.281326, 26.905853, 36.419220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188122, 26.681688, 35.692326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815762, 26.657612, 35.836433>,  <33.592346, 26.643166, 35.922897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815762, 26.657612, 35.836433>,  <34.188122, 26.681688, 35.692326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815762, 26.657612, 35.836433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342015, 0.489915, -0.801878,
		-0.128235, -0.869690, -0.476650,
		-0.930903, -0.060193, 0.360271,
		33.536491, 26.639555, 35.944515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732861, 26.575840, 35.128941>,  <34.188122, 26.681688, 35.692326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732861, 26.575840, 35.128941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477703, 26.707512, 35.407433>,  <33.324608, 26.786514, 35.574528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477703, 26.707512, 35.407433>,  <33.732861, 26.575840, 35.128941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477703, 26.707512, 35.407433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567039, 0.410970, -0.713842,
		-0.521111, -0.850143, -0.075498,
		-0.637896, 0.329181, 0.696225,
		33.286335, 26.806267, 35.616299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123058, 26.571432, 34.797417>,  <33.732861, 26.575840, 35.128941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123058, 26.571432, 34.797417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082394, 26.821754, 35.106747>,  <33.057995, 26.971949, 35.292343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082394, 26.821754, 35.106747>,  <33.123058, 26.571432, 34.797417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082394, 26.821754, 35.106747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541699, 0.617177, -0.570661,
		-0.834402, -0.476924, 0.276254,
		-0.101665, 0.625807, 0.773323,
		33.051895, 27.009497, 35.338745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490967, 26.817993, 34.654343>,  <33.123058, 26.571432, 34.797417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490967, 26.817993, 34.654343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660854, 27.070080, 34.914326>,  <32.762787, 27.221331, 35.070316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660854, 27.070080, 34.914326>,  <32.490967, 26.817993, 34.654343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660854, 27.070080, 34.914326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225153, 0.768899, -0.598415,
		-0.876883, 0.107816, 0.468458,
		0.424716, 0.630214, 0.649959,
		32.788269, 27.259144, 35.109314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048454, 27.348000, 34.739193>,  <32.490967, 26.817993, 34.654343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048454, 27.348000, 34.739193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407833, 27.482872, 34.851685>,  <32.623463, 27.563795, 34.919182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407833, 27.482872, 34.851685>,  <32.048454, 27.348000, 34.739193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407833, 27.482872, 34.851685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116132, 0.800197, -0.588386,
		-0.423436, 0.495976, 0.758096,
		0.898452, 0.337183, 0.281233,
		32.677368, 27.584026, 34.936054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965071, 28.003555, 34.824074>,  <32.048454, 27.348000, 34.739193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965071, 28.003555, 34.824074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362556, 27.970322, 34.794064>,  <32.601048, 27.950380, 34.776058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362556, 27.970322, 34.794064>,  <31.965071, 28.003555, 34.824074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362556, 27.970322, 34.794064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018883, 0.785008, -0.619197,
		0.110344, 0.613888, 0.781643,
		0.993714, -0.083085, -0.075029,
		32.660671, 27.945396, 34.771553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225372, 28.657623, 34.776253>,  <31.965071, 28.003555, 34.824074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225372, 28.657623, 34.776253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550446, 28.464020, 34.646461>,  <32.745487, 28.347858, 34.568584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550446, 28.464020, 34.646461>,  <32.225372, 28.657623, 34.776253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550446, 28.464020, 34.646461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245119, 0.789135, -0.563190,
		0.528647, 0.378158, 0.759954,
		0.812680, -0.484008, -0.324480,
		32.794250, 28.318817, 34.549118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781582, 29.165255, 34.921043>,  <32.225372, 28.657623, 34.776253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781582, 29.165255, 34.921043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900734, 28.897583, 34.648731>,  <32.972225, 28.736980, 34.485344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900734, 28.897583, 34.648731>,  <32.781582, 29.165255, 34.921043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900734, 28.897583, 34.648731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116992, 0.733373, -0.669685,
		0.947407, 0.119839, 0.296745,
		0.297879, -0.669181, -0.680782,
		32.990097, 28.696829, 34.444496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359470, 29.417768, 34.562283>,  <32.781582, 29.165255, 34.921043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359470, 29.417768, 34.562283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213493, 29.140305, 34.313881>,  <33.125908, 28.973825, 34.164841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.213493, 29.140305, 34.313881>,  <33.359470, 29.417768, 34.562283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213493, 29.140305, 34.313881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044041, 0.679127, -0.732698,
		0.929989, -0.240040, -0.278390,
		-0.364939, -0.693662, -0.621009,
		33.104012, 28.932205, 34.127579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809406, 29.422108, 33.885201>,  <33.359470, 29.417768, 34.562283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809406, 29.422108, 33.885201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457901, 29.255390, 33.792202>,  <33.246998, 29.155359, 33.736404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.457901, 29.255390, 33.792202>,  <33.809406, 29.422108, 33.885201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457901, 29.255390, 33.792202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036958, 0.545114, -0.837547,
		0.475818, -0.727416, -0.494432,
		-0.878767, -0.416793, -0.232491,
		33.194271, 29.130352, 33.722454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915848, 28.936111, 33.257816>,  <33.809406, 29.422108, 33.885201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915848, 28.936111, 33.257816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541302, 29.072353, 33.291782>,  <33.316574, 29.154099, 33.312164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541302, 29.072353, 33.291782>,  <33.915848, 28.936111, 33.257816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541302, 29.072353, 33.291782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098966, 0.488242, -0.867079,
		-0.336792, -0.803497, -0.490880,
		-0.936364, 0.340606, 0.084917,
		33.260391, 29.174536, 33.317257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656628, 28.812117, 32.646854>,  <33.915848, 28.936111, 33.257816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656628, 28.812117, 32.646854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405293, 29.084587, 32.797157>,  <33.254494, 29.248070, 32.887341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405293, 29.084587, 32.797157>,  <33.656628, 28.812117, 32.646854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405293, 29.084587, 32.797157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029206, 0.462019, -0.886389,
		-0.777395, -0.567922, -0.270408,
		-0.628334, 0.681177, 0.375758,
		33.216793, 29.288940, 32.909885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187572, 28.925468, 32.203720>,  <33.656628, 28.812117, 32.646854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187572, 28.925468, 32.203720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148472, 29.261990, 32.416382>,  <33.125011, 29.463902, 32.543980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148472, 29.261990, 32.416382>,  <33.187572, 28.925468, 32.203720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148472, 29.261990, 32.416382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133854, 0.540473, -0.830646,
		-0.986168, -0.010030, -0.165442,
		-0.097749, 0.841302, 0.531655,
		33.119148, 29.514380, 32.575878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602703, 29.336121, 31.927992>,  <33.187572, 28.925468, 32.203720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602703, 29.336121, 31.927992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831081, 29.610565, 32.108337>,  <32.968109, 29.775232, 32.216545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831081, 29.610565, 32.108337>,  <32.602703, 29.336121, 31.927992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831081, 29.610565, 32.108337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057322, 0.514516, -0.855563,
		-0.818987, 0.514321, 0.254430,
		0.570942, 0.686110, 0.450864,
		33.002365, 29.816399, 32.243595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407932, 30.064638, 31.707809>,  <32.602703, 29.336121, 31.927992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407932, 30.064638, 31.707809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757977, 30.130104, 31.889969>,  <32.968002, 30.169384, 31.999266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757977, 30.130104, 31.889969>,  <32.407932, 30.064638, 31.707809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757977, 30.130104, 31.889969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253663, 0.646275, -0.719711,
		-0.412105, 0.745347, 0.524049,
		0.875114, 0.163665, 0.455400,
		33.020512, 30.179203, 32.026588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547668, 30.724291, 31.668633>,  <32.407932, 30.064638, 31.707809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547668, 30.724291, 31.668633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915119, 30.577820, 31.728008>,  <33.135590, 30.489937, 31.763634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915119, 30.577820, 31.728008>,  <32.547668, 30.724291, 31.668633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915119, 30.577820, 31.728008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341664, 0.547459, -0.763907,
		0.198460, 0.752464, 0.628022,
		0.918629, -0.366177, 0.148441,
		33.190708, 30.467966, 31.772541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937202, 31.243782, 31.728775>,  <32.547668, 30.724291, 31.668633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937202, 31.243782, 31.728775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232029, 30.984997, 31.650627>,  <33.408924, 30.829725, 31.603739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232029, 30.984997, 31.650627>,  <32.937202, 31.243782, 31.728775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232029, 30.984997, 31.650627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420191, 0.665121, -0.617295,
		0.529314, 0.372894, 0.762087,
		0.737066, -0.646965, -0.195371,
		33.453148, 30.790907, 31.592016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591663, 31.600183, 31.950745>,  <32.937202, 31.243782, 31.728775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591663, 31.600183, 31.950745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659756, 31.324718, 31.668819>,  <33.700611, 31.159439, 31.499664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659756, 31.324718, 31.668819>,  <33.591663, 31.600183, 31.950745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659756, 31.324718, 31.668819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365130, 0.708423, -0.604001,
		0.915260, -0.154529, 0.372048,
		0.170232, -0.688664, -0.704814,
		33.710827, 31.118120, 31.457375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254139, 31.717709, 31.747837>,  <33.591663, 31.600183, 31.950745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254139, 31.717709, 31.747837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061695, 31.538280, 31.446556>,  <33.946228, 31.430624, 31.265787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061695, 31.538280, 31.446556>,  <34.254139, 31.717709, 31.747837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061695, 31.538280, 31.446556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366624, 0.677480, -0.637658,
		0.796315, -0.582927, -0.161486,
		-0.481112, -0.448572, -0.753203,
		33.917362, 31.403709, 31.220594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608559, 31.998531, 31.234217>,  <34.254139, 31.717709, 31.747837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608559, 31.998531, 31.234217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365925, 31.780884, 31.002357>,  <34.220345, 31.650295, 30.863241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365925, 31.780884, 31.002357>,  <34.608559, 31.998531, 31.234217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365925, 31.780884, 31.002357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471958, 0.340278, -0.813306,
		0.639778, -0.766906, 0.050395,
		-0.606581, -0.544119, -0.579649,
		34.183952, 31.617647, 30.828463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031158, 31.571348, 30.779118>,  <34.608559, 31.998531, 31.234217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031158, 31.571348, 30.779118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668007, 31.640186, 30.626205>,  <34.450115, 31.681490, 30.534458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668007, 31.640186, 30.626205>,  <35.031158, 31.571348, 30.779118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668007, 31.640186, 30.626205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413204, 0.213259, -0.885315,
		-0.070834, -0.961719, -0.264724,
		-0.907879, 0.172096, -0.382280,
		34.395641, 31.691814, 30.511522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938702, 31.282074, 30.116222>,  <35.031158, 31.571348, 30.779118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938702, 31.282074, 30.116222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653046, 31.562073, 30.116364>,  <34.481651, 31.730072, 30.116449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653046, 31.562073, 30.116364>,  <34.938702, 31.282074, 30.116222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653046, 31.562073, 30.116364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335753, 0.342982, -0.877287,
		-0.614221, -0.626390, -0.479966,
		-0.714144, 0.699999, 0.000354,
		34.438801, 31.772072, 30.116470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552006, 31.180750, 29.558022>,  <34.938702, 31.282074, 30.116222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552006, 31.180750, 29.558022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457619, 31.559086, 29.647198>,  <34.400986, 31.786087, 29.700703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457619, 31.559086, 29.647198>,  <34.552006, 31.180750, 29.558022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457619, 31.559086, 29.647198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196424, 0.271107, -0.942294,
		-0.951701, -0.178564, -0.249759,
		-0.235972, 0.945841, 0.222938,
		34.386826, 31.842838, 29.714079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041027, 31.419165, 29.036657>,  <34.552006, 31.180750, 29.558022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041027, 31.419165, 29.036657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233856, 31.724258, 29.209095>,  <34.349556, 31.907314, 29.312557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233856, 31.724258, 29.209095>,  <34.041027, 31.419165, 29.036657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233856, 31.724258, 29.209095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285638, 0.328332, -0.900338,
		-0.828259, 0.557169, -0.059584,
		0.482078, 0.762732, 0.431092,
		34.378479, 31.953077, 29.338423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801952, 31.973034, 28.687044>,  <34.041027, 31.419165, 29.036657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801952, 31.973034, 28.687044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147636, 32.087761, 28.852394>,  <34.355045, 32.156597, 28.951603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147636, 32.087761, 28.852394>,  <33.801952, 31.973034, 28.687044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147636, 32.087761, 28.852394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253543, 0.461387, -0.850199,
		-0.434579, 0.839557, 0.326014,
		0.864209, 0.286820, 0.413373,
		34.406898, 32.173805, 28.976406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968815, 32.646702, 28.412319>,  <33.801952, 31.973034, 28.687044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968815, 32.646702, 28.412319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317532, 32.506508, 28.549217>,  <34.526764, 32.422390, 28.631357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.317532, 32.506508, 28.549217>,  <33.968815, 32.646702, 28.412319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317532, 32.506508, 28.549217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447178, 0.284118, -0.848121,
		0.200018, 0.892432, 0.404423,
		0.871794, -0.350488, 0.342247,
		34.579071, 32.401360, 28.651892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399281, 33.140209, 28.277351>,  <33.968815, 32.646702, 28.412319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399281, 33.140209, 28.277351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644203, 32.837044, 28.367367>,  <34.791157, 32.655144, 28.421375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644203, 32.837044, 28.367367>,  <34.399281, 33.140209, 28.277351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644203, 32.837044, 28.367367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557895, 0.212514, -0.802241,
		0.560207, 0.616766, 0.552962,
		0.612307, -0.757916, 0.225039,
		34.827896, 32.609669, 28.434879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071999, 33.458687, 28.313368>,  <34.399281, 33.140209, 28.277351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071999, 33.458687, 28.313368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107746, 33.068890, 28.231022>,  <35.129192, 32.835011, 28.181614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107746, 33.068890, 28.231022>,  <35.071999, 33.458687, 28.313368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107746, 33.068890, 28.231022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522433, 0.221840, -0.823317,
		0.847985, -0.033975, 0.528931,
		0.089365, -0.974491, -0.205866,
		35.134556, 32.776543, 28.169262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727409, 33.485359, 28.267994>,  <35.071999, 33.458687, 28.313368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727409, 33.485359, 28.267994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610031, 33.145443, 28.092838>,  <35.539604, 32.941494, 27.987745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610031, 33.145443, 28.092838>,  <35.727409, 33.485359, 28.267994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610031, 33.145443, 28.092838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541150, 0.229941, -0.808878,
		0.788066, -0.474322, 0.392390,
		-0.293442, -0.849792, -0.437888,
		35.521999, 32.890507, 27.961472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193611, 33.254787, 27.943731>,  <35.727409, 33.485359, 28.267994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193611, 33.254787, 27.943731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905392, 33.061092, 27.745209>,  <35.732460, 32.944874, 27.626095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905392, 33.061092, 27.745209>,  <36.193611, 33.254787, 27.943731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905392, 33.061092, 27.745209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391372, 0.306826, -0.867574,
		0.572395, -0.819370, -0.031565,
		-0.720550, -0.484241, -0.496305,
		35.689228, 32.915821, 27.596317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501125, 33.194859, 27.303255>,  <36.193611, 33.254787, 27.943731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501125, 33.194859, 27.303255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113018, 33.129139, 27.232159>,  <35.880154, 33.089706, 27.189501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113018, 33.129139, 27.232159>,  <36.501125, 33.194859, 27.303255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113018, 33.129139, 27.232159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105662, 0.373151, -0.921734,
		0.217763, -0.913107, -0.344696,
		-0.970265, -0.164298, -0.177739,
		35.821938, 33.079849, 27.178837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517448, 32.963291, 26.572268>,  <36.501125, 33.194859, 27.303255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517448, 32.963291, 26.572268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154335, 33.100471, 26.668865>,  <35.936466, 33.182781, 26.726824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154335, 33.100471, 26.668865>,  <36.517448, 32.963291, 26.572268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154335, 33.100471, 26.668865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048760, 0.485553, -0.872846,
		-0.416604, -0.804127, -0.424052,
		-0.907779, 0.342955, 0.241493,
		35.882000, 33.203358, 26.741314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124607, 32.870289, 25.952396>,  <36.517448, 32.963291, 26.572268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124607, 32.870289, 25.952396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931545, 33.148556, 26.165218>,  <35.815708, 33.315517, 26.292912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931545, 33.148556, 26.165218>,  <36.124607, 32.870289, 25.952396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931545, 33.148556, 26.165218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226996, 0.487374, -0.843172,
		-0.845880, -0.527739, -0.077321,
		-0.482659, 0.695671, 0.532055,
		35.786747, 33.357258, 26.324835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537643, 32.994019, 25.421570>,  <36.124607, 32.870289, 25.952396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537643, 32.994019, 25.421570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529671, 33.295433, 25.684414>,  <35.524887, 33.476280, 25.842121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529671, 33.295433, 25.684414>,  <35.537643, 32.994019, 25.421570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529671, 33.295433, 25.684414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369562, 0.605140, -0.705145,
		-0.928992, -0.256896, 0.266416,
		-0.019930, 0.753532, 0.657109,
		35.523693, 33.521492, 25.881546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903236, 33.244373, 25.381170>,  <35.537643, 32.994019, 25.421570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903236, 33.244373, 25.381170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137817, 33.531834, 25.530632>,  <35.278568, 33.704308, 25.620308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137817, 33.531834, 25.530632>,  <34.903236, 33.244373, 25.381170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137817, 33.531834, 25.530632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228126, 0.589183, -0.775127,
		-0.777192, 0.369338, 0.509472,
		0.586457, 0.718646, 0.373653,
		35.313755, 33.747429, 25.642727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478233, 33.839561, 25.336838>,  <34.903236, 33.244373, 25.381170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478233, 33.839561, 25.336838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864990, 33.940956, 25.348602>,  <35.097046, 34.001793, 25.355661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864990, 33.940956, 25.348602>,  <34.478233, 33.839561, 25.336838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864990, 33.940956, 25.348602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106065, 0.504024, -0.857152,
		-0.232105, 0.825653, 0.514223,
		0.966891, 0.253490, 0.029414,
		35.155056, 34.017002, 25.357426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865356, 33.570278, 25.685514>,  <34.478233, 33.839561, 25.336838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865356, 33.570278, 25.685514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601719, 33.867325, 25.733044>,  <33.443535, 34.045551, 25.761562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601719, 33.867325, 25.733044>,  <33.865356, 33.570278, 25.685514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601719, 33.867325, 25.733044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374220, -0.460892, 0.804698,
		0.652344, 0.485906, 0.581672,
		-0.659095, 0.742613, 0.118824,
		33.403992, 34.090107, 25.768690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904751, 33.817909, 26.396105>,  <33.865356, 33.570278, 25.685514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904751, 33.817909, 26.396105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543678, 33.899445, 26.244518>,  <33.327034, 33.948368, 26.153566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543678, 33.899445, 26.244518>,  <33.904751, 33.817909, 26.396105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543678, 33.899445, 26.244518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429340, -0.367635, 0.824931,
		0.028834, 0.907356, 0.419374,
		-0.902682, 0.203840, -0.378964,
		33.272873, 33.960598, 26.130829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598759, 34.276653, 26.833235>,  <33.904751, 33.817909, 26.396105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598759, 34.276653, 26.833235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320854, 34.080887, 26.622414>,  <33.154114, 33.963428, 26.495922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320854, 34.080887, 26.622414>,  <33.598759, 34.276653, 26.833235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320854, 34.080887, 26.622414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497944, -0.201479, 0.843480,
		-0.519002, 0.848457, -0.103723,
		-0.694758, -0.489416, -0.527052,
		33.112427, 33.934063, 26.464298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983280, 34.504913, 27.109028>,  <33.598759, 34.276653, 26.833235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983280, 34.504913, 27.109028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891441, 34.165207, 26.918858>,  <32.836338, 33.961384, 26.804754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891441, 34.165207, 26.918858>,  <32.983280, 34.504913, 27.109028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891441, 34.165207, 26.918858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626014, -0.245168, 0.740269,
		-0.745246, 0.467588, -0.475363,
		-0.229597, -0.849267, -0.475427,
		32.822563, 33.910427, 26.776230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251507, 34.431198, 27.133595>,  <32.983280, 34.504913, 27.109028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251507, 34.431198, 27.133595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377998, 34.059368, 27.057812>,  <32.453896, 33.836269, 27.012342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377998, 34.059368, 27.057812>,  <32.251507, 34.431198, 27.133595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377998, 34.059368, 27.057812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647554, -0.357453, 0.672980,
		-0.693304, -0.090136, -0.714986,
		0.316233, -0.929571, -0.189456,
		32.472870, 33.780499, 27.000975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644606, 33.916676, 27.266394>,  <32.251507, 34.431198, 27.133595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644606, 33.916676, 27.266394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954081, 33.663395, 27.257801>,  <32.139767, 33.511425, 27.252645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954081, 33.663395, 27.257801>,  <31.644606, 33.916676, 27.266394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954081, 33.663395, 27.257801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489596, -0.619049, 0.614064,
		-0.402125, -0.464577, -0.788964,
		0.773687, -0.633204, -0.021479,
		32.186188, 33.473434, 27.251356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299412, 33.244343, 27.159975>,  <31.644606, 33.916676, 27.266394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299412, 33.244343, 27.159975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655109, 33.207668, 27.339237>,  <31.868528, 33.185665, 27.446795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655109, 33.207668, 27.339237>,  <31.299412, 33.244343, 27.159975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655109, 33.207668, 27.339237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447516, -0.377292, 0.810790,
		0.094747, -0.921545, -0.376535,
		0.889242, -0.091686, 0.448154,
		31.921883, 33.180161, 27.473682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259365, 32.683376, 27.413404>,  <31.299412, 33.244343, 27.159975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259365, 32.683376, 27.413404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565792, 32.836491, 27.619942>,  <31.749649, 32.928360, 27.743864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565792, 32.836491, 27.619942>,  <31.259365, 32.683376, 27.413404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565792, 32.836491, 27.619942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234646, -0.581334, 0.779097,
		0.598398, -0.718000, -0.355522,
		0.766069, 0.382788, 0.516345,
		31.795612, 32.951328, 27.774845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669235, 32.075089, 27.656235>,  <31.259365, 32.683376, 27.413404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669235, 32.075089, 27.656235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732304, 32.388615, 27.896492>,  <31.770144, 32.576729, 28.040648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732304, 32.388615, 27.896492>,  <31.669235, 32.075089, 27.656235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732304, 32.388615, 27.896492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237189, -0.560386, 0.793542,
		0.958583, -0.267584, 0.097556,
		0.157670, 0.783815, 0.600645,
		31.779604, 32.623760, 28.076685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918753, 31.794582, 28.226835>,  <31.669235, 32.075089, 27.656235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918753, 31.794582, 28.226835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808462, 32.160324, 28.345448>,  <31.742287, 32.379768, 28.416615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808462, 32.160324, 28.345448>,  <31.918753, 31.794582, 28.226835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808462, 32.160324, 28.345448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389236, -0.388271, 0.835309,
		0.878903, 0.114898, 0.462956,
		-0.275728, 0.914355, 0.296530,
		31.725744, 32.434631, 28.434406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205917, 31.879639, 28.869507>,  <31.918753, 31.794582, 28.226835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205917, 31.879639, 28.869507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929697, 32.168930, 28.865852>,  <31.763966, 32.342506, 28.863659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929697, 32.168930, 28.865852>,  <32.205917, 31.879639, 28.869507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929697, 32.168930, 28.865852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356529, -0.329374, 0.874299,
		0.629310, 0.607002, 0.485301,
		-0.690547, 0.723230, -0.009136,
		31.722532, 32.385899, 28.863111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198254, 32.293762, 29.511826>,  <32.205917, 31.879639, 28.869507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198254, 32.293762, 29.511826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836508, 32.358528, 29.353882>,  <31.619461, 32.397388, 29.259115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836508, 32.358528, 29.353882>,  <32.198254, 32.293762, 29.511826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836508, 32.358528, 29.353882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424820, -0.429779, 0.796755,
		-0.040699, 0.888299, 0.457459,
		-0.904363, 0.161911, -0.394859,
		31.565199, 32.407101, 29.235424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779354, 32.719856, 29.922178>,  <32.198254, 32.293762, 29.511826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779354, 32.719856, 29.922178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547104, 32.483227, 29.698425>,  <31.407753, 32.341248, 29.564173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547104, 32.483227, 29.698425>,  <31.779354, 32.719856, 29.922178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547104, 32.483227, 29.698425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331900, -0.455396, 0.826109,
		-0.743448, 0.665320, 0.068071,
		-0.580627, -0.591577, -0.559383,
		31.372915, 32.305752, 29.530611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142252, 32.802216, 30.229736>,  <31.779354, 32.719856, 29.922178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142252, 32.802216, 30.229736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146021, 32.447765, 30.044399>,  <31.148281, 32.235096, 29.933197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146021, 32.447765, 30.044399>,  <31.142252, 32.802216, 30.229736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146021, 32.447765, 30.044399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579234, -0.382544, 0.719825,
		-0.815107, 0.261603, -0.516880,
		0.009421, -0.886129, -0.463343,
		31.148848, 32.181927, 29.905396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618599, 32.500340, 30.506100>,  <31.142252, 32.802216, 30.229736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618599, 32.500340, 30.506100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744574, 32.184326, 30.295704>,  <30.820158, 31.994719, 30.169466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744574, 32.184326, 30.295704>,  <30.618599, 32.500340, 30.506100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744574, 32.184326, 30.295704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516356, -0.607621, 0.603467,
		-0.796360, 0.081543, -0.599301,
		0.314939, -0.790030, -0.525990,
		30.839056, 31.947317, 30.137907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989656, 32.031849, 30.356255>,  <30.618599, 32.500340, 30.506100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989656, 32.031849, 30.356255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345438, 31.855656, 30.404995>,  <30.558907, 31.749941, 30.434240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345438, 31.855656, 30.404995>,  <29.989656, 32.031849, 30.356255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345438, 31.855656, 30.404995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389795, -0.591961, 0.705437,
		-0.238598, -0.674953, -0.698219,
		0.889455, -0.440478, 0.121853,
		30.612274, 31.723513, 30.441551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775038, 31.387850, 30.522713>,  <29.989656, 32.031849, 30.356255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775038, 31.387850, 30.522713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163719, 31.397228, 30.616730>,  <30.396927, 31.402855, 30.673140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163719, 31.397228, 30.616730>,  <29.775038, 31.387850, 30.522713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163719, 31.397228, 30.616730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171712, -0.613187, 0.771049,
		0.162205, -0.789590, -0.591808,
		0.971702, 0.023448, 0.235043,
		30.455231, 31.404263, 30.687243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985483, 30.746529, 30.480690>,  <29.775038, 31.387850, 30.522713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985483, 30.746529, 30.480690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256004, 30.921486, 30.717773>,  <30.418316, 31.026461, 30.860023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256004, 30.921486, 30.717773>,  <29.985483, 30.746529, 30.480690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256004, 30.921486, 30.717773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022207, -0.792158, 0.609912,
		0.736290, -0.425647, -0.526024,
		0.676301, 0.437391, 0.592710,
		30.458895, 31.052704, 30.895586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384764, 30.215195, 30.676870>,  <29.985483, 30.746529, 30.480690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384764, 30.215195, 30.676870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482580, 30.485031, 30.955475>,  <30.541269, 30.646933, 31.122637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482580, 30.485031, 30.955475>,  <30.384764, 30.215195, 30.676870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482580, 30.485031, 30.955475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107388, -0.695057, 0.710889,
		0.963674, -0.248639, -0.097527,
		0.244541, 0.674592, 0.696509,
		30.555943, 30.687408, 31.164427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839230, 29.916758, 31.135372>,  <30.384764, 30.215195, 30.676870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839230, 29.916758, 31.135372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708061, 30.227043, 31.351051>,  <30.629360, 30.413216, 31.480459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708061, 30.227043, 31.351051>,  <30.839230, 29.916758, 31.135372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708061, 30.227043, 31.351051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165316, -0.609068, 0.775698,
		0.930128, 0.165230, 0.327965,
		-0.327922, 0.775716, 0.539196,
		30.609684, 30.459759, 31.512810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111595, 29.885914, 31.815212>,  <30.839230, 29.916758, 31.135372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111595, 29.885914, 31.815212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781134, 30.109306, 31.845066>,  <30.582857, 30.243341, 31.862978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781134, 30.109306, 31.845066>,  <31.111595, 29.885914, 31.815212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781134, 30.109306, 31.845066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253048, -0.486110, 0.836459,
		0.503426, 0.672158, 0.542923,
		-0.826153, 0.558481, 0.074632,
		30.533287, 30.276852, 31.867456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135897, 30.298107, 32.439056>,  <31.111595, 29.885914, 31.815212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135897, 30.298107, 32.439056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774078, 30.183945, 32.312351>,  <30.556988, 30.115446, 32.236328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774078, 30.183945, 32.312351>,  <31.135897, 30.298107, 32.439056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774078, 30.183945, 32.312351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053105, -0.812545, 0.580474,
		-0.423053, 0.508245, 0.750142,
		-0.904547, -0.285408, -0.316759,
		30.502714, 30.098322, 32.217323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629360, 30.177521, 33.078617>,  <31.135897, 30.298107, 32.439056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629360, 30.177521, 33.078617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598524, 29.955826, 32.747105>,  <30.580023, 29.822809, 32.548199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.598524, 29.955826, 32.747105>,  <30.629360, 30.177521, 33.078617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598524, 29.955826, 32.747105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144160, -0.828715, 0.540787,
		-0.986547, -0.077786, 0.143786,
		-0.077092, -0.554239, -0.828779,
		30.575397, 29.789555, 32.498470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096560, 29.627460, 33.173500>,  <30.629360, 30.177521, 33.078617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096560, 29.627460, 33.173500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320547, 29.492714, 32.870724>,  <30.454939, 29.411865, 32.689060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320547, 29.492714, 32.870724>,  <30.096560, 29.627460, 33.173500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320547, 29.492714, 32.870724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031865, -0.904177, 0.425968,
		-0.827901, -0.262648, -0.495576,
		0.559968, -0.336868, -0.756938,
		30.488539, 29.391653, 32.643642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776714, 28.967739, 32.982830>,  <30.096560, 29.627460, 33.173500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776714, 28.967739, 32.982830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141804, 28.944595, 32.821045>,  <30.360857, 28.930710, 32.723972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141804, 28.944595, 32.821045>,  <29.776714, 28.967739, 32.982830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141804, 28.944595, 32.821045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132055, -0.895018, 0.426033,
		-0.386652, -0.442261, -0.809263,
		0.912723, -0.057859, -0.404463,
		30.415621, 28.927237, 32.699707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833248, 28.335381, 32.702850>,  <29.776714, 28.967739, 32.982830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833248, 28.335381, 32.702850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201237, 28.463722, 32.792923>,  <30.422029, 28.540728, 32.846966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201237, 28.463722, 32.792923>,  <29.833248, 28.335381, 32.702850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201237, 28.463722, 32.792923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219132, -0.897275, 0.383248,
		0.325015, -0.303233, -0.895776,
		0.919971, 0.320854, 0.225180,
		30.477228, 28.559978, 32.860477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274223, 27.850933, 32.441788>,  <29.833248, 28.335381, 32.702850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274223, 27.850933, 32.441788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474237, 28.041348, 32.731163>,  <30.594246, 28.155596, 32.904789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474237, 28.041348, 32.731163>,  <30.274223, 27.850933, 32.441788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474237, 28.041348, 32.731163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319458, -0.877847, 0.356834,
		0.804930, 0.052677, -0.591027,
		0.500035, 0.476035, 0.723434,
		30.624249, 28.184158, 32.948193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811918, 27.439281, 32.476334>,  <30.274223, 27.850933, 32.441788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811918, 27.439281, 32.476334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863144, 27.655121, 32.809185>,  <30.893879, 27.784624, 33.008896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863144, 27.655121, 32.809185>,  <30.811918, 27.439281, 32.476334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863144, 27.655121, 32.809185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248764, -0.829688, 0.499735,
		0.960060, 0.143004, -0.240486,
		0.128064, 0.539600, 0.832125,
		30.901564, 27.817001, 33.058823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472288, 27.236292, 32.813869>,  <30.811918, 27.439281, 32.476334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472288, 27.236292, 32.813869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265274, 27.395573, 33.116814>,  <31.141066, 27.491140, 33.298580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265274, 27.395573, 33.116814>,  <31.472288, 27.236292, 32.813869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265274, 27.395573, 33.116814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268244, -0.764995, 0.585516,
		0.812530, 0.506181, 0.289096,
		-0.517534, 0.398201, 0.757360,
		31.110014, 27.515034, 33.344021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838072, 27.110767, 33.281151>,  <31.472288, 27.236292, 32.813869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838072, 27.110767, 33.281151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480829, 27.161884, 33.453674>,  <31.266483, 27.192554, 33.557190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480829, 27.161884, 33.453674>,  <31.838072, 27.110767, 33.281151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480829, 27.161884, 33.453674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044627, -0.928899, 0.367634,
		0.447624, 0.347584, 0.823904,
		-0.893108, 0.127793, 0.431309,
		31.212896, 27.200222, 33.583069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941225, 26.989574, 33.943233>,  <31.838072, 27.110767, 33.281151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941225, 26.989574, 33.943233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553148, 26.920502, 33.875229>,  <31.320301, 26.879059, 33.834427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553148, 26.920502, 33.875229>,  <31.941225, 26.989574, 33.943233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553148, 26.920502, 33.875229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101323, -0.926379, 0.362705,
		-0.220129, 0.334668, 0.916264,
		-0.970194, -0.172681, -0.170013,
		31.262091, 26.868698, 33.824226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740969, 26.699741, 34.588593>,  <31.941225, 26.989574, 33.943233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740969, 26.699741, 34.588593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443289, 26.583958, 34.347801>,  <31.264681, 26.514486, 34.203327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443289, 26.583958, 34.347801>,  <31.740969, 26.699741, 34.588593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443289, 26.583958, 34.347801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148720, -0.950407, 0.273146,
		-0.651193, 0.113748, 0.750340,
		-0.744198, -0.289461, -0.601982,
		31.220030, 26.497120, 34.167206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300013, 26.288122, 35.008701>,  <31.740969, 26.699741, 34.588593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300013, 26.288122, 35.008701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219454, 26.175213, 34.633518>,  <31.171118, 26.107468, 34.408409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219454, 26.175213, 34.633518>,  <31.300013, 26.288122, 35.008701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219454, 26.175213, 34.633518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246581, -0.912127, 0.327448,
		-0.947964, 0.297230, 0.114098,
		-0.201399, -0.282275, -0.937955,
		31.159035, 26.090530, 34.352131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804346, 25.771748, 35.104267>,  <31.300013, 26.288122, 35.008701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804346, 25.771748, 35.104267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866621, 25.722454, 34.712231>,  <30.903986, 25.692879, 34.477009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.866621, 25.722454, 34.712231>,  <30.804346, 25.771748, 35.104267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866621, 25.722454, 34.712231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120711, -0.987125, 0.104942,
		-0.980403, 0.101970, -0.168558,
		0.155687, -0.123232, -0.980090,
		30.913326, 25.685484, 34.418205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245483, 25.296564, 34.865196>,  <30.804346, 25.771748, 35.104267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245483, 25.296564, 34.865196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579691, 25.265530, 34.647614>,  <30.780216, 25.246908, 34.517063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579691, 25.265530, 34.647614>,  <30.245483, 25.296564, 34.865196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579691, 25.265530, 34.647614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187489, -0.970821, -0.149511,
		-0.516483, 0.226905, -0.825687,
		0.835520, -0.077587, -0.543955,
		30.830347, 25.242254, 34.484428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975605, 24.819738, 34.322151>,  <30.245483, 25.296564, 34.865196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975605, 24.819738, 34.322151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373621, 24.793774, 34.291988>,  <30.612431, 24.778194, 34.273891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373621, 24.793774, 34.291988>,  <29.975605, 24.819738, 34.322151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373621, 24.793774, 34.291988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075651, -0.985846, -0.149615,
		-0.064630, 0.154577, -0.985865,
		0.995038, -0.064912, -0.075409,
		30.672132, 24.774300, 34.269367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079615, 24.277500, 33.907169>,  <29.975605, 24.819738, 34.322151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079615, 24.277500, 33.907169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422558, 24.322475, 34.108086>,  <30.628325, 24.349461, 34.228634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422558, 24.322475, 34.108086>,  <30.079615, 24.277500, 33.907169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422558, 24.322475, 34.108086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067376, -0.991969, 0.107046,
		0.510289, -0.057934, -0.858049,
		0.857360, 0.112436, 0.502288,
		30.679766, 24.356207, 34.258770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573439, 23.843674, 33.621155>,  <30.079615, 24.277500, 33.907169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573439, 23.843674, 33.621155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688061, 23.906284, 33.999229>,  <30.756834, 23.943851, 34.226074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688061, 23.906284, 33.999229>,  <30.573439, 23.843674, 33.621155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688061, 23.906284, 33.999229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201490, -0.974345, 0.100268,
		0.936636, 0.161714, -0.310744,
		0.286557, 0.156527, 0.945190,
		30.774029, 23.953243, 34.282787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130806, 23.252790, 33.696091>,  <30.573439, 23.843674, 33.621155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130806, 23.252790, 33.696091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959150, 22.984936, 33.453629>,  <30.856157, 22.824223, 33.308151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959150, 22.984936, 33.453629>,  <31.130806, 23.252790, 33.696091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959150, 22.984936, 33.453629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103447, 0.703115, -0.703511,
		0.897296, -0.239197, -0.371005,
		-0.429137, -0.669637, -0.606158,
		30.830408, 22.784044, 33.271782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486904, 23.365810, 33.056934>,  <31.130806, 23.252790, 33.696091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486904, 23.365810, 33.056934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126337, 23.202972, 32.997978>,  <30.909998, 23.105270, 32.962605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126337, 23.202972, 32.997978>,  <31.486904, 23.365810, 33.056934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126337, 23.202972, 32.997978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129171, 0.577803, -0.805890,
		0.413236, -0.707403, -0.573426,
		-0.901416, -0.407093, -0.147393,
		30.855913, 23.080845, 32.953758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527151, 23.210382, 32.310146>,  <31.486904, 23.365810, 33.056934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527151, 23.210382, 32.310146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145809, 23.205746, 32.430798>,  <30.917004, 23.202963, 32.503189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145809, 23.205746, 32.430798>,  <31.527151, 23.210382, 32.310146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145809, 23.205746, 32.430798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256831, 0.556174, -0.790385,
		-0.158597, -0.830985, -0.533209,
		-0.953355, -0.011592, 0.301629,
		30.859802, 23.202269, 32.521286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101503, 23.276558, 31.693264>,  <31.527151, 23.210382, 32.310146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101503, 23.276558, 31.693264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832584, 23.354427, 31.978954>,  <30.671232, 23.401148, 32.150368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832584, 23.354427, 31.978954>,  <31.101503, 23.276558, 31.693264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832584, 23.354427, 31.978954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483304, 0.615389, -0.622666,
		-0.560742, -0.763806, -0.319640,
		-0.672299, 0.194672, 0.714225,
		30.630896, 23.412828, 32.193222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486542, 23.210203, 31.337627>,  <31.101503, 23.276558, 31.693264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486542, 23.210203, 31.337627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413517, 23.426579, 31.666031>,  <30.369701, 23.556404, 31.863073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413517, 23.426579, 31.666031>,  <30.486542, 23.210203, 31.337627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413517, 23.426579, 31.666031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350023, 0.744574, -0.568412,
		-0.918779, -0.391143, 0.053411,
		-0.182562, 0.540940, 0.821008,
		30.358747, 23.588861, 31.912333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815741, 23.548080, 31.376396>,  <30.486542, 23.210203, 31.337627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815741, 23.548080, 31.376396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013418, 23.793125, 31.623127>,  <30.132025, 23.940151, 31.771166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013418, 23.793125, 31.623127>,  <29.815741, 23.548080, 31.376396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013418, 23.793125, 31.623127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383287, 0.790384, -0.477896,
		-0.780296, -0.000249, 0.625410,
		0.494195, 0.612612, 0.616829,
		30.161676, 23.976910, 31.808176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403746, 24.161776, 31.383207>,  <29.815741, 23.548080, 31.376396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403746, 24.161776, 31.383207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754009, 24.279472, 31.536385>,  <29.964167, 24.350090, 31.628290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754009, 24.279472, 31.536385>,  <29.403746, 24.161776, 31.383207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754009, 24.279472, 31.536385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130354, 0.907529, -0.399248,
		-0.465008, 0.299686, 0.833040,
		0.875657, 0.294244, 0.382943,
		30.016706, 24.367746, 31.651268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.208635, 24.839214, 31.572424>,  <29.403746, 24.161776, 31.383207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.208635, 24.839214, 31.572424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606997, 24.805500, 31.559341>,  <29.846014, 24.785271, 31.551491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606997, 24.805500, 31.559341>,  <29.208635, 24.839214, 31.572424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606997, 24.805500, 31.559341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069524, 0.945230, -0.318914,
		0.057797, 0.315333, 0.947219,
		0.995905, -0.084286, -0.032708,
		29.905767, 24.780214, 31.549528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533215, 25.367561, 32.063366>,  <29.208635, 24.839214, 31.572424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533215, 25.367561, 32.063366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795284, 25.250126, 31.784927>,  <29.952526, 25.179665, 31.617863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795284, 25.250126, 31.784927>,  <29.533215, 25.367561, 32.063366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795284, 25.250126, 31.784927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044609, 0.904761, -0.423577,
		0.754161, 0.308568, 0.579678,
		0.655172, -0.293587, -0.696100,
		29.991837, 25.162050, 31.576097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094561, 25.883894, 31.969486>,  <29.533215, 25.367561, 32.063366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094561, 25.883894, 31.969486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074305, 25.678566, 31.626804>,  <30.062151, 25.555370, 31.421196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074305, 25.678566, 31.626804>,  <30.094561, 25.883894, 31.969486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074305, 25.678566, 31.626804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055313, 0.855045, -0.515595,
		0.997184, -0.073498, -0.014907,
		-0.050642, -0.513319, -0.856702,
		30.059113, 25.524570, 31.369793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541077, 26.246397, 31.588253>,  <30.094561, 25.883894, 31.969486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541077, 26.246397, 31.588253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306883, 26.039009, 31.338966>,  <30.166367, 25.914577, 31.189394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.306883, 26.039009, 31.338966>,  <30.541077, 26.246397, 31.588253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306883, 26.039009, 31.338966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074364, 0.731165, -0.678136,
		0.807265, -0.443383, -0.389530,
		-0.585485, -0.518468, -0.623216,
		30.131237, 25.883469, 31.152002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920692, 26.243618, 30.968231>,  <30.541077, 26.246397, 31.588253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920692, 26.243618, 30.968231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535301, 26.172958, 30.887730>,  <30.304066, 26.130562, 30.839428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.535301, 26.172958, 30.887730>,  <30.920692, 26.243618, 30.968231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535301, 26.172958, 30.887730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010367, 0.726384, -0.687211,
		0.267583, -0.664200, -0.698024,
		-0.963479, -0.176650, -0.201253,
		30.246258, 26.119963, 30.827354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907866, 26.275694, 30.243076>,  <30.920692, 26.243618, 30.968231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907866, 26.275694, 30.243076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542124, 26.365982, 30.377541>,  <30.322678, 26.420155, 30.458220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542124, 26.365982, 30.377541>,  <30.907866, 26.275694, 30.243076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542124, 26.365982, 30.377541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077054, 0.718035, -0.691729,
		-0.397512, -0.658389, -0.639147,
		-0.914356, 0.225721, 0.336159,
		30.267817, 26.433699, 30.478388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587006, 26.487234, 29.593666>,  <30.907866, 26.275694, 30.243076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587006, 26.487234, 29.593666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344276, 26.598972, 29.891319>,  <30.198639, 26.666016, 30.069910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344276, 26.598972, 29.891319>,  <30.587006, 26.487234, 29.593666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344276, 26.598972, 29.891319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391338, 0.709868, -0.585612,
		-0.691824, -0.646570, -0.321445,
		-0.606823, 0.279347, 0.744131,
		30.162230, 26.682775, 30.114559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966469, 26.660837, 29.202063>,  <30.587006, 26.487234, 29.593666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966469, 26.660837, 29.202063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917908, 26.826920, 29.562698>,  <29.888771, 26.926569, 29.779079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.917908, 26.826920, 29.562698>,  <29.966469, 26.660837, 29.202063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917908, 26.826920, 29.562698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318400, 0.844021, -0.431566,
		-0.940150, -0.339460, 0.029735,
		-0.121402, 0.415205, 0.901591,
		29.881487, 26.951481, 29.833176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387989, 27.009705, 29.196432>,  <29.966469, 26.660837, 29.202063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387989, 27.009705, 29.196432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581638, 27.180950, 29.501678>,  <29.697828, 27.283697, 29.684826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581638, 27.180950, 29.501678>,  <29.387989, 27.009705, 29.196432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581638, 27.180950, 29.501678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075850, 0.889382, -0.450829,
		-0.871705, 0.160376, 0.463044,
		0.484125, 0.428112, 0.763114,
		29.726875, 27.309383, 29.730614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932228, 27.571238, 29.310724>,  <29.387989, 27.009705, 29.196432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932228, 27.571238, 29.310724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299946, 27.661560, 29.439663>,  <29.520576, 27.715754, 29.517025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299946, 27.661560, 29.439663>,  <28.932228, 27.571238, 29.310724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299946, 27.661560, 29.439663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087948, 0.916185, -0.390986,
		-0.383616, 0.331082, 0.862104,
		0.919295, 0.225808, 0.322345,
		29.575735, 27.729303, 29.536367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797626, 28.043402, 29.774372>,  <28.932228, 27.571238, 29.310724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797626, 28.043402, 29.774372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.170074, 28.098068, 29.639114>,  <29.393543, 28.130869, 29.557961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.170074, 28.098068, 29.639114>,  <28.797626, 28.043402, 29.774372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170074, 28.098068, 29.639114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243815, 0.922768, -0.298418,
		0.271243, 0.360307, 0.892528,
		0.931119, 0.136668, -0.338142,
		29.449409, 28.139069, 29.537672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858301, 28.816307, 29.802668>,  <28.797626, 28.043402, 29.774372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858301, 28.816307, 29.802668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165932, 28.680363, 29.586143>,  <29.350510, 28.598797, 29.456228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165932, 28.680363, 29.586143>,  <28.858301, 28.816307, 29.802668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165932, 28.680363, 29.586143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115431, 0.906841, -0.405357,
		0.628649, 0.249265, 0.736659,
		0.769075, -0.339860, -0.541312,
		29.396654, 28.578405, 29.423750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440243, 29.175161, 29.959776>,  <28.858301, 28.816307, 29.802668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440243, 29.175161, 29.959776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547277, 29.048550, 29.595753>,  <29.611498, 28.972582, 29.377338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547277, 29.048550, 29.595753>,  <29.440243, 29.175161, 29.959776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547277, 29.048550, 29.595753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120047, 0.948093, -0.294461,
		0.956026, -0.030457, 0.291695,
		0.267585, -0.316530, -0.910059,
		29.627554, 28.953590, 29.322735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926422, 29.539816, 29.775019>,  <29.440243, 29.175161, 29.959776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926422, 29.539816, 29.775019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801006, 29.429947, 29.411427>,  <29.725758, 29.364025, 29.193272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801006, 29.429947, 29.411427>,  <29.926422, 29.539816, 29.775019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801006, 29.429947, 29.411427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101584, 0.942055, -0.319707,
		0.944129, -0.192575, -0.267459,
		-0.313529, -0.274675, -0.908984,
		29.706945, 29.347546, 29.138731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361347, 29.960455, 29.279329>,  <29.926422, 29.539816, 29.775019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361347, 29.960455, 29.279329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066713, 29.807316, 29.056305>,  <29.889933, 29.715433, 28.922491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066713, 29.807316, 29.056305>,  <30.361347, 29.960455, 29.279329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066713, 29.807316, 29.056305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033550, 0.844038, -0.535234,
		0.675513, -0.375539, -0.634549,
		-0.736584, -0.382846, -0.557559,
		29.845737, 29.692461, 28.889036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489048, 30.100294, 28.613983>,  <30.361347, 29.960455, 29.279329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489048, 30.100294, 28.613983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090645, 30.065994, 28.604031>,  <29.851603, 30.045414, 28.598059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090645, 30.065994, 28.604031>,  <30.489048, 30.100294, 28.613983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090645, 30.065994, 28.604031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055130, 0.809815, -0.584089,
		0.070236, -0.580385, -0.811308,
		-0.996005, -0.085751, -0.024881,
		29.791843, 30.040268, 28.596565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336338, 30.254753, 27.922651>,  <30.489048, 30.100294, 28.613983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336338, 30.254753, 27.922651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009848, 30.303688, 28.148502>,  <29.813953, 30.333050, 28.284014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009848, 30.303688, 28.148502>,  <30.336338, 30.254753, 27.922651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009848, 30.303688, 28.148502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254074, 0.801727, -0.540999,
		-0.518862, -0.585036, -0.623309,
		-0.816228, 0.122337, 0.564628,
		29.764978, 30.340389, 28.317890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875984, 30.476471, 27.432505>,  <30.336338, 30.254753, 27.922651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875984, 30.476471, 27.432505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686342, 30.576202, 27.770275>,  <29.572557, 30.636042, 27.972939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686342, 30.576202, 27.770275>,  <29.875984, 30.476471, 27.432505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686342, 30.576202, 27.770275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252466, 0.880298, -0.401667,
		-0.843495, -0.403623, -0.354409,
		-0.474107, 0.249327, 0.844428,
		29.544109, 30.651001, 28.023603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197813, 30.557747, 27.275812>,  <29.875984, 30.476471, 27.432505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197813, 30.557747, 27.275812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275434, 30.782898, 27.597187>,  <29.322008, 30.917988, 27.790012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275434, 30.782898, 27.597187>,  <29.197813, 30.557747, 27.275812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275434, 30.782898, 27.597187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140503, 0.826510, -0.545105,
		-0.970877, -0.007105, 0.239474,
		0.194054, 0.562876, 0.803438,
		29.333651, 30.951761, 27.838219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632568, 30.895542, 27.412098>,  <29.197813, 30.557747, 27.275812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632568, 30.895542, 27.412098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.933464, 31.100838, 27.577374>,  <29.114002, 31.224014, 27.676538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.933464, 31.100838, 27.577374>,  <28.632568, 30.895542, 27.412098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933464, 31.100838, 27.577374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247416, 0.801233, -0.544803,
		-0.610674, 0.307592, 0.729702,
		0.752239, 0.513237, 0.413189,
		29.159136, 31.254808, 27.701330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355467, 31.585842, 27.527153>,  <28.632568, 30.895542, 27.412098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355467, 31.585842, 27.527153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755253, 31.598522, 27.530457>,  <28.995125, 31.606131, 27.532438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.755253, 31.598522, 27.530457>,  <28.355467, 31.585842, 27.527153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755253, 31.598522, 27.530457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019220, 0.771607, -0.635809,
		-0.026529, 0.635309, 0.771802,
		0.999463, 0.031702, 0.008260,
		29.055092, 31.608032, 27.532934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498875, 32.292622, 27.744293>,  <28.355467, 31.585842, 27.527153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498875, 32.292622, 27.744293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839184, 32.163235, 27.578617>,  <29.043369, 32.085602, 27.479212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839184, 32.163235, 27.578617>,  <28.498875, 32.292622, 27.744293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839184, 32.163235, 27.578617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078793, 0.857738, -0.508013,
		0.519593, 0.399569, 0.755227,
		0.850773, -0.323467, -0.414191,
		29.094416, 32.066196, 27.454359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863607, 32.925617, 27.670315>,  <28.498875, 32.292622, 27.744293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863607, 32.925617, 27.670315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025330, 32.675278, 27.403526>,  <29.122362, 32.525074, 27.243452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025330, 32.675278, 27.403526>,  <28.863607, 32.925617, 27.670315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025330, 32.675278, 27.403526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018922, 0.734799, -0.678021,
		0.914428, 0.261507, 0.308926,
		0.404306, -0.625847, -0.666973,
		29.146622, 32.487522, 27.203434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399601, 33.274857, 27.417452>,  <28.863607, 32.925617, 27.670315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399601, 33.274857, 27.417452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338587, 32.982914, 27.150906>,  <29.301979, 32.807747, 26.990978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338587, 32.982914, 27.150906>,  <29.399601, 33.274857, 27.417452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338587, 32.982914, 27.150906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252645, 0.680649, -0.687668,
		0.955460, 0.063460, -0.288217,
		-0.152535, -0.729856, -0.666366,
		29.292826, 32.763958, 26.950996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608154, 33.633595, 26.731714>,  <29.399601, 33.274857, 27.417452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608154, 33.633595, 26.731714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390135, 33.315285, 26.626137>,  <29.259323, 33.124298, 26.562790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390135, 33.315285, 26.626137>,  <29.608154, 33.633595, 26.731714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390135, 33.315285, 26.626137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469055, 0.550365, -0.690713,
		0.694918, -0.252667, -0.673237,
		-0.545048, -0.795775, -0.263944,
		29.226620, 33.076553, 26.546953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630749, 33.735123, 25.980165>,  <29.608154, 33.633595, 26.731714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630749, 33.735123, 25.980165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330183, 33.496235, 26.092381>,  <29.149843, 33.352901, 26.159710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330183, 33.496235, 26.092381>,  <29.630749, 33.735123, 25.980165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330183, 33.496235, 26.092381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597276, 0.434952, -0.673853,
		0.280420, -0.673901, -0.683536,
		-0.751416, -0.597221, 0.280536,
		29.104757, 33.317070, 26.176542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415611, 33.443306, 25.328892>,  <29.630749, 33.735123, 25.980165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415611, 33.443306, 25.328892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105740, 33.378792, 25.573467>,  <28.919817, 33.340084, 25.720213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105740, 33.378792, 25.573467>,  <29.415611, 33.443306, 25.328892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105740, 33.378792, 25.573467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611209, 0.438917, -0.658616,
		-0.162148, -0.883934, -0.438598,
		-0.774681, -0.161282, 0.611439,
		28.873335, 33.330406, 25.756899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000143, 33.094112, 24.953159>,  <29.415611, 33.443306, 25.328892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000143, 33.094112, 24.953159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773579, 33.253513, 25.241707>,  <28.637640, 33.349155, 25.414835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.773579, 33.253513, 25.241707>,  <29.000143, 33.094112, 24.953159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773579, 33.253513, 25.241707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655360, 0.312920, -0.687447,
		-0.499682, -0.862134, 0.083923,
		-0.566410, 0.398505, 0.721369,
		28.603655, 33.373066, 25.458118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316980, 32.971188, 24.716717>,  <29.000143, 33.094112, 24.953159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316980, 32.971188, 24.716717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281654, 33.249146, 25.002186>,  <28.260458, 33.415920, 25.173468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281654, 33.249146, 25.002186>,  <28.316980, 32.971188, 24.716717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281654, 33.249146, 25.002186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731476, 0.441079, -0.519993,
		-0.676124, -0.567957, 0.469342,
		-0.088317, 0.694892, 0.713671,
		28.255159, 33.457611, 25.216288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633392, 32.873146, 25.092770>,  <28.316980, 32.971188, 24.716717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633392, 32.873146, 25.092770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759094, 33.250320, 25.136780>,  <27.834517, 33.476627, 25.163187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.759094, 33.250320, 25.136780>,  <27.633392, 32.873146, 25.092770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.759094, 33.250320, 25.136780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754551, 0.318426, -0.573810,
		-0.576103, 0.097303, 0.811564,
		0.314256, 0.942941, 0.110026,
		27.853371, 33.533203, 25.169788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052277, 33.224785, 25.325983>,  <27.633392, 32.873146, 25.092770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052277, 33.224785, 25.325983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.306280, 33.498997, 25.183540>,  <27.458683, 33.663525, 25.098074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.306280, 33.498997, 25.183540>,  <27.052277, 33.224785, 25.325983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.306280, 33.498997, 25.183540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768692, 0.515004, -0.379319,
		-0.076638, 0.514608, 0.853994,
		0.635011, 0.685528, -0.356106,
		27.496784, 33.704655, 25.076708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691360, 33.861313, 25.421846>,  <27.052277, 33.224785, 25.325983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691360, 33.861313, 25.421846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972729, 33.949055, 25.151417>,  <27.141550, 34.001701, 24.989159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972729, 33.949055, 25.151417>,  <26.691360, 33.861313, 25.421846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972729, 33.949055, 25.151417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697115, 0.398478, -0.596025,
		0.138658, 0.890560, 0.433216,
		0.703423, 0.219358, -0.676076,
		27.183756, 34.014862, 24.948593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579180, 34.568996, 25.239874>,  <26.691360, 33.861313, 25.421846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579180, 34.568996, 25.239874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748302, 34.404255, 24.916985>,  <26.849777, 34.305408, 24.723251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748302, 34.404255, 24.916985>,  <26.579180, 34.568996, 25.239874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748302, 34.404255, 24.916985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784268, 0.280001, -0.553646,
		0.454045, 0.867165, -0.204618,
		0.422809, -0.411856, -0.807222,
		26.875145, 34.280697, 24.674818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661083, 35.066143, 24.751015>,  <26.579180, 34.568996, 25.239874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661083, 35.066143, 24.751015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656960, 34.712322, 24.564487>,  <26.654486, 34.500031, 24.452570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656960, 34.712322, 24.564487>,  <26.661083, 35.066143, 24.751015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656960, 34.712322, 24.564487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755834, 0.312217, -0.575531,
		0.654682, 0.346526, -0.671797,
		-0.010309, -0.884556, -0.466319,
		26.653866, 34.446957, 24.424591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056177, 35.286823, 25.224957>,  <26.661083, 35.066143, 24.751015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056177, 35.286823, 25.224957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764244, 35.494015, 25.403412>,  <25.589085, 35.618328, 25.510485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764244, 35.494015, 25.403412>,  <26.056177, 35.286823, 25.224957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764244, 35.494015, 25.403412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308655, 0.332629, -0.891117,
		-0.609978, -0.788071, -0.082887,
		-0.729834, 0.517979, 0.446139,
		25.545294, 35.649406, 25.537254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462578, 35.020096, 24.949944>,  <26.056177, 35.286823, 25.224957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462578, 35.020096, 24.949944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410128, 35.405838, 25.041878>,  <25.378656, 35.637283, 25.097038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410128, 35.405838, 25.041878>,  <25.462578, 35.020096, 24.949944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410128, 35.405838, 25.041878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267520, 0.188816, -0.944871,
		-0.954588, -0.185384, 0.233226,
		-0.131127, 0.964356, 0.229835,
		25.370789, 35.695145, 25.110828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.741102, 35.196346, 24.731171>,  <25.462578, 35.020096, 24.949944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.741102, 35.196346, 24.731171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.939236, 35.541351, 24.772572>,  <25.058115, 35.748356, 24.797413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.939236, 35.541351, 24.772572>,  <24.741102, 35.196346, 24.731171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.939236, 35.541351, 24.772572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420309, 0.342227, -0.840369,
		-0.760253, 0.372760, 0.532039,
		0.495334, 0.862514, 0.103504,
		25.087835, 35.800106, 24.803623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.267851, 35.857761, 24.808046>,  <24.741102, 35.196346, 24.731171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.267851, 35.857761, 24.808046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622503, 35.904541, 24.629066>,  <24.835295, 35.932610, 24.521679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622503, 35.904541, 24.629066>,  <24.267851, 35.857761, 24.808046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.622503, 35.904541, 24.629066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458932, 0.102902, -0.882492,
		-0.057161, 0.987793, 0.144906,
		0.886631, 0.116946, -0.447448,
		24.888493, 35.939625, 24.494833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.178703, 36.140697, 24.152082>,  <24.267851, 35.857761, 24.808046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.178703, 36.140697, 24.152082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563644, 36.042538, 24.105331>,  <24.794609, 35.983643, 24.077280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.563644, 36.042538, 24.105331>,  <24.178703, 36.140697, 24.152082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.563644, 36.042538, 24.105331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148287, -0.113623, -0.982395,
		0.227799, 0.962740, -0.145735,
		0.962351, -0.245399, -0.116879,
		24.852350, 35.968918, 24.070269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.354452, 36.051056, 23.463387>,  <24.178703, 36.140697, 24.152082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.354452, 36.051056, 23.463387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.714079, 35.899235, 23.550671>,  <24.929855, 35.808140, 23.603041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.714079, 35.899235, 23.550671>,  <24.354452, 36.051056, 23.463387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.714079, 35.899235, 23.550671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126438, -0.252075, -0.959412,
		0.419155, 0.890166, -0.178642,
		0.899068, -0.379555, 0.218209,
		24.983799, 35.785370, 23.616133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.668251, 36.376736, 23.212578>,  <24.354452, 36.051056, 23.463387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.668251, 36.376736, 23.212578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.276321, 36.383865, 23.132954>,  <23.041162, 36.388142, 23.085180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.276321, 36.383865, 23.132954>,  <23.668251, 36.376736, 23.212578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.276321, 36.383865, 23.132954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071696, -0.898378, -0.433331,
		-0.186552, -0.438861, 0.878977,
		-0.979826, 0.017820, -0.199058,
		22.982374, 36.389210, 23.073236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.412935, 35.688122, 23.449116>,  <23.668251, 36.376736, 23.212578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.412935, 35.688122, 23.449116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.125488, 35.825245, 23.207100>,  <22.953020, 35.907516, 23.061890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.125488, 35.825245, 23.207100>,  <23.412935, 35.688122, 23.449116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.125488, 35.825245, 23.207100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100237, -0.912029, -0.397687,
		-0.688145, -0.225137, 0.689761,
		-0.718616, 0.342806, -0.605041,
		22.909904, 35.928085, 23.025587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.977829, 35.045330, 23.398558>,  <23.412935, 35.688122, 23.449116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.977829, 35.045330, 23.398558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.844242, 35.284126, 23.106785>,  <22.764090, 35.427402, 22.931721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.844242, 35.284126, 23.106785>,  <22.977829, 35.045330, 23.398558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.844242, 35.284126, 23.106785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019017, -0.777975, -0.628007,
		-0.942393, -0.195862, 0.271171,
		-0.333967, 0.596986, -0.729434,
		22.744053, 35.463223, 22.887955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.306156, 34.747997, 23.150343>,  <22.977829, 35.045330, 23.398558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.306156, 34.747997, 23.150343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.452124, 34.987606, 22.865246>,  <22.539703, 35.131371, 22.694187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.452124, 34.987606, 22.865246>,  <22.306156, 34.747997, 23.150343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.452124, 34.987606, 22.865246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185477, -0.703418, -0.686150,
		-0.912377, 0.382587, -0.145585,
		0.364919, 0.599025, -0.712744,
		22.561600, 35.167313, 22.651423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.943140, 34.582859, 22.546928>,  <22.306156, 34.747997, 23.150343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.943140, 34.582859, 22.546928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.248648, 34.774658, 22.374077>,  <22.431953, 34.889736, 22.270365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.248648, 34.774658, 22.374077>,  <21.943140, 34.582859, 22.546928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.248648, 34.774658, 22.374077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150190, -0.519079, -0.841428,
		-0.627771, 0.707560, -0.324442,
		0.763771, 0.479496, -0.432131,
		22.477779, 34.918507, 22.244438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.701368, 34.662045, 21.888895>,  <21.943140, 34.582859, 22.546928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.701368, 34.662045, 21.888895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.099800, 34.696983, 21.883293>,  <22.338860, 34.717945, 21.879932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.099800, 34.696983, 21.883293>,  <21.701368, 34.662045, 21.888895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.099800, 34.696983, 21.883293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035863, -0.543475, -0.838659,
		-0.080863, 0.834869, -0.544477,
		0.996080, 0.087343, -0.014006,
		22.398624, 34.723186, 21.879091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.966322, 34.862759, 21.176699>,  <21.701368, 34.662045, 21.888895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.966322, 34.862759, 21.176699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.273973, 34.678383, 21.353775>,  <22.458565, 34.567757, 21.460020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.273973, 34.678383, 21.353775>,  <21.966322, 34.862759, 21.176699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.273973, 34.678383, 21.353775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066235, -0.631462, -0.772573,
		0.635654, 0.623529, -0.455144,
		0.769128, -0.460943, 0.442691,
		22.504711, 34.540100, 21.486582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.412649, 34.847515, 20.509392>,  <21.966322, 34.862759, 21.176699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.412649, 34.847515, 20.509392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.503265, 34.588837, 20.800724>,  <22.557634, 34.433628, 20.975523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.503265, 34.588837, 20.800724>,  <22.412649, 34.847515, 20.509392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.503265, 34.588837, 20.800724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000339, -0.747716, -0.664018,
		0.974002, 0.150673, -0.169168,
		0.226539, -0.646698, 0.728328,
		22.571226, 34.394829, 21.019222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.902948, 34.476826, 20.222603>,  <22.412649, 34.847515, 20.509392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.902948, 34.476826, 20.222603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.782549, 34.232719, 20.515717>,  <22.710310, 34.086254, 20.691586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.782549, 34.232719, 20.515717>,  <22.902948, 34.476826, 20.222603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.782549, 34.232719, 20.515717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035140, -0.760800, -0.648035,
		0.952977, -0.220807, 0.207554,
		-0.300997, -0.610269, 0.732784,
		22.692249, 34.049637, 20.735552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.386097, 33.850533, 20.132271>,  <22.902948, 34.476826, 20.222603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.386097, 33.850533, 20.132271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.049276, 33.767456, 20.331394>,  <22.847183, 33.717609, 20.450869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.049276, 33.767456, 20.331394>,  <23.386097, 33.850533, 20.132271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.049276, 33.767456, 20.331394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102467, -0.844503, -0.525657,
		0.529574, -0.493639, 0.689834,
		-0.842052, -0.207689, 0.497809,
		22.796661, 33.705151, 20.480738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.273134, 33.147350, 19.940434>,  <23.386097, 33.850533, 20.132271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.273134, 33.147350, 19.940434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.927252, 33.187599, 20.137272>,  <22.719723, 33.211750, 20.255375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.927252, 33.187599, 20.137272>,  <23.273134, 33.147350, 19.940434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.927252, 33.187599, 20.137272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366897, -0.795648, -0.482008,
		0.343034, -0.597344, 0.724920,
		-0.864705, 0.100626, 0.492097,
		22.667841, 33.217789, 20.284901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.166840, 32.480244, 20.157125>,  <23.273134, 33.147350, 19.940434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.166840, 32.480244, 20.157125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.820137, 32.679688, 20.152771>,  <22.612116, 32.799355, 20.150158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.820137, 32.679688, 20.152771>,  <23.166840, 32.480244, 20.157125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.820137, 32.679688, 20.152771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409898, -0.724639, -0.553969,
		-0.284104, -0.475695, 0.832466,
		-0.866757, 0.498611, -0.010886,
		22.560110, 32.829269, 20.149506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.639786, 31.921375, 20.218573>,  <23.166840, 32.480244, 20.157125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.639786, 31.921375, 20.218573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.469398, 32.237431, 20.042286>,  <22.367167, 32.427063, 19.936514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.469398, 32.237431, 20.042286>,  <22.639786, 31.921375, 20.218573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.469398, 32.237431, 20.042286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545553, -0.612922, -0.571575,
		-0.721750, -0.003036, 0.692147,
		-0.425968, 0.790138, -0.440720,
		22.341608, 32.474472, 19.910070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.949368, 31.754810, 20.241936>,  <22.639786, 31.921375, 20.218573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.949368, 31.754810, 20.241936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.022116, 32.033142, 19.964016>,  <22.065765, 32.200142, 19.797264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.022116, 32.033142, 19.964016>,  <21.949368, 31.754810, 20.241936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.022116, 32.033142, 19.964016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453305, -0.567698, -0.687192,
		-0.872604, 0.439936, 0.212175,
		0.181870, 0.695827, -0.694801,
		22.076677, 32.241890, 19.755575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.374048, 31.817251, 19.823305>,  <21.949368, 31.754810, 20.241936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.374048, 31.817251, 19.823305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.680380, 31.956867, 19.607277>,  <21.864180, 32.040638, 19.477659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.680380, 31.956867, 19.607277>,  <21.374048, 31.817251, 19.823305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.680380, 31.956867, 19.607277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298726, -0.550633, -0.779466,
		-0.569445, 0.758271, -0.317424,
		0.765830, 0.349040, -0.540070,
		21.910130, 32.061581, 19.445255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.078325, 31.873804, 19.148926>,  <21.374048, 31.817251, 19.823305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.078325, 31.873804, 19.148926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.473850, 31.905567, 19.098415>,  <21.711164, 31.924625, 19.068110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.473850, 31.905567, 19.098415>,  <21.078325, 31.873804, 19.148926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.473850, 31.905567, 19.098415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080092, -0.431533, -0.898535,
		-0.125844, 0.898595, -0.420345,
		0.988812, 0.079409, -0.126276,
		21.770494, 31.929390, 19.060532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.147074, 32.289349, 18.499178>,  <21.078325, 31.873804, 19.148926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.147074, 32.289349, 18.499178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.492493, 32.096767, 18.559162>,  <21.699743, 31.981218, 18.595152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.492493, 32.096767, 18.559162>,  <21.147074, 32.289349, 18.499178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.492493, 32.096767, 18.559162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021337, -0.262228, -0.964770,
		0.503816, 0.836324, -0.216174,
		0.863547, -0.481454, 0.149960,
		21.751556, 31.952332, 18.604151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.701328, 32.568222, 17.948477>,  <21.147074, 32.289349, 18.499178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.701328, 32.568222, 17.948477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.831638, 32.213665, 18.080040>,  <21.909824, 32.000931, 18.158978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.831638, 32.213665, 18.080040>,  <21.701328, 32.568222, 17.948477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.831638, 32.213665, 18.080040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085418, -0.318869, -0.943942,
		0.941580, 0.335609, -0.028166,
		0.325776, -0.886391, 0.328908,
		21.929371, 31.947748, 18.178713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.245531, 32.347706, 17.581263>,  <21.701328, 32.568222, 17.948477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.245531, 32.347706, 17.581263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.096336, 32.007858, 17.730412>,  <22.006819, 31.803949, 17.819901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.096336, 32.007858, 17.730412>,  <22.245531, 32.347706, 17.581263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.096336, 32.007858, 17.730412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008770, -0.405082, -0.914239,
		0.927796, -0.337728, 0.158541,
		-0.372986, -0.849617, 0.372871,
		21.984440, 31.752974, 17.842274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.687426, 31.836727, 17.182920>,  <22.245531, 32.347706, 17.581263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.687426, 31.836727, 17.182920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.345535, 31.668583, 17.304733>,  <22.140402, 31.567698, 17.377821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.345535, 31.668583, 17.304733>,  <22.687426, 31.836727, 17.182920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.345535, 31.668583, 17.304733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072075, -0.484889, -0.871601,
		0.514050, -0.766929, 0.384150,
		-0.854726, -0.420359, 0.304534,
		22.089117, 31.542475, 17.396093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.627361, 31.116602, 16.952139>,  <22.687426, 31.836727, 17.182920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.627361, 31.116602, 16.952139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.240618, 31.199619, 17.011616>,  <22.008572, 31.249430, 17.047302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.240618, 31.199619, 17.011616>,  <22.627361, 31.116602, 16.952139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.240618, 31.199619, 17.011616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236757, -0.510880, -0.826407,
		-0.095549, -0.834223, 0.543085,
		-0.966859, 0.207542, 0.148694,
		21.950560, 31.261883, 17.056223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.163952, 30.505535, 16.854345>,  <22.627361, 31.116602, 16.952139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.163952, 30.505535, 16.854345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.918825, 30.816128, 16.795650>,  <21.771749, 31.002483, 16.760433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.918825, 30.816128, 16.795650>,  <22.163952, 30.505535, 16.854345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.918825, 30.816128, 16.795650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508715, -0.529739, -0.678665,
		-0.604706, -0.341247, 0.719640,
		-0.612813, 0.776484, -0.146739,
		21.734982, 31.049072, 16.751629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.595387, 30.230448, 17.090046>,  <22.163952, 30.505535, 16.854345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.595387, 30.230448, 17.090046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.543974, 30.529079, 16.828941>,  <21.513126, 30.708260, 16.672279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.543974, 30.529079, 16.828941>,  <21.595387, 30.230448, 17.090046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.543974, 30.529079, 16.828941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676911, -0.547086, -0.492431,
		-0.724756, 0.378570, 0.575686,
		-0.128530, 0.746580, -0.652762,
		21.505415, 30.753054, 16.633114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.944895, 30.157644, 16.881403>,  <21.595387, 30.230448, 17.090046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.944895, 30.157644, 16.881403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.115503, 30.366234, 16.585796>,  <21.217869, 30.491388, 16.408432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.115503, 30.366234, 16.585796>,  <20.944895, 30.157644, 16.881403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.115503, 30.366234, 16.585796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657148, -0.382753, -0.649351,
		-0.621481, 0.762604, 0.179433,
		0.426519, 0.521473, -0.739018,
		21.243460, 30.522676, 16.364092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.492546, 30.342012, 16.373545>,  <20.944895, 30.157644, 16.881403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.492546, 30.342012, 16.373545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.826391, 30.338890, 16.153233>,  <21.026699, 30.337017, 16.021046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.826391, 30.338890, 16.153233>,  <20.492546, 30.342012, 16.373545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.826391, 30.338890, 16.153233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527267, -0.300682, -0.794720,
		-0.159406, 0.953692, -0.255070,
		0.834613, -0.007807, -0.550781,
		21.076775, 30.336548, 15.987998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.959076, 30.359015, 16.809916>,  <20.492546, 30.342012, 16.373545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.959076, 30.359015, 16.809916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.933786, 30.585281, 17.138798>,  <19.918612, 30.721041, 17.336128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.933786, 30.585281, 17.138798>,  <19.959076, 30.359015, 16.809916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.933786, 30.585281, 17.138798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100619, 0.816045, -0.569163,
		-0.992914, -0.118715, 0.005322,
		-0.063225, 0.565666, 0.822207,
		19.914820, 30.754982, 17.385460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.382128, 30.803286, 16.846235>,  <19.959076, 30.359015, 16.809916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.382128, 30.803286, 16.846235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.686779, 30.993729, 17.022072>,  <19.869570, 31.107994, 17.127573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.686779, 30.993729, 17.022072>,  <19.382128, 30.803286, 16.846235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.686779, 30.993729, 17.022072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053900, 0.722563, -0.689201,
		-0.645766, 0.501222, 0.575988,
		0.761630, 0.476109, 0.439591,
		19.915268, 31.136560, 17.153950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.158880, 31.192484, 16.289454>,  <19.382128, 30.803286, 16.846235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.158880, 31.192484, 16.289454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.335493, 31.550907, 16.307919>,  <19.441462, 31.765961, 16.318998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.335493, 31.550907, 16.307919>,  <19.158880, 31.192484, 16.289454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.335493, 31.550907, 16.307919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492074, 0.284851, -0.822631,
		-0.750274, 0.340503, 0.566698,
		0.441533, 0.896057, 0.046164,
		19.467953, 31.819725, 16.321768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.768013, 31.841766, 16.405649>,  <19.158880, 31.192484, 16.289454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.768013, 31.841766, 16.405649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.079245, 31.940269, 16.174496>,  <19.265984, 31.999371, 16.035805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.079245, 31.940269, 16.174496>,  <18.768013, 31.841766, 16.405649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.079245, 31.940269, 16.174496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624616, 0.400947, -0.670147,
		0.066672, 0.882383, 0.465784,
		0.778081, 0.246256, -0.577883,
		19.312668, 32.014145, 16.001131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.682903, 31.938311, 17.231506>,  <18.768013, 31.841766, 16.405649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.682903, 31.938311, 17.231506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.803604, 31.715279, 17.540840>,  <18.876024, 31.581459, 17.726440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.803604, 31.715279, 17.540840>,  <18.682903, 31.938311, 17.231506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.803604, 31.715279, 17.540840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070068, 0.795984, 0.601249,
		-0.950808, -0.235615, 0.201123,
		0.301754, -0.557580, 0.773337,
		18.894131, 31.548004, 17.772840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.306164, 32.086132, 17.833237>,  <18.682903, 31.938311, 17.231506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.306164, 32.086132, 17.833237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.571018, 31.852909, 18.021542>,  <18.729931, 31.712975, 18.134523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.571018, 31.852909, 18.021542>,  <18.306164, 32.086132, 17.833237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.571018, 31.852909, 18.021542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098818, 0.554777, 0.826110,
		-0.742840, -0.593517, 0.309721,
		0.662136, -0.583061, 0.470760,
		18.769659, 31.677990, 18.162769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.970514, 31.804771, 18.311384>,  <18.306164, 32.086132, 17.833237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.970514, 31.804771, 18.311384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.347063, 31.811993, 18.446136>,  <18.572992, 31.816324, 18.526987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.347063, 31.811993, 18.446136>,  <17.970514, 31.804771, 18.311384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.347063, 31.811993, 18.446136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278311, 0.605943, 0.745236,
		-0.190678, -0.795303, 0.575443,
		0.941374, 0.018052, 0.336881,
		18.629475, 31.817408, 18.547201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.839476, 31.662088, 18.977043>,  <17.970514, 31.804771, 18.311384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.839476, 31.662088, 18.977043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.210876, 31.809826, 18.961712>,  <18.433718, 31.898468, 18.952513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.210876, 31.809826, 18.961712>,  <17.839476, 31.662088, 18.977043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.210876, 31.809826, 18.961712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160683, 0.492697, 0.855237,
		0.334759, -0.787932, 0.516817,
		0.928503, 0.369342, -0.038327,
		18.489428, 31.920630, 18.950214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.168036, 31.512403, 19.622971>,  <17.839476, 31.662088, 18.977043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.168036, 31.512403, 19.622971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.352774, 31.829433, 19.463711>,  <18.463617, 32.019650, 19.368155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.352774, 31.829433, 19.463711>,  <18.168036, 31.512403, 19.622971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.352774, 31.829433, 19.463711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295062, 0.560619, 0.773722,
		0.836442, -0.239862, 0.492778,
		0.461847, 0.792573, -0.398151,
		18.491327, 32.067207, 19.344265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.556744, 31.738016, 20.207729>,  <18.168036, 31.512403, 19.622971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.556744, 31.738016, 20.207729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.563997, 32.042244, 19.948128>,  <18.568350, 32.224781, 19.792366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.563997, 32.042244, 19.948128>,  <18.556744, 31.738016, 20.207729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.563997, 32.042244, 19.948128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241096, 0.633283, 0.735409,
		0.970332, 0.143135, 0.194855,
		0.018135, 0.760569, -0.649003,
		18.569439, 32.270416, 19.753428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.958460, 32.318932, 20.471537>,  <18.556744, 31.738016, 20.207729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.958460, 32.318932, 20.471537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.711027, 32.489407, 20.207500>,  <18.562569, 32.591694, 20.049078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.711027, 32.489407, 20.207500>,  <18.958460, 32.318932, 20.471537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.711027, 32.489407, 20.207500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169360, 0.748037, 0.641683,
		0.767252, 0.508726, -0.390541,
		-0.618580, 0.426191, -0.660091,
		18.525454, 32.617264, 20.009474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.243544, 33.031067, 20.371935>,  <18.958460, 32.318932, 20.471537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.243544, 33.031067, 20.371935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.863504, 33.061722, 20.250980>,  <18.635481, 33.080116, 20.178408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.863504, 33.061722, 20.250980>,  <19.243544, 33.031067, 20.371935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.863504, 33.061722, 20.250980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077866, 0.880403, 0.467789,
		0.302073, 0.467992, -0.830503,
		-0.950099, 0.076639, -0.302387,
		18.578474, 33.084713, 20.160265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.197741, 33.733276, 20.163927>,  <19.243544, 33.031067, 20.371935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.197741, 33.733276, 20.163927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.846498, 33.573799, 20.269741>,  <18.635754, 33.478111, 20.333229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.846498, 33.573799, 20.269741>,  <19.197741, 33.733276, 20.163927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.846498, 33.573799, 20.269741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162576, 0.768599, 0.618728,
		-0.450005, 0.500300, -0.739727,
		-0.878103, -0.398692, 0.264537,
		18.583067, 33.454193, 20.349102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.707319, 34.341785, 20.364902>,  <19.197741, 33.733276, 20.163927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.707319, 34.341785, 20.364902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.542181, 33.997826, 20.484989>,  <18.443098, 33.791451, 20.557041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.542181, 33.997826, 20.484989>,  <18.707319, 34.341785, 20.364902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.542181, 33.997826, 20.484989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178587, 0.399647, 0.899104,
		-0.893122, 0.317574, -0.318559,
		-0.412844, -0.859900, 0.300219,
		18.418327, 33.739857, 20.575054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.050089, 34.513763, 20.704466>,  <18.707319, 34.341785, 20.364902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.050089, 34.513763, 20.704466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.144924, 34.152428, 20.847443>,  <18.201826, 33.935627, 20.933228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.144924, 34.152428, 20.847443>,  <18.050089, 34.513763, 20.704466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.144924, 34.152428, 20.847443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056391, 0.380107, 0.923222,
		-0.969850, -0.198730, 0.141060,
		0.237090, -0.903341, 0.357440,
		18.216051, 33.881424, 20.954674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.696035, 34.486355, 21.421036>,  <18.050089, 34.513763, 20.704466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.696035, 34.486355, 21.421036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.998482, 34.225681, 21.397038>,  <18.179951, 34.069279, 21.382639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.998482, 34.225681, 21.397038>,  <17.696035, 34.486355, 21.421036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.998482, 34.225681, 21.397038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297814, 0.261007, 0.918250,
		-0.582747, -0.712171, 0.391431,
		0.756117, -0.651681, -0.059994,
		18.225317, 34.030178, 21.379040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.739273, 34.182915, 22.151684>,  <17.696035, 34.486355, 21.421036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.739273, 34.182915, 22.151684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.100681, 34.126297, 21.989883>,  <18.317526, 34.092327, 21.892803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.100681, 34.126297, 21.989883>,  <17.739273, 34.182915, 22.151684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.100681, 34.126297, 21.989883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428469, 0.316616, 0.846267,
		0.008288, -0.937934, 0.346715,
		0.903518, -0.141543, -0.404500,
		18.371737, 34.083836, 21.868534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.172398, 33.973679, 22.684063>,  <17.739273, 34.182915, 22.151684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.172398, 33.973679, 22.684063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.431927, 34.070766, 22.395588>,  <18.587645, 34.129021, 22.222504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.431927, 34.070766, 22.395588>,  <18.172398, 33.973679, 22.684063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.431927, 34.070766, 22.395588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632302, 0.355310, 0.688440,
		0.423347, -0.902685, 0.077058,
		0.648823, 0.242725, -0.721188,
		18.626574, 34.143585, 22.179232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.851301, 33.683155, 22.894016>,  <18.172398, 33.973679, 22.684063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.851301, 33.683155, 22.894016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.924923, 33.978195, 22.634148>,  <18.969095, 34.155220, 22.478226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.924923, 33.978195, 22.634148>,  <18.851301, 33.683155, 22.894016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.924923, 33.978195, 22.634148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605855, 0.435338, 0.665898,
		0.773992, -0.516168, -0.366752,
		0.184054, 0.737598, -0.649671,
		18.980139, 34.199474, 22.439247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.581263, 33.724808, 22.837666>,  <18.851301, 33.683155, 22.894016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.581263, 33.724808, 22.837666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.433897, 34.073044, 22.707222>,  <19.345478, 34.281986, 22.628956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.433897, 34.073044, 22.707222>,  <19.581263, 33.724808, 22.837666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.433897, 34.073044, 22.707222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702097, 0.490480, 0.516226,
		0.609371, -0.038776, -0.791937,
		-0.368412, 0.870589, -0.326108,
		19.323374, 34.334221, 22.609390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.124508, 34.110229, 22.711809>,  <19.581263, 33.724808, 22.837666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.124508, 34.110229, 22.711809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.837042, 34.388309, 22.717804>,  <19.664562, 34.555157, 22.721401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.837042, 34.388309, 22.717804>,  <20.124508, 34.110229, 22.711809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.837042, 34.388309, 22.717804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683529, 0.702314, 0.198854,
		0.127716, 0.153155, -0.979914,
		-0.718663, 0.695197, 0.014989,
		19.621443, 34.596870, 22.722301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.433371, 34.729210, 22.351278>,  <20.124508, 34.110229, 22.711809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.433371, 34.729210, 22.351278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.143028, 34.837376, 22.604263>,  <19.968822, 34.902275, 22.756054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.143028, 34.837376, 22.604263>,  <20.433371, 34.729210, 22.351278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.143028, 34.837376, 22.604263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538831, 0.795060, 0.278463,
		-0.427544, 0.542914, -0.722807,
		-0.725856, 0.270415, 0.632462,
		19.925272, 34.918499, 22.794003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.670305, 35.358402, 22.381058>,  <20.433371, 34.729210, 22.351278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.670305, 35.358402, 22.381058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.393976, 35.361927, 22.670246>,  <20.228178, 35.364044, 22.843758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.393976, 35.361927, 22.670246>,  <20.670305, 35.358402, 22.381058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.393976, 35.361927, 22.670246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434424, 0.804368, 0.405301,
		-0.577960, 0.594067, -0.559507,
		-0.690825, 0.008816, 0.722969,
		20.186729, 35.364571, 22.887136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.612946, 36.083508, 22.570492>,  <20.670305, 35.358402, 22.381058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.612946, 36.083508, 22.570492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.474487, 35.882744, 22.887547>,  <20.391413, 35.762287, 23.077780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.474487, 35.882744, 22.887547>,  <20.612946, 36.083508, 22.570492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.474487, 35.882744, 22.887547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578495, 0.550951, 0.601495,
		-0.738598, 0.666741, 0.099641,
		-0.346144, -0.501906, 0.792638,
		20.370644, 35.732174, 23.125338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.187578, 36.579342, 23.097523>,  <20.612946, 36.083508, 22.570492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.187578, 36.579342, 23.097523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.346130, 36.273067, 23.300148>,  <20.441261, 36.089302, 23.421722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.346130, 36.273067, 23.300148>,  <20.187578, 36.579342, 23.097523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.346130, 36.273067, 23.300148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469326, 0.643209, 0.604992,
		-0.789060, -0.002064, 0.614313,
		0.396380, -0.765688, 0.506562,
		20.465044, 36.043362, 23.452116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.198864, 36.784443, 23.772390>,  <20.187578, 36.579342, 23.097523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.198864, 36.784443, 23.772390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.447283, 36.470936, 23.774021>,  <20.596334, 36.282833, 23.775000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.447283, 36.470936, 23.774021>,  <20.198864, 36.784443, 23.772390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.447283, 36.470936, 23.774021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587716, 0.469127, 0.659174,
		-0.518549, -0.406980, 0.751980,
		0.621045, -0.783765, 0.004077,
		20.633596, 36.235806, 23.775244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.026016, 37.461586, 23.769669>,  <20.198864, 36.784443, 23.772390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.026016, 37.461586, 23.769669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.321745, 37.555656, 24.022049>,  <20.499182, 37.612099, 24.173477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.321745, 37.555656, 24.022049>,  <20.026016, 37.461586, 23.769669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.321745, 37.555656, 24.022049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050301, -0.953696, 0.296538,
		0.671473, -0.187499, -0.716916,
		0.739320, 0.235179, 0.630949,
		20.543541, 37.626209, 24.211334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.712255, 37.850849, 23.266075>,  <20.026016, 37.461586, 23.769669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.712255, 37.850849, 23.266075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.556967, 37.523525, 23.435619>,  <19.463793, 37.327133, 23.537346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.556967, 37.523525, 23.435619>,  <19.712255, 37.850849, 23.266075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.556967, 37.523525, 23.435619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830672, 0.111550, -0.545473,
		0.399082, -0.563855, -0.723050,
		-0.388224, -0.818306, 0.423861,
		19.440500, 37.278034, 23.562778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.369127, 37.655811, 22.727652>,  <19.712255, 37.850849, 23.266075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.369127, 37.655811, 22.727652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.188190, 37.477085, 23.036388>,  <19.079628, 37.369850, 23.221630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.188190, 37.477085, 23.036388>,  <19.369127, 37.655811, 22.727652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.188190, 37.477085, 23.036388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891299, 0.256754, -0.373717,
		-0.031190, -0.856990, -0.514388,
		-0.452343, -0.446817, 0.771842,
		19.052488, 37.343040, 23.267941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.728794, 37.248672, 22.488811>,  <19.369127, 37.655811, 22.727652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.728794, 37.248672, 22.488811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.664886, 37.322620, 22.876686>,  <18.626541, 37.366989, 23.109411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.664886, 37.322620, 22.876686>,  <18.728794, 37.248672, 22.488811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.664886, 37.322620, 22.876686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954098, 0.223155, -0.199746,
		-0.253318, -0.957091, 0.140735,
		-0.159769, 0.184874, 0.969688,
		18.616955, 37.378082, 23.167593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028517, 36.950172, 22.797907>,  <18.728794, 37.248672, 22.488811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.028517, 36.950172, 22.797907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.159601, 37.269283, 23.000359>,  <18.238251, 37.460751, 23.121830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.159601, 37.269283, 23.000359>,  <18.028517, 36.950172, 22.797907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.159601, 37.269283, 23.000359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906592, 0.416299, -0.069177,
		-0.265887, -0.436181, 0.859680,
		0.327710, 0.797772, 0.506127,
		18.257914, 37.508614, 23.152197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.534122, 37.093655, 23.425247>,  <18.028517, 36.950172, 22.797907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.534122, 37.093655, 23.425247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.731945, 37.395039, 23.251942>,  <17.850637, 37.575867, 23.147957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.731945, 37.395039, 23.251942>,  <17.534122, 37.093655, 23.425247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.731945, 37.395039, 23.251942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867507, 0.458513, -0.192863,
		0.053344, 0.471243, 0.880389,
		0.494555, 0.753456, -0.433266,
		17.880312, 37.621075, 23.121962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.757687, 25.284924, 27.139805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.006805, 25.502472, 27.364777>,  <33.156277, 25.633001, 27.499760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.006805, 25.502472, 27.364777>,  <32.757687, 25.284924, 27.139805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006805, 25.502472, 27.364777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054573, 0.747315, -0.662225,
		-0.780476, 0.381740, 0.495108,
		0.622800, 0.543871, 0.562428,
		33.193645, 25.665632, 27.533504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428123, 25.985157, 27.237810>,  <32.757687, 25.284924, 27.139805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428123, 25.985157, 27.237810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.820225, 26.032825, 27.300922>,  <33.055485, 26.061426, 27.338791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.820225, 26.032825, 27.300922>,  <32.428123, 25.985157, 27.237810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820225, 26.032825, 27.300922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026612, 0.711188, -0.702498,
		-0.195931, 0.692827, 0.693975,
		0.980257, 0.119173, 0.157781,
		33.114304, 26.068577, 27.348257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462185, 26.716230, 27.314880>,  <32.428123, 25.985157, 27.237810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462185, 26.716230, 27.314880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.841129, 26.614330, 27.237305>,  <33.068497, 26.553190, 27.190760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.841129, 26.614330, 27.237305>,  <32.462185, 26.716230, 27.314880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841129, 26.614330, 27.237305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023256, 0.658886, -0.751883,
		0.319328, 0.707793, 0.630126,
		0.947359, -0.254751, -0.193940,
		33.125336, 26.537905, 27.179123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829399, 27.352652, 27.412271>,  <32.462185, 26.716230, 27.314880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829399, 27.352652, 27.412271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.004005, 27.091980, 27.164154>,  <33.108768, 26.935577, 27.015284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.004005, 27.091980, 27.164154>,  <32.829399, 27.352652, 27.412271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004005, 27.091980, 27.164154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137095, 0.729579, -0.670014,
		0.889188, 0.207436, 0.407818,
		0.436520, -0.651678, -0.620295,
		33.134960, 26.896477, 26.978065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414715, 27.684114, 27.300575>,  <32.829399, 27.352652, 27.412271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414715, 27.684114, 27.300575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.366970, 27.421600, 27.002571>,  <33.338322, 27.264091, 26.823769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.366970, 27.421600, 27.002571>,  <33.414715, 27.684114, 27.300575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366970, 27.421600, 27.002571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010379, 0.751161, -0.660038,
		0.992796, -0.071054, -0.096475,
		-0.119366, -0.656284, -0.745012,
		33.331161, 27.224714, 26.779068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797916, 27.880617, 26.824028>,  <33.414715, 27.684114, 27.300575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797916, 27.880617, 26.824028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.556042, 27.638386, 26.617096>,  <33.410915, 27.493048, 26.492937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.556042, 27.638386, 26.617096>,  <33.797916, 27.880617, 26.824028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556042, 27.638386, 26.617096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032169, 0.667574, -0.743848,
		0.795814, -0.433152, -0.423154,
		-0.604686, -0.605577, -0.517331,
		33.374634, 27.456713, 26.461897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977100, 28.015551, 26.083752>,  <33.797916, 27.880617, 26.824028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977100, 28.015551, 26.083752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.624378, 27.826916, 26.085503>,  <33.412743, 27.713734, 26.086554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.624378, 27.826916, 26.085503>,  <33.977100, 28.015551, 26.083752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624378, 27.826916, 26.085503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318516, 0.588685, -0.742965,
		0.347796, -0.656548, -0.669316,
		-0.881808, -0.471588, 0.004379,
		33.359837, 27.685440, 26.086817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812866, 27.866663, 25.366339>,  <33.977100, 28.015551, 26.083752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812866, 27.866663, 25.366339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.481594, 27.902657, 25.587612>,  <33.282829, 27.924253, 25.720377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.481594, 27.902657, 25.587612>,  <33.812866, 27.866663, 25.366339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481594, 27.902657, 25.587612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324217, 0.728185, -0.603846,
		-0.457158, -0.679448, -0.573897,
		-0.828185, 0.089985, 0.553184,
		33.233139, 27.929651, 25.753567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325249, 27.850399, 24.853586>,  <33.812866, 27.866663, 25.366339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325249, 27.850399, 24.853586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.122169, 27.983791, 25.171337>,  <33.000320, 28.063826, 25.361988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.122169, 27.983791, 25.171337>,  <33.325249, 27.850399, 24.853586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122169, 27.983791, 25.171337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491570, 0.645100, -0.584983,
		-0.707533, -0.687486, -0.163587,
		-0.507697, 0.333480, 0.794377,
		32.969860, 28.083836, 25.409651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664803, 28.113739, 24.546869>,  <33.325249, 27.850399, 24.853586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664803, 28.113739, 24.546869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.690109, 28.274311, 24.912350>,  <32.705292, 28.370653, 25.131638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.690109, 28.274311, 24.912350>,  <32.664803, 28.113739, 24.546869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690109, 28.274311, 24.912350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503780, 0.803175, -0.317987,
		-0.861512, -0.440188, 0.253044,
		0.063265, 0.401429, 0.913703,
		32.709087, 28.394739, 25.186460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019295, 28.135187, 24.864809>,  <32.664803, 28.113739, 24.546869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019295, 28.135187, 24.864809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.280804, 28.419182, 24.969505>,  <32.437710, 28.589579, 25.032324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.280804, 28.419182, 24.969505>,  <32.019295, 28.135187, 24.864809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280804, 28.419182, 24.969505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571734, 0.690064, -0.443771,
		-0.495689, 0.140477, 0.857064,
		0.653768, 0.709985, 0.261741,
		32.476933, 28.632177, 25.048027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654037, 28.688608, 25.278358>,  <32.019295, 28.135187, 24.864809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654037, 28.688608, 25.278358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.980848, 28.881794, 25.152367>,  <32.176933, 28.997705, 25.076771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.980848, 28.881794, 25.152367>,  <31.654037, 28.688608, 25.278358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980848, 28.881794, 25.152367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550957, 0.815009, -0.179460,
		0.170040, 0.320165, 0.931977,
		0.817027, 0.482964, -0.314981,
		32.225956, 29.026684, 25.057873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524145, 29.396135, 25.445757>,  <31.654037, 28.688608, 25.278358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524145, 29.396135, 25.445757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.842852, 29.399036, 25.204060>,  <32.034077, 29.400778, 25.059042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.842852, 29.399036, 25.204060>,  <31.524145, 29.396135, 25.445757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842852, 29.399036, 25.204060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322139, 0.851096, -0.414562,
		0.511263, 0.524960, 0.680462,
		0.796767, 0.007253, -0.604244,
		32.081882, 29.401213, 25.022787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954351, 29.979113, 25.610620>,  <31.524145, 29.396135, 25.445757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954351, 29.979113, 25.610620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.022556, 29.868755, 25.232243>,  <32.063480, 29.802542, 25.005217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.022556, 29.868755, 25.232243>,  <31.954351, 29.979113, 25.610620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022556, 29.868755, 25.232243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313050, 0.895097, -0.317493,
		0.934305, 0.350264, 0.066256,
		0.170511, -0.275893, -0.945943,
		32.073711, 29.785988, 24.948460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181862, 30.583609, 25.372793>,  <31.954351, 29.979113, 25.610620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181862, 30.583609, 25.372793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.089703, 30.372868, 25.045540>,  <32.034409, 30.246424, 24.849188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.089703, 30.372868, 25.045540>,  <32.181862, 30.583609, 25.372793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089703, 30.372868, 25.045540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222643, 0.846992, -0.482737,
		0.947284, 0.070929, -0.312446,
		-0.230399, -0.526852, -0.818134,
		32.020584, 30.214811, 24.800100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408379, 31.028103, 24.881071>,  <32.181862, 30.583609, 25.372793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408379, 31.028103, 24.881071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.179543, 30.775921, 24.671219>,  <32.042240, 30.624611, 24.545307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.179543, 30.775921, 24.671219>,  <32.408379, 31.028103, 24.881071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179543, 30.775921, 24.671219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323454, 0.761227, -0.562059,
		0.753694, -0.151880, -0.639435,
		-0.572121, -0.630449, -0.524606,
		32.007915, 30.586784, 24.513830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665672, 31.051989, 24.265760>,  <32.408379, 31.028103, 24.881071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665672, 31.051989, 24.265760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.286251, 30.927124, 24.244591>,  <32.058598, 30.852205, 24.231890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.286251, 30.927124, 24.244591>,  <32.665672, 31.051989, 24.265760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286251, 30.927124, 24.244591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209139, 0.743247, -0.635488,
		0.237709, -0.591726, -0.770295,
		-0.948555, -0.312160, -0.052923,
		32.001686, 30.833475, 24.228714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400204, 31.348160, 23.668510>,  <32.665672, 31.051989, 24.265760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400204, 31.348160, 23.668510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.058815, 31.241570, 23.847652>,  <31.853981, 31.177614, 23.955137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.058815, 31.241570, 23.847652>,  <32.400204, 31.348160, 23.668510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058815, 31.241570, 23.847652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470933, 0.762394, -0.443821,
		-0.223173, -0.589699, -0.776176,
		-0.853473, -0.266478, 0.447855,
		31.802773, 31.161627, 23.982008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882238, 31.432175, 23.080664>,  <32.400204, 31.348160, 23.668510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882238, 31.432175, 23.080664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.701950, 31.460262, 23.436623>,  <31.593777, 31.477116, 23.650198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.701950, 31.460262, 23.436623>,  <31.882238, 31.432175, 23.080664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701950, 31.460262, 23.436623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487744, 0.815562, -0.311391,
		-0.747634, -0.574393, -0.333341,
		-0.450721, 0.070221, 0.889899,
		31.566734, 31.481329, 23.703592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249117, 31.686655, 22.926163>,  <31.882238, 31.432175, 23.080664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249117, 31.686655, 22.926163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.297874, 31.751846, 23.317791>,  <31.327129, 31.790962, 23.552769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.297874, 31.751846, 23.317791>,  <31.249117, 31.686655, 22.926163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297874, 31.751846, 23.317791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298642, 0.946738, -0.120416,
		-0.946549, -0.277713, 0.164074,
		0.121894, 0.162979, 0.979071,
		31.334442, 31.800739, 23.611513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598740, 31.816643, 23.292212>,  <31.249117, 31.686655, 22.926163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598740, 31.816643, 23.292212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.905745, 31.994392, 23.477016>,  <31.089949, 32.101040, 23.587900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.905745, 31.994392, 23.477016>,  <30.598740, 31.816643, 23.292212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905745, 31.994392, 23.477016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487889, 0.872437, -0.028625,
		-0.415798, -0.203441, 0.886411,
		0.767514, 0.444372, 0.462014,
		31.135998, 32.127705, 23.615620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295536, 32.110405, 23.852577>,  <30.598740, 31.816643, 23.292212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295536, 32.110405, 23.852577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.637329, 32.304562, 23.778549>,  <30.842405, 32.421055, 23.734133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.637329, 32.304562, 23.778549>,  <30.295536, 32.110405, 23.852577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637329, 32.304562, 23.778549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473427, 0.874288, 0.107181,
		0.213828, -0.003968, 0.976863,
		0.854485, 0.485392, -0.185069,
		30.893675, 32.450180, 23.723028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610271, 32.532227, 23.820452>,  <30.295536, 32.110405, 23.852577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610271, 32.532227, 23.820452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.257967, 32.437683, 23.656307>,  <29.046585, 32.380959, 23.557821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.257967, 32.437683, 23.656307>,  <29.610271, 32.532227, 23.820452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257967, 32.437683, 23.656307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042466, -0.823627, 0.565539,
		-0.471654, 0.515531, 0.715381,
		-0.880760, -0.236359, -0.410360,
		28.993738, 32.366776, 23.533199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049269, 32.470127, 24.341377>,  <29.610271, 32.532227, 23.820452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049269, 32.470127, 24.341377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.989798, 32.214001, 24.039944>,  <28.954115, 32.060326, 23.859083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.989798, 32.214001, 24.039944>,  <29.049269, 32.470127, 24.341377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989798, 32.214001, 24.039944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033551, -0.758347, 0.650987,
		-0.988316, 0.122072, 0.091267,
		-0.148680, -0.640319, -0.753582,
		28.945194, 32.021904, 23.813869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728687, 31.998446, 24.579538>,  <29.049269, 32.470127, 24.341377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728687, 31.998446, 24.579538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.775543, 31.805370, 24.232368>,  <28.803656, 31.689526, 24.024067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.775543, 31.805370, 24.232368>,  <28.728687, 31.998446, 24.579538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775543, 31.805370, 24.232368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141422, -0.873142, 0.466500,
		-0.982995, 0.068098, -0.170541,
		0.117139, -0.482686, -0.867924,
		28.810684, 31.660564, 23.971991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107347, 31.493664, 24.513699>,  <28.728687, 31.998446, 24.579538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.107347, 31.493664, 24.513699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.415873, 31.358677, 24.297848>,  <28.600986, 31.277685, 24.168337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.415873, 31.358677, 24.297848>,  <28.107347, 31.493664, 24.513699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415873, 31.358677, 24.297848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125748, -0.911944, 0.390571,
		-0.623913, -0.233395, -0.745828,
		0.771311, -0.337468, -0.539625,
		28.647266, 31.257437, 24.135960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909470, 30.817753, 24.361588>,  <28.107347, 31.493664, 24.513699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909470, 30.817753, 24.361588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.295073, 30.806404, 24.255844>,  <28.526434, 30.799595, 24.192398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.295073, 30.806404, 24.255844>,  <27.909470, 30.817753, 24.361588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295073, 30.806404, 24.255844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080922, -0.915808, 0.393380,
		-0.253261, -0.400614, -0.880549,
		0.964007, -0.028372, -0.264357,
		28.584274, 30.797892, 24.176537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069118, 30.205227, 24.098434>,  <27.909470, 30.817753, 24.361588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069118, 30.205227, 24.098434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.409513, 30.352299, 24.248440>,  <28.613750, 30.440542, 24.338444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.409513, 30.352299, 24.248440>,  <28.069118, 30.205227, 24.098434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409513, 30.352299, 24.248440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152210, -0.856075, 0.493932,
		0.502648, -0.363248, -0.784472,
		0.850986, 0.367678, 0.375014,
		28.664810, 30.462603, 24.360945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.619184, 29.672241, 24.029337>,  <28.069118, 30.205227, 24.098434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.619184, 29.672241, 24.029337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.749649, 29.931412, 24.304672>,  <28.827929, 30.086914, 24.469873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.749649, 29.931412, 24.304672>,  <28.619184, 29.672241, 24.029337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749649, 29.931412, 24.304672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288944, -0.761639, 0.580015,
		0.900072, 0.009712, -0.435632,
		0.326162, 0.647929, 0.688336,
		28.847498, 30.125790, 24.511173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195652, 29.306225, 24.292473>,  <28.619184, 29.672241, 24.029337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195652, 29.306225, 24.292473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.084091, 29.586811, 24.554821>,  <29.017155, 29.755163, 24.712229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.084091, 29.586811, 24.554821>,  <29.195652, 29.306225, 24.292473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084091, 29.586811, 24.554821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168423, -0.636654, 0.752533,
		0.945435, 0.320346, 0.059422,
		-0.278902, 0.701463, 0.655868,
		29.000422, 29.797251, 24.751581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731192, 29.129267, 24.721205>,  <29.195652, 29.306225, 24.292473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731192, 29.129267, 24.721205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.426254, 29.308853, 24.907650>,  <29.243292, 29.416605, 25.019516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.426254, 29.308853, 24.907650>,  <29.731192, 29.129267, 24.721205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426254, 29.308853, 24.907650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007046, -0.714428, 0.699673,
		0.647133, 0.536677, 0.541477,
		-0.762345, 0.448966, 0.466111,
		29.197550, 29.443542, 25.047483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832748, 29.100689, 25.444506>,  <29.731192, 29.129267, 24.721205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832748, 29.100689, 25.444506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.441185, 29.181087, 25.459110>,  <29.206245, 29.229326, 25.467873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.441185, 29.181087, 25.459110>,  <29.832748, 29.100689, 25.444506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441185, 29.181087, 25.459110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086961, -0.571716, 0.815830,
		0.184855, 0.795450, 0.577138,
		-0.978911, 0.200999, 0.036512,
		29.147512, 29.241386, 25.470064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657244, 29.262327, 26.154041>,  <29.832748, 29.100689, 25.444506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657244, 29.262327, 26.154041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.329735, 29.137409, 25.961342>,  <29.133228, 29.062458, 25.845722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.329735, 29.137409, 25.961342>,  <29.657244, 29.262327, 26.154041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329735, 29.137409, 25.961342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182788, -0.653646, 0.734394,
		-0.544241, 0.689360, 0.478104,
		-0.818774, -0.312296, -0.481748,
		29.084103, 29.043720, 25.816818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250635, 29.049847, 26.709936>,  <29.657244, 29.262327, 26.154041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250635, 29.049847, 26.709936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.074825, 28.895779, 26.385353>,  <28.969339, 28.803339, 26.190603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.074825, 28.895779, 26.385353>,  <29.250635, 29.049847, 26.709936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074825, 28.895779, 26.385353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181040, -0.846869, 0.500038,
		-0.879797, 0.366685, 0.302489,
		-0.439525, -0.385169, -0.811457,
		28.942968, 28.780228, 26.141916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617455, 28.836445, 27.038544>,  <29.250635, 29.049847, 26.709936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617455, 28.836445, 27.038544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.687164, 28.646885, 26.693279>,  <28.728991, 28.533148, 26.486120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.687164, 28.646885, 26.693279>,  <28.617455, 28.836445, 27.038544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687164, 28.646885, 26.693279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048803, -0.871341, 0.488245,
		-0.983487, -0.127213, -0.128724,
		0.174273, -0.473901, -0.863161,
		28.739447, 28.504715, 26.434332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095627, 28.265589, 27.057192>,  <28.617455, 28.836445, 27.038544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095627, 28.265589, 27.057192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.408102, 28.189819, 26.819244>,  <28.595587, 28.144358, 26.676476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.408102, 28.189819, 26.819244>,  <28.095627, 28.265589, 27.057192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408102, 28.189819, 26.819244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224391, -0.803987, 0.550684,
		-0.582578, -0.563670, -0.585559,
		0.781186, -0.189422, -0.594868,
		28.642458, 28.132992, 26.640783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093584, 27.544924, 26.952158>,  <28.095627, 28.265589, 27.057192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093584, 27.544924, 26.952158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.461655, 27.614632, 26.811928>,  <28.682497, 27.656456, 26.727789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.461655, 27.614632, 26.811928>,  <28.093584, 27.544924, 26.952158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461655, 27.614632, 26.811928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312037, -0.867273, 0.387905,
		-0.236445, -0.466334, -0.852423,
		0.920178, 0.174269, -0.350576,
		28.737707, 27.666912, 26.706755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303801, 26.905676, 26.749680>,  <28.093584, 27.544924, 26.952158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303801, 26.905676, 26.749680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.656145, 27.092106, 26.782799>,  <28.867552, 27.203964, 26.802670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.656145, 27.092106, 26.782799>,  <28.303801, 26.905676, 26.749680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656145, 27.092106, 26.782799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426055, -0.856816, 0.290420,
		0.206298, -0.220544, -0.953311,
		0.880862, 0.466076, 0.082796,
		28.920404, 27.231928, 26.807638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801899, 26.522163, 26.358915>,  <28.303801, 26.905676, 26.749680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801899, 26.522163, 26.358915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.992231, 26.717327, 26.651634>,  <29.106432, 26.834425, 26.827265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.992231, 26.717327, 26.651634>,  <28.801899, 26.522163, 26.358915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992231, 26.717327, 26.651634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499031, -0.834904, 0.232172,
		0.724259, 0.254715, -0.640756,
		0.475832, 0.487910, 0.731798,
		29.134981, 26.863701, 26.871174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476480, 26.229961, 26.414330>,  <28.801899, 26.522163, 26.358915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476480, 26.229961, 26.414330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.467340, 26.412979, 26.769886>,  <29.461857, 26.522789, 26.983221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.467340, 26.412979, 26.769886>,  <29.476480, 26.229961, 26.414330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467340, 26.412979, 26.769886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417030, -0.803713, 0.424420,
		0.908606, 0.380393, -0.172444,
		-0.022851, 0.457544, 0.888893,
		29.460485, 26.550243, 27.036554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.176987, 26.122026, 26.602932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.968872, 26.214092, 26.931889>,  <29.844004, 26.269331, 27.129263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.968872, 26.214092, 26.931889>,  <30.176987, 26.122026, 26.602932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968872, 26.214092, 26.931889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618737, -0.562150, 0.548774,
		0.588615, 0.794363, 0.150068,
		-0.520286, 0.230164, 0.822391,
		29.812786, 26.283142, 27.178606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614372, 26.258163, 27.142126>,  <30.176987, 26.122026, 26.602932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614372, 26.258163, 27.142126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.288677, 26.136105, 27.339672>,  <30.093260, 26.062870, 27.458200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.288677, 26.136105, 27.339672>,  <30.614372, 26.258163, 27.142126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288677, 26.136105, 27.339672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579214, -0.484304, 0.655714,
		0.039093, 0.819960, 0.571084,
		-0.814238, -0.305146, 0.493865,
		30.044405, 26.044561, 27.487831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827703, 26.325563, 27.834826>,  <30.614372, 26.258163, 27.142126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827703, 26.325563, 27.834826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.498909, 26.097927, 27.826092>,  <30.301632, 25.961346, 27.820850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.498909, 26.097927, 27.826092>,  <30.827703, 26.325563, 27.834826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498909, 26.097927, 27.826092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397166, -0.600299, 0.694190,
		-0.408164, 0.561942, 0.719460,
		-0.821986, -0.569088, -0.021837,
		30.252314, 25.927200, 27.819540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736959, 26.168575, 28.573654>,  <30.827703, 26.325563, 27.834826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736959, 26.168575, 28.573654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.552357, 25.900314, 28.341366>,  <30.441595, 25.739357, 28.201994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.552357, 25.900314, 28.341366>,  <30.736959, 26.168575, 28.573654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552357, 25.900314, 28.341366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375703, -0.740754, 0.556893,
		-0.803653, 0.038832, 0.593830,
		-0.461508, -0.670653, -0.580720,
		30.413904, 25.699118, 28.167150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351215, 25.727365, 29.038465>,  <30.736959, 26.168575, 28.573654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351215, 25.727365, 29.038465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395927, 25.507885, 28.707062>,  <30.422754, 25.376196, 28.508219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395927, 25.507885, 28.707062>,  <30.351215, 25.727365, 29.038465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395927, 25.507885, 28.707062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316267, -0.770741, 0.553113,
		-0.942062, -0.323858, 0.087383,
		0.111781, -0.548703, -0.828511,
		30.429462, 25.343273, 28.458509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217081, 25.139927, 29.308517>,  <30.351215, 25.727365, 29.038465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217081, 25.139927, 29.308517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.380249, 25.051754, 28.954113>,  <30.478149, 24.998850, 28.741470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.380249, 25.051754, 28.954113>,  <30.217081, 25.139927, 29.308517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380249, 25.051754, 28.954113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287664, -0.889963, 0.353857,
		-0.866517, -0.399218, -0.299622,
		0.407919, -0.220433, -0.886009,
		30.502625, 24.985624, 28.688311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067263, 24.455940, 29.215212>,  <30.217081, 25.139927, 29.308517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067263, 24.455940, 29.215212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.380150, 24.518581, 28.974010>,  <30.567883, 24.556166, 28.829290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.380150, 24.518581, 28.974010>,  <30.067263, 24.455940, 29.215212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380150, 24.518581, 28.974010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363157, -0.901062, 0.237074,
		-0.506216, -0.404428, -0.761697,
		0.782216, 0.156605, -0.603003,
		30.614815, 24.565563, 28.793110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153774, 23.760006, 28.949989>,  <30.067263, 24.455940, 29.215212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153774, 23.760006, 28.949989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.487232, 23.941360, 28.823830>,  <30.687307, 24.050173, 28.748135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.487232, 23.941360, 28.823830>,  <30.153774, 23.760006, 28.949989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487232, 23.941360, 28.823830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476212, -0.879315, -0.005315,
		-0.279745, -0.145766, -0.948944,
		0.833645, 0.453385, -0.315400,
		30.737326, 24.077375, 28.729210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379833, 23.421207, 28.332695>,  <30.153774, 23.760006, 28.949989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379833, 23.421207, 28.332695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.692709, 23.555099, 28.542889>,  <30.880434, 23.635435, 28.669004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.692709, 23.555099, 28.542889>,  <30.379833, 23.421207, 28.332695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692709, 23.555099, 28.542889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290924, -0.942052, 0.167035,
		0.550945, 0.022223, -0.834245,
		0.782191, 0.334729, 0.525485,
		30.927366, 23.655518, 28.700535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867407, 22.900293, 28.091696>,  <30.379833, 23.421207, 28.332695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867407, 22.900293, 28.091696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.016390, 23.082897, 28.414898>,  <31.105780, 23.192459, 28.608818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.016390, 23.082897, 28.414898>,  <30.867407, 22.900293, 28.091696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016390, 23.082897, 28.414898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557223, -0.806249, 0.198660,
		0.742143, 0.376246, -0.554674,
		0.372460, 0.456511, 0.808005,
		31.128128, 23.219851, 28.657299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501406, 22.573812, 28.218325>,  <30.867407, 22.900293, 28.091696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501406, 22.573812, 28.218325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.406076, 22.748512, 28.565300>,  <31.348879, 22.853333, 28.773485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.406076, 22.748512, 28.565300>,  <31.501406, 22.573812, 28.218325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406076, 22.748512, 28.565300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319004, -0.808414, 0.494675,
		0.917299, 0.394610, 0.053339,
		-0.238324, 0.436750, 0.867439,
		31.334579, 22.879538, 28.825531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128616, 22.403051, 28.672003>,  <31.501406, 22.573812, 28.218325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128616, 22.403051, 28.672003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.832186, 22.486309, 28.927341>,  <31.654329, 22.536264, 29.080545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.832186, 22.486309, 28.927341>,  <32.128616, 22.403051, 28.672003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832186, 22.486309, 28.927341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405709, -0.618724, 0.672741,
		0.534989, 0.757533, 0.374073,
		-0.741072, 0.208145, 0.638348,
		31.609863, 22.548752, 29.118847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357651, 22.603449, 29.418665>,  <32.128616, 22.403051, 28.672003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357651, 22.603449, 29.418665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.985655, 22.489071, 29.511059>,  <31.762457, 22.420444, 29.566494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.985655, 22.489071, 29.511059>,  <32.357651, 22.603449, 29.418665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985655, 22.489071, 29.511059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341931, -0.442324, 0.829115,
		-0.134912, 0.850050, 0.509131,
		-0.929990, -0.285945, 0.230984,
		31.706657, 22.403288, 29.580355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317902, 22.754738, 30.123707>,  <32.357651, 22.603449, 29.418665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317902, 22.754738, 30.123707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.050156, 22.476624, 30.018997>,  <31.889507, 22.309755, 29.956171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.050156, 22.476624, 30.018997>,  <32.317902, 22.754738, 30.123707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050156, 22.476624, 30.018997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142999, -0.466341, 0.872971,
		-0.729041, 0.546903, 0.411578,
		-0.669366, -0.695286, -0.261775,
		31.849346, 22.268038, 29.940464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979301, 22.517208, 30.771460>,  <32.317902, 22.754738, 30.123707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979301, 22.517208, 30.771460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838598, 22.233639, 30.526939>,  <31.754177, 22.063496, 30.380226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.838598, 22.233639, 30.526939>,  <31.979301, 22.517208, 30.771460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838598, 22.233639, 30.526939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147704, -0.686891, 0.711593,
		-0.924364, 0.160017, 0.346331,
		-0.351758, -0.708926, -0.611302,
		31.733070, 22.020962, 30.343548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604683, 22.128040, 31.128222>,  <31.979301, 22.517208, 30.771460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604683, 22.128040, 31.128222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.680796, 21.879276, 30.824375>,  <31.726463, 21.730017, 30.642067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.680796, 21.879276, 30.824375>,  <31.604683, 22.128040, 31.128222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680796, 21.879276, 30.824375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021815, -0.770884, 0.636602,
		-0.981487, -0.137706, -0.133120,
		0.190284, -0.621912, -0.759617,
		31.737881, 21.692703, 30.596491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315777, 21.519751, 31.342844>,  <31.604683, 22.128040, 31.128222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315777, 21.519751, 31.342844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593115, 21.417656, 31.073288>,  <31.759518, 21.356400, 30.911554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.593115, 21.417656, 31.073288>,  <31.315777, 21.519751, 31.342844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593115, 21.417656, 31.073288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205949, -0.825977, 0.524735,
		-0.690550, -0.502609, -0.520121,
		0.693344, -0.255237, -0.673890,
		31.801119, 21.341085, 30.871120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265337, 20.805628, 31.266111>,  <31.315777, 21.519751, 31.342844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265337, 20.805628, 31.266111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.634979, 20.918839, 31.163406>,  <31.856764, 20.986765, 31.101784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.634979, 20.918839, 31.163406>,  <31.265337, 20.805628, 31.266111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634979, 20.918839, 31.163406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381581, -0.719757, 0.579954,
		-0.020662, -0.633913, -0.773128,
		0.924104, 0.283028, -0.256761,
		31.912210, 21.003746, 31.086378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589972, 20.219299, 31.333715>,  <31.265337, 20.805628, 31.266111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589972, 20.219299, 31.333715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.898584, 20.472973, 31.313507>,  <32.083752, 20.625177, 31.301382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.898584, 20.472973, 31.313507>,  <31.589972, 20.219299, 31.333715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898584, 20.472973, 31.313507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473659, -0.519593, 0.711105,
		0.424719, -0.572569, -0.701269,
		0.771531, 0.634182, -0.050521,
		32.130043, 20.663227, 31.298351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040871, 19.864964, 31.619022>,  <31.589972, 20.219299, 31.333715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040871, 19.864964, 31.619022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237209, 20.213306, 31.608601>,  <32.355011, 20.422312, 31.602348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.237209, 20.213306, 31.608601>,  <32.040871, 19.864964, 31.619022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237209, 20.213306, 31.608601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512342, -0.264331, 0.817089,
		0.704680, -0.414414, -0.575923,
		0.490847, 0.870856, -0.026053,
		32.384464, 20.474564, 31.600784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798782, 19.778721, 31.595203>,  <32.040871, 19.864964, 31.619022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798782, 19.778721, 31.595203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.744781, 20.147717, 31.739861>,  <32.712379, 20.369114, 31.826654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.744781, 20.147717, 31.739861>,  <32.798782, 19.778721, 31.595203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744781, 20.147717, 31.739861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611234, -0.209727, 0.763156,
		0.779850, 0.324080, -0.535543,
		-0.135006, 0.922489, 0.361645,
		32.704281, 20.424463, 31.848354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322590, 19.875763, 32.062313>,  <32.798782, 19.778721, 31.595203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322590, 19.875763, 32.062313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.088795, 20.179497, 32.176704>,  <32.948517, 20.361738, 32.245338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.088795, 20.179497, 32.176704>,  <33.322590, 19.875763, 32.062313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088795, 20.179497, 32.176704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317731, -0.110118, 0.941765,
		0.746608, 0.641313, -0.176903,
		-0.584486, 0.759337, 0.285980,
		32.913448, 20.407297, 32.262497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682018, 20.259468, 32.545940>,  <33.322590, 19.875763, 32.062313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682018, 20.259468, 32.545940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.295967, 20.338730, 32.614365>,  <33.064335, 20.386288, 32.655418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.295967, 20.338730, 32.614365>,  <33.682018, 20.259468, 32.545940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295967, 20.338730, 32.614365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117452, -0.256210, 0.959459,
		0.233949, 0.946093, 0.224002,
		-0.965129, 0.198155, 0.171061,
		33.006428, 20.398176, 32.665684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669952, 20.778648, 33.087357>,  <33.682018, 20.259468, 32.545940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669952, 20.778648, 33.087357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356205, 20.530586, 33.082153>,  <33.167957, 20.381748, 33.079029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356205, 20.530586, 33.082153>,  <33.669952, 20.778648, 33.087357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356205, 20.530586, 33.082153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307666, -0.407177, 0.859970,
		-0.538614, 0.670531, 0.510179,
		-0.784370, -0.620157, -0.013011,
		33.120895, 20.344540, 33.078251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676117, 20.278311, 33.639713>,  <33.669952, 20.778648, 33.087357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676117, 20.278311, 33.639713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.047436, 20.411888, 33.705132>,  <34.270226, 20.492035, 33.744381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.047436, 20.411888, 33.705132>,  <33.676117, 20.278311, 33.639713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047436, 20.411888, 33.705132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129202, 0.702097, -0.700262,
		-0.348673, 0.628920, 0.694900,
		0.928296, 0.333945, 0.163544,
		34.325924, 20.512072, 33.754196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647289, 21.018877, 33.899288>,  <33.676117, 20.278311, 33.639713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647289, 21.018877, 33.899288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.008598, 20.951805, 33.741310>,  <34.225384, 20.911562, 33.646523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.008598, 20.951805, 33.741310>,  <33.647289, 21.018877, 33.899288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008598, 20.951805, 33.741310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077061, 0.842107, -0.533777,
		0.422087, 0.512582, 0.747732,
		0.903274, -0.167680, -0.394942,
		34.279579, 20.901501, 33.622826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037579, 21.574810, 34.023518>,  <33.647289, 21.018877, 33.899288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037579, 21.574810, 34.023518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.221046, 21.404655, 33.711449>,  <34.331127, 21.302563, 33.524208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.221046, 21.404655, 33.711449>,  <34.037579, 21.574810, 34.023518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221046, 21.404655, 33.711449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028923, 0.884655, -0.465348,
		0.888136, 0.190875, 0.418067,
		0.458669, -0.425385, -0.780174,
		34.358646, 21.277040, 33.477398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403095, 22.061951, 33.821735>,  <34.037579, 21.574810, 34.023518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403095, 22.061951, 33.821735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.437866, 21.819077, 33.505817>,  <34.458729, 21.673351, 33.316269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.437866, 21.819077, 33.505817>,  <34.403095, 22.061951, 33.821735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437866, 21.819077, 33.505817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104088, 0.782917, -0.613358,
		0.990762, 0.135524, 0.004855,
		0.086926, -0.607186, -0.789790,
		34.463943, 21.636921, 33.268879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865566, 22.407557, 33.357567>,  <34.403095, 22.061951, 33.821735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865566, 22.407557, 33.357567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.662453, 22.140137, 33.140240>,  <34.540585, 21.979685, 33.009846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.662453, 22.140137, 33.140240>,  <34.865566, 22.407557, 33.357567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662453, 22.140137, 33.140240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034049, 0.614606, -0.788099,
		0.860809, -0.418686, -0.289326,
		-0.507787, -0.668551, -0.543315,
		34.510117, 21.939571, 32.977245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314396, 22.337145, 32.786438>,  <34.865566, 22.407557, 33.357567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314396, 22.337145, 32.786438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948421, 22.209469, 32.687641>,  <34.728836, 22.132862, 32.628361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948421, 22.209469, 32.687641>,  <35.314396, 22.337145, 32.786438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948421, 22.209469, 32.687641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047106, 0.692261, -0.720108,
		0.400838, -0.647219, -0.648411,
		-0.914937, -0.319191, -0.246996,
		34.673939, 22.113712, 32.613541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391262, 22.335121, 32.089905>,  <35.314396, 22.337145, 32.786438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391262, 22.335121, 32.089905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.995743, 22.325359, 32.148811>,  <34.758430, 22.319502, 32.184155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.995743, 22.325359, 32.148811>,  <35.391262, 22.335121, 32.089905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995743, 22.325359, 32.148811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122784, 0.693993, -0.709435,
		-0.084887, -0.719568, -0.689214,
		-0.988796, -0.024403, 0.147262,
		34.699104, 22.318039, 32.192989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117741, 22.348812, 31.389465>,  <35.391262, 22.335121, 32.089905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117741, 22.348812, 31.389465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.795937, 22.414764, 31.617706>,  <34.602856, 22.454336, 31.754650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.795937, 22.414764, 31.617706>,  <35.117741, 22.348812, 31.389465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795937, 22.414764, 31.617706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360309, 0.628254, -0.689547,
		-0.472174, -0.760337, -0.446026,
		-0.804506, 0.164879, 0.570601,
		34.554585, 22.464228, 31.788887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526833, 22.184879, 31.035332>,  <35.117741, 22.348812, 31.389465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526833, 22.184879, 31.035332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.363270, 22.421638, 31.313168>,  <34.265133, 22.563694, 31.479868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.363270, 22.421638, 31.313168>,  <34.526833, 22.184879, 31.035332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363270, 22.421638, 31.313168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469062, 0.516570, -0.716336,
		-0.782801, -0.618718, 0.066409,
		-0.408905, 0.591898, 0.694588,
		34.240597, 22.599209, 31.521544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797604, 22.356764, 30.734873>,  <34.526833, 22.184879, 31.035332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797604, 22.356764, 30.734873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.870632, 22.656307, 30.989708>,  <33.914448, 22.836033, 31.142609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.870632, 22.656307, 30.989708>,  <33.797604, 22.356764, 30.734873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870632, 22.656307, 30.989708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495780, 0.629683, -0.598081,
		-0.849041, -0.206664, 0.486229,
		0.182568, 0.748858, 0.637087,
		33.925404, 22.880964, 31.180834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209370, 22.756176, 30.750423>,  <33.797604, 22.356764, 30.734873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209370, 22.756176, 30.750423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.491444, 23.011311, 30.874279>,  <33.660690, 23.164391, 30.948593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.491444, 23.011311, 30.874279>,  <33.209370, 22.756176, 30.750423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491444, 23.011311, 30.874279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380787, 0.709093, -0.593454,
		-0.598090, 0.300590, 0.742923,
		0.705188, 0.637834, 0.309641,
		33.702999, 23.202662, 30.967171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909649, 23.327433, 31.033978>,  <33.209370, 22.756176, 30.750423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909649, 23.327433, 31.033978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262806, 23.463272, 30.904251>,  <33.474701, 23.544777, 30.826416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262806, 23.463272, 30.904251>,  <32.909649, 23.327433, 31.033978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262806, 23.463272, 30.904251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469424, 0.656296, -0.590692,
		0.012248, 0.673757, 0.738852,
		0.882888, 0.339600, -0.324316,
		33.527672, 23.565151, 30.806957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841610, 24.144712, 30.836679>,  <32.909649, 23.327433, 31.033978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841610, 24.144712, 30.836679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.182064, 24.015316, 30.671310>,  <33.386337, 23.937677, 30.572090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.182064, 24.015316, 30.671310>,  <32.841610, 24.144712, 30.836679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182064, 24.015316, 30.671310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114819, 0.653762, -0.747938,
		0.512230, 0.684068, 0.519300,
		0.851139, -0.323491, -0.413421,
		33.437405, 23.918268, 30.547285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296371, 24.769573, 30.742563>,  <32.841610, 24.144712, 30.836679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296371, 24.769573, 30.742563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410835, 24.488163, 30.482357>,  <33.479511, 24.319317, 30.326233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410835, 24.488163, 30.482357>,  <33.296371, 24.769573, 30.742563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410835, 24.488163, 30.482357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054253, 0.665919, -0.744049,
		0.956646, 0.248207, 0.152389,
		0.286156, -0.703523, -0.650515,
		33.496681, 24.277105, 30.287203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965916, 25.085373, 30.385391>,  <33.296371, 24.769573, 30.742563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965916, 25.085373, 30.385391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.802086, 24.797035, 30.161736>,  <33.703789, 24.624033, 30.027542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.802086, 24.797035, 30.161736>,  <33.965916, 25.085373, 30.385391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802086, 24.797035, 30.161736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046806, 0.628700, -0.776238,
		0.911076, -0.291754, -0.291238,
		-0.409572, -0.720844, -0.559138,
		33.679214, 24.580782, 29.993994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237091, 25.251022, 29.691116>,  <33.965916, 25.085373, 30.385391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237091, 25.251022, 29.691116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960129, 24.981529, 29.587849>,  <33.793949, 24.819834, 29.525888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.960129, 24.981529, 29.587849>,  <34.237091, 25.251022, 29.691116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960129, 24.981529, 29.587849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031621, 0.329138, -0.943752,
		0.720811, -0.661627, -0.206594,
		-0.692410, -0.673734, -0.258168,
		33.752407, 24.779409, 29.510399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391724, 24.842806, 29.131321>,  <34.237091, 25.251022, 29.691116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391724, 24.842806, 29.131321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.992065, 24.835125, 29.116634>,  <33.752270, 24.830517, 29.107822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.992065, 24.835125, 29.116634>,  <34.391724, 24.842806, 29.131321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992065, 24.835125, 29.116634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026775, 0.377001, -0.925826,
		0.031621, -0.926014, -0.376163,
		-0.999141, -0.019203, -0.036715,
		33.692322, 24.829365, 29.105619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136616, 24.572832, 28.457077>,  <34.391724, 24.842806, 29.131321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136616, 24.572832, 28.457077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.790432, 24.754280, 28.542118>,  <33.582722, 24.863150, 28.593142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.790432, 24.754280, 28.542118>,  <34.136616, 24.572832, 28.457077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790432, 24.754280, 28.542118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033165, 0.475328, -0.879183,
		-0.499872, -0.753850, -0.426424,
		-0.865464, 0.453622, 0.212602,
		33.530792, 24.890366, 28.605898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748722, 24.508448, 27.861517>,  <34.136616, 24.572832, 28.457077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748722, 24.508448, 27.861517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.584759, 24.805161, 28.073830>,  <33.486382, 24.983189, 28.201218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.584759, 24.805161, 28.073830>,  <33.748722, 24.508448, 27.861517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584759, 24.805161, 28.073830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065045, 0.556665, -0.828187,
		-0.909804, -0.374007, -0.179933,
		-0.409910, 0.741784, 0.530783,
		33.461784, 25.027697, 28.233065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297279, 24.769575, 27.382488>,  <33.748722, 24.508448, 27.861517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297279, 24.769575, 27.382488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356773, 25.078403, 27.629642>,  <33.392467, 25.263700, 27.777935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356773, 25.078403, 27.629642>,  <33.297279, 24.769575, 27.382488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356773, 25.078403, 27.629642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258539, 0.633463, -0.729303,
		-0.954482, -0.051278, 0.293826,
		0.148731, 0.772072, 0.617886,
		33.401394, 25.310024, 27.815008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.789915, 31.690380, 17.503695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.131006, 31.518497, 17.384895>,  <21.335661, 31.415369, 17.313616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.131006, 31.518497, 17.384895>,  <20.789915, 31.690380, 17.503695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.131006, 31.518497, 17.384895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418527, 0.221844, 0.880693,
		-0.312551, -0.875294, 0.369016,
		0.852729, -0.429705, -0.296996,
		21.386826, 31.389585, 17.295797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.967596, 31.005659, 17.885599>,  <20.789915, 31.690380, 17.503695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.967596, 31.005659, 17.885599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.313074, 31.145611, 17.740482>,  <21.520361, 31.229582, 17.653412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.313074, 31.145611, 17.740482>,  <20.967596, 31.005659, 17.885599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.313074, 31.145611, 17.740482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311470, 0.195392, 0.929951,
		0.396259, -0.916191, 0.059782,
		0.863693, 0.349881, -0.362791,
		21.572182, 31.250574, 17.631645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.565926, 30.659052, 18.258430>,  <20.967596, 31.005659, 17.885599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.565926, 30.659052, 18.258430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.701611, 31.007488, 18.116367>,  <21.783022, 31.216551, 18.031130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.701611, 31.007488, 18.116367>,  <21.565926, 30.659052, 18.258430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.701611, 31.007488, 18.116367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325904, 0.245338, 0.913015,
		0.882452, -0.425454, -0.200670,
		0.339213, 0.871090, -0.355156,
		21.803375, 31.268816, 18.009821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.196125, 30.713820, 18.605227>,  <21.565926, 30.659052, 18.258430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.196125, 30.713820, 18.605227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.093082, 31.079865, 18.481159>,  <22.031258, 31.299492, 18.406719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.093082, 31.079865, 18.481159>,  <22.196125, 30.713820, 18.605227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.093082, 31.079865, 18.481159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203814, 0.365241, 0.908328,
		0.944510, 0.170775, -0.280602,
		-0.257607, 0.915115, -0.310167,
		22.015800, 31.354399, 18.388109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.832472, 31.199331, 18.703920>,  <22.196125, 30.713820, 18.605227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.832472, 31.199331, 18.703920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.507559, 31.432285, 18.691109>,  <22.312611, 31.572058, 18.683422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.507559, 31.432285, 18.691109>,  <22.832472, 31.199331, 18.703920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.507559, 31.432285, 18.691109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368336, 0.554762, 0.746035,
		0.452249, 0.594192, -0.665136,
		-0.812280, 0.582387, -0.032028,
		22.263874, 31.607002, 18.681499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.038450, 31.961580, 18.751043>,  <22.832472, 31.199331, 18.703920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.038450, 31.961580, 18.751043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.654732, 31.959507, 18.863983>,  <22.424500, 31.958263, 18.931747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.654732, 31.959507, 18.863983>,  <23.038450, 31.961580, 18.751043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.654732, 31.959507, 18.863983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205951, 0.671247, 0.712048,
		-0.193217, 0.741216, -0.642858,
		-0.959297, -0.005183, 0.282350,
		22.366943, 31.957952, 18.948689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.809404, 32.661495, 18.718723>,  <23.038450, 31.961580, 18.751043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.809404, 32.661495, 18.718723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.517761, 32.494019, 18.935280>,  <22.342775, 32.393532, 19.065214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.517761, 32.494019, 18.935280>,  <22.809404, 32.661495, 18.718723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.517761, 32.494019, 18.935280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129422, 0.692424, 0.709788,
		-0.672052, 0.587579, -0.450664,
		-0.729107, -0.418688, 0.541390,
		22.299028, 32.368412, 19.097696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.302565, 33.221298, 18.906866>,  <22.809404, 32.661495, 18.718723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.302565, 33.221298, 18.906866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.229731, 32.923744, 19.164074>,  <22.186029, 32.745213, 19.318399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.229731, 32.923744, 19.164074>,  <22.302565, 33.221298, 18.906866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.229731, 32.923744, 19.164074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017630, 0.651379, 0.758548,
		-0.983125, 0.149456, -0.105491,
		-0.182084, -0.743887, 0.643022,
		22.175106, 32.700577, 19.356981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.798630, 33.533081, 19.393423>,  <22.302565, 33.221298, 18.906866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.798630, 33.533081, 19.393423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.965849, 33.208294, 19.556366>,  <22.066179, 33.013420, 19.654133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.965849, 33.208294, 19.556366>,  <21.798630, 33.533081, 19.393423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.965849, 33.208294, 19.556366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083389, 0.480829, 0.872840,
		-0.904590, -0.330919, 0.268718,
		0.418047, -0.811971, 0.407358,
		22.091263, 32.964703, 19.678574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.464603, 33.491287, 20.084303>,  <21.798630, 33.533081, 19.393423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.464603, 33.491287, 20.084303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.793427, 33.267403, 20.126148>,  <21.990721, 33.133072, 20.151255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.793427, 33.267403, 20.126148>,  <21.464603, 33.491287, 20.084303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.793427, 33.267403, 20.126148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296408, 0.577510, 0.760674,
		-0.486175, -0.594309, 0.640649,
		0.822056, -0.559714, 0.104613,
		22.040043, 33.099487, 20.157532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.456125, 33.393749, 20.806200>,  <21.464603, 33.491287, 20.084303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.456125, 33.393749, 20.806200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.821072, 33.341553, 20.650990>,  <22.040039, 33.310234, 20.557863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.821072, 33.341553, 20.650990>,  <21.456125, 33.393749, 20.806200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.821072, 33.341553, 20.650990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392671, 0.546975, 0.739343,
		0.115766, -0.826916, 0.550280,
		0.912364, -0.130488, -0.388027,
		22.094780, 33.302406, 20.534582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.799828, 33.149048, 21.305187>,  <21.456125, 33.393749, 20.806200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.799828, 33.149048, 21.305187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.082991, 33.326839, 21.085621>,  <22.252888, 33.433514, 20.953882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.082991, 33.326839, 21.085621>,  <21.799828, 33.149048, 21.305187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.082991, 33.326839, 21.085621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297026, 0.517760, 0.802310,
		0.640815, -0.731002, 0.234504,
		0.707907, 0.444478, -0.548915,
		22.295362, 33.460182, 20.920946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.373360, 33.271305, 21.687227>,  <21.799828, 33.149048, 21.305187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.373360, 33.271305, 21.687227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.464090, 33.528244, 21.394394>,  <22.518530, 33.682407, 21.218695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.464090, 33.528244, 21.394394>,  <22.373360, 33.271305, 21.687227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.464090, 33.528244, 21.394394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104465, 0.731291, 0.674018,
		0.968316, -0.229364, 0.098775,
		0.226829, 0.642344, -0.732081,
		22.532139, 33.720947, 21.174770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.975685, 33.550346, 21.950901>,  <22.373360, 33.271305, 21.687227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.975685, 33.550346, 21.950901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.830229, 33.797859, 21.672371>,  <22.742954, 33.946369, 21.505253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.830229, 33.797859, 21.672371>,  <22.975685, 33.550346, 21.950901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.830229, 33.797859, 21.672371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209019, 0.782640, 0.586333,
		0.907787, 0.067669, -0.413937,
		-0.363640, 0.618786, -0.696326,
		22.721136, 33.983494, 21.463472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.535608, 34.119381, 22.048584>,  <22.975685, 33.550346, 21.950901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.535608, 34.119381, 22.048584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.216019, 34.253445, 21.848862>,  <23.024265, 34.333881, 21.729029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.216019, 34.253445, 21.848862>,  <23.535608, 34.119381, 22.048584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.216019, 34.253445, 21.848862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085303, 0.885060, 0.457594,
		0.595283, 0.323014, -0.735731,
		-0.798976, 0.335158, -0.499307,
		22.976326, 34.353992, 21.699070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.701200, 34.859066, 21.868528>,  <23.535608, 34.119381, 22.048584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.701200, 34.859066, 21.868528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.304926, 34.804817, 21.873432>,  <23.067162, 34.772266, 21.876373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.304926, 34.804817, 21.873432>,  <23.701200, 34.859066, 21.868528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.304926, 34.804817, 21.873432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122439, 0.926525, 0.355754,
		-0.059606, 0.350939, -0.934500,
		-0.990685, -0.135624, 0.012258,
		23.007721, 34.764130, 21.877110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.374336, 35.479462, 21.577116>,  <23.701200, 34.859066, 21.868528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.374336, 35.479462, 21.577116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.119507, 35.291954, 21.821865>,  <22.966610, 35.179447, 21.968716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.119507, 35.291954, 21.821865>,  <23.374336, 35.479462, 21.577116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.119507, 35.291954, 21.821865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071885, 0.826488, 0.558346,
		-0.767443, 0.311723, -0.560232,
		-0.637074, -0.468771, 0.611875,
		22.928385, 35.151321, 22.005428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.039715, 35.980225, 21.750662>,  <23.374336, 35.479462, 21.577116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.039715, 35.980225, 21.750662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.903484, 35.707424, 22.009544>,  <22.821745, 35.543743, 22.164873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.903484, 35.707424, 22.009544>,  <23.039715, 35.980225, 21.750662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.903484, 35.707424, 22.009544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144293, 0.718118, 0.680798,
		-0.929078, 0.138477, -0.342984,
		-0.340578, -0.682005, 0.647206,
		22.801311, 35.502823, 22.203707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.416086, 36.207237, 21.846664>,  <23.039715, 35.980225, 21.750662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.416086, 36.207237, 21.846664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.498669, 35.987839, 22.170769>,  <22.548218, 35.856197, 22.365232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.498669, 35.987839, 22.170769>,  <22.416086, 36.207237, 21.846664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.498669, 35.987839, 22.170769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261744, 0.766964, 0.585881,
		-0.942797, -0.333041, 0.014779,
		0.206457, -0.548498, 0.810263,
		22.560606, 35.823288, 22.413847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.880266, 36.201492, 22.342148>,  <22.416086, 36.207237, 21.846664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.880266, 36.201492, 22.342148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.207943, 36.115814, 22.554955>,  <22.404549, 36.064407, 22.682638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.207943, 36.115814, 22.554955>,  <21.880266, 36.201492, 22.342148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.207943, 36.115814, 22.554955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194376, 0.769050, 0.608918,
		-0.539573, -0.602233, 0.588367,
		0.819194, -0.214191, 0.532018,
		22.453701, 36.051556, 22.714560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.673105, 36.314629, 22.922516>,  <21.880266, 36.201492, 22.342148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.673105, 36.314629, 22.922516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.071121, 36.340992, 22.952320>,  <22.309931, 36.356812, 22.970201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.071121, 36.340992, 22.952320>,  <21.673105, 36.314629, 22.922516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.071121, 36.340992, 22.952320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093204, 0.879520, 0.466644,
		-0.034775, -0.471274, 0.881301,
		0.995040, 0.065913, 0.074510,
		22.369633, 36.360767, 22.974672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.738371, 35.784740, 23.450323>,  <21.673105, 36.314629, 22.922516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.738371, 35.784740, 23.450323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.470255, 35.901154, 23.723385>,  <21.309385, 35.971001, 23.887222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.470255, 35.901154, 23.723385>,  <21.738371, 35.784740, 23.450323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.470255, 35.901154, 23.723385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630195, -0.708992, -0.316519,
		0.391878, -0.642364, 0.658635,
		-0.670288, 0.291032, 0.682653,
		21.269169, 35.988464, 23.928181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.493660, 35.225231, 23.908422>,  <21.738371, 35.784740, 23.450323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.493660, 35.225231, 23.908422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.221779, 35.516659, 23.874496>,  <21.058649, 35.691513, 23.854141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.221779, 35.516659, 23.874496>,  <21.493660, 35.225231, 23.908422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.221779, 35.516659, 23.874496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685465, -0.672095, -0.280046,
		-0.261036, -0.132210, 0.956232,
		-0.679704, 0.728567, -0.084816,
		21.017868, 35.735229, 23.849052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.791813, 34.999203, 24.114164>,  <21.493660, 35.225231, 23.908422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.791813, 34.999203, 24.114164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.678312, 35.323208, 23.908890>,  <20.610212, 35.517612, 23.785725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.678312, 35.323208, 23.908890>,  <20.791813, 34.999203, 24.114164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.678312, 35.323208, 23.908890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742448, -0.524281, -0.417013,
		-0.606841, 0.262687, 0.750159,
		-0.283750, 0.810016, -0.513187,
		20.593187, 35.566212, 23.754934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.066927, 35.181416, 24.223015>,  <20.791813, 34.999203, 24.114164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.066927, 35.181416, 24.223015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.169416, 35.326946, 23.864803>,  <20.230911, 35.414265, 23.649876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.169416, 35.326946, 23.864803>,  <20.066927, 35.181416, 24.223015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.169416, 35.326946, 23.864803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789094, -0.456357, -0.411179,
		-0.558282, 0.812013, 0.170166,
		0.256226, 0.363831, -0.895531,
		20.246284, 35.436096, 23.596144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.418274, 35.207657, 23.908587>,  <20.066927, 35.181416, 24.223015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.418274, 35.207657, 23.908587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.640711, 35.267941, 23.581650>,  <19.774174, 35.304111, 23.385489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.640711, 35.267941, 23.581650>,  <19.418274, 35.207657, 23.908587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.640711, 35.267941, 23.581650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705151, -0.434975, -0.559964,
		-0.439913, 0.887742, -0.135616,
		0.556093, 0.150706, -0.817342,
		19.807539, 35.313152, 23.336447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.958269, 35.401375, 23.421289>,  <19.418274, 35.207657, 23.908587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.958269, 35.401375, 23.421289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.271248, 35.256317, 23.218800>,  <19.459036, 35.169281, 23.097305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.271248, 35.256317, 23.218800>,  <18.958269, 35.401375, 23.421289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.271248, 35.256317, 23.218800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622521, -0.435257, -0.650399,
		0.015525, 0.824039, -0.566320,
		0.782449, -0.362643, -0.506224,
		19.505983, 35.147526, 23.066933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.890055, 35.693581, 22.665689>,  <18.958269, 35.401375, 23.421289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.890055, 35.693581, 22.665689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.095108, 35.352016, 22.701546>,  <19.218140, 35.147076, 22.723059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.095108, 35.352016, 22.701546>,  <18.890055, 35.693581, 22.665689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.095108, 35.352016, 22.701546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460556, -0.361585, -0.810644,
		0.724633, 0.374281, -0.578637,
		0.512636, -0.853914, 0.089639,
		19.248899, 35.095840, 22.728437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.981289, 35.497887, 22.026220>,  <18.890055, 35.693581, 22.665689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.981289, 35.497887, 22.026220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.078014, 35.140896, 22.178543>,  <19.136049, 34.926701, 22.269936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.078014, 35.140896, 22.178543>,  <18.981289, 35.497887, 22.026220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.078014, 35.140896, 22.178543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387553, -0.448624, -0.805319,
		0.889567, 0.047155, -0.454365,
		0.241814, -0.892476, 0.380806,
		19.150558, 34.873154, 22.292786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.202612, 35.073135, 21.477386>,  <18.981289, 35.497887, 22.026220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.202612, 35.073135, 21.477386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.120260, 34.803875, 21.761494>,  <19.070848, 34.642319, 21.931957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.120260, 34.803875, 21.761494>,  <19.202612, 35.073135, 21.477386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.120260, 34.803875, 21.761494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244136, -0.667533, -0.703418,
		0.947634, -0.318222, -0.026908,
		-0.205881, -0.673152, 0.710267,
		19.058496, 34.601929, 21.974573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.444574, 34.448803, 21.199385>,  <19.202612, 35.073135, 21.477386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.444574, 34.448803, 21.199385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.213305, 34.327290, 21.502285>,  <19.074543, 34.254383, 21.684025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.213305, 34.327290, 21.502285>,  <19.444574, 34.448803, 21.199385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.213305, 34.327290, 21.502285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409499, -0.694705, -0.591350,
		0.705710, -0.651997, 0.277260,
		-0.578173, -0.303784, 0.757253,
		19.039852, 34.236153, 21.729462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.438402, 33.723049, 21.260569>,  <19.444574, 34.448803, 21.199385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.438402, 33.723049, 21.260569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.104267, 33.851650, 21.438938>,  <18.903786, 33.928810, 21.545959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.104267, 33.851650, 21.438938>,  <19.438402, 33.723049, 21.260569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.104267, 33.851650, 21.438938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528727, -0.691967, -0.491559,
		0.150526, -0.646389, 0.748013,
		-0.835338, 0.321502, 0.445923,
		18.853666, 33.948101, 21.572716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.156927, 33.165047, 21.609333>,  <19.438402, 33.723049, 21.260569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.156927, 33.165047, 21.609333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.862679, 33.423599, 21.528294>,  <18.686129, 33.578732, 21.479670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.862679, 33.423599, 21.528294>,  <19.156927, 33.165047, 21.609333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.862679, 33.423599, 21.528294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481827, -0.709520, -0.514222,
		-0.476133, -0.280656, 0.833385,
		-0.735622, 0.646385, -0.202599,
		18.641993, 33.617516, 21.467514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.541580, 32.743637, 21.470181>,  <19.156927, 33.165047, 21.609333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.541580, 32.743637, 21.470181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.439865, 33.088436, 21.294773>,  <18.378836, 33.295315, 21.189528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.439865, 33.088436, 21.294773>,  <18.541580, 32.743637, 21.470181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.439865, 33.088436, 21.294773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187739, -0.488798, -0.851957,
		-0.948731, -0.134316, 0.286127,
		-0.254290, 0.861996, -0.438521,
		18.363579, 33.347034, 21.163218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.889841, 32.674675, 21.087315>,  <18.541580, 32.743637, 21.470181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.889841, 32.674675, 21.087315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.058174, 32.996704, 20.920101>,  <18.159174, 33.189922, 20.819773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.058174, 32.996704, 20.920101>,  <17.889841, 32.674675, 21.087315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.058174, 32.996704, 20.920101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236144, -0.347717, -0.907375,
		-0.875864, 0.480568, 0.043784,
		0.420831, 0.805076, -0.418036,
		18.184423, 33.238228, 20.794691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.437809, 32.759651, 20.530258>,  <17.889841, 32.674675, 21.087315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.437809, 32.759651, 20.530258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.766562, 32.978012, 20.465134>,  <17.963812, 33.109028, 20.426060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.766562, 32.978012, 20.465134>,  <17.437809, 32.759651, 20.530258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.766562, 32.978012, 20.465134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037937, -0.232715, -0.971805,
		-0.568396, 0.804883, -0.170553,
		0.821880, 0.545900, -0.162809,
		18.013126, 33.141781, 20.416290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.274679, 33.032272, 19.947502>,  <17.437809, 32.759651, 20.530258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.274679, 33.032272, 19.947502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.671268, 33.046150, 19.997742>,  <17.909222, 33.054478, 20.027885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.671268, 33.046150, 19.997742>,  <17.274679, 33.032272, 19.947502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.671268, 33.046150, 19.997742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129238, -0.384722, -0.913940,
		0.016614, 0.922380, -0.385926,
		0.991474, 0.034692, 0.125599,
		17.968710, 33.056557, 20.035421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.638607, 33.240742, 19.252680>,  <17.274679, 33.032272, 19.947502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.638607, 33.240742, 19.252680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.901815, 33.061859, 19.495007>,  <18.059740, 32.954529, 19.640402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.901815, 33.061859, 19.495007>,  <17.638607, 33.240742, 19.252680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.901815, 33.061859, 19.495007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332729, -0.549052, -0.766703,
		0.675498, 0.706081, -0.212491,
		0.658023, -0.447204, 0.605817,
		18.099222, 32.927696, 19.676752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.353622, 33.280212, 18.916510>,  <17.638607, 33.240742, 19.252680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.353622, 33.280212, 18.916510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.415642, 32.980778, 19.174370>,  <18.452854, 32.801117, 19.329086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.415642, 32.980778, 19.174370>,  <18.353622, 33.280212, 18.916510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.415642, 32.980778, 19.174370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640734, -0.420480, -0.642384,
		0.751944, 0.512650, 0.414452,
		0.155050, -0.748590, 0.644649,
		18.462156, 32.756199, 19.367765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.088434, 33.018120, 18.744356>,  <18.353622, 33.280212, 18.916510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.088434, 33.018120, 18.744356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.890087, 32.727013, 18.933868>,  <18.771080, 32.552349, 19.047577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.890087, 32.727013, 18.933868>,  <19.088434, 33.018120, 18.744356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.890087, 32.727013, 18.933868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412961, -0.677563, -0.608582,
		0.763924, -0.106121, 0.636521,
		-0.495866, -0.727769, 0.473783,
		18.741327, 32.508682, 19.076004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.623863, 32.495014, 18.758177>,  <19.088434, 33.018120, 18.744356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.623863, 32.495014, 18.758177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.285740, 32.298126, 18.841290>,  <19.082867, 32.179993, 18.891157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.285740, 32.298126, 18.841290>,  <19.623863, 32.495014, 18.758177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.285740, 32.298126, 18.841290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306935, -0.765705, -0.565231,
		0.437318, -0.414019, 0.798336,
		-0.845307, -0.492223, 0.207780,
		19.032148, 32.150459, 18.903624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.819241, 31.839672, 19.013464>,  <19.623863, 32.495014, 18.758177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.819241, 31.839672, 19.013464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.452829, 31.850822, 18.853405>,  <19.232983, 31.857513, 18.757370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.452829, 31.850822, 18.853405>,  <19.819241, 31.839672, 19.013464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.452829, 31.850822, 18.853405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265980, -0.704508, -0.657970,
		-0.300246, -0.709149, 0.637935,
		-0.916028, 0.027875, -0.400145,
		19.178020, 31.859184, 18.733362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.244143, 28.256258, 25.233950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457973, 28.439281, 25.518166>,  <28.586271, 28.549095, 25.688696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457973, 28.439281, 25.518166>,  <28.244143, 28.256258, 25.233950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.457973, 28.439281, 25.518166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140305, 0.877140, -0.459282,
		-0.833391, 0.145830, 0.533097,
		0.534578, 0.457558, 0.710540,
		28.618347, 28.576550, 25.731327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958162, 28.826946, 25.134430>,  <28.244143, 28.256258, 25.233950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958162, 28.826946, 25.134430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284424, 28.897617, 25.354790>,  <28.480181, 28.940020, 25.487005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284424, 28.897617, 25.354790>,  <27.958162, 28.826946, 25.134430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284424, 28.897617, 25.354790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078718, 0.909481, -0.408226,
		-0.573157, 0.376337, 0.727916,
		0.815656, 0.176677, 0.550900,
		28.529121, 28.950621, 25.520060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903215, 29.467827, 25.396214>,  <27.958162, 28.826946, 25.134430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903215, 29.467827, 25.396214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298006, 29.418602, 25.437660>,  <28.534880, 29.389067, 25.462528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298006, 29.418602, 25.437660>,  <27.903215, 29.467827, 25.396214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298006, 29.418602, 25.437660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155110, 0.898808, -0.409981,
		-0.042679, 0.420713, 0.906189,
		0.986975, -0.123061, 0.103617,
		28.594099, 29.381683, 25.468746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317661, 30.048784, 25.800303>,  <27.903215, 29.467827, 25.396214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317661, 30.048784, 25.800303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578821, 29.887520, 25.543808>,  <28.735518, 29.790762, 25.389912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578821, 29.887520, 25.543808>,  <28.317661, 30.048784, 25.800303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.578821, 29.887520, 25.543808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134544, 0.894845, -0.425617,
		0.745399, 0.191610, 0.638487,
		0.652899, -0.403159, -0.641237,
		28.774691, 29.766573, 25.351437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701155, 30.718674, 25.709608>,  <28.317661, 30.048784, 25.800303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701155, 30.718674, 25.709608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783207, 30.428318, 25.447002>,  <28.832438, 30.254105, 25.289440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783207, 30.428318, 25.447002>,  <28.701155, 30.718674, 25.709608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783207, 30.428318, 25.447002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229262, 0.687751, -0.688794,
		0.951505, -0.009222, 0.307496,
		0.205128, -0.725888, -0.656513,
		28.844746, 30.210552, 25.250048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407412, 30.882271, 25.380966>,  <28.701155, 30.718674, 25.709608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407412, 30.882271, 25.380966> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207531, 30.657722, 25.117100>,  <29.087603, 30.522993, 24.958780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207531, 30.657722, 25.117100>,  <29.407412, 30.882271, 25.380966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207531, 30.657722, 25.117100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229633, 0.648462, -0.725786,
		0.835205, -0.514157, -0.195127,
		-0.499701, -0.561373, -0.659666,
		29.057621, 30.489311, 24.919201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826492, 30.900881, 24.764078>,  <29.407412, 30.882271, 25.380966>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826492, 30.900881, 24.764078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469500, 30.777382, 24.632534>,  <29.255304, 30.703281, 24.553608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469500, 30.777382, 24.632534>,  <29.826492, 30.900881, 24.764078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469500, 30.777382, 24.632534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052665, 0.652739, -0.755750,
		0.447994, -0.691815, -0.566299,
		-0.892484, -0.308747, -0.328858,
		29.201754, 30.684757, 24.533876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876234, 30.867308, 24.059889>,  <29.826492, 30.900881, 24.764078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876234, 30.867308, 24.059889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479830, 30.878647, 24.112183>,  <29.241987, 30.885450, 24.143559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479830, 30.878647, 24.112183>,  <29.876234, 30.867308, 24.059889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479830, 30.878647, 24.112183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071059, 0.716448, -0.694012,
		-0.113340, -0.697064, -0.707994,
		-0.991012, 0.028349, 0.130735,
		29.182526, 30.887152, 24.151403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606733, 30.813581, 23.386864>,  <29.876234, 30.867308, 24.059889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606733, 30.813581, 23.386864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312626, 30.967648, 23.609943>,  <29.136162, 31.060087, 23.743792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312626, 30.967648, 23.609943>,  <29.606733, 30.813581, 23.386864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312626, 30.967648, 23.609943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159184, 0.701686, -0.694476,
		-0.658817, -0.599404, -0.454617,
		-0.735270, 0.385165, 0.557698,
		29.092045, 31.083197, 23.777252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020876, 31.006361, 22.886559>,  <29.606733, 30.813581, 23.386864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020876, 31.006361, 22.886559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979559, 31.200890, 23.233620>,  <28.954769, 31.317606, 23.441856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979559, 31.200890, 23.233620>,  <29.020876, 31.006361, 22.886559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979559, 31.200890, 23.233620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119611, 0.859916, -0.496223,
		-0.987433, -0.155038, -0.030654,
		-0.103293, 0.486320, 0.867654,
		28.948570, 31.346786, 23.493916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455242, 31.427095, 22.842762>,  <29.020876, 31.006361, 22.886559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455242, 31.427095, 22.842762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658846, 31.588165, 23.147068>,  <28.781008, 31.684807, 23.329651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658846, 31.588165, 23.147068>,  <28.455242, 31.427095, 22.842762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658846, 31.588165, 23.147068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078140, 0.901795, -0.425041,
		-0.857206, 0.156905, 0.490488,
		0.509011, 0.402675, 0.760764,
		28.811548, 31.708967, 23.375298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952780, 31.943651, 22.928408>,  <28.455242, 31.427095, 22.842762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952780, 31.943651, 22.928408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281752, 32.059910, 23.124012>,  <28.479136, 32.129665, 23.241375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281752, 32.059910, 23.124012>,  <27.952780, 31.943651, 22.928408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281752, 32.059910, 23.124012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174339, 0.947040, -0.269669,
		-0.541492, 0.136530, 0.829545,
		0.822430, 0.290646, 0.489012,
		28.528481, 32.147102, 23.270716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702250, 32.366375, 23.456554>,  <27.952780, 31.943651, 22.928408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702250, 32.366375, 23.456554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082127, 32.457432, 23.370522>,  <28.310053, 32.512066, 23.318903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082127, 32.457432, 23.370522>,  <27.702250, 32.366375, 23.456554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082127, 32.457432, 23.370522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276504, 0.931953, -0.234543,
		0.147054, 0.282215, 0.948014,
		0.949695, 0.227639, -0.215081,
		28.367035, 32.525723, 23.305998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742031, 33.050640, 23.737469>,  <27.702250, 32.366375, 23.456554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742031, 33.050640, 23.737469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097870, 32.977882, 23.569881>,  <28.311373, 32.934227, 23.469330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097870, 32.977882, 23.569881>,  <27.742031, 33.050640, 23.737469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097870, 32.977882, 23.569881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101090, 0.972944, -0.207750,
		0.445421, 0.142460, 0.883915,
		0.889596, -0.181891, -0.418968,
		28.364748, 32.923317, 23.444191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625774, 33.802910, 23.809711>,  <27.742031, 33.050640, 23.737469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625774, 33.802910, 23.809711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370834, 33.989349, 24.055161>,  <27.217871, 34.101215, 24.202431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370834, 33.989349, 24.055161>,  <27.625774, 33.802910, 23.809711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370834, 33.989349, 24.055161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722734, 0.085368, 0.685834,
		0.267286, 0.880602, -0.391278,
		-0.637349, 0.466103, 0.613623,
		27.179630, 34.129181, 24.239248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.972822, 34.390217, 24.078255>,  <27.625774, 33.802910, 23.809711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.972822, 34.390217, 24.078255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716764, 34.236885, 24.344570>,  <27.563129, 34.144886, 24.504360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716764, 34.236885, 24.344570>,  <27.972822, 34.390217, 24.078255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716764, 34.236885, 24.344570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746079, -0.103475, 0.657769,
		-0.183248, 0.917798, 0.352231,
		-0.640146, -0.383327, 0.665788,
		27.524721, 34.121887, 24.544306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262672, 34.729717, 24.678926>,  <27.972822, 34.390217, 24.078255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262672, 34.729717, 24.678926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023838, 34.432877, 24.800758>,  <27.880537, 34.254772, 24.873857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023838, 34.432877, 24.800758>,  <28.262672, 34.729717, 24.678926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023838, 34.432877, 24.800758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544117, -0.095683, 0.833536,
		-0.589426, 0.663422, 0.460921,
		-0.597088, -0.742103, 0.304581,
		27.844711, 34.210247, 24.892132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322659, 34.700081, 25.330725>,  <28.262672, 34.729717, 24.678926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322659, 34.700081, 25.330725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161776, 34.336853, 25.284023>,  <28.065247, 34.118916, 25.256002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161776, 34.336853, 25.284023>,  <28.322659, 34.700081, 25.330725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161776, 34.336853, 25.284023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527168, -0.333960, 0.781387,
		-0.748547, 0.252731, 0.613028,
		-0.402208, -0.908074, -0.116753,
		28.041113, 34.064430, 25.248997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254915, 34.487743, 25.992907>,  <28.322659, 34.700081, 25.330725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254915, 34.487743, 25.992907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219936, 34.157024, 25.770641>,  <28.198948, 33.958595, 25.637281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219936, 34.157024, 25.770641>,  <28.254915, 34.487743, 25.992907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219936, 34.157024, 25.770641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536148, -0.509184, 0.673259,
		-0.839582, -0.239043, 0.487812,
		-0.087448, -0.826795, -0.555664,
		28.193703, 33.908985, 25.603943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015602, 33.944656, 26.505056>,  <28.254915, 34.487743, 25.992907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015602, 33.944656, 26.505056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182346, 33.761147, 26.191177>,  <28.282393, 33.651039, 26.002850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182346, 33.761147, 26.191177>,  <28.015602, 33.944656, 26.505056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182346, 33.761147, 26.191177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414645, -0.672252, 0.613308,
		-0.808887, -0.581034, -0.090004,
		0.416858, -0.458777, -0.784699,
		28.307404, 33.623512, 25.955767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921412, 33.227932, 26.621351>,  <28.015602, 33.944656, 26.505056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921412, 33.227932, 26.621351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211201, 33.246555, 26.346260>,  <28.385075, 33.257729, 26.181206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211201, 33.246555, 26.346260>,  <27.921412, 33.227932, 26.621351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.211201, 33.246555, 26.346260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424396, -0.816321, 0.391802,
		-0.543165, -0.575719, -0.611162,
		0.724472, 0.046562, -0.687730,
		28.428543, 33.260525, 26.139940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999481, 32.554245, 26.359007>,  <27.921412, 33.227932, 26.621351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999481, 32.554245, 26.359007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337200, 32.755894, 26.286316>,  <28.539831, 32.876884, 26.242701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337200, 32.755894, 26.286316>,  <27.999481, 32.554245, 26.359007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337200, 32.755894, 26.286316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533727, -0.760723, 0.369371,
		0.047964, -0.408851, -0.911340,
		0.844295, 0.504124, -0.181727,
		28.590488, 32.907131, 26.231798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489735, 32.041466, 26.197203>,  <27.999481, 32.554245, 26.359007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489735, 32.041466, 26.197203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720602, 32.351677, 26.299519>,  <28.859123, 32.537804, 26.360909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720602, 32.351677, 26.299519>,  <28.489735, 32.041466, 26.197203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720602, 32.351677, 26.299519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600097, -0.615232, 0.511246,
		0.553858, -0.141576, -0.820487,
		0.577170, 0.775529, 0.255792,
		28.893753, 32.584335, 26.376257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163187, 31.833740, 26.027348>,  <28.489735, 32.041466, 26.197203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163187, 31.833740, 26.027348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177460, 32.107807, 26.318352>,  <29.186024, 32.272247, 26.492954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177460, 32.107807, 26.318352>,  <29.163187, 31.833740, 26.027348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177460, 32.107807, 26.318352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487463, -0.647431, 0.585844,
		0.872414, 0.333731, -0.357095,
		0.035680, 0.685169, 0.727509,
		29.188164, 32.313358, 26.536604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784473, 31.852955, 26.305437>,  <29.163187, 31.833740, 26.027348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784473, 31.852955, 26.305437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575817, 32.026588, 26.599228>,  <29.450623, 32.130768, 26.775503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575817, 32.026588, 26.599228>,  <29.784473, 31.852955, 26.305437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575817, 32.026588, 26.599228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474479, -0.567869, 0.672602,
		0.709055, 0.699353, 0.090260,
		-0.521643, 0.434085, 0.734479,
		29.419325, 32.156815, 26.819572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188946, 31.672503, 26.831808>,  <29.784473, 31.852955, 26.305437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188946, 31.672503, 26.831808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861980, 31.794643, 27.027195>,  <29.665802, 31.867928, 27.144426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861980, 31.794643, 27.027195>,  <30.188946, 31.672503, 26.831808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861980, 31.794643, 27.027195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141378, -0.715677, 0.683973,
		0.558436, 0.628146, 0.541833,
		-0.817412, 0.305352, 0.488466,
		29.616756, 31.886250, 27.173735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367996, 31.711357, 27.543816>,  <30.188946, 31.672503, 26.831808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367996, 31.711357, 27.543816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968815, 31.686066, 27.547642>,  <29.729305, 31.670891, 27.549938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968815, 31.686066, 27.547642>,  <30.367996, 31.711357, 27.543816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968815, 31.686066, 27.547642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046638, -0.617290, 0.785352,
		-0.043752, 0.784191, 0.618975,
		-0.997953, -0.063228, 0.009565,
		29.669430, 31.667097, 27.550510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187090, 31.859423, 28.246178>,  <30.367996, 31.711357, 27.543816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187090, 31.859423, 28.246178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883390, 31.670811, 28.066757>,  <29.701170, 31.557644, 27.959105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.883390, 31.670811, 28.066757>,  <30.187090, 31.859423, 28.246178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883390, 31.670811, 28.066757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072240, -0.623910, 0.778150,
		-0.646778, 0.623213, 0.439640,
		-0.759249, -0.471531, -0.448552,
		29.655615, 31.529352, 27.932192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390226, 32.381371, 28.701935>,  <30.187090, 31.859423, 28.246178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390226, 32.381371, 28.701935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755396, 32.395416, 28.864582>,  <30.974497, 32.403843, 28.962172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755396, 32.395416, 28.864582>,  <30.390226, 32.381371, 28.701935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755396, 32.395416, 28.864582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205447, 0.821327, -0.532177,
		-0.352653, 0.569376, 0.742595,
		0.912922, 0.035110, 0.406620,
		31.029272, 32.405949, 28.986568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680021, 33.137135, 28.811337>,  <30.390226, 32.381371, 28.701935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680021, 33.137135, 28.811337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005091, 32.904045, 28.811489>,  <31.200132, 32.764191, 28.811581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005091, 32.904045, 28.811489>,  <30.680021, 33.137135, 28.811337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005091, 32.904045, 28.811489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443262, 0.617758, -0.649534,
		0.378260, 0.528028, 0.760333,
		0.812673, -0.582720, 0.000381,
		31.248892, 32.729229, 28.811604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298304, 33.618572, 28.857059>,  <30.680021, 33.137135, 28.811337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298304, 33.618572, 28.857059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423557, 33.262955, 28.723465>,  <31.498709, 33.049583, 28.643309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423557, 33.262955, 28.723465>,  <31.298304, 33.618572, 28.857059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423557, 33.262955, 28.723465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513922, 0.454357, -0.727629,
		0.798643, 0.056203, 0.599175,
		0.313134, -0.889045, -0.333985,
		31.517498, 32.996243, 28.623270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137859, 33.678894, 28.781624>,  <31.298304, 33.618572, 28.857059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137859, 33.678894, 28.781624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011024, 33.360382, 28.575558>,  <31.934923, 33.169277, 28.451918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011024, 33.360382, 28.575558>,  <32.137859, 33.678894, 28.781624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011024, 33.360382, 28.575558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464514, 0.343186, -0.816364,
		0.826850, -0.498163, 0.261061,
		-0.317090, -0.796276, -0.515167,
		31.915897, 33.121498, 28.421007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744690, 33.251671, 28.609177>,  <32.137859, 33.678894, 28.781624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744690, 33.251671, 28.609177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451084, 33.202930, 28.341930>,  <32.274921, 33.173687, 28.181583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451084, 33.202930, 28.341930>,  <32.744690, 33.251671, 28.609177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451084, 33.202930, 28.341930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616100, 0.294437, -0.730567,
		0.285730, -0.947872, -0.141056,
		-0.734016, -0.121840, -0.668113,
		32.230881, 33.166374, 28.141497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104038, 33.100964, 28.034866>,  <32.744690, 33.251671, 28.609177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104038, 33.100964, 28.034866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745373, 33.134136, 27.860920>,  <32.530174, 33.154041, 27.756552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745373, 33.134136, 27.860920>,  <33.104038, 33.100964, 28.034866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745373, 33.134136, 27.860920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438902, 0.295011, -0.848724,
		0.057902, -0.951887, -0.300928,
		-0.896667, 0.082935, -0.434867,
		32.476372, 33.159016, 27.730459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171562, 32.697739, 27.409800>,  <33.104038, 33.100964, 28.034866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171562, 32.697739, 27.409800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858986, 32.939484, 27.347710>,  <32.671440, 33.084530, 27.310455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858986, 32.939484, 27.347710>,  <33.171562, 32.697739, 27.409800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858986, 32.939484, 27.347710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405457, 0.302724, -0.862533,
		-0.474294, -0.736954, -0.481605,
		-0.781441, 0.604364, -0.155223,
		32.624554, 33.120792, 27.301144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770344, 32.585918, 26.779760>,  <33.171562, 32.697739, 27.409800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770344, 32.585918, 26.779760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689621, 32.970757, 26.853130>,  <32.641186, 33.201660, 26.897152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689621, 32.970757, 26.853130>,  <32.770344, 32.585918, 26.779760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689621, 32.970757, 26.853130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201085, 0.223991, -0.953621,
		-0.958560, -0.155566, -0.238667,
		-0.201811, 0.962095, 0.183427,
		32.629078, 33.259384, 26.908159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366158, 32.883709, 26.145878>,  <32.770344, 32.585918, 26.779760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366158, 32.883709, 26.145878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505775, 33.200115, 26.346859>,  <32.589546, 33.389961, 26.467447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505775, 33.200115, 26.346859>,  <32.366158, 32.883709, 26.145878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505775, 33.200115, 26.346859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200126, 0.460885, -0.864601,
		-0.915489, 0.402335, 0.002564,
		0.349041, 0.791020, 0.502453,
		32.610489, 33.437420, 26.497595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072948, 33.475143, 25.850479>,  <32.366158, 32.883709, 26.145878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072948, 33.475143, 25.850479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397686, 33.624352, 26.030155>,  <32.592529, 33.713879, 26.137960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397686, 33.624352, 26.030155>,  <32.072948, 33.475143, 25.850479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397686, 33.624352, 26.030155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194838, 0.552146, -0.810662,
		-0.550412, 0.745647, 0.375575,
		0.811840, 0.373022, 0.449189,
		32.641239, 33.736259, 26.164911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094627, 34.100094, 25.653189>,  <32.072948, 33.475143, 25.850479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094627, 34.100094, 25.653189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465160, 34.065117, 25.799751>,  <32.687481, 34.044128, 25.887690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465160, 34.065117, 25.799751>,  <32.094627, 34.100094, 25.653189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465160, 34.065117, 25.799751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340861, 0.608643, -0.716496,
		-0.160356, 0.788611, 0.593615,
		0.926337, -0.087446, 0.366406,
		32.743061, 34.038883, 25.909674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346889, 34.759937, 25.792074>,  <32.094627, 34.100094, 25.653189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346889, 34.759937, 25.792074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661373, 34.519638, 25.734142>,  <32.850063, 34.375458, 25.699383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661373, 34.519638, 25.734142>,  <32.346889, 34.759937, 25.792074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661373, 34.519638, 25.734142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387707, 0.662026, -0.641409,
		0.481206, 0.448130, 0.753406,
		0.786209, -0.600750, -0.144828,
		32.897236, 34.339413, 25.690695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.527853, 31.111662, 32.076004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.845903, 30.871902, 32.039127>,  <30.036734, 30.728046, 32.017002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.845903, 30.871902, 32.039127>,  <29.527853, 31.111662, 32.076004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845903, 30.871902, 32.039127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358701, 0.587412, -0.725452,
		0.488989, 0.543754, 0.682071,
		0.795124, -0.599398, -0.092193,
		30.084440, 30.692083, 32.011471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059275, 31.498192, 32.140854>,  <29.527853, 31.111662, 32.076004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059275, 31.498192, 32.140854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.226948, 31.180611, 31.964706>,  <30.327551, 30.990061, 31.859018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.226948, 31.180611, 31.964706>,  <30.059275, 31.498192, 32.140854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226948, 31.180611, 31.964706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551635, 0.607966, -0.571030,
		0.721100, -0.003556, 0.692822,
		0.419182, -0.793955, -0.440366,
		30.352703, 30.942425, 31.832596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846830, 31.523388, 32.106789>,  <30.059275, 31.498192, 32.140854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846830, 31.523388, 32.106789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.744164, 31.272091, 31.813004>,  <30.682564, 31.121313, 31.636734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.744164, 31.272091, 31.813004>,  <30.846830, 31.523388, 32.106789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744164, 31.272091, 31.813004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481519, 0.575771, -0.660778,
		0.838010, -0.523257, 0.154730,
		-0.256668, -0.628244, -0.734460,
		30.667164, 31.083618, 31.592665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363472, 31.546057, 31.682716>,  <30.846830, 31.523388, 32.106789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363472, 31.546057, 31.682716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.086466, 31.388405, 31.441029>,  <30.920261, 31.293814, 31.296017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.086466, 31.388405, 31.441029>,  <31.363472, 31.546057, 31.682716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086466, 31.388405, 31.441029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385570, 0.505676, -0.771769,
		0.609718, -0.767432, -0.198224,
		-0.692517, -0.394132, -0.604219,
		30.878710, 31.270166, 31.259764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724514, 31.416065, 31.006481>,  <31.363472, 31.546057, 31.682716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724514, 31.416065, 31.006481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.337549, 31.393986, 30.907635>,  <31.105370, 31.380737, 30.848328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.337549, 31.393986, 30.907635>,  <31.724514, 31.416065, 31.006481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337549, 31.393986, 30.907635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222953, 0.276897, -0.934677,
		0.120019, -0.959313, -0.255567,
		-0.967413, -0.055199, -0.247114,
		31.047325, 31.377426, 30.833500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666113, 31.013561, 30.367002>,  <31.724514, 31.416065, 31.006481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666113, 31.013561, 30.367002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.326418, 31.223049, 30.393879>,  <31.122601, 31.348742, 30.410006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.326418, 31.223049, 30.393879>,  <31.666113, 31.013561, 30.367002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326418, 31.223049, 30.393879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130533, 0.331540, -0.934367,
		-0.511624, -0.784728, -0.349918,
		-0.849236, 0.523721, 0.067191,
		31.071648, 31.380165, 30.414036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410917, 30.952414, 29.623699>,  <31.666113, 31.013561, 30.367002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410917, 30.952414, 29.623699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.220083, 31.254601, 29.803326>,  <31.105583, 31.435913, 29.911102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.220083, 31.254601, 29.803326>,  <31.410917, 30.952414, 29.623699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220083, 31.254601, 29.803326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045160, 0.489218, -0.870992,
		-0.877697, -0.435815, -0.199280,
		-0.477083, 0.755467, 0.449066,
		31.076958, 31.481241, 29.938046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033497, 31.158953, 29.046534>,  <31.410917, 30.952414, 29.623699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033497, 31.158953, 29.046534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.046551, 31.441528, 29.329342>,  <31.054382, 31.611074, 29.499027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.046551, 31.441528, 29.329342>,  <31.033497, 31.158953, 29.046534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046551, 31.441528, 29.329342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030361, 0.707771, -0.705790,
		-0.999006, 0.001567, 0.044546,
		0.032634, 0.706440, 0.707020,
		31.056341, 31.653460, 29.541449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537088, 31.661036, 28.841490>,  <31.033497, 31.158953, 29.046534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537088, 31.661036, 28.841490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.796175, 31.873447, 29.060020>,  <30.951626, 32.000893, 29.191139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.796175, 31.873447, 29.060020>,  <30.537088, 31.661036, 28.841490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796175, 31.873447, 29.060020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059073, 0.749919, -0.658886,
		-0.759589, 0.394498, 0.517104,
		0.647715, 0.531030, 0.546327,
		30.990490, 32.032757, 29.223919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643463, 31.579821, 28.920473>,  <30.537088, 31.661036, 28.841490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643463, 31.579821, 28.920473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.547926, 31.392132, 28.580406>,  <29.490604, 31.279518, 28.376366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.547926, 31.392132, 28.580406>,  <29.643463, 31.579821, 28.920473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547926, 31.392132, 28.580406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128851, -0.852450, 0.506682,
		-0.962472, 0.230561, 0.143140,
		-0.238841, -0.469224, -0.850167,
		29.476274, 31.251364, 28.325356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048676, 31.103891, 29.142992>,  <29.643463, 31.579821, 28.920473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048676, 31.103891, 29.142992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.206882, 30.963017, 28.803692>,  <29.301807, 30.878492, 28.600111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.206882, 30.963017, 28.803692>,  <29.048676, 31.103891, 29.142992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206882, 30.963017, 28.803692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049619, -0.914018, 0.402627,
		-0.917120, -0.201333, -0.344029,
		0.395511, -0.352187, -0.848254,
		29.325539, 30.857361, 28.549217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609161, 30.560549, 28.879242>,  <29.048676, 31.103891, 29.142992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609161, 30.560549, 28.879242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.964108, 30.475872, 28.715405>,  <29.177076, 30.425066, 28.617102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.964108, 30.475872, 28.715405>,  <28.609161, 30.560549, 28.879242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964108, 30.475872, 28.715405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001794, -0.889946, 0.456063,
		-0.461060, -0.403961, -0.790088,
		0.887367, -0.211690, -0.409594,
		29.230318, 30.412365, 28.592525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532568, 29.885939, 28.456520>,  <28.609161, 30.560549, 28.879242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532568, 29.885939, 28.456520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.927027, 29.928932, 28.507053>,  <29.163702, 29.954729, 28.537374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.927027, 29.928932, 28.507053>,  <28.532568, 29.885939, 28.456520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927027, 29.928932, 28.507053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072260, -0.963955, 0.256064,
		0.149304, -0.243388, -0.958369,
		0.986147, 0.107483, 0.126335,
		29.222872, 29.961178, 28.544954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872921, 29.258991, 28.094112>,  <28.532568, 29.885939, 28.456520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872921, 29.258991, 28.094112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.146378, 29.401943, 28.348644>,  <29.310452, 29.487715, 28.501364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.146378, 29.401943, 28.348644>,  <28.872921, 29.258991, 28.094112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146378, 29.401943, 28.348644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250238, -0.933830, 0.255620,
		0.685576, -0.015519, -0.727836,
		0.683642, 0.357379, 0.636328,
		29.351471, 29.509157, 28.539543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299906, 28.690592, 28.111938>,  <28.872921, 29.258991, 28.094112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299906, 28.690592, 28.111938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.426098, 28.918182, 28.415710>,  <29.501814, 29.054737, 28.597975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.426098, 28.918182, 28.415710>,  <29.299906, 28.690592, 28.111938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426098, 28.918182, 28.415710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228029, -0.822308, 0.521357,
		0.921127, 0.008694, -0.389166,
		0.315482, 0.568977, 0.759432,
		29.520742, 29.088875, 28.643539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982090, 28.485245, 28.194263>,  <29.299906, 28.690592, 28.111938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982090, 28.485245, 28.194263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.854191, 28.611950, 28.551456>,  <29.777451, 28.687973, 28.765772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.854191, 28.611950, 28.551456>,  <29.982090, 28.485245, 28.194263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854191, 28.611950, 28.551456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235745, -0.886227, 0.398780,
		0.917706, 0.338026, 0.208695,
		-0.319749, 0.316764, 0.892984,
		29.758266, 28.706980, 28.819351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419125, 28.034147, 28.636635>,  <29.982090, 28.485245, 28.194263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419125, 28.034147, 28.636635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.130245, 28.204685, 28.854500>,  <29.956917, 28.307009, 28.985218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.130245, 28.204685, 28.854500>,  <30.419125, 28.034147, 28.636635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130245, 28.204685, 28.854500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075225, -0.734359, 0.674580,
		0.687583, 0.528153, 0.498281,
		-0.722198, 0.426346, 0.544663,
		29.913586, 28.332588, 29.017899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671743, 28.205973, 29.220495>,  <30.419125, 28.034147, 28.636635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671743, 28.205973, 29.220495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.292316, 28.194901, 29.346638>,  <30.064659, 28.188257, 29.422323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.292316, 28.194901, 29.346638>,  <30.671743, 28.205973, 29.220495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292316, 28.194901, 29.346638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247195, -0.687085, 0.683234,
		0.197766, 0.726050, 0.658590,
		-0.948569, -0.027680, 0.315358,
		30.007746, 28.186596, 29.441244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753439, 28.156147, 29.996515>,  <30.671743, 28.205973, 29.220495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753439, 28.156147, 29.996515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.394886, 28.034473, 29.867538>,  <30.179754, 27.961470, 29.790152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.394886, 28.034473, 29.867538>,  <30.753439, 28.156147, 29.996515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394886, 28.034473, 29.867538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032671, -0.770758, 0.636290,
		-0.442076, 0.559825, 0.700832,
		-0.896382, -0.304186, -0.322443,
		30.125971, 27.943218, 29.770805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390398, 27.950693, 30.660480>,  <30.753439, 28.156147, 29.996515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390398, 27.950693, 30.660480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.197821, 27.752937, 30.370987>,  <30.082275, 27.634283, 30.197290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.197821, 27.752937, 30.370987>,  <30.390398, 27.950693, 30.660480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.197821, 27.752937, 30.370987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037341, -0.813410, 0.580491,
		-0.875682, 0.306498, 0.373149,
		-0.481442, -0.494392, -0.723734,
		30.053389, 27.604620, 30.153868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928152, 27.551998, 30.979494>,  <30.390398, 27.950693, 30.660480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928152, 27.551998, 30.979494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.883249, 27.370865, 30.625694>,  <29.856308, 27.262184, 30.413414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.883249, 27.370865, 30.625694>,  <29.928152, 27.551998, 30.979494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883249, 27.370865, 30.625694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011240, -0.889491, 0.456816,
		-0.993616, 0.061224, 0.094763,
		-0.112259, -0.452834, -0.884500,
		29.849571, 27.235014, 30.360344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342939, 27.158556, 31.017366>,  <29.928152, 27.551998, 30.979494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342939, 27.158556, 31.017366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.594858, 27.006805, 30.746243>,  <29.746010, 26.915754, 30.583569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.594858, 27.006805, 30.746243>,  <29.342939, 27.158556, 31.017366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594858, 27.006805, 30.746243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050475, -0.890757, 0.451667,
		-0.775117, -0.250247, -0.580146,
		0.629798, -0.379378, -0.677810,
		29.783798, 26.892992, 30.542900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994019, 26.605595, 30.724092>,  <29.342939, 27.158556, 31.017366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994019, 26.605595, 30.724092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.381006, 26.544647, 30.643311>,  <29.613199, 26.508080, 30.594841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.381006, 26.544647, 30.643311>,  <28.994019, 26.605595, 30.724092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381006, 26.544647, 30.643311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047352, -0.893239, 0.447081,
		-0.248517, -0.422974, -0.871397,
		0.967469, -0.152369, -0.201957,
		29.671247, 26.498936, 30.582724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.061337, 26.119072, 29.915434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.724865, 26.210297, 30.111561>,  <35.522984, 26.265032, 30.229237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.724865, 26.210297, 30.111561>,  <36.061337, 26.119072, 29.915434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724865, 26.210297, 30.111561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238037, 0.657983, -0.714420,
		-0.485553, -0.717667, -0.499192,
		-0.841176, 0.228063, 0.490317,
		35.472511, 26.278715, 30.258656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440369, 26.011196, 29.465897>,  <36.061337, 26.119072, 29.915434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440369, 26.011196, 29.465897> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.328808, 26.274815, 29.745289>,  <35.261871, 26.432985, 29.912924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.328808, 26.274815, 29.745289>,  <35.440369, 26.011196, 29.465897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328808, 26.274815, 29.745289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299719, 0.631272, -0.715306,
		-0.912350, -0.408847, 0.021466,
		-0.278900, 0.659044, 0.698481,
		35.245136, 26.472528, 29.954834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847572, 26.386127, 29.258160>,  <35.440369, 26.011196, 29.465897>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847572, 26.386127, 29.258160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.971004, 26.621464, 29.557125>,  <35.045063, 26.762667, 29.736506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.971004, 26.621464, 29.557125>,  <34.847572, 26.386127, 29.258160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971004, 26.621464, 29.557125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351506, 0.800676, -0.485141,
		-0.883867, -0.113015, 0.453880,
		0.308583, 0.588342, 0.747416,
		35.063580, 26.797966, 29.781349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297443, 26.662889, 29.665091>,  <34.847572, 26.386127, 29.258160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297443, 26.662889, 29.665091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.599541, 26.925014, 29.670406>,  <34.780800, 27.082289, 29.673595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.599541, 26.925014, 29.670406>,  <34.297443, 26.662889, 29.665091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599541, 26.925014, 29.670406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559794, 0.655438, -0.506983,
		-0.340943, 0.375454, 0.861854,
		0.755241, 0.655313, 0.013290,
		34.826115, 27.121609, 29.674393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894218, 27.184250, 29.732201>,  <34.297443, 26.662889, 29.665091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894218, 27.184250, 29.732201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.252197, 27.339478, 29.644131>,  <34.466984, 27.432615, 29.591290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.252197, 27.339478, 29.644131>,  <33.894218, 27.184250, 29.732201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252197, 27.339478, 29.644131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445764, 0.798931, -0.403737,
		0.019225, 0.459468, 0.887986,
		0.894944, 0.388070, -0.220174,
		34.520679, 27.455898, 29.578079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782612, 27.856251, 29.942112>,  <33.894218, 27.184250, 29.732201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782612, 27.856251, 29.942112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.080235, 27.828350, 29.676327>,  <34.258808, 27.811609, 29.516855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.080235, 27.828350, 29.676327>,  <33.782612, 27.856251, 29.942112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080235, 27.828350, 29.676327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429056, 0.712472, -0.555243,
		0.512142, 0.698225, 0.500193,
		0.744058, -0.069752, -0.664464,
		34.303452, 27.807425, 29.476988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093246, 28.638924, 29.772581>,  <33.782612, 27.856251, 29.942112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093246, 28.638924, 29.772581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.221230, 28.398609, 29.479546>,  <34.298019, 28.254421, 29.303724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.221230, 28.398609, 29.479546>,  <34.093246, 28.638924, 29.772581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221230, 28.398609, 29.479546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214250, 0.707323, -0.673640,
		0.922888, 0.372495, 0.097598,
		0.319961, -0.600784, -0.732587,
		34.317219, 28.218374, 29.259769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536842, 29.025543, 29.378658>,  <34.093246, 28.638924, 29.772581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536842, 29.025543, 29.378658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.435425, 28.740032, 29.117512>,  <34.374573, 28.568726, 28.960823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.435425, 28.740032, 29.117512>,  <34.536842, 29.025543, 29.378658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435425, 28.740032, 29.117512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058061, 0.684934, -0.726288,
		0.965580, -0.146240, -0.215104,
		-0.253544, -0.713778, -0.652868,
		34.359360, 28.525898, 28.921652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776272, 29.209249, 28.728031>,  <34.536842, 29.025543, 29.378658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776272, 29.209249, 28.728031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.536232, 28.918213, 28.595070>,  <34.392208, 28.743591, 28.515293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.536232, 28.918213, 28.595070>,  <34.776272, 29.209249, 28.728031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536232, 28.918213, 28.595070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018932, 0.402509, -0.915220,
		0.799700, -0.555517, -0.227771,
		-0.600101, -0.727590, -0.332404,
		34.356201, 28.699936, 28.495348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110786, 29.017429, 28.142990>,  <34.776272, 29.209249, 28.728031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110786, 29.017429, 28.142990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.728245, 28.906380, 28.106525>,  <34.498718, 28.839750, 28.084646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.728245, 28.906380, 28.106525>,  <35.110786, 29.017429, 28.142990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728245, 28.906380, 28.106525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040068, 0.433628, -0.900201,
		0.289445, -0.857259, -0.425827,
		-0.956356, -0.277621, -0.091163,
		34.441338, 28.823093, 28.079176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029419, 28.789577, 27.531046>,  <35.110786, 29.017429, 28.142990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029419, 28.789577, 27.531046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.645092, 28.878941, 27.596676>,  <34.414497, 28.932558, 27.636055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.645092, 28.878941, 27.596676>,  <35.029419, 28.789577, 27.531046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645092, 28.878941, 27.596676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039280, 0.476224, -0.878446,
		-0.274389, -0.850470, -0.448788,
		-0.960816, 0.223407, 0.164077,
		34.356846, 28.945963, 27.645899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749039, 28.702257, 26.962172>,  <35.029419, 28.789577, 27.531046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749039, 28.702257, 26.962172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.452377, 28.917820, 27.121937>,  <34.274380, 29.047157, 27.217796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.452377, 28.917820, 27.121937>,  <34.749039, 28.702257, 26.962172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452377, 28.917820, 27.121937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000020, 0.595459, -0.803385,
		-0.670785, -0.595824, -0.441634,
		-0.741652, 0.538908, 0.399413,
		34.229881, 29.079493, 27.241760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197918, 28.771526, 26.417517>,  <34.749039, 28.702257, 26.962172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197918, 28.771526, 26.417517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151093, 29.062229, 26.688255>,  <34.122997, 29.236650, 26.850698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151093, 29.062229, 26.688255>,  <34.197918, 28.771526, 26.417517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151093, 29.062229, 26.688255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035496, 0.684159, -0.728469,
		-0.992490, -0.061249, -0.105885,
		-0.117061, 0.726757, 0.676846,
		34.115974, 29.280256, 26.891310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609337, 29.229683, 26.154167>,  <34.197918, 28.771526, 26.417517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609337, 29.229683, 26.154167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.849232, 29.441147, 26.394444>,  <33.993168, 29.568026, 26.538610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.849232, 29.441147, 26.394444>,  <33.609337, 29.229683, 26.154167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849232, 29.441147, 26.394444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025263, 0.762819, -0.646119,
		-0.799795, 0.372329, 0.470849,
		0.599741, 0.528658, 0.600693,
		34.029156, 29.599745, 26.574652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893204, 29.037352, 26.274548>,  <33.609337, 29.229683, 26.154167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893204, 29.037352, 26.274548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771629, 28.815960, 25.964378>,  <32.698685, 28.683125, 25.778276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.771629, 28.815960, 25.964378>,  <32.893204, 29.037352, 26.274548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771629, 28.815960, 25.964378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226132, -0.832581, 0.505641,
		-0.925465, -0.021665, 0.378212,
		-0.303938, -0.553479, -0.775424,
		32.680447, 28.649916, 25.731750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330952, 28.582817, 26.422516>,  <32.893204, 29.037352, 26.274548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330952, 28.582817, 26.422516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.538876, 28.425278, 26.119286>,  <32.663631, 28.330755, 25.937347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.538876, 28.425278, 26.119286>,  <32.330952, 28.582817, 26.422516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538876, 28.425278, 26.119286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102010, -0.852420, 0.512810,
		-0.848171, -0.343894, -0.402919,
		0.519808, -0.393848, -0.758078,
		32.694820, 28.307123, 25.891863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047779, 27.905058, 26.270212>,  <32.330952, 28.582817, 26.422516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047779, 27.905058, 26.270212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.400894, 27.896301, 26.082508>,  <32.612762, 27.891047, 25.969885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.400894, 27.896301, 26.082508>,  <32.047779, 27.905058, 26.270212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400894, 27.896301, 26.082508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175891, -0.910848, 0.373388,
		-0.435600, -0.412162, -0.800234,
		0.882788, -0.021894, -0.469261,
		32.665730, 27.889732, 25.941730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148666, 27.215197, 26.196436>,  <32.047779, 27.905058, 26.270212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148666, 27.215197, 26.196436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516838, 27.368484, 26.165565>,  <32.737740, 27.460457, 26.147043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.516838, 27.368484, 26.165565>,  <32.148666, 27.215197, 26.196436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516838, 27.368484, 26.165565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376210, -0.814731, 0.441225,
		0.106211, -0.435149, -0.894072,
		0.920427, 0.383222, -0.077174,
		32.792965, 27.483452, 26.142412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587311, 26.628738, 25.846331>,  <32.148666, 27.215197, 26.196436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587311, 26.628738, 25.846331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.828613, 26.885757, 26.035313>,  <32.973396, 27.039968, 26.148701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.828613, 26.885757, 26.035313>,  <32.587311, 26.628738, 25.846331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828613, 26.885757, 26.035313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409740, -0.757922, 0.507610,
		0.684246, -0.112636, -0.720500,
		0.603258, 0.642548, 0.472453,
		33.009590, 27.078522, 26.177048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281746, 26.354956, 25.832947>,  <32.587311, 26.628738, 25.846331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281746, 26.354956, 25.832947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.259716, 26.625347, 26.126892>,  <33.246498, 26.787582, 26.303259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.259716, 26.625347, 26.126892>,  <33.281746, 26.354956, 25.832947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259716, 26.625347, 26.126892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276944, -0.696761, 0.661684,
		0.959307, 0.239957, -0.148834,
		-0.055074, 0.675976, 0.734862,
		33.243195, 26.828140, 26.347351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957134, 26.218752, 26.263979>,  <33.281746, 26.354956, 25.832947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957134, 26.218752, 26.263979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715019, 26.443428, 26.489594>,  <33.569752, 26.578234, 26.624962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715019, 26.443428, 26.489594>,  <33.957134, 26.218752, 26.263979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715019, 26.443428, 26.489594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186113, -0.589079, 0.786351,
		0.773946, 0.580940, 0.252023,
		-0.605284, 0.561689, 0.564036,
		33.533436, 26.611935, 26.658804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350895, 26.277964, 26.885801>,  <33.957134, 26.218752, 26.263979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350895, 26.277964, 26.885801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.968750, 26.352978, 26.977108>,  <33.739464, 26.397985, 27.031891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.968750, 26.352978, 26.977108>,  <34.350895, 26.277964, 26.885801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968750, 26.352978, 26.977108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068833, -0.610098, 0.789330,
		0.287291, 0.769812, 0.569959,
		-0.955367, 0.187535, 0.228265,
		33.682140, 26.409239, 27.045588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359192, 26.323643, 27.558239>,  <34.350895, 26.277964, 26.885801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359192, 26.323643, 27.558239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.966801, 26.277946, 27.495461>,  <33.731365, 26.250528, 27.457794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.966801, 26.277946, 27.495461>,  <34.359192, 26.323643, 27.558239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966801, 26.277946, 27.495461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068677, -0.551968, 0.831032,
		-0.181565, 0.826002, 0.533623,
		-0.980978, -0.114239, -0.156945,
		33.672508, 26.243675, 27.448378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094292, 26.358715, 28.148020>,  <34.359192, 26.323643, 27.558239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094292, 26.358715, 28.148020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.803234, 26.155701, 27.963440>,  <33.628597, 26.033892, 27.852692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.803234, 26.155701, 27.963440>,  <34.094292, 26.358715, 28.148020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803234, 26.155701, 27.963440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157491, -0.531135, 0.832521,
		-0.667628, 0.678455, 0.306546,
		-0.727646, -0.507537, -0.461452,
		33.584942, 26.003439, 27.825005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607864, 26.201292, 28.714874>,  <34.094292, 26.358715, 28.148020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607864, 26.201292, 28.714874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.529922, 25.942696, 28.419827>,  <33.483158, 25.787539, 28.242798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.529922, 25.942696, 28.419827>,  <33.607864, 26.201292, 28.714874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529922, 25.942696, 28.419827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442654, -0.613130, 0.654315,
		-0.875266, 0.454005, -0.166702,
		-0.194852, -0.646491, -0.737619,
		33.471466, 25.748749, 28.198542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072086, 26.071396, 28.923483>,  <33.607864, 26.201292, 28.714874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072086, 26.071396, 28.923483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.162922, 25.756840, 28.693691>,  <33.217422, 25.568106, 28.555817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.162922, 25.756840, 28.693691>,  <33.072086, 26.071396, 28.923483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162922, 25.756840, 28.693691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159756, -0.611979, 0.774571,
		-0.960681, -0.084122, -0.264604,
		0.227091, -0.786388, -0.574477,
		33.231049, 25.520924, 28.521349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548820, 25.547426, 29.023684>,  <33.072086, 26.071396, 28.923483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548820, 25.547426, 29.023684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895573, 25.387127, 28.905079>,  <33.103622, 25.290947, 28.833916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.895573, 25.387127, 28.905079>,  <32.548820, 25.547426, 29.023684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895573, 25.387127, 28.905079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005598, -0.586924, 0.809622,
		-0.498484, -0.703506, -0.506550,
		0.866880, -0.400748, -0.296511,
		33.155636, 25.266903, 28.816126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405849, 24.765667, 29.194147>,  <32.548820, 25.547426, 29.023684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405849, 24.765667, 29.194147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.803913, 24.797707, 29.171360>,  <33.042751, 24.816931, 29.157688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.803913, 24.797707, 29.171360>,  <32.405849, 24.765667, 29.194147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803913, 24.797707, 29.171360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094430, -0.618305, 0.780245,
		0.027273, -0.781846, -0.622875,
		0.995158, 0.080098, -0.056966,
		33.102459, 24.821735, 29.154270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945036, 24.533665, 28.576115>,  <32.405849, 24.765667, 29.194147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945036, 24.533665, 28.576115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.574854, 24.394512, 28.636131>,  <31.352745, 24.311022, 28.672140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.574854, 24.394512, 28.636131>,  <31.945036, 24.533665, 28.576115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574854, 24.394512, 28.636131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377539, 0.813840, -0.441734,
		0.031563, -0.465451, -0.884511,
		-0.925455, -0.347880, 0.150039,
		31.297216, 24.290148, 28.681143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572565, 24.535105, 27.954599>,  <31.945036, 24.533665, 28.576115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572565, 24.535105, 27.954599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.268766, 24.537403, 28.214794>,  <31.086487, 24.538782, 28.370911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.268766, 24.537403, 28.214794>,  <31.572565, 24.535105, 27.954599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268766, 24.537403, 28.214794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431907, 0.743292, -0.510856,
		-0.486437, -0.668943, -0.562045,
		-0.759497, 0.005748, 0.650486,
		31.040916, 24.539127, 28.409941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129520, 24.878279, 27.509079>,  <31.572565, 24.535105, 27.954599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129520, 24.878279, 27.509079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.938011, 24.889889, 27.860062>,  <30.823105, 24.896854, 28.070652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.938011, 24.889889, 27.860062>,  <31.129520, 24.878279, 27.509079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938011, 24.889889, 27.860062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655871, 0.652571, -0.379453,
		-0.583617, -0.757172, -0.293397,
		-0.478773, 0.029025, 0.877458,
		30.794378, 24.898596, 28.123299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495239, 24.651594, 27.398907>,  <31.129520, 24.878279, 27.509079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495239, 24.651594, 27.398907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.449430, 24.849308, 27.743595>,  <30.421946, 24.967937, 27.950409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.449430, 24.849308, 27.743595>,  <30.495239, 24.651594, 27.398907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449430, 24.849308, 27.743595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598415, 0.658067, -0.456997,
		-0.792959, -0.568003, 0.220427,
		-0.114520, 0.494287, 0.861722,
		30.415075, 24.997595, 28.002111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810780, 24.840334, 27.452707>,  <30.495239, 24.651594, 27.398907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810780, 24.840334, 27.452707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.975458, 25.103447, 27.705002>,  <30.074265, 25.261314, 27.856379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.975458, 25.103447, 27.705002>,  <29.810780, 24.840334, 27.452707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975458, 25.103447, 27.705002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567468, 0.726595, -0.387350,
		-0.713083, -0.198453, 0.672405,
		0.411695, 0.657781, 0.630738,
		30.098967, 25.300781, 27.894224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.186314, 25.141401, 27.778780>,  <29.810780, 24.840334, 27.452707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.186314, 25.141401, 27.778780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.499569, 25.389263, 27.799648>,  <29.687523, 25.537981, 27.812170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.499569, 25.389263, 27.799648>,  <29.186314, 25.141401, 27.778780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499569, 25.389263, 27.799648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597541, 0.773101, -0.212743,
		-0.172161, 0.135433, 0.975714,
		0.783138, 0.619655, 0.052171,
		29.734510, 25.575159, 27.815300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959440, 25.803400, 28.161427>,  <29.186314, 25.141401, 27.778780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959440, 25.803400, 28.161427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.284523, 25.916218, 27.957481>,  <29.479572, 25.983908, 27.835114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.284523, 25.916218, 27.957481>,  <28.959440, 25.803400, 28.161427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284523, 25.916218, 27.957481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488892, 0.806144, -0.333340,
		0.317007, 0.520176, 0.793047,
		0.812706, 0.282043, -0.509864,
		29.528336, 26.000832, 27.804522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022564, 26.525751, 28.228416>,  <28.959440, 25.803400, 28.161427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022564, 26.525751, 28.228416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.281942, 26.474232, 27.928303>,  <29.437569, 26.443321, 27.748234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.281942, 26.474232, 27.928303>,  <29.022564, 26.525751, 28.228416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281942, 26.474232, 27.928303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324691, 0.844646, -0.425616,
		0.688544, 0.519600, 0.505889,
		0.648447, -0.128797, -0.750285,
		29.476477, 26.435593, 27.703217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422853, 27.176311, 28.113041>,  <29.022564, 26.525751, 28.228416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422853, 27.176311, 28.113041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.454601, 26.963787, 27.775661>,  <29.473650, 26.836271, 27.573235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.454601, 26.963787, 27.775661>,  <29.422853, 27.176311, 28.113041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454601, 26.963787, 27.775661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264560, 0.804549, -0.531704,
		0.961097, 0.265345, -0.076707,
		0.079371, -0.531313, -0.843449,
		29.478413, 26.804394, 27.522627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921293, 27.501139, 27.619581>,  <29.422853, 27.176311, 28.113041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921293, 27.501139, 27.619581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.653996, 27.295052, 27.404919>,  <29.493616, 27.171400, 27.276121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.653996, 27.295052, 27.404919>,  <29.921293, 27.501139, 27.619581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653996, 27.295052, 27.404919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323775, 0.850883, -0.413723,
		0.669788, -0.102713, -0.735414,
		-0.668247, -0.515216, -0.536655,
		29.453522, 27.140488, 27.243921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019388, 27.881222, 27.156992>,  <29.921293, 27.501139, 27.619581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019388, 27.881222, 27.156992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.690115, 27.682350, 27.047314>,  <29.492552, 27.563026, 26.981506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.690115, 27.682350, 27.047314>,  <30.019388, 27.881222, 27.156992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690115, 27.682350, 27.047314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314502, 0.801351, -0.508847,
		0.472717, -0.332639, -0.816022,
		-0.823181, -0.497181, -0.274196,
		29.443161, 27.533195, 26.965055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935253, 27.982510, 26.357199>,  <30.019388, 27.881222, 27.156992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935253, 27.982510, 26.357199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.567579, 27.875370, 26.472687>,  <29.346975, 27.811087, 26.541979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.567579, 27.875370, 26.472687>,  <29.935253, 27.982510, 26.357199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567579, 27.875370, 26.472687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393588, 0.599004, -0.697340,
		0.013837, -0.754620, -0.656016,
		-0.919183, -0.267849, 0.288721,
		29.291824, 27.795015, 26.559303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.587847, 27.829861, 25.737156>,  <29.935253, 27.982510, 26.357199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.587847, 27.829861, 25.737156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.306807, 27.915737, 26.008526>,  <29.138182, 27.967262, 26.171347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.306807, 27.915737, 26.008526>,  <29.587847, 27.829861, 25.737156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306807, 27.915737, 26.008526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348006, 0.727934, -0.590766,
		-0.620678, -0.651169, -0.436735,
		-0.702603, 0.214689, 0.678423,
		29.096025, 27.980145, 26.212053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909119, 27.853558, 25.349323>,  <29.587847, 27.829861, 25.737156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909119, 27.853558, 25.349323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.897936, 28.057167, 25.693443>,  <28.891226, 28.179333, 25.899916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.897936, 28.057167, 25.693443>,  <28.909119, 27.853558, 25.349323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897936, 28.057167, 25.693443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464972, 0.755238, -0.461971,
		-0.884884, -0.412929, 0.215569,
		-0.027956, 0.509024, 0.860298,
		28.889549, 28.209875, 25.951532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<45.656788, 34.353123, 15.691708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.570190, 34.083637, 15.409081>,  <45.518230, 33.921944, 15.239506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.570190, 34.083637, 15.409081>,  <45.656788, 34.353123, 15.691708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.570190, 34.083637, 15.409081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432859, -0.582465, 0.688017,
		-0.875078, 0.454797, -0.165522,
		-0.216498, -0.673717, -0.706565,
		45.505241, 33.881523, 15.197112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027065, 34.351063, 15.681423>,  <45.656788, 34.353123, 15.691708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.027065, 34.351063, 15.681423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.152519, 33.988419, 15.568505>,  <45.227791, 33.770832, 15.500754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.152519, 33.988419, 15.568505>,  <45.027065, 34.351063, 15.681423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.152519, 33.988419, 15.568505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465806, -0.405966, 0.786268,
		-0.827440, -0.115107, -0.549630,
		0.313636, -0.906610, -0.282295,
		45.246609, 33.716434, 15.483817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382801, 33.943386, 15.756416>,  <45.027065, 34.351063, 15.681423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382801, 33.943386, 15.756416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.715977, 33.722385, 15.744126>,  <44.915882, 33.589783, 15.736753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.715977, 33.722385, 15.744126>,  <44.382801, 33.943386, 15.756416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715977, 33.722385, 15.744126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375055, -0.604504, 0.702786,
		-0.406865, -0.573858, -0.710738,
		0.832944, -0.552505, -0.030723,
		44.965858, 33.556633, 15.734909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.237740, 33.212372, 15.631308>,  <44.382801, 33.943386, 15.756416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.237740, 33.212372, 15.631308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.578892, 33.228390, 15.839538>,  <44.783581, 33.238003, 15.964476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.578892, 33.228390, 15.839538>,  <44.237740, 33.212372, 15.631308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578892, 33.228390, 15.839538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399442, -0.592026, 0.699965,
		0.336227, -0.804923, -0.488928,
		0.852876, 0.040049, 0.520575,
		44.834755, 33.240406, 15.995710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246368, 32.514202, 15.988065>,  <44.237740, 33.212372, 15.631308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246368, 32.514202, 15.988065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.485836, 32.771877, 16.178482>,  <44.629517, 32.926483, 16.292732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.485836, 32.771877, 16.178482>,  <44.246368, 32.514202, 15.988065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485836, 32.771877, 16.178482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334828, -0.338639, 0.879326,
		0.727661, -0.685814, 0.012962,
		0.598665, 0.644192, 0.476044,
		44.665436, 32.965134, 16.321295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670551, 32.134762, 16.518782>,  <44.246368, 32.514202, 15.988065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670551, 32.134762, 16.518782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.672997, 32.517403, 16.635315>,  <44.674465, 32.746986, 16.705235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.672997, 32.517403, 16.635315>,  <44.670551, 32.134762, 16.518782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672997, 32.517403, 16.635315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210581, -0.283573, 0.935544,
		0.977557, -0.067072, 0.199708,
		0.006117, 0.956602, 0.291333,
		44.674831, 32.804382, 16.722715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063828, 32.177101, 17.147947>,  <44.670551, 32.134762, 16.518782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063828, 32.177101, 17.147947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.816628, 32.491486, 17.140675>,  <44.668308, 32.680119, 17.136311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.816628, 32.491486, 17.140675>,  <45.063828, 32.177101, 17.147947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816628, 32.491486, 17.140675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214649, -0.146442, 0.965650,
		0.756305, 0.600678, 0.259208,
		-0.618004, 0.785965, -0.018179,
		44.631226, 32.727276, 17.135221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075035, 32.297710, 17.831491>,  <45.063828, 32.177101, 17.147947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075035, 32.297710, 17.831491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.781265, 32.525833, 17.684319>,  <44.605003, 32.662704, 17.596016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.781265, 32.525833, 17.684319>,  <45.075035, 32.297710, 17.831491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781265, 32.525833, 17.684319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387720, 0.092393, 0.917135,
		0.557040, 0.816221, 0.153263,
		-0.734424, 0.570305, -0.367931,
		44.560940, 32.696926, 17.573938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034729, 32.917114, 18.160038>,  <45.075035, 32.297710, 17.831491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034729, 32.917114, 18.160038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.656101, 32.855881, 18.046505>,  <44.428925, 32.819141, 17.978384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.656101, 32.855881, 18.046505>,  <45.034729, 32.917114, 18.160038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656101, 32.855881, 18.046505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294307, 0.050266, 0.954388,
		-0.131837, 0.986933, -0.092635,
		-0.946574, -0.153087, -0.283835,
		44.372128, 32.809956, 17.961355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631432, 33.402878, 18.505512>,  <45.034729, 32.917114, 18.160038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631432, 33.402878, 18.505512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.356327, 33.135292, 18.392742>,  <44.191265, 32.974743, 18.325081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.356327, 33.135292, 18.392742>,  <44.631432, 33.402878, 18.505512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356327, 33.135292, 18.392742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386780, 0.009030, 0.922128,
		-0.614322, 0.743243, -0.264951,
		-0.687757, -0.668961, -0.281925,
		44.150002, 32.934605, 18.308165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.172203, 33.686405, 18.867582>,  <44.631432, 33.402878, 18.505512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.172203, 33.686405, 18.867582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.058842, 33.310646, 18.790421>,  <43.990826, 33.085190, 18.744123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.058842, 33.310646, 18.790421>,  <44.172203, 33.686405, 18.867582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058842, 33.310646, 18.790421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427474, -0.056319, 0.902271,
		-0.858458, 0.338166, -0.385608,
		-0.283400, -0.939400, -0.192905,
		43.973824, 33.028828, 18.732550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584431, 33.646919, 19.243519>,  <44.172203, 33.686405, 18.867582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584431, 33.646919, 19.243519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.660496, 33.263832, 19.157166>,  <43.706135, 33.033978, 19.105352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.660496, 33.263832, 19.157166>,  <43.584431, 33.646919, 19.243519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660496, 33.263832, 19.157166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427615, -0.278745, 0.859911,
		-0.883732, -0.071211, -0.462544,
		0.190167, -0.957721, -0.215885,
		43.717545, 32.976517, 19.092400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917255, 33.256603, 19.286316>,  <43.584431, 33.646919, 19.243519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917255, 33.256603, 19.286316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.222733, 33.003532, 19.337673>,  <43.406021, 32.851688, 19.368488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.222733, 33.003532, 19.337673>,  <42.917255, 33.256603, 19.286316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222733, 33.003532, 19.337673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458982, -0.392258, 0.797164,
		-0.453987, -0.667720, -0.589954,
		0.763696, -0.632680, 0.128391,
		43.451843, 32.813728, 19.376190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534145, 32.661652, 19.464960>,  <42.917255, 33.256603, 19.286316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534145, 32.661652, 19.464960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.916439, 32.641838, 19.580967>,  <43.145817, 32.629951, 19.650572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.916439, 32.641838, 19.580967>,  <42.534145, 32.661652, 19.464960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916439, 32.641838, 19.580967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289833, -0.328035, 0.899105,
		0.050604, -0.943366, -0.327871,
		0.955738, -0.049529, 0.290019,
		43.203159, 32.626980, 19.667973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703968, 31.940626, 19.558224>,  <42.534145, 32.661652, 19.464960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703968, 31.940626, 19.558224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.951229, 32.152351, 19.790676>,  <43.099586, 32.279385, 19.930147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.951229, 32.152351, 19.790676>,  <42.703968, 31.940626, 19.558224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951229, 32.152351, 19.790676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340885, -0.485649, 0.804949,
		0.708294, -0.695683, -0.119773,
		0.618157, 0.529312, 0.581130,
		43.136677, 32.311146, 19.965015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535484, 31.544647, 20.165632>,  <42.703968, 31.940626, 19.558224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535484, 31.544647, 20.165632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.774147, 31.845463, 20.277660>,  <42.917343, 32.025951, 20.344877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.774147, 31.845463, 20.277660>,  <42.535484, 31.544647, 20.165632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774147, 31.845463, 20.277660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311262, -0.104808, 0.944527,
		0.739676, -0.650731, 0.171547,
		0.596654, 0.752040, 0.280072,
		42.953144, 32.071075, 20.361683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009151, 31.383705, 20.878092>,  <42.535484, 31.544647, 20.165632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009151, 31.383705, 20.878092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.004398, 31.781223, 20.833866>,  <43.001545, 32.019733, 20.807331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.004398, 31.781223, 20.833866>,  <43.009151, 31.383705, 20.878092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004398, 31.781223, 20.833866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286488, 0.102554, 0.952579,
		0.958010, 0.042997, 0.283492,
		-0.011885, 0.993798, -0.110565,
		43.000832, 32.079361, 20.800697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272335, 31.683405, 21.431734>,  <43.009151, 31.383705, 20.878092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272335, 31.683405, 21.431734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.008469, 31.942322, 21.278969>,  <42.850151, 32.097672, 21.187309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.008469, 31.942322, 21.278969>,  <43.272335, 31.683405, 21.431734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008469, 31.942322, 21.278969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407005, 0.119519, 0.905573,
		0.631816, 0.752814, 0.184608,
		-0.659663, 0.647292, -0.381913,
		42.810570, 32.136509, 21.164394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297295, 32.337929, 21.925018>,  <43.272335, 31.683405, 21.431734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297295, 32.337929, 21.925018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.949074, 32.351112, 21.728634>,  <42.740139, 32.359020, 21.610804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.949074, 32.351112, 21.728634>,  <43.297295, 32.337929, 21.925018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949074, 32.351112, 21.728634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442561, 0.383729, 0.810489,
		0.215107, 0.922858, -0.319473,
		-0.870557, 0.032956, -0.490963,
		42.687908, 32.361000, 21.581345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016129, 32.907413, 22.152554>,  <43.297295, 32.337929, 21.925018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016129, 32.907413, 22.152554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.699512, 32.720661, 21.994823>,  <42.509544, 32.608608, 21.900187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.699512, 32.720661, 21.994823>,  <43.016129, 32.907413, 22.152554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699512, 32.720661, 21.994823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605177, 0.509049, 0.612070,
		-0.085036, 0.723111, -0.685477,
		-0.791536, -0.466883, -0.394323,
		42.462051, 32.580597, 21.876526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412659, 33.387901, 21.987053>,  <43.016129, 32.907413, 22.152554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412659, 33.387901, 21.987053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.264172, 33.018425, 22.024998>,  <42.175079, 32.796741, 22.047766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.264172, 33.018425, 22.024998>,  <42.412659, 33.387901, 21.987053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264172, 33.018425, 22.024998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668241, 0.336690, 0.663396,
		-0.644710, 0.182873, -0.742231,
		-0.371219, -0.923687, 0.094864,
		42.152805, 32.741318, 22.053457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669594, 33.204494, 21.988489>,  <42.412659, 33.387901, 21.987053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669594, 33.204494, 21.988489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.363850, 33.461956, 21.973209>,  <41.180405, 33.616432, 21.964041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.363850, 33.461956, 21.973209>,  <41.669594, 33.204494, 21.988489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363850, 33.461956, 21.973209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494434, 0.547066, -0.675466,
		-0.413871, -0.535186, -0.736401,
		-0.764360, 0.643657, -0.038199,
		41.134541, 33.655052, 21.961750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542812, 33.363693, 21.215628>,  <41.669594, 33.204494, 21.988489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542812, 33.363693, 21.215628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.365761, 33.671959, 21.398998>,  <41.259529, 33.856918, 21.509022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.365761, 33.671959, 21.398998>,  <41.542812, 33.363693, 21.215628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365761, 33.671959, 21.398998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453700, 0.633443, -0.626822,
		-0.773458, -0.069460, -0.630030,
		-0.442627, 0.770665, 0.458428,
		41.232971, 33.903160, 21.536526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175011, 33.629436, 20.773327>,  <41.542812, 33.363693, 21.215628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175011, 33.629436, 20.773327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.252087, 33.930225, 21.025490>,  <41.298332, 34.110699, 21.176788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.252087, 33.930225, 21.025490>,  <41.175011, 33.629436, 20.773327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252087, 33.930225, 21.025490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281159, 0.573202, -0.769668,
		-0.940118, 0.325550, -0.100974,
		0.192687, 0.751969, 0.630409,
		41.309891, 34.155815, 21.214613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815033, 34.247311, 20.547857>,  <41.175011, 33.629436, 20.773327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815033, 34.247311, 20.547857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.109184, 34.387505, 20.779850>,  <41.285675, 34.471619, 20.919046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.109184, 34.387505, 20.779850>,  <40.815033, 34.247311, 20.547857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109184, 34.387505, 20.779850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300846, 0.598051, -0.742851,
		-0.607215, 0.720762, 0.334353,
		0.735379, 0.350481, 0.579984,
		41.329800, 34.492649, 20.953846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835983, 34.969818, 20.450212>,  <40.815033, 34.247311, 20.547857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835983, 34.969818, 20.450212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.182430, 34.916538, 20.642921>,  <41.390297, 34.884571, 20.758547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.182430, 34.916538, 20.642921>,  <40.835983, 34.969818, 20.450212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182430, 34.916538, 20.642921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399800, 0.763107, -0.507768,
		-0.300011, 0.632398, 0.714189,
		0.866114, -0.133197, 0.481773,
		41.442265, 34.876579, 20.787453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048870, 35.633980, 20.772720>,  <40.835983, 34.969818, 20.450212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048870, 35.633980, 20.772720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.358986, 35.396774, 20.685768>,  <41.545055, 35.254452, 20.633596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.358986, 35.396774, 20.685768>,  <41.048870, 35.633980, 20.772720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358986, 35.396774, 20.685768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365417, 0.701869, -0.611434,
		0.515163, 0.394604, 0.760851,
		0.775292, -0.593016, -0.217382,
		41.591572, 35.218868, 20.620554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581177, 36.072830, 20.700588>,  <41.048870, 35.633980, 20.772720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581177, 36.072830, 20.700588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.705963, 35.752731, 20.495735>,  <41.780834, 35.560673, 20.372824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.705963, 35.752731, 20.495735>,  <41.581177, 36.072830, 20.700588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705963, 35.752731, 20.495735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332212, 0.596887, -0.730315,
		0.890119, 0.057696, 0.452061,
		0.311966, -0.800248, -0.512133,
		41.799553, 35.512657, 20.342094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198608, 36.336369, 20.347982>,  <41.581177, 36.072830, 20.700588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198608, 36.336369, 20.347982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.082153, 36.010860, 20.146778>,  <42.012280, 35.815556, 20.026056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.082153, 36.010860, 20.146778>,  <42.198608, 36.336369, 20.347982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082153, 36.010860, 20.146778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428583, 0.359130, -0.829061,
		0.855311, -0.456950, 0.244213,
		-0.291135, -0.813770, -0.503009,
		41.994812, 35.766727, 19.995876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820789, 36.112415, 19.988461>,  <42.198608, 36.336369, 20.347982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820789, 36.112415, 19.988461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.503044, 35.958057, 19.800816>,  <42.312397, 35.865440, 19.688229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.503044, 35.958057, 19.800816>,  <42.820789, 36.112415, 19.988461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503044, 35.958057, 19.800816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475625, 0.085238, -0.875509,
		0.377844, -0.918595, 0.115832,
		-0.794365, -0.385898, -0.469113,
		42.264736, 35.842289, 19.660082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102016, 35.514111, 19.469582>,  <42.820789, 36.112415, 19.988461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102016, 35.514111, 19.469582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.733517, 35.604748, 19.343117>,  <42.512417, 35.659130, 19.267239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.733517, 35.604748, 19.343117>,  <43.102016, 35.514111, 19.469582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733517, 35.604748, 19.343117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340237, 0.075476, -0.937306,
		-0.188528, -0.971060, -0.146629,
		-0.921247, 0.226597, -0.316161,
		42.457142, 35.672726, 19.248268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025173, 35.131588, 18.774527>,  <43.102016, 35.514111, 19.469582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025173, 35.131588, 18.774527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.760159, 35.431137, 18.780491>,  <42.601151, 35.610867, 18.784069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.760159, 35.431137, 18.780491>,  <43.025173, 35.131588, 18.774527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760159, 35.431137, 18.780491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160770, 0.161624, -0.973669,
		-0.731569, -0.642698, -0.227479,
		-0.662541, 0.748878, 0.014913,
		42.561398, 35.655800, 18.784966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523880, 35.069054, 18.247833>,  <43.025173, 35.131588, 18.774527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523880, 35.069054, 18.247833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.507423, 35.462616, 18.317379>,  <42.497547, 35.698753, 18.359106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.507423, 35.462616, 18.317379>,  <42.523880, 35.069054, 18.247833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507423, 35.462616, 18.317379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183647, 0.178495, -0.966651,
		-0.982131, -0.007841, -0.188036,
		-0.041143, 0.983910, 0.173865,
		42.495079, 35.757790, 18.369539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082073, 35.329624, 17.666685>,  <42.523880, 35.069054, 18.247833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082073, 35.329624, 17.666685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.266056, 35.650051, 17.819904>,  <42.376446, 35.842308, 17.911837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.266056, 35.650051, 17.819904>,  <42.082073, 35.329624, 17.666685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266056, 35.650051, 17.819904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128036, 0.367047, -0.921349,
		-0.878662, 0.472823, 0.066260,
		0.459956, 0.801071, 0.383049,
		42.404041, 35.890373, 17.934818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751087, 35.869621, 17.327204>,  <42.082073, 35.329624, 17.666685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751087, 35.869621, 17.327204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.109070, 35.976818, 17.469887>,  <42.323860, 36.041138, 17.555496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.109070, 35.976818, 17.469887>,  <41.751087, 35.869621, 17.327204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109070, 35.976818, 17.469887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299665, 0.231274, -0.925588,
		-0.330547, 0.935250, 0.126672,
		0.894952, 0.267991, 0.356709,
		42.377556, 36.057217, 17.576899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852451, 36.422775, 16.880182>,  <41.751087, 35.869621, 17.327204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852451, 36.422775, 16.880182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.196205, 36.329380, 17.062145>,  <42.402458, 36.273342, 17.171322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.196205, 36.329380, 17.062145>,  <41.852451, 36.422775, 16.880182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196205, 36.329380, 17.062145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510335, 0.336237, -0.791520,
		0.031854, 0.912375, 0.408114,
		0.859386, -0.233487, 0.454906,
		42.454021, 36.259335, 17.198618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358704, 37.036686, 16.809921>,  <41.852451, 36.422775, 16.880182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358704, 37.036686, 16.809921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.562366, 36.697639, 16.869667>,  <42.684563, 36.494213, 16.905516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.562366, 36.697639, 16.869667>,  <42.358704, 37.036686, 16.809921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562366, 36.697639, 16.869667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615031, 0.236918, -0.752068,
		0.602075, 0.474786, 0.641937,
		0.509157, -0.847613, 0.149366,
		42.715115, 36.443356, 16.914476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981819, 37.272495, 16.608788>,  <42.358704, 37.036686, 16.809921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981819, 37.272495, 16.608788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.012508, 36.873829, 16.619930>,  <43.030922, 36.634628, 16.626616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.012508, 36.873829, 16.619930>,  <42.981819, 37.272495, 16.608788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012508, 36.873829, 16.619930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665925, 0.030428, -0.745398,
		0.742063, 0.075739, 0.666037,
		0.076722, -0.996663, 0.027857,
		43.035526, 36.574829, 16.628288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758945, 37.074986, 16.559610>,  <42.981819, 37.272495, 16.608788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758945, 37.074986, 16.559610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.536705, 36.764805, 16.439625>,  <43.403358, 36.578697, 16.367634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.536705, 36.764805, 16.439625>,  <43.758945, 37.074986, 16.559610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536705, 36.764805, 16.439625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612073, -0.137288, -0.778793,
		0.562736, -0.616299, 0.550911,
		-0.555604, -0.775453, -0.299963,
		43.370026, 36.532169, 16.349636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310329, 36.760357, 16.229353>,  <43.758945, 37.074986, 16.559610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310329, 36.760357, 16.229353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.979950, 36.560154, 16.125576>,  <43.781723, 36.440033, 16.063311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.979950, 36.560154, 16.125576>,  <44.310329, 36.760357, 16.229353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979950, 36.560154, 16.125576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453761, -0.317119, -0.832788,
		0.334541, -0.805561, 0.489033,
		-0.825944, -0.500506, -0.259442,
		43.732166, 36.410004, 16.047743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.565197, 36.143459, 16.015251>,  <44.310329, 36.760357, 16.229353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.565197, 36.143459, 16.015251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.197998, 36.166275, 15.858270>,  <43.977676, 36.179966, 15.764081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.197998, 36.166275, 15.858270>,  <44.565197, 36.143459, 16.015251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197998, 36.166275, 15.858270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357212, -0.310917, -0.880756,
		-0.172260, -0.948724, 0.265046,
		-0.918002, 0.057041, -0.392454,
		43.922596, 36.183388, 15.740533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.534718, 35.539421, 15.581650>,  <44.565197, 36.143459, 16.015251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.534718, 35.539421, 15.581650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.288471, 35.826916, 15.452390>,  <44.140724, 35.999413, 15.374834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.288471, 35.826916, 15.452390>,  <44.534718, 35.539421, 15.581650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288471, 35.826916, 15.452390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402661, -0.065599, -0.912996,
		-0.677406, -0.692176, -0.249025,
		-0.615618, 0.718741, -0.323149,
		44.103786, 36.042538, 15.355445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<29.021519, 25.814175, 30.567842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402330, 25.917023, 30.634212>,  <29.630817, 25.978731, 30.674034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.402330, 25.917023, 30.634212>,  <29.021519, 25.814175, 30.567842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402330, 25.917023, 30.634212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132171, -0.834537, 0.534864,
		0.275993, -0.487276, -0.828487,
		0.952029, 0.257120, 0.165923,
		29.687939, 25.994160, 30.683989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367653, 25.244534, 30.289080>,  <29.021519, 25.814175, 30.567842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367653, 25.244534, 30.289080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.599562, 25.434273, 30.554066>,  <29.738707, 25.548117, 30.713057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.599562, 25.434273, 30.554066>,  <29.367653, 25.244534, 30.289080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599562, 25.434273, 30.554066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283197, -0.879685, 0.382039,
		0.763981, -0.033886, -0.644349,
		0.579770, 0.474348, 0.662466,
		29.773493, 25.576576, 30.752806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023149, 24.823097, 30.268694>,  <29.367653, 25.244534, 30.289080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023149, 24.823097, 30.268694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.024817, 25.024498, 30.614288>,  <30.025818, 25.145338, 30.821644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.024817, 25.024498, 30.614288>,  <30.023149, 24.823097, 30.268694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024817, 25.024498, 30.614288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266552, -0.833292, 0.484329,
		0.963812, 0.228278, -0.137683,
		0.004168, 0.503501, 0.863984,
		30.026068, 25.175549, 30.873484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677563, 24.660967, 30.607233>,  <30.023149, 24.823097, 30.268694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677563, 24.660967, 30.607233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.445715, 24.814693, 30.894661>,  <30.306606, 24.906929, 31.067118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.445715, 24.814693, 30.894661>,  <30.677563, 24.660967, 30.607233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445715, 24.814693, 30.894661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279086, -0.734853, 0.618144,
		0.765604, 0.558832, 0.318680,
		-0.579621, 0.384315, 0.718569,
		30.271828, 24.929987, 31.110231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131245, 24.609354, 31.265938>,  <30.677563, 24.660967, 30.607233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131245, 24.609354, 31.265938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.761765, 24.691483, 31.395317>,  <30.540075, 24.740761, 31.472944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.761765, 24.691483, 31.395317>,  <31.131245, 24.609354, 31.265938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761765, 24.691483, 31.395317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150086, -0.582843, 0.798604,
		0.352490, 0.786217, 0.507557,
		-0.923702, 0.205322, 0.323447,
		30.484653, 24.753078, 31.492352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185411, 24.802063, 31.994356>,  <31.131245, 24.609354, 31.265938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185411, 24.802063, 31.994356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.819466, 24.666443, 31.906658>,  <30.599897, 24.585072, 31.854040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.819466, 24.666443, 31.906658>,  <31.185411, 24.802063, 31.994356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819466, 24.666443, 31.906658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078578, -0.682134, 0.726993,
		-0.396042, 0.647872, 0.650701,
		-0.914864, -0.339051, -0.219245,
		30.545006, 24.564728, 31.840885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794943, 24.740669, 32.669205>,  <31.185411, 24.802063, 31.994356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794943, 24.740669, 32.669205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.628798, 24.499252, 32.396969>,  <30.529110, 24.354403, 32.233627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.628798, 24.499252, 32.396969>,  <30.794943, 24.740669, 32.669205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628798, 24.499252, 32.396969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050288, -0.762280, 0.645291,
		-0.908264, 0.233806, 0.346975,
		-0.415365, -0.603543, -0.680594,
		30.504189, 24.318190, 32.192791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272255, 24.382828, 32.942665>,  <30.794943, 24.740669, 32.669205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272255, 24.382828, 32.942665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.332987, 24.144264, 32.627388>,  <30.369427, 24.001127, 32.438221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.332987, 24.144264, 32.627388>,  <30.272255, 24.382828, 32.942665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332987, 24.144264, 32.627388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086475, -0.802394, 0.590497,
		-0.984616, -0.021498, -0.173403,
		0.151832, -0.596408, -0.788191,
		30.378536, 23.965342, 32.390930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822287, 23.865747, 33.086212>,  <30.272255, 24.382828, 32.942665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822287, 23.865747, 33.086212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.065317, 23.708912, 32.809917>,  <30.211136, 23.614811, 32.644142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.065317, 23.708912, 32.809917>,  <29.822287, 23.865747, 33.086212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065317, 23.708912, 32.809917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047575, -0.850132, 0.524416,
		-0.792834, -0.351485, -0.497868,
		0.607577, -0.392088, -0.690735,
		30.247591, 23.591286, 32.602695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643316, 23.107828, 32.998428>,  <29.822287, 23.865747, 33.086212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643316, 23.107828, 32.998428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.007328, 23.130062, 32.834106>,  <30.225735, 23.143402, 32.735512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.007328, 23.130062, 32.834106>,  <29.643316, 23.107828, 32.998428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007328, 23.130062, 32.834106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250876, -0.862746, 0.439011,
		-0.330016, -0.502573, -0.799068,
		0.910028, 0.055586, -0.410803,
		30.280336, 23.146738, 32.710865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740025, 22.449797, 32.632065>,  <29.643316, 23.107828, 32.998428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740025, 22.449797, 32.632065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.081060, 22.631775, 32.734917>,  <30.285683, 22.740961, 32.796627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.081060, 22.631775, 32.734917>,  <29.740025, 22.449797, 32.632065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081060, 22.631775, 32.734917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357084, -0.866434, 0.348975,
		0.381553, -0.205714, -0.901165,
		0.852589, 0.454945, 0.257133,
		30.336838, 22.768259, 32.812057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180159, 21.931376, 32.552933>,  <29.740025, 22.449797, 32.632065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180159, 21.931376, 32.552933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.369835, 22.197895, 32.783131>,  <30.483641, 22.357807, 32.921249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.369835, 22.197895, 32.783131>,  <30.180159, 21.931376, 32.552933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369835, 22.197895, 32.783131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476787, -0.743850, 0.468360,
		0.740146, 0.052294, -0.670409,
		0.474191, 0.666298, 0.575491,
		30.512093, 22.397785, 32.955776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960045, 21.701715, 32.549427>,  <30.180159, 21.931376, 32.552933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960045, 21.701715, 32.549427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.841455, 21.924519, 32.859741>,  <30.770302, 22.058201, 33.045929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.841455, 21.924519, 32.859741>,  <30.960045, 21.701715, 32.549427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841455, 21.924519, 32.859741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367345, -0.683309, 0.630989,
		0.881568, 0.472052, -0.002032,
		-0.296471, 0.557006, 0.775789,
		30.752514, 22.091619, 33.092480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468544, 21.870958, 32.965485>,  <30.960045, 21.701715, 32.549427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468544, 21.870958, 32.965485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.149982, 21.877880, 33.207291>,  <30.958845, 21.882034, 33.352375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.149982, 21.877880, 33.207291>,  <31.468544, 21.870958, 32.965485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149982, 21.877880, 33.207291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367226, -0.780369, 0.506132,
		0.480505, 0.625080, 0.615134,
		-0.796404, 0.017305, 0.604517,
		30.911060, 21.883072, 33.388645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969910, 21.279549, 32.624516>,  <31.468544, 21.870958, 32.965485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969910, 21.279549, 32.624516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.249054, 21.015491, 32.513378>,  <32.416542, 20.857058, 32.446697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.249054, 21.015491, 32.513378>,  <31.969910, 21.279549, 32.624516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249054, 21.015491, 32.513378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108008, 0.286492, -0.951975,
		0.708041, 0.694358, 0.128631,
		0.697863, -0.660144, -0.277844,
		32.458412, 20.817448, 32.430023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519028, 21.676729, 32.257366>,  <31.969910, 21.279549, 32.624516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519028, 21.676729, 32.257366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.552296, 21.298557, 32.131351>,  <32.572254, 21.071655, 32.055744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.552296, 21.298557, 32.131351>,  <32.519028, 21.676729, 32.257366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552296, 21.298557, 32.131351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080985, 0.308673, -0.947714,
		0.993239, 0.104332, -0.050894,
		0.083167, -0.945429, -0.315036,
		32.577248, 21.014929, 32.036842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963409, 21.632990, 31.731333>,  <32.519028, 21.676729, 32.257366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963409, 21.632990, 31.731333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.767372, 21.286652, 31.691093>,  <32.649750, 21.078850, 31.666950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.767372, 21.286652, 31.691093>,  <32.963409, 21.632990, 31.731333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767372, 21.286652, 31.691093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126430, 0.184801, -0.974610,
		0.862451, -0.464934, -0.200039,
		-0.490096, -0.865844, -0.100600,
		32.620342, 21.026899, 31.660913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166317, 21.441906, 31.194344>,  <32.963409, 21.632990, 31.731333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166317, 21.441906, 31.194344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.835194, 21.219215, 31.222004>,  <32.636520, 21.085602, 31.238600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.835194, 21.219215, 31.222004>,  <33.166317, 21.441906, 31.194344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835194, 21.219215, 31.222004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110516, 0.040985, -0.993029,
		0.550012, -0.829684, -0.095455,
		-0.827812, -0.556727, 0.069152,
		32.586849, 21.052197, 31.242750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106777, 20.999006, 30.589531>,  <33.166317, 21.441906, 31.194344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106777, 20.999006, 30.589531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.740055, 21.049713, 30.741005>,  <32.520023, 21.080137, 30.831890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.740055, 21.049713, 30.741005>,  <33.106777, 20.999006, 30.589531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740055, 21.049713, 30.741005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325734, 0.311198, -0.892778,
		-0.231021, -0.941853, -0.244015,
		-0.916802, 0.126767, 0.378686,
		32.465015, 21.087744, 30.854610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649212, 21.002216, 29.999397>,  <33.106777, 20.999006, 30.589531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649212, 21.002216, 29.999397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.377117, 21.113209, 30.270775>,  <32.213860, 21.179804, 30.433601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.377117, 21.113209, 30.270775>,  <32.649212, 21.002216, 29.999397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377117, 21.113209, 30.270775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456250, 0.564128, -0.688183,
		-0.573684, -0.777667, -0.257140,
		-0.680237, 0.277479, 0.678442,
		32.173046, 21.196453, 30.474308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088623, 20.934916, 29.588547>,  <32.649212, 21.002216, 29.999397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088623, 20.934916, 29.588547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.958471, 21.149876, 29.899757>,  <31.880381, 21.278852, 30.086485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.958471, 21.149876, 29.899757>,  <32.088623, 20.934916, 29.588547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958471, 21.149876, 29.899757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480124, 0.614950, -0.625554,
		-0.814621, -0.577093, 0.057926,
		-0.325381, 0.537401, 0.778028,
		31.860857, 21.311096, 30.133165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375669, 21.101480, 29.514013>,  <32.088623, 20.934916, 29.588547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375669, 21.101480, 29.514013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515656, 21.380257, 29.764389>,  <31.599648, 21.547523, 29.914614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.515656, 21.380257, 29.764389>,  <31.375669, 21.101480, 29.514013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515656, 21.380257, 29.764389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452587, 0.710825, -0.538417,
		-0.820177, -0.094864, 0.564190,
		0.349964, 0.696942, 0.625937,
		31.620646, 21.589338, 29.952169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782885, 21.485746, 29.577497>,  <31.375669, 21.101480, 29.514013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782885, 21.485746, 29.577497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.101723, 21.703159, 29.682732>,  <31.293026, 21.833607, 29.745872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.101723, 21.703159, 29.682732>,  <30.782885, 21.485746, 29.577497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101723, 21.703159, 29.682732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330824, 0.757539, -0.562752,
		-0.505171, 0.361532, 0.783644,
		0.797094, 0.543534, 0.263083,
		31.340851, 21.866220, 29.761656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462317, 22.164864, 29.670614>,  <30.782885, 21.485746, 29.577497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462317, 22.164864, 29.670614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.855843, 22.231121, 29.643272>,  <31.091957, 22.270876, 29.626867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.855843, 22.231121, 29.643272>,  <30.462317, 22.164864, 29.670614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855843, 22.231121, 29.643272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170989, 0.753673, -0.634618,
		-0.053605, 0.636034, 0.769797,
		0.983814, 0.165646, -0.068354,
		31.150986, 22.280815, 29.622766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536392, 22.831039, 29.857695>,  <30.462317, 22.164864, 29.670614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536392, 22.831039, 29.857695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.872108, 22.766224, 29.650105>,  <31.073538, 22.727335, 29.525551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.872108, 22.766224, 29.650105>,  <30.536392, 22.831039, 29.857695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872108, 22.766224, 29.650105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163458, 0.835185, -0.525116,
		0.518530, 0.525555, 0.674477,
		0.839290, -0.162040, -0.518975,
		31.123896, 22.717611, 29.494411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982761, 23.482323, 29.851053>,  <30.536392, 22.831039, 29.857695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982761, 23.482323, 29.851053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.142475, 23.294449, 29.536102>,  <31.238304, 23.181725, 29.347132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.142475, 23.294449, 29.536102>,  <30.982761, 23.482323, 29.851053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142475, 23.294449, 29.536102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096591, 0.875580, -0.473318,
		0.911725, 0.112934, 0.394973,
		0.399284, -0.469686, -0.787380,
		31.262260, 23.153543, 29.299889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529745, 23.890882, 29.708641>,  <30.982761, 23.482323, 29.851053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529745, 23.890882, 29.708641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.413494, 23.682583, 29.387554>,  <31.343744, 23.557604, 29.194902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.413494, 23.682583, 29.387554>,  <31.529745, 23.890882, 29.708641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413494, 23.682583, 29.387554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136710, 0.852922, -0.503819,
		0.947019, -0.036685, -0.319074,
		-0.290628, -0.520747, -0.802719,
		31.326305, 23.526360, 29.146738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922941, 24.182709, 29.244398>,  <31.529745, 23.890882, 29.708641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922941, 24.182709, 29.244398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.606295, 24.008976, 29.072491>,  <31.416307, 23.904736, 28.969347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.606295, 24.008976, 29.072491>,  <31.922941, 24.182709, 29.244398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606295, 24.008976, 29.072491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266864, 0.878493, -0.396275,
		0.549662, -0.199008, -0.811337,
		-0.791616, -0.434334, -0.429766,
		31.368811, 23.878675, 28.943562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700672, 24.027525, 29.338341>,  <31.922941, 24.182709, 29.244398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700672, 24.027525, 29.338341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.025734, 24.258167, 29.372078>,  <33.220772, 24.396553, 29.392321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.025734, 24.258167, 29.372078>,  <32.700672, 24.027525, 29.338341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025734, 24.258167, 29.372078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364247, -0.615588, 0.698839,
		0.454874, -0.537195, -0.710289,
		0.812659, 0.576604, 0.084344,
		33.269531, 24.431149, 29.397381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268139, 23.621628, 29.198540>,  <32.700672, 24.027525, 29.338341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268139, 23.621628, 29.198540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379673, 23.912640, 29.449284>,  <33.446594, 24.087246, 29.599730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.379673, 23.912640, 29.449284>,  <33.268139, 23.621628, 29.198540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379673, 23.912640, 29.449284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239601, -0.684807, 0.688208,
		0.929970, -0.041698, -0.365263,
		0.278831, 0.727530, 0.626859,
		33.463322, 24.130899, 29.637341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883022, 23.339029, 29.484247>,  <33.268139, 23.621628, 29.198540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883022, 23.339029, 29.484247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.780388, 23.645840, 29.719479>,  <33.718807, 23.829926, 29.860617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.780388, 23.645840, 29.719479>,  <33.883022, 23.339029, 29.484247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780388, 23.645840, 29.719479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412709, -0.463242, 0.784269,
		0.873977, 0.443936, -0.197698,
		-0.256584, 0.767025, 0.588079,
		33.703411, 23.875948, 29.895903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502983, 23.580606, 29.904724>,  <33.883022, 23.339029, 29.484247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502983, 23.580606, 29.904724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171276, 23.671154, 30.109108>,  <33.972252, 23.725483, 30.231737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171276, 23.671154, 30.109108>,  <34.502983, 23.580606, 29.904724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171276, 23.671154, 30.109108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410719, -0.373164, 0.831901,
		0.378988, 0.899726, 0.216477,
		-0.829264, 0.226369, 0.510958,
		33.922497, 23.739065, 30.262396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750591, 23.835869, 30.555006>,  <34.502983, 23.580606, 29.904724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750591, 23.835869, 30.555006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363056, 23.766338, 30.625599>,  <34.130535, 23.724621, 30.667955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.363056, 23.766338, 30.625599>,  <34.750591, 23.835869, 30.555006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363056, 23.766338, 30.625599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236534, -0.437580, 0.867511,
		-0.073569, 0.882218, 0.465058,
		-0.968834, -0.173824, 0.176482,
		34.072407, 23.714191, 30.678543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624866, 24.035204, 31.308208>,  <34.750591, 23.835869, 30.555006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624866, 24.035204, 31.308208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324184, 23.784298, 31.226749>,  <34.143776, 23.633755, 31.177874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324184, 23.784298, 31.226749>,  <34.624866, 24.035204, 31.308208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324184, 23.784298, 31.226749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210132, -0.520507, 0.827597,
		-0.625123, 0.579319, 0.523078,
		-0.751708, -0.627266, -0.203647,
		34.098671, 23.596119, 31.165655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280296, 23.894846, 31.920403>,  <34.624866, 24.035204, 31.308208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280296, 23.894846, 31.920403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136204, 23.580273, 31.719700>,  <34.049747, 23.391529, 31.599279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136204, 23.580273, 31.719700>,  <34.280296, 23.894846, 31.920403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136204, 23.580273, 31.719700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294647, -0.606251, 0.738677,
		-0.885109, 0.118252, 0.450109,
		-0.360229, -0.786433, -0.501755,
		34.028133, 23.344343, 31.569174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207001, 24.410448, 32.294964>,  <34.280296, 23.894846, 31.920403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207001, 24.410448, 32.294964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570095, 24.512253, 32.428375>,  <34.787952, 24.573336, 32.508423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570095, 24.512253, 32.428375>,  <34.207001, 24.410448, 32.294964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570095, 24.512253, 32.428375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122899, 0.598793, -0.791418,
		-0.401138, 0.759389, 0.512267,
		0.907736, 0.254511, 0.333527,
		34.842415, 24.588606, 32.528435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192112, 25.132826, 32.256329>,  <34.207001, 24.410448, 32.294964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192112, 25.132826, 32.256329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.573029, 25.012199, 32.275066>,  <34.801579, 24.939823, 32.286308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.573029, 25.012199, 32.275066>,  <34.192112, 25.132826, 32.256329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573029, 25.012199, 32.275066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253313, 0.695472, -0.672422,
		0.170202, 0.652209, 0.738684,
		0.952294, -0.301566, 0.046842,
		34.858715, 24.921730, 32.289120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615318, 25.746786, 32.138962>,  <34.192112, 25.132826, 32.256329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615318, 25.746786, 32.138962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898499, 25.464836, 32.121258>,  <35.068405, 25.295666, 32.110634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.898499, 25.464836, 32.121258>,  <34.615318, 25.746786, 32.138962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898499, 25.464836, 32.121258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461316, 0.508965, -0.726734,
		0.534784, 0.494073, 0.685491,
		0.707951, -0.704874, -0.044263,
		35.110886, 25.253374, 32.107979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358040, 26.063612, 32.418297>,  <34.615318, 25.746786, 32.138962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358040, 26.063612, 32.418297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.434837, 25.777824, 32.149174>,  <35.480915, 25.606352, 31.987700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.434837, 25.777824, 32.149174>,  <35.358040, 26.063612, 32.418297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434837, 25.777824, 32.149174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172636, 0.699460, -0.693507,
		0.966093, 0.016998, 0.257635,
		0.191994, -0.714469, -0.672809,
		35.492435, 25.563484, 31.947330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883423, 26.360420, 32.014915>,  <35.358040, 26.063612, 32.418297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883423, 26.360420, 32.014915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716736, 26.070507, 31.795448>,  <35.616722, 25.896559, 31.663769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716736, 26.070507, 31.795448>,  <35.883423, 26.360420, 32.014915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716736, 26.070507, 31.795448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022506, 0.595156, -0.803295,
		0.908757, -0.347096, -0.231700,
		-0.416718, -0.724785, -0.548664,
		35.591721, 25.853071, 31.630850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320400, 26.265701, 31.474344>,  <35.883423, 26.360420, 32.014915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320400, 26.265701, 31.474344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961800, 26.128468, 31.362217>,  <35.746639, 26.046127, 31.294941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961800, 26.128468, 31.362217>,  <36.320400, 26.265701, 31.474344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961800, 26.128468, 31.362217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021876, 0.666223, -0.745431,
		0.442501, -0.662148, -0.604775,
		-0.896501, -0.343084, -0.280320,
		35.692848, 26.025541, 31.278120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391701, 26.161974, 30.758648>,  <36.320400, 26.265701, 31.474344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391701, 26.161974, 30.758648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.001137, 26.213291, 30.828125>,  <35.766800, 26.244081, 30.869812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.001137, 26.213291, 30.828125>,  <36.391701, 26.161974, 30.758648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001137, 26.213291, 30.828125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046590, 0.660266, -0.749585,
		-0.210852, -0.739993, -0.638712,
		-0.976407, 0.128294, 0.173695,
		35.708214, 26.251780, 30.880234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.279768, 24.369770, 35.398483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.118444, 24.230610, 35.059944>,  <31.021650, 24.147114, 34.856819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.118444, 24.230610, 35.059944>,  <31.279768, 24.369770, 35.398483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118444, 24.230610, 35.059944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067669, 0.911035, -0.406738,
		0.912563, -0.221309, -0.343876,
		-0.403298, -0.347904, -0.846353,
		30.997452, 24.126240, 34.806038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870108, 24.267811, 34.798515>,  <31.279768, 24.369770, 35.398483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870108, 24.267811, 34.798515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.492437, 24.320236, 34.677616>,  <31.265835, 24.351690, 34.605076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.492437, 24.320236, 34.677616>,  <31.870108, 24.267811, 34.798515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492437, 24.320236, 34.677616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238964, 0.904009, -0.354490,
		0.226772, -0.406927, -0.884864,
		-0.944177, 0.131062, -0.302245,
		31.209185, 24.359554, 34.586941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946735, 24.662212, 34.300007>,  <31.870108, 24.267811, 34.798515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946735, 24.662212, 34.300007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.548574, 24.700001, 34.306282>,  <31.309677, 24.722673, 34.310047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.548574, 24.700001, 34.306282>,  <31.946735, 24.662212, 34.300007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548574, 24.700001, 34.306282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079185, 0.904081, -0.419962,
		-0.053859, -0.416789, -0.907406,
		-0.995404, 0.094472, 0.015689,
		31.249954, 24.728342, 34.310989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779909, 25.080173, 33.641014>,  <31.946735, 24.662212, 34.300007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779909, 25.080173, 33.641014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.458214, 25.135159, 33.872288>,  <31.265196, 25.168150, 34.011051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.458214, 25.135159, 33.872288>,  <31.779909, 25.080173, 33.641014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458214, 25.135159, 33.872288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131665, 0.907493, -0.398899,
		-0.579536, -0.396937, -0.711743,
		-0.804240, 0.137465, 0.578188,
		31.216942, 25.176397, 34.045746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270754, 25.336550, 33.184460>,  <31.779909, 25.080173, 33.641014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270754, 25.336550, 33.184460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.188959, 25.456585, 33.557156>,  <31.139881, 25.528606, 33.780773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.188959, 25.456585, 33.557156>,  <31.270754, 25.336550, 33.184460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188959, 25.456585, 33.557156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171237, 0.926205, -0.335890,
		-0.963775, -0.228233, -0.138012,
		-0.204489, 0.300089, 0.931735,
		31.127613, 25.546612, 33.836678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716894, 25.803917, 33.139027>,  <31.270754, 25.336550, 33.184460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716894, 25.803917, 33.139027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.874638, 25.875881, 33.499496>,  <30.969284, 25.919060, 33.715778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.874638, 25.875881, 33.499496>,  <30.716894, 25.803917, 33.139027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874638, 25.875881, 33.499496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296793, 0.953031, -0.060385,
		-0.869710, -0.243649, 0.429231,
		0.394358, 0.179910, 0.901174,
		30.992945, 25.929853, 33.769848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214926, 26.170156, 33.374706>,  <30.716894, 25.803917, 33.139027>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214926, 26.170156, 33.374706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.517794, 26.280571, 33.611515>,  <30.699514, 26.346821, 33.753601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.517794, 26.280571, 33.611515>,  <30.214926, 26.170156, 33.374706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517794, 26.280571, 33.611515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178469, 0.959262, -0.219011,
		-0.628364, 0.060170, 0.775589,
		0.757171, 0.276037, 0.592027,
		30.744946, 26.363382, 33.789124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988962, 26.729143, 33.618137>,  <30.214926, 26.170156, 33.374706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988962, 26.729143, 33.618137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.383764, 26.768295, 33.669113>,  <30.620646, 26.791786, 33.699699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.383764, 26.768295, 33.669113>,  <29.988962, 26.729143, 33.618137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383764, 26.768295, 33.669113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104719, 0.993339, 0.048085,
		-0.121888, -0.060806, 0.990679,
		0.987004, 0.097882, 0.127444,
		30.679865, 26.797661, 33.707348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000595, 27.270729, 34.039577>,  <29.988962, 26.729143, 33.618137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000595, 27.270729, 34.039577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.367735, 27.252644, 33.881836>,  <30.588018, 27.241793, 33.787193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.367735, 27.252644, 33.881836>,  <30.000595, 27.270729, 34.039577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367735, 27.252644, 33.881836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042305, 0.998975, -0.016076,
		0.394673, -0.001928, 0.918820,
		0.917847, -0.045215, -0.394350,
		30.643089, 27.239079, 33.763531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460720, 27.910288, 34.356735>,  <30.000595, 27.270729, 34.039577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460720, 27.910288, 34.356735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.627748, 27.785706, 34.015297>,  <30.727964, 27.710957, 33.810432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.627748, 27.785706, 34.015297>,  <30.460720, 27.910288, 34.356735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627748, 27.785706, 34.015297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027415, 0.934674, -0.354448,
		0.908232, 0.171408, 0.381753,
		0.417569, -0.311455, -0.853599,
		30.753019, 27.692268, 33.759216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957228, 28.431961, 34.184193>,  <30.460720, 27.910288, 34.356735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957228, 28.431961, 34.184193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.932859, 28.230877, 33.839272>,  <30.918238, 28.110226, 33.632317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.932859, 28.230877, 33.839272>,  <30.957228, 28.431961, 34.184193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932859, 28.230877, 33.839272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133771, 0.852004, -0.506156,
		0.989138, -0.146187, 0.015342,
		-0.060922, -0.502710, -0.862306,
		30.914583, 28.080063, 33.580582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392027, 28.859499, 33.713333>,  <30.957228, 28.431961, 34.184193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392027, 28.859499, 33.713333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.146292, 28.636864, 33.489620>,  <30.998852, 28.503283, 33.355392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.146292, 28.636864, 33.489620>,  <31.392027, 28.859499, 33.713333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146292, 28.636864, 33.489620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022312, 0.696275, -0.717428,
		0.788728, -0.453222, -0.415329,
		-0.614337, -0.556589, -0.559284,
		30.961990, 28.469887, 33.321835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060978, 28.670822, 33.431782>,  <31.392027, 28.859499, 33.713333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060978, 28.670822, 33.431782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.425491, 28.805428, 33.526707>,  <32.644199, 28.886190, 33.583664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.425491, 28.805428, 33.526707>,  <32.060978, 28.670822, 33.431782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425491, 28.805428, 33.526707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104021, -0.745756, 0.658048,
		0.398422, -0.574983, -0.714601,
		0.911284, 0.336514, 0.237315,
		32.698875, 28.906382, 33.597900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652020, 28.056349, 33.312256>,  <32.060978, 28.670822, 33.431782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652020, 28.056349, 33.312256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.797009, 28.327129, 33.568489>,  <32.884003, 28.489597, 33.722229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.797009, 28.327129, 33.568489>,  <32.652020, 28.056349, 33.312256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797009, 28.327129, 33.568489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219617, -0.730014, 0.647185,
		0.905750, -0.093902, -0.413279,
		0.362472, 0.676950, 0.640588,
		32.905750, 28.530214, 33.760666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232880, 27.772327, 33.509842>,  <32.652020, 28.056349, 33.312256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232880, 27.772327, 33.509842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.165340, 28.063637, 33.775505>,  <33.124817, 28.238422, 33.934902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.165340, 28.063637, 33.775505>,  <33.232880, 27.772327, 33.509842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165340, 28.063637, 33.775505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393749, -0.567893, 0.722813,
		0.903577, 0.383557, -0.190871,
		-0.168846, 0.728273, 0.664160,
		33.114685, 28.282118, 33.974754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727444, 27.655069, 33.978691>,  <33.232880, 27.772327, 33.509842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727444, 27.655069, 33.978691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442295, 27.874271, 34.153740>,  <33.271206, 28.005793, 34.258770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442295, 27.874271, 34.153740>,  <33.727444, 27.655069, 33.978691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442295, 27.874271, 34.153740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136471, -0.503682, 0.853042,
		0.687893, 0.667828, 0.284271,
		-0.712867, 0.548006, 0.437618,
		33.228436, 28.038673, 34.285027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958145, 27.968079, 34.654774>,  <33.727444, 27.655069, 33.978691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958145, 27.968079, 34.654774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.559559, 27.969990, 34.688305>,  <33.320408, 27.971136, 34.708424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.559559, 27.969990, 34.688305>,  <33.958145, 27.968079, 34.654774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559559, 27.969990, 34.688305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062212, -0.628522, 0.775300,
		0.056396, 0.777777, 0.626005,
		-0.996468, 0.004779, 0.083833,
		33.260620, 27.971424, 34.713455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875393, 27.999439, 35.384769>,  <33.958145, 27.968079, 34.654774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875393, 27.999439, 35.384769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.527481, 27.877472, 35.229591>,  <33.318733, 27.804291, 35.136486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.527481, 27.877472, 35.229591>,  <33.875393, 27.999439, 35.384769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527481, 27.877472, 35.229591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159318, -0.570563, 0.805652,
		-0.467005, 0.762550, 0.447687,
		-0.869784, -0.304919, -0.387944,
		33.266544, 27.785995, 35.113209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443180, 28.037724, 35.918518>,  <33.875393, 27.999439, 35.384769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443180, 28.037724, 35.918518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.240841, 27.791428, 35.676865>,  <33.119438, 27.643650, 35.531872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.240841, 27.791428, 35.676865>,  <33.443180, 28.037724, 35.918518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240841, 27.791428, 35.676865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038907, -0.715923, 0.697094,
		-0.861742, 0.329121, 0.386108,
		-0.505852, -0.615738, -0.604136,
		33.089085, 27.606707, 35.495625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902672, 27.803288, 36.383537>,  <33.443180, 28.037724, 35.918518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902672, 27.803288, 36.383537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.931488, 27.567627, 36.061615>,  <32.948780, 27.426229, 35.868462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.931488, 27.567627, 36.061615>,  <32.902672, 27.803288, 36.383537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931488, 27.567627, 36.061615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020810, -0.805837, 0.591773,
		-0.997184, -0.059382, -0.045795,
		0.072044, -0.589153, -0.804803,
		32.953102, 27.390881, 35.820175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439812, 27.239702, 36.463341>,  <32.902672, 27.803288, 36.383537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439812, 27.239702, 36.463341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.705189, 27.103298, 36.196941>,  <32.864414, 27.021456, 36.037102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.705189, 27.103298, 36.196941>,  <32.439812, 27.239702, 36.463341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705189, 27.103298, 36.196941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186111, -0.786918, 0.588322,
		-0.724709, -0.514269, -0.458611,
		0.663445, -0.341010, -0.665997,
		32.904221, 27.000996, 35.997143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320259, 26.464277, 36.369148>,  <32.439812, 27.239702, 36.463341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320259, 26.464277, 36.369148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.698696, 26.541309, 36.264980>,  <32.925758, 26.587528, 36.202480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.698696, 26.541309, 36.264980>,  <32.320259, 26.464277, 36.369148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698696, 26.541309, 36.264980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303177, -0.809469, 0.502835,
		-0.113963, -0.554682, -0.824221,
		0.946095, 0.192580, -0.260416,
		32.982525, 26.599083, 36.186855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599857, 25.839231, 36.111691>,  <32.320259, 26.464277, 36.369148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599857, 25.839231, 36.111691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.923340, 26.062634, 36.185524>,  <33.117428, 26.196674, 36.229824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.923340, 26.062634, 36.185524>,  <32.599857, 25.839231, 36.111691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923340, 26.062634, 36.185524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411274, -0.761225, 0.501388,
		0.420536, -0.329561, -0.845304,
		0.808704, 0.558504, 0.184583,
		33.165951, 26.230185, 36.240898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133846, 25.361525, 35.936932>,  <32.599857, 25.839231, 36.111691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133846, 25.361525, 35.936932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.303593, 25.649628, 36.156437>,  <33.405441, 25.822491, 36.288139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.303593, 25.649628, 36.156437>,  <33.133846, 25.361525, 35.936932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303593, 25.649628, 36.156437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509434, -0.690939, 0.512914,
		0.748591, 0.061894, -0.660137,
		0.424368, 0.720259, 0.548761,
		33.430904, 25.865705, 36.321064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755157, 25.185165, 35.825024>,  <33.133846, 25.361525, 35.936932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755157, 25.185165, 35.825024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.753262, 25.403011, 36.160492>,  <33.752125, 25.533718, 36.361774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.753262, 25.403011, 36.160492>,  <33.755157, 25.185165, 35.825024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753262, 25.403011, 36.160492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598547, -0.670308, 0.438667,
		0.801074, 0.504065, -0.322799,
		-0.004742, 0.544615, 0.838673,
		33.751839, 25.566397, 36.412094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532856, 25.245684, 36.000336>,  <33.755157, 25.185165, 35.825024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532856, 25.245684, 36.000336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.293270, 25.303059, 36.315464>,  <34.149517, 25.337484, 36.504543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.293270, 25.303059, 36.315464>,  <34.532856, 25.245684, 36.000336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293270, 25.303059, 36.315464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459097, -0.744571, 0.484607,
		0.656102, 0.651951, 0.380120,
		-0.598966, 0.143439, 0.787823,
		34.113579, 25.346090, 36.551811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776321, 24.777639, 35.269455>,  <34.532856, 25.245684, 36.000336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776321, 24.777639, 35.269455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.740425, 24.381927, 35.315536>,  <34.718887, 24.144501, 35.343185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.740425, 24.381927, 35.315536>,  <34.776321, 24.777639, 35.269455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740425, 24.381927, 35.315536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433432, -0.142931, -0.889780,
		0.896707, -0.029919, 0.441612,
		-0.089742, -0.989280, 0.115199,
		34.713501, 24.085144, 35.350098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396725, 24.511841, 35.237686>,  <34.776321, 24.777639, 35.269455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396725, 24.511841, 35.237686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.127556, 24.257629, 35.086277>,  <34.966053, 24.105103, 34.995430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.127556, 24.257629, 35.086277>,  <35.396725, 24.511841, 35.237686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127556, 24.257629, 35.086277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291049, 0.242962, -0.925343,
		0.680049, -0.732852, 0.021475,
		-0.672922, -0.635530, -0.378522,
		34.925678, 24.066971, 34.972721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712013, 24.315128, 34.632080>,  <35.396725, 24.511841, 35.237686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712013, 24.315128, 34.632080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.336365, 24.190792, 34.573532>,  <35.110973, 24.116190, 34.538403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.336365, 24.190792, 34.573532>,  <35.712013, 24.315128, 34.632080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336365, 24.190792, 34.573532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068426, 0.248266, -0.966272,
		0.336698, -0.917464, -0.211883,
		-0.939123, -0.310844, -0.146369,
		35.054626, 24.097540, 34.529621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701546, 23.713589, 34.133179>,  <35.712013, 24.315128, 34.632080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701546, 23.713589, 34.133179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.340546, 23.885860, 34.131741>,  <35.123947, 23.989223, 34.130878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.340546, 23.885860, 34.131741>,  <35.701546, 23.713589, 34.133179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340546, 23.885860, 34.131741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061315, 0.120214, -0.990853,
		-0.426306, -0.894464, -0.134900,
		-0.902499, 0.430678, -0.003597,
		35.069798, 24.015064, 34.130661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390537, 23.438482, 33.556171>,  <35.701546, 23.713589, 34.133179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390537, 23.438482, 33.556171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.147655, 23.750889, 33.614578>,  <35.001926, 23.938334, 33.649624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.147655, 23.750889, 33.614578>,  <35.390537, 23.438482, 33.556171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147655, 23.750889, 33.614578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026881, 0.203866, -0.978630,
		-0.794094, -0.590299, -0.144782,
		-0.607200, 0.781016, 0.146021,
		34.965496, 23.985193, 33.658386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921665, 23.450306, 32.973114>,  <35.390537, 23.438482, 33.556171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921665, 23.450306, 32.973114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.919117, 23.821953, 33.121006>,  <34.917587, 24.044941, 33.209743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.919117, 23.821953, 33.121006>,  <34.921665, 23.450306, 32.973114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919117, 23.821953, 33.121006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089621, 0.368784, -0.925185,
		-0.995956, 0.027244, -0.085617,
		-0.006368, 0.929116, 0.369734,
		34.917206, 24.100687, 33.231926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406178, 23.706495, 32.636105>,  <34.921665, 23.450306, 32.973114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406178, 23.706495, 32.636105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.664097, 23.984192, 32.764023>,  <34.818848, 24.150810, 32.840775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.664097, 23.984192, 32.764023>,  <34.406178, 23.706495, 32.636105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664097, 23.984192, 32.764023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068733, 0.364028, -0.928849,
		-0.761259, 0.620898, 0.187006,
		0.644796, 0.694240, 0.319795,
		34.857536, 24.192465, 32.859962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779404, 23.571627, 32.309128>,  <34.406178, 23.706495, 32.636105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779404, 23.571627, 32.309128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.929897, 23.271885, 32.091171>,  <34.020195, 23.092039, 31.960396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.929897, 23.271885, 32.091171>,  <33.779404, 23.571627, 32.309128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929897, 23.271885, 32.091171> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303957, -0.455733, 0.836611,
		-0.875246, -0.480389, 0.056308,
		0.376237, -0.749356, -0.544896,
		34.042770, 23.047079, 31.927702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593681, 22.973177, 32.552425>,  <33.779404, 23.571627, 32.309128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593681, 22.973177, 32.552425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.885193, 22.814117, 32.329445>,  <34.060101, 22.718681, 32.195656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.885193, 22.814117, 32.329445>,  <33.593681, 22.973177, 32.552425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885193, 22.814117, 32.329445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175546, -0.678395, 0.713417,
		-0.661863, -0.617783, -0.424595,
		0.728780, -0.397649, -0.557454,
		34.103828, 22.694822, 32.162209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406189, 22.364550, 32.378365>,  <33.593681, 22.973177, 32.552425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406189, 22.364550, 32.378365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.803131, 22.332249, 32.341022>,  <34.041294, 22.312868, 32.318615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.803131, 22.332249, 32.341022>,  <33.406189, 22.364550, 32.378365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803131, 22.332249, 32.341022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005351, -0.783757, 0.621045,
		-0.123321, -0.615796, -0.778195,
		0.992353, -0.080752, -0.093358,
		34.100838, 22.308023, 32.313015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439365, 21.702862, 32.357773>,  <33.406189, 22.364550, 32.378365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439365, 21.702862, 32.357773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.810635, 21.823700, 32.444710>,  <34.033394, 21.896204, 32.496872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.810635, 21.823700, 32.444710>,  <33.439365, 21.702862, 32.357773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810635, 21.823700, 32.444710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162960, -0.854958, 0.492433,
		0.334581, -0.421643, -0.842777,
		0.928170, 0.302097, 0.217342,
		34.089085, 21.914330, 32.509911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799572, 21.164139, 32.212662>,  <33.439365, 21.702862, 32.357773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799572, 21.164139, 32.212662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028904, 21.393063, 32.447182>,  <34.166504, 21.530416, 32.587894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028904, 21.393063, 32.447182>,  <33.799572, 21.164139, 32.212662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028904, 21.393063, 32.447182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293559, -0.811575, 0.505142,
		0.764928, -0.117499, -0.633309,
		0.573331, 0.572310, 0.586304,
		34.200905, 21.564756, 32.623074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380932, 20.750490, 32.412155>,  <33.799572, 21.164139, 32.212662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380932, 20.750490, 32.412155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.478157, 21.052311, 32.655983>,  <34.536491, 21.233404, 32.802280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.478157, 21.052311, 32.655983>,  <34.380932, 20.750490, 32.412155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478157, 21.052311, 32.655983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461197, -0.642734, 0.611711,
		0.853358, 0.132448, -0.504220,
		0.243060, 0.754553, 0.609567,
		34.551075, 21.278677, 32.838852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117168, 20.692198, 32.528797>,  <34.380932, 20.750490, 32.412155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117168, 20.692198, 32.528797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.905579, 20.857929, 32.825047>,  <34.778625, 20.957369, 33.002796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.905579, 20.857929, 32.825047>,  <35.117168, 20.692198, 32.528797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905579, 20.857929, 32.825047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336166, -0.699021, 0.631159,
		0.779217, 0.582838, 0.230479,
		-0.528974, 0.414331, 0.740619,
		34.746887, 20.982229, 33.047234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467247, 20.678087, 33.208664>,  <35.117168, 20.692198, 32.528797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467247, 20.678087, 33.208664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.100632, 20.773544, 33.337040>,  <34.880661, 20.830818, 33.414066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.100632, 20.773544, 33.337040>,  <35.467247, 20.678087, 33.208664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100632, 20.773544, 33.337040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128987, -0.583210, 0.802015,
		0.378569, 0.776477, 0.503755,
		-0.916541, 0.238641, 0.320941,
		34.825668, 20.845137, 33.433323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540730, 21.071650, 33.847267>,  <35.467247, 20.678087, 33.208664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540730, 21.071650, 33.847267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.194263, 20.873516, 33.820721>,  <34.986385, 20.754637, 33.804794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.194263, 20.873516, 33.820721>,  <35.540730, 21.071650, 33.847267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194263, 20.873516, 33.820721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128829, -0.349614, 0.927994,
		-0.482870, 0.795245, 0.366637,
		-0.866164, -0.495334, -0.066367,
		34.934414, 20.724916, 33.800812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.006840, 32.954796, 23.804422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652018, 32.795094, 23.897141>,  <31.439125, 32.699272, 23.952772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652018, 32.795094, 23.897141>,  <32.006840, 32.954796, 23.804422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652018, 32.795094, 23.897141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460263, -0.803886, 0.376730,
		0.035929, 0.440868, 0.896853,
		-0.887055, -0.399252, 0.231798,
		31.385900, 32.675320, 23.966681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929094, 32.580349, 24.515175>,  <32.006840, 32.954796, 23.804422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929094, 32.580349, 24.515175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673809, 32.425262, 24.249134>,  <31.520638, 32.332211, 24.089510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673809, 32.425262, 24.249134>,  <31.929094, 32.580349, 24.515175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673809, 32.425262, 24.249134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405302, -0.903722, 0.137901,
		-0.654532, -0.181556, 0.733911,
		-0.638214, -0.387716, -0.665100,
		31.482346, 32.308949, 24.049604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673637, 32.034256, 24.832285>,  <31.929094, 32.580349, 24.515175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673637, 32.034256, 24.832285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529024, 31.973255, 24.464363>,  <31.442257, 31.936655, 24.243610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529024, 31.973255, 24.464363>,  <31.673637, 32.034256, 24.832285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529024, 31.973255, 24.464363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111406, -0.986530, 0.119778,
		-0.925680, -0.059168, 0.373653,
		-0.361533, -0.152503, -0.919803,
		31.420565, 31.927504, 24.188423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085232, 31.580540, 24.884926>,  <31.673637, 32.034256, 24.832285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085232, 31.580540, 24.884926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244055, 31.558105, 24.518494>,  <31.339348, 31.544645, 24.298635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244055, 31.558105, 24.518494>,  <31.085232, 31.580540, 24.884926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244055, 31.558105, 24.518494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050378, -0.995295, 0.082770,
		-0.916410, -0.079015, -0.392363,
		0.397057, -0.056085, -0.916079,
		31.363173, 31.541281, 24.243670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745937, 30.839300, 24.703201>,  <31.085232, 31.580540, 24.884926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745937, 30.839300, 24.703201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043518, 30.944096, 24.457306>,  <31.222067, 31.006973, 24.309769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.043518, 30.944096, 24.457306>,  <30.745937, 30.839300, 24.703201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043518, 30.944096, 24.457306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294983, -0.954210, -0.049677,
		-0.599603, -0.144380, -0.787166,
		0.743950, 0.261987, -0.614737,
		31.266703, 31.022692, 24.272884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763355, 30.427099, 24.142834>,  <30.745937, 30.839300, 24.703201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763355, 30.427099, 24.142834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144411, 30.546917, 24.163815>,  <31.373045, 30.618809, 24.176403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144411, 30.546917, 24.163815>,  <30.763355, 30.427099, 24.142834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144411, 30.546917, 24.163815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297920, -0.953887, 0.036652,
		0.061010, -0.019290, -0.997951,
		0.952639, 0.299546, 0.052450,
		31.430202, 30.636782, 24.179550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161554, 29.899147, 23.832813>,  <30.763355, 30.427099, 24.142834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161554, 29.899147, 23.832813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440317, 30.094677, 24.042717>,  <31.607574, 30.211994, 24.168659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440317, 30.094677, 24.042717>,  <31.161554, 29.899147, 23.832813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440317, 30.094677, 24.042717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477030, -0.862336, 0.169761,
		0.535502, 0.132019, -0.834151,
		0.696907, 0.488823, 0.524760,
		31.649389, 30.241323, 24.200146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782536, 29.537069, 23.706242>,  <31.161554, 29.899147, 23.832813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782536, 29.537069, 23.706242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842066, 29.750778, 24.039085>,  <31.877783, 29.879004, 24.238792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842066, 29.750778, 24.039085>,  <31.782536, 29.537069, 23.706242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842066, 29.750778, 24.039085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722488, -0.633294, 0.277399,
		0.675176, 0.559906, -0.480253,
		0.148824, 0.534270, 0.832110,
		31.886713, 29.911058, 24.288719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453213, 29.517208, 23.723705>,  <31.782536, 29.537069, 23.706242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453213, 29.517208, 23.723705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331177, 29.604778, 24.094433>,  <32.257954, 29.657320, 24.316870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331177, 29.604778, 24.094433>,  <32.453213, 29.517208, 23.723705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331177, 29.604778, 24.094433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647351, -0.666116, 0.370442,
		0.698467, 0.712995, 0.061505,
		-0.305093, 0.218926, 0.926817,
		32.239651, 29.670456, 24.372478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991035, 29.395988, 24.103682>,  <32.453213, 29.517208, 23.723705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991035, 29.395988, 24.103682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710732, 29.434444, 24.386436>,  <32.542549, 29.457518, 24.556089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710732, 29.434444, 24.386436>,  <32.991035, 29.395988, 24.103682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710732, 29.434444, 24.386436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491176, -0.653593, 0.575815,
		0.517376, 0.750715, 0.410791,
		-0.700763, 0.096142, 0.706886,
		32.500504, 29.463287, 24.598503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311977, 29.608648, 24.694435>,  <32.991035, 29.395988, 24.103682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311977, 29.608648, 24.694435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979164, 29.412914, 24.798946>,  <32.779476, 29.295473, 24.861654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979164, 29.412914, 24.798946>,  <33.311977, 29.608648, 24.694435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979164, 29.412914, 24.798946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547827, -0.650808, 0.525675,
		-0.087188, 0.580517, 0.809567,
		-0.832036, -0.489335, 0.261281,
		32.729553, 29.266113, 24.877331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391376, 29.526571, 25.435753>,  <33.311977, 29.608648, 24.694435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391376, 29.526571, 25.435753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133236, 29.252369, 25.300930>,  <32.978352, 29.087847, 25.220037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133236, 29.252369, 25.300930>,  <33.391376, 29.526571, 25.435753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133236, 29.252369, 25.300930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562274, -0.724955, 0.397853,
		-0.517081, 0.067236, 0.853291,
		-0.645348, -0.685506, -0.337056,
		32.939632, 29.046717, 25.199814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404789, 29.954786, 25.967335>,  <33.391376, 29.526571, 25.435753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404789, 29.954786, 25.967335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769386, 29.986221, 26.128830>,  <33.988144, 30.005083, 26.225727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769386, 29.986221, 26.128830>,  <33.404789, 29.954786, 25.967335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769386, 29.986221, 26.128830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241255, 0.692843, -0.679533,
		-0.333129, 0.716794, 0.612562,
		0.911494, 0.078588, 0.403736,
		34.042835, 30.009798, 26.249950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570065, 30.641478, 26.002268>,  <33.404789, 29.954786, 25.967335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570065, 30.641478, 26.002268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941048, 30.496605, 26.039463>,  <34.163639, 30.409681, 26.061781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941048, 30.496605, 26.039463>,  <33.570065, 30.641478, 26.002268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941048, 30.496605, 26.039463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350379, 0.754898, -0.554404,
		0.130597, 0.546768, 0.827037,
		0.927458, -0.362180, 0.092989,
		34.219284, 30.387951, 26.067360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087231, 31.185873, 26.148916>,  <33.570065, 30.641478, 26.002268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087231, 31.185873, 26.148916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309185, 30.876339, 26.026745>,  <34.442356, 30.690619, 25.953442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309185, 30.876339, 26.026745>,  <34.087231, 31.185873, 26.148916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309185, 30.876339, 26.026745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575102, 0.622078, -0.531297,
		0.601135, 0.119156, 0.790214,
		0.554882, -0.773835, -0.305426,
		34.475651, 30.644188, 25.935118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802448, 31.460012, 26.254414>,  <34.087231, 31.185873, 26.148916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802448, 31.460012, 26.254414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836239, 31.146896, 26.007805>,  <34.856514, 30.959026, 25.859838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836239, 31.146896, 26.007805>,  <34.802448, 31.460012, 26.254414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836239, 31.146896, 26.007805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694657, 0.489856, -0.526776,
		0.714363, -0.383770, 0.585155,
		0.084481, -0.782791, -0.616523,
		34.861584, 30.912060, 25.822847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547184, 31.423628, 26.064754>,  <34.802448, 31.460012, 26.254414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547184, 31.423628, 26.064754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341808, 31.216476, 25.791061>,  <35.218582, 31.092186, 25.626844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341808, 31.216476, 25.791061>,  <35.547184, 31.423628, 26.064754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341808, 31.216476, 25.791061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571114, 0.388896, -0.722903,
		0.640473, -0.761945, 0.096093,
		-0.513442, -0.517880, -0.684235,
		35.187775, 31.061111, 25.585791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071857, 31.021008, 25.660868>,  <35.547184, 31.423628, 26.064754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071857, 31.021008, 25.660868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745602, 31.019924, 25.429447>,  <35.549847, 31.019274, 25.290594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745602, 31.019924, 25.429447>,  <36.071857, 31.021008, 25.660868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745602, 31.019924, 25.429447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532959, 0.385595, -0.753173,
		0.225126, -0.922664, -0.313064,
		-0.815642, -0.002709, -0.578550,
		35.500908, 31.019112, 25.255882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298676, 30.800133, 24.987608>,  <36.071857, 31.021008, 25.660868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298676, 30.800133, 24.987608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948071, 30.980461, 24.920094>,  <35.737709, 31.088657, 24.879585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948071, 30.980461, 24.920094>,  <36.298676, 30.800133, 24.987608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948071, 30.980461, 24.920094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354033, 0.366129, -0.860587,
		-0.326172, -0.814070, -0.480521,
		-0.876511, 0.450820, -0.168787,
		35.685116, 31.115707, 24.869457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265656, 30.772642, 24.286913>,  <36.298676, 30.800133, 24.987608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265656, 30.772642, 24.286913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003075, 31.052444, 24.399887>,  <35.845528, 31.220325, 24.467670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003075, 31.052444, 24.399887>,  <36.265656, 30.772642, 24.286913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003075, 31.052444, 24.399887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225599, 0.539299, -0.811333,
		-0.719848, -0.468882, -0.511829,
		-0.656448, 0.699505, 0.282434,
		35.806141, 31.262297, 24.484617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860039, 30.903591, 23.622993>,  <36.265656, 30.772642, 24.286913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860039, 30.903591, 23.622993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841003, 31.207497, 23.882374>,  <35.829582, 31.389841, 24.038002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841003, 31.207497, 23.882374>,  <35.860039, 30.903591, 23.622993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841003, 31.207497, 23.882374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283665, 0.632739, -0.720538,
		-0.957742, 0.149656, -0.245629,
		-0.047586, 0.759766, 0.648453,
		35.826729, 31.435427, 24.076910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536320, 31.460312, 23.294762>,  <35.860039, 30.903591, 23.622993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536320, 31.460312, 23.294762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700855, 31.652683, 23.604473>,  <35.799576, 31.768106, 23.790300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700855, 31.652683, 23.604473>,  <35.536320, 31.460312, 23.294762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700855, 31.652683, 23.604473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155591, 0.799957, -0.579535,
		-0.898104, 0.358857, 0.254226,
		0.411340, 0.480927, 0.774280,
		35.824257, 31.796961, 23.836758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262753, 32.107155, 23.355509>,  <35.536320, 31.460312, 23.294762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262753, 32.107155, 23.355509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622276, 32.143017, 23.527138>,  <35.837990, 32.164536, 23.630116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622276, 32.143017, 23.527138>,  <35.262753, 32.107155, 23.355509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622276, 32.143017, 23.527138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145597, 0.862219, -0.485159,
		-0.413455, 0.498537, 0.761916,
		0.898809, 0.089658, 0.429074,
		35.891918, 32.169914, 23.655861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303661, 32.848392, 23.326225>,  <35.262753, 32.107155, 23.355509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303661, 32.848392, 23.326225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670452, 32.717045, 23.416840>,  <35.890526, 32.638237, 23.471209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670452, 32.717045, 23.416840>,  <35.303661, 32.848392, 23.326225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670452, 32.717045, 23.416840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395084, 0.826174, -0.401679,
		-0.055260, 0.457833, 0.887319,
		0.916982, -0.328369, 0.226537,
		35.945545, 32.618534, 23.484800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513409, 33.415916, 23.597214>,  <35.303661, 32.848392, 23.326225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513409, 33.415916, 23.597214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831711, 33.198505, 23.490368>,  <36.022690, 33.068058, 23.426260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831711, 33.198505, 23.490368>,  <35.513409, 33.415916, 23.597214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831711, 33.198505, 23.490368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268545, 0.712005, -0.648793,
		0.542826, 0.444547, 0.712543,
		0.795753, -0.543532, -0.267114,
		36.070438, 33.035446, 23.410234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232224, 33.824871, 23.747709>,  <35.513409, 33.415916, 23.597214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232224, 33.824871, 23.747709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264477, 33.573742, 23.438042>,  <36.283829, 33.423065, 23.252241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264477, 33.573742, 23.438042>,  <36.232224, 33.824871, 23.747709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264477, 33.573742, 23.438042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384348, 0.736214, -0.557016,
		0.919661, -0.252637, 0.300664,
		0.080630, -0.627825, -0.774167,
		36.288666, 33.385395, 23.205791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040974, 33.725616, 24.505726>,  <36.232224, 33.824871, 23.747709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040974, 33.725616, 24.505726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904732, 34.096085, 24.570473>,  <35.822987, 34.318363, 24.609320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904732, 34.096085, 24.570473>,  <36.040974, 33.725616, 24.505726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904732, 34.096085, 24.570473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249665, -0.255074, 0.934133,
		0.906452, 0.277760, 0.318111,
		-0.340607, 0.926168, 0.161865,
		35.802551, 34.373936, 24.619032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496445, 33.944332, 25.030474>,  <36.040974, 33.725616, 24.505726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496445, 33.944332, 25.030474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128017, 34.099590, 25.018013>,  <35.906960, 34.192745, 25.010536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128017, 34.099590, 25.018013>,  <36.496445, 33.944332, 25.030474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128017, 34.099590, 25.018013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069258, -0.084567, 0.994008,
		0.383182, 0.917711, 0.104774,
		-0.921072, 0.388143, -0.031154,
		35.851696, 34.216034, 25.008667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375202, 34.561050, 25.422874>,  <36.496445, 33.944332, 25.030474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375202, 34.561050, 25.422874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023808, 34.370678, 25.406120>,  <35.812969, 34.256454, 25.396069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023808, 34.370678, 25.406120>,  <36.375202, 34.561050, 25.422874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023808, 34.370678, 25.406120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040853, -0.162178, 0.985915,
		-0.476016, 0.864403, 0.161914,
		-0.878487, -0.475926, -0.041886,
		35.760262, 34.227901, 25.393555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245983, 34.500923, 26.124758>,  <36.375202, 34.561050, 25.422874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245983, 34.500923, 26.124758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942039, 34.304043, 25.954887>,  <35.759674, 34.185917, 25.852964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942039, 34.304043, 25.954887>,  <36.245983, 34.500923, 26.124758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942039, 34.304043, 25.954887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136394, -0.518018, 0.844425,
		-0.635613, 0.699571, 0.326490,
		-0.759863, -0.492197, -0.424677,
		35.714081, 34.156384, 25.827484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739864, 34.546169, 26.638432>,  <36.245983, 34.500923, 26.124758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739864, 34.546169, 26.638432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662960, 34.227142, 26.409721>,  <35.616817, 34.035728, 26.272495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662960, 34.227142, 26.409721>,  <35.739864, 34.546169, 26.638432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662960, 34.227142, 26.409721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110404, -0.561368, 0.820169,
		-0.975113, 0.220817, 0.019877,
		-0.192265, -0.797563, -0.571776,
		35.605282, 33.987873, 26.238188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217045, 34.249680, 27.058483>,  <35.739864, 34.546169, 26.638432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217045, 34.249680, 27.058483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365780, 33.971081, 26.813004>,  <35.455021, 33.803921, 26.665716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365780, 33.971081, 26.813004>,  <35.217045, 34.249680, 27.058483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365780, 33.971081, 26.813004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055270, -0.676538, 0.734331,
		-0.926649, -0.239135, -0.290060,
		0.371841, -0.696499, -0.613697,
		35.477333, 33.762131, 26.628895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725018, 33.670151, 27.150745>,  <35.217045, 34.249680, 27.058483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725018, 33.670151, 27.150745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075649, 33.533745, 27.014915>,  <35.286030, 33.451900, 26.933416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075649, 33.533745, 27.014915>,  <34.725018, 33.670151, 27.150745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075649, 33.533745, 27.014915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010546, -0.719050, 0.694878,
		-0.481138, -0.605537, -0.633902,
		0.876582, -0.341017, -0.339576,
		35.338623, 33.431438, 26.913042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584141, 33.038338, 26.930025>,  <34.725018, 33.670151, 27.150745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584141, 33.038338, 26.930025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970757, 33.057831, 27.030758>,  <35.202728, 33.069527, 27.091198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970757, 33.057831, 27.030758>,  <34.584141, 33.038338, 26.930025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970757, 33.057831, 27.030758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143641, -0.710559, 0.688820,
		0.212513, -0.701947, -0.679786,
		0.966543, 0.048738, 0.251832,
		35.260719, 33.072453, 27.106308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800598, 32.362282, 26.878759>,  <34.584141, 33.038338, 26.930025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800598, 32.362282, 26.878759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060024, 32.545860, 27.121651>,  <35.215679, 32.656010, 27.267385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060024, 32.545860, 27.121651>,  <34.800598, 32.362282, 26.878759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060024, 32.545860, 27.121651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063755, -0.762212, 0.644180,
		0.758483, -0.456507, -0.465085,
		0.648566, 0.458948, 0.607230,
		35.254593, 32.683544, 27.303820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961353, 31.814938, 27.329809>,  <34.800598, 32.362282, 26.878759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961353, 31.814938, 27.329809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126240, 32.125851, 27.519928>,  <35.225170, 32.312397, 27.633999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126240, 32.125851, 27.519928>,  <34.961353, 31.814938, 27.329809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126240, 32.125851, 27.519928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081845, -0.487983, 0.869008,
		0.907403, -0.397120, -0.137537,
		0.412216, 0.777283, 0.475299,
		35.249905, 32.359035, 27.662518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275776, 31.479424, 27.914104>,  <34.961353, 31.814938, 27.329809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275776, 31.479424, 27.914104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243702, 31.868031, 28.003296>,  <35.224457, 32.101196, 28.056810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243702, 31.868031, 28.003296>,  <35.275776, 31.479424, 27.914104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243702, 31.868031, 28.003296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366186, -0.236771, 0.899915,
		0.927080, -0.009489, 0.374743,
		-0.080188, 0.971519, 0.222981,
		35.219646, 32.159485, 28.070190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491074, 31.499594, 28.624151>,  <35.275776, 31.479424, 27.914104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491074, 31.499594, 28.624151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292854, 31.841904, 28.564716>,  <35.173920, 32.047291, 28.529057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292854, 31.841904, 28.564716>,  <35.491074, 31.499594, 28.624151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292854, 31.841904, 28.564716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336222, -0.031267, 0.941264,
		0.800863, 0.516404, 0.303224,
		-0.495553, 0.855774, -0.148586,
		35.144188, 32.098637, 28.520140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667973, 31.948874, 29.214972>,  <35.491074, 31.499594, 28.624151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667973, 31.948874, 29.214972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333279, 32.089771, 29.047260>,  <35.132462, 32.174309, 28.946634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333279, 32.089771, 29.047260>,  <35.667973, 31.948874, 29.214972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333279, 32.089771, 29.047260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414102, 0.093983, 0.905366,
		0.358317, 0.931176, 0.067227,
		-0.836737, 0.352246, -0.419278,
		35.082256, 32.195446, 28.921476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447823, 32.566296, 29.564243>,  <35.667973, 31.948874, 29.214972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447823, 32.566296, 29.564243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111797, 32.442841, 29.385792>,  <34.910183, 32.368767, 29.278721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111797, 32.442841, 29.385792>,  <35.447823, 32.566296, 29.564243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111797, 32.442841, 29.385792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477323, 0.029742, 0.878225,
		-0.257784, 0.950715, -0.172305,
		-0.840066, -0.308637, -0.446131,
		34.859779, 32.350250, 29.251953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037983, 32.913216, 29.966076>,  <35.447823, 32.566296, 29.564243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037983, 32.913216, 29.966076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842884, 32.629219, 29.762894>,  <34.725826, 32.458820, 29.640984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842884, 32.629219, 29.762894>,  <35.037983, 32.913216, 29.966076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842884, 32.629219, 29.762894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576096, -0.175400, 0.798341,
		-0.655908, 0.682020, -0.323470,
		-0.487748, -0.709988, -0.507956,
		34.696560, 32.416222, 29.610508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318970, 33.028122, 30.178797>,  <35.037983, 32.913216, 29.966076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318970, 33.028122, 30.178797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329609, 32.658802, 30.025536>,  <34.335991, 32.437210, 29.933578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329609, 32.658802, 30.025536>,  <34.318970, 33.028122, 30.178797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329609, 32.658802, 30.025536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662504, -0.303304, 0.684905,
		-0.748586, 0.235624, -0.619758,
		0.026595, -0.923303, -0.383151,
		34.337585, 32.381813, 29.910591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556282, 32.709991, 30.100750>,  <34.318970, 33.028122, 30.178797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556282, 32.709991, 30.100750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831619, 32.420074, 30.112446>,  <33.996822, 32.246124, 30.119463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831619, 32.420074, 30.112446>,  <33.556282, 32.709991, 30.100750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831619, 32.420074, 30.112446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610058, -0.556623, 0.563914,
		-0.392446, -0.406006, -0.825315,
		0.688342, -0.724797, 0.029242,
		34.038120, 32.202637, 30.121218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216854, 31.991526, 30.114866>,  <33.556282, 32.709991, 30.100750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216854, 31.991526, 30.114866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589855, 31.893227, 30.220726>,  <33.813656, 31.834248, 30.284243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589855, 31.893227, 30.220726>,  <33.216854, 31.991526, 30.114866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589855, 31.893227, 30.220726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357962, -0.726147, 0.587004,
		0.047920, -0.642120, -0.765105,
		0.932506, -0.245750, 0.264652,
		33.869606, 31.819502, 30.300121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228786, 31.200455, 30.035795>,  <33.216854, 31.991526, 30.114866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228786, 31.200455, 30.035795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541016, 31.280037, 30.272820>,  <33.728352, 31.327787, 30.415033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541016, 31.280037, 30.272820>,  <33.228786, 31.200455, 30.035795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541016, 31.280037, 30.272820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279999, -0.736266, 0.616045,
		0.558850, -0.646782, -0.518998,
		0.780568, 0.198958, 0.592561,
		33.775185, 31.339724, 30.450588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490788, 30.589817, 30.266403>,  <33.228786, 31.200455, 30.035795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490788, 30.589817, 30.266403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660915, 30.824558, 30.542000>,  <33.762993, 30.965403, 30.707357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660915, 30.824558, 30.542000>,  <33.490788, 30.589817, 30.266403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660915, 30.824558, 30.542000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123451, -0.716547, 0.686528,
		0.896585, -0.377049, -0.232313,
		0.425318, 0.586851, 0.688992,
		33.788509, 31.000614, 30.748697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007652, 30.163612, 30.633305>,  <33.490788, 30.589817, 30.266403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007652, 30.163612, 30.633305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906105, 30.458546, 30.883709>,  <33.845177, 30.635506, 31.033951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906105, 30.458546, 30.883709>,  <34.007652, 30.163612, 30.633305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906105, 30.458546, 30.883709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141285, -0.668540, 0.730132,
		0.956865, 0.096911, 0.273895,
		-0.253868, 0.737335, 0.626011,
		33.829945, 30.679747, 31.071512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293713, 29.854221, 31.226667>,  <34.007652, 30.163612, 30.633305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293713, 29.854221, 31.226667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050232, 30.143852, 31.356400>,  <33.904144, 30.317631, 31.434238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.050232, 30.143852, 31.356400>,  <34.293713, 29.854221, 31.226667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050232, 30.143852, 31.356400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129709, -0.494107, 0.859671,
		0.782724, 0.481215, 0.394684,
		-0.608703, 0.724079, 0.324331,
		33.867622, 30.361076, 31.453699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333447, 29.939713, 31.973488>,  <34.293713, 29.854221, 31.226667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333447, 29.939713, 31.973488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975761, 30.103863, 31.901958>,  <33.761150, 30.202353, 31.859041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975761, 30.103863, 31.901958>,  <34.333447, 29.939713, 31.973488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975761, 30.103863, 31.901958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354552, -0.405413, 0.842576,
		0.273275, 0.816843, 0.508024,
		-0.894212, 0.410375, -0.178824,
		33.707497, 30.226974, 31.848310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220306, 30.327682, 32.524387>,  <34.333447, 29.939713, 31.973488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220306, 30.327682, 32.524387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844223, 30.301674, 32.390652>,  <33.618572, 30.286068, 32.310410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844223, 30.301674, 32.390652>,  <34.220306, 30.327682, 32.524387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844223, 30.301674, 32.390652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255102, -0.515988, 0.817728,
		-0.225684, 0.854125, 0.468549,
		-0.940207, -0.065021, -0.334339,
		33.562160, 30.282167, 32.290352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704868, 30.574831, 33.018867>,  <34.220306, 30.327682, 32.524387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704868, 30.574831, 33.018867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509445, 30.317078, 32.783550>,  <33.392193, 30.162426, 32.642361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509445, 30.317078, 32.783550>,  <33.704868, 30.574831, 33.018867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509445, 30.317078, 32.783550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410622, -0.425107, 0.806644,
		-0.769873, 0.635655, -0.056909,
		-0.488554, -0.644381, -0.588292,
		33.362881, 30.123764, 32.607063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045288, 30.565737, 33.296028>,  <33.704868, 30.574831, 33.018867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045288, 30.565737, 33.296028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055637, 30.236942, 33.068459>,  <33.061848, 30.039665, 32.931919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055637, 30.236942, 33.068459>,  <33.045288, 30.565737, 33.296028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055637, 30.236942, 33.068459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275514, -0.552932, 0.786358,
		-0.960949, 0.136400, -0.240775,
		0.025873, -0.821986, -0.568919,
		33.063400, 29.990347, 32.897781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393955, 30.171955, 33.406322>,  <33.045288, 30.565737, 33.296028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393955, 30.171955, 33.406322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662529, 29.912338, 33.263256>,  <32.823673, 29.756569, 33.177418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662529, 29.912338, 33.263256>,  <32.393955, 30.171955, 33.406322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662529, 29.912338, 33.263256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332688, -0.695263, 0.637125,
		-0.662188, -0.308798, -0.682752,
		0.671435, -0.649040, -0.357661,
		32.863960, 29.717627, 33.155956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028439, 29.588354, 33.434738>,  <32.393955, 30.171955, 33.406322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028439, 29.588354, 33.434738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407539, 29.468758, 33.390232>,  <32.634998, 29.396999, 33.363529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407539, 29.468758, 33.390232>,  <32.028439, 29.588354, 33.434738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407539, 29.468758, 33.390232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189058, -0.807320, 0.559010,
		-0.256967, -0.508764, -0.821661,
		0.947747, -0.298989, -0.111268,
		32.691864, 29.379061, 33.356850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616383, 29.115784, 33.070774>,  <32.028439, 29.588354, 33.434738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616383, 29.115784, 33.070774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271751, 28.917847, 33.025494>,  <31.064974, 28.799084, 32.998325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271751, 28.917847, 33.025494>,  <31.616383, 29.115784, 33.070774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271751, 28.917847, 33.025494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295352, 0.670037, -0.681041,
		0.412858, -0.553335, -0.723442,
		-0.861577, -0.494844, -0.113202,
		31.013279, 28.769394, 32.991531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640047, 28.944214, 32.367722>,  <31.616383, 29.115784, 33.070774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640047, 28.944214, 32.367722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257963, 28.946293, 32.486076>,  <31.028713, 28.947540, 32.557091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257963, 28.946293, 32.486076>,  <31.640047, 28.944214, 32.367722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257963, 28.946293, 32.486076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215986, 0.671260, -0.709055,
		-0.202305, -0.741203, -0.640070,
		-0.955208, 0.005200, 0.295889,
		30.971401, 28.947853, 32.574844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327953, 29.008551, 31.692644>,  <31.640047, 28.944214, 32.367722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327953, 29.008551, 31.692644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067236, 29.090549, 31.984711>,  <30.910807, 29.139750, 32.159950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067236, 29.090549, 31.984711>,  <31.327953, 29.008551, 31.692644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067236, 29.090549, 31.984711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445928, 0.675168, -0.587620,
		-0.613446, -0.708607, -0.348655,
		-0.651792, 0.204998, 0.730166,
		30.871698, 29.152048, 32.203762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652172, 29.094236, 31.410336>,  <31.327953, 29.008551, 31.692644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652172, 29.094236, 31.410336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649652, 29.312325, 31.745644>,  <30.648140, 29.443176, 31.946829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649652, 29.312325, 31.745644>,  <30.652172, 29.094236, 31.410336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649652, 29.312325, 31.745644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426124, 0.756901, -0.495499,
		-0.904643, -0.360329, 0.227562,
		-0.006301, 0.545219, 0.838270,
		30.647762, 29.475891, 31.997124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044100, 29.363512, 31.467783>,  <30.652172, 29.094236, 31.410336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044100, 29.363512, 31.467783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286842, 29.601723, 31.678333>,  <30.432487, 29.744650, 31.804665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286842, 29.601723, 31.678333>,  <30.044100, 29.363512, 31.467783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286842, 29.601723, 31.678333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376763, 0.798672, -0.469225,
		-0.699839, 0.086433, 0.709052,
		0.606857, 0.595526, 0.526377,
		30.468899, 29.780380, 31.836246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
