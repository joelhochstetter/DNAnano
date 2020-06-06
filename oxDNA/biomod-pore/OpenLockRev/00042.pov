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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.221535, 34.290356, 49.774754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142700, 34.594463, 50.022350>,  <40.095398, 34.776928, 50.170910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142700, 34.594463, 50.022350>,  <40.221535, 34.290356, 49.774754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142700, 34.594463, 50.022350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980041, 0.136055, 0.144945,
		0.025980, 0.635204, -0.771908,
		-0.197091, 0.760267, 0.618991,
		40.083572, 34.822544, 50.208046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678913, 34.770000, 49.525002>,  <40.221535, 34.290356, 49.774754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678913, 34.770000, 49.525002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572590, 34.863663, 49.899063>,  <40.508797, 34.919861, 50.123501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572590, 34.863663, 49.899063>,  <40.678913, 34.770000, 49.525002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572590, 34.863663, 49.899063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920281, 0.350529, 0.173814,
		-0.287099, 0.906807, -0.308667,
		-0.265813, 0.234159, 0.935154,
		40.492847, 34.933910, 50.179611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959396, 35.334167, 49.682526>,  <40.678913, 34.770000, 49.525002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959396, 35.334167, 49.682526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893551, 35.252193, 50.068459>,  <40.854046, 35.203011, 50.300018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893551, 35.252193, 50.068459>,  <40.959396, 35.334167, 49.682526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893551, 35.252193, 50.068459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817030, 0.519687, 0.249776,
		-0.552599, 0.829415, 0.081889,
		-0.164611, -0.204931, 0.964835,
		40.844166, 35.190716, 50.357910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199207, 35.919415, 49.944206>,  <40.959396, 35.334167, 49.682526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199207, 35.919415, 49.944206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191734, 35.614288, 50.202744>,  <41.187248, 35.431213, 50.357868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191734, 35.614288, 50.202744>,  <41.199207, 35.919415, 49.944206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191734, 35.614288, 50.202744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841855, 0.336744, 0.421762,
		-0.539380, 0.552010, 0.635889,
		-0.018686, -0.762816, 0.646345,
		41.186131, 35.385445, 50.396648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414368, 36.286690, 50.576088>,  <41.199207, 35.919415, 49.944206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414368, 36.286690, 50.576088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457443, 35.894825, 50.643814>,  <41.483288, 35.659706, 50.684448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457443, 35.894825, 50.643814>,  <41.414368, 36.286690, 50.576088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457443, 35.894825, 50.643814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923028, 0.161792, 0.349059,
		-0.369353, 0.118693, 0.921678,
		0.107690, -0.979661, 0.169315,
		41.489750, 35.600925, 50.694607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728615, 36.181767, 51.291420>,  <41.414368, 36.286690, 50.576088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728615, 36.181767, 51.291420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825287, 35.854816, 51.082237>,  <41.883289, 35.658646, 50.956726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.825287, 35.854816, 51.082237>,  <41.728615, 36.181767, 51.291420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825287, 35.854816, 51.082237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934266, 0.050391, 0.352999,
		-0.262180, -0.573897, 0.775825,
		0.241680, -0.817375, -0.522961,
		41.897789, 35.609604, 50.925350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134247, 35.770908, 51.649471>,  <41.728615, 36.181767, 51.291420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134247, 35.770908, 51.649471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234200, 35.637878, 51.285725>,  <42.294170, 35.558060, 51.067474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.234200, 35.637878, 51.285725>,  <42.134247, 35.770908, 51.649471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234200, 35.637878, 51.285725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955124, -0.069613, 0.287910,
		-0.159057, -0.940503, 0.300259,
		0.249878, -0.332579, -0.909369,
		42.309162, 35.538105, 51.012913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686619, 35.405418, 51.871193>,  <42.134247, 35.770908, 51.649471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686619, 35.405418, 51.871193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699154, 35.423561, 51.471802>,  <42.706676, 35.434444, 51.232166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.699154, 35.423561, 51.471802>,  <42.686619, 35.405418, 51.871193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.699154, 35.423561, 51.471802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996799, -0.074920, 0.027886,
		-0.073541, -0.996158, -0.047557,
		0.031342, 0.045354, -0.998479,
		42.708557, 35.437168, 51.172256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950974, 34.786713, 51.476456>,  <42.686619, 35.405418, 51.871193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950974, 34.786713, 51.476456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005692, 35.096577, 51.229492>,  <43.038521, 35.282494, 51.081314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.005692, 35.096577, 51.229492>,  <42.950974, 34.786713, 51.476456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005692, 35.096577, 51.229492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985371, -0.170359, 0.004568,
		-0.101643, -0.609004, -0.786628,
		0.136791, 0.774656, -0.617411,
		43.046730, 35.328972, 51.044270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.496964, 34.612659, 51.100002>,  <42.950974, 34.786713, 51.476456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.496964, 34.612659, 51.100002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.506836, 34.997833, 50.992561>,  <43.512760, 35.228939, 50.928097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.506836, 34.997833, 50.992561>,  <43.496964, 34.612659, 51.100002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.506836, 34.997833, 50.992561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973420, -0.084345, -0.212930,
		-0.227693, -0.256211, -0.939421,
		0.024680, 0.962934, -0.268606,
		43.514240, 35.286713, 50.911980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992233, 34.691727, 50.521061>,  <43.496964, 34.612659, 51.100002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992233, 34.691727, 50.521061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945499, 35.050117, 50.692444>,  <43.917461, 35.265152, 50.795273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945499, 35.050117, 50.692444>,  <43.992233, 34.691727, 50.521061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945499, 35.050117, 50.692444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965894, 0.202885, -0.160890,
		-0.231082, 0.395047, -0.889122,
		-0.116830, 0.895977, 0.428457,
		43.910450, 35.318913, 50.820980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372967, 35.120770, 50.072453>,  <43.992233, 34.691727, 50.521061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372967, 35.120770, 50.072453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339413, 35.302448, 50.427231>,  <44.319279, 35.411457, 50.640099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339413, 35.302448, 50.427231>,  <44.372967, 35.120770, 50.072453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339413, 35.302448, 50.427231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984516, 0.175261, 0.003368,
		-0.153916, 0.873492, -0.461868,
		-0.083889, 0.454198, 0.886942,
		44.314247, 35.438709, 50.693314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734028, 35.730614, 50.010937>,  <44.372967, 35.120770, 50.072453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734028, 35.730614, 50.010937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697540, 35.662052, 50.403324>,  <44.675648, 35.620914, 50.638756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697540, 35.662052, 50.403324>,  <44.734028, 35.730614, 50.010937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697540, 35.662052, 50.403324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994585, 0.033564, 0.098354,
		-0.049783, 0.984630, 0.167409,
		-0.091223, -0.171399, 0.980969,
		44.670174, 35.610634, 50.697617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.116158, 36.272644, 50.377968>,  <44.734028, 35.730614, 50.010937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.116158, 36.272644, 50.377968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084042, 35.992630, 50.661800>,  <45.064774, 35.824623, 50.832100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.084042, 35.992630, 50.661800>,  <45.116158, 36.272644, 50.377968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084042, 35.992630, 50.661800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965606, 0.122000, 0.229611,
		-0.247304, 0.703613, 0.666161,
		-0.080286, -0.700032, 0.709584,
		45.059956, 35.782619, 50.874676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525604, 36.519024, 51.043049>,  <45.116158, 36.272644, 50.377968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525604, 36.519024, 51.043049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485325, 36.122066, 51.071354>,  <45.461155, 35.883892, 51.088337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.485325, 36.122066, 51.071354>,  <45.525604, 36.519024, 51.043049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485325, 36.122066, 51.071354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919940, -0.065789, 0.386499,
		-0.378905, 0.104021, 0.919571,
		-0.100701, -0.992397, 0.070765,
		45.455116, 35.824348, 51.092583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596992, 36.378632, 51.818558>,  <45.525604, 36.519024, 51.043049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.596992, 36.378632, 51.818558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.673073, 36.028366, 51.641006>,  <45.718719, 35.818207, 51.534473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.673073, 36.028366, 51.641006>,  <45.596992, 36.378632, 51.818558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673073, 36.028366, 51.641006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901521, -0.023223, 0.432112,
		-0.388694, -0.482356, 0.785015,
		0.190201, -0.875667, -0.443881,
		45.730133, 35.765667, 51.507843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.968937, 35.984932, 52.345665>,  <45.596992, 36.378632, 51.818558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.968937, 35.984932, 52.345665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.066822, 35.799286, 52.005146>,  <46.125553, 35.687897, 51.800835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.066822, 35.799286, 52.005146>,  <45.968937, 35.984932, 52.345665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.066822, 35.799286, 52.005146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797872, -0.402485, 0.448782,
		-0.550923, -0.789051, 0.271813,
		0.244711, -0.464116, -0.851300,
		46.140236, 35.660049, 51.749756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085430, 35.274754, 52.473980>,  <45.968937, 35.984932, 52.345665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085430, 35.274754, 52.473980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.260452, 35.324745, 52.117794>,  <46.365463, 35.354740, 51.904083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.260452, 35.324745, 52.117794>,  <46.085430, 35.274754, 52.473980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260452, 35.324745, 52.117794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875349, -0.285744, 0.390019,
		-0.205701, -0.950122, -0.234427,
		0.437551, 0.124978, -0.890466,
		46.391716, 35.362240, 51.850655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.645573, 34.702171, 52.385708>,  <46.085430, 35.274754, 52.473980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.645573, 34.702171, 52.385708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.725338, 34.979568, 52.108780>,  <46.773197, 35.146008, 51.942623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.725338, 34.979568, 52.108780>,  <46.645573, 34.702171, 52.385708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.725338, 34.979568, 52.108780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963713, -0.010846, 0.266719,
		0.177460, -0.720380, -0.670492,
		0.199412, 0.693494, -0.692315,
		46.785160, 35.187618, 51.901085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.166622, 34.407593, 52.155182>,  <46.645573, 34.702171, 52.385708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.166622, 34.407593, 52.155182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.193058, 34.788406, 52.035671>,  <47.208920, 35.016895, 51.963966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.193058, 34.788406, 52.035671>,  <47.166622, 34.407593, 52.155182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.193058, 34.788406, 52.035671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949989, 0.031555, 0.310685,
		0.305210, -0.304367, -0.902335,
		0.066089, 0.952032, -0.298777,
		47.212883, 35.074017, 51.946037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.703644, 34.433868, 51.849884>,  <47.166622, 34.407593, 52.155182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.703644, 34.433868, 51.849884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.668747, 34.822315, 51.938721>,  <47.647808, 35.055382, 51.992023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.668747, 34.822315, 51.938721>,  <47.703644, 34.433868, 51.849884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.668747, 34.822315, 51.938721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982450, 0.046981, 0.180513,
		0.164865, 0.233947, -0.958169,
		-0.087246, 0.971114, 0.222096,
		47.642574, 35.113647, 52.005348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.255230, 34.615520, 51.733479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.383320, 34.886253, 51.998611>,  <24.460175, 35.048695, 52.157692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.383320, 34.886253, 51.998611>,  <24.255230, 34.615520, 51.733479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.383320, 34.886253, 51.998611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912626, -0.032729, -0.407484,
		-0.254106, 0.735406, -0.628179,
		0.320226, 0.676836, 0.662834,
		24.479387, 35.089306, 52.197460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.632568, 35.082352, 51.334866>,  <24.255230, 34.615520, 51.733479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.632568, 35.082352, 51.334866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.747362, 35.109158, 51.717102>,  <24.816238, 35.125240, 51.946442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.747362, 35.109158, 51.717102>,  <24.632568, 35.082352, 51.334866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.747362, 35.109158, 51.717102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955460, -0.091685, -0.280518,
		0.068816, 0.993531, -0.090339,
		0.286986, 0.067012, 0.955588,
		24.833458, 35.129261, 52.003780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076803, 35.788334, 51.369484>,  <24.632568, 35.082352, 51.334866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.076803, 35.788334, 51.369484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.152489, 35.554367, 51.684971>,  <25.197901, 35.413986, 51.874264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.152489, 35.554367, 51.684971>,  <25.076803, 35.788334, 51.369484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.152489, 35.554367, 51.684971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981392, 0.139374, -0.132077,
		-0.032672, 0.799028, 0.600406,
		0.189214, -0.584918, 0.788713,
		25.209253, 35.378891, 51.921585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530748, 36.152866, 51.767487>,  <25.076803, 35.788334, 51.369484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530748, 36.152866, 51.767487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.582844, 35.771114, 51.874966>,  <25.614101, 35.542065, 51.939453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.582844, 35.771114, 51.874966>,  <25.530748, 36.152866, 51.767487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.582844, 35.771114, 51.874966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991359, 0.121083, -0.050453,
		0.015617, 0.272944, 0.961903,
		0.130241, -0.954380, 0.268695,
		25.621916, 35.484802, 51.955574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.065214, 36.154671, 52.339497>,  <25.530748, 36.152866, 51.767487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.065214, 36.154671, 52.339497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.065247, 35.773319, 52.218792>,  <26.065266, 35.544506, 52.146370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.065247, 35.773319, 52.218792>,  <26.065214, 36.154671, 52.339497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065247, 35.773319, 52.218792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998743, -0.015050, 0.047809,
		-0.050122, -0.301389, 0.952183,
		0.000079, -0.953382, -0.301764,
		26.065269, 35.487305, 52.128262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657427, 35.842606, 52.680676>,  <26.065214, 36.154671, 52.339497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.657427, 35.842606, 52.680676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.579517, 35.601921, 52.370834>,  <26.532772, 35.457512, 52.184929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.579517, 35.601921, 52.370834>,  <26.657427, 35.842606, 52.680676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.579517, 35.601921, 52.370834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978373, -0.175254, -0.109876,
		-0.069639, -0.779252, 0.622829,
		-0.194775, -0.601708, -0.774604,
		26.521086, 35.421410, 52.138454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073452, 35.300560, 52.809769>,  <26.657427, 35.842606, 52.680676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073452, 35.300560, 52.809769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.008490, 35.281590, 52.415535>,  <26.969513, 35.270206, 52.178993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.008490, 35.281590, 52.415535>,  <27.073452, 35.300560, 52.809769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008490, 35.281590, 52.415535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953857, -0.263199, -0.144513,
		-0.252550, -0.963575, 0.087984,
		-0.162407, -0.047428, -0.985584,
		26.959768, 35.267361, 52.119862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349733, 34.717186, 52.568714>,  <27.073452, 35.300560, 52.809769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349733, 34.717186, 52.568714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.315680, 34.903637, 52.216469>,  <27.295246, 35.015507, 52.005123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.315680, 34.903637, 52.216469>,  <27.349733, 34.717186, 52.568714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315680, 34.903637, 52.216469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965657, -0.179146, -0.188184,
		-0.245476, -0.866388, -0.434871,
		-0.085135, 0.466131, -0.880610,
		27.290138, 35.043476, 51.952286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716576, 34.298920, 52.088261>,  <27.349733, 34.717186, 52.568714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716576, 34.298920, 52.088261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.676573, 34.634117, 51.873688>,  <27.652571, 34.835236, 51.744946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.676573, 34.634117, 51.873688>,  <27.716576, 34.298920, 52.088261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676573, 34.634117, 51.873688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930654, -0.111931, -0.348360,
		-0.351968, -0.534072, -0.768691,
		-0.100009, 0.837997, -0.536433,
		27.646570, 34.885517, 51.712757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976679, 34.191063, 51.400707>,  <27.716576, 34.298920, 52.088261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976679, 34.191063, 51.400707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.022743, 34.581135, 51.476357>,  <28.050383, 34.815178, 51.521748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.022743, 34.581135, 51.476357>,  <27.976679, 34.191063, 51.400707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022743, 34.581135, 51.476357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966735, -0.066251, -0.247050,
		-0.228387, 0.211286, -0.950367,
		0.115161, 0.975176, 0.189127,
		28.057291, 34.873688, 51.533096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485504, 34.348896, 50.972225>,  <27.976679, 34.191063, 51.400707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485504, 34.348896, 50.972225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.484030, 34.690098, 51.180984>,  <28.483145, 34.894817, 51.306240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.484030, 34.690098, 51.180984>,  <28.485504, 34.348896, 50.972225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484030, 34.690098, 51.180984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868825, 0.261128, -0.420660,
		-0.495105, 0.451887, -0.742071,
		-0.003685, 0.853001, 0.521897,
		28.482924, 34.945999, 51.337555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.723005, 34.781635, 50.473961>,  <28.485504, 34.348896, 50.972225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.723005, 34.781635, 50.473961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.777485, 34.935452, 50.839165>,  <28.810173, 35.027740, 51.058285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.777485, 34.935452, 50.839165>,  <28.723005, 34.781635, 50.473961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777485, 34.935452, 50.839165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900983, 0.335117, -0.275547,
		-0.411922, 0.860133, -0.300818,
		0.136198, 0.384536, 0.913007,
		28.818344, 35.050812, 51.113068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976076, 35.364086, 50.338173>,  <28.723005, 34.781635, 50.473961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976076, 35.364086, 50.338173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.089148, 35.277966, 50.712067>,  <29.156990, 35.226292, 50.936405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.089148, 35.277966, 50.712067>,  <28.976076, 35.364086, 50.338173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089148, 35.277966, 50.712067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957338, 0.124260, -0.260891,
		-0.059979, 0.968609, 0.241245,
		0.282679, -0.215305, 0.934739,
		29.173950, 35.213375, 50.992489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429676, 35.857063, 50.405697>,  <28.976076, 35.364086, 50.338173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429676, 35.857063, 50.405697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.493086, 35.623848, 50.724426>,  <29.531132, 35.483917, 50.915665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.493086, 35.623848, 50.724426>,  <29.429676, 35.857063, 50.405697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493086, 35.623848, 50.724426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972596, -0.046811, -0.227742,
		0.170084, 0.811092, 0.559644,
		0.158522, -0.583043, 0.796826,
		29.540642, 35.448936, 50.963474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115263, 36.021717, 50.614788>,  <29.429676, 35.857063, 50.405697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115263, 36.021717, 50.614788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.094496, 35.656292, 50.776138>,  <30.082035, 35.437038, 50.872948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.094496, 35.656292, 50.776138>,  <30.115263, 36.021717, 50.614788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094496, 35.656292, 50.776138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993503, -0.088211, -0.071905,
		0.101271, 0.397018, 0.912207,
		-0.051919, -0.913562, 0.403372,
		30.078920, 35.382225, 50.897148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635883, 36.071117, 51.168659>,  <30.115263, 36.021717, 50.614788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635883, 36.071117, 51.168659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.554455, 35.686192, 51.096546>,  <30.505598, 35.455235, 51.053276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.554455, 35.686192, 51.096546>,  <30.635883, 36.071117, 51.168659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554455, 35.686192, 51.096546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979057, -0.199678, -0.039686,
		0.002191, -0.184589, 0.982813,
		-0.203572, -0.962318, -0.180285,
		30.493383, 35.397495, 51.042461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227165, 35.648266, 51.473297>,  <30.635883, 36.071117, 51.168659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227165, 35.648266, 51.473297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.039669, 35.388081, 51.234238>,  <30.927172, 35.231972, 51.090801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.039669, 35.388081, 51.234238>,  <31.227165, 35.648266, 51.473297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039669, 35.388081, 51.234238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882585, -0.316985, -0.347223,
		0.036408, -0.690235, 0.722669,
		-0.468741, -0.650458, -0.597650,
		30.899046, 35.192944, 51.054943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611504, 35.087559, 51.478157>,  <31.227165, 35.648266, 51.473297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611504, 35.087559, 51.478157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.420389, 35.045067, 51.129345>,  <31.305721, 35.019569, 50.920059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.420389, 35.045067, 51.129345>,  <31.611504, 35.087559, 51.478157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420389, 35.045067, 51.129345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866199, -0.222351, -0.447504,
		-0.146357, -0.969162, 0.198256,
		-0.477786, -0.106234, -0.872029,
		31.277054, 35.013195, 50.867737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863609, 34.478748, 51.178883>,  <31.611504, 35.087559, 51.478157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863609, 34.478748, 51.178883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.718788, 34.679924, 50.864948>,  <31.631895, 34.800629, 50.676586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.718788, 34.679924, 50.864948>,  <31.863609, 34.478748, 51.178883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718788, 34.679924, 50.864948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835583, -0.198097, -0.512405,
		-0.413183, -0.841314, -0.348527,
		-0.362051, 0.502940, -0.784838,
		31.610172, 34.830807, 50.629498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050972, 34.068157, 50.555389>,  <31.863609, 34.478748, 51.178883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050972, 34.068157, 50.555389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.991558, 34.443123, 50.429413>,  <31.955910, 34.668102, 50.353828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.991558, 34.443123, 50.429413>,  <32.050972, 34.068157, 50.555389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991558, 34.443123, 50.429413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866603, -0.030031, -0.498094,
		-0.476380, -0.346909, -0.807908,
		-0.148531, 0.937418, -0.314939,
		31.946999, 34.724350, 50.334930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343143, 34.021793, 49.868660>,  <32.050972, 34.068157, 50.555389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343143, 34.021793, 49.868660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.335587, 34.413204, 49.950764>,  <32.331055, 34.648048, 50.000027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.335587, 34.413204, 49.950764>,  <32.343143, 34.021793, 49.868660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335587, 34.413204, 49.950764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882705, 0.112736, -0.456204,
		-0.469547, 0.172567, -0.865879,
		-0.018890, 0.978525, 0.205261,
		32.329918, 34.706760, 50.012341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.731525, 34.966064, 34.766216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.461332, 34.874882, 35.046719>,  <24.299217, 34.820171, 35.215019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.461332, 34.874882, 35.046719>,  <24.731525, 34.966064, 34.766216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.461332, 34.874882, 35.046719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702434, 0.090359, 0.705990,
		-0.224298, 0.969470, 0.099087,
		-0.675482, -0.227955, 0.701256,
		24.258688, 34.806496, 35.257095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.853106, 35.435364, 35.384830>,  <24.731525, 34.966064, 34.766216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.853106, 35.435364, 35.384830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.651005, 35.111526, 35.504345>,  <24.529743, 34.917225, 35.576054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.651005, 35.111526, 35.504345>,  <24.853106, 35.435364, 35.384830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.651005, 35.111526, 35.504345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657715, -0.137116, 0.740682,
		-0.558685, 0.570748, 0.601762,
		-0.505254, -0.809596, 0.298785,
		24.499428, 34.868649, 35.593979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.665018, 35.494534, 36.115139>,  <24.853106, 35.435364, 35.384830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.665018, 35.494534, 36.115139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.694208, 35.107464, 36.018578>,  <24.711723, 34.875221, 35.960640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.694208, 35.107464, 36.018578>,  <24.665018, 35.494534, 36.115139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.694208, 35.107464, 36.018578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720078, -0.116351, 0.684069,
		-0.690045, -0.223753, 0.688312,
		0.072976, -0.967676, -0.241407,
		24.716101, 34.817162, 35.946156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.774046, 34.856895, 36.492947>,  <24.665018, 35.494534, 36.115139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.774046, 34.856895, 36.492947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.154797, 34.954029, 36.567745>,  <25.383247, 35.012310, 36.612625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.154797, 34.954029, 36.567745>,  <24.774046, 34.856895, 36.492947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.154797, 34.954029, 36.567745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077214, -0.400454, 0.913058,
		0.296603, -0.883555, -0.362432,
		0.951874, 0.242831, 0.186998,
		25.440359, 35.026878, 36.623844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.120489, 34.382278, 37.058994>,  <24.774046, 34.856895, 36.492947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.120489, 34.382278, 37.058994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.263245, 34.733162, 37.187458>,  <25.348898, 34.943691, 37.264534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.263245, 34.733162, 37.187458>,  <25.120489, 34.382278, 37.058994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.263245, 34.733162, 37.187458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107340, -0.303011, 0.946923,
		0.927960, -0.372418, -0.013981,
		0.356887, 0.877206, 0.321157,
		25.370310, 34.996323, 37.283806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779812, 34.294521, 37.495358>,  <25.120489, 34.382278, 37.058994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779812, 34.294521, 37.495358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.602613, 34.637226, 37.600971>,  <25.496294, 34.842850, 37.664341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.602613, 34.637226, 37.600971>,  <25.779812, 34.294521, 37.495358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602613, 34.637226, 37.600971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083709, -0.253699, 0.963654,
		0.892606, 0.448999, 0.040670,
		-0.442998, 0.856759, 0.264039,
		25.469713, 34.894253, 37.680183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.218884, 34.511295, 37.939960>,  <25.779812, 34.294521, 37.495358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.218884, 34.511295, 37.939960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.852051, 34.641525, 38.032017>,  <25.631952, 34.719666, 38.087250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.852051, 34.641525, 38.032017>,  <26.218884, 34.511295, 37.939960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852051, 34.641525, 38.032017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137670, -0.283129, 0.949150,
		0.374182, 0.902129, 0.214829,
		-0.917080, 0.325579, 0.230138,
		25.576927, 34.739201, 38.101059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.485476, 34.232132, 38.639473>,  <26.218884, 34.511295, 37.939960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.485476, 34.232132, 38.639473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.784496, 34.088428, 38.416008>,  <26.963909, 34.002205, 38.281929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.784496, 34.088428, 38.416008>,  <26.485476, 34.232132, 38.639473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784496, 34.088428, 38.416008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659733, 0.499064, 0.561861,
		0.076951, -0.788584, 0.610092,
		0.747550, -0.359262, -0.558659,
		27.008760, 33.980648, 38.248409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147503, 34.078922, 39.009743>,  <26.485476, 34.232132, 38.639473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147503, 34.078922, 39.009743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.209764, 34.173779, 38.626175>,  <27.247122, 34.230694, 38.396034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.209764, 34.173779, 38.626175>,  <27.147503, 34.078922, 39.009743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209764, 34.173779, 38.626175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683626, 0.674868, 0.277865,
		0.713041, -0.698796, -0.057071,
		0.155655, 0.237144, -0.958923,
		27.256460, 34.244923, 38.338497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804039, 34.051998, 38.982399>,  <27.147503, 34.078922, 39.009743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804039, 34.051998, 38.982399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.674541, 34.291801, 38.689610>,  <27.596844, 34.435684, 38.513935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.674541, 34.291801, 38.689610>,  <27.804039, 34.051998, 38.982399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674541, 34.291801, 38.689610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630264, 0.713646, 0.305741,
		0.705662, -0.362354, -0.608885,
		-0.323741, 0.599508, -0.731971,
		27.577419, 34.471653, 38.470016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276995, 34.079670, 38.316113>,  <27.804039, 34.051998, 38.982399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276995, 34.079670, 38.316113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.066631, 34.380566, 38.474888>,  <27.940414, 34.561104, 38.570152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.066631, 34.380566, 38.474888>,  <28.276995, 34.079670, 38.316113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066631, 34.380566, 38.474888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840243, 0.387080, 0.379687,
		0.131966, 0.533207, -0.835629,
		-0.525906, 0.752237, 0.396942,
		27.908859, 34.606236, 38.593971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574144, 34.773361, 38.085224>,  <28.276995, 34.079670, 38.316113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574144, 34.773361, 38.085224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.395998, 34.800922, 38.442303>,  <28.289110, 34.817459, 38.656548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.395998, 34.800922, 38.442303>,  <28.574144, 34.773361, 38.085224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395998, 34.800922, 38.442303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831839, 0.400655, 0.384082,
		-0.331197, 0.913635, -0.235755,
		-0.445367, 0.068904, 0.892693,
		28.262388, 34.821594, 38.710110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669981, 35.426888, 38.344055>,  <28.574144, 34.773361, 38.085224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669981, 35.426888, 38.344055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.572618, 35.216579, 38.670078>,  <28.514200, 35.090393, 38.865692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.572618, 35.216579, 38.670078>,  <28.669981, 35.426888, 38.344055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572618, 35.216579, 38.670078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765293, 0.412160, 0.494420,
		-0.595886, 0.744103, 0.302046,
		-0.243408, -0.525772, 0.815056,
		28.499596, 35.058849, 38.914597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501528, 35.786854, 38.989468>,  <28.669981, 35.426888, 38.344055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501528, 35.786854, 38.989468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.669905, 35.426651, 39.033092>,  <28.770931, 35.210529, 39.059265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.669905, 35.426651, 39.033092>,  <28.501528, 35.786854, 38.989468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669905, 35.426651, 39.033092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717020, 0.403968, 0.568060,
		-0.555600, -0.160921, 0.815729,
		0.420941, -0.900508, 0.109061,
		28.796186, 35.156498, 39.065811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503296, 35.748039, 39.690903>,  <28.501528, 35.786854, 38.989468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503296, 35.748039, 39.690903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.775692, 35.577053, 39.453068>,  <28.939129, 35.474461, 39.310368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.775692, 35.577053, 39.453068>,  <28.503296, 35.748039, 39.690903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775692, 35.577053, 39.453068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730294, 0.456371, 0.508327,
		0.054060, -0.780386, 0.622957,
		0.680990, -0.427461, -0.594583,
		28.979990, 35.448814, 39.274693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028332, 35.844135, 40.156960>,  <28.503296, 35.748039, 39.690903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028332, 35.844135, 40.156960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.237532, 35.756413, 39.827503>,  <29.363052, 35.703781, 39.629829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.237532, 35.756413, 39.827503>,  <29.028332, 35.844135, 40.156960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237532, 35.756413, 39.827503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818929, 0.397172, 0.414258,
		0.236276, -0.891156, 0.387316,
		0.523000, -0.219305, -0.823636,
		29.394432, 35.690620, 39.580414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640045, 35.343864, 40.241669>,  <29.028332, 35.844135, 40.156960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640045, 35.343864, 40.241669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.698862, 35.617939, 39.956322>,  <29.734152, 35.782383, 39.785114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.698862, 35.617939, 39.956322>,  <29.640045, 35.343864, 40.241669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698862, 35.617939, 39.956322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793536, 0.348830, 0.498616,
		0.590491, -0.639402, -0.492428,
		0.147043, 0.685187, -0.713370,
		29.742975, 35.823494, 39.742310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396887, 35.488850, 40.090618>,  <29.640045, 35.343864, 40.241669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396887, 35.488850, 40.090618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.242468, 35.846085, 39.998211>,  <30.149817, 36.060425, 39.942768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.242468, 35.846085, 39.998211>,  <30.396887, 35.488850, 40.090618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242468, 35.846085, 39.998211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670511, 0.443653, 0.594631,
		0.633546, 0.074659, -0.770095,
		-0.386049, 0.893084, -0.231015,
		30.126654, 36.114010, 39.928905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884836, 36.074009, 39.692307>,  <30.396887, 35.488850, 40.090618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884836, 36.074009, 39.692307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.604616, 36.224686, 39.934738>,  <30.436483, 36.315090, 40.080196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.604616, 36.224686, 39.934738>,  <30.884836, 36.074009, 39.692307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604616, 36.224686, 39.934738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672804, 0.631725, 0.385044,
		-0.237834, 0.677516, -0.695994,
		-0.700550, 0.376691, 0.606081,
		30.394451, 36.337692, 40.116562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680323, 36.796818, 39.527576>,  <30.884836, 36.074009, 39.692307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680323, 36.796818, 39.527576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.658073, 36.668907, 39.905918>,  <30.644724, 36.592159, 40.132923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.658073, 36.668907, 39.905918>,  <30.680323, 36.796818, 39.527576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658073, 36.668907, 39.905918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784585, 0.571902, 0.239490,
		-0.617522, 0.755426, 0.219084,
		-0.055622, -0.319780, 0.945858,
		30.641386, 36.572971, 40.189674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784164, 37.372238, 39.898911>,  <30.680323, 36.796818, 39.527576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784164, 37.372238, 39.898911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.865141, 37.049656, 40.121132>,  <30.913727, 36.856106, 40.254467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.865141, 37.049656, 40.121132>,  <30.784164, 37.372238, 39.898911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865141, 37.049656, 40.121132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641374, 0.537888, 0.547097,
		-0.740038, 0.245564, 0.626133,
		0.202442, -0.806458, 0.555556,
		30.925873, 36.807720, 40.287800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978617, 37.623070, 40.445805>,  <30.784164, 37.372238, 39.898911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978617, 37.623070, 40.445805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.064119, 37.272217, 40.617828>,  <31.115421, 37.061707, 40.721043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.064119, 37.272217, 40.617828>,  <30.978617, 37.623070, 40.445805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064119, 37.272217, 40.617828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607120, 0.464170, 0.644943,
		-0.765319, 0.123233, 0.631744,
		0.213758, -0.877132, 0.430055,
		31.128246, 37.009079, 40.746845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647446, 37.453808, 41.161793>,  <30.978617, 37.623070, 40.445805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647446, 37.453808, 41.161793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.015133, 37.318031, 41.081978>,  <31.235746, 37.236565, 41.034088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.015133, 37.318031, 41.081978>,  <30.647446, 37.453808, 41.161793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015133, 37.318031, 41.081978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311523, 0.317028, 0.895793,
		-0.240807, -0.885593, 0.397162,
		0.919220, -0.339438, -0.199540,
		31.290899, 37.216198, 41.022118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390610, 38.122120, 41.495632>,  <30.647446, 37.453808, 41.161793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390610, 38.122120, 41.495632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.692043, 37.903645, 41.641945>,  <30.872904, 37.772560, 41.729733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.692043, 37.903645, 41.641945>,  <30.390610, 38.122120, 41.495632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692043, 37.903645, 41.641945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182635, 0.360578, 0.914673,
		-0.631474, -0.756086, 0.171973,
		0.753582, -0.546184, 0.365784,
		30.918118, 37.739788, 41.751678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219154, 37.942261, 42.239220>,  <30.390610, 38.122120, 41.495632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219154, 37.942261, 42.239220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.618065, 37.915375, 42.227100>,  <30.857412, 37.899242, 42.219830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.618065, 37.915375, 42.227100>,  <30.219154, 37.942261, 42.239220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618065, 37.915375, 42.227100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050271, 0.319273, 0.946328,
		-0.053934, -0.945276, 0.321783,
		0.997278, -0.067215, -0.030300,
		30.917248, 37.895210, 42.218010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393923, 37.629066, 42.813133>,  <30.219154, 37.942261, 42.239220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393923, 37.629066, 42.813133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.711845, 37.843739, 42.699810>,  <30.902599, 37.972542, 42.631817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.711845, 37.843739, 42.699810>,  <30.393923, 37.629066, 42.813133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711845, 37.843739, 42.699810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049679, 0.407728, 0.911751,
		0.604827, -0.738740, 0.297403,
		0.794806, 0.536677, -0.283305,
		30.950287, 38.004742, 42.614819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870213, 37.703571, 43.418465>,  <30.393923, 37.629066, 42.813133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870213, 37.703571, 43.418465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.964951, 38.012867, 43.183174>,  <31.021793, 38.198444, 43.042000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.964951, 38.012867, 43.183174>,  <30.870213, 37.703571, 43.418465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964951, 38.012867, 43.183174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333062, 0.504140, 0.796813,
		0.912674, -0.384638, -0.138132,
		0.236846, 0.773237, -0.588224,
		31.036005, 38.244839, 43.006706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459862, 37.918083, 43.707111>,  <30.870213, 37.703571, 43.418465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459862, 37.918083, 43.707111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.319878, 38.201584, 43.462097>,  <31.235888, 38.371685, 43.315090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.319878, 38.201584, 43.462097>,  <31.459862, 37.918083, 43.707111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319878, 38.201584, 43.462097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133913, 0.685017, 0.716114,
		0.927144, 0.168585, -0.334640,
		-0.349960, 0.708753, -0.612533,
		31.214890, 38.414211, 43.278336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011292, 38.307899, 43.527122>,  <31.459862, 37.918083, 43.707111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011292, 38.307899, 43.527122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.640619, 38.440693, 43.597599>,  <31.418215, 38.520370, 43.639885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.640619, 38.440693, 43.597599>,  <32.011292, 38.307899, 43.527122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640619, 38.440693, 43.597599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300201, 0.371743, 0.878457,
		0.226138, 0.866944, -0.444151,
		-0.926683, 0.331987, 0.176192,
		31.362614, 38.540291, 43.650455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205070, 38.815929, 43.961128>,  <32.011292, 38.307899, 43.527122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205070, 38.815929, 43.961128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.834837, 38.681507, 44.030830>,  <31.612698, 38.600853, 44.072651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.834837, 38.681507, 44.030830>,  <32.205070, 38.815929, 43.961128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834837, 38.681507, 44.030830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187256, -0.006391, 0.982290,
		-0.328994, 0.941819, 0.068844,
		-0.925580, -0.336060, 0.174259,
		31.557163, 38.580688, 44.083107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791393, 39.295128, 44.437283>,  <32.205070, 38.815929, 43.961128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791393, 39.295128, 44.437283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.647068, 38.925980, 44.491123>,  <31.560472, 38.704491, 44.523430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.647068, 38.925980, 44.491123>,  <31.791393, 39.295128, 44.437283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647068, 38.925980, 44.491123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286136, 0.027827, 0.957785,
		-0.887659, 0.384098, 0.254027,
		-0.360815, -0.922873, 0.134605,
		31.538824, 38.649117, 44.531506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356644, 39.254734, 45.030750>,  <31.791393, 39.295128, 44.437283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356644, 39.254734, 45.030750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.528307, 38.898273, 44.971863>,  <31.631306, 38.684399, 44.936531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.528307, 38.898273, 44.971863>,  <31.356644, 39.254734, 45.030750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528307, 38.898273, 44.971863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329315, 0.002605, 0.944217,
		-0.841056, -0.453700, 0.294587,
		0.429158, -0.891151, -0.147219,
		31.657055, 38.630928, 44.927696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950228, 38.731216, 45.475250>,  <31.356644, 39.254734, 45.030750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950228, 38.731216, 45.475250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.345242, 38.704662, 45.418167>,  <31.582251, 38.688728, 45.383915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.345242, 38.704662, 45.418167>,  <30.950228, 38.731216, 45.475250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345242, 38.704662, 45.418167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151285, 0.150173, 0.977016,
		-0.043429, -0.986428, 0.158345,
		0.987535, -0.066386, -0.142710,
		31.641502, 38.684746, 45.375355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244183, 38.203545, 45.910011>,  <30.950228, 38.731216, 45.475250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244183, 38.203545, 45.910011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.478548, 38.518822, 45.834694>,  <31.619167, 38.707989, 45.789505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.478548, 38.518822, 45.834694>,  <31.244183, 38.203545, 45.910011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478548, 38.518822, 45.834694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067818, 0.183845, 0.980613,
		0.807531, -0.587324, 0.054263,
		0.585913, 0.788195, -0.188291,
		31.654322, 38.755280, 45.778206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795698, 38.187466, 46.319996>,  <31.244183, 38.203545, 45.910011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795698, 38.187466, 46.319996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.775965, 38.576302, 46.228252>,  <31.764126, 38.809605, 46.173206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.775965, 38.576302, 46.228252>,  <31.795698, 38.187466, 46.319996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775965, 38.576302, 46.228252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070193, 0.232449, 0.970072,
		0.996313, 0.031756, -0.079701,
		-0.049332, 0.972090, -0.229363,
		31.761166, 38.867928, 46.159443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278286, 38.518383, 46.690731>,  <31.795698, 38.187466, 46.319996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278286, 38.518383, 46.690731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005020, 38.800858, 46.616352>,  <31.841061, 38.970345, 46.571724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005020, 38.800858, 46.616352>,  <32.278286, 38.518383, 46.690731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005020, 38.800858, 46.616352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075915, 0.184573, 0.979882,
		0.726304, 0.683541, -0.072484,
		-0.683168, 0.706190, -0.185947,
		31.800070, 39.012714, 46.560570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171791, 37.770298, 46.797752>,  <32.278286, 38.518383, 46.690731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171791, 37.770298, 46.797752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952778, 37.868454, 47.117752>,  <31.821371, 37.927349, 47.309750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952778, 37.868454, 47.117752>,  <32.171791, 37.770298, 46.797752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952778, 37.868454, 47.117752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447139, -0.722298, 0.527591,
		0.707303, 0.646581, 0.285754,
		-0.547530, 0.245395, 0.799996,
		31.788519, 37.942074, 47.357750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605930, 37.608990, 47.361858>,  <32.171791, 37.770298, 46.797752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605930, 37.608990, 47.361858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.252819, 37.620506, 47.549423>,  <32.040955, 37.627415, 47.661961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.252819, 37.620506, 47.549423>,  <32.605930, 37.608990, 47.361858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252819, 37.620506, 47.549423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345786, -0.635849, 0.690020,
		0.318024, 0.771276, 0.551356,
		-0.882776, 0.028792, 0.468912,
		31.987986, 37.629143, 47.690098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832855, 37.720585, 48.002140>,  <32.605930, 37.608990, 47.361858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832855, 37.720585, 48.002140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463161, 37.569290, 47.981239>,  <32.241344, 37.478516, 47.968700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463161, 37.569290, 47.981239>,  <32.832855, 37.720585, 48.002140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463161, 37.569290, 47.981239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260545, -0.724775, 0.637823,
		-0.279117, 0.575884, 0.768408,
		-0.924235, -0.378232, -0.052253,
		32.185890, 37.455822, 47.965565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594837, 37.585724, 48.707401>,  <32.832855, 37.720585, 48.002140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594837, 37.585724, 48.707401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.484272, 37.323795, 48.426029>,  <32.417934, 37.166637, 48.257206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.484272, 37.323795, 48.426029>,  <32.594837, 37.585724, 48.707401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484272, 37.323795, 48.426029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142498, -0.751780, 0.643834,
		-0.950416, 0.077728, 0.301112,
		-0.276414, -0.654817, -0.703428,
		32.401348, 37.127350, 48.215000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973644, 36.948544, 48.498688>,  <32.594837, 37.585724, 48.707401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973644, 36.948544, 48.498688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.270050, 36.897713, 48.234947>,  <33.447895, 36.867214, 48.076702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.270050, 36.897713, 48.234947>,  <32.973644, 36.948544, 48.498688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270050, 36.897713, 48.234947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174077, -0.912004, 0.371410,
		-0.648528, -0.390000, -0.653691,
		0.741019, -0.127077, -0.659350,
		33.492355, 36.859589, 48.037144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170422, 36.323967, 48.899780>,  <32.973644, 36.948544, 48.498688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170422, 36.323967, 48.899780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.256538, 35.959335, 49.039883>,  <33.308208, 35.740559, 49.123943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.256538, 35.959335, 49.039883>,  <33.170422, 36.323967, 48.899780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256538, 35.959335, 49.039883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970037, 0.158280, -0.184324,
		0.112587, 0.379444, 0.918339,
		0.215295, -0.911575, 0.350255,
		33.321129, 35.685863, 49.144958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828915, 36.353683, 49.325809>,  <33.170422, 36.323967, 48.899780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828915, 36.353683, 49.325809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.771488, 35.969830, 49.229076>,  <33.737034, 35.739517, 49.171036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.771488, 35.969830, 49.229076>,  <33.828915, 36.353683, 49.325809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771488, 35.969830, 49.229076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960067, -0.075756, -0.269321,
		0.240129, -0.270844, 0.932192,
		-0.143563, -0.959638, -0.241837,
		33.728420, 35.681938, 49.156525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420834, 36.054722, 49.599751>,  <33.828915, 36.353683, 49.325809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420834, 36.054722, 49.599751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.270855, 35.791008, 49.339054>,  <34.180866, 35.632778, 49.182636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.270855, 35.791008, 49.339054>,  <34.420834, 36.054722, 49.599751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270855, 35.791008, 49.339054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912550, -0.138641, -0.384748,
		0.163300, -0.739002, 0.653612,
		-0.374947, -0.659283, -0.651736,
		34.158371, 35.593224, 49.143532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720421, 35.433765, 49.592449>,  <34.420834, 36.054722, 49.599751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720421, 35.433765, 49.592449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.591469, 35.394321, 49.215866>,  <34.514095, 35.370655, 48.989914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.591469, 35.394321, 49.215866>,  <34.720421, 35.433765, 49.592449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591469, 35.394321, 49.215866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933918, -0.195448, -0.299329,
		-0.154491, -0.975745, 0.155098,
		-0.322382, -0.098606, -0.941460,
		34.494755, 35.364738, 48.933430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287491, 35.210239, 49.231190>,  <34.720421, 35.433765, 49.592449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287491, 35.210239, 49.231190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.088272, 35.265270, 48.888721>,  <34.968742, 35.298290, 48.683243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.088272, 35.265270, 48.888721>,  <35.287491, 35.210239, 49.231190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088272, 35.265270, 48.888721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865867, 0.025166, -0.499641,
		-0.047195, -0.990171, -0.131660,
		-0.498044, 0.137580, -0.856168,
		34.938858, 35.306545, 48.631870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509941, 34.685524, 48.744789>,  <35.287491, 35.210239, 49.231190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509941, 34.685524, 48.744789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370674, 34.988243, 48.523506>,  <35.287113, 35.169876, 48.390736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370674, 34.988243, 48.523506>,  <35.509941, 34.685524, 48.744789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370674, 34.988243, 48.523506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868277, 0.037888, -0.494631,
		-0.353376, -0.652551, -0.670300,
		-0.348168, 0.756797, -0.553206,
		35.266224, 35.215282, 48.357544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593601, 34.505798, 48.029789>,  <35.509941, 34.685524, 48.744789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593601, 34.505798, 48.029789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539169, 34.900936, 47.999714>,  <35.506512, 35.138020, 47.981667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539169, 34.900936, 47.999714>,  <35.593601, 34.505798, 48.029789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539169, 34.900936, 47.999714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845161, 0.076153, -0.529059,
		-0.516900, -0.135543, -0.845247,
		-0.136078, 0.987841, -0.075192,
		35.498344, 35.197289, 47.977158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800510, 34.778255, 47.326180>,  <35.593601, 34.505798, 48.029789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800510, 34.778255, 47.326180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.804348, 35.119095, 47.535496>,  <35.806652, 35.323597, 47.661087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.804348, 35.119095, 47.535496>,  <35.800510, 34.778255, 47.326180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804348, 35.119095, 47.535496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928424, 0.186775, -0.321159,
		-0.371397, 0.488920, -0.789317,
		0.009596, 0.852099, 0.523293,
		35.807228, 35.374725, 47.692482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984547, 35.347130, 46.866631>,  <35.800510, 34.778255, 47.326180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984547, 35.347130, 46.866631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.073345, 35.475712, 47.234844>,  <36.126625, 35.552860, 47.455772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.073345, 35.475712, 47.234844>,  <35.984547, 35.347130, 46.866631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073345, 35.475712, 47.234844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929864, 0.214261, -0.299073,
		-0.293374, 0.922365, -0.251347,
		0.222000, 0.321459, 0.920533,
		36.139946, 35.572151, 47.511005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406891, 35.850441, 46.709877>,  <35.984547, 35.347130, 46.866631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406891, 35.850441, 46.709877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.475288, 35.775459, 47.096786>,  <36.516327, 35.730473, 47.328934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.475288, 35.775459, 47.096786>,  <36.406891, 35.850441, 46.709877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475288, 35.775459, 47.096786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982739, -0.037913, -0.181070,
		0.070615, 0.981542, 0.177733,
		0.170989, -0.187451, 0.967277,
		36.526585, 35.719223, 47.386971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803970, 36.377277, 46.932503>,  <36.406891, 35.850441, 46.709877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803970, 36.377277, 46.932503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855202, 36.063309, 47.174988>,  <36.885941, 35.874928, 47.320477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855202, 36.063309, 47.174988>,  <36.803970, 36.377277, 46.932503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855202, 36.063309, 47.174988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965064, -0.042239, -0.258586,
		0.228576, 0.618149, 0.752094,
		0.128076, -0.784925, 0.606208,
		36.893623, 35.827831, 47.356850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478329, 36.468357, 47.211796>,  <36.803970, 36.377277, 46.932503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478329, 36.468357, 47.211796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.405075, 36.081039, 47.279766>,  <37.361122, 35.848648, 47.320549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.405075, 36.081039, 47.279766>,  <37.478329, 36.468357, 47.211796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405075, 36.081039, 47.279766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942990, -0.221880, -0.248070,
		0.277907, 0.114808, 0.953723,
		-0.183132, -0.968291, 0.169925,
		37.350136, 35.790550, 47.330742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030411, 36.220737, 47.643688>,  <37.478329, 36.468357, 47.211796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030411, 36.220737, 47.643688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.864166, 35.925262, 47.431419>,  <37.764420, 35.747978, 47.304058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.864166, 35.925262, 47.431419>,  <38.030411, 36.220737, 47.643688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864166, 35.925262, 47.431419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909541, -0.338499, -0.241150,
		-0.001497, -0.582890, 0.812550,
		-0.415611, -0.738686, -0.530669,
		37.739483, 35.703655, 47.272217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124744, 35.385841, 47.865498>,  <38.030411, 36.220737, 47.643688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124744, 35.385841, 47.865498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.084518, 35.463581, 47.475193>,  <38.060383, 35.510223, 47.241009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.084518, 35.463581, 47.475193>,  <38.124744, 35.385841, 47.865498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084518, 35.463581, 47.475193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848684, -0.495087, -0.186077,
		-0.519252, -0.846828, -0.115151,
		-0.100566, 0.194348, -0.975764,
		38.054348, 35.521885, 47.182465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872456, 35.294697, 47.736324>,  <38.124744, 35.385841, 47.865498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872456, 35.294697, 47.736324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.043804, 35.107975, 48.045799>,  <39.146614, 34.995941, 48.231483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.043804, 35.107975, 48.045799>,  <38.872456, 35.294697, 47.736324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043804, 35.107975, 48.045799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699717, -0.713134, -0.042855,
		0.571749, -0.523006, -0.632113,
		0.428368, -0.466802, 0.773690,
		39.172314, 34.967934, 48.277905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095116, 34.571976, 47.623058>,  <38.872456, 35.294697, 47.736324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095116, 34.571976, 47.623058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039162, 34.611294, 48.017170>,  <39.005589, 34.634884, 48.253635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039162, 34.611294, 48.017170>,  <39.095116, 34.571976, 47.623058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039162, 34.611294, 48.017170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715663, -0.697712, -0.032002,
		0.684294, -0.709603, 0.167942,
		-0.139884, 0.098291, 0.985277,
		38.997196, 34.640781, 48.312752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052853, 33.804058, 47.979595>,  <39.095116, 34.571976, 47.623058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052853, 33.804058, 47.979595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869175, 34.076580, 48.207619>,  <38.758968, 34.240093, 48.344433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869175, 34.076580, 48.207619>,  <39.052853, 33.804058, 47.979595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869175, 34.076580, 48.207619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775238, -0.620678, 0.117327,
		0.433756, -0.388053, 0.813185,
		-0.459197, 0.681303, 0.570056,
		38.731415, 34.280972, 48.378635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003639, 33.684666, 48.820679>,  <39.052853, 33.804058, 47.979595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003639, 33.684666, 48.820679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.711731, 33.879452, 48.628723>,  <38.536587, 33.996323, 48.513550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.711731, 33.879452, 48.628723>,  <39.003639, 33.684666, 48.820679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711731, 33.879452, 48.628723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619336, -0.768160, 0.162338,
		-0.289577, 0.415682, 0.862180,
		-0.729773, 0.486969, -0.479888,
		38.492798, 34.025543, 48.484756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791924, 33.595188, 49.612804>,  <39.003639, 33.684666, 48.820679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791924, 33.595188, 49.612804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.775608, 33.973465, 49.741802>,  <38.765820, 34.200432, 49.819199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.775608, 33.973465, 49.741802>,  <38.791924, 33.595188, 49.612804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775608, 33.973465, 49.741802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508564, -0.297471, 0.808006,
		0.860057, -0.131052, 0.493079,
		-0.040786, 0.945694, 0.322490,
		38.763371, 34.257172, 49.838551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755562, 33.541077, 50.306767>,  <38.791924, 33.595188, 49.612804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755562, 33.541077, 50.306767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.593487, 33.897655, 50.225628>,  <38.496243, 34.111603, 50.176945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.593487, 33.897655, 50.225628>,  <38.755562, 33.541077, 50.306767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593487, 33.897655, 50.225628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701384, -0.160786, 0.694412,
		0.586418, 0.423635, 0.690396,
		-0.405184, 0.891449, -0.202843,
		38.471931, 34.165089, 50.164776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798210, 33.919346, 50.889809>,  <38.755562, 33.541077, 50.306767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798210, 33.919346, 50.889809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.501930, 34.099422, 50.690334>,  <38.324162, 34.207470, 50.570652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.501930, 34.099422, 50.690334>,  <38.798210, 33.919346, 50.889809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501930, 34.099422, 50.690334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573973, -0.038275, 0.817979,
		0.349160, 0.892111, 0.286748,
		-0.740704, 0.450191, -0.498684,
		38.279720, 34.234478, 50.540730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475670, 34.340691, 51.377277>,  <38.798210, 33.919346, 50.889809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475670, 34.340691, 51.377277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.206978, 34.299614, 51.083820>,  <38.045765, 34.274967, 50.907745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.206978, 34.299614, 51.083820>,  <38.475670, 34.340691, 51.377277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206978, 34.299614, 51.083820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740331, 0.057910, 0.669743,
		-0.026294, 0.993026, -0.114928,
		-0.671728, -0.102695, -0.733645,
		38.005459, 34.268806, 50.863728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983902, 34.913738, 51.392113>,  <38.475670, 34.340691, 51.377277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983902, 34.913738, 51.392113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.801304, 34.604595, 51.215794>,  <37.691746, 34.419109, 51.110004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.801304, 34.604595, 51.215794>,  <37.983902, 34.913738, 51.392113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801304, 34.604595, 51.215794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677998, -0.018639, 0.734827,
		-0.576135, 0.634302, -0.515489,
		-0.456494, -0.772861, -0.440795,
		37.664356, 34.372738, 51.083557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231777, 35.120335, 51.455326>,  <37.983902, 34.913738, 51.392113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231777, 35.120335, 51.455326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.265877, 34.727089, 51.390556>,  <37.286335, 34.491142, 51.351696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.265877, 34.727089, 51.390556>,  <37.231777, 35.120335, 51.455326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265877, 34.727089, 51.390556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598698, -0.180444, 0.780385,
		-0.796426, 0.030419, -0.603970,
		0.085244, -0.983115, -0.161922,
		37.291451, 34.432156, 51.341980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578896, 34.920296, 51.547554>,  <37.231777, 35.120335, 51.455326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578896, 34.920296, 51.547554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.774361, 34.577358, 51.612259>,  <36.891640, 34.371593, 51.651081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.774361, 34.577358, 51.612259>,  <36.578896, 34.920296, 51.547554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774361, 34.577358, 51.612259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727319, -0.297893, 0.618277,
		-0.481890, -0.419782, -0.769133,
		0.488661, -0.857347, 0.161764,
		36.920959, 34.320156, 51.660789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077557, 34.368839, 51.449196>,  <36.578896, 34.920296, 51.547554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077557, 34.368839, 51.449196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389168, 34.231796, 51.659241>,  <36.576134, 34.149570, 51.785267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389168, 34.231796, 51.659241>,  <36.077557, 34.368839, 51.449196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389168, 34.231796, 51.659241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610536, -0.223885, 0.759685,
		-0.142708, -0.912413, -0.383585,
		0.779025, -0.342606, 0.525111,
		36.622875, 34.129013, 51.816772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841175, 33.770229, 51.730499>,  <36.077557, 34.368839, 51.449196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841175, 33.770229, 51.730499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159370, 33.823067, 51.967056>,  <36.350288, 33.854771, 52.108990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159370, 33.823067, 51.967056>,  <35.841175, 33.770229, 51.730499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159370, 33.823067, 51.967056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579051, -0.121951, 0.806119,
		0.178605, -0.983707, -0.020521,
		0.795487, 0.132094, 0.591397,
		36.398018, 33.862694, 52.144474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849922, 33.235249, 52.247368>,  <35.841175, 33.770229, 51.730499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849922, 33.235249, 52.247368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.089245, 33.515327, 52.403191>,  <36.232838, 33.683376, 52.496685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.089245, 33.515327, 52.403191>,  <35.849922, 33.235249, 52.247368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089245, 33.515327, 52.403191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451521, -0.107009, 0.885821,
		0.661934, -0.705885, 0.252129,
		0.598308, 0.700196, 0.389555,
		36.268738, 33.725388, 52.520058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038883, 32.908424, 52.822727>,  <35.849922, 33.235249, 52.247368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038883, 32.908424, 52.822727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.119720, 33.296410, 52.876892>,  <36.168224, 33.529202, 52.909389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.119720, 33.296410, 52.876892>,  <36.038883, 32.908424, 52.822727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119720, 33.296410, 52.876892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388321, -0.047568, 0.920296,
		0.899091, -0.238569, 0.367042,
		0.202095, 0.969960, 0.135409,
		36.180347, 33.587399, 52.917515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312634, 32.848541, 53.453869>,  <36.038883, 32.908424, 52.822727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312634, 32.848541, 53.453869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.164337, 33.217903, 53.414135>,  <36.075359, 33.439522, 53.390293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.164337, 33.217903, 53.414135>,  <36.312634, 32.848541, 53.453869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164337, 33.217903, 53.414135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394694, -0.059837, 0.916862,
		0.840695, 0.379125, 0.386648,
		-0.370741, 0.923409, -0.099334,
		36.053116, 33.494926, 53.384335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436432, 33.148853, 54.123699>,  <36.312634, 32.848541, 53.453869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436432, 33.148853, 54.123699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.175777, 33.412933, 53.974293>,  <36.019386, 33.571381, 53.884651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.175777, 33.412933, 53.974293>,  <36.436432, 33.148853, 54.123699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175777, 33.412933, 53.974293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385992, 0.135286, 0.912528,
		0.652980, 0.738808, 0.166674,
		-0.651635, 0.660197, -0.373513,
		35.980286, 33.610992, 53.862240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417587, 33.628117, 54.642521>,  <36.436432, 33.148853, 54.123699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417587, 33.628117, 54.642521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.090874, 33.715569, 54.428955>,  <35.894844, 33.768040, 54.300816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.090874, 33.715569, 54.428955>,  <36.417587, 33.628117, 54.642521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090874, 33.715569, 54.428955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445445, 0.349150, 0.824423,
		0.366658, 0.911205, -0.187794,
		-0.816787, 0.218629, -0.533910,
		35.845837, 33.781158, 54.268784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289013, 34.287231, 54.820812>,  <36.417587, 33.628117, 54.642521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289013, 34.287231, 54.820812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.959274, 34.114010, 54.674980>,  <35.761429, 34.010078, 54.587482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.959274, 34.114010, 54.674980>,  <36.289013, 34.287231, 54.820812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959274, 34.114010, 54.674980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549414, 0.456915, 0.699552,
		-0.136361, 0.776978, -0.614582,
		-0.824349, -0.433051, -0.364577,
		35.711971, 33.984093, 54.565609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832489, 34.849922, 54.756294>,  <36.289013, 34.287231, 54.820812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832489, 34.849922, 54.756294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.628860, 34.506195, 54.776005>,  <35.506683, 34.299961, 54.787830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.628860, 34.506195, 54.776005>,  <35.832489, 34.849922, 54.756294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628860, 34.506195, 54.776005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492827, 0.337932, 0.801825,
		-0.705672, 0.383900, -0.595524,
		-0.509067, -0.859316, 0.049272,
		35.476139, 34.248402, 54.790787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125809, 35.106266, 54.909412>,  <35.832489, 34.849922, 54.756294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125809, 35.106266, 54.909412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.160774, 34.727470, 55.033073>,  <35.181755, 34.500195, 55.107269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.160774, 34.727470, 55.033073>,  <35.125809, 35.106266, 54.909412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160774, 34.727470, 55.033073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641247, 0.184001, 0.744947,
		-0.762339, -0.263359, -0.591169,
		0.087412, -0.946988, 0.309149,
		35.186996, 34.443375, 55.125820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442123, 34.982193, 55.202393>,  <35.125809, 35.106266, 54.909412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442123, 34.982193, 55.202393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.692013, 34.699017, 55.334175>,  <34.841946, 34.529110, 55.413242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.692013, 34.699017, 55.334175>,  <34.442123, 34.982193, 55.202393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692013, 34.699017, 55.334175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482233, -0.017949, 0.875859,
		-0.614144, -0.706043, -0.352606,
		0.624723, -0.707942, 0.329454,
		34.879429, 34.486633, 55.433010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058758, 34.515156, 55.449291>,  <34.442123, 34.982193, 55.202393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058758, 34.515156, 55.449291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.402729, 34.460945, 55.646130>,  <34.609112, 34.428417, 55.764233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.402729, 34.460945, 55.646130>,  <34.058758, 34.515156, 55.449291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402729, 34.460945, 55.646130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463017, 0.198611, 0.863811,
		-0.214808, -0.970662, 0.108038,
		0.859926, -0.135530, 0.492096,
		34.660706, 34.420288, 55.793758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786804, 34.202824, 55.991058>,  <34.058758, 34.515156, 55.449291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786804, 34.202824, 55.991058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.158676, 34.301792, 56.100224>,  <34.381798, 34.361172, 56.165722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.158676, 34.301792, 56.100224>,  <33.786804, 34.202824, 55.991058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158676, 34.301792, 56.100224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313917, 0.144474, 0.938394,
		0.192750, -0.958076, 0.211984,
		0.929679, 0.247421, 0.272909,
		34.437580, 34.376019, 56.182098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896595, 33.675636, 56.371689>,  <33.786804, 34.202824, 55.991058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896595, 33.675636, 56.371689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121288, 33.994110, 56.461620>,  <34.256104, 34.185192, 56.515579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.121288, 33.994110, 56.461620>,  <33.896595, 33.675636, 56.371689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121288, 33.994110, 56.461620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334153, -0.030258, 0.942033,
		0.756832, -0.604301, 0.249049,
		0.561736, 0.796181, 0.224830,
		34.289810, 34.232964, 56.529068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271389, 33.484119, 56.966572>,  <33.896595, 33.675636, 56.371689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271389, 33.484119, 56.966572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.276596, 33.883793, 56.951286>,  <34.279720, 34.123596, 56.942116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.276596, 33.883793, 56.951286>,  <34.271389, 33.484119, 56.966572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276596, 33.883793, 56.951286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426610, 0.040117, 0.903546,
		0.904342, 0.004537, 0.426784,
		0.013022, 0.999185, -0.038215,
		34.280502, 34.183548, 56.939823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570679, 33.751534, 57.655621>,  <34.271389, 33.484119, 56.966572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570679, 33.751534, 57.655621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.383865, 34.071293, 57.504448>,  <34.271778, 34.263149, 57.413746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.383865, 34.071293, 57.504448>,  <34.570679, 33.751534, 57.655621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383865, 34.071293, 57.504448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401457, 0.189120, 0.896139,
		0.787851, 0.570253, 0.232600,
		-0.467037, 0.799403, -0.377930,
		34.243755, 34.311115, 57.391068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555023, 34.285175, 58.149944>,  <34.570679, 33.751534, 57.655621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555023, 34.285175, 58.149944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.251621, 34.392139, 57.912235>,  <34.069580, 34.456318, 57.769608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.251621, 34.392139, 57.912235>,  <34.555023, 34.285175, 58.149944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251621, 34.392139, 57.912235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582189, 0.131662, 0.802322,
		0.292792, 0.954546, 0.055817,
		-0.758504, 0.267410, -0.594276,
		34.024071, 34.472363, 57.733952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274639, 34.932041, 58.473267>,  <34.555023, 34.285175, 58.149944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274639, 34.932041, 58.473267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.996208, 34.753136, 58.248611>,  <33.829151, 34.645794, 58.113819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.996208, 34.753136, 58.248611>,  <34.274639, 34.932041, 58.473267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996208, 34.753136, 58.248611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681975, 0.167319, 0.711979,
		-0.224468, 0.878614, -0.421488,
		-0.696077, -0.447261, -0.561635,
		33.787384, 34.618958, 58.080120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573696, 35.311470, 58.646210>,  <34.274639, 34.932041, 58.473267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573696, 35.311470, 58.646210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.479755, 34.957462, 58.485420>,  <33.423389, 34.745056, 58.388947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.479755, 34.957462, 58.485420>,  <33.573696, 35.311470, 58.646210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479755, 34.957462, 58.485420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813267, -0.047591, 0.579941,
		-0.532390, 0.463113, -0.708581,
		-0.234856, -0.885021, -0.401971,
		33.409298, 34.691956, 58.364830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895741, 35.365547, 58.641232>,  <33.573696, 35.311470, 58.646210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895741, 35.365547, 58.641232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.949249, 34.971832, 58.595116>,  <32.981354, 34.735603, 58.567448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.949249, 34.971832, 58.595116>,  <32.895741, 35.365547, 58.641232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949249, 34.971832, 58.595116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890228, -0.170470, 0.422416,
		-0.435430, 0.046126, -0.899040,
		0.133775, -0.984283, -0.115290,
		32.989384, 34.676548, 58.560528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358265, 35.098808, 58.227650>,  <32.895741, 35.365547, 58.641232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358265, 35.098808, 58.227650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.482109, 34.774841, 58.426918>,  <32.556416, 34.580460, 58.546478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.482109, 34.774841, 58.426918>,  <32.358265, 35.098808, 58.227650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482109, 34.774841, 58.426918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939266, -0.178915, 0.292864,
		-0.148064, -0.558592, -0.816120,
		0.309607, -0.809916, 0.498176,
		32.574989, 34.531864, 58.576370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784845, 34.732723, 58.206451>,  <32.358265, 35.098808, 58.227650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784845, 34.732723, 58.206451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005135, 34.551643, 58.486958>,  <32.137306, 34.442997, 58.655262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.005135, 34.551643, 58.486958>,  <31.784845, 34.732723, 58.206451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005135, 34.551643, 58.486958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824065, -0.161260, 0.543058,
		-0.132749, -0.876966, -0.461854,
		0.550722, -0.452688, 0.701269,
		32.170349, 34.415833, 58.697338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469330, 34.096581, 58.450439>,  <31.784845, 34.732723, 58.206451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469330, 34.096581, 58.450439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703817, 34.270878, 58.723633>,  <31.844511, 34.375458, 58.887550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.703817, 34.270878, 58.723633>,  <31.469330, 34.096581, 58.450439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703817, 34.270878, 58.723633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724156, -0.096152, 0.682900,
		0.363241, -0.894920, 0.259180,
		0.586220, 0.435744, 0.682988,
		31.879684, 34.401600, 58.928528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314760, 33.761875, 59.079773>,  <31.469330, 34.096581, 58.450439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314760, 33.761875, 59.079773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.507254, 34.088127, 59.208252>,  <31.622749, 34.283878, 59.285339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.507254, 34.088127, 59.208252>,  <31.314760, 33.761875, 59.079773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507254, 34.088127, 59.208252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587375, 0.028038, 0.808829,
		0.650696, -0.577900, 0.492571,
		0.481233, 0.815626, 0.321199,
		31.651623, 34.332813, 59.304611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203112, 33.674175, 59.809216>,  <31.314760, 33.761875, 59.079773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203112, 33.674175, 59.809216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.324436, 34.052479, 59.762676>,  <31.397232, 34.279461, 59.734753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.324436, 34.052479, 59.762676>,  <31.203112, 33.674175, 59.809216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324436, 34.052479, 59.762676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426452, 0.243915, 0.871002,
		0.852139, -0.214570, 0.477305,
		0.303313, 0.945762, -0.116346,
		31.415430, 34.336208, 59.727772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491266, 33.896702, 60.429718>,  <31.203112, 33.674175, 59.809216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491266, 33.896702, 60.429718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.380623, 34.223560, 60.227428>,  <31.314238, 34.419674, 60.106052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.380623, 34.223560, 60.227428>,  <31.491266, 33.896702, 60.429718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380623, 34.223560, 60.227428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453617, 0.352916, 0.818341,
		0.847184, 0.455766, 0.273052,
		-0.276608, 0.817147, -0.505727,
		31.297640, 34.468704, 60.075710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523222, 34.352066, 60.956409>,  <31.491266, 33.896702, 60.429718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523222, 34.352066, 60.956409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.325869, 34.532406, 60.658871>,  <31.207457, 34.640610, 60.480347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.325869, 34.532406, 60.658871>,  <31.523222, 34.352066, 60.956409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325869, 34.532406, 60.658871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494766, 0.557883, 0.666313,
		0.715387, 0.696777, -0.052184,
		-0.493385, 0.450852, -0.743844,
		31.177853, 34.667660, 60.435719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522163, 35.081635, 61.094513>,  <31.523222, 34.352066, 60.956409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522163, 35.081635, 61.094513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.219732, 35.037918, 60.836395>,  <31.038273, 35.011688, 60.681526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.219732, 35.037918, 60.836395>,  <31.522163, 35.081635, 61.094513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219732, 35.037918, 60.836395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558484, 0.621796, 0.549058,
		0.341232, 0.775516, -0.531165,
		-0.756080, -0.109291, -0.645290,
		30.992908, 35.005131, 60.642807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300707, 35.799416, 60.906239>,  <31.522163, 35.081635, 61.094513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300707, 35.799416, 60.906239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.001600, 35.537785, 60.860569>,  <30.822136, 35.380806, 60.833168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.001600, 35.537785, 60.860569>,  <31.300707, 35.799416, 60.906239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001600, 35.537785, 60.860569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596099, 0.585602, 0.549305,
		-0.292427, 0.478808, -0.827786,
		-0.747765, -0.654074, -0.114171,
		30.777271, 35.341564, 60.826317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798733, 36.196732, 60.727551>,  <31.300707, 35.799416, 60.906239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798733, 36.196732, 60.727551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.603735, 35.855515, 60.802029>,  <30.486736, 35.650784, 60.846714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.603735, 35.855515, 60.802029>,  <30.798733, 36.196732, 60.727551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603735, 35.855515, 60.802029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761590, 0.519731, 0.387119,
		-0.427000, 0.046915, -0.903034,
		-0.487496, -0.853041, 0.186195,
		30.457485, 35.599602, 60.857887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145687, 36.123848, 60.414234>,  <30.798733, 36.196732, 60.727551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145687, 36.123848, 60.414234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.147800, 35.908634, 60.751396>,  <30.149069, 35.779507, 60.953693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.147800, 35.908634, 60.751396>,  <30.145687, 36.123848, 60.414234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147800, 35.908634, 60.751396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632648, 0.650986, 0.419493,
		-0.774421, -0.535482, -0.336944,
		0.005285, -0.538031, 0.842909,
		30.149385, 35.747227, 61.004269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655725, 36.449902, 60.861805>,  <30.145687, 36.123848, 60.414234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655725, 36.449902, 60.861805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.807392, 36.216434, 61.149017>,  <29.898392, 36.076355, 61.321346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.807392, 36.216434, 61.149017>,  <29.655725, 36.449902, 60.861805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807392, 36.216434, 61.149017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487992, 0.533166, 0.691085,
		-0.786191, -0.612430, -0.082663,
		0.379168, -0.583663, 0.718031,
		29.921143, 36.041336, 61.364426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119989, 36.367481, 61.321270>,  <29.655725, 36.449902, 60.861805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119989, 36.367481, 61.321270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.454645, 36.289017, 61.525841>,  <29.655439, 36.241940, 61.648582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.454645, 36.289017, 61.525841>,  <29.119989, 36.367481, 61.321270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454645, 36.289017, 61.525841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373226, 0.479236, 0.794378,
		-0.400918, -0.855485, 0.327735,
		0.836640, -0.196161, 0.511423,
		29.705637, 36.230167, 61.679268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809862, 36.411419, 61.846722>,  <29.119989, 36.367481, 61.321270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809862, 36.411419, 61.846722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.190313, 36.399338, 61.969650>,  <29.418585, 36.392090, 62.043407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.190313, 36.399338, 61.969650>,  <28.809862, 36.411419, 61.846722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190313, 36.399338, 61.969650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233578, 0.580586, 0.779975,
		-0.201986, -0.813638, 0.545156,
		0.951128, -0.030207, 0.307318,
		29.475651, 36.390274, 62.061844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721825, 36.383640, 62.552235>,  <28.809862, 36.411419, 61.846722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721825, 36.383640, 62.552235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.093687, 36.523277, 62.505112>,  <29.316805, 36.607059, 62.476837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.093687, 36.523277, 62.505112>,  <28.721825, 36.383640, 62.552235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093687, 36.523277, 62.505112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057059, 0.452322, 0.890028,
		0.363986, -0.820697, 0.440422,
		0.929655, 0.349088, -0.117811,
		29.372583, 36.628006, 62.469769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111134, 36.195843, 63.145832>,  <28.721825, 36.383640, 62.552235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111134, 36.195843, 63.145832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.295490, 36.518353, 62.997505>,  <29.406105, 36.711857, 62.908508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.295490, 36.518353, 62.997505>,  <29.111134, 36.195843, 63.145832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295490, 36.518353, 62.997505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105200, 0.365255, 0.924944,
		0.881198, -0.465310, 0.083524,
		0.460894, 0.806272, -0.370813,
		29.433758, 36.760235, 62.886261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670298, 36.314526, 63.545586>,  <29.111134, 36.195843, 63.145832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670298, 36.314526, 63.545586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.584358, 36.665245, 63.373508>,  <29.532795, 36.875675, 63.270260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.584358, 36.665245, 63.373508>,  <29.670298, 36.314526, 63.545586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584358, 36.665245, 63.373508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183835, 0.468916, 0.863900,
		0.959190, 0.106523, -0.261932,
		-0.214849, 0.876796, -0.430197,
		29.519903, 36.928284, 63.244450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395876, 36.626606, 63.274597>,  <29.670298, 36.314526, 63.545586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395876, 36.626606, 63.274597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.695818, 36.376312, 63.188641>,  <30.875784, 36.226135, 63.137066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.695818, 36.376312, 63.188641>,  <30.395876, 36.626606, 63.274597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695818, 36.376312, 63.188641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146112, 0.473411, -0.868639,
		0.645267, 0.619955, 0.446416,
		0.749855, -0.625731, -0.214893,
		30.920774, 36.188595, 63.124172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990749, 37.000458, 63.159821>,  <30.395876, 36.626606, 63.274597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990749, 37.000458, 63.159821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.025249, 36.658672, 62.954899>,  <31.045950, 36.453602, 62.831947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.025249, 36.658672, 62.954899>,  <30.990749, 37.000458, 63.159821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025249, 36.658672, 62.954899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352652, 0.507109, -0.786433,
		0.931771, -0.112834, 0.345066,
		0.086249, -0.854464, -0.512301,
		31.051125, 36.402332, 62.801208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816925, 37.672024, 63.314663>,  <30.990749, 37.000458, 63.159821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816925, 37.672024, 63.314663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.495882, 37.577423, 63.533710>,  <30.303257, 37.520660, 63.665138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.495882, 37.577423, 63.533710>,  <30.816925, 37.672024, 63.314663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495882, 37.577423, 63.533710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129056, 0.965147, 0.227677,
		-0.582380, 0.112062, -0.805156,
		-0.802607, -0.236505, 0.547620,
		30.255100, 37.506474, 63.697998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189056, 38.053204, 63.089165>,  <30.816925, 37.672024, 63.314663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189056, 38.053204, 63.089165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.216972, 37.949757, 63.474548>,  <30.233721, 37.887688, 63.705776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.216972, 37.949757, 63.474548>,  <30.189056, 38.053204, 63.089165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.216972, 37.949757, 63.474548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390556, 0.881630, 0.264943,
		-0.917930, -0.394773, -0.039477,
		0.069788, -0.258617, 0.963456,
		30.237909, 37.872173, 63.763584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595751, 38.072739, 63.458893>,  <30.189056, 38.053204, 63.089165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595751, 38.072739, 63.458893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.878256, 38.149162, 63.731564>,  <30.047760, 38.195019, 63.895164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.878256, 38.149162, 63.731564>,  <29.595751, 38.072739, 63.458893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878256, 38.149162, 63.731564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458467, 0.857143, 0.234762,
		-0.539442, -0.478331, 0.692966,
		0.706265, 0.191062, 0.681679,
		30.090136, 38.206482, 63.936066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871353, 38.224564, 63.346226>,  <29.595751, 38.072739, 63.458893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871353, 38.224564, 63.346226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.675070, 38.532539, 63.183056>,  <28.557301, 38.717323, 63.085152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.675070, 38.532539, 63.183056>,  <28.871353, 38.224564, 63.346226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675070, 38.532539, 63.183056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404477, 0.213387, 0.889306,
		0.771755, 0.601385, 0.206711,
		-0.490706, 0.769936, -0.407929,
		28.527859, 38.763519, 63.060677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095045, 38.810928, 63.770203>,  <28.871353, 38.224564, 63.346226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095045, 38.810928, 63.770203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.490055, 38.809883, 63.707230>,  <29.727060, 38.809258, 63.669445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.490055, 38.809883, 63.707230>,  <29.095045, 38.810928, 63.770203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490055, 38.809883, 63.707230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156126, -0.146049, -0.976880,
		-0.020444, 0.989274, -0.144635,
		0.987526, -0.002610, -0.157437,
		29.786312, 38.809101, 63.660000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171427, 39.056908, 63.053463>,  <29.095045, 38.810928, 63.770203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171427, 39.056908, 63.053463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527330, 38.882114, 63.106190>,  <29.740871, 38.777237, 63.137825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.527330, 38.882114, 63.106190>,  <29.171427, 39.056908, 63.053463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.527330, 38.882114, 63.106190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080096, -0.134829, -0.987626,
		0.449352, 0.889305, -0.084964,
		0.889757, -0.436987, 0.131816,
		29.794258, 38.751019, 63.145733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723005, 39.375477, 62.501938>,  <29.171427, 39.056908, 63.053463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723005, 39.375477, 62.501938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.878241, 39.037075, 62.648178>,  <29.971382, 38.834034, 62.735924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.878241, 39.037075, 62.648178>,  <29.723005, 39.375477, 62.501938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878241, 39.037075, 62.648178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204719, -0.307651, -0.929216,
		0.898598, 0.435462, 0.053798,
		0.388087, -0.846005, 0.365601,
		29.994667, 38.783272, 62.757858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453367, 39.274963, 62.136261>,  <29.723005, 39.375477, 62.501938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453367, 39.274963, 62.136261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.249636, 38.953007, 62.258068>,  <30.127396, 38.759834, 62.331154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.249636, 38.953007, 62.258068>,  <30.453367, 39.274963, 62.136261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249636, 38.953007, 62.258068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068979, -0.390903, -0.917844,
		0.857802, -0.446481, 0.254620,
		-0.509331, -0.804892, 0.304519,
		30.096836, 38.711540, 62.349422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904181, 38.668766, 62.006161>,  <30.453367, 39.274963, 62.136261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904181, 38.668766, 62.006161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.524225, 38.544945, 62.023540>,  <30.296251, 38.470654, 62.033970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.524225, 38.544945, 62.023540>,  <30.904181, 38.668766, 62.006161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524225, 38.544945, 62.023540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135585, -0.533267, -0.835010,
		0.281652, -0.787275, 0.548516,
		-0.949889, -0.309553, 0.043453,
		30.239258, 38.452080, 62.036575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902664, 37.971203, 61.737808>,  <30.904181, 38.668766, 62.006161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902664, 37.971203, 61.737808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.523390, 38.090458, 61.693890>,  <30.295826, 38.162010, 61.667538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.523390, 38.090458, 61.693890>,  <30.902664, 37.971203, 61.737808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523390, 38.090458, 61.693890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013849, -0.306456, -0.951784,
		-0.317425, -0.903985, 0.286447,
		-0.948182, 0.298153, -0.109796,
		30.238934, 38.179901, 61.660954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595160, 37.448284, 61.343742>,  <30.902664, 37.971203, 61.737808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595160, 37.448284, 61.343742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.345343, 37.756161, 61.290806>,  <30.195452, 37.940887, 61.259045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.345343, 37.756161, 61.290806>,  <30.595160, 37.448284, 61.343742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345343, 37.756161, 61.290806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025498, -0.149269, -0.988468,
		-0.780574, -0.620715, 0.073599,
		-0.624543, 0.769696, -0.132342,
		30.157980, 37.987068, 61.251102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984644, 37.324608, 60.871902>,  <30.595160, 37.448284, 61.343742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984644, 37.324608, 60.871902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.029049, 37.722088, 60.865799>,  <30.055693, 37.960575, 60.862137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.029049, 37.722088, 60.865799>,  <29.984644, 37.324608, 60.871902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029049, 37.722088, 60.865799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086222, -0.024924, -0.995964,
		-0.990072, 0.109250, -0.088446,
		0.111014, 0.993702, -0.015257,
		30.062353, 38.020199, 60.861221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499502, 37.513893, 60.312260>,  <29.984644, 37.324608, 60.871902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499502, 37.513893, 60.312260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.746910, 37.825638, 60.352329>,  <29.895355, 38.012684, 60.376373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.746910, 37.825638, 60.352329>,  <29.499502, 37.513893, 60.312260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746910, 37.825638, 60.352329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162532, -0.002162, -0.986701,
		-0.768776, 0.626576, -0.128008,
		0.618519, 0.779358, 0.100177,
		29.932467, 38.059444, 60.382381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330919, 38.088142, 59.882679>,  <29.499502, 37.513893, 60.312260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330919, 38.088142, 59.882679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.718143, 38.150772, 59.961002>,  <29.950478, 38.188351, 60.007996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.718143, 38.150772, 59.961002>,  <29.330919, 38.088142, 59.882679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718143, 38.150772, 59.961002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191325, 0.043349, -0.980569,
		-0.162021, 0.986714, 0.012008,
		0.968062, 0.156575, 0.195807,
		30.008562, 38.197746, 60.019745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545107, 38.601635, 59.393417>,  <29.330919, 38.088142, 59.882679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545107, 38.601635, 59.393417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.890568, 38.449928, 59.526245>,  <30.097843, 38.358906, 59.605942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.890568, 38.449928, 59.526245>,  <29.545107, 38.601635, 59.393417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890568, 38.449928, 59.526245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347387, -0.029557, -0.937256,
		0.365281, 0.924817, 0.106224,
		0.863651, -0.379262, 0.332066,
		30.149662, 38.336151, 59.625866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098854, 38.988132, 58.960442>,  <29.545107, 38.601635, 59.393417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098854, 38.988132, 58.960442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.278042, 38.659805, 59.102196>,  <30.385553, 38.462811, 59.187248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.278042, 38.659805, 59.102196>,  <30.098854, 38.988132, 58.960442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278042, 38.659805, 59.102196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431675, -0.148541, -0.889715,
		0.782932, 0.551542, 0.287784,
		0.447967, -0.820815, 0.354385,
		30.412432, 38.413559, 59.208511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755754, 39.155548, 58.885376>,  <30.098854, 38.988132, 58.960442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755754, 39.155548, 58.885376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.758539, 38.757999, 58.929512>,  <30.760210, 38.519470, 58.955994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.758539, 38.757999, 58.929512>,  <30.755754, 39.155548, 58.885376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758539, 38.757999, 58.929512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295822, -0.103359, -0.949635,
		0.955218, 0.039251, 0.293289,
		0.006960, -0.993869, 0.110342,
		30.760628, 38.459839, 58.962616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502771, 38.967625, 58.640770>,  <30.755754, 39.155548, 58.885376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502771, 38.967625, 58.640770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.281874, 38.634232, 58.633499>,  <31.149334, 38.434196, 58.629135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.281874, 38.634232, 58.633499>,  <31.502771, 38.967625, 58.640770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281874, 38.634232, 58.633499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485848, -0.304039, -0.819458,
		0.677478, -0.461374, 0.572850,
		-0.552245, -0.833483, -0.018178,
		31.116199, 38.384186, 58.628044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935163, 38.415932, 58.678387>,  <31.502771, 38.967625, 58.640770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935163, 38.415932, 58.678387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.600531, 38.280441, 58.506157>,  <31.399752, 38.199146, 58.402821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.600531, 38.280441, 58.506157>,  <31.935163, 38.415932, 58.678387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600531, 38.280441, 58.506157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519737, -0.242209, -0.819272,
		0.173222, -0.909174, 0.378678,
		-0.836580, -0.338729, -0.430575,
		31.349556, 38.178822, 58.376984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209301, 38.009434, 58.271332>,  <31.935163, 38.415932, 58.678387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209301, 38.009434, 58.271332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.837231, 38.024975, 58.125309>,  <31.613989, 38.034298, 58.037693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.837231, 38.024975, 58.125309>,  <32.209301, 38.009434, 58.271332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837231, 38.024975, 58.125309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357786, -0.126883, -0.925143,
		-0.082258, -0.991157, 0.104124,
		-0.930174, 0.038847, -0.365059,
		31.558178, 38.036629, 58.015793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221840, 37.465115, 57.867527>,  <32.209301, 38.009434, 58.271332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221840, 37.465115, 57.867527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.929987, 37.712109, 57.749985>,  <31.754875, 37.860306, 57.679459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.929987, 37.712109, 57.749985>,  <32.221840, 37.465115, 57.867527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929987, 37.712109, 57.749985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330043, -0.058376, -0.942159,
		-0.598922, -0.784415, -0.161203,
		-0.729633, 0.617483, -0.293854,
		31.711098, 37.897354, 57.661827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950983, 37.173309, 57.247746>,  <32.221840, 37.465115, 57.867527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950983, 37.173309, 57.247746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.873957, 37.565762, 57.254761>,  <31.827742, 37.801231, 57.258972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.873957, 37.565762, 57.254761>,  <31.950983, 37.173309, 57.247746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873957, 37.565762, 57.254761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113624, 0.040049, -0.992716,
		-0.974684, -0.189168, -0.119192,
		-0.192564, 0.981128, 0.017541,
		31.816187, 37.860100, 57.260021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570326, 37.340797, 56.742241>,  <31.950983, 37.173309, 57.247746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570326, 37.340797, 56.742241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709187, 37.706696, 56.824928>,  <31.792503, 37.926235, 56.874542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.709187, 37.706696, 56.824928>,  <31.570326, 37.340797, 56.742241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709187, 37.706696, 56.824928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216653, 0.136237, -0.966696,
		-0.912441, 0.380375, -0.150887,
		0.347150, 0.914743, 0.206718,
		31.813332, 37.981117, 56.886944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330124, 37.770691, 56.207428>,  <31.570326, 37.340797, 56.742241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330124, 37.770691, 56.207428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.644758, 37.956272, 56.370415>,  <31.833540, 38.067619, 56.468204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.644758, 37.956272, 56.370415>,  <31.330124, 37.770691, 56.207428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644758, 37.956272, 56.370415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339714, 0.225885, -0.913001,
		-0.515630, 0.856576, 0.020067,
		0.786587, 0.463954, 0.407464,
		31.880735, 38.095459, 56.492653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448189, 38.300217, 55.732143>,  <31.330124, 37.770691, 56.207428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448189, 38.300217, 55.732143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.787689, 38.278290, 55.942520>,  <31.991388, 38.265133, 56.068748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.787689, 38.278290, 55.942520>,  <31.448189, 38.300217, 55.732143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787689, 38.278290, 55.942520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525799, 0.193205, -0.828376,
		-0.056210, 0.979626, 0.192803,
		0.848750, -0.054813, 0.525946,
		32.042313, 38.261845, 56.100304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836826, 38.915886, 55.577080>,  <31.448189, 38.300217, 55.732143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836826, 38.915886, 55.577080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.071213, 38.617535, 55.703766>,  <32.211845, 38.438522, 55.779778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.071213, 38.617535, 55.703766>,  <31.836826, 38.915886, 55.577080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071213, 38.617535, 55.703766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692544, 0.258013, -0.673656,
		0.420749, 0.614079, 0.667741,
		0.585964, -0.745879, 0.316718,
		32.247002, 38.393772, 55.798782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454231, 39.169594, 55.734226>,  <31.836826, 38.915886, 55.577080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454231, 39.169594, 55.734226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.566662, 38.789669, 55.679310>,  <32.634121, 38.561714, 55.646358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.566662, 38.789669, 55.679310>,  <32.454231, 39.169594, 55.734226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566662, 38.789669, 55.679310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435652, 0.253756, -0.863606,
		0.855104, 0.182927, 0.485113,
		0.281077, -0.949814, -0.137296,
		32.650986, 38.504726, 55.638123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213089, 39.242851, 55.464672>,  <32.454231, 39.169594, 55.734226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213089, 39.242851, 55.464672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.076992, 38.876305, 55.380283>,  <32.995335, 38.656376, 55.329651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.076992, 38.876305, 55.380283>,  <33.213089, 39.242851, 55.464672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076992, 38.876305, 55.380283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620010, -0.049938, -0.783003,
		0.706980, -0.397221, 0.585146,
		-0.340246, -0.916363, -0.210976,
		32.974918, 38.601395, 55.316990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834885, 38.704384, 55.447990>,  <33.213089, 39.242851, 55.464672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834885, 38.704384, 55.447990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.537067, 38.558765, 55.224163>,  <33.358376, 38.471394, 55.089867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.537067, 38.558765, 55.224163>,  <33.834885, 38.704384, 55.447990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537067, 38.558765, 55.224163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644001, -0.170932, -0.745684,
		0.175817, -0.915560, 0.361715,
		-0.744547, -0.364048, -0.559569,
		33.313702, 38.449551, 55.056293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100880, 38.160763, 55.185577>,  <33.834885, 38.704384, 55.447990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100880, 38.160763, 55.185577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.814308, 38.219337, 54.912727>,  <33.642365, 38.254482, 54.749020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.814308, 38.219337, 54.912727>,  <34.100880, 38.160763, 55.185577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814308, 38.219337, 54.912727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635617, -0.266080, -0.724701,
		-0.287626, -0.952763, 0.097545,
		-0.716423, 0.146441, -0.682124,
		33.599380, 38.263268, 54.708092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084747, 37.532181, 54.793621>,  <34.100880, 38.160763, 55.185577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084747, 37.532181, 54.793621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.874275, 37.784103, 54.565067>,  <33.747993, 37.935257, 54.427937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.874275, 37.784103, 54.565067>,  <34.084747, 37.532181, 54.793621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874275, 37.784103, 54.565067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507726, -0.306339, -0.805214,
		-0.682168, -0.713792, -0.158582,
		-0.526175, 0.629808, -0.571386,
		33.716423, 37.973045, 54.393650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869019, 37.179348, 54.153618>,  <34.084747, 37.532181, 54.793621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869019, 37.179348, 54.153618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.837673, 37.568085, 54.064720>,  <33.818867, 37.801327, 54.011383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.837673, 37.568085, 54.064720>,  <33.869019, 37.179348, 54.153618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837673, 37.568085, 54.064720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388722, -0.175495, -0.904487,
		-0.918017, -0.157267, -0.364022,
		-0.078362, 0.971838, -0.222240,
		33.814163, 37.859634, 53.998047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577858, 37.126270, 53.533081>,  <33.869019, 37.179348, 54.153618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577858, 37.126270, 53.533081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.750439, 37.487091, 53.537884>,  <33.853989, 37.703583, 53.540768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.750439, 37.487091, 53.537884>,  <33.577858, 37.126270, 53.533081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750439, 37.487091, 53.537884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249904, -0.106715, -0.962372,
		-0.866832, 0.418219, -0.271470,
		0.431452, 0.902056, 0.012010,
		33.879875, 37.757710, 53.541489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263351, 37.457531, 52.919823>,  <33.577858, 37.126270, 53.533081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263351, 37.457531, 52.919823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595112, 37.651985, 53.029922>,  <33.794170, 37.768658, 53.095982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595112, 37.651985, 53.029922>,  <33.263351, 37.457531, 52.919823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595112, 37.651985, 53.029922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324176, -0.017553, -0.945834,
		-0.454968, 0.873709, -0.172150,
		0.829406, 0.486132, 0.275249,
		33.843933, 37.797825, 53.112495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370296, 37.980843, 52.410583>,  <33.263351, 37.457531, 52.919823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370296, 37.980843, 52.410583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.735233, 37.926201, 52.564972>,  <33.954197, 37.893417, 52.657604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.735233, 37.926201, 52.564972>,  <33.370296, 37.980843, 52.410583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735233, 37.926201, 52.564972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374876, -0.100325, -0.921631,
		0.164619, 0.985533, -0.040322,
		0.912342, -0.136602, 0.385968,
		34.008938, 37.885220, 52.680763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896961, 38.418552, 51.976559>,  <33.370296, 37.980843, 52.410583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896961, 38.418552, 51.976559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.110115, 38.131821, 52.156422>,  <34.238007, 37.959782, 52.264339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.110115, 38.131821, 52.156422>,  <33.896961, 38.418552, 51.976559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110115, 38.131821, 52.156422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472525, -0.188741, -0.860870,
		0.701962, 0.671221, 0.238140,
		0.532887, -0.716825, 0.449658,
		34.269981, 37.916775, 52.291321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557873, 38.500046, 51.688557>,  <33.896961, 38.418552, 51.976559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557873, 38.500046, 51.688557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597836, 38.136993, 51.851639>,  <34.621815, 37.919163, 51.949486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597836, 38.136993, 51.851639>,  <34.557873, 38.500046, 51.688557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597836, 38.136993, 51.851639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625768, -0.261254, -0.734956,
		0.773584, 0.328555, 0.541867,
		0.099908, -0.907633, 0.407701,
		34.627808, 37.864704, 51.973949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162777, 38.361458, 51.516853>,  <34.557873, 38.500046, 51.688557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162777, 38.361458, 51.516853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.045753, 37.990181, 51.608818>,  <34.975540, 37.767414, 51.663998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.045753, 37.990181, 51.608818>,  <35.162777, 38.361458, 51.516853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045753, 37.990181, 51.608818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529645, -0.357474, -0.769213,
		0.796169, -0.103266, 0.596197,
		-0.292559, -0.928196, 0.229916,
		34.957985, 37.711723, 51.677792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783867, 37.999786, 51.660549>,  <35.162777, 38.361458, 51.516853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783867, 37.999786, 51.660549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.497978, 37.742268, 51.551224>,  <35.326447, 37.587757, 51.485630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.497978, 37.742268, 51.551224>,  <35.783867, 37.999786, 51.660549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497978, 37.742268, 51.551224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503110, -0.201786, -0.840335,
		0.485856, -0.738109, 0.468122,
		-0.714719, -0.643799, -0.273311,
		35.283562, 37.549129, 51.469231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182735, 37.380871, 51.498531>,  <35.783867, 37.999786, 51.660549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182735, 37.380871, 51.498531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821911, 37.391960, 51.326241>,  <35.605415, 37.398613, 51.222866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821911, 37.391960, 51.326241>,  <36.182735, 37.380871, 51.498531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821911, 37.391960, 51.326241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393498, -0.357216, -0.847087,
		-0.177348, -0.933610, 0.311319,
		-0.902057, 0.027726, -0.430725,
		35.551292, 37.400280, 51.197021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205273, 36.791054, 51.180817>,  <36.182735, 37.380871, 51.498531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205273, 36.791054, 51.180817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902138, 36.963680, 50.985088>,  <35.720257, 37.067257, 50.867649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902138, 36.963680, 50.985088>,  <36.205273, 36.791054, 51.180817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902138, 36.963680, 50.985088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411654, -0.265585, -0.871783,
		-0.506190, -0.862099, 0.023613,
		-0.757834, 0.431567, -0.489323,
		35.674786, 37.093151, 50.838291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906017, 36.235611, 50.682068>,  <36.205273, 36.791054, 51.180817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906017, 36.235611, 50.682068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778767, 36.598431, 50.571754>,  <35.702415, 36.816124, 50.505566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778767, 36.598431, 50.571754>,  <35.906017, 36.235611, 50.682068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778767, 36.598431, 50.571754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372746, -0.147802, -0.916087,
		-0.871698, -0.394227, -0.291080,
		-0.318124, 0.907050, -0.275785,
		35.683331, 36.870544, 50.489017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502277, 36.127220, 50.014450>,  <35.906017, 36.235611, 50.682068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502277, 36.127220, 50.014450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563396, 36.522518, 50.012836>,  <35.600067, 36.759697, 50.011868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563396, 36.522518, 50.012836>,  <35.502277, 36.127220, 50.014450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563396, 36.522518, 50.012836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294147, -0.049376, -0.954484,
		-0.943467, 0.144659, -0.298235,
		0.152800, 0.988249, -0.004033,
		35.609238, 36.818993, 50.011627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080868, 36.508736, 49.374569>,  <35.502277, 36.127220, 50.014450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080868, 36.508736, 49.374569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.407425, 36.713905, 49.480705>,  <35.603359, 36.837009, 49.544388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.407425, 36.713905, 49.480705>,  <35.080868, 36.508736, 49.374569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407425, 36.713905, 49.480705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298700, 0.018176, -0.954174,
		-0.494244, 0.858240, -0.138372,
		0.816395, 0.512927, 0.265340,
		35.652344, 36.867783, 49.560307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007347, 37.020241, 48.986294>,  <35.080868, 36.508736, 49.374569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007347, 37.020241, 48.986294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.393227, 37.005886, 49.090656>,  <35.624752, 36.997272, 49.153275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.393227, 37.005886, 49.090656>,  <35.007347, 37.020241, 48.986294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393227, 37.005886, 49.090656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263057, 0.083271, -0.961180,
		0.012766, 0.995881, 0.089771,
		0.964696, -0.035885, 0.260910,
		35.682636, 36.995121, 49.168930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337238, 37.613667, 48.638306>,  <35.007347, 37.020241, 48.986294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337238, 37.613667, 48.638306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650013, 37.378876, 48.722237>,  <35.837677, 37.238003, 48.772594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.650013, 37.378876, 48.722237>,  <35.337238, 37.613667, 48.638306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650013, 37.378876, 48.722237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233323, -0.036542, -0.971713,
		0.578039, 0.808780, 0.108381,
		0.781941, -0.586975, 0.209829,
		35.884594, 37.202782, 48.785187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178665, 38.237629, 49.087944>,  <35.337238, 37.613667, 48.638306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178665, 38.237629, 49.087944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.126957, 38.558834, 48.855236>,  <35.095932, 38.751556, 48.715611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.126957, 38.558834, 48.855236>,  <35.178665, 38.237629, 49.087944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126957, 38.558834, 48.855236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596926, 0.405465, 0.692299,
		0.791814, 0.436767, 0.426926,
		-0.129270, 0.803015, -0.581770,
		35.088177, 38.799740, 48.680706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970146, 38.730991, 49.540279>,  <35.178665, 38.237629, 49.087944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970146, 38.730991, 49.540279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.852257, 38.864040, 49.181950>,  <34.781521, 38.943871, 48.966953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.852257, 38.864040, 49.181950>,  <34.970146, 38.730991, 49.540279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852257, 38.864040, 49.181950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822025, 0.389761, 0.415165,
		0.487249, 0.858749, 0.158549,
		-0.294726, 0.332620, -0.895824,
		34.763840, 38.963825, 48.913204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644974, 39.436317, 49.578880>,  <34.970146, 38.730991, 49.540279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644974, 39.436317, 49.578880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.487068, 39.244419, 49.265446>,  <34.392326, 39.129280, 49.077385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.487068, 39.244419, 49.265446>,  <34.644974, 39.436317, 49.578880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487068, 39.244419, 49.265446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879780, 0.443229, 0.171858,
		0.264860, 0.757226, -0.597040,
		-0.394761, -0.479746, -0.783587,
		34.368641, 39.100494, 49.030369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202812, 39.976379, 49.195557>,  <34.644974, 39.436317, 49.578880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202812, 39.976379, 49.195557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099792, 39.594814, 49.133945>,  <34.037979, 39.365875, 49.096977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099792, 39.594814, 49.133945>,  <34.202812, 39.976379, 49.195557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099792, 39.594814, 49.133945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920462, 0.193711, 0.339450,
		-0.293967, 0.229205, -0.927927,
		-0.257553, -0.953909, -0.154030,
		34.022526, 39.308643, 49.087738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541180, 40.073032, 48.975601>,  <34.202812, 39.976379, 49.195557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541180, 40.073032, 48.975601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.569103, 39.696217, 49.106869>,  <33.585857, 39.470127, 49.185631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.569103, 39.696217, 49.106869>,  <33.541180, 40.073032, 48.975601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569103, 39.696217, 49.106869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898577, 0.083483, 0.430801,
		-0.433227, -0.324959, -0.840664,
		0.069811, -0.942036, 0.328168,
		33.590046, 39.413605, 49.205318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916168, 39.955173, 48.972408>,  <33.541180, 40.073032, 48.975601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916168, 39.955173, 48.972408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.064507, 39.693531, 49.236111>,  <33.153511, 39.536545, 49.394333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.064507, 39.693531, 49.236111>,  <32.916168, 39.955173, 48.972408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064507, 39.693531, 49.236111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893880, -0.058868, 0.444424,
		-0.251892, -0.754108, -0.606525,
		0.370849, -0.654107, 0.659254,
		33.175762, 39.497299, 49.433887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298641, 39.380287, 49.109612>,  <32.916168, 39.955173, 48.972408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298641, 39.380287, 49.109612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.576618, 39.340790, 49.394512>,  <32.743404, 39.317093, 49.565453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.576618, 39.340790, 49.394512>,  <32.298641, 39.380287, 49.109612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576618, 39.340790, 49.394512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706306, -0.279502, 0.650393,
		0.134855, -0.955054, -0.263980,
		0.694944, -0.098742, 0.712253,
		32.785103, 39.311169, 49.608189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976963, 38.892235, 49.459957>,  <32.298641, 39.380287, 49.109612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976963, 38.892235, 49.459957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.262356, 39.045692, 49.694481>,  <32.433590, 39.137768, 49.835197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.262356, 39.045692, 49.694481>,  <31.976963, 38.892235, 49.459957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262356, 39.045692, 49.694481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571130, -0.166315, 0.803834,
		0.405899, -0.908381, 0.100448,
		0.713482, 0.383644, 0.586311,
		32.476402, 39.160786, 49.870373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141403, 38.409405, 49.994091>,  <31.976963, 38.892235, 49.459957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141403, 38.409405, 49.994091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249626, 38.762405, 50.147968>,  <32.314560, 38.974205, 50.240295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249626, 38.762405, 50.147968>,  <32.141403, 38.409405, 49.994091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249626, 38.762405, 50.147968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450516, -0.237074, 0.860716,
		0.850784, -0.406183, 0.333439,
		0.270558, 0.882503, 0.384691,
		32.330795, 39.027157, 50.263374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417553, 38.401939, 50.645897>,  <32.141403, 38.409405, 49.994091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417553, 38.401939, 50.645897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.287846, 38.778240, 50.685570>,  <32.210022, 39.004021, 50.709373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.287846, 38.778240, 50.685570>,  <32.417553, 38.401939, 50.645897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287846, 38.778240, 50.685570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435184, -0.241445, 0.867364,
		0.839920, 0.238098, 0.487693,
		-0.324269, 0.940752, 0.099178,
		32.190563, 39.060467, 50.715324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595387, 38.713478, 51.278461>,  <32.417553, 38.401939, 50.645897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595387, 38.713478, 51.278461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.267902, 38.908993, 51.157928>,  <32.071411, 39.026302, 51.085609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.267902, 38.908993, 51.157928>,  <32.595387, 38.713478, 51.278461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267902, 38.908993, 51.157928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461105, -0.246912, 0.852301,
		0.342196, 0.836731, 0.427533,
		-0.818709, 0.488791, -0.301328,
		32.022289, 39.055630, 51.067532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223564, 38.778240, 51.910419>,  <32.595387, 38.713478, 51.278461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223564, 38.778240, 51.910419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.973209, 38.966808, 51.661892>,  <31.822996, 39.079948, 51.512775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.973209, 38.966808, 51.661892>,  <32.223564, 38.778240, 51.910419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973209, 38.966808, 51.661892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690734, 0.034863, 0.722268,
		0.362151, 0.881221, 0.303803,
		-0.625886, 0.471417, -0.621315,
		31.785444, 39.108234, 51.475498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939787, 39.351498, 52.169659>,  <32.223564, 38.778240, 51.910419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939787, 39.351498, 52.169659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.659666, 39.279968, 51.893223>,  <31.491594, 39.237053, 51.727364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.659666, 39.279968, 51.893223>,  <31.939787, 39.351498, 52.169659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659666, 39.279968, 51.893223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709137, 0.063253, 0.702228,
		-0.081860, 0.981846, -0.171105,
		-0.700303, -0.178821, -0.691085,
		31.449575, 39.226322, 51.685898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399406, 39.865223, 52.284195>,  <31.939787, 39.351498, 52.169659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399406, 39.865223, 52.284195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.243599, 39.552742, 52.089058>,  <31.150114, 39.365253, 51.971973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.243599, 39.552742, 52.089058>,  <31.399406, 39.865223, 52.284195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243599, 39.552742, 52.089058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806254, 0.033167, 0.590640,
		-0.445231, 0.623391, -0.642770,
		-0.389519, -0.781206, -0.487844,
		31.126743, 39.318378, 51.942703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815626, 40.187248, 52.099960>,  <31.399406, 39.865223, 52.284195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815626, 40.187248, 52.099960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.794054, 39.788010, 52.111969>,  <30.781111, 39.548466, 52.119175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.794054, 39.788010, 52.111969>,  <30.815626, 40.187248, 52.099960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794054, 39.788010, 52.111969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640862, 0.057655, 0.765488,
		-0.765759, 0.022039, -0.642750,
		-0.053929, -0.998094, 0.030026,
		30.777876, 39.488583, 52.120975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085728, 40.021900, 52.217125>,  <30.815626, 40.187248, 52.099960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085728, 40.021900, 52.217125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.309017, 39.709278, 52.328526>,  <30.442991, 39.521706, 52.395367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.309017, 39.709278, 52.328526>,  <30.085728, 40.021900, 52.217125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309017, 39.709278, 52.328526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544777, -0.092086, 0.833509,
		-0.625784, -0.617007, -0.477176,
		0.558222, -0.781551, 0.278506,
		30.476484, 39.474812, 52.412079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711485, 39.709991, 52.604942>,  <30.085728, 40.021900, 52.217125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711485, 39.709991, 52.604942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.032206, 39.487629, 52.692650>,  <30.224638, 39.354210, 52.745274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.032206, 39.487629, 52.692650>,  <29.711485, 39.709991, 52.604942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032206, 39.487629, 52.692650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427658, -0.277485, 0.860297,
		-0.417405, -0.783558, -0.460227,
		0.801799, -0.555912, 0.219271,
		30.272745, 39.320854, 52.758430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453196, 38.969299, 52.833694>,  <29.711485, 39.709991, 52.604942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453196, 38.969299, 52.833694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.808935, 39.058876, 52.993149>,  <30.022379, 39.112621, 53.088821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.808935, 39.058876, 52.993149>,  <29.453196, 38.969299, 52.833694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808935, 39.058876, 52.993149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324367, -0.305467, 0.895252,
		0.322256, -0.925494, -0.199026,
		0.889347, 0.223942, 0.398638,
		30.075739, 39.126057, 53.112740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424309, 38.533054, 53.342274>,  <29.453196, 38.969299, 52.833694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424309, 38.533054, 53.342274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.758875, 38.731354, 53.435776>,  <29.959614, 38.850334, 53.491879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.758875, 38.731354, 53.435776>,  <29.424309, 38.533054, 53.342274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758875, 38.731354, 53.435776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161451, -0.184717, 0.969440,
		0.523778, -0.848594, -0.074461,
		0.836415, 0.495749, 0.233757,
		30.009800, 38.880077, 53.505901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919641, 38.110130, 53.860996>,  <29.424309, 38.533054, 53.342274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919641, 38.110130, 53.860996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.972918, 38.506489, 53.868824>,  <30.004883, 38.744305, 53.873520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.972918, 38.506489, 53.868824>,  <29.919641, 38.110130, 53.860996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972918, 38.506489, 53.868824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076834, -0.009363, 0.997000,
		0.988108, -0.134293, 0.074887,
		0.133189, 0.990897, 0.019570,
		30.012875, 38.803757, 53.874695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199245, 38.129711, 54.513718>,  <29.919641, 38.110130, 53.860996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199245, 38.129711, 54.513718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073034, 38.495243, 54.411457>,  <29.997309, 38.714561, 54.350101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073034, 38.495243, 54.411457>,  <30.199245, 38.129711, 54.513718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073034, 38.495243, 54.411457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170985, 0.210248, 0.962580,
		0.933385, 0.347431, 0.089912,
		-0.315526, 0.913831, -0.255648,
		29.978376, 38.769394, 54.334763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555471, 38.593601, 55.067368>,  <30.199245, 38.129711, 54.513718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555471, 38.593601, 55.067368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.238518, 38.785519, 54.916676>,  <30.048346, 38.900669, 54.826260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.238518, 38.785519, 54.916676>,  <30.555471, 38.593601, 55.067368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238518, 38.785519, 54.916676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348516, 0.150792, 0.925094,
		0.500662, 0.864326, 0.047731,
		-0.792385, 0.479795, -0.376728,
		30.000803, 38.929459, 54.803658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592064, 39.127640, 55.494785>,  <30.555471, 38.593601, 55.067368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592064, 39.127640, 55.494785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.229013, 39.128975, 55.326878>,  <30.011183, 39.129776, 55.226131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.229013, 39.128975, 55.326878>,  <30.592064, 39.127640, 55.494785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229013, 39.128975, 55.326878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407827, 0.229927, 0.883635,
		0.099465, 0.973202, -0.207326,
		-0.907625, 0.003337, -0.419768,
		29.956726, 39.129974, 55.200947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217987, 39.705906, 55.718544>,  <30.592064, 39.127640, 55.494785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217987, 39.705906, 55.718544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.917927, 39.465290, 55.608688>,  <29.737890, 39.320919, 55.542774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.917927, 39.465290, 55.608688>,  <30.217987, 39.705906, 55.718544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.917927, 39.465290, 55.608688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374966, 0.044848, 0.925953,
		-0.544679, 0.797584, -0.259200,
		-0.750150, -0.601539, -0.274639,
		29.692883, 39.284828, 55.526299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752165, 39.877705, 56.181610>,  <30.217987, 39.705906, 55.718544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752165, 39.877705, 56.181610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.589392, 39.556065, 56.008255>,  <29.491728, 39.363079, 55.904243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.589392, 39.556065, 56.008255>,  <29.752165, 39.877705, 56.181610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589392, 39.556065, 56.008255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469116, -0.223132, 0.854484,
		-0.783796, 0.551026, -0.286418,
		-0.406933, -0.804104, -0.433385,
		29.467312, 39.314835, 55.878239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103809, 39.921993, 56.177601>,  <29.752165, 39.877705, 56.181610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103809, 39.921993, 56.177601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.159018, 39.526836, 56.149258>,  <29.192142, 39.289742, 56.132252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.159018, 39.526836, 56.149258>,  <29.103809, 39.921993, 56.177601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159018, 39.526836, 56.149258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590029, -0.139473, 0.795244,
		-0.795497, -0.067955, -0.602135,
		0.138023, -0.987891, -0.070855,
		29.200424, 39.230469, 56.128002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426363, 39.631683, 56.355976>,  <29.103809, 39.921993, 56.177601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426363, 39.631683, 56.355976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.695765, 39.340946, 56.409771>,  <28.857405, 39.166504, 56.442047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.695765, 39.340946, 56.409771>,  <28.426363, 39.631683, 56.355976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695765, 39.340946, 56.409771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510206, -0.325463, 0.796093,
		-0.534867, -0.604788, -0.590042,
		0.673504, -0.726847, 0.134487,
		28.897816, 39.122890, 56.450115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090134, 39.051006, 56.540295>,  <28.426363, 39.631683, 56.355976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090134, 39.051006, 56.540295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.458288, 39.002666, 56.689041>,  <28.679180, 38.973663, 56.778290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.458288, 39.002666, 56.689041>,  <28.090134, 39.051006, 56.540295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.458288, 39.002666, 56.689041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380594, -0.058845, 0.922868,
		-0.089638, -0.990926, -0.100151,
		0.920387, -0.120842, 0.371866,
		28.734404, 38.966412, 56.800602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118656, 38.418743, 56.909748>,  <28.090134, 39.051006, 56.540295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118656, 38.418743, 56.909748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.406986, 38.651051, 57.061073>,  <28.579985, 38.790436, 57.151867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.406986, 38.651051, 57.061073>,  <28.118656, 38.418743, 56.909748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.406986, 38.651051, 57.061073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410527, -0.082035, 0.908151,
		0.558462, -0.809923, 0.179289,
		0.720824, 0.580771, 0.378309,
		28.623234, 38.825283, 57.174564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324984, 38.103626, 57.581215>,  <28.118656, 38.418743, 56.909748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324984, 38.103626, 57.581215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.475634, 38.474136, 57.575970>,  <28.566025, 38.696442, 57.572823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.475634, 38.474136, 57.575970>,  <28.324984, 38.103626, 57.581215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475634, 38.474136, 57.575970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404917, 0.177342, 0.896991,
		0.833184, -0.332520, 0.441855,
		0.376626, 0.926273, -0.013115,
		28.588621, 38.752018, 57.572037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532082, 38.101318, 58.250000>,  <28.324984, 38.103626, 57.581215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532082, 38.101318, 58.250000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.526699, 38.484131, 58.134129>,  <28.523470, 38.713818, 58.064606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.526699, 38.484131, 58.134129>,  <28.532082, 38.101318, 58.250000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526699, 38.484131, 58.134129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372717, 0.264022, 0.889592,
		0.927848, 0.119938, 0.353148,
		-0.013456, 0.957030, -0.289675,
		28.522663, 38.771240, 58.047226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807348, 38.516960, 58.790993>,  <28.532082, 38.101318, 58.250000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807348, 38.516960, 58.790993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.617186, 38.790245, 58.569286>,  <28.503088, 38.954216, 58.436264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.617186, 38.790245, 58.569286>,  <28.807348, 38.516960, 58.790993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617186, 38.790245, 58.569286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618686, 0.188279, 0.762744,
		0.625472, 0.705531, 0.333183,
		-0.475409, 0.683211, -0.554265,
		28.474564, 38.995209, 58.403008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937925, 39.188694, 59.050457>,  <28.807348, 38.516960, 58.790993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937925, 39.188694, 59.050457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.603022, 39.253941, 58.841694>,  <28.402081, 39.293091, 58.716434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.603022, 39.253941, 58.841694>,  <28.937925, 39.188694, 59.050457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603022, 39.253941, 58.841694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387988, 0.495352, 0.777234,
		0.385313, 0.853240, -0.351448,
		-0.837257, 0.163121, -0.521912,
		28.351845, 39.302876, 58.685120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736708, 39.764252, 59.392738>,  <28.937925, 39.188694, 59.050457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736708, 39.764252, 59.392738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.423689, 39.575031, 59.230831>,  <28.235878, 39.461498, 59.133686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.423689, 39.575031, 59.230831>,  <28.736708, 39.764252, 59.392738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423689, 39.575031, 59.230831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540798, 0.194350, 0.818392,
		-0.308475, 0.859331, -0.407914,
		-0.782548, -0.473052, -0.404773,
		28.188925, 39.433117, 59.109398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142931, 40.245136, 59.566399>,  <28.736708, 39.764252, 59.392738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142931, 40.245136, 59.566399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.045105, 39.862591, 59.502445>,  <27.986410, 39.633064, 59.464073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.045105, 39.862591, 59.502445>,  <28.142931, 40.245136, 59.566399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045105, 39.862591, 59.502445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484379, -0.022340, 0.874573,
		-0.839980, 0.291332, -0.457777,
		-0.244565, -0.956361, -0.159880,
		27.971735, 39.575684, 59.454483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593723, 40.218273, 60.081036>,  <28.142931, 40.245136, 59.566399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593723, 40.218273, 60.081036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.628975, 39.836796, 59.966003>,  <27.650126, 39.607910, 59.896984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.628975, 39.836796, 59.966003>,  <27.593723, 40.218273, 60.081036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628975, 39.836796, 59.966003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716761, -0.261198, 0.646552,
		-0.691728, 0.149146, -0.706589,
		0.088129, -0.953693, -0.287580,
		27.655415, 39.550690, 59.879730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928265, 39.939739, 60.244133>,  <27.593723, 40.218273, 60.081036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928265, 39.939739, 60.244133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.161680, 39.615231, 60.229637>,  <27.301729, 39.420525, 60.220940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.161680, 39.615231, 60.229637>,  <26.928265, 39.939739, 60.244133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161680, 39.615231, 60.229637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510751, -0.401337, 0.760304,
		-0.631359, -0.425160, -0.648556,
		0.583540, -0.811275, -0.036237,
		27.336742, 39.371849, 60.218765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.440176, 39.374180, 60.089291>,  <26.928265, 39.939739, 60.244133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.440176, 39.374180, 60.089291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.766882, 39.254051, 60.286350>,  <26.962906, 39.181976, 60.404587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.766882, 39.254051, 60.286350>,  <26.440176, 39.374180, 60.089291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766882, 39.254051, 60.286350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576113, -0.377897, 0.724767,
		-0.031487, -0.875788, -0.481669,
		0.816763, -0.300317, 0.492654,
		27.011911, 39.163956, 60.434147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.514603, 38.565693, 60.141220>,  <26.440176, 39.374180, 60.089291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.514603, 38.565693, 60.141220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.678457, 38.776314, 60.439198>,  <26.776770, 38.902687, 60.617985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.678457, 38.776314, 60.439198>,  <26.514603, 38.565693, 60.141220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678457, 38.776314, 60.439198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405784, -0.626189, 0.665753,
		0.817029, -0.575003, -0.042844,
		0.409638, 0.526553, 0.744942,
		26.801350, 38.934280, 60.662682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.114794, 38.021324, 59.870213>,  <26.514603, 38.565693, 60.141220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.114794, 38.021324, 59.870213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.861204, 37.716541, 59.817291>,  <25.709051, 37.533672, 59.785538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.861204, 37.716541, 59.817291>,  <26.114794, 38.021324, 59.870213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861204, 37.716541, 59.817291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211204, -0.006017, -0.977424,
		0.743955, -0.647604, 0.164742,
		-0.633974, -0.761953, -0.132300,
		25.671011, 37.487957, 59.777603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515373, 37.519428, 59.620060>,  <26.114794, 38.021324, 59.870213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515373, 37.519428, 59.620060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.138784, 37.473408, 59.493320>,  <25.912830, 37.445797, 59.417278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.138784, 37.473408, 59.493320>,  <26.515373, 37.519428, 59.620060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138784, 37.473408, 59.493320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323563, -0.044850, -0.945143,
		0.094527, -0.992347, 0.079451,
		-0.941473, -0.115049, -0.316847,
		25.856342, 37.438892, 59.398266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524677, 37.035568, 59.129837>,  <26.515373, 37.519428, 59.620060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524677, 37.035568, 59.129837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.170982, 37.200455, 59.042023>,  <25.958765, 37.299389, 58.989334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.170982, 37.200455, 59.042023>,  <26.524677, 37.035568, 59.129837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170982, 37.200455, 59.042023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208395, -0.072428, -0.975359,
		-0.417963, -0.908201, -0.021860,
		-0.884239, 0.412219, -0.219536,
		25.905710, 37.324120, 58.976162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133041, 36.646420, 58.627571>,  <26.524677, 37.035568, 59.129837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133041, 36.646420, 58.627571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.968159, 37.004086, 58.557659>,  <25.869228, 37.218685, 58.515713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.968159, 37.004086, 58.557659>,  <26.133041, 36.646420, 58.627571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968159, 37.004086, 58.557659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093400, -0.149349, -0.984363,
		-0.906290, -0.422086, -0.021953,
		-0.412207, 0.894169, -0.174776,
		25.844496, 37.272335, 58.505226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.583088, 36.558510, 58.013393>,  <26.133041, 36.646420, 58.627571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.583088, 36.558510, 58.013393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.700249, 36.940956, 58.016338>,  <25.770546, 37.170425, 58.018105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.700249, 36.940956, 58.016338>,  <25.583088, 36.558510, 58.013393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.700249, 36.940956, 58.016338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134965, -0.033717, -0.990277,
		-0.946569, 0.291048, -0.138918,
		0.292902, 0.956114, 0.007366,
		25.788118, 37.227791, 58.018547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515102, 36.707607, 57.403706>,  <25.583088, 36.558510, 58.013393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515102, 36.707607, 57.403706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.720921, 37.033741, 57.509895>,  <25.844412, 37.229420, 57.573608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.720921, 37.033741, 57.509895>,  <25.515102, 36.707607, 57.403706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720921, 37.033741, 57.509895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354199, 0.079851, -0.931755,
		-0.780887, 0.573463, -0.247702,
		0.514547, 0.815331, 0.265474,
		25.875284, 37.278339, 57.589539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.296011, 37.282761, 57.028149>,  <25.515102, 36.707607, 57.403706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.296011, 37.282761, 57.028149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.649948, 37.405270, 57.168575>,  <25.862310, 37.478775, 57.252831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.649948, 37.405270, 57.168575>,  <25.296011, 37.282761, 57.028149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649948, 37.405270, 57.168575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200488, 0.429882, -0.880344,
		-0.420546, 0.849351, 0.318973,
		0.884842, 0.306275, 0.351070,
		25.915401, 37.497150, 57.273895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.474802, 37.943432, 56.718639>,  <25.296011, 37.282761, 57.028149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.474802, 37.943432, 56.718639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.831984, 37.799995, 56.827480>,  <26.046293, 37.713932, 56.892784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.831984, 37.799995, 56.827480>,  <25.474802, 37.943432, 56.718639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831984, 37.799995, 56.827480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381301, 0.281272, -0.880622,
		0.239250, 0.890110, 0.387895,
		0.892955, -0.358594, 0.272106,
		26.099871, 37.692417, 56.909111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.939054, 38.523521, 56.577496>,  <25.474802, 37.943432, 56.718639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.939054, 38.523521, 56.577496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.160049, 38.191162, 56.603939>,  <26.292646, 37.991749, 56.619804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.160049, 38.191162, 56.603939>,  <25.939054, 38.523521, 56.577496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160049, 38.191162, 56.603939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492474, 0.261410, -0.830141,
		0.672479, 0.491199, 0.553620,
		0.552487, -0.830896, 0.066110,
		26.325796, 37.941895, 56.623772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599348, 38.671894, 56.411743>,  <25.939054, 38.523521, 56.577496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599348, 38.671894, 56.411743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.616419, 38.276600, 56.353008>,  <26.626661, 38.039421, 56.317768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.616419, 38.276600, 56.353008>,  <26.599348, 38.671894, 56.411743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616419, 38.276600, 56.353008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460912, 0.149872, -0.874699,
		0.886419, -0.030348, 0.461888,
		0.042679, -0.988240, -0.146837,
		26.629223, 37.980129, 56.308956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274864, 38.604752, 56.133560>,  <26.599348, 38.671894, 56.411743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274864, 38.604752, 56.133560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.095175, 38.252762, 56.071789>,  <26.987362, 38.041569, 56.034725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.095175, 38.252762, 56.071789>,  <27.274864, 38.604752, 56.133560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.095175, 38.252762, 56.071789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429231, -0.060984, -0.901133,
		0.783555, -0.471094, 0.405107,
		-0.449224, -0.879973, -0.154424,
		26.960407, 37.988770, 56.025463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776487, 38.158310, 55.804810>,  <27.274864, 38.604752, 56.133560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776487, 38.158310, 55.804810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.436535, 37.955410, 55.747688>,  <27.232563, 37.833668, 55.713413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.436535, 37.955410, 55.747688>,  <27.776487, 38.158310, 55.804810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436535, 37.955410, 55.747688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296440, -0.236150, -0.925395,
		0.435687, -0.828810, 0.351070,
		-0.849883, -0.507254, -0.142805,
		27.181570, 37.803234, 55.704845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983717, 37.543335, 55.590458>,  <27.776487, 38.158310, 55.804810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983717, 37.543335, 55.590458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.616966, 37.602062, 55.441982>,  <27.396915, 37.637299, 55.352898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.616966, 37.602062, 55.441982>,  <27.983717, 37.543335, 55.590458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616966, 37.602062, 55.441982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356963, -0.114593, -0.927063,
		-0.178648, -0.982503, 0.052658,
		-0.916876, 0.146821, -0.371189,
		27.341904, 37.646107, 55.330627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837723, 36.976536, 55.109791>,  <27.983717, 37.543335, 55.590458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837723, 36.976536, 55.109791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.586300, 37.269302, 55.004559>,  <27.435446, 37.444962, 54.941418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.586300, 37.269302, 55.004559>,  <27.837723, 36.976536, 55.109791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586300, 37.269302, 55.004559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156644, -0.212191, -0.964592,
		-0.761824, -0.647513, 0.018725,
		-0.628559, 0.731916, -0.263081,
		27.397732, 37.488876, 54.925632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450535, 36.696556, 54.518497>,  <27.837723, 36.976536, 55.109791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450535, 36.696556, 54.518497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.393162, 37.091080, 54.485924>,  <27.358738, 37.327793, 54.466381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.393162, 37.091080, 54.485924>,  <27.450535, 36.696556, 54.518497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393162, 37.091080, 54.485924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029787, -0.077944, -0.996513,
		-0.989212, -0.145356, -0.018200,
		-0.143431, 0.986304, -0.081433,
		27.350132, 37.386971, 54.461494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977247, 36.803715, 53.961555>,  <27.450535, 36.696556, 54.518497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977247, 36.803715, 53.961555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.188612, 37.140450, 54.005550>,  <27.315430, 37.342491, 54.031948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.188612, 37.140450, 54.005550>,  <26.977247, 36.803715, 53.961555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188612, 37.140450, 54.005550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179858, 0.015606, -0.983569,
		-0.829719, 0.539509, -0.143164,
		0.528410, 0.841835, 0.109984,
		27.347136, 37.393002, 54.038548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827759, 37.214634, 53.343330>,  <26.977247, 36.803715, 53.961555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827759, 37.214634, 53.343330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.143581, 37.422310, 53.474205>,  <27.333075, 37.546913, 53.552731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.143581, 37.422310, 53.474205>,  <26.827759, 37.214634, 53.343330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143581, 37.422310, 53.474205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367407, 0.027127, -0.929665,
		-0.491545, 0.854230, -0.169335,
		0.789554, 0.519187, 0.327184,
		27.380447, 37.578064, 53.572361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903362, 37.651760, 52.828167>,  <26.827759, 37.214634, 53.343330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903362, 37.651760, 52.828167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.250832, 37.659218, 53.026180>,  <27.459312, 37.663692, 53.144989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.250832, 37.659218, 53.026180>,  <26.903362, 37.651760, 52.828167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250832, 37.659218, 53.026180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494152, 0.037957, -0.868547,
		-0.034985, 0.999105, 0.023758,
		0.868672, 0.018646, 0.495037,
		27.511433, 37.664810, 53.174690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.299589, 38.255352, 52.533810>,  <26.903362, 37.651760, 52.828167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.299589, 38.255352, 52.533810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.527950, 37.965908, 52.688965>,  <27.664967, 37.792240, 52.782059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.527950, 37.965908, 52.688965>,  <27.299589, 38.255352, 52.533810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527950, 37.965908, 52.688965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679412, 0.151143, -0.718022,
		0.460941, 0.673457, 0.577917,
		0.570905, -0.723610, 0.387887,
		27.699223, 37.748825, 52.805332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965908, 38.583599, 52.365746>,  <27.299589, 38.255352, 52.533810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965908, 38.583599, 52.365746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.031155, 38.201645, 52.465019>,  <28.070303, 37.972473, 52.524582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.031155, 38.201645, 52.465019>,  <27.965908, 38.583599, 52.365746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031155, 38.201645, 52.465019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708051, -0.061879, -0.703445,
		0.687064, 0.290469, 0.666012,
		0.163117, -0.954882, 0.248182,
		28.080090, 37.915180, 52.539474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680248, 38.466503, 52.445515>,  <27.965908, 38.583599, 52.365746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680248, 38.466503, 52.445515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.536848, 38.100285, 52.372574>,  <28.450808, 37.880554, 52.328808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.536848, 38.100285, 52.372574>,  <28.680248, 38.466503, 52.445515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536848, 38.100285, 52.372574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694015, -0.130741, -0.707990,
		0.624356, -0.380373, 0.682273,
		-0.358501, -0.915545, -0.182356,
		28.429298, 37.825623, 52.317867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276279, 38.192230, 52.483421>,  <28.680248, 38.466503, 52.445515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276279, 38.192230, 52.483421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.028379, 37.952831, 52.280361>,  <28.879639, 37.809193, 52.158524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.028379, 37.952831, 52.280361>,  <29.276279, 38.192230, 52.483421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028379, 37.952831, 52.280361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752415, -0.269230, -0.601155,
		0.223115, -0.754530, 0.617174,
		-0.619751, -0.598497, -0.507651,
		28.842455, 37.773281, 52.128067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730581, 37.651566, 52.359802>,  <29.276279, 38.192230, 52.483421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730581, 37.651566, 52.359802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.425308, 37.626167, 52.102581>,  <29.242144, 37.610928, 51.948246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.425308, 37.626167, 52.102581>,  <29.730581, 37.651566, 52.359802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425308, 37.626167, 52.102581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635198, -0.256442, -0.728533,
		-0.118644, -0.964472, 0.236048,
		-0.763182, -0.063501, -0.643056,
		29.196354, 37.607117, 51.909664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.873495, 37.014904, 52.009571>,  <29.730581, 37.651566, 52.359802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.873495, 37.014904, 52.009571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.618999, 37.224960, 51.783501>,  <29.466303, 37.350994, 51.647858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.618999, 37.224960, 51.783501>,  <29.873495, 37.014904, 52.009571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618999, 37.224960, 51.783501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496303, -0.282271, -0.820979,
		-0.590665, -0.802838, -0.081038,
		-0.636238, 0.525143, -0.565178,
		29.428127, 37.382504, 51.613949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577951, 36.604610, 51.459255>,  <29.873495, 37.014904, 52.009571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577951, 36.604610, 51.459255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.552509, 36.978260, 51.318764>,  <29.537245, 37.202450, 51.234470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.552509, 36.978260, 51.318764>,  <29.577951, 36.604610, 51.459255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552509, 36.978260, 51.318764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490263, -0.277298, -0.826286,
		-0.869251, -0.224750, -0.440330,
		-0.063605, 0.934127, -0.351228,
		29.533428, 37.258499, 51.213394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576368, 36.481388, 50.780609>,  <29.577951, 36.604610, 51.459255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576368, 36.481388, 50.780609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.597261, 36.880398, 50.761749>,  <29.609798, 37.119804, 50.750435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.597261, 36.880398, 50.761749>,  <29.576368, 36.481388, 50.780609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597261, 36.880398, 50.761749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484949, -0.066611, -0.872002,
		-0.872981, 0.022684, -0.487226,
		0.052235, 0.997521, -0.047150,
		29.612932, 37.179653, 50.747604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336544, 36.703697, 50.162315>,  <29.576368, 36.481388, 50.780609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336544, 36.703697, 50.162315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.579544, 37.002163, 50.271255>,  <29.725344, 37.181244, 50.336620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.579544, 37.002163, 50.271255>,  <29.336544, 36.703697, 50.162315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579544, 37.002163, 50.271255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435762, -0.026396, -0.899675,
		-0.664119, 0.665235, -0.341187,
		0.607501, 0.746167, 0.272354,
		29.761795, 37.226013, 50.352962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267868, 37.208012, 49.677910>,  <29.336544, 36.703697, 50.162315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267868, 37.208012, 49.677910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.631365, 37.304714, 49.813992>,  <29.849464, 37.362736, 49.895641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.631365, 37.304714, 49.813992>,  <29.267868, 37.208012, 49.677910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631365, 37.304714, 49.813992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364811, -0.064183, -0.928867,
		-0.202723, 0.968212, -0.146521,
		0.908744, 0.241755, 0.340203,
		29.903988, 37.377239, 49.916054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503628, 37.722019, 49.205742>,  <29.267868, 37.208012, 49.677910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503628, 37.722019, 49.205742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.829683, 37.580086, 49.388889>,  <30.025316, 37.494926, 49.498779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.829683, 37.580086, 49.388889>,  <29.503628, 37.722019, 49.205742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829683, 37.580086, 49.388889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491260, 0.004622, -0.871001,
		0.306945, 0.934918, 0.178084,
		0.815137, -0.354834, 0.457869,
		30.074224, 37.473637, 49.526249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120237, 38.151550, 48.964474>,  <29.503628, 37.722019, 49.205742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120237, 38.151550, 48.964474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.258572, 37.802307, 49.101925>,  <30.341572, 37.592762, 49.184395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.258572, 37.802307, 49.101925>,  <30.120237, 38.151550, 48.964474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258572, 37.802307, 49.101925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546448, -0.110294, -0.830199,
		0.762753, 0.474887, 0.438965,
		0.345835, -0.873108, 0.343628,
		30.362322, 37.540375, 49.205013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835346, 38.125629, 48.771336>,  <30.120237, 38.151550, 48.964474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835346, 38.125629, 48.771336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.753399, 37.744190, 48.859592>,  <30.704231, 37.515327, 48.912544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.753399, 37.744190, 48.859592>,  <30.835346, 38.125629, 48.771336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753399, 37.744190, 48.859592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626558, -0.300947, -0.718926,
		0.751967, -0.009041, 0.659139,
		-0.204866, -0.953598, 0.220638,
		30.691938, 37.458111, 48.925785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441597, 37.722019, 48.751900>,  <30.835346, 38.125629, 48.771336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441597, 37.722019, 48.751900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.183777, 37.417740, 48.721191>,  <31.029085, 37.235172, 48.702766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.183777, 37.417740, 48.721191>,  <31.441597, 37.722019, 48.751900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183777, 37.417740, 48.721191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628967, -0.470472, -0.618916,
		0.434690, -0.447207, 0.781697,
		-0.644550, -0.760698, -0.076769,
		30.990412, 37.189529, 48.698162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804184, 37.106915, 48.729877>,  <31.441597, 37.722019, 48.751900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804184, 37.106915, 48.729877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.467274, 36.943726, 48.588947>,  <31.265127, 36.845814, 48.504387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.467274, 36.943726, 48.588947>,  <31.804184, 37.106915, 48.729877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467274, 36.943726, 48.588947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538958, -0.625324, -0.564353,
		0.009919, -0.665231, 0.746572,
		-0.842275, -0.407968, -0.352329,
		31.214592, 36.821335, 48.483250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956327, 36.422581, 48.777618>,  <31.804184, 37.106915, 48.729877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956327, 36.422581, 48.777618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.624617, 36.426743, 48.554123>,  <31.425591, 36.429237, 48.420025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.624617, 36.426743, 48.554123>,  <31.956327, 36.422581, 48.777618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624617, 36.426743, 48.554123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329210, -0.798829, -0.503481,
		-0.451575, -0.601468, 0.659026,
		-0.829277, 0.010402, -0.558741,
		31.375834, 36.429863, 48.386501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685640, 35.694305, 48.810822>,  <31.956327, 36.422581, 48.777618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685640, 35.694305, 48.810822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.538439, 35.880108, 48.488628>,  <31.450117, 35.991589, 48.295311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.538439, 35.880108, 48.488628>,  <31.685640, 35.694305, 48.810822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538439, 35.880108, 48.488628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247716, -0.785991, -0.566440,
		-0.896220, -0.407983, 0.174181,
		-0.368003, 0.464508, -0.805485,
		31.428038, 36.019459, 48.246983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264917, 35.187534, 48.546600>,  <31.685640, 35.694305, 48.810822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264917, 35.187534, 48.546600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.369411, 35.442230, 48.256409>,  <31.432108, 35.595047, 48.082294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.369411, 35.442230, 48.256409>,  <31.264917, 35.187534, 48.546600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369411, 35.442230, 48.256409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207687, -0.771051, -0.601953,
		-0.942668, 0.006578, -0.333667,
		0.261234, 0.636740, -0.725479,
		31.447781, 35.633251, 48.038765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959747, 34.850422, 47.940941>,  <31.264917, 35.187534, 48.546600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959747, 34.850422, 47.940941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.226038, 35.116184, 47.805073>,  <31.385813, 35.275642, 47.723553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.226038, 35.116184, 47.805073>,  <30.959747, 34.850422, 47.940941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226038, 35.116184, 47.805073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432804, -0.714615, -0.549551,
		-0.607854, 0.218843, -0.763296,
		0.665728, 0.664405, -0.339666,
		31.425756, 35.315506, 47.703175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026943, 34.696171, 47.149548>,  <30.959747, 34.850422, 47.940941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026943, 34.696171, 47.149548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.338909, 34.933567, 47.229050>,  <31.526089, 35.076004, 47.276752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.338909, 34.933567, 47.229050>,  <31.026943, 34.696171, 47.149548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338909, 34.933567, 47.229050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569511, -0.541219, -0.618659,
		-0.259599, 0.595693, -0.760104,
		0.779914, 0.593491, 0.198754,
		31.572884, 35.111614, 47.288677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411690, 34.874584, 46.466854>,  <31.026943, 34.696171, 47.149548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411690, 34.874584, 46.466854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.663328, 34.886326, 46.777561>,  <31.814312, 34.893372, 46.963985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.663328, 34.886326, 46.777561>,  <31.411690, 34.874584, 46.466854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663328, 34.886326, 46.777561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628478, -0.607265, -0.486050,
		0.457441, 0.793957, -0.400475,
		0.629097, 0.029350, 0.776772,
		31.852057, 34.895130, 47.010593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039761, 34.991005, 46.219078>,  <31.411690, 34.874584, 46.466854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039761, 34.991005, 46.219078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.149864, 34.850681, 46.577110>,  <32.215927, 34.766487, 46.791927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.149864, 34.850681, 46.577110>,  <32.039761, 34.991005, 46.219078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149864, 34.850681, 46.577110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779462, -0.463545, -0.421385,
		0.562735, 0.813670, 0.145846,
		0.275262, -0.350809, 0.895078,
		32.232441, 34.745438, 46.845634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741730, 35.106720, 46.266552>,  <32.039761, 34.991005, 46.219078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741730, 35.106720, 46.266552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.658611, 34.797894, 46.506794>,  <32.608738, 34.612598, 46.650940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.658611, 34.797894, 46.506794>,  <32.741730, 35.106720, 46.266552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658611, 34.797894, 46.506794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723943, -0.534308, -0.436372,
		0.657818, 0.344126, 0.669964,
		-0.207800, -0.772070, 0.600606,
		32.596272, 34.566273, 46.686977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327271, 34.843773, 46.717953>,  <32.741730, 35.106720, 46.266552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327271, 34.843773, 46.717953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.069069, 34.547852, 46.642036>,  <32.914146, 34.370300, 46.596489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.069069, 34.547852, 46.642036>,  <33.327271, 34.843773, 46.717953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069069, 34.547852, 46.642036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726711, -0.518481, -0.450631,
		0.234974, -0.428806, 0.872303,
		-0.645506, -0.739799, -0.189789,
		32.875416, 34.325912, 46.585098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551273, 34.357494, 47.083134>,  <33.327271, 34.843773, 46.717953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551273, 34.357494, 47.083134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.358479, 34.235687, 46.754509>,  <33.242802, 34.162605, 46.557335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.358479, 34.235687, 46.754509>,  <33.551273, 34.357494, 47.083134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358479, 34.235687, 46.754509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823394, -0.477954, -0.305911,
		-0.299512, -0.823912, 0.481105,
		-0.481990, -0.304515, -0.821557,
		33.213882, 34.144333, 46.508041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520836, 33.564976, 47.118507>,  <33.551273, 34.357494, 47.083134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520836, 33.564976, 47.118507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.508240, 33.705036, 46.744041>,  <33.500683, 33.789070, 46.519363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.508240, 33.705036, 46.744041>,  <33.520836, 33.564976, 47.118507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508240, 33.705036, 46.744041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830387, -0.512139, -0.219481,
		-0.556297, -0.784289, -0.274633,
		-0.031486, 0.350148, -0.936165,
		33.498795, 33.810081, 46.463192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793411, 33.042301, 46.570198>,  <33.520836, 33.564976, 47.118507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793411, 33.042301, 46.570198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.818172, 33.408512, 46.411213>,  <33.833031, 33.628239, 46.315823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.818172, 33.408512, 46.411213>,  <33.793411, 33.042301, 46.570198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818172, 33.408512, 46.411213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900861, -0.222690, -0.372638,
		-0.429671, -0.334992, -0.838548,
		0.061905, 0.915527, -0.397465,
		33.836742, 33.683170, 46.291973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014992, 33.021000, 45.895317>,  <33.793411, 33.042301, 46.570198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014992, 33.021000, 45.895317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.132256, 33.377316, 46.034203>,  <34.202614, 33.591103, 46.117535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.132256, 33.377316, 46.034203>,  <34.014992, 33.021000, 45.895317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132256, 33.377316, 46.034203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938422, -0.198665, -0.282659,
		-0.182809, 0.408696, -0.894175,
		0.293163, 0.890786, 0.347212,
		34.220203, 33.644550, 46.138367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545559, 33.297733, 45.478153>,  <34.014992, 33.021000, 45.895317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545559, 33.297733, 45.478153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.627811, 33.494465, 45.816578>,  <34.677162, 33.612503, 46.019634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.627811, 33.494465, 45.816578>,  <34.545559, 33.297733, 45.478153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627811, 33.494465, 45.816578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965496, -0.243116, -0.093337,
		0.159786, 0.836064, -0.524848,
		0.205634, 0.491824, 0.846063,
		34.689503, 33.642014, 46.070396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224079, 33.601086, 45.374271>,  <34.545559, 33.297733, 45.478153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224079, 33.601086, 45.374271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139889, 33.545773, 45.761379>,  <35.089375, 33.512585, 45.993645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139889, 33.545773, 45.761379>,  <35.224079, 33.601086, 45.374271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139889, 33.545773, 45.761379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963129, -0.199025, 0.181030,
		0.167577, 0.970189, 0.175072,
		-0.210477, -0.138281, 0.967769,
		35.076744, 33.504288, 46.051708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826710, 33.933258, 45.780598>,  <35.224079, 33.601086, 45.374271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826710, 33.933258, 45.780598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.660976, 33.703568, 46.063042>,  <35.561535, 33.565754, 46.232506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.660976, 33.703568, 46.063042>,  <35.826710, 33.933258, 45.780598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660976, 33.703568, 46.063042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901595, -0.152993, 0.404622,
		-0.124317, 0.804271, 0.581114,
		-0.414333, -0.574231, 0.706107,
		35.536678, 33.531300, 46.274876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027882, 34.234497, 46.375015>,  <35.826710, 33.933258, 45.780598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027882, 34.234497, 46.375015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.950356, 33.859943, 46.492054>,  <35.903839, 33.635212, 46.562279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.950356, 33.859943, 46.492054>,  <36.027882, 34.234497, 46.375015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950356, 33.859943, 46.492054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844819, -0.007690, 0.534996,
		-0.498713, 0.350888, 0.792568,
		-0.193818, -0.936386, 0.292602,
		35.892212, 33.579029, 46.579834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120121, 34.149635, 47.102028>,  <36.027882, 34.234497, 46.375015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120121, 34.149635, 47.102028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.177094, 33.790710, 46.934914>,  <36.211277, 33.575356, 46.834644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.177094, 33.790710, 46.934914>,  <36.120121, 34.149635, 47.102028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177094, 33.790710, 46.934914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759210, -0.171772, 0.627769,
		-0.635069, -0.406600, 0.656783,
		0.142434, -0.897313, -0.417783,
		36.219822, 33.521515, 46.809578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172035, 33.690018, 47.628773>,  <36.120121, 34.149635, 47.102028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172035, 33.690018, 47.628773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.356007, 33.498070, 47.329926>,  <36.466389, 33.382900, 47.150616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.356007, 33.498070, 47.329926>,  <36.172035, 33.690018, 47.628773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356007, 33.498070, 47.329926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598231, -0.454326, 0.660082,
		-0.656192, -0.750540, 0.078118,
		0.459927, -0.479873, -0.747121,
		36.493984, 33.354107, 47.105789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372520, 33.064835, 47.880417>,  <36.172035, 33.690018, 47.628773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372520, 33.064835, 47.880417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.615372, 33.083214, 47.563107>,  <36.761082, 33.094242, 47.372719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.615372, 33.083214, 47.563107>,  <36.372520, 33.064835, 47.880417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615372, 33.083214, 47.563107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757977, -0.333108, 0.560812,
		-0.238476, -0.941768, -0.237069,
		0.607124, 0.045953, -0.793277,
		36.797508, 33.097000, 47.325123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897163, 32.672447, 48.151283>,  <36.372520, 33.064835, 47.880417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897163, 32.672447, 48.151283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.056095, 32.842976, 47.826229>,  <37.151455, 32.945293, 47.631195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.056095, 32.842976, 47.826229>,  <36.897163, 32.672447, 48.151283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056095, 32.842976, 47.826229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915448, -0.122457, 0.383354,
		0.063917, -0.896247, -0.438926,
		0.397329, 0.426317, -0.812640,
		37.175293, 32.970871, 47.582436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470280, 32.223671, 47.841503>,  <36.897163, 32.672447, 48.151283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470280, 32.223671, 47.841503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.536541, 32.606190, 47.745117>,  <37.576298, 32.835701, 47.687286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.536541, 32.606190, 47.745117>,  <37.470280, 32.223671, 47.841503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536541, 32.606190, 47.745117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873037, -0.028562, 0.486816,
		0.458657, -0.291010, -0.839611,
		0.165649, 0.956294, -0.240962,
		37.586235, 32.893078, 47.672829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153606, 32.196682, 47.588676>,  <37.470280, 32.223671, 47.841503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153606, 32.196682, 47.588676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089886, 32.579544, 47.685398>,  <38.051651, 32.809261, 47.743431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.089886, 32.579544, 47.685398>,  <38.153606, 32.196682, 47.588676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089886, 32.579544, 47.685398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913266, 0.049860, 0.404300,
		0.374923, 0.285242, -0.882083,
		-0.159304, 0.957158, 0.241808,
		38.042095, 32.866692, 47.757942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787113, 32.504158, 47.403309>,  <38.153606, 32.196682, 47.588676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787113, 32.504158, 47.403309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.609451, 32.772957, 47.640339>,  <38.502853, 32.934235, 47.782555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.609451, 32.772957, 47.640339>,  <38.787113, 32.504158, 47.403309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609451, 32.772957, 47.640339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854368, 0.118529, 0.505971,
		0.269774, 0.731006, -0.626779,
		-0.444160, 0.671997, 0.592572,
		38.476204, 32.974556, 47.818111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175735, 33.078453, 47.518166>,  <38.787113, 32.504158, 47.403309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175735, 33.078453, 47.518166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971992, 33.044247, 47.860683>,  <38.849747, 33.023724, 48.066193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.971992, 33.044247, 47.860683>,  <39.175735, 33.078453, 47.518166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971992, 33.044247, 47.860683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860232, -0.023464, 0.509362,
		-0.023464, 0.996061, 0.085513,
		-0.509362, -0.085513, 0.856293,
		38.819183, 33.018593, 48.117573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863293, 33.247658, 47.367214>,  <39.175735, 33.078453, 47.518166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863293, 33.247658, 47.367214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.842518, 33.400375, 47.736328>,  <39.830051, 33.492008, 47.957798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.842518, 33.400375, 47.736328>,  <39.863293, 33.247658, 47.367214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842518, 33.400375, 47.736328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893773, 0.429987, -0.127596,
		-0.445501, 0.818134, -0.363573,
		-0.051941, 0.381796, 0.922786,
		39.826935, 33.514915, 48.013165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885166, 33.935272, 47.266941>,  <39.863293, 33.247658, 47.367214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885166, 33.935272, 47.266941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.015030, 33.835575, 47.631901>,  <40.092949, 33.775757, 47.850876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.015030, 33.835575, 47.631901>,  <39.885166, 33.935272, 47.266941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015030, 33.835575, 47.631901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899268, 0.380282, -0.216107,
		-0.293105, 0.890652, 0.347604,
		0.324664, -0.249247, 0.912398,
		40.112431, 33.760799, 47.905621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215103, 34.441563, 47.478268>,  <39.885166, 33.935272, 47.266941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215103, 34.441563, 47.478268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364662, 34.147594, 47.704578>,  <40.454395, 33.971214, 47.840363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364662, 34.147594, 47.704578>,  <40.215103, 34.441563, 47.478268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364662, 34.147594, 47.704578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924986, 0.340106, -0.169498,
		-0.067855, 0.586706, 0.806952,
		0.373895, -0.734918, 0.565772,
		40.476830, 33.927120, 47.874310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565063, 34.629696, 47.004177>,  <40.215103, 34.441563, 47.478268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565063, 34.629696, 47.004177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.932701, 34.551121, 46.867542>,  <40.153282, 34.503975, 46.785561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.932701, 34.551121, 46.867542>,  <39.565063, 34.629696, 47.004177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932701, 34.551121, 46.867542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294572, 0.233249, -0.926727,
		0.261719, 0.952369, 0.156512,
		0.919092, -0.196438, -0.341587,
		40.208427, 34.492188, 46.765064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735050, 34.512867, 46.230656>,  <39.565063, 34.629696, 47.004177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735050, 34.512867, 46.230656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.516945, 34.793671, 46.413906>,  <39.386082, 34.962151, 46.523857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.516945, 34.793671, 46.413906>,  <39.735050, 34.512867, 46.230656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516945, 34.793671, 46.413906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625313, 0.704600, -0.335444,
		-0.558279, 0.103568, -0.823164,
		-0.545259, 0.702006, 0.458126,
		39.353367, 35.004272, 46.551342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410301, 35.002201, 45.760254>,  <39.735050, 34.512867, 46.230656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410301, 35.002201, 45.760254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.511993, 35.181805, 46.102894>,  <39.573009, 35.289566, 46.308475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.511993, 35.181805, 46.102894>,  <39.410301, 35.002201, 45.760254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511993, 35.181805, 46.102894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438313, 0.736024, -0.515897,
		-0.862117, 0.506616, -0.009683,
		0.254235, 0.449008, 0.856596,
		39.588264, 35.316505, 46.359871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203335, 35.752945, 45.743530>,  <39.410301, 35.002201, 45.760254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203335, 35.752945, 45.743530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.537552, 35.646816, 45.935974>,  <39.738083, 35.583138, 46.051441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.537552, 35.646816, 45.935974>,  <39.203335, 35.752945, 45.743530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537552, 35.646816, 45.935974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546292, 0.494560, -0.676000,
		-0.058582, 0.827656, 0.558170,
		0.835544, -0.265321, 0.481114,
		39.788216, 35.567219, 46.080307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295071, 35.459187, 45.001694>,  <39.203335, 35.752945, 45.743530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295071, 35.459187, 45.001694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655308, 35.457958, 45.175556>,  <39.871449, 35.457222, 45.279873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.655308, 35.457958, 45.175556>,  <39.295071, 35.459187, 45.001694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655308, 35.457958, 45.175556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333057, -0.637674, -0.694583,
		0.279301, 0.770300, -0.573261,
		0.900591, -0.003070, 0.434657,
		39.925484, 35.457039, 45.305954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831154, 35.601727, 44.524448>,  <39.295071, 35.459187, 45.001694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831154, 35.601727, 44.524448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.947296, 35.353527, 44.815838>,  <40.016983, 35.204609, 44.990673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.947296, 35.353527, 44.815838>,  <39.831154, 35.601727, 44.524448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947296, 35.353527, 44.815838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217834, -0.698428, -0.681723,
		0.931794, 0.356631, -0.067629,
		0.290358, -0.620494, 0.728477,
		40.034405, 35.167377, 45.034382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412071, 35.275795, 44.183353>,  <39.831154, 35.601727, 44.524448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412071, 35.275795, 44.183353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.257095, 35.060574, 44.482788>,  <40.164112, 34.931438, 44.662449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.257095, 35.060574, 44.482788>,  <40.412071, 35.275795, 44.183353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257095, 35.060574, 44.482788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076229, -0.827928, -0.555630,
		0.918740, -0.158206, 0.361784,
		-0.387435, -0.538058, 0.748591,
		40.140865, 34.899155, 44.707367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675751, 34.540890, 44.094646>,  <40.412071, 35.275795, 44.183353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675751, 34.540890, 44.094646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.348175, 34.515293, 44.322769>,  <40.151630, 34.499935, 44.459644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.348175, 34.515293, 44.322769>,  <40.675751, 34.540890, 44.094646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348175, 34.515293, 44.322769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245006, -0.859664, -0.448275,
		0.518956, -0.506837, 0.688332,
		-0.818937, -0.063990, 0.570306,
		40.102493, 34.496098, 44.493862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725536, 33.861740, 44.512238>,  <40.675751, 34.540890, 44.094646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725536, 33.861740, 44.512238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.365547, 34.020752, 44.440666>,  <40.149555, 34.116161, 44.397724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.365547, 34.020752, 44.440666>,  <40.725536, 33.861740, 44.512238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365547, 34.020752, 44.440666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287814, -0.850091, -0.441031,
		-0.327433, -0.345416, 0.879475,
		-0.899973, 0.397533, -0.178932,
		40.095554, 34.140011, 44.386986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.912117, 33.572186, 43.851292>,  <40.725536, 33.861740, 44.512238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.912117, 33.572186, 43.851292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.537598, 33.454414, 43.774708>,  <40.312885, 33.383751, 43.728760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.537598, 33.454414, 43.774708>,  <40.912117, 33.572186, 43.851292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537598, 33.454414, 43.774708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182025, 0.873038, -0.452407,
		0.300350, -0.388738, -0.871018,
		-0.936299, -0.294428, -0.191457,
		40.256706, 33.366085, 43.717270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795311, 34.265629, 43.457314>,  <40.912117, 33.572186, 43.851292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795311, 34.265629, 43.457314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.513626, 34.543610, 43.399170>,  <40.344616, 34.710396, 43.364285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.513626, 34.543610, 43.399170>,  <40.795311, 34.265629, 43.457314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513626, 34.543610, 43.399170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203982, 0.394139, 0.896128,
		0.680054, 0.601416, -0.419315,
		-0.704214, 0.694948, -0.145358,
		40.302361, 34.752094, 43.355564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736916, 34.138950, 42.794754>,  <40.795311, 34.265629, 43.457314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736916, 34.138950, 42.794754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.712845, 33.743252, 42.848064>,  <40.698402, 33.505833, 42.880051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.712845, 33.743252, 42.848064>,  <40.736916, 34.138950, 42.794754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712845, 33.743252, 42.848064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633548, 0.065328, 0.770941,
		-0.771360, 0.130831, 0.622806,
		-0.060176, -0.989250, 0.133279,
		40.694794, 33.446476, 42.888046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359341, 34.336082, 42.632607>,  <40.736916, 34.138950, 42.794754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359341, 34.336082, 42.632607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.120968, 34.560047, 42.402351>,  <40.977943, 34.694427, 42.264198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.120968, 34.560047, 42.402351>,  <41.359341, 34.336082, 42.632607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120968, 34.560047, 42.402351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792935, 0.523607, -0.311594,
		0.126943, -0.642134, -0.756009,
		-0.595936, 0.559911, -0.575638,
		40.942188, 34.728020, 42.229660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588860, 34.294899, 41.987644>,  <41.359341, 34.336082, 42.632607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588860, 34.294899, 41.987644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.403748, 34.643784, 42.050999>,  <41.292679, 34.853115, 42.089012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.403748, 34.643784, 42.050999>,  <41.588860, 34.294899, 41.987644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403748, 34.643784, 42.050999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801487, 0.488022, -0.345620,
		-0.378748, -0.033003, -0.924911,
		-0.462783, 0.872207, 0.158387,
		41.264912, 34.905445, 42.098515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912769, 34.549904, 41.321156>,  <41.588860, 34.294899, 41.987644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912769, 34.549904, 41.321156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.802307, 34.591938, 40.939014>,  <41.736031, 34.617161, 40.709732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.802307, 34.591938, 40.939014>,  <41.912769, 34.549904, 41.321156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.802307, 34.591938, 40.939014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755276, -0.590997, -0.283336,
		-0.594385, -0.799798, 0.083836,
		-0.276159, 0.105092, -0.955349,
		41.719460, 34.623466, 40.652409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868076, 33.931194, 41.237270>,  <41.912769, 34.549904, 41.321156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868076, 33.931194, 41.237270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.907581, 34.127262, 40.890865>,  <41.931282, 34.244904, 40.683022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.907581, 34.127262, 40.890865>,  <41.868076, 33.931194, 41.237270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907581, 34.127262, 40.890865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827696, -0.523577, -0.201955,
		-0.552418, -0.696853, -0.457417,
		0.098760, 0.490166, -0.866016,
		41.937210, 34.274311, 40.631062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120842, 33.425297, 40.812305>,  <41.868076, 33.931194, 41.237270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120842, 33.425297, 40.812305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.258987, 33.782608, 40.697220>,  <42.341873, 33.996994, 40.628166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.258987, 33.782608, 40.697220>,  <42.120842, 33.425297, 40.812305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258987, 33.782608, 40.697220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920136, -0.382613, -0.083409,
		-0.184592, -0.235932, -0.954077,
		0.345363, 0.893277, -0.287717,
		42.362595, 34.050591, 40.610905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416569, 33.387138, 40.158909>,  <42.120842, 33.425297, 40.812305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416569, 33.387138, 40.158909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.596687, 33.710251, 40.311077>,  <42.704758, 33.904118, 40.402378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.596687, 33.710251, 40.311077>,  <42.416569, 33.387138, 40.158909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596687, 33.710251, 40.311077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892865, -0.409727, -0.186856,
		0.004929, 0.423805, -0.905740,
		0.450297, 0.807783, 0.380421,
		42.731777, 33.952587, 40.425201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974941, 33.379307, 39.797993>,  <42.416569, 33.387138, 40.158909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974941, 33.379307, 39.797993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.041096, 33.610062, 40.117954>,  <43.080788, 33.748516, 40.309933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.041096, 33.610062, 40.117954>,  <42.974941, 33.379307, 39.797993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041096, 33.610062, 40.117954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981194, -0.178096, -0.074428,
		0.099523, 0.797170, -0.595495,
		0.165387, 0.576889, 0.799904,
		43.090714, 33.783127, 40.357925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626881, 33.752640, 39.691631>,  <42.974941, 33.379307, 39.797993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626881, 33.752640, 39.691631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.545887, 33.700298, 40.079834>,  <43.497292, 33.668892, 40.312756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.545887, 33.700298, 40.079834>,  <43.626881, 33.752640, 39.691631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545887, 33.700298, 40.079834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964336, -0.199151, 0.174343,
		0.170463, 0.971193, 0.166514,
		-0.202482, -0.130856, 0.970504,
		43.485142, 33.661041, 40.370987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844963, 34.244537, 39.238407>,  <43.626881, 33.752640, 39.691631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844963, 34.244537, 39.238407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.807808, 34.443760, 38.893547>,  <43.785515, 34.563293, 38.686630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.807808, 34.443760, 38.893547>,  <43.844963, 34.244537, 39.238407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807808, 34.443760, 38.893547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141143, 0.850565, 0.506574,
		0.985622, 0.168743, -0.008712,
		-0.092891, 0.498061, -0.862153,
		43.779942, 34.593178, 38.634903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.501759, 33.741005, 39.385242>,  <43.844963, 34.244537, 39.238407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.501759, 33.741005, 39.385242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.663212, 33.500484, 39.109413>,  <44.760086, 33.356171, 38.943916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.663212, 33.500484, 39.109413>,  <44.501759, 33.741005, 39.385242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.663212, 33.500484, 39.109413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307727, -0.620560, 0.721255,
		-0.861615, -0.503325, -0.065443,
		0.403638, -0.601306, -0.689571,
		44.784302, 33.320091, 38.902542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680008, 34.109283, 39.958126>,  <44.501759, 33.741005, 39.385242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.680008, 34.109283, 39.958126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.900063, 34.432072, 39.872189>,  <45.032093, 34.625744, 39.820625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.900063, 34.432072, 39.872189>,  <44.680008, 34.109283, 39.958126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900063, 34.432072, 39.872189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419876, -0.044907, 0.906470,
		0.721844, -0.588885, -0.363531,
		0.550132, 0.806968, -0.214842,
		45.065102, 34.674164, 39.807735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.398140, 33.949169, 39.987831>,  <44.680008, 34.109283, 39.958126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.398140, 33.949169, 39.987831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.332932, 34.329502, 40.093163>,  <45.293808, 34.557701, 40.156361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.332932, 34.329502, 40.093163>,  <45.398140, 33.949169, 39.987831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332932, 34.329502, 40.093163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472866, -0.158947, 0.866680,
		0.865923, 0.265801, -0.423706,
		-0.163018, 0.950834, 0.263324,
		45.284027, 34.614754, 40.172161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.062344, 34.247128, 40.207264>,  <45.398140, 33.949169, 39.987831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.062344, 34.247128, 40.207264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.715813, 34.359138, 40.372700>,  <45.507893, 34.426346, 40.471962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.715813, 34.359138, 40.372700>,  <46.062344, 34.247128, 40.207264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.715813, 34.359138, 40.372700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379046, -0.170653, 0.909506,
		0.325266, 0.944703, 0.041699,
		-0.866329, 0.280025, 0.413594,
		45.455914, 34.443146, 40.496777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.469936, 33.992188, 39.514008>,  <46.062344, 34.247128, 40.207264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.469936, 33.992188, 39.514008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.798344, 33.954193, 39.288830>,  <46.995388, 33.931396, 39.153725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.798344, 33.954193, 39.288830>,  <46.469936, 33.992188, 39.514008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.798344, 33.954193, 39.288830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377753, -0.829717, -0.410941,
		-0.428050, 0.550044, -0.717095,
		0.821021, -0.094982, -0.562941,
		47.044651, 33.925697, 39.119949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.362263, 33.865627, 38.880032>,  <46.469936, 33.992188, 39.514008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.362263, 33.865627, 38.880032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.720375, 33.687717, 38.890274>,  <46.935242, 33.580971, 38.896420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.720375, 33.687717, 38.890274>,  <46.362263, 33.865627, 38.880032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.720375, 33.687717, 38.890274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413257, -0.850563, -0.325209,
		0.166425, 0.280570, -0.945295,
		0.895277, -0.444773, 0.025608,
		46.988956, 33.554287, 38.897957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.511456, 33.343464, 38.315960>,  <46.362263, 33.865627, 38.880032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.511456, 33.343464, 38.315960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.704067, 33.196243, 38.634121>,  <46.819633, 33.107910, 38.825016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.704067, 33.196243, 38.634121>,  <46.511456, 33.343464, 38.315960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.704067, 33.196243, 38.634121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344688, -0.913945, -0.214231,
		0.805803, -0.171008, -0.566955,
		0.481530, -0.368050, 0.795404,
		46.848526, 33.085827, 38.872742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.117744, 33.737835, 37.764690>,  <46.511456, 33.343464, 38.315960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.117744, 33.737835, 37.764690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.504948, 33.681118, 37.681885>,  <46.737270, 33.647087, 37.632202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.504948, 33.681118, 37.681885>,  <46.117744, 33.737835, 37.764690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.504948, 33.681118, 37.681885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149914, -0.334778, 0.930295,
		-0.201213, -0.931568, -0.302812,
		0.968008, -0.141792, -0.207017,
		46.795349, 33.638580, 37.619778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.737190, 33.858143, 38.473770>,  <46.117744, 33.737835, 37.764690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.737190, 33.858143, 38.473770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.856518, 34.223835, 38.583458>,  <45.928112, 34.443249, 38.649269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.856518, 34.223835, 38.583458>,  <45.737190, 33.858143, 38.473770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856518, 34.223835, 38.583458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932406, -0.340548, 0.121023,
		0.204027, 0.219580, -0.954022,
		0.298317, 0.914227, 0.274218,
		45.946014, 34.498104, 38.665722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.185688, 34.382954, 38.402287>,  <45.737190, 33.858143, 38.473770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.185688, 34.382954, 38.402287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.038551, 34.176834, 38.092667>,  <44.950268, 34.053162, 37.906895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.038551, 34.176834, 38.092667>,  <45.185688, 34.382954, 38.402287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.038551, 34.176834, 38.092667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927774, 0.147268, 0.342852,
		-0.062679, 0.844261, -0.532254,
		-0.367840, -0.515301, -0.774053,
		44.928200, 34.022243, 37.860451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369709, 34.703392, 37.623825>,  <45.185688, 34.382954, 38.402287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369709, 34.703392, 37.623825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.184414, 34.976372, 37.397667>,  <45.073235, 35.140160, 37.261971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.184414, 34.976372, 37.397667>,  <45.369709, 34.703392, 37.623825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184414, 34.976372, 37.397667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879089, 0.434688, -0.195575,
		0.112302, -0.587633, -0.801296,
		-0.463240, 0.682447, -0.565398,
		45.045441, 35.181107, 37.228046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410038, 34.820145, 36.851570>,  <45.369709, 34.703392, 37.623825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410038, 34.820145, 36.851570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.359642, 35.169128, 37.040432>,  <45.329403, 35.378521, 37.153751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.359642, 35.169128, 37.040432>,  <45.410038, 34.820145, 36.851570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.359642, 35.169128, 37.040432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818147, 0.360555, -0.447924,
		-0.561036, 0.329859, -0.759231,
		-0.125993, 0.872464, 0.472158,
		45.321842, 35.430866, 37.182079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744209, 35.275501, 36.361004>,  <45.410038, 34.820145, 36.851570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744209, 35.275501, 36.361004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.711037, 35.481979, 36.701984>,  <45.691132, 35.605865, 36.906570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.711037, 35.481979, 36.701984>,  <45.744209, 35.275501, 36.361004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711037, 35.481979, 36.701984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850659, 0.482269, -0.209276,
		-0.519136, 0.707788, -0.479097,
		-0.082931, 0.516190, 0.852449,
		45.686157, 35.636837, 36.957718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.478848, 35.301502, 35.991650>,  <45.744209, 35.275501, 36.361004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.478848, 35.301502, 35.991650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.714924, 35.624031, 36.007244>,  <46.856571, 35.817547, 36.016602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.714924, 35.624031, 36.007244>,  <46.478848, 35.301502, 35.991650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.714924, 35.624031, 36.007244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655009, -0.450092, -0.606943,
		-0.471840, 0.383754, -0.793788,
		0.590194, 0.806319, 0.038991,
		46.891983, 35.865929, 36.018940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618870, 35.549591, 35.280048>,  <46.478848, 35.301502, 35.991650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.618870, 35.549591, 35.280048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.917797, 35.622673, 35.535591>,  <47.097153, 35.666523, 35.688919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.917797, 35.622673, 35.535591>,  <46.618870, 35.549591, 35.280048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.917797, 35.622673, 35.535591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606922, -0.579075, -0.544351,
		0.270493, 0.794539, -0.543637,
		0.747314, 0.182702, 0.638859,
		47.141991, 35.677483, 35.727249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.179398, 35.728542, 34.874161>,  <46.618870, 35.549591, 35.280048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.179398, 35.728542, 34.874161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.252129, 35.568195, 35.233326>,  <47.295765, 35.471989, 35.448826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.252129, 35.568195, 35.233326>,  <47.179398, 35.728542, 34.874161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.252129, 35.568195, 35.233326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251389, -0.863841, -0.436557,
		0.950654, 0.305102, -0.056294,
		0.181824, -0.400863, 0.897914,
		47.306675, 35.447937, 35.502701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.887306, 35.396370, 35.197418>,  <47.179398, 35.728542, 34.874161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.887306, 35.396370, 35.197418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.582195, 35.202213, 35.368328>,  <47.399128, 35.085720, 35.470875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.582195, 35.202213, 35.368328>,  <47.887306, 35.396370, 35.197418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.582195, 35.202213, 35.368328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208857, -0.810249, -0.547609,
		0.612005, -0.328464, 0.719418,
		-0.762777, -0.485395, 0.427274,
		47.353363, 35.056595, 35.496510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.054653, 34.914555, 34.817806>,  <47.887306, 35.396370, 35.197418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.054653, 34.914555, 34.817806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.742298, 34.768414, 35.020481>,  <47.554886, 34.680729, 35.142086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.742298, 34.768414, 35.020481>,  <48.054653, 34.914555, 34.817806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.742298, 34.768414, 35.020481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220046, -0.920020, -0.324257,
		0.584629, -0.141715, 0.798828,
		-0.780890, -0.365348, 0.506687,
		47.508030, 34.658810, 35.172485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.360395, 33.305996, 56.152100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.626736, 33.123585, 56.388294>,  <30.786541, 33.014137, 56.530010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.626736, 33.123585, 56.388294>,  <30.360395, 33.305996, 56.152100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626736, 33.123585, 56.388294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644165, -0.047919, -0.763384,
		0.376420, 0.888674, 0.261851,
		0.665852, -0.456028, 0.590491,
		30.826490, 32.986774, 56.565441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946762, 33.651493, 55.996162>,  <30.360395, 33.305996, 56.152100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946762, 33.651493, 55.996162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.095644, 33.329414, 56.180820>,  <31.184973, 33.136166, 56.291615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.095644, 33.329414, 56.180820>,  <30.946762, 33.651493, 55.996162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095644, 33.329414, 56.180820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705540, -0.077720, -0.704395,
		0.603058, 0.587890, 0.539173,
		0.372203, -0.805199, 0.461649,
		31.207304, 33.087856, 56.319317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714340, 33.743931, 56.057156>,  <30.946762, 33.651493, 55.996162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714340, 33.743931, 56.057156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.631138, 33.353600, 56.083996>,  <31.581217, 33.119400, 56.100101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.631138, 33.353600, 56.083996>,  <31.714340, 33.743931, 56.057156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631138, 33.353600, 56.083996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731976, -0.200797, -0.651070,
		0.648804, -0.086308, 0.756046,
		-0.208004, -0.975824, 0.067102,
		31.568737, 33.060852, 56.104126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304760, 33.340763, 56.396030>,  <31.714340, 33.743931, 56.057156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304760, 33.340763, 56.396030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.104141, 33.103916, 56.143730>,  <31.983768, 32.961807, 55.992352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.104141, 33.103916, 56.143730>,  <32.304760, 33.340763, 56.396030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104141, 33.103916, 56.143730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848567, -0.194731, -0.491948,
		0.168466, -0.781969, 0.600120,
		-0.501550, -0.592118, -0.630748,
		31.953676, 32.926281, 55.954506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851559, 32.840050, 56.250870>,  <32.304760, 33.340763, 56.396030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851559, 32.840050, 56.250870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.552879, 32.809525, 55.986561>,  <32.373672, 32.791210, 55.827976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.552879, 32.809525, 55.986561>,  <32.851559, 32.840050, 56.250870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552879, 32.809525, 55.986561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662065, -0.181030, -0.727254,
		-0.064117, -0.980512, 0.185702,
		-0.746699, -0.076317, -0.660770,
		32.328869, 32.786629, 55.788330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031921, 32.396656, 55.824558>,  <32.851559, 32.840050, 56.250870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031921, 32.396656, 55.824558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.765793, 32.576977, 55.586525>,  <32.606113, 32.685169, 55.443707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.765793, 32.576977, 55.586525>,  <33.031921, 32.396656, 55.824558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765793, 32.576977, 55.586525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528796, -0.278108, -0.801892,
		-0.526989, -0.848196, -0.053349,
		-0.665325, 0.450799, -0.595083,
		32.566196, 32.712215, 55.408001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118431, 31.967710, 55.187828>,  <33.031921, 32.396656, 55.824558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118431, 31.967710, 55.187828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.892208, 32.280460, 55.082897>,  <32.756474, 32.468109, 55.019939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.892208, 32.280460, 55.082897>,  <33.118431, 31.967710, 55.187828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892208, 32.280460, 55.082897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355520, -0.055866, -0.932997,
		-0.744143, -0.620926, -0.246377,
		-0.565558, 0.781876, -0.262324,
		32.722542, 32.515022, 55.004200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804478, 31.788975, 54.499493>,  <33.118431, 31.967710, 55.187828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804478, 31.788975, 54.499493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.793636, 32.185444, 54.551411>,  <32.787132, 32.423325, 54.582561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.793636, 32.185444, 54.551411>,  <32.804478, 31.788975, 54.499493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793636, 32.185444, 54.551411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374489, 0.130452, -0.918009,
		-0.926835, 0.023729, -0.374717,
		-0.027099, 0.991171, 0.129794,
		32.785507, 32.482796, 54.590347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633698, 32.122272, 53.797409>,  <32.804478, 31.788975, 54.499493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633698, 32.122272, 53.797409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.800915, 32.410255, 54.019005>,  <32.901245, 32.583046, 54.151962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.800915, 32.410255, 54.019005>,  <32.633698, 32.122272, 53.797409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800915, 32.410255, 54.019005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479374, 0.343187, -0.807727,
		-0.771650, 0.603232, -0.201662,
		0.418040, 0.719954, 0.553994,
		32.926327, 32.626240, 54.185204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593430, 32.693409, 53.398491>,  <32.633698, 32.122272, 53.797409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593430, 32.693409, 53.398491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.887123, 32.766361, 53.660069>,  <33.063339, 32.810135, 53.817013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.887123, 32.766361, 53.660069>,  <32.593430, 32.693409, 53.398491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887123, 32.766361, 53.660069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595447, 0.289691, -0.749348,
		-0.326109, 0.939583, 0.104102,
		0.734232, 0.182383, 0.653942,
		33.107391, 32.821075, 53.856251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734829, 33.347340, 53.416889>,  <32.593430, 32.693409, 53.398491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734829, 33.347340, 53.416889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.081749, 33.193192, 53.542923>,  <33.289902, 33.100704, 53.618542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.081749, 33.193192, 53.542923>,  <32.734829, 33.347340, 53.416889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081749, 33.193192, 53.542923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428007, 0.254152, -0.867305,
		0.254152, 0.887074, 0.385366,
		0.867305, -0.385366, 0.315080,
		33.341942, 33.077583, 53.637447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174488, 33.794842, 53.083725>,  <32.734829, 33.347340, 53.416889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174488, 33.794842, 53.083725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.434029, 33.514126, 53.201359>,  <33.589752, 33.345695, 53.271938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.434029, 33.514126, 53.201359>,  <33.174488, 33.794842, 53.083725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434029, 33.514126, 53.201359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590743, 0.221001, -0.776003,
		0.479599, 0.677236, 0.557975,
		0.648851, -0.701790, 0.294080,
		33.628685, 33.303589, 53.289581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905750, 34.082069, 53.011433>,  <33.174488, 33.794842, 53.083725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905750, 34.082069, 53.011433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.894970, 33.682873, 52.988495>,  <33.888500, 33.443356, 52.974731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.894970, 33.682873, 52.988495>,  <33.905750, 34.082069, 53.011433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894970, 33.682873, 52.988495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437948, 0.039776, -0.898120,
		0.898596, -0.049316, 0.435996,
		-0.026950, -0.997991, -0.057340,
		33.886887, 33.383476, 52.971294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552738, 33.894817, 52.817696>,  <33.905750, 34.082069, 53.011433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552738, 33.894817, 52.817696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.351738, 33.554768, 52.754726>,  <34.231136, 33.350739, 52.716946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.351738, 33.554768, 52.754726>,  <34.552738, 33.894817, 52.817696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351738, 33.554768, 52.754726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483705, -0.125519, -0.866184,
		0.716604, -0.511405, 0.474283,
		-0.502502, -0.850124, -0.157422,
		34.200989, 33.299732, 52.707500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045193, 33.310368, 52.569740>,  <34.552738, 33.894817, 52.817696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045193, 33.310368, 52.569740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.667645, 33.250103, 52.452164>,  <34.441116, 33.213943, 52.381618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.667645, 33.250103, 52.452164>,  <35.045193, 33.310368, 52.569740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667645, 33.250103, 52.452164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316731, -0.160353, -0.934863,
		0.093716, -0.975493, 0.199073,
		-0.943874, -0.150664, -0.293941,
		34.384483, 33.204903, 52.363983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169952, 32.789070, 51.990498>,  <35.045193, 33.310368, 52.569740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169952, 32.789070, 51.990498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.791271, 32.908638, 51.942505>,  <34.564060, 32.980377, 51.913708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.791271, 32.908638, 51.942505>,  <35.169952, 32.789070, 51.990498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791271, 32.908638, 51.942505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080645, -0.140677, -0.986766,
		-0.311844, -0.943852, 0.109073,
		-0.946705, 0.298920, -0.119986,
		34.507259, 32.998314, 51.906509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807941, 32.222435, 51.675095>,  <35.169952, 32.789070, 51.990498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807941, 32.222435, 51.675095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.611282, 32.561523, 51.595444>,  <34.493286, 32.764977, 51.547653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.611282, 32.561523, 51.595444>,  <34.807941, 32.222435, 51.675095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611282, 32.561523, 51.595444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026348, -0.214088, -0.976459,
		-0.870396, -0.485319, 0.082920,
		-0.491647, 0.847721, -0.199129,
		34.463787, 32.815838, 51.535706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373337, 32.002991, 51.161545>,  <34.807941, 32.222435, 51.675095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373337, 32.002991, 51.161545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.401173, 32.401382, 51.138996>,  <34.417873, 32.640419, 51.125465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.401173, 32.401382, 51.138996>,  <34.373337, 32.002991, 51.161545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401173, 32.401382, 51.138996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068128, -0.061124, -0.995803,
		-0.995246, 0.065460, -0.072108,
		0.069592, 0.995982, -0.056373,
		34.422050, 32.700176, 51.122086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098148, 32.111835, 50.512749>,  <34.373337, 32.002991, 51.161545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098148, 32.111835, 50.512749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.270790, 32.466896, 50.576984>,  <34.374374, 32.679932, 50.615524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.270790, 32.466896, 50.576984>,  <34.098148, 32.111835, 50.512749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270790, 32.466896, 50.576984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230820, 0.063424, -0.970927,
		-0.872033, 0.456121, -0.177515,
		0.431602, 0.887655, 0.160589,
		34.400272, 32.733192, 50.625160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806450, 32.538841, 50.028614>,  <34.098148, 32.111835, 50.512749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806450, 32.538841, 50.028614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.143337, 32.734711, 50.118843>,  <34.345470, 32.852234, 50.172981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.143337, 32.734711, 50.118843>,  <33.806450, 32.538841, 50.028614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143337, 32.734711, 50.118843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245656, 0.023882, -0.969063,
		-0.479916, 0.871576, -0.100178,
		0.842220, 0.489678, 0.225569,
		34.396004, 32.881615, 50.186512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665676, 33.054134, 49.635162>,  <33.806450, 32.538841, 50.028614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665676, 33.054134, 49.635162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.056705, 33.027119, 49.714943>,  <34.291325, 33.010910, 49.762814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.056705, 33.027119, 49.714943>,  <33.665676, 33.054134, 49.635162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056705, 33.027119, 49.714943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201299, 0.021619, -0.979291,
		0.061829, 0.997482, 0.034730,
		0.977576, -0.067540, 0.199456,
		34.349979, 33.006855, 49.774780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910084, 33.590836, 49.275696>,  <33.665676, 33.054134, 49.635162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910084, 33.590836, 49.275696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.199242, 33.320034, 49.330956>,  <34.372738, 33.157555, 49.364113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.199242, 33.320034, 49.330956>,  <33.910084, 33.590836, 49.275696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199242, 33.320034, 49.330956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270225, 0.092989, -0.958296,
		0.635921, 0.730084, 0.250164,
		0.722899, -0.677001, 0.138153,
		34.416111, 33.116932, 49.372402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477646, 33.319649, 48.752964>,  <33.910084, 33.590836, 49.275696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477646, 33.319649, 48.752964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.150982, 33.306370, 48.522499>,  <32.954983, 33.298401, 48.384220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.150982, 33.306370, 48.522499>,  <33.477646, 33.319649, 48.752964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150982, 33.306370, 48.522499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531144, -0.347251, 0.772853,
		-0.225732, 0.937184, 0.265952,
		-0.816658, -0.033199, -0.576166,
		32.905983, 33.296410, 48.349648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905830, 33.688374, 49.042362>,  <33.477646, 33.319649, 48.752964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905830, 33.688374, 49.042362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.723385, 33.420448, 48.807991>,  <32.613918, 33.259693, 48.667370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.723385, 33.420448, 48.807991>,  <32.905830, 33.688374, 49.042362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723385, 33.420448, 48.807991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657920, -0.189551, 0.728843,
		-0.599253, 0.717927, -0.354228,
		-0.456111, -0.669815, -0.585927,
		32.586552, 33.219505, 48.632214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096020, 33.836460, 49.026482>,  <32.905830, 33.688374, 49.042362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096020, 33.836460, 49.026482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.123283, 33.452950, 48.916138>,  <32.139641, 33.222843, 48.849930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.123283, 33.452950, 48.916138>,  <32.096020, 33.836460, 49.026482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123283, 33.452950, 48.916138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707557, -0.241392, 0.664148,
		-0.703361, 0.149916, -0.694844,
		0.068163, -0.958778, -0.275860,
		32.143734, 33.165318, 48.833378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397387, 33.532242, 48.890018>,  <32.096020, 33.836460, 49.026482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397387, 33.532242, 48.890018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.630894, 33.219860, 48.978851>,  <31.770998, 33.032429, 49.032150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.630894, 33.219860, 48.978851>,  <31.397387, 33.532242, 48.890018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630894, 33.219860, 48.978851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551437, -0.180598, 0.814433,
		-0.595929, -0.597906, -0.536076,
		0.583769, -0.780956, 0.222084,
		31.806025, 32.985573, 49.045475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967831, 33.123405, 49.180794>,  <31.397387, 33.532242, 48.890018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967831, 33.123405, 49.180794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.309387, 32.973064, 49.324799>,  <31.514320, 32.882862, 49.411201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.309387, 32.973064, 49.324799>,  <30.967831, 33.123405, 49.180794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309387, 32.973064, 49.324799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471174, -0.264464, 0.841459,
		-0.221043, -0.888146, -0.402910,
		0.853894, -0.375839, 0.360014,
		31.565556, 32.860310, 49.432800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806667, 32.435898, 49.336781>,  <30.967831, 33.123405, 49.180794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806667, 32.435898, 49.336781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.143866, 32.506569, 49.540012>,  <31.346184, 32.548973, 49.661949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.143866, 32.506569, 49.540012>,  <30.806667, 32.435898, 49.336781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143866, 32.506569, 49.540012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382594, -0.467011, 0.797197,
		0.378128, -0.866420, -0.326090,
		0.842995, 0.176682, 0.508077,
		31.396765, 32.559574, 49.692436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880831, 31.857124, 49.745232>,  <30.806667, 32.435898, 49.336781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880831, 31.857124, 49.745232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.098270, 32.143776, 49.920017>,  <31.228733, 32.315769, 50.024891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.098270, 32.143776, 49.920017>,  <30.880831, 31.857124, 49.745232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098270, 32.143776, 49.920017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281734, -0.334616, 0.899254,
		0.790650, -0.611941, 0.020003,
		0.543597, 0.716631, 0.436968,
		31.261349, 32.358765, 50.051109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934780, 31.639116, 50.475155>,  <30.880831, 31.857124, 49.745232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934780, 31.639116, 50.475155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.079668, 32.009426, 50.518494>,  <31.166601, 32.231613, 50.544498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.079668, 32.009426, 50.518494>,  <30.934780, 31.639116, 50.475155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079668, 32.009426, 50.518494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151332, -0.056289, 0.986879,
		0.919726, -0.373862, 0.119710,
		0.362219, 0.925775, 0.108348,
		31.188334, 32.287159, 50.550999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258110, 31.648226, 51.113819>,  <30.934780, 31.639116, 50.475155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258110, 31.648226, 51.113819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.210369, 32.034451, 51.021351>,  <31.181725, 32.266186, 50.965870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.210369, 32.034451, 51.021351>,  <31.258110, 31.648226, 51.113819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210369, 32.034451, 51.021351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204661, 0.203912, 0.957358,
		0.971529, 0.161575, 0.173276,
		-0.119352, 0.965564, -0.231175,
		31.174564, 32.324120, 50.952000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722910, 32.024208, 51.559063>,  <31.258110, 31.648226, 51.113819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722910, 32.024208, 51.559063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.423643, 32.265968, 51.449558>,  <31.244083, 32.411026, 51.383858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.423643, 32.265968, 51.449558>,  <31.722910, 32.024208, 51.559063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423643, 32.265968, 51.449558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180184, 0.212012, 0.960513,
		0.638579, 0.767949, -0.049716,
		-0.748165, 0.604405, -0.273758,
		31.199194, 32.447289, 51.367432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792532, 32.538040, 51.977798>,  <31.722910, 32.024208, 51.559063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792532, 32.538040, 51.977798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.419302, 32.583790, 51.841393>,  <31.195364, 32.611240, 51.759548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.419302, 32.583790, 51.841393>,  <31.792532, 32.538040, 51.977798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419302, 32.583790, 51.841393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292071, 0.312422, 0.903929,
		0.209926, 0.943033, -0.258108,
		-0.933073, 0.114372, -0.341018,
		31.139380, 32.618103, 51.739086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548733, 33.107471, 52.265114>,  <31.792532, 32.538040, 51.977798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548733, 33.107471, 52.265114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.234142, 32.874237, 52.183662>,  <31.045389, 32.734295, 52.134792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.234142, 32.874237, 52.183662>,  <31.548733, 33.107471, 52.265114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234142, 32.874237, 52.183662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410246, 0.246742, 0.877962,
		-0.461687, 0.774031, -0.433267,
		-0.786475, -0.583090, -0.203625,
		30.998199, 32.699310, 52.122574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980841, 33.375957, 52.598774>,  <31.548733, 33.107471, 52.265114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980841, 33.375957, 52.598774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.811731, 33.027847, 52.497665>,  <30.710266, 32.818981, 52.437000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.811731, 33.027847, 52.497665>,  <30.980841, 33.375957, 52.598774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811731, 33.027847, 52.497665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684725, 0.124045, 0.718167,
		-0.593646, 0.476697, -0.648340,
		-0.422772, -0.870272, -0.252768,
		30.684900, 32.766766, 52.421837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251888, 33.494518, 52.710270>,  <30.980841, 33.375957, 52.598774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251888, 33.494518, 52.710270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.277931, 33.095379, 52.707172>,  <30.293558, 32.855896, 52.705315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.277931, 33.095379, 52.707172>,  <30.251888, 33.494518, 52.710270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277931, 33.095379, 52.707172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645445, -0.048031, 0.762295,
		-0.761027, -0.044632, -0.647183,
		0.065108, -0.997849, -0.007745,
		30.297464, 32.796024, 52.704849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577631, 33.322086, 52.798611>,  <30.251888, 33.494518, 52.710270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577631, 33.322086, 52.798611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.820835, 33.028755, 52.920300>,  <29.966757, 32.852757, 52.993313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.820835, 33.028755, 52.920300>,  <29.577631, 33.322086, 52.798611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820835, 33.028755, 52.920300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569700, -0.136103, 0.810505,
		-0.552961, -0.666111, -0.500530,
		0.608010, -0.733329, 0.304224,
		30.003239, 32.808758, 53.011566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168776, 32.759289, 52.858757>,  <29.577631, 33.322086, 52.798611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168776, 32.759289, 52.858757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.485645, 32.718555, 53.099453>,  <29.675768, 32.694115, 53.243870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.485645, 32.718555, 53.099453>,  <29.168776, 32.759289, 52.858757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485645, 32.718555, 53.099453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608700, -0.060609, 0.791082,
		-0.044077, -0.992955, -0.109990,
		0.792175, -0.101819, 0.601741,
		29.723297, 32.688004, 53.279976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851110, 32.211628, 53.297741>,  <29.168776, 32.759289, 52.858757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851110, 32.211628, 53.297741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.180973, 32.363285, 53.465637>,  <29.378891, 32.454281, 53.566376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.180973, 32.363285, 53.465637>,  <28.851110, 32.211628, 53.297741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180973, 32.363285, 53.465637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430641, -0.060272, 0.900508,
		0.366725, -0.923371, 0.113573,
		0.824658, 0.379149, 0.419745,
		29.428371, 32.477028, 53.591560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863020, 31.874487, 53.938869>,  <28.851110, 32.211628, 53.297741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863020, 31.874487, 53.938869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.129343, 32.164894, 54.007683>,  <29.289137, 32.339138, 54.048969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.129343, 32.164894, 54.007683>,  <28.863020, 31.874487, 53.938869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129343, 32.164894, 54.007683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273496, 0.022964, 0.961599,
		0.694188, -0.687292, 0.213853,
		0.665810, 0.726018, 0.172030,
		29.329086, 32.382698, 54.059292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.413229, 31.691046, 54.501968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387663, 32.090031, 54.489433>,  <29.372324, 32.329422, 54.481911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387663, 32.090031, 54.489433>,  <29.413229, 31.691046, 54.501968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387663, 32.090031, 54.489433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339738, 0.007782, 0.940488,
		0.938346, 0.070760, 0.338379,
		-0.063915, 0.997463, -0.031342,
		29.368488, 32.389271, 54.480030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878208, 32.039028, 55.139347>,  <29.413229, 31.691046, 54.501968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878208, 32.039028, 55.139347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613094, 32.309032, 55.009689>,  <29.454025, 32.471035, 54.931892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613094, 32.309032, 55.009689>,  <29.878208, 32.039028, 55.139347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613094, 32.309032, 55.009689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293244, 0.164334, 0.941808,
		0.689001, 0.719272, 0.089025,
		-0.662787, 0.675012, -0.324148,
		29.414259, 32.511536, 54.912445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901329, 32.645996, 55.662876>,  <29.878208, 32.039028, 55.139347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901329, 32.645996, 55.662876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575651, 32.742073, 55.451443>,  <29.380245, 32.799721, 55.324585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575651, 32.742073, 55.451443>,  <29.901329, 32.645996, 55.662876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575651, 32.742073, 55.451443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435479, 0.349473, 0.829594,
		0.383989, 0.905635, -0.179938,
		-0.814193, 0.240196, -0.528579,
		29.331394, 32.814133, 55.292870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.694452, 33.379978, 55.720085>,  <29.901329, 32.645996, 55.662876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.694452, 33.379978, 55.720085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353445, 33.189487, 55.633904>,  <29.148840, 33.075195, 55.582195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353445, 33.189487, 55.633904>,  <29.694452, 33.379978, 55.720085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353445, 33.189487, 55.633904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466653, 0.507759, 0.724166,
		-0.235466, 0.717908, -0.655106,
		-0.852520, -0.476223, -0.215454,
		29.097689, 33.046619, 55.569267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247576, 33.986996, 55.621910>,  <29.694452, 33.379978, 55.720085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247576, 33.986996, 55.621910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043053, 33.651489, 55.696781>,  <28.920340, 33.450184, 55.741703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043053, 33.651489, 55.696781>,  <29.247576, 33.986996, 55.621910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043053, 33.651489, 55.696781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624456, 0.512244, 0.589627,
		-0.590439, 0.184598, -0.785688,
		-0.511308, -0.838767, 0.187176,
		28.889660, 33.399860, 55.752934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.477957, 34.054840, 55.422504>,  <29.247576, 33.986996, 55.621910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.477957, 34.054840, 55.422504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492199, 33.795376, 55.726601>,  <28.500744, 33.639698, 55.909058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492199, 33.795376, 55.726601>,  <28.477957, 34.054840, 55.422504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492199, 33.795376, 55.726601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698637, 0.527793, 0.483053,
		-0.714589, -0.548332, -0.434389,
		0.035607, -0.648665, 0.760241,
		28.502880, 33.600777, 55.954674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937052, 34.306057, 55.791981>,  <28.477957, 34.054840, 55.422504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.937052, 34.306057, 55.791981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070524, 34.018051, 56.035370>,  <28.150608, 33.845249, 56.181404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070524, 34.018051, 56.035370>,  <27.937052, 34.306057, 55.791981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070524, 34.018051, 56.035370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668391, 0.274466, 0.691319,
		-0.664764, -0.637377, -0.389666,
		0.333681, -0.720013, 0.608472,
		28.170630, 33.802048, 56.217911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338732, 34.202969, 56.202641>,  <27.937052, 34.306057, 55.791981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338732, 34.202969, 56.202641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643610, 34.021229, 56.387085>,  <27.826536, 33.912186, 56.497753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643610, 34.021229, 56.387085>,  <27.338732, 34.202969, 56.202641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643610, 34.021229, 56.387085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478565, 0.084196, 0.874006,
		-0.435929, -0.886835, -0.153263,
		0.762195, -0.454351, 0.461111,
		27.872269, 33.884922, 56.525417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084682, 33.548298, 56.622166>,  <27.338732, 34.202969, 56.202641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084682, 33.548298, 56.622166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420975, 33.703392, 56.773342>,  <27.622749, 33.796448, 56.864048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420975, 33.703392, 56.773342>,  <27.084682, 33.548298, 56.622166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420975, 33.703392, 56.773342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436464, 0.072230, 0.896818,
		0.320426, -0.918938, 0.229956,
		0.840730, 0.387732, 0.377939,
		27.673193, 33.819710, 56.886723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027824, 33.227783, 57.269016>,  <27.084682, 33.548298, 56.622166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027824, 33.227783, 57.269016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314003, 33.505756, 57.297874>,  <27.485710, 33.672539, 57.315189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314003, 33.505756, 57.297874>,  <27.027824, 33.227783, 57.269016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314003, 33.505756, 57.297874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321764, 0.236068, 0.916919,
		0.620167, -0.679219, 0.392498,
		0.715445, 0.694934, 0.072147,
		27.528637, 33.714237, 57.319519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440910, 33.142326, 57.896156>,  <27.027824, 33.227783, 57.269016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440910, 33.142326, 57.896156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491970, 33.527798, 57.802319>,  <27.522606, 33.759079, 57.746017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491970, 33.527798, 57.802319>,  <27.440910, 33.142326, 57.896156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491970, 33.527798, 57.802319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272367, 0.261493, 0.925979,
		0.953688, -0.054307, 0.295854,
		0.127651, 0.963677, -0.234591,
		27.530266, 33.816902, 57.731941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566717, 33.408413, 58.571827>,  <27.440910, 33.142326, 57.896156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566717, 33.408413, 58.571827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482998, 33.725826, 58.343266>,  <27.432766, 33.916275, 58.206131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482998, 33.725826, 58.343266>,  <27.566717, 33.408413, 58.571827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482998, 33.725826, 58.343266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448785, 0.441216, 0.777123,
		0.868785, 0.419086, 0.263780,
		-0.209297, 0.793534, -0.571401,
		27.420208, 33.963886, 58.171844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833134, 33.984055, 58.885727>,  <27.566717, 33.408413, 58.571827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833134, 33.984055, 58.885727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561806, 34.129578, 58.630379>,  <27.399008, 34.216892, 58.477169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561806, 34.129578, 58.630379>,  <27.833134, 33.984055, 58.885727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561806, 34.129578, 58.630379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510797, 0.391046, 0.765617,
		0.528173, 0.845414, -0.079421,
		-0.678321, 0.363810, -0.638375,
		27.358309, 34.238720, 58.438866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644171, 34.630054, 59.010918>,  <27.833134, 33.984055, 58.885727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644171, 34.630054, 59.010918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313726, 34.549847, 58.800266>,  <27.115459, 34.501724, 58.673878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313726, 34.549847, 58.800266>,  <27.644171, 34.630054, 59.010918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313726, 34.549847, 58.800266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562579, 0.347102, 0.750350,
		0.032335, 0.916140, -0.399551,
		-0.826111, -0.200517, -0.526625,
		27.065893, 34.489693, 58.642281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314072, 35.247005, 58.990818>,  <27.644171, 34.630054, 59.010918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314072, 35.247005, 58.990818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015724, 35.000595, 58.889477>,  <26.836716, 34.852749, 58.828674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015724, 35.000595, 58.889477>,  <27.314072, 35.247005, 58.990818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015724, 35.000595, 58.889477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557300, 0.368827, 0.743897,
		-0.364820, 0.696043, -0.618410,
		-0.745871, -0.616028, -0.253349,
		26.791964, 34.815788, 58.813473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722740, 35.653919, 58.925938>,  <27.314072, 35.247005, 58.990818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722740, 35.653919, 58.925938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.578962, 35.284336, 58.978233>,  <26.492695, 35.062584, 59.009613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.578962, 35.284336, 58.978233>,  <26.722740, 35.653919, 58.925938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.578962, 35.284336, 58.978233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734910, 0.366630, 0.570518,
		-0.575071, 0.108985, -0.810812,
		-0.359446, -0.923961, 0.130744,
		26.471128, 35.007149, 59.017456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941055, 35.690033, 59.000389>,  <26.722740, 35.653919, 58.925938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941055, 35.690033, 59.000389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023102, 35.331158, 59.156841>,  <26.072329, 35.115833, 59.250713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023102, 35.331158, 59.156841>,  <25.941055, 35.690033, 59.000389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023102, 35.331158, 59.156841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525243, 0.236306, 0.817484,
		-0.825862, -0.373118, -0.422771,
		0.205115, -0.897186, 0.391133,
		26.084637, 35.062000, 59.274181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388189, 35.501881, 59.297836>,  <25.941055, 35.690033, 59.000389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388189, 35.501881, 59.297836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628531, 35.232162, 59.469559>,  <25.772736, 35.070332, 59.572590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628531, 35.232162, 59.469559>,  <25.388189, 35.501881, 59.297836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.628531, 35.232162, 59.469559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489220, 0.114532, 0.864608,
		-0.632172, -0.729523, -0.261063,
		0.600851, -0.674298, 0.429301,
		25.808786, 35.029873, 59.598351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.945885, 34.994640, 59.704082>,  <25.388189, 35.501881, 59.297836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.945885, 34.994640, 59.704082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.313587, 34.989296, 59.861454>,  <25.534208, 34.986088, 59.955879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.313587, 34.989296, 59.861454>,  <24.945885, 34.994640, 59.704082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.313587, 34.989296, 59.861454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393561, -0.008816, 0.919256,
		-0.008816, -0.999872, -0.013363,
		-0.919256, 0.013363, -0.393433,
		25.589363, 34.985287, 59.979485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.778843, 34.547905, 60.274666>,  <24.945885, 34.994640, 59.704082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.778843, 34.547905, 60.274666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126326, 34.731457, 60.349258>,  <25.334814, 34.841587, 60.394016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126326, 34.731457, 60.349258>,  <24.778843, 34.547905, 60.274666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.126326, 34.731457, 60.349258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187849, -0.043156, 0.981249,
		0.458328, -0.887447, 0.048711,
		0.868705, 0.458884, 0.186486,
		25.386938, 34.869122, 60.405205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.015480, 34.222240, 60.936764>,  <24.778843, 34.547905, 60.274666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.015480, 34.222240, 60.936764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202398, 34.574051, 60.900852>,  <25.314550, 34.785137, 60.879307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.202398, 34.574051, 60.900852>,  <25.015480, 34.222240, 60.936764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.202398, 34.574051, 60.900852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059384, 0.070090, 0.995771,
		0.882104, -0.470652, -0.019477,
		0.467297, 0.879531, -0.089776,
		25.342587, 34.837910, 60.873920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576469, 34.250481, 61.427242>,  <25.015480, 34.222240, 60.936764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.576469, 34.250481, 61.427242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494585, 34.637352, 61.367031>,  <25.445454, 34.869476, 61.330902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494585, 34.637352, 61.367031>,  <25.576469, 34.250481, 61.427242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.494585, 34.637352, 61.367031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123763, 0.126976, 0.984154,
		0.970966, 0.220098, 0.093708,
		-0.204712, 0.967178, -0.150530,
		25.433172, 34.927505, 61.321873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957613, 34.800976, 61.782719>,  <25.576469, 34.250481, 61.427242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957613, 34.800976, 61.782719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597317, 34.955311, 61.702919>,  <25.381140, 35.047913, 61.655041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.597317, 34.955311, 61.702919>,  <25.957613, 34.800976, 61.782719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.597317, 34.955311, 61.702919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191565, 0.059343, 0.979684,
		0.389836, 0.920657, 0.020460,
		-0.900739, 0.385836, -0.199500,
		25.327095, 35.071060, 61.643070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793978, 35.396442, 62.193733>,  <25.957613, 34.800976, 61.782719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793978, 35.396442, 62.193733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.453461, 35.222431, 62.076397>,  <25.249151, 35.118023, 62.005993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.453461, 35.222431, 62.076397>,  <25.793978, 35.396442, 62.193733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.453461, 35.222431, 62.076397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260852, -0.134190, 0.956007,
		-0.455255, 0.890361, 0.000756,
		-0.851293, -0.435030, -0.293343,
		25.198072, 35.091923, 61.988396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.203848, 35.309288, 62.809593>,  <25.793978, 35.396442, 62.193733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.203848, 35.309288, 62.809593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445875, 35.148487, 63.084484>,  <26.591091, 35.052006, 63.249420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445875, 35.148487, 63.084484>,  <26.203848, 35.309288, 62.809593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445875, 35.148487, 63.084484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624349, -0.296037, -0.722877,
		0.494045, 0.866461, 0.071868,
		0.605069, -0.402004, 0.687230,
		26.627396, 35.027885, 63.290653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888689, 35.581989, 62.511692>,  <26.203848, 35.309288, 62.809593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888689, 35.581989, 62.511692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945110, 35.281269, 62.769341>,  <26.978964, 35.100838, 62.923931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945110, 35.281269, 62.769341>,  <26.888689, 35.581989, 62.511692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945110, 35.281269, 62.769341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585930, -0.461042, -0.666428,
		0.797991, 0.471413, 0.375474,
		0.141053, -0.751804, 0.644123,
		26.987427, 35.055729, 62.962578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600695, 35.530998, 62.549789>,  <26.888689, 35.581989, 62.511692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600695, 35.530998, 62.549789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458025, 35.173637, 62.659046>,  <27.372423, 34.959221, 62.724602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458025, 35.173637, 62.659046>,  <27.600695, 35.530998, 62.549789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458025, 35.173637, 62.659046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463381, -0.423058, -0.778653,
		0.811210, -0.151156, 0.564882,
		-0.356676, -0.893406, 0.273146,
		27.351023, 34.905617, 62.740990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165312, 35.038734, 62.813694>,  <27.600695, 35.530998, 62.549789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165312, 35.038734, 62.813694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868774, 34.786915, 62.720673>,  <27.690851, 34.635822, 62.664860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868774, 34.786915, 62.720673>,  <28.165312, 35.038734, 62.813694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868774, 34.786915, 62.720673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641895, -0.563975, -0.519523,
		0.195913, -0.534417, 0.822203,
		-0.741343, -0.629548, -0.232550,
		27.646372, 34.598049, 62.650909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508114, 34.387993, 62.701084>,  <28.165312, 35.038734, 62.813694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508114, 34.387993, 62.701084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149258, 34.333836, 62.532890>,  <27.933945, 34.301342, 62.431973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149258, 34.333836, 62.532890>,  <28.508114, 34.387993, 62.701084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149258, 34.333836, 62.532890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409769, -0.610636, -0.677652,
		-0.165011, -0.780251, 0.603308,
		-0.897140, -0.135396, -0.420484,
		27.880116, 34.293217, 62.406746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548120, 33.680035, 62.486240>,  <28.508114, 34.387993, 62.701084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548120, 33.680035, 62.486240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245819, 33.830875, 62.272087>,  <28.064438, 33.921379, 62.143597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245819, 33.830875, 62.272087>,  <28.548120, 33.680035, 62.486240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245819, 33.830875, 62.272087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328362, -0.489130, -0.808041,
		-0.566583, -0.786478, 0.245836,
		-0.755753, 0.377099, -0.535382,
		28.019093, 33.944004, 62.111473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357956, 33.222549, 61.947533>,  <28.548120, 33.680035, 62.486240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357956, 33.222549, 61.947533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218433, 33.562149, 61.788773>,  <28.134720, 33.765911, 61.693516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218433, 33.562149, 61.788773>,  <28.357956, 33.222549, 61.947533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218433, 33.562149, 61.788773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456231, -0.216105, -0.863222,
		-0.818649, -0.482176, -0.311962,
		-0.348808, 0.849002, -0.396898,
		28.113791, 33.816849, 61.669704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006039, 33.000622, 61.414505>,  <28.357956, 33.222549, 61.947533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006039, 33.000622, 61.414505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113527, 33.376709, 61.330814>,  <28.178020, 33.602360, 61.280598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113527, 33.376709, 61.330814>,  <28.006039, 33.000622, 61.414505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113527, 33.376709, 61.330814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304404, -0.288984, -0.907649,
		-0.913853, 0.180214, -0.363863,
		0.268722, 0.940219, -0.209231,
		28.194143, 33.658775, 61.268044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971945, 33.014214, 60.642658>,  <28.006039, 33.000622, 61.414505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971945, 33.014214, 60.642658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184168, 33.344769, 60.718121>,  <28.311501, 33.543102, 60.763397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184168, 33.344769, 60.718121>,  <27.971945, 33.014214, 60.642658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184168, 33.344769, 60.718121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403487, -0.050479, -0.913592,
		-0.745459, 0.560833, -0.360220,
		0.530556, 0.826389, 0.188658,
		28.343334, 33.592686, 60.774719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905134, 33.439144, 60.036015>,  <27.971945, 33.014214, 60.642658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905134, 33.439144, 60.036015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236378, 33.565323, 60.221371>,  <28.435123, 33.641029, 60.332584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236378, 33.565323, 60.221371>,  <27.905134, 33.439144, 60.036015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236378, 33.565323, 60.221371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504894, -0.060571, -0.861053,
		-0.243547, 0.947009, -0.209425,
		0.828110, 0.315444, 0.463388,
		28.484810, 33.659958, 60.360386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.152224, 34.065880, 59.703434>,  <27.905134, 33.439144, 60.036015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.152224, 34.065880, 59.703434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453560, 33.879223, 59.888790>,  <28.634361, 33.767231, 60.000004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453560, 33.879223, 59.888790>,  <28.152224, 34.065880, 59.703434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453560, 33.879223, 59.888790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499677, -0.051956, -0.864652,
		0.427555, 0.882921, 0.194028,
		0.753339, -0.466638, 0.463390,
		28.679562, 33.739231, 60.027805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719688, 34.334721, 59.450245>,  <28.152224, 34.065880, 59.703434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719688, 34.334721, 59.450245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864893, 33.987320, 59.585255>,  <28.952017, 33.778877, 59.666260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864893, 33.987320, 59.585255>,  <28.719688, 34.334721, 59.450245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864893, 33.987320, 59.585255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648229, -0.024817, -0.761041,
		0.669344, 0.495060, 0.553980,
		0.363013, -0.868504, 0.337523,
		28.973797, 33.726768, 59.686512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405306, 34.413944, 59.293850>,  <28.719688, 34.334721, 59.450245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405306, 34.413944, 59.293850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371462, 34.018650, 59.344803>,  <29.351154, 33.781471, 59.375374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371462, 34.018650, 59.344803>,  <29.405306, 34.413944, 59.293850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371462, 34.018650, 59.344803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570839, -0.152857, -0.806708,
		0.816691, 0.004457, 0.577059,
		-0.084612, -0.988238, 0.127381,
		29.346079, 33.722179, 59.383018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077131, 34.089725, 59.379173>,  <29.405306, 34.413944, 59.293850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077131, 34.089725, 59.379173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833126, 33.792213, 59.269871>,  <29.686722, 33.613705, 59.204288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833126, 33.792213, 59.269871>,  <30.077131, 34.089725, 59.379173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833126, 33.792213, 59.269871> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623490, -0.237721, -0.744814,
		0.489022, -0.624720, 0.608755,
		-0.610014, -0.743784, -0.273256,
		29.650122, 33.569077, 59.187893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483824, 33.530472, 59.205639>,  <30.077131, 34.089725, 59.379173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483824, 33.530472, 59.205639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141588, 33.431938, 59.023521>,  <29.936247, 33.372818, 58.914249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141588, 33.431938, 59.023521>,  <30.483824, 33.530472, 59.205639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141588, 33.431938, 59.023521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509058, -0.240710, -0.826389,
		0.093972, -0.938818, 0.331345,
		-0.855588, -0.246331, -0.455293,
		29.884912, 33.358040, 58.886932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604740, 32.829277, 58.836731>,  <30.483824, 33.530472, 59.205639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604740, 32.829277, 58.836731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264460, 32.923008, 58.648518>,  <30.060291, 32.979248, 58.535591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264460, 32.923008, 58.648518>,  <30.604740, 32.829277, 58.836731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264460, 32.923008, 58.648518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384363, -0.333317, -0.860909,
		-0.358577, -0.913229, 0.193482,
		-0.850698, 0.234335, -0.470531,
		30.009249, 32.993305, 58.507359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265158, 32.179104, 58.429634>,  <30.604740, 32.829277, 58.836731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265158, 32.179104, 58.429634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116856, 32.516636, 58.274464>,  <30.027874, 32.719154, 58.181362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116856, 32.516636, 58.274464>,  <30.265158, 32.179104, 58.429634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116856, 32.516636, 58.274464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298570, -0.287226, -0.910141,
		-0.879429, -0.453263, -0.145453,
		-0.370755, 0.843833, -0.387926,
		30.005629, 32.769787, 58.158085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966316, 31.928127, 57.805954>,  <30.265158, 32.179104, 58.429634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966316, 31.928127, 57.805954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034422, 32.322079, 57.793129>,  <30.075285, 32.558449, 57.785435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034422, 32.322079, 57.793129>,  <29.966316, 31.928127, 57.805954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034422, 32.322079, 57.793129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409327, -0.100288, -0.906859,
		-0.896360, 0.141282, -0.420212,
		0.170265, 0.984876, -0.032063,
		30.085501, 32.617542, 57.783508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889866, 32.098228, 57.096718>,  <29.966316, 31.928127, 57.805954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889866, 32.098228, 57.096718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088907, 32.418221, 57.230835>,  <30.208332, 32.610218, 57.311306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088907, 32.418221, 57.230835>,  <29.889866, 32.098228, 57.096718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088907, 32.418221, 57.230835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508661, 0.043984, -0.859842,
		-0.702607, 0.598408, -0.385034,
		0.497602, 0.799983, 0.335291,
		30.238188, 32.658215, 57.331421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978844, 32.647472, 56.514973>,  <29.889866, 32.098228, 57.096718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978844, 32.647472, 56.514973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272438, 32.748627, 56.767105>,  <30.448595, 32.809319, 56.918385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272438, 32.748627, 56.767105>,  <29.978844, 32.647472, 56.514973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272438, 32.748627, 56.767105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623254, 0.117951, -0.773073,
		-0.269847, 0.960279, -0.071037,
		0.733987, 0.252886, 0.630326,
		30.492634, 32.824493, 56.956203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.218998, 36.254135, 52.444633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.382690, 35.931831, 52.273384>,  <47.480904, 35.738449, 52.170635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.382690, 35.931831, 52.273384>,  <47.218998, 36.254135, 52.444633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.382690, 35.931831, 52.273384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776218, -0.060800, -0.627527,
		0.479603, 0.589119, -0.650323,
		0.409228, -0.805755, -0.428125,
		47.505459, 35.690105, 52.144947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.252571, 36.309597, 51.623848>,  <47.218998, 36.254135, 52.444633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.252571, 36.309597, 51.623848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.266335, 35.921551, 51.719925>,  <47.274593, 35.688725, 51.777573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.266335, 35.921551, 51.719925>,  <47.252571, 36.309597, 51.623848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.266335, 35.921551, 51.719925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736714, -0.187023, -0.649827,
		0.675329, -0.154597, -0.721132,
		0.034407, -0.970115, 0.240195,
		47.276657, 35.630516, 51.791985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.420258, 35.968403, 51.034710>,  <47.252571, 36.309597, 51.623848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.420258, 35.968403, 51.034710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.203903, 35.745121, 51.286373>,  <47.074089, 35.611153, 51.437370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.203903, 35.745121, 51.286373>,  <47.420258, 35.968403, 51.034710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.203903, 35.745121, 51.286373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719797, -0.079776, -0.689585,
		0.435123, -0.825858, -0.358645,
		-0.540888, -0.558206, 0.629163,
		47.041637, 35.577660, 51.475121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.944500, 35.608334, 50.651661>,  <47.420258, 35.968403, 51.034710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.944500, 35.608334, 50.651661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.784832, 35.499565, 51.001911>,  <46.689034, 35.434303, 51.212063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.784832, 35.499565, 51.001911>,  <46.944500, 35.608334, 50.651661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.784832, 35.499565, 51.001911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863344, -0.210082, -0.458806,
		0.308712, -0.939109, -0.150902,
		-0.399167, -0.271919, 0.875629,
		46.665081, 35.417988, 51.264599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.483368, 35.064808, 50.591431>,  <46.944500, 35.608334, 50.651661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.483368, 35.064808, 50.591431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.362633, 35.207935, 50.944893>,  <46.290192, 35.293812, 51.156971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.362633, 35.207935, 50.944893>,  <46.483368, 35.064808, 50.591431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.362633, 35.207935, 50.944893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951632, -0.057338, -0.301842,
		-0.057338, -0.932027, 0.357823,
		0.301842, -0.357823, -0.883659,
		46.272079, 35.315281, 51.209991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.985447, 34.605053, 50.925270>,  <46.483368, 35.064808, 50.591431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.985447, 34.605053, 50.925270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.918251, 34.960220, 51.096561>,  <45.877934, 35.173321, 51.199337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.918251, 34.960220, 51.096561>,  <45.985447, 34.605053, 50.925270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.918251, 34.960220, 51.096561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982609, -0.115952, -0.145036,
		-0.079126, -0.445148, 0.891954,
		-0.167987, 0.887917, 0.428232,
		45.867855, 35.226597, 51.225029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.345200, 34.532764, 51.373165>,  <45.985447, 34.605053, 50.925270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.345200, 34.532764, 51.373165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.371571, 34.919960, 51.276291>,  <45.387394, 35.152275, 51.218166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.371571, 34.919960, 51.276291>,  <45.345200, 34.532764, 51.373165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.371571, 34.919960, 51.276291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997732, 0.067252, -0.002800,
		0.013577, 0.241822, 0.970226,
		0.065927, 0.967988, -0.242186,
		45.391350, 35.210358, 51.203636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.841095, 34.834988, 51.724918>,  <45.345200, 34.532764, 51.373165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.841095, 34.834988, 51.724918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.918674, 35.140701, 51.478909>,  <44.965221, 35.324131, 51.331303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.918674, 35.140701, 51.478909>,  <44.841095, 34.834988, 51.724918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.918674, 35.140701, 51.478909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957044, 0.285143, 0.052543,
		0.215527, 0.578413, 0.786757,
		0.193947, 0.764285, -0.615022,
		44.976860, 35.369987, 51.294403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446510, 35.429577, 51.992222>,  <44.841095, 34.834988, 51.724918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446510, 35.429577, 51.992222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.526535, 35.472141, 51.602627>,  <44.574551, 35.497681, 51.368870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.526535, 35.472141, 51.602627>,  <44.446510, 35.429577, 51.992222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526535, 35.472141, 51.602627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941645, 0.295533, -0.161134,
		0.270699, 0.949388, 0.159325,
		0.200065, 0.106408, -0.973987,
		44.586555, 35.504063, 51.310432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168568, 36.067619, 51.797279>,  <44.446510, 35.429577, 51.992222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168568, 36.067619, 51.797279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.212269, 35.860901, 51.457638>,  <44.238487, 35.736870, 51.253853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.212269, 35.860901, 51.457638>,  <44.168568, 36.067619, 51.797279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212269, 35.860901, 51.457638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874781, 0.355668, -0.329026,
		0.472040, 0.778730, -0.413227,
		0.109251, -0.516797, -0.849108,
		44.245045, 35.705860, 51.202904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.810612, 36.470764, 51.286537>,  <44.168568, 36.067619, 51.797279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.810612, 36.470764, 51.286537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.861103, 36.107059, 51.127888>,  <43.891399, 35.888836, 51.032700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.861103, 36.107059, 51.127888>,  <43.810612, 36.470764, 51.286537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861103, 36.107059, 51.127888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912833, 0.050048, -0.405253,
		0.388332, 0.413203, -0.823688,
		0.126228, -0.909262, -0.396621,
		43.898972, 35.834282, 51.008900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534332, 36.523201, 50.558594>,  <43.810612, 36.470764, 51.286537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534332, 36.523201, 50.558594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.515343, 36.136105, 50.657574>,  <43.503948, 35.903847, 50.716961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.515343, 36.136105, 50.657574>,  <43.534332, 36.523201, 50.558594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515343, 36.136105, 50.657574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953163, -0.030190, -0.300947,
		0.298708, -0.250145, -0.920978,
		-0.047476, -0.967738, 0.247447,
		43.501099, 35.845783, 50.731808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107021, 36.212326, 50.084469>,  <43.534332, 36.523201, 50.558594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107021, 36.212326, 50.084469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.110985, 35.945206, 50.382179>,  <43.113365, 35.784935, 50.560806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.110985, 35.945206, 50.382179>,  <43.107021, 36.212326, 50.084469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110985, 35.945206, 50.382179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962333, -0.208605, -0.174351,
		0.271691, -0.714515, -0.644711,
		0.009913, -0.667797, 0.744278,
		43.113960, 35.744865, 50.605461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819077, 35.565445, 49.899036>,  <43.107021, 36.212326, 50.084469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819077, 35.565445, 49.899036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.762897, 35.539406, 50.294216>,  <42.729191, 35.523785, 50.531322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.762897, 35.539406, 50.294216>,  <42.819077, 35.565445, 49.899036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762897, 35.539406, 50.294216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938416, -0.309392, -0.153795,
		0.315674, -0.948704, -0.017634,
		-0.140450, -0.065097, 0.987945,
		42.720760, 35.519878, 50.590599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582722, 34.799347, 49.984257>,  <42.819077, 35.565445, 49.899036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582722, 34.799347, 49.984257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.503521, 35.022621, 50.306557>,  <42.456001, 35.156586, 50.499935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.503521, 35.022621, 50.306557>,  <42.582722, 34.799347, 49.984257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.503521, 35.022621, 50.306557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974811, -0.198228, -0.102221,
		0.102663, -0.805690, 0.583373,
		-0.197999, 0.558184, 0.805746,
		42.444122, 35.190075, 50.548279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954773, 34.468731, 50.298996>,  <42.582722, 34.799347, 49.984257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954773, 34.468731, 50.298996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.950935, 34.805779, 50.514366>,  <41.948631, 35.008007, 50.643589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.950935, 34.805779, 50.514366>,  <41.954773, 34.468731, 50.298996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950935, 34.805779, 50.514366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997082, -0.048843, 0.058667,
		0.075732, -0.536293, 0.840627,
		-0.009596, 0.842617, 0.538427,
		41.948055, 35.058563, 50.675896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633957, 34.347252, 50.921623>,  <41.954773, 34.468731, 50.298996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633957, 34.347252, 50.921623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.611290, 34.739548, 50.846855>,  <41.597691, 34.974926, 50.801994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.611290, 34.739548, 50.846855>,  <41.633957, 34.347252, 50.921623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611290, 34.739548, 50.846855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998174, -0.059572, -0.009974,
		-0.020918, 0.186016, 0.982324,
		-0.056664, 0.980739, -0.186922,
		41.594292, 35.033768, 50.790779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095451, 34.548351, 51.438820>,  <41.633957, 34.347252, 50.921623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095451, 34.548351, 51.438820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.126423, 34.807453, 51.135658>,  <41.145008, 34.962914, 50.953762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.126423, 34.807453, 51.135658>,  <41.095451, 34.548351, 51.438820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126423, 34.807453, 51.135658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992258, -0.023965, -0.121858,
		-0.097098, 0.761469, 0.640888,
		0.077432, 0.647758, -0.757901,
		41.149651, 35.001781, 50.908287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473091, 34.951904, 51.600605>,  <41.095451, 34.548351, 51.438820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473091, 34.951904, 51.600605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.589058, 35.016861, 51.223335>,  <40.658638, 35.055836, 50.996975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.589058, 35.016861, 51.223335>,  <40.473091, 34.951904, 51.600605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589058, 35.016861, 51.223335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951486, -0.057239, -0.302322,
		-0.103081, 0.985065, 0.137920,
		0.289913, 0.162392, -0.943175,
		40.676033, 35.065578, 50.940384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951553, 35.340424, 51.354527>,  <40.473091, 34.951904, 51.600605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951553, 35.340424, 51.354527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.127689, 35.185555, 51.030502>,  <40.233372, 35.092632, 50.836086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.127689, 35.185555, 51.030502>,  <39.951553, 35.340424, 51.354527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127689, 35.185555, 51.030502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889499, -0.065484, -0.452221,
		0.122043, 0.919677, -0.373229,
		0.440338, -0.387177, -0.810059,
		40.259792, 35.069401, 50.787483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630516, 35.777893, 50.814407>,  <39.951553, 35.340424, 51.354527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630516, 35.777893, 50.814407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.784256, 35.433956, 50.679985>,  <39.876499, 35.227592, 50.599331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.784256, 35.433956, 50.679985>,  <39.630516, 35.777893, 50.814407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784256, 35.433956, 50.679985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828458, -0.160632, -0.536522,
		0.407345, 0.484625, -0.774086,
		0.384354, -0.859847, -0.336058,
		39.899563, 35.176003, 50.579166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508293, 35.474037, 50.023266>,  <39.630516, 35.777893, 50.814407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508293, 35.474037, 50.023266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.506592, 35.163731, 50.275665>,  <39.505573, 34.977547, 50.427105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.506592, 35.163731, 50.275665>,  <39.508293, 35.474037, 50.023266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506592, 35.163731, 50.275665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889363, -0.285555, -0.357060,
		0.457182, -0.562709, -0.688726,
		-0.004252, -0.775769, 0.631003,
		39.505318, 34.931000, 50.464966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155628, 34.922852, 49.597309>,  <39.508293, 35.474037, 50.023266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155628, 34.922852, 49.597309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.157364, 34.758888, 49.962154>,  <39.158405, 34.660511, 50.181061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.157364, 34.758888, 49.962154>,  <39.155628, 34.922852, 49.597309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157364, 34.758888, 49.962154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941057, -0.310176, -0.134917,
		0.338220, -0.857766, -0.387097,
		0.004340, -0.409912, 0.912115,
		39.158665, 34.635914, 50.235790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622765, 34.597195, 49.135811>,  <39.155628, 34.922852, 49.597309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622765, 34.597195, 49.135811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.546432, 34.306618, 49.399891>,  <38.500633, 34.132271, 49.558338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.546432, 34.306618, 49.399891>,  <38.622765, 34.597195, 49.135811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546432, 34.306618, 49.399891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891782, 0.409382, 0.192695,
		-0.410256, -0.551980, -0.725953,
		-0.190828, -0.726446, 0.660198,
		38.489185, 34.088684, 49.597950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003521, 34.245319, 49.116573>,  <38.622765, 34.597195, 49.135811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003521, 34.245319, 49.116573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.091709, 34.181076, 49.501408>,  <38.144623, 34.142532, 49.732307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.091709, 34.181076, 49.501408>,  <38.003521, 34.245319, 49.116573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091709, 34.181076, 49.501408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885277, 0.381138, 0.266492,
		-0.409486, -0.910461, -0.058153,
		0.220466, -0.160606, 0.962081,
		38.157848, 34.132893, 49.790031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927044, 33.938560, 48.558197>,  <38.003521, 34.245319, 49.116573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927044, 33.938560, 48.558197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.082214, 33.625534, 48.363419>,  <38.175316, 33.437717, 48.246552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.082214, 33.625534, 48.363419>,  <37.927044, 33.938560, 48.558197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082214, 33.625534, 48.363419> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736563, 0.054381, -0.674179,
		0.554068, 0.620192, -0.555311,
		0.387922, -0.782563, -0.486942,
		38.198589, 33.390766, 48.217335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858017, 34.133560, 47.989357>,  <37.927044, 33.938560, 48.558197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858017, 34.133560, 47.989357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.933239, 33.749134, 47.908382>,  <37.978371, 33.518478, 47.859798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.933239, 33.749134, 47.908382>,  <37.858017, 34.133560, 47.989357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933239, 33.749134, 47.908382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686689, 0.018707, -0.726710,
		0.702205, 0.275676, -0.656437,
		0.188056, -0.961069, -0.202440,
		37.989655, 33.460812, 47.847649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814274, 34.120579, 47.327152>,  <37.858017, 34.133560, 47.989357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814274, 34.120579, 47.327152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.766632, 33.732296, 47.410625>,  <37.738045, 33.499329, 47.460709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.766632, 33.732296, 47.410625>,  <37.814274, 34.120579, 47.327152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766632, 33.732296, 47.410625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823748, -0.020727, -0.566577,
		0.554304, -0.239384, -0.797147,
		-0.119107, -0.970704, 0.208681,
		37.730900, 33.441086, 47.473228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664288, 33.723820, 46.619698>,  <37.814274, 34.120579, 47.327152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664288, 33.723820, 46.619698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503345, 33.484238, 46.896645>,  <37.406780, 33.340488, 47.062813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503345, 33.484238, 46.896645>,  <37.664288, 33.723820, 46.619698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503345, 33.484238, 46.896645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821209, -0.098138, -0.562125,
		0.404635, -0.794746, -0.452382,
		-0.402351, -0.598956, 0.692363,
		37.382641, 33.304550, 47.104355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442551, 33.193378, 46.233391>,  <37.664288, 33.723820, 46.619698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442551, 33.193378, 46.233391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.245316, 33.147110, 46.578293>,  <37.126976, 33.119350, 46.785236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.245316, 33.147110, 46.578293>,  <37.442551, 33.193378, 46.233391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245316, 33.147110, 46.578293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840272, -0.193479, -0.506467,
		0.225410, -0.974262, -0.001791,
		-0.493086, -0.115668, 0.862257,
		37.097389, 33.112411, 46.836971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044991, 32.570133, 46.228558>,  <37.442551, 33.193378, 46.233391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044991, 32.570133, 46.228558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.875404, 32.817177, 46.493530>,  <36.773651, 32.965401, 46.652515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.875404, 32.817177, 46.493530>,  <37.044991, 32.570133, 46.228558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875404, 32.817177, 46.493530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896911, -0.184790, -0.401752,
		-0.125713, -0.764472, 0.632281,
		-0.423966, 0.617605, 0.662432,
		36.748215, 33.002460, 46.692261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389359, 32.256332, 46.520370>,  <37.044991, 32.570133, 46.228558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389359, 32.256332, 46.520370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.327751, 32.645885, 46.587093>,  <36.290787, 32.879620, 46.627125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.327751, 32.645885, 46.587093>,  <36.389359, 32.256332, 46.520370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327751, 32.645885, 46.587093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957692, -0.105607, -0.267719,
		-0.243113, -0.200982, 0.948948,
		-0.154022, 0.973886, 0.166804,
		36.281544, 32.938049, 46.637135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684418, 32.346737, 46.818409>,  <36.389359, 32.256332, 46.520370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684418, 32.346737, 46.818409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.756084, 32.733231, 46.744343>,  <35.799084, 32.965126, 46.699902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.756084, 32.733231, 46.744343>,  <35.684418, 32.346737, 46.818409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756084, 32.733231, 46.744343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982495, 0.165958, -0.084630,
		-0.051043, 0.197088, 0.979056,
		0.179162, 0.966237, -0.185167,
		35.809834, 33.023102, 46.688793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092495, 32.724659, 47.185730>,  <35.684418, 32.346737, 46.818409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092495, 32.724659, 47.185730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.222607, 32.995640, 46.921833>,  <35.300674, 33.158226, 46.763496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.222607, 32.995640, 46.921833>,  <35.092495, 32.724659, 47.185730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222607, 32.995640, 46.921833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929337, 0.357930, -0.090664,
		0.174721, 0.642612, 0.746005,
		0.325279, 0.677448, -0.659741,
		35.320190, 33.198875, 46.723911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802193, 33.377216, 47.358280>,  <35.092495, 32.724659, 47.185730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802193, 33.377216, 47.358280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.887199, 33.429192, 46.970890>,  <34.938206, 33.460377, 46.738457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.887199, 33.429192, 46.970890>,  <34.802193, 33.377216, 47.358280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887199, 33.429192, 46.970890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962971, 0.196115, -0.185000,
		0.165894, 0.971933, 0.166809,
		0.212522, 0.129942, -0.968478,
		34.950954, 33.468174, 46.680347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.915602, 32.169315, 51.677071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.254900, 32.325302, 51.820408>,  <30.458479, 32.418896, 51.906410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.254900, 32.325302, 51.820408>,  <29.915602, 32.169315, 51.677071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254900, 32.325302, 51.820408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233115, 0.332621, -0.913795,
		-0.475542, 0.858655, 0.191237,
		0.848244, 0.389967, 0.358341,
		30.509373, 32.442291, 51.927910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915136, 32.703934, 51.226040>,  <29.915602, 32.169315, 51.677071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915136, 32.703934, 51.226040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.280689, 32.684589, 51.387276>,  <30.500021, 32.672981, 51.484016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.280689, 32.684589, 51.387276>,  <29.915136, 32.703934, 51.226040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280689, 32.684589, 51.387276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405254, 0.168109, -0.898615,
		-0.024304, 0.984582, 0.173230,
		0.913881, -0.048362, 0.403091,
		30.554853, 32.670082, 51.508202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323725, 33.248592, 50.994507>,  <29.915136, 32.703934, 51.226040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323725, 33.248592, 50.994507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.586275, 32.966354, 51.101318>,  <30.743805, 32.797012, 51.165405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.586275, 32.966354, 51.101318>,  <30.323725, 33.248592, 50.994507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586275, 32.966354, 51.101318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441318, 0.072035, -0.894455,
		0.611888, 0.704944, 0.358674,
		0.656377, -0.705596, 0.267027,
		30.783188, 32.754677, 51.181427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939047, 33.583317, 50.825558>,  <30.323725, 33.248592, 50.994507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939047, 33.583317, 50.825558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.017637, 33.191322, 50.838352>,  <31.064793, 32.956127, 50.846027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.017637, 33.191322, 50.838352>,  <30.939047, 33.583317, 50.825558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017637, 33.191322, 50.838352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411174, 0.052734, -0.910030,
		0.890131, 0.191952, 0.413306,
		0.196477, -0.979987, 0.031986,
		31.076580, 32.897327, 50.847946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573950, 33.483906, 50.677563>,  <30.939047, 33.583317, 50.825558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573950, 33.483906, 50.677563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.442890, 33.110996, 50.616219>,  <31.364254, 32.887253, 50.579411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.442890, 33.110996, 50.616219>,  <31.573950, 33.483906, 50.677563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442890, 33.110996, 50.616219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555572, -0.058819, -0.829385,
		0.764190, -0.356950, 0.537215,
		-0.327648, -0.932270, -0.153362,
		31.344595, 32.831314, 50.570210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184536, 33.144474, 50.611794>,  <31.573950, 33.483906, 50.677563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184536, 33.144474, 50.611794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.900579, 32.923717, 50.436764>,  <31.730206, 32.791264, 50.331745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.900579, 32.923717, 50.436764>,  <32.184536, 33.144474, 50.611794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900579, 32.923717, 50.436764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552235, -0.050540, -0.832155,
		0.437145, -0.832383, 0.340652,
		-0.709888, -0.551892, -0.437578,
		31.687613, 32.758148, 50.305489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559978, 32.657204, 50.332603>,  <32.184536, 33.144474, 50.611794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559978, 32.657204, 50.332603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.210827, 32.631805, 50.139088>,  <32.001335, 32.616566, 50.022980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.210827, 32.631805, 50.139088>,  <32.559978, 32.657204, 50.332603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210827, 32.631805, 50.139088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483331, 0.023410, -0.875125,
		0.066892, -0.997708, 0.010255,
		-0.872879, -0.063495, -0.483788,
		31.948963, 32.612759, 49.993950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776913, 32.343563, 49.714336>,  <32.559978, 32.657204, 50.332603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776913, 32.343563, 49.714336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.407234, 32.480118, 49.645859>,  <32.185425, 32.562050, 49.604771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.407234, 32.480118, 49.645859>,  <32.776913, 32.343563, 49.714336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407234, 32.480118, 49.645859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229815, 0.139114, -0.963241,
		-0.305024, -0.929570, -0.207025,
		-0.924200, 0.341389, -0.171196,
		32.129974, 32.582535, 49.594501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699490, 32.041279, 49.044109>,  <32.776913, 32.343563, 49.714336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699490, 32.041279, 49.044109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.434742, 32.338463, 49.083973>,  <32.275894, 32.516773, 49.107891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.434742, 32.338463, 49.083973>,  <32.699490, 32.041279, 49.044109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434742, 32.338463, 49.083973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122713, 0.238536, -0.963349,
		-0.739505, -0.625384, -0.249052,
		-0.661871, 0.742964, 0.099656,
		32.236179, 32.561352, 49.113869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361038, 31.941025, 48.468819>,  <32.699490, 32.041279, 49.044109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361038, 31.941025, 48.468819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.312469, 32.313091, 48.607410>,  <32.283329, 32.536331, 48.690563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.312469, 32.313091, 48.607410>,  <32.361038, 31.941025, 48.468819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312469, 32.313091, 48.607410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271591, 0.366873, -0.889743,
		-0.954723, -0.013934, -0.297172,
		-0.121422, 0.930167, 0.346478,
		32.276043, 32.592140, 48.711353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056423, 32.255169, 47.915520>,  <32.361038, 31.941025, 48.468819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056423, 32.255169, 47.915520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.203022, 32.569767, 48.114361>,  <32.290981, 32.758526, 48.233665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.203022, 32.569767, 48.114361>,  <32.056423, 32.255169, 47.915520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203022, 32.569767, 48.114361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390357, 0.355001, -0.849468,
		-0.844572, 0.505373, -0.176907,
		0.366496, 0.786494, 0.497100,
		32.312969, 32.805714, 48.263493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819948, 32.981922, 47.551815>,  <32.056423, 32.255169, 47.915520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819948, 32.981922, 47.551815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.153236, 33.071087, 47.754223>,  <32.353210, 33.124584, 47.875668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.153236, 33.071087, 47.754223>,  <31.819948, 32.981922, 47.551815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153236, 33.071087, 47.754223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341767, 0.511783, -0.788209,
		-0.434671, 0.829692, 0.350245,
		0.833220, 0.222910, 0.506019,
		32.403202, 33.137959, 47.906029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989992, 33.490059, 46.962772>,  <31.819948, 32.981922, 47.551815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989992, 33.490059, 46.962772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.328007, 33.696995, 46.908710>,  <32.530815, 33.821156, 46.876274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.328007, 33.696995, 46.908710>,  <31.989992, 33.490059, 46.962772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328007, 33.696995, 46.908710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297597, 0.665040, 0.684950,
		0.444236, -0.538588, 0.715945,
		0.845039, 0.517343, -0.135153,
		32.581520, 33.852200, 46.868164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320614, 33.657791, 47.551651>,  <31.989992, 33.490059, 46.962772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320614, 33.657791, 47.551651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.409855, 33.941353, 47.284016>,  <32.463402, 34.111488, 47.123436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.409855, 33.941353, 47.284016>,  <32.320614, 33.657791, 47.551651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409855, 33.941353, 47.284016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460128, 0.681695, 0.568836,
		0.859364, 0.180956, 0.478277,
		0.223104, 0.708906, -0.669087,
		32.476788, 34.154026, 47.083290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503960, 34.217384, 47.953812>,  <32.320614, 33.657791, 47.551651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503960, 34.217384, 47.953812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.408127, 34.378979, 47.600677>,  <32.350628, 34.475933, 47.388798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.408127, 34.378979, 47.600677>,  <32.503960, 34.217384, 47.953812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408127, 34.378979, 47.600677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493348, 0.732512, 0.469078,
		0.836187, 0.547927, 0.023809,
		-0.239580, 0.403983, -0.882836,
		32.336254, 34.500175, 47.335827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755589, 34.961395, 47.975094>,  <32.503960, 34.217384, 47.953812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755589, 34.961395, 47.975094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.468834, 34.920200, 47.699276>,  <32.296783, 34.895481, 47.533787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.468834, 34.920200, 47.699276>,  <32.755589, 34.961395, 47.975094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468834, 34.920200, 47.699276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482705, 0.786961, 0.384302,
		0.503063, 0.608346, -0.613874,
		-0.716884, -0.102992, -0.689543,
		32.253769, 34.889301, 47.492413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659996, 35.598167, 47.819260>,  <32.755589, 34.961395, 47.975094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659996, 35.598167, 47.819260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.332142, 35.458740, 47.637402>,  <32.135429, 35.375084, 47.528286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.332142, 35.458740, 47.637402>,  <32.659996, 35.598167, 47.819260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332142, 35.458740, 47.637402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466669, 0.866549, 0.176952,
		0.332293, 0.357205, -0.872918,
		-0.819634, -0.348564, -0.454645,
		32.086250, 35.354172, 47.501007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380959, 36.049866, 47.265755>,  <32.659996, 35.598167, 47.819260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380959, 36.049866, 47.265755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.083984, 35.826694, 47.414082>,  <31.905800, 35.692791, 47.503078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.083984, 35.826694, 47.414082>,  <32.380959, 36.049866, 47.265755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083984, 35.826694, 47.414082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562493, 0.819813, 0.107279,
		-0.363852, -0.128933, -0.922490,
		-0.742437, -0.557927, 0.370815,
		31.861254, 35.659317, 47.525326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655720, 36.390060, 47.038750>,  <32.380959, 36.049866, 47.265755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655720, 36.390060, 47.038750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.580009, 36.156910, 47.354832>,  <31.534584, 36.017017, 47.544483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.580009, 36.156910, 47.354832>,  <31.655720, 36.390060, 47.038750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580009, 36.156910, 47.354832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503075, 0.748674, 0.431744,
		-0.843262, -0.315815, -0.434938,
		-0.189275, -0.582879, 0.790207,
		31.523228, 35.982048, 47.591892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971563, 36.561359, 47.175579>,  <31.655720, 36.390060, 47.038750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971563, 36.561359, 47.175579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.101265, 36.388653, 47.512253>,  <31.179087, 36.285027, 47.714256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.101265, 36.388653, 47.512253>,  <30.971563, 36.561359, 47.175579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101265, 36.388653, 47.512253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478685, 0.692542, 0.539673,
		-0.815916, -0.577894, 0.017879,
		0.324256, -0.431769, 0.841685,
		31.198542, 36.259121, 47.764759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354538, 36.411613, 47.584358>,  <30.971563, 36.561359, 47.175579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354538, 36.411613, 47.584358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.687140, 36.446648, 47.803787>,  <30.886702, 36.467667, 47.935444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.687140, 36.446648, 47.803787>,  <30.354538, 36.411613, 47.584358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687140, 36.446648, 47.803787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504808, 0.531323, 0.680342,
		-0.231879, -0.842630, 0.486011,
		0.831506, 0.087585, 0.548569,
		30.936592, 36.472923, 47.968357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073484, 36.290539, 48.079285>,  <30.354538, 36.411613, 47.584358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073484, 36.290539, 48.079285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.420935, 36.445927, 48.202301>,  <30.629404, 36.539162, 48.276112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.420935, 36.445927, 48.202301>,  <30.073484, 36.290539, 48.079285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420935, 36.445927, 48.202301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447541, 0.348832, 0.823422,
		0.212599, -0.852880, 0.476862,
		0.868625, 0.388474, 0.307537,
		30.681522, 36.562469, 48.294563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104046, 36.237377, 48.800507>,  <30.073484, 36.290539, 48.079285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104046, 36.237377, 48.800507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.394138, 36.510178, 48.762741>,  <30.568193, 36.673859, 48.740082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.394138, 36.510178, 48.762741>,  <30.104046, 36.237377, 48.800507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394138, 36.510178, 48.762741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367969, 0.499837, 0.784068,
		0.581926, -0.533890, 0.613452,
		0.725232, 0.682001, -0.094413,
		30.611708, 36.714779, 48.734417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476923, 36.254959, 49.447777>,  <30.104046, 36.237377, 48.800507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476923, 36.254959, 49.447777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.528841, 36.608860, 49.268730>,  <30.559992, 36.821201, 49.161301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.528841, 36.608860, 49.268730>,  <30.476923, 36.254959, 49.447777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528841, 36.608860, 49.268730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159919, 0.464204, 0.871172,
		0.978560, -0.041490, 0.201740,
		0.129793, 0.884756, -0.447617,
		30.567780, 36.874287, 49.134445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049726, 36.615040, 49.815838>,  <30.476923, 36.254959, 49.447777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049726, 36.615040, 49.815838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.822180, 36.883427, 49.625599>,  <30.685652, 37.044460, 49.511456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.822180, 36.883427, 49.625599>,  <31.049726, 36.615040, 49.815838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822180, 36.883427, 49.625599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309770, 0.360887, 0.879661,
		0.761862, 0.647734, 0.002551,
		-0.568866, 0.670971, -0.475595,
		30.651520, 37.084717, 49.482922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146164, 37.152386, 50.223618>,  <31.049726, 36.615040, 49.815838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146164, 37.152386, 50.223618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.823322, 37.222431, 49.998077>,  <30.629618, 37.264458, 49.862755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.823322, 37.222431, 49.998077>,  <31.146164, 37.152386, 50.223618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823322, 37.222431, 49.998077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493539, 0.324045, 0.807102,
		0.324045, 0.929693, -0.175113,
		-0.807102, 0.175113, -0.563846,
		30.581192, 37.274963, 49.828922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067833, 37.852238, 50.357609>,  <31.146164, 37.152386, 50.223618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067833, 37.852238, 50.357609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.722431, 37.693108, 50.233612>,  <30.515190, 37.597630, 50.159214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.722431, 37.693108, 50.233612>,  <31.067833, 37.852238, 50.357609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722431, 37.693108, 50.233612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459527, 0.367322, 0.808647,
		-0.207834, 0.840719, -0.499996,
		-0.863504, -0.397826, -0.309991,
		30.463381, 37.573761, 50.140614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564705, 38.109558, 50.814606>,  <31.067833, 37.852238, 50.357609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564705, 38.109558, 50.814606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.299690, 37.848690, 50.667248>,  <30.140682, 37.692169, 50.578831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.299690, 37.848690, 50.667248>,  <30.564705, 38.109558, 50.814606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299690, 37.848690, 50.667248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580196, 0.135770, 0.803081,
		-0.473731, 0.745812, -0.468341,
		-0.662535, -0.652174, -0.368398,
		30.100929, 37.653038, 50.556728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557356, 38.836834, 50.864037>,  <30.564705, 38.109558, 50.814606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557356, 38.836834, 50.864037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.858322, 38.941498, 51.105831>,  <31.038902, 39.004295, 51.250908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.858322, 38.941498, 51.105831>,  <30.557356, 38.836834, 50.864037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858322, 38.941498, 51.105831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551375, 0.251867, -0.795329,
		-0.360353, 0.931718, 0.045239,
		0.752417, 0.261656, 0.604487,
		31.084047, 39.019993, 51.287178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855600, 39.504284, 50.609112>,  <30.557356, 38.836834, 50.864037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855600, 39.504284, 50.609112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.141943, 39.366322, 50.851959>,  <31.313747, 39.283543, 50.997665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.141943, 39.366322, 50.851959>,  <30.855600, 39.504284, 50.609112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141943, 39.366322, 50.851959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689575, 0.212589, -0.692309,
		0.109714, 0.914246, 0.390021,
		0.715856, -0.344905, 0.607117,
		31.356699, 39.262852, 51.034096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294870, 39.994576, 50.628986>,  <30.855600, 39.504284, 50.609112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294870, 39.994576, 50.628986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.493093, 39.664986, 50.738884>,  <31.612026, 39.467232, 50.804821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.493093, 39.664986, 50.738884>,  <31.294870, 39.994576, 50.628986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493093, 39.664986, 50.738884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783853, 0.287996, -0.550120,
		0.374162, 0.487974, 0.788596,
		0.495557, -0.823978, 0.274743,
		31.641760, 39.417793, 50.821308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908472, 40.269794, 50.582306>,  <31.294870, 39.994576, 50.628986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908472, 40.269794, 50.582306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.973856, 39.877800, 50.627735>,  <32.013088, 39.642601, 50.654991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.973856, 39.877800, 50.627735>,  <31.908472, 40.269794, 50.582306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973856, 39.877800, 50.627735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912427, 0.106396, -0.395166,
		0.375175, 0.168220, 0.911562,
		0.163461, -0.979991, 0.113572,
		32.022896, 39.583801, 50.661808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676910, 40.225658, 50.690060>,  <31.908472, 40.269794, 50.582306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676910, 40.225658, 50.690060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.578232, 39.849136, 50.597897>,  <32.519024, 39.623222, 50.542599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.578232, 39.849136, 50.597897>,  <32.676910, 40.225658, 50.690060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578232, 39.849136, 50.597897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836062, -0.086501, -0.541773,
		0.490043, -0.326287, 0.808329,
		-0.246695, -0.941305, -0.230407,
		32.504223, 39.566746, 50.528774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300648, 39.849190, 50.716240>,  <32.676910, 40.225658, 50.690060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300648, 39.849190, 50.716240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.058010, 39.621353, 50.494392>,  <32.912426, 39.484650, 50.361282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.058010, 39.621353, 50.494392>,  <33.300648, 39.849190, 50.716240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058010, 39.621353, 50.494392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730019, -0.122820, -0.672300,
		0.314818, -0.812699, 0.490316,
		-0.606598, -0.569592, -0.554620,
		32.876030, 39.450474, 50.328007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619331, 39.289310, 50.577454>,  <33.300648, 39.849190, 50.716240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619331, 39.289310, 50.577454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.364246, 39.314964, 50.270412>,  <33.211197, 39.330357, 50.086189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.364246, 39.314964, 50.270412>,  <33.619331, 39.289310, 50.577454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364246, 39.314964, 50.270412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741789, -0.217379, -0.634426,
		-0.207546, -0.973978, 0.091053,
		-0.637710, 0.064131, -0.767602,
		33.172935, 39.334206, 50.040131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845932, 38.720131, 50.268803>,  <33.619331, 39.289310, 50.577454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845932, 38.720131, 50.268803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.598778, 38.894192, 50.006855>,  <33.450485, 38.998627, 49.849686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.598778, 38.894192, 50.006855>,  <33.845932, 38.720131, 50.268803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598778, 38.894192, 50.006855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586543, -0.299570, -0.752479,
		-0.523621, -0.849059, -0.070133,
		-0.617889, 0.435151, -0.654871,
		33.413410, 39.024738, 49.810394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652111, 38.251217, 49.661648>,  <33.845932, 38.720131, 50.268803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652111, 38.251217, 49.661648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.630177, 38.620750, 49.510109>,  <33.617016, 38.842468, 49.419186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.630177, 38.620750, 49.510109>,  <33.652111, 38.251217, 49.661648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630177, 38.620750, 49.510109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709626, -0.230866, -0.665681,
		-0.702441, -0.305346, -0.642916,
		-0.054835, 0.923831, -0.378852,
		33.613728, 38.897900, 49.396454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527950, 38.138847, 48.881500>,  <33.652111, 38.251217, 49.661648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527950, 38.138847, 48.881500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703587, 38.490799, 48.954182>,  <33.808968, 38.701969, 48.997791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703587, 38.490799, 48.954182>,  <33.527950, 38.138847, 48.881500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703587, 38.490799, 48.954182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670909, -0.186604, -0.717677,
		-0.597560, 0.437035, -0.672252,
		0.439095, 0.879875, 0.181703,
		33.835316, 38.754761, 49.008694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780521, 38.369019, 48.167755>,  <33.527950, 38.138847, 48.881500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780521, 38.369019, 48.167755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.977814, 38.605507, 48.423000>,  <34.096188, 38.747398, 48.576145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.977814, 38.605507, 48.423000>,  <33.780521, 38.369019, 48.167755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977814, 38.605507, 48.423000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860494, -0.224005, -0.457572,
		-0.127586, 0.774777, -0.619227,
		0.493226, 0.591221, 0.638111,
		34.125782, 38.782875, 48.614433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235081, 38.876862, 47.767277>,  <33.780521, 38.369019, 48.167755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235081, 38.876862, 47.767277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384853, 38.793316, 48.128647>,  <34.474716, 38.743187, 48.345470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.384853, 38.793316, 48.128647>,  <34.235081, 38.876862, 47.767277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384853, 38.793316, 48.128647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849982, -0.312077, -0.424427,
		0.370587, 0.926813, 0.060682,
		0.374427, -0.208866, 0.903426,
		34.497181, 38.730656, 48.399673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.854534, 38.239853, 56.675922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.568073, 38.512703, 56.616817>,  <29.396196, 38.676411, 56.581352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.568073, 38.512703, 56.616817>,  <29.854534, 38.239853, 56.675922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568073, 38.512703, 56.616817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195172, -0.007547, -0.980740,
		-0.670099, -0.731200, -0.127726,
		-0.716153, 0.682122, -0.147767,
		29.353228, 38.717339, 56.572487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392874, 37.963520, 56.191135>,  <29.854534, 38.239853, 56.675922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392874, 37.963520, 56.191135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.348532, 38.360348, 56.167416>,  <29.321926, 38.598442, 56.153183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.348532, 38.360348, 56.167416>,  <29.392874, 37.963520, 56.191135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348532, 38.360348, 56.167416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232734, -0.032092, -0.972011,
		-0.966202, -0.121554, -0.227330,
		-0.110856, 0.992066, -0.059297,
		29.315275, 38.657967, 56.149628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962307, 38.153362, 55.589333>,  <29.392874, 37.963520, 56.191135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962307, 38.153362, 55.589333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142855, 38.501106, 55.669807>,  <29.251184, 38.709751, 55.718094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142855, 38.501106, 55.669807>,  <28.962307, 38.153362, 55.589333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142855, 38.501106, 55.669807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007717, 0.221648, -0.975096,
		-0.892303, 0.441682, 0.093337,
		0.451370, 0.869361, 0.201186,
		29.278265, 38.761913, 55.730164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766560, 38.533489, 55.067211>,  <28.962307, 38.153362, 55.589333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766560, 38.533489, 55.067211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.048815, 38.781013, 55.205284>,  <29.218168, 38.929527, 55.288128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.048815, 38.781013, 55.205284>,  <28.766560, 38.533489, 55.067211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048815, 38.781013, 55.205284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190424, 0.303617, -0.933571,
		-0.682503, 0.724496, 0.096408,
		0.705640, 0.618807, 0.345181,
		29.260508, 38.966656, 55.308838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680206, 39.219170, 54.824692>,  <28.766560, 38.533489, 55.067211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680206, 39.219170, 54.824692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063000, 39.147625, 54.916077>,  <29.292675, 39.104698, 54.970909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.063000, 39.147625, 54.916077>,  <28.680206, 39.219170, 54.824692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.063000, 39.147625, 54.916077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249996, 0.108620, -0.962135,
		0.147269, 0.977861, 0.148661,
		0.956982, -0.178857, 0.228465,
		29.350094, 39.093967, 54.984615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001335, 39.640377, 54.406738>,  <28.680206, 39.219170, 54.824692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001335, 39.640377, 54.406738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.312305, 39.421646, 54.531055>,  <29.498888, 39.290409, 54.605644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.312305, 39.421646, 54.531055>,  <29.001335, 39.640377, 54.406738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312305, 39.421646, 54.531055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351634, -0.031827, -0.935596,
		0.521502, 0.836639, 0.167540,
		0.777424, -0.546829, 0.310789,
		29.545532, 39.257599, 54.624290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575174, 39.978069, 54.027950>,  <29.001335, 39.640377, 54.406738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575174, 39.978069, 54.027950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.712923, 39.618675, 54.136864>,  <29.795572, 39.403038, 54.202213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.712923, 39.618675, 54.136864>,  <29.575174, 39.978069, 54.027950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712923, 39.618675, 54.136864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595671, -0.015069, -0.803087,
		0.725662, 0.438754, 0.530009,
		0.344371, -0.898481, 0.272288,
		29.816235, 39.349133, 54.218552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297476, 40.082424, 54.045700>,  <29.575174, 39.978069, 54.027950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297476, 40.082424, 54.045700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.179213, 39.710621, 53.957520>,  <30.108253, 39.487537, 53.904610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.179213, 39.710621, 53.957520>,  <30.297476, 40.082424, 54.045700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179213, 39.710621, 53.957520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638215, -0.020481, -0.769586,
		0.710822, -0.368232, 0.599281,
		-0.295660, -0.929508, -0.220453,
		30.090515, 39.431767, 53.891384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884655, 39.768311, 53.906082>,  <30.297476, 40.082424, 54.045700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884655, 39.768311, 53.906082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.629026, 39.490055, 53.774830>,  <30.475649, 39.323101, 53.696079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.629026, 39.490055, 53.774830>,  <30.884655, 39.768311, 53.906082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629026, 39.490055, 53.774830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546627, -0.110649, -0.830034,
		0.541097, -0.709819, 0.450968,
		-0.639073, -0.695639, -0.328134,
		30.437305, 39.281364, 53.676388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303360, 39.330578, 53.546684>,  <30.884655, 39.768311, 53.906082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303360, 39.330578, 53.546684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.938301, 39.234005, 53.414753>,  <30.719265, 39.176060, 53.335594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.938301, 39.234005, 53.414753>,  <31.303360, 39.330578, 53.546684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938301, 39.234005, 53.414753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372382, -0.158383, -0.914465,
		0.168543, -0.957405, 0.234454,
		-0.912647, -0.241433, -0.329826,
		30.664507, 39.161575, 53.315804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377153, 38.719604, 53.133808>,  <31.303360, 39.330578, 53.546684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377153, 38.719604, 53.133808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.031824, 38.880070, 53.011333>,  <30.824627, 38.976349, 52.937851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.031824, 38.880070, 53.011333>,  <31.377153, 38.719604, 53.133808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031824, 38.880070, 53.011333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315521, -0.044441, -0.947877,
		-0.393858, -0.914929, -0.088208,
		-0.863321, 0.401160, -0.306183,
		30.772827, 39.000416, 52.919479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120213, 38.318752, 52.723717>,  <31.377153, 38.719604, 53.133808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120213, 38.318752, 52.723717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.955173, 38.672081, 52.634720>,  <30.856150, 38.884079, 52.581322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.955173, 38.672081, 52.634720>,  <31.120213, 38.318752, 52.723717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955173, 38.672081, 52.634720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361649, -0.065333, -0.930022,
		-0.836045, -0.464192, -0.292497,
		-0.412600, 0.883322, -0.222496,
		30.831394, 38.937077, 52.567970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751770, 38.168198, 52.111877>,  <31.120213, 38.318752, 52.723717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751770, 38.168198, 52.111877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.770306, 38.567627, 52.122482>,  <30.781427, 38.807285, 52.128845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.770306, 38.567627, 52.122482>,  <30.751770, 38.168198, 52.111877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770306, 38.567627, 52.122482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232838, 0.015010, -0.972400,
		-0.971411, 0.051235, -0.231811,
		0.046341, 0.998574, 0.026510,
		30.784208, 38.867199, 52.130436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417574, 38.336124, 51.513481>,  <30.751770, 38.168198, 52.111877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417574, 38.336124, 51.513481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.663080, 38.631229, 51.625904>,  <30.810385, 38.808292, 51.693359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.663080, 38.631229, 51.625904>,  <30.417574, 38.336124, 51.513481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663080, 38.631229, 51.625904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367252, 0.048335, -0.928865,
		-0.698870, 0.673324, -0.241279,
		0.613765, 0.737766, 0.281059,
		30.847210, 38.852558, 51.710220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927937, 38.415737, 50.850185>,  <30.417574, 38.336124, 51.513481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927937, 38.415737, 50.850185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.841515, 38.025970, 50.825428>,  <29.789661, 37.792110, 50.810574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.841515, 38.025970, 50.825428>,  <29.927937, 38.415737, 50.850185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841515, 38.025970, 50.825428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789705, 0.137120, 0.597967,
		-0.574183, 0.178068, -0.799128,
		-0.216055, -0.974418, -0.061889,
		29.776699, 37.733646, 50.806862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171560, 38.420448, 50.786938>,  <29.927937, 38.415737, 50.850185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171560, 38.420448, 50.786938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.303295, 38.064873, 50.914268>,  <29.382336, 37.851528, 50.990665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.303295, 38.064873, 50.914268>,  <29.171560, 38.420448, 50.786938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303295, 38.064873, 50.914268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758451, -0.048253, 0.649941,
		-0.562396, -0.455482, -0.690106,
		0.329337, -0.888936, 0.318324,
		29.402096, 37.798191, 51.009766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588482, 38.132141, 50.994347>,  <29.171560, 38.420448, 50.786938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588482, 38.132141, 50.994347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847307, 37.882515, 51.169548>,  <29.002604, 37.732738, 51.274670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.847307, 37.882515, 51.169548>,  <28.588482, 38.132141, 50.994347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847307, 37.882515, 51.169548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650568, -0.152352, 0.744010,
		-0.397579, -0.766375, -0.504578,
		0.647064, -0.624065, 0.438007,
		29.041428, 37.695297, 51.300949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156019, 37.515331, 51.130020>,  <28.588482, 38.132141, 50.994347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156019, 37.515331, 51.130020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478928, 37.513390, 51.366085>,  <28.672672, 37.512226, 51.507725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478928, 37.513390, 51.366085>,  <28.156019, 37.515331, 51.130020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478928, 37.513390, 51.366085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572842, -0.247069, 0.781543,
		0.142018, -0.968986, -0.202231,
		0.807269, -0.004853, 0.590163,
		28.721107, 37.511932, 51.543133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034098, 36.969799, 51.497070>,  <28.156019, 37.515331, 51.130020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034098, 36.969799, 51.497070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296375, 37.193523, 51.699944>,  <28.453743, 37.327759, 51.821667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296375, 37.193523, 51.699944>,  <28.034098, 36.969799, 51.497070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296375, 37.193523, 51.699944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518511, -0.154718, 0.840957,
		0.548826, -0.814393, 0.188560,
		0.655696, 0.559309, 0.507184,
		28.493084, 37.361317, 51.852100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976471, 36.654381, 52.205353>,  <28.034098, 36.969799, 51.497070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976471, 36.654381, 52.205353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.163921, 37.005539, 52.244724>,  <28.276392, 37.216232, 52.268349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.163921, 37.005539, 52.244724>,  <27.976471, 36.654381, 52.205353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163921, 37.005539, 52.244724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415247, 0.120562, 0.901684,
		0.779717, -0.463427, 0.421042,
		0.468626, 0.877895, 0.098433,
		28.304510, 37.268906, 52.274254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441978, 36.668072, 52.797333>,  <27.976471, 36.654381, 52.205353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441978, 36.668072, 52.797333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293812, 37.033401, 52.729656>,  <28.204912, 37.252602, 52.689049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.293812, 37.033401, 52.729656>,  <28.441978, 36.668072, 52.797333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293812, 37.033401, 52.729656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398301, 0.008374, 0.917216,
		0.839135, 0.407141, 0.360678,
		-0.370416, 0.913327, -0.169191,
		28.182688, 37.307400, 52.678898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506922, 36.952583, 53.450909>,  <28.441978, 36.668072, 52.797333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506922, 36.952583, 53.450909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.276051, 37.209785, 53.249550>,  <28.137527, 37.364105, 53.128735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.276051, 37.209785, 53.249550>,  <28.506922, 36.952583, 53.450909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276051, 37.209785, 53.249550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429938, 0.284818, 0.856756,
		0.694275, 0.710931, 0.112061,
		-0.577178, 0.643004, -0.503399,
		28.102898, 37.402687, 53.098530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642643, 37.577805, 53.768238>,  <28.506922, 36.952583, 53.450909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642643, 37.577805, 53.768238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.285849, 37.601151, 53.588928>,  <28.071772, 37.615158, 53.481342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.285849, 37.601151, 53.588928>,  <28.642643, 37.577805, 53.768238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285849, 37.601151, 53.588928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406636, 0.329634, 0.852050,
		0.197497, 0.942303, -0.270296,
		-0.891988, 0.058365, -0.448276,
		28.018251, 37.618660, 53.454445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429420, 38.269279, 53.829426>,  <28.642643, 37.577805, 53.768238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429420, 38.269279, 53.829426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.146868, 37.988781, 53.790894>,  <27.977337, 37.820480, 53.767773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.146868, 37.988781, 53.790894>,  <28.429420, 38.269279, 53.829426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146868, 37.988781, 53.790894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450216, 0.340092, 0.825617,
		-0.546198, 0.626571, -0.555946,
		-0.706380, -0.701246, -0.096335,
		27.934954, 37.778408, 53.761993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904192, 38.637390, 54.040623>,  <28.429420, 38.269279, 53.829426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904192, 38.637390, 54.040623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.788496, 38.254631, 54.051121>,  <27.719078, 38.024975, 54.057419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.788496, 38.254631, 54.051121>,  <27.904192, 38.637390, 54.040623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788496, 38.254631, 54.051121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702617, 0.230842, 0.673083,
		-0.650130, 0.176243, -0.739101,
		-0.289241, -0.956896, 0.026246,
		27.701723, 37.967564, 54.058994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222700, 38.666187, 54.362427>,  <27.904192, 38.637390, 54.040623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222700, 38.666187, 54.362427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.291687, 38.273720, 54.397217>,  <27.333078, 38.038239, 54.418091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.291687, 38.273720, 54.397217>,  <27.222700, 38.666187, 54.362427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291687, 38.273720, 54.397217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517952, -0.015232, 0.855274,
		-0.837843, -0.192552, -0.510825,
		0.172466, -0.981168, 0.086971,
		27.343428, 37.979370, 54.423309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598890, 38.346462, 54.520290>,  <27.222700, 38.666187, 54.362427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598890, 38.346462, 54.520290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.864035, 38.081974, 54.660809>,  <27.023121, 37.923283, 54.745117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.864035, 38.081974, 54.660809>,  <26.598890, 38.346462, 54.520290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864035, 38.081974, 54.660809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479458, -0.014480, 0.877445,
		-0.575098, -0.750052, -0.326626,
		0.662859, -0.661220, 0.351291,
		27.062893, 37.883610, 54.766197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193739, 37.821857, 54.771946>,  <26.598890, 38.346462, 54.520290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193739, 37.821857, 54.771946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.554020, 37.796043, 54.943794>,  <26.770187, 37.780556, 55.046902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.554020, 37.796043, 54.943794>,  <26.193739, 37.821857, 54.771946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554020, 37.796043, 54.943794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430817, -0.005261, 0.902424,
		-0.055990, -0.997901, -0.032548,
		0.900701, -0.064549, 0.429618,
		26.824230, 37.776684, 55.072681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.770878, 33.766685, 59.644993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.591492, 33.960262, 59.344414>,  <32.483860, 34.076408, 59.164066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.591492, 33.960262, 59.344414>,  <32.770878, 33.766685, 59.644993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591492, 33.960262, 59.344414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831293, -0.083041, -0.549597,
		-0.328374, -0.871151, -0.365056,
		-0.448467, 0.483942, -0.751450,
		32.456951, 34.105446, 59.118980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135395, 33.490784, 59.082958>,  <32.770878, 33.766685, 59.644993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135395, 33.490784, 59.082958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.941498, 33.810436, 58.940742>,  <32.825161, 34.002228, 58.855412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.941498, 33.810436, 58.940742>,  <33.135395, 33.490784, 59.082958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941498, 33.810436, 58.940742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702546, 0.113602, -0.702512,
		-0.521011, -0.590322, -0.616496,
		-0.484744, 0.799133, -0.355541,
		32.796074, 34.050175, 58.834080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095737, 33.392014, 58.397118>,  <33.135395, 33.490784, 59.082958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095737, 33.392014, 58.397118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.065945, 33.787872, 58.446194>,  <33.048069, 34.025387, 58.475639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.065945, 33.787872, 58.446194>,  <33.095737, 33.392014, 58.397118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065945, 33.787872, 58.446194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738506, 0.137418, -0.660094,
		-0.670120, 0.041440, -0.741095,
		-0.074485, 0.989646, 0.122690,
		33.043598, 34.084766, 58.483002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113018, 33.598782, 57.715542>,  <33.095737, 33.392014, 58.397118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113018, 33.598782, 57.715542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202496, 33.918892, 57.938084>,  <33.256184, 34.110958, 58.071609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202496, 33.918892, 57.938084>,  <33.113018, 33.598782, 57.715542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202496, 33.918892, 57.938084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769495, 0.205328, -0.604746,
		-0.598196, 0.563388, -0.569874,
		0.223695, 0.800271, 0.556351,
		33.269604, 34.158974, 58.104988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898369, 34.179832, 57.270847>,  <33.113018, 33.598782, 57.715542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898369, 34.179832, 57.270847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.160557, 34.322662, 57.537037>,  <33.317871, 34.408360, 57.696751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.160557, 34.322662, 57.537037>,  <32.898369, 34.179832, 57.270847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160557, 34.322662, 57.537037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684694, 0.090842, -0.723147,
		-0.318672, 0.929647, -0.184944,
		0.655471, 0.357076, 0.665473,
		33.357197, 34.429787, 57.736679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091248, 34.794991, 56.881893>,  <32.898369, 34.179832, 57.270847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091248, 34.794991, 56.881893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.378872, 34.709660, 57.146450>,  <33.551445, 34.658463, 57.305183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.378872, 34.709660, 57.146450>,  <33.091248, 34.794991, 56.881893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378872, 34.709660, 57.146450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692693, 0.143436, -0.706826,
		0.055918, 0.966394, 0.250910,
		0.719062, -0.213328, 0.661393,
		33.594589, 34.645660, 57.344868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612991, 35.262943, 56.749428>,  <33.091248, 34.794991, 56.881893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612991, 35.262943, 56.749428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.805111, 34.987736, 56.967030>,  <33.920383, 34.822613, 57.097591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.805111, 34.987736, 56.967030>,  <33.612991, 35.262943, 56.749428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805111, 34.987736, 56.967030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793714, 0.076982, -0.603401,
		0.373272, 0.721598, 0.583064,
		0.480299, -0.688019, 0.544007,
		33.949200, 34.781330, 57.130230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295967, 35.465794, 56.924351>,  <33.612991, 35.262943, 56.749428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295967, 35.465794, 56.924351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283371, 35.065990, 56.924244>,  <34.275814, 34.826111, 56.924179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283371, 35.065990, 56.924244>,  <34.295967, 35.465794, 56.924351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283371, 35.065990, 56.924244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730677, -0.022838, -0.682341,
		0.681996, -0.021679, 0.731034,
		-0.031487, -0.999504, -0.000265,
		34.273926, 34.766140, 56.924164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014893, 35.205288, 57.039024>,  <34.295967, 35.465794, 56.924351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014893, 35.205288, 57.039024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796463, 34.915756, 56.870327>,  <34.665405, 34.742039, 56.769108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796463, 34.915756, 56.870327>,  <35.014893, 35.205288, 57.039024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796463, 34.915756, 56.870327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698204, -0.115040, -0.706595,
		0.462936, -0.680322, 0.568201,
		-0.546078, -0.723829, -0.421747,
		34.632641, 34.698608, 56.743801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551662, 34.684071, 56.694901>,  <35.014893, 35.205288, 57.039024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551662, 34.684071, 56.694901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.201572, 34.595379, 56.522938>,  <34.991520, 34.542164, 56.419758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.201572, 34.595379, 56.522938>,  <35.551662, 34.684071, 56.694901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201572, 34.595379, 56.522938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478292, -0.263885, -0.837616,
		0.072281, -0.938722, 0.337011,
		-0.875221, -0.221733, -0.429910,
		34.939007, 34.528858, 56.393967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771393, 34.190918, 56.383682>,  <35.551662, 34.684071, 56.694901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771393, 34.190918, 56.383682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424129, 34.295395, 56.214882>,  <35.215771, 34.358082, 56.113602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424129, 34.295395, 56.214882>,  <35.771393, 34.190918, 56.383682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424129, 34.295395, 56.214882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335189, -0.318498, -0.886683,
		-0.365998, -0.911230, 0.188959,
		-0.868156, 0.261188, -0.422004,
		35.163685, 34.373753, 56.088280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616570, 33.567799, 56.018318>,  <35.771393, 34.190918, 56.383682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616570, 33.567799, 56.018318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.390202, 33.841999, 55.835091>,  <35.254383, 34.006519, 55.725155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.390202, 33.841999, 55.835091>,  <35.616570, 33.567799, 56.018318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390202, 33.841999, 55.835091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406349, -0.251517, -0.878419,
		-0.717369, -0.683247, -0.136215,
		-0.565917, 0.685502, -0.458067,
		35.220425, 34.047649, 55.697670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315495, 33.158691, 55.402481>,  <35.616570, 33.567799, 56.018318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315495, 33.158691, 55.402481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279209, 33.551819, 55.338184>,  <35.257439, 33.787697, 55.299606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.279209, 33.551819, 55.338184>,  <35.315495, 33.158691, 55.402481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279209, 33.551819, 55.338184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216560, -0.138081, -0.966455,
		-0.972045, -0.122482, -0.200314,
		-0.090714, 0.982818, -0.160746,
		35.251995, 33.846664, 55.289959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652241, 33.292244, 55.008739>,  <35.315495, 33.158691, 55.402481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652241, 33.292244, 55.008739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.936367, 33.566471, 54.944923>,  <35.106842, 33.731007, 54.906635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.936367, 33.566471, 54.944923>,  <34.652241, 33.292244, 55.008739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936367, 33.566471, 54.944923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041562, -0.267108, -0.962770,
		-0.702658, 0.677237, -0.218224,
		0.710312, 0.685568, -0.159539,
		35.149460, 33.772141, 54.897060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064869, 33.125225, 54.622097>,  <34.652241, 33.292244, 55.008739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064869, 33.125225, 54.622097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.772739, 33.027676, 54.366863>,  <33.597462, 32.969147, 54.213722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.772739, 33.027676, 54.366863>,  <34.064869, 33.125225, 54.622097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772739, 33.027676, 54.366863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674749, 0.111948, 0.729507,
		-0.106476, 0.963324, -0.246313,
		-0.730326, -0.243875, -0.638082,
		33.553642, 32.954514, 54.175438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499062, 33.559170, 54.813858>,  <34.064869, 33.125225, 54.622097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499062, 33.559170, 54.813858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313404, 33.269012, 54.610535>,  <33.202011, 33.094917, 54.488541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313404, 33.269012, 54.610535>,  <33.499062, 33.559170, 54.813858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313404, 33.269012, 54.610535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590324, -0.174517, 0.788074,
		-0.660371, 0.665846, -0.347215,
		-0.464142, -0.725391, -0.508311,
		33.174160, 33.051395, 54.458042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785099, 33.743027, 54.827969>,  <33.499062, 33.559170, 54.813858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785099, 33.743027, 54.827969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787281, 33.355385, 54.729328>,  <32.788589, 33.122799, 54.670143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787281, 33.355385, 54.729328>,  <32.785099, 33.743027, 54.827969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787281, 33.355385, 54.729328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708161, -0.177853, 0.683283,
		-0.706030, 0.170906, -0.687250,
		0.005453, -0.969102, -0.246599,
		32.788918, 33.064655, 54.655350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081718, 33.563557, 54.641487>,  <32.785099, 33.743027, 54.827969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081718, 33.563557, 54.641487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291912, 33.248566, 54.770325>,  <32.418030, 33.059570, 54.847626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.291912, 33.248566, 54.770325>,  <32.081718, 33.563557, 54.641487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291912, 33.248566, 54.770325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702408, -0.187922, 0.686520,
		-0.480092, -0.586995, -0.651881,
		0.525486, -0.787479, 0.322090,
		32.449558, 33.012321, 54.866951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606709, 33.085350, 54.577457>,  <32.081718, 33.563557, 54.641487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606709, 33.085350, 54.577457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.888163, 32.975048, 54.839405>,  <32.057034, 32.908867, 54.996574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.888163, 32.975048, 54.839405>,  <31.606709, 33.085350, 54.577457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888163, 32.975048, 54.839405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696955, -0.088359, 0.711651,
		-0.138384, -0.957156, -0.254367,
		0.703636, -0.275763, 0.654867,
		32.099255, 32.892319, 55.035866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340349, 32.535728, 54.955128>,  <31.606709, 33.085350, 54.577457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340349, 32.535728, 54.955128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.645077, 32.614220, 55.202068>,  <31.827913, 32.661316, 55.350231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.645077, 32.614220, 55.202068>,  <31.340349, 32.535728, 54.955128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645077, 32.614220, 55.202068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571721, -0.244407, 0.783199,
		0.304572, -0.949610, -0.074006,
		0.761821, 0.196229, 0.617351,
		31.873623, 32.673088, 55.387272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204283, 31.995762, 55.459469>,  <31.340349, 32.535728, 54.955128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204283, 31.995762, 55.459469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.441883, 32.276871, 55.616074>,  <31.584442, 32.445534, 55.710037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.441883, 32.276871, 55.616074>,  <31.204283, 31.995762, 55.459469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441883, 32.276871, 55.616074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548378, -0.002353, 0.836228,
		0.588597, -0.711413, 0.383986,
		0.594000, 0.702770, 0.391508,
		31.620083, 32.487701, 55.733524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380075, 31.734884, 56.152359>,  <31.204283, 31.995762, 55.459469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380075, 31.734884, 56.152359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.430908, 32.131615, 56.147778>,  <31.461409, 32.369652, 56.145027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.430908, 32.131615, 56.147778>,  <31.380075, 31.734884, 56.152359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430908, 32.131615, 56.147778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658120, 0.092952, 0.747153,
		0.742111, -0.087413, 0.664553,
		0.127082, 0.991826, -0.011453,
		31.469032, 32.429161, 56.144341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539671, 31.950947, 56.813633>,  <31.380075, 31.734884, 56.152359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539671, 31.950947, 56.813633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.430212, 32.299091, 56.649879>,  <31.364536, 32.507977, 56.551628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.430212, 32.299091, 56.649879>,  <31.539671, 31.950947, 56.813633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430212, 32.299091, 56.649879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646453, 0.148729, 0.748317,
		0.712192, 0.469419, 0.521948,
		-0.273645, 0.870360, -0.409381,
		31.348118, 32.560200, 56.527065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698971, 32.434761, 57.342682>,  <31.539671, 31.950947, 56.813633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698971, 32.434761, 57.342682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.426077, 32.589722, 57.094658>,  <31.262341, 32.682697, 56.945843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.426077, 32.589722, 57.094658>,  <31.698971, 32.434761, 57.342682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426077, 32.589722, 57.094658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591854, 0.205292, 0.779464,
		0.429258, 0.898763, 0.089227,
		-0.682236, 0.387401, -0.620060,
		31.221407, 32.705940, 56.908638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551506, 33.074871, 57.657970>,  <31.698971, 32.434761, 57.342682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551506, 33.074871, 57.657970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.226477, 32.969093, 57.450203>,  <31.031460, 32.905624, 57.325542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.226477, 32.969093, 57.450203>,  <31.551506, 33.074871, 57.657970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226477, 32.969093, 57.450203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580235, 0.282564, 0.763862,
		-0.055233, 0.922077, -0.383045,
		-0.812574, -0.264447, -0.519414,
		30.982704, 32.889759, 57.294380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013626, 33.600285, 57.751099>,  <31.551506, 33.074871, 57.657970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013626, 33.600285, 57.751099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.764130, 33.317875, 57.616943>,  <30.614431, 33.148430, 57.536449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.764130, 33.317875, 57.616943>,  <31.013626, 33.600285, 57.751099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764130, 33.317875, 57.616943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703515, 0.320110, 0.634505,
		-0.340611, 0.631716, -0.696361,
		-0.623739, -0.706020, -0.335389,
		30.577007, 33.106068, 57.516327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308655, 33.920952, 57.632927>,  <31.013626, 33.600285, 57.751099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308655, 33.920952, 57.632927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.240194, 33.530205, 57.684219>,  <30.199118, 33.295757, 57.714996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.240194, 33.530205, 57.684219>,  <30.308655, 33.920952, 57.632927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240194, 33.530205, 57.684219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740219, 0.213390, 0.637605,
		-0.650217, 0.014206, -0.759615,
		-0.171152, -0.976864, 0.128234,
		30.188848, 33.237144, 57.722691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554794, 33.790974, 57.557869>,  <30.308655, 33.920952, 57.632927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554794, 33.790974, 57.557869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.707443, 33.478252, 57.755108>,  <29.799032, 33.290619, 57.873451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.707443, 33.478252, 57.755108>,  <29.554794, 33.790974, 57.557869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707443, 33.478252, 57.755108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619851, 0.179277, 0.763966,
		-0.685674, -0.597192, -0.416187,
		0.381622, -0.781806, 0.493096,
		29.821930, 33.243710, 57.903038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954899, 33.486073, 57.136444>,  <29.554794, 33.790974, 57.557869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954899, 33.486073, 57.136444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.614040, 33.592548, 56.956226>,  <28.409525, 33.656433, 56.848095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.614040, 33.592548, 56.956226>,  <28.954899, 33.486073, 57.136444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614040, 33.592548, 56.956226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229472, -0.583701, -0.778868,
		-0.470311, -0.767097, 0.436315,
		-0.852144, 0.266188, -0.450548,
		28.358397, 33.672405, 56.821060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580692, 32.922298, 57.087936>,  <28.954899, 33.486073, 57.136444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.580692, 32.922298, 57.087936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.478109, 33.192238, 56.811150>,  <28.416559, 33.354202, 56.645077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.478109, 33.192238, 56.811150>,  <28.580692, 32.922298, 57.087936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478109, 33.192238, 56.811150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296145, -0.626615, -0.720869,
		-0.920070, -0.389793, -0.039153,
		-0.256456, 0.674845, -0.691965,
		28.401173, 33.394691, 56.603561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211988, 32.528488, 56.534363>,  <28.580692, 32.922298, 57.087936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211988, 32.528488, 56.534363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.302877, 32.876141, 56.358643>,  <28.357410, 33.084732, 56.253212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.302877, 32.876141, 56.358643>,  <28.211988, 32.528488, 56.534363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302877, 32.876141, 56.358643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336892, -0.493396, -0.801913,
		-0.913715, 0.034216, -0.404914,
		0.227221, 0.869132, -0.439296,
		28.371044, 33.136879, 56.226852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906794, 32.522495, 55.818989>,  <28.211988, 32.528488, 56.534363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906794, 32.522495, 55.818989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.219549, 32.771751, 55.811550>,  <28.407202, 32.921307, 55.807087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.219549, 32.771751, 55.811550>,  <27.906794, 32.522495, 55.818989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219549, 32.771751, 55.811550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276955, -0.373931, -0.885139,
		-0.558520, 0.686930, -0.464954,
		0.781889, 0.623140, -0.018599,
		28.454117, 32.958694, 55.805969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995249, 32.484585, 55.153957>,  <27.906794, 32.522495, 55.818989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995249, 32.484585, 55.153957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.323902, 32.655743, 55.304596>,  <28.521093, 32.758438, 55.394981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.323902, 32.655743, 55.304596>,  <27.995249, 32.484585, 55.153957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323902, 32.655743, 55.304596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484234, -0.175392, -0.857178,
		-0.300729, 0.886648, -0.351309,
		0.821632, 0.427894, 0.376600,
		28.570393, 32.784111, 55.417576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204548, 32.824734, 54.599049>,  <27.995249, 32.484585, 55.153957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204548, 32.824734, 54.599049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.531265, 32.841442, 54.829216>,  <28.727297, 32.851467, 54.967316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.531265, 32.841442, 54.829216>,  <28.204548, 32.824734, 54.599049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531265, 32.841442, 54.829216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575721, 0.005483, -0.817628,
		-0.037308, 0.999112, -0.019569,
		0.816795, 0.041771, 0.575414,
		28.776304, 32.853973, 55.001839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575642, 33.385258, 54.403667>,  <28.204548, 32.824734, 54.599049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575642, 33.385258, 54.403667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.831999, 33.129459, 54.573513>,  <28.985813, 32.975979, 54.675419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.831999, 33.129459, 54.573513>,  <28.575642, 33.385258, 54.403667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831999, 33.129459, 54.573513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607554, 0.084487, -0.789772,
		0.469183, 0.764137, 0.442677,
		0.640894, -0.639497, 0.424615,
		29.024267, 32.937611, 54.700897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233847, 33.612984, 54.272697>,  <28.575642, 33.385258, 54.403667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233847, 33.612984, 54.272697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.256287, 33.218616, 54.335705>,  <29.269751, 32.981995, 54.373508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.256287, 33.218616, 54.335705>,  <29.233847, 33.612984, 54.272697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256287, 33.218616, 54.335705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548308, -0.101425, -0.830103,
		0.834392, 0.132940, 0.534899,
		0.056102, -0.985921, 0.157520,
		29.273117, 32.922840, 54.382961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967060, 33.484810, 54.276348>,  <29.233847, 33.612984, 54.272697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967060, 33.484810, 54.276348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.756714, 33.151508, 54.208054>,  <29.630507, 32.951527, 54.167076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.756714, 33.151508, 54.208054>,  <29.967060, 33.484810, 54.276348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756714, 33.151508, 54.208054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480005, -0.125013, -0.868312,
		0.702184, -0.538566, 0.465708,
		-0.525864, -0.833257, -0.170732,
		29.598955, 32.901531, 54.156834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433325, 32.919479, 54.235786>,  <29.967060, 33.484810, 54.276348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433325, 32.919479, 54.235786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.114468, 32.785305, 54.034969>,  <29.923153, 32.704800, 53.914478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.114468, 32.785305, 54.034969>,  <30.433325, 32.919479, 54.235786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114468, 32.785305, 54.034969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599071, -0.335619, -0.726962,
		0.075355, -0.880251, 0.468486,
		-0.797142, -0.335436, -0.502043,
		29.875324, 32.684673, 53.884357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621737, 32.244038, 54.015110>,  <30.433325, 32.919479, 54.235786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621737, 32.244038, 54.015110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339153, 32.381145, 53.767426>,  <30.169603, 32.463409, 53.618816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.339153, 32.381145, 53.767426>,  <30.621737, 32.244038, 54.015110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339153, 32.381145, 53.767426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563211, -0.257564, -0.785146,
		-0.428611, -0.903421, -0.011094,
		-0.706460, 0.342771, -0.619211,
		30.127214, 32.483978, 53.581661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815434, 31.930103, 53.445312>,  <30.621737, 32.244038, 54.015110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815434, 31.930103, 53.445312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.540730, 32.181011, 53.298405>,  <30.375906, 32.331554, 53.210258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.540730, 32.181011, 53.298405>,  <30.815434, 31.930103, 53.445312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540730, 32.181011, 53.298405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400939, -0.094559, -0.911212,
		-0.606305, -0.773040, -0.186558,
		-0.686762, 0.627270, -0.367273,
		30.334702, 32.369194, 53.188221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582590, 31.529476, 52.875439>,  <30.815434, 31.930103, 53.445312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582590, 31.529476, 52.875439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.478800, 31.912758, 52.827251>,  <30.416527, 32.142727, 52.798340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.478800, 31.912758, 52.827251>,  <30.582590, 31.529476, 52.875439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478800, 31.912758, 52.827251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307010, -0.036431, -0.951009,
		-0.915652, -0.283748, -0.284726,
		-0.259474, 0.958207, -0.120471,
		30.400957, 32.200218, 52.791111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184908, 31.584570, 52.166206>,  <30.582590, 31.529476, 52.875439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184908, 31.584570, 52.166206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.333584, 31.949638, 52.234184>,  <30.422791, 32.168678, 52.274971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.333584, 31.949638, 52.234184>,  <30.184908, 31.584570, 52.166206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333584, 31.949638, 52.234184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196585, 0.101526, -0.975216,
		-0.907303, 0.395887, -0.141681,
		0.371691, 0.912669, 0.169941,
		30.445091, 32.223438, 52.285168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.028679, 37.255917, 55.179420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.364992, 37.417103, 55.324032>,  <26.566780, 37.513813, 55.410801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.364992, 37.417103, 55.324032>,  <26.028679, 37.255917, 55.179420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364992, 37.417103, 55.324032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354169, -0.095653, 0.930277,
		0.409447, -0.910205, 0.062292,
		0.840784, 0.402961, 0.361531,
		26.617228, 37.537991, 55.432491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242908, 36.898151, 55.691463>,  <26.028679, 37.255917, 55.179420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242908, 36.898151, 55.691463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.475788, 37.208817, 55.787666>,  <26.615515, 37.395214, 55.845387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.475788, 37.208817, 55.787666>,  <26.242908, 36.898151, 55.691463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.475788, 37.208817, 55.787666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333490, -0.041667, 0.941833,
		0.741506, -0.628539, 0.234750,
		0.582197, 0.776661, 0.240508,
		26.650448, 37.441814, 55.859818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.637428, 36.694897, 56.118336>,  <26.242908, 36.898151, 55.691463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.637428, 36.694897, 56.118336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.649387, 37.088478, 56.188702>,  <26.656563, 37.324627, 56.230923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.649387, 37.088478, 56.188702>,  <26.637428, 36.694897, 56.118336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649387, 37.088478, 56.188702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156085, -0.169237, 0.973137,
		0.987291, -0.056553, 0.148520,
		0.029899, 0.983952, 0.175913,
		26.658358, 37.383663, 56.241474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915060, 36.745358, 56.744347>,  <26.637428, 36.694897, 56.118336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.915060, 36.745358, 56.744347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.766420, 37.115425, 56.713421>,  <26.677237, 37.337467, 56.694866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.766420, 37.115425, 56.713421>,  <26.915060, 36.745358, 56.744347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766420, 37.115425, 56.713421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260176, -0.023834, 0.965267,
		0.891191, 0.378809, 0.249563,
		-0.371600, 0.925168, -0.077316,
		26.654940, 37.392975, 56.690228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261463, 37.228283, 57.213112>,  <26.915060, 36.745358, 56.744347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261463, 37.228283, 57.213112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.892105, 37.364292, 57.141869>,  <26.670490, 37.445900, 57.099121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.892105, 37.364292, 57.141869>,  <27.261463, 37.228283, 57.213112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892105, 37.364292, 57.141869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222408, -0.095754, 0.970240,
		0.312851, 0.935529, 0.164043,
		-0.923395, 0.340025, -0.178112,
		26.615086, 37.466301, 57.088436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086697, 37.700863, 57.721809>,  <27.261463, 37.228283, 57.213112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086697, 37.700863, 57.721809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.720066, 37.642590, 57.572861>,  <26.500088, 37.607624, 57.483490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.720066, 37.642590, 57.572861>,  <27.086697, 37.700863, 57.721809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720066, 37.642590, 57.572861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363667, -0.083410, 0.927787,
		-0.166227, 0.985808, 0.023470,
		-0.916578, -0.145688, -0.372371,
		26.445093, 37.598885, 57.461151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630407, 38.225727, 57.991249>,  <27.086697, 37.700863, 57.721809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630407, 38.225727, 57.991249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.395174, 37.926571, 57.868080>,  <26.254034, 37.747078, 57.794178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.395174, 37.926571, 57.868080>,  <26.630407, 38.225727, 57.991249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395174, 37.926571, 57.868080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516377, 0.054165, 0.854647,
		-0.622503, 0.661609, -0.418047,
		-0.588086, -0.747890, -0.307922,
		26.218748, 37.702206, 57.775703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991537, 38.503323, 58.129604>,  <26.630407, 38.225727, 57.991249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991537, 38.503323, 58.129604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.933344, 38.108124, 58.108807>,  <25.898428, 37.871006, 58.096329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.933344, 38.108124, 58.108807>,  <25.991537, 38.503323, 58.129604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933344, 38.108124, 58.108807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625918, 0.051211, 0.778206,
		-0.766199, 0.145764, -0.625853,
		-0.145485, -0.987993, -0.051998,
		25.889698, 37.811726, 58.093208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.143120, 38.348526, 58.255604>,  <25.991537, 38.503323, 58.129604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.143120, 38.348526, 58.255604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.362154, 38.026211, 58.345802>,  <25.493574, 37.832821, 58.399921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.362154, 38.026211, 58.345802>,  <25.143120, 38.348526, 58.255604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.362154, 38.026211, 58.345802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353530, 0.021464, 0.935177,
		-0.758398, -0.591810, -0.273118,
		0.547585, -0.805792, 0.225501,
		25.526430, 37.784473, 58.413452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.785830, 37.902115, 58.725090>,  <25.143120, 38.348526, 58.255604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.785830, 37.902115, 58.725090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.133966, 37.716446, 58.790874>,  <25.342850, 37.605045, 58.830345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.133966, 37.716446, 58.790874>,  <24.785830, 37.902115, 58.725090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133966, 37.716446, 58.790874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225242, -0.078247, 0.971156,
		-0.437914, -0.882283, -0.172653,
		0.870343, -0.464171, 0.164462,
		25.395069, 37.577194, 58.840214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.618088, 37.302769, 59.036591>,  <24.785830, 37.902115, 58.725090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.618088, 37.302769, 59.036591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.997610, 37.352982, 59.152527>,  <25.225325, 37.383110, 59.222088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.997610, 37.352982, 59.152527>,  <24.618088, 37.302769, 59.036591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.997610, 37.352982, 59.152527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277378, -0.107777, 0.954697,
		0.151083, -0.986218, -0.067440,
		0.948807, 0.125532, 0.289838,
		25.282253, 37.390640, 59.239479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.645279, 36.760117, 59.555904>,  <24.618088, 37.302769, 59.036591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.645279, 36.760117, 59.555904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.963854, 36.990974, 59.628113>,  <25.154999, 37.129490, 59.671436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.963854, 36.990974, 59.628113>,  <24.645279, 36.760117, 59.555904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.963854, 36.990974, 59.628113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229311, 0.012023, 0.973279,
		0.559554, -0.816552, 0.141922,
		0.796440, 0.577147, 0.180517,
		25.202785, 37.164120, 59.682266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.935642, 36.667305, 60.208145>,  <24.645279, 36.760117, 59.555904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.935642, 36.667305, 60.208145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.035223, 37.049446, 60.144501>,  <25.094971, 37.278732, 60.106312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.035223, 37.049446, 60.144501>,  <24.935642, 36.667305, 60.208145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.035223, 37.049446, 60.144501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083244, 0.142571, 0.986278,
		0.964932, -0.258781, -0.044034,
		0.248952, 0.955356, -0.159114,
		25.109909, 37.336052, 60.096767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504477, 36.673813, 60.596668>,  <24.935642, 36.667305, 60.208145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504477, 36.673813, 60.596668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.359394, 37.039772, 60.525784>,  <25.272345, 37.259350, 60.483253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.359394, 37.039772, 60.525784>,  <25.504477, 36.673813, 60.596668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.359394, 37.039772, 60.525784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044511, 0.206950, 0.977339,
		0.930840, 0.346597, -0.115785,
		-0.362705, 0.914900, -0.177210,
		25.250582, 37.314243, 60.472622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.271202, 36.139912, 61.023792>,  <25.504477, 36.673813, 60.596668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.271202, 36.139912, 61.023792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.351877, 35.757702, 61.109848>,  <25.400282, 35.528374, 61.161484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.351877, 35.757702, 61.109848>,  <25.271202, 36.139912, 61.023792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.351877, 35.757702, 61.109848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309203, -0.146309, -0.939674,
		0.929363, 0.256043, 0.265944,
		0.201687, -0.955529, 0.215143,
		25.412384, 35.471043, 61.174393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917870, 36.030182, 60.942265>,  <25.271202, 36.139912, 61.023792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917870, 36.030182, 60.942265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.724804, 35.684437, 60.885811>,  <25.608965, 35.476990, 60.851940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.724804, 35.684437, 60.885811>,  <25.917870, 36.030182, 60.942265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724804, 35.684437, 60.885811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496863, -0.137542, -0.856860,
		0.721222, -0.483702, 0.495854,
		-0.482665, -0.864358, -0.141135,
		25.580004, 35.425129, 60.843472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421360, 35.549129, 60.834885>,  <25.917870, 36.030182, 60.942265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421360, 35.549129, 60.834885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.111500, 35.345432, 60.684902>,  <25.925585, 35.223213, 60.594913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.111500, 35.345432, 60.684902>,  <26.421360, 35.549129, 60.834885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111500, 35.345432, 60.684902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551479, -0.253800, -0.794643,
		0.309500, -0.822350, 0.477441,
		-0.774649, -0.509241, -0.374957,
		25.879105, 35.192661, 60.572414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749893, 34.959801, 60.513817>,  <26.421360, 35.549129, 60.834885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749893, 34.959801, 60.513817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.391207, 34.973606, 60.337311>,  <26.175995, 34.981892, 60.231407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.391207, 34.973606, 60.337311>,  <26.749893, 34.959801, 60.513817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391207, 34.973606, 60.337311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407293, -0.325883, -0.853178,
		-0.173247, -0.944780, 0.278166,
		-0.896715, 0.034515, -0.441261,
		26.122192, 34.983959, 60.204933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510927, 34.274406, 60.328808>,  <26.749893, 34.959801, 60.513817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510927, 34.274406, 60.328808> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.326927, 34.532276, 60.084579>,  <26.216528, 34.686996, 59.938042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.326927, 34.532276, 60.084579>,  <26.510927, 34.274406, 60.328808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326927, 34.532276, 60.084579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349890, -0.500396, -0.791947,
		-0.816076, -0.577927, 0.004616,
		-0.459998, 0.644674, -0.610572,
		26.188929, 34.725677, 59.901409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429203, 33.892624, 59.730137>,  <26.510927, 34.274406, 60.328808>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429203, 33.892624, 59.730137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.331701, 34.255974, 59.594227>,  <26.273201, 34.473984, 59.512680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.331701, 34.255974, 59.594227>,  <26.429203, 33.892624, 59.730137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331701, 34.255974, 59.594227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293469, -0.264834, -0.918553,
		-0.924370, -0.323615, -0.202024,
		-0.243755, 0.908370, -0.339776,
		26.258575, 34.528484, 59.492294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938210, 33.828739, 59.147457>,  <26.429203, 33.892624, 59.730137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938210, 33.828739, 59.147457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.107880, 34.188446, 59.104771>,  <26.209682, 34.404270, 59.079159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.107880, 34.188446, 59.104771>,  <25.938210, 33.828739, 59.147457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107880, 34.188446, 59.104771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332919, -0.264445, -0.905115,
		-0.842163, 0.348401, -0.411555,
		0.424176, 0.899270, -0.106717,
		26.235132, 34.458225, 59.072754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.713476, 34.078396, 58.492531>,  <25.938210, 33.828739, 59.147457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.713476, 34.078396, 58.492531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.039837, 34.284588, 58.597290>,  <26.235653, 34.408302, 58.660145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.039837, 34.284588, 58.597290>,  <25.713476, 34.078396, 58.492531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039837, 34.284588, 58.597290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372675, -0.122538, -0.919836,
		-0.442064, 0.848096, -0.292085,
		0.815900, 0.515479, 0.261894,
		26.284607, 34.439232, 58.675858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059561, 34.247375, 57.885048>,  <25.713476, 34.078396, 58.492531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.059561, 34.247375, 57.885048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.368973, 34.336494, 58.122372>,  <26.554619, 34.389965, 58.264767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.368973, 34.336494, 58.122372>,  <26.059561, 34.247375, 57.885048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368973, 34.336494, 58.122372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617425, -0.053735, -0.784792,
		-0.142972, 0.973382, -0.179129,
		0.773528, 0.222802, 0.593307,
		26.601030, 34.403336, 58.300365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.452837, 34.685398, 57.503910>,  <26.059561, 34.247375, 57.885048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.452837, 34.685398, 57.503910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.702944, 34.567852, 57.793098>,  <26.853008, 34.497326, 57.966610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.702944, 34.567852, 57.793098>,  <26.452837, 34.685398, 57.503910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702944, 34.567852, 57.793098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741365, -0.065685, -0.667880,
		0.243756, 0.953587, 0.176791,
		0.625269, -0.293866, 0.722967,
		26.890524, 34.479691, 58.009987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060944, 34.954552, 57.336113>,  <26.452837, 34.685398, 57.503910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060944, 34.954552, 57.336113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.160744, 34.660191, 57.587891>,  <27.220625, 34.483574, 57.738956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.160744, 34.660191, 57.587891>,  <27.060944, 34.954552, 57.336113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160744, 34.660191, 57.587891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726301, -0.287712, -0.624266,
		0.640496, 0.612921, 0.462700,
		0.249502, -0.735900, 0.629444,
		27.235594, 34.439419, 57.776722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712397, 35.044868, 57.497185>,  <27.060944, 34.954552, 57.336113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712397, 35.044868, 57.497185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.647251, 34.656746, 57.568726>,  <27.608164, 34.423874, 57.611649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.647251, 34.656746, 57.568726>,  <27.712397, 35.044868, 57.497185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647251, 34.656746, 57.568726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778119, -0.237770, -0.581374,
		0.606635, 0.044485, 0.793735,
		-0.162864, -0.970302, 0.178854,
		27.598392, 34.365654, 57.622383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380880, 34.732117, 57.426071>,  <27.712397, 35.044868, 57.497185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380880, 34.732117, 57.426071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.121262, 34.428738, 57.402431>,  <27.965490, 34.246712, 57.388248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.121262, 34.428738, 57.402431>,  <28.380880, 34.732117, 57.426071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121262, 34.428738, 57.402431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586811, -0.449703, -0.673365,
		0.484138, -0.471723, 0.736945,
		-0.649048, -0.758449, -0.059094,
		27.926548, 34.201202, 57.384705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780832, 34.088463, 57.522167>,  <28.380880, 34.732117, 57.426071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780832, 34.088463, 57.522167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.445160, 34.022808, 57.314770>,  <28.243755, 33.983414, 57.190331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.445160, 34.022808, 57.314770>,  <28.780832, 34.088463, 57.522167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445160, 34.022808, 57.314770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522904, -0.505562, -0.686279,
		-0.149483, -0.847033, 0.510088,
		-0.839182, -0.164140, -0.518490,
		28.193405, 33.973568, 57.159222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974665, 33.502102, 57.869305>,  <28.780832, 34.088463, 57.522167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974665, 33.502102, 57.869305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.270136, 33.334900, 58.080826>,  <29.447418, 33.234581, 58.207737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.270136, 33.334900, 58.080826>,  <28.974665, 33.502102, 57.869305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270136, 33.334900, 58.080826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577899, 0.011104, 0.816033,
		-0.346975, -0.908378, -0.233361,
		0.738675, -0.418002, 0.528803,
		29.491739, 33.209499, 58.239468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732224, 33.067173, 58.399220>,  <28.974665, 33.502102, 57.869305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732224, 33.067173, 58.399220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.096859, 33.137691, 58.547771>,  <29.315641, 33.180004, 58.636902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.096859, 33.137691, 58.547771>,  <28.732224, 33.067173, 58.399220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096859, 33.137691, 58.547771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375991, -0.007751, 0.926591,
		0.166237, -0.984306, 0.059221,
		0.911589, 0.176301, 0.371379,
		29.370337, 33.190582, 58.659184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828249, 32.568810, 59.022072>,  <28.732224, 33.067173, 58.399220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828249, 32.568810, 59.022072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.090235, 32.868046, 59.064762>,  <29.247425, 33.047588, 59.090374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.090235, 32.868046, 59.064762>,  <28.828249, 32.568810, 59.022072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090235, 32.868046, 59.064762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185866, 0.022590, 0.982315,
		0.732445, -0.663217, 0.153840,
		0.654964, 0.748086, 0.106724,
		29.286724, 33.092472, 59.096779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230076, 32.445713, 59.557915>,  <28.828249, 32.568810, 59.022072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230076, 32.445713, 59.557915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.277613, 32.841282, 59.522324>,  <29.306135, 33.078621, 59.500969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.277613, 32.841282, 59.522324>,  <29.230076, 32.445713, 59.557915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277613, 32.841282, 59.522324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115441, 0.102771, 0.987984,
		0.986180, -0.107142, 0.126375,
		0.118842, 0.988918, -0.088983,
		29.313265, 33.137959, 59.495628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404917, 32.660694, 60.265572>,  <29.230076, 32.445713, 59.557915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404917, 32.660694, 60.265572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.260683, 32.987091, 60.084843>,  <29.174143, 33.182930, 59.976406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.260683, 32.987091, 60.084843>,  <29.404917, 32.660694, 60.265572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260683, 32.987091, 60.084843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285018, 0.364842, 0.886372,
		0.888113, 0.448387, 0.101016,
		-0.360583, 0.815990, -0.451819,
		29.152508, 33.231888, 59.949295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610493, 33.176712, 60.660275>,  <29.404917, 32.660694, 60.265572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610493, 33.176712, 60.660275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.327190, 33.365086, 60.449902>,  <29.157209, 33.478107, 60.323677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.327190, 33.365086, 60.449902>,  <29.610493, 33.176712, 60.660275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327190, 33.365086, 60.449902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329223, 0.438682, 0.836164,
		0.624491, 0.765364, -0.155656,
		-0.708254, 0.470931, -0.525928,
		29.114714, 33.506367, 60.292122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679399, 33.928349, 60.886021>,  <29.610493, 33.176712, 60.660275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679399, 33.928349, 60.886021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.319147, 33.875404, 60.720448>,  <29.102995, 33.843636, 60.621101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.319147, 33.875404, 60.720448>,  <29.679399, 33.928349, 60.886021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319147, 33.875404, 60.720448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415001, 0.544650, 0.728787,
		0.128986, 0.828152, -0.545460,
		-0.900631, -0.132363, -0.413936,
		29.048958, 33.835697, 60.596268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811085, 34.489979, 60.451096>,  <29.679399, 33.928349, 60.886021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811085, 34.489979, 60.451096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.079771, 34.768440, 60.552425>,  <30.240982, 34.935516, 60.613224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.079771, 34.768440, 60.552425>,  <29.811085, 34.489979, 60.451096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079771, 34.768440, 60.552425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611094, -0.327394, -0.720678,
		-0.418763, 0.638897, -0.645329,
		0.671716, 0.696150, 0.253325,
		30.281286, 34.977283, 60.628422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005819, 34.822926, 59.869118>,  <29.811085, 34.489979, 60.451096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005819, 34.822926, 59.869118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.317411, 34.885498, 60.112007>,  <30.504366, 34.923042, 60.257740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.317411, 34.885498, 60.112007>,  <30.005819, 34.822926, 59.869118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317411, 34.885498, 60.112007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624154, -0.286389, -0.726921,
		0.060193, 0.945258, -0.320726,
		0.778979, 0.156427, 0.607224,
		30.551105, 34.932426, 60.294174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399256, 35.153728, 59.488407>,  <30.005819, 34.822926, 59.869118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399256, 35.153728, 59.488407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.640945, 35.017887, 59.776733>,  <30.785959, 34.936382, 59.949730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.640945, 35.017887, 59.776733>,  <30.399256, 35.153728, 59.488407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640945, 35.017887, 59.776733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722044, -0.149232, -0.675560,
		0.336990, 0.928656, 0.155037,
		0.604226, -0.339601, 0.720820,
		30.822214, 34.916008, 59.992981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995895, 35.565361, 59.460831>,  <30.399256, 35.153728, 59.488407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995895, 35.565361, 59.460831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.076408, 35.218563, 59.643177>,  <31.124716, 35.010487, 59.752583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.076408, 35.218563, 59.643177>,  <30.995895, 35.565361, 59.460831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076408, 35.218563, 59.643177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772131, -0.145935, -0.618480,
		0.602743, 0.476475, 0.640056,
		0.201284, -0.866992, 0.455863,
		31.136793, 34.958466, 59.779934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723900, 35.638687, 59.645157>,  <30.995895, 35.565361, 59.460831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723900, 35.638687, 59.645157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.621220, 35.252583, 59.664661>,  <31.559612, 35.020920, 59.676365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.621220, 35.252583, 59.664661>,  <31.723900, 35.638687, 59.645157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621220, 35.252583, 59.664661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856870, -0.250631, -0.450509,
		0.447079, -0.073864, 0.891439,
		-0.256699, -0.965261, 0.048760,
		31.544210, 34.963005, 59.679291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270542, 35.363453, 59.879944>,  <31.723900, 35.638687, 59.645157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270542, 35.363453, 59.879944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.088017, 35.054062, 59.703983>,  <31.978500, 34.868427, 59.598408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.088017, 35.054062, 59.703983>,  <32.270542, 35.363453, 59.879944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088017, 35.054062, 59.703983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861478, -0.260240, -0.436041,
		0.222785, -0.577939, 0.785081,
		-0.456315, -0.773474, -0.439904,
		31.951122, 34.822021, 59.572014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664452, 34.786518, 59.950039>,  <32.270542, 35.363453, 59.879944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664452, 34.786518, 59.950039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.442722, 34.668072, 59.638901>,  <32.309685, 34.597004, 59.452217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.442722, 34.668072, 59.638901>,  <32.664452, 34.786518, 59.950039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442722, 34.668072, 59.638901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827045, -0.300835, -0.474863,
		-0.093386, -0.906539, 0.411662,
		-0.554324, -0.296118, -0.777842,
		32.276424, 34.579235, 59.405548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.960730, 39.051228, 61.350048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648933, 38.882885, 61.164455>,  <27.461857, 38.781879, 61.053101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648933, 38.882885, 61.164455>,  <27.960730, 39.051228, 61.350048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648933, 38.882885, 61.164455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455198, 0.128284, -0.881100,
		0.430340, -0.898009, 0.091579,
		-0.779488, -0.420859, -0.463978,
		27.415087, 38.756626, 61.025261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120337, 38.518673, 60.827465>,  <27.960730, 39.051228, 61.350048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120337, 38.518673, 60.827465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773186, 38.664131, 60.692081>,  <27.564896, 38.751404, 60.610851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773186, 38.664131, 60.692081>,  <28.120337, 38.518673, 60.827465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773186, 38.664131, 60.692081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387575, 0.069423, -0.919220,
		-0.310770, -0.928948, -0.201189,
		-0.867875, 0.363642, -0.338462,
		27.512823, 38.773224, 60.590542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039751, 38.291302, 60.182129>,  <28.120337, 38.518673, 60.827465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039751, 38.291302, 60.182129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813578, 38.620586, 60.161709>,  <27.677874, 38.818157, 60.149456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.813578, 38.620586, 60.161709>,  <28.039751, 38.291302, 60.182129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813578, 38.620586, 60.161709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409861, 0.226730, -0.883520,
		-0.715750, -0.520495, -0.465603,
		-0.565434, 0.823212, -0.051049,
		27.643948, 38.867550, 60.146393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884212, 38.388409, 59.515884>,  <28.039751, 38.291302, 60.182129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884212, 38.388409, 59.515884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765184, 38.752625, 59.630684>,  <27.693768, 38.971153, 59.699562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765184, 38.752625, 59.630684>,  <27.884212, 38.388409, 59.515884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765184, 38.752625, 59.630684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138623, 0.338638, -0.930649,
		-0.944582, -0.237150, -0.226991,
		-0.297572, 0.910540, 0.286997,
		27.675913, 39.025787, 59.716782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215055, 38.565731, 59.142738>,  <27.884212, 38.388409, 59.515884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215055, 38.565731, 59.142738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452368, 38.874123, 59.235355>,  <27.594755, 39.059158, 59.290928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.452368, 38.874123, 59.235355>,  <27.215055, 38.565731, 59.142738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.452368, 38.874123, 59.235355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164002, 0.165844, -0.972419,
		-0.788114, 0.614890, -0.028050,
		0.593279, 0.770977, 0.231547,
		27.630352, 39.105415, 59.304821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093662, 38.966614, 58.568066>,  <27.215055, 38.565731, 59.142738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093662, 38.966614, 58.568066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432880, 39.106533, 58.727295>,  <27.636412, 39.190483, 58.822830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432880, 39.106533, 58.727295>,  <27.093662, 38.966614, 58.568066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432880, 39.106533, 58.727295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392690, 0.089581, -0.915298,
		-0.355830, 0.932532, -0.061394,
		0.848045, 0.349800, 0.398071,
		27.687294, 39.211472, 58.846718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252655, 39.495518, 58.125389>,  <27.093662, 38.966614, 58.568066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252655, 39.495518, 58.125389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607721, 39.401142, 58.283569>,  <27.820761, 39.344517, 58.378475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607721, 39.401142, 58.283569>,  <27.252655, 39.495518, 58.125389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607721, 39.401142, 58.283569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415836, 0.041829, -0.908477,
		0.197805, 0.970867, 0.135243,
		0.887668, -0.235940, 0.395447,
		27.874022, 39.330360, 58.402203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822811, 39.813148, 57.621040>,  <27.252655, 39.495518, 58.125389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822811, 39.813148, 57.621040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029343, 39.572479, 57.864811>,  <28.153261, 39.428078, 58.011074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029343, 39.572479, 57.864811>,  <27.822811, 39.813148, 57.621040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029343, 39.572479, 57.864811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750816, -0.024252, -0.660066,
		0.411921, 0.798377, 0.439222,
		0.516329, -0.601670, 0.609424,
		28.184242, 39.391979, 58.047638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501486, 40.031834, 57.688610>,  <27.822811, 39.813148, 57.621040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501486, 40.031834, 57.688610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525625, 39.648582, 57.800575>,  <28.540110, 39.418633, 57.867756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525625, 39.648582, 57.800575>,  <28.501486, 40.031834, 57.688610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525625, 39.648582, 57.800575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393545, -0.234870, -0.888796,
		0.917322, 0.163798, 0.362891,
		0.060351, -0.958126, 0.279913,
		28.543730, 39.361145, 57.884548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258104, 39.868500, 57.630730>,  <28.501486, 40.031834, 57.688610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258104, 39.868500, 57.630730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033371, 39.538628, 57.604671>,  <28.898531, 39.340702, 57.589039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033371, 39.538628, 57.604671>,  <29.258104, 39.868500, 57.630730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033371, 39.538628, 57.604671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549827, -0.313423, -0.774245,
		0.618090, -0.470812, 0.629524,
		-0.561831, -0.824683, -0.065141,
		28.864822, 39.291222, 57.585129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746859, 39.331837, 57.611534>,  <29.258104, 39.868500, 57.630730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746859, 39.331837, 57.611534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395849, 39.212009, 57.461754>,  <29.185244, 39.140114, 57.371887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395849, 39.212009, 57.461754>,  <29.746859, 39.331837, 57.611534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395849, 39.212009, 57.461754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467199, -0.358108, -0.808384,
		0.108073, -0.884317, 0.454206,
		-0.877522, -0.299569, -0.374450,
		29.132593, 39.122139, 57.349419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991217, 38.824718, 57.171776>,  <29.746859, 39.331837, 57.611534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991217, 38.824718, 57.171776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606243, 38.872952, 57.074467>,  <29.375259, 38.901890, 57.016083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606243, 38.872952, 57.074467>,  <29.991217, 38.824718, 57.171776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606243, 38.872952, 57.074467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212962, -0.220554, -0.951842,
		-0.168422, -0.967893, 0.186591,
		-0.962435, 0.120575, -0.243270,
		29.317513, 38.909126, 57.001484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846062, 38.752415, 57.197506>,  <29.991217, 38.824718, 57.171776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846062, 38.752415, 57.197506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090052, 38.463703, 57.328327>,  <31.236446, 38.290478, 57.406822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090052, 38.463703, 57.328327>,  <30.846062, 38.752415, 57.197506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090052, 38.463703, 57.328327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510807, -0.042610, 0.858639,
		-0.605811, -0.690812, -0.394680,
		0.609975, -0.721778, 0.327057,
		31.273045, 38.247169, 57.426445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372784, 38.162151, 57.484169>,  <30.846062, 38.752415, 57.197506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372784, 38.162151, 57.484169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741873, 38.160736, 57.638351>,  <30.963326, 38.159885, 57.730862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741873, 38.160736, 57.638351>,  <30.372784, 38.162151, 57.484169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741873, 38.160736, 57.638351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384197, -0.089636, 0.918890,
		0.031300, -0.995968, -0.084068,
		0.922721, -0.003538, 0.385454,
		31.018688, 38.159676, 57.753986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386492, 37.546600, 57.740498>,  <30.372784, 38.162151, 57.484169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386492, 37.546600, 57.740498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652328, 37.770153, 57.938877>,  <30.811831, 37.904285, 58.057907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652328, 37.770153, 57.938877>,  <30.386492, 37.546600, 57.740498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652328, 37.770153, 57.938877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436106, -0.248834, 0.864808,
		0.606735, -0.791032, 0.078359,
		0.664593, 0.558882, 0.495950,
		30.851706, 37.937817, 58.087662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.243656, 37.384964, 58.523506>,  <30.386492, 37.546600, 57.740498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.243656, 37.384964, 58.523506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525023, 37.667175, 58.558014>,  <30.693842, 37.836502, 58.578720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525023, 37.667175, 58.558014>,  <30.243656, 37.384964, 58.523506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525023, 37.667175, 58.558014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140105, 0.018630, 0.989962,
		0.696836, -0.708439, 0.111952,
		0.703413, 0.705526, 0.086274,
		30.736046, 37.878834, 58.583897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648403, 37.180222, 59.101028>,  <30.243656, 37.384964, 58.523506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648403, 37.180222, 59.101028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712311, 37.572365, 59.054779>,  <30.750656, 37.807652, 59.027031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712311, 37.572365, 59.054779>,  <30.648403, 37.180222, 59.101028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712311, 37.572365, 59.054779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011530, 0.115266, 0.993268,
		0.987087, -0.160026, 0.007112,
		0.159768, 0.980360, -0.115622,
		30.760241, 37.866474, 59.020092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086470, 37.372932, 59.600693>,  <30.648403, 37.180222, 59.101028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086470, 37.372932, 59.600693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887367, 37.696621, 59.475861>,  <30.767906, 37.890835, 59.400963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887367, 37.696621, 59.475861>,  <31.086470, 37.372932, 59.600693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887367, 37.696621, 59.475861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341129, 0.148159, 0.928267,
		0.797413, 0.568512, 0.202303,
		-0.497758, 0.809224, -0.312080,
		30.738039, 37.939388, 59.382236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295633, 37.873703, 59.997162>,  <31.086470, 37.372932, 59.600693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295633, 37.873703, 59.997162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947962, 38.027802, 59.873154>,  <30.739359, 38.120262, 59.798748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947962, 38.027802, 59.873154>,  <31.295633, 37.873703, 59.997162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947962, 38.027802, 59.873154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192007, 0.314824, 0.929526,
		0.455701, 0.867450, -0.199668,
		-0.869178, 0.385248, -0.310022,
		30.687208, 38.143375, 59.780148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216452, 38.586765, 60.291241>,  <31.295633, 37.873703, 59.997162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216452, 38.586765, 60.291241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856522, 38.439236, 60.198040>,  <30.640564, 38.350719, 60.142120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856522, 38.439236, 60.198040>,  <31.216452, 38.586765, 60.291241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856522, 38.439236, 60.198040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360763, 0.328791, 0.872781,
		-0.245293, 0.869406, -0.428911,
		-0.899823, -0.368822, -0.233000,
		30.586575, 38.328590, 60.128139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768085, 39.046852, 60.550884>,  <31.216452, 38.586765, 60.291241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768085, 39.046852, 60.550884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521526, 38.734516, 60.510204>,  <30.373590, 38.547115, 60.485798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.521526, 38.734516, 60.510204>,  <30.768085, 39.046852, 60.550884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521526, 38.734516, 60.510204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414355, 0.211813, 0.885125,
		-0.669601, 0.587727, -0.454106,
		-0.616397, -0.780841, -0.101697,
		30.336607, 38.500263, 60.479694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077192, 39.306793, 60.813969>,  <30.768085, 39.046852, 60.550884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077192, 39.306793, 60.813969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097700, 38.907509, 60.826317>,  <30.110004, 38.667938, 60.833725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097700, 38.907509, 60.826317>,  <30.077192, 39.306793, 60.813969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097700, 38.907509, 60.826317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407311, 0.007327, 0.913260,
		-0.911850, -0.059398, -0.406205,
		0.051269, -0.998207, 0.030874,
		30.113081, 38.608047, 60.835579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530182, 39.195850, 61.232002>,  <30.077192, 39.306793, 60.813969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530182, 39.195850, 61.232002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711245, 38.839954, 61.208477>,  <29.819881, 38.626415, 61.194363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711245, 38.839954, 61.208477>,  <29.530182, 39.195850, 61.232002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711245, 38.839954, 61.208477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128438, -0.130327, 0.983117,
		-0.882387, -0.437459, -0.173271,
		0.452655, -0.889744, -0.058812,
		29.847042, 38.573032, 61.190834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062769, 38.689869, 61.536556>,  <29.530182, 39.195850, 61.232002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062769, 38.689869, 61.536556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429382, 38.531792, 61.561176>,  <29.649351, 38.436947, 61.575947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429382, 38.531792, 61.561176>,  <29.062769, 38.689869, 61.536556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429382, 38.531792, 61.561176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025850, 0.095034, 0.995138,
		-0.399118, -0.913670, 0.076886,
		0.916535, -0.395190, 0.061548,
		29.704342, 38.413235, 61.579639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001122, 38.129749, 62.056011>,  <29.062769, 38.689869, 61.536556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001122, 38.129749, 62.056011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385342, 38.240841, 62.050201>,  <29.615873, 38.307495, 62.046715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.385342, 38.240841, 62.050201>,  <29.001122, 38.129749, 62.056011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.385342, 38.240841, 62.050201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020557, -0.018838, 0.999611,
		0.277347, -0.960475, -0.023804,
		0.960550, 0.277728, -0.014520,
		29.673508, 38.324158, 62.045845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331881, 37.650631, 62.533085>,  <29.001122, 38.129749, 62.056011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331881, 37.650631, 62.533085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562284, 37.974979, 62.491695>,  <29.700527, 38.169586, 62.466862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562284, 37.974979, 62.491695>,  <29.331881, 37.650631, 62.533085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562284, 37.974979, 62.491695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050173, 0.091276, 0.994561,
		0.815903, -0.578067, 0.011892,
		0.576008, 0.810868, -0.103475,
		29.735086, 38.218239, 62.460651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130831, 37.745026, 62.379215>,  <29.331881, 37.650631, 62.533085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130831, 37.745026, 62.379215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950636, 37.441784, 62.567825>,  <29.842520, 37.259838, 62.680992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950636, 37.441784, 62.567825>,  <30.130831, 37.745026, 62.379215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950636, 37.441784, 62.567825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122608, -0.575685, -0.808427,
		0.884324, -0.306372, 0.352288,
		-0.450486, -0.758105, 0.471528,
		29.815491, 37.214352, 62.709282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526035, 37.095306, 62.233898>,  <30.130831, 37.745026, 62.379215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526035, 37.095306, 62.233898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179029, 36.923183, 62.333698>,  <29.970825, 36.819908, 62.393578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179029, 36.923183, 62.333698>,  <30.526035, 37.095306, 62.233898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179029, 36.923183, 62.333698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146964, -0.700947, -0.697907,
		0.475206, -0.568776, 0.671322,
		-0.867514, -0.430310, 0.249504,
		29.918776, 36.794090, 62.408550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761513, 36.461987, 62.339409>,  <30.526035, 37.095306, 62.233898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761513, 36.461987, 62.339409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369562, 36.417252, 62.273273>,  <30.134392, 36.390411, 62.233593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369562, 36.417252, 62.273273>,  <30.761513, 36.461987, 62.339409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369562, 36.417252, 62.273273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196424, -0.687704, -0.698914,
		-0.035538, -0.717325, 0.695832,
		-0.979875, -0.111840, -0.165339,
		30.075600, 36.383701, 62.223671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671175, 35.792221, 62.394634>,  <30.761513, 36.461987, 62.339409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671175, 35.792221, 62.394634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355078, 35.904667, 62.176830>,  <30.165419, 35.972134, 62.046150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355078, 35.904667, 62.176830>,  <30.671175, 35.792221, 62.394634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355078, 35.904667, 62.176830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127926, -0.793310, -0.595226,
		-0.599291, -0.540030, 0.590947,
		-0.790244, 0.281116, -0.544507,
		30.118004, 35.989002, 62.013477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391796, 35.226585, 62.247948>,  <30.671175, 35.792221, 62.394634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391796, 35.226585, 62.247948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266705, 35.472717, 61.958515>,  <30.191650, 35.620396, 61.784855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266705, 35.472717, 61.958515>,  <30.391796, 35.226585, 62.247948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266705, 35.472717, 61.958515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247454, -0.682703, -0.687520,
		-0.917043, -0.394058, 0.061233,
		-0.312726, 0.615333, -0.723580,
		30.172886, 35.657318, 61.741440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979855, 34.815323, 61.852638>,  <30.391796, 35.226585, 62.247948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979855, 34.815323, 61.852638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058378, 35.117683, 61.602814>,  <30.105492, 35.299099, 61.452919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058378, 35.117683, 61.602814>,  <29.979855, 34.815323, 61.852638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058378, 35.117683, 61.602814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009134, -0.635515, -0.772035,
		-0.980500, 0.157262, -0.117853,
		0.196309, 0.755903, -0.624559,
		30.117271, 35.344456, 61.415447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777679, 34.547016, 61.228817>,  <29.979855, 34.815323, 61.852638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777679, 34.547016, 61.228817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984463, 34.863789, 61.098835>,  <30.108532, 35.053852, 61.020847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.984463, 34.863789, 61.098835>,  <29.777679, 34.547016, 61.228817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984463, 34.863789, 61.098835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425513, -0.567129, -0.705197,
		-0.742760, 0.226285, -0.630161,
		0.516958, 0.791934, -0.324954,
		30.139549, 35.101368, 61.001350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156582, 34.588142, 60.939430>,  <29.777679, 34.547016, 61.228817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156582, 34.588142, 60.939430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901516, 34.283623, 60.892433>,  <28.748476, 34.100910, 60.864235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901516, 34.283623, 60.892433>,  <29.156582, 34.588142, 60.939430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901516, 34.283623, 60.892433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403931, 0.200588, 0.892526,
		-0.655912, 0.616594, -0.435421,
		-0.637666, -0.761299, -0.117493,
		28.710217, 34.055233, 60.857185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513157, 34.947136, 61.047218>,  <29.156582, 34.588142, 60.939430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513157, 34.947136, 61.047218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412273, 34.566292, 61.116352>,  <28.351744, 34.337784, 61.157833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412273, 34.566292, 61.116352>,  <28.513157, 34.947136, 61.047218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412273, 34.566292, 61.116352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613182, 0.295417, 0.732623,
		-0.748597, 0.078799, -0.658326,
		-0.252211, -0.952113, 0.172831,
		28.336611, 34.280659, 61.168201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743219, 34.927933, 61.215496>,  <28.513157, 34.947136, 61.047218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743219, 34.927933, 61.215496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833651, 34.556622, 61.333603>,  <27.887909, 34.333836, 61.404465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833651, 34.556622, 61.333603>,  <27.743219, 34.927933, 61.215496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833651, 34.556622, 61.333603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520171, 0.141230, 0.842304,
		-0.823596, -0.344015, -0.450936,
		0.226080, -0.928282, 0.295263,
		27.901474, 34.278137, 61.422180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102545, 34.597721, 61.455597>,  <27.743219, 34.927933, 61.215496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102545, 34.597721, 61.455597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374603, 34.381927, 61.654137>,  <27.537838, 34.252453, 61.773262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374603, 34.381927, 61.654137>,  <27.102545, 34.597721, 61.455597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374603, 34.381927, 61.654137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477716, 0.187395, 0.858295,
		-0.556049, -0.820878, -0.130264,
		0.680144, -0.539483, 0.496348,
		27.578648, 34.220081, 61.803040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784517, 33.943729, 61.823975>,  <27.102545, 34.597721, 61.455597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784517, 33.943729, 61.823975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118166, 34.044697, 62.020149>,  <27.318356, 34.105278, 62.137856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118166, 34.044697, 62.020149>,  <26.784517, 33.943729, 61.823975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118166, 34.044697, 62.020149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542886, 0.218408, 0.810909,
		0.097567, -0.942648, 0.319210,
		0.834120, 0.252412, 0.490441,
		27.368402, 34.120422, 62.167282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720982, 33.698627, 62.563061>,  <26.784517, 33.943729, 61.823975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720982, 33.698627, 62.563061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022686, 33.961124, 62.571373>,  <27.203709, 34.118622, 62.576359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022686, 33.961124, 62.571373>,  <26.720982, 33.698627, 62.563061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022686, 33.961124, 62.571373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383834, 0.415044, 0.824869,
		0.532696, -0.630140, 0.564941,
		0.754259, 0.656248, 0.020777,
		27.248964, 34.157997, 62.577606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797314, 33.849068, 63.260498>,  <26.720982, 33.698627, 62.563061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797314, 33.849068, 63.260498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997149, 34.151714, 63.091766>,  <27.117050, 34.333302, 62.990528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997149, 34.151714, 63.091766>,  <26.797314, 33.849068, 63.260498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997149, 34.151714, 63.091766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272866, 0.599615, 0.752334,
		0.822167, -0.260752, 0.506014,
		0.499587, 0.756618, -0.421833,
		27.147024, 34.378700, 62.965218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190411, 34.047691, 63.816544>,  <26.797314, 33.849068, 63.260498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190411, 34.047691, 63.816544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144112, 34.354107, 63.563625>,  <27.116331, 34.537956, 63.411877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144112, 34.354107, 63.563625>,  <27.190411, 34.047691, 63.816544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144112, 34.354107, 63.563625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345153, 0.565882, 0.748764,
		0.931382, 0.304906, 0.198899,
		-0.115749, 0.766035, -0.632291,
		27.109386, 34.583916, 63.373940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542780, 34.627876, 64.133980>,  <27.190411, 34.047691, 63.816544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542780, 34.627876, 64.133980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253965, 34.749905, 63.885597>,  <27.080677, 34.823120, 63.736568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253965, 34.749905, 63.885597>,  <27.542780, 34.627876, 64.133980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253965, 34.749905, 63.885597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552773, 0.285363, 0.782949,
		0.416055, 0.908570, -0.037407,
		-0.722039, 0.305072, -0.620960,
		27.037354, 34.841427, 63.699310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.322189, 34.524429, 47.642647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307793, 34.913723, 47.551861>,  <37.299156, 35.147301, 47.497387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307793, 34.913723, 47.551861>,  <37.322189, 34.524429, 47.642647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307793, 34.913723, 47.551861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902939, 0.065662, 0.424723,
		0.428259, 0.220224, 0.876411,
		-0.035987, 0.973237, -0.226969,
		37.296997, 35.205692, 47.483768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093792, 34.926121, 48.239151>,  <37.322189, 34.524429, 47.642647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093792, 34.926121, 48.239151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016060, 35.202755, 47.960884>,  <36.969421, 35.368736, 47.793926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016060, 35.202755, 47.960884>,  <37.093792, 34.926121, 48.239151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016060, 35.202755, 47.960884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912937, 0.131931, 0.386187,
		0.358860, 0.710145, 0.605734,
		-0.194333, 0.691584, -0.695663,
		36.957760, 35.410229, 47.752186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717445, 35.420155, 48.659504>,  <37.093792, 34.926121, 48.239151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717445, 35.420155, 48.659504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.651863, 35.522293, 48.278366>,  <36.612514, 35.583576, 48.049683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.651863, 35.522293, 48.278366>,  <36.717445, 35.420155, 48.659504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651863, 35.522293, 48.278366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930170, 0.281627, 0.235523,
		0.328487, 0.924924, 0.191342,
		-0.163954, 0.255347, -0.952847,
		36.602676, 35.598896, 47.992512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385288, 36.054577, 48.736416>,  <36.717445, 35.420155, 48.659504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385288, 36.054577, 48.736416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.318684, 35.900253, 48.373444>,  <36.278721, 35.807659, 48.155663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.318684, 35.900253, 48.373444>,  <36.385288, 36.054577, 48.736416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318684, 35.900253, 48.373444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983833, 0.126537, 0.126734,
		0.065929, 0.913860, -0.400642,
		-0.166513, -0.385809, -0.907428,
		36.268730, 35.784512, 48.101215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712124, 36.360218, 48.536526>,  <36.385288, 36.054577, 48.736416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712124, 36.360218, 48.536526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753895, 36.084236, 48.250015>,  <35.778957, 35.918648, 48.078110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.753895, 36.084236, 48.250015>,  <35.712124, 36.360218, 48.536526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753895, 36.084236, 48.250015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993136, -0.110496, -0.038352,
		-0.052685, 0.715368, -0.696759,
		0.104425, -0.689956, -0.716280,
		35.785221, 35.877251, 48.035130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129272, 36.487396, 48.022072>,  <35.712124, 36.360218, 48.536526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129272, 36.487396, 48.022072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.260483, 36.111370, 47.984825>,  <35.339207, 35.885754, 47.962479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.260483, 36.111370, 47.984825>,  <35.129272, 36.487396, 48.022072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260483, 36.111370, 47.984825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944351, -0.328875, -0.006465,
		-0.024546, 0.090056, -0.995634,
		0.328022, -0.940070, -0.093117,
		35.358891, 35.829350, 47.956890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676373, 36.114220, 47.610844>,  <35.129272, 36.487396, 48.022072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676373, 36.114220, 47.610844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.858475, 35.840763, 47.839008>,  <34.967735, 35.676689, 47.975906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.858475, 35.840763, 47.839008>,  <34.676373, 36.114220, 47.610844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858475, 35.840763, 47.839008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887113, -0.402942, 0.225095,
		0.075957, -0.608496, -0.789913,
		0.455259, -0.683645, 0.570412,
		34.995052, 35.635670, 48.010132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381649, 35.527996, 47.492542>,  <34.676373, 36.114220, 47.610844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381649, 35.527996, 47.492542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.511417, 35.472359, 47.866795>,  <34.589279, 35.438976, 48.091347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.511417, 35.472359, 47.866795>,  <34.381649, 35.527996, 47.492542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511417, 35.472359, 47.866795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892091, -0.373880, 0.253745,
		0.314518, -0.916987, -0.245384,
		0.324425, -0.139098, 0.935628,
		34.608746, 35.430630, 48.147484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890301, 35.127201, 47.835152>,  <34.381649, 35.527996, 47.492542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890301, 35.127201, 47.835152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.084663, 35.218735, 48.172562>,  <34.201283, 35.273655, 48.375008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.084663, 35.218735, 48.172562>,  <33.890301, 35.127201, 47.835152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084663, 35.218735, 48.172562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856600, -0.066985, 0.511614,
		0.173576, -0.971159, 0.163469,
		0.485909, 0.228832, 0.843522,
		34.230434, 35.287384, 48.425617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575199, 34.744274, 48.307411>,  <33.890301, 35.127201, 47.835152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575199, 34.744274, 48.307411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.759075, 34.985733, 48.567963>,  <33.869400, 35.130608, 48.724293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.759075, 34.985733, 48.567963>,  <33.575199, 34.744274, 48.307411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759075, 34.985733, 48.567963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777038, -0.081745, 0.624124,
		0.429997, -0.793049, 0.431480,
		0.459690, 0.603648, 0.651379,
		33.896980, 35.166828, 48.763378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640381, 34.389454, 48.907055>,  <33.575199, 34.744274, 48.307411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640381, 34.389454, 48.907055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.656643, 34.783108, 48.976139>,  <33.666401, 35.019299, 49.017590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.656643, 34.783108, 48.976139>,  <33.640381, 34.389454, 48.907055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656643, 34.783108, 48.976139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895098, -0.040945, 0.443985,
		0.444012, -0.172643, 0.879231,
		0.040651, 0.984133, 0.172713,
		33.668839, 35.078346, 49.027954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500473, 34.479534, 49.644745>,  <33.640381, 34.389454, 48.907055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500473, 34.479534, 49.644745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.440418, 34.834812, 49.471046>,  <33.404385, 35.047977, 49.366825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.440418, 34.834812, 49.471046>,  <33.500473, 34.479534, 49.644745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440418, 34.834812, 49.471046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812951, 0.139059, 0.565485,
		0.562646, 0.437922, 0.701180,
		-0.150133, 0.888193, -0.434250,
		33.395378, 35.101269, 49.340771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330971, 35.022682, 50.225327>,  <33.500473, 34.479534, 49.644745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330971, 35.022682, 50.225327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.157738, 35.103428, 49.873943>,  <33.053799, 35.151875, 49.663113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.157738, 35.103428, 49.873943>,  <33.330971, 35.022682, 50.225327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157738, 35.103428, 49.873943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894740, 0.021583, 0.446065,
		0.109005, 0.979175, 0.171271,
		-0.433080, 0.201866, -0.878460,
		33.027813, 35.163986, 49.610405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944622, 35.684189, 50.335442>,  <33.330971, 35.022682, 50.225327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944622, 35.684189, 50.335442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.787086, 35.456463, 50.046783>,  <32.692566, 35.319828, 49.873589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.787086, 35.456463, 50.046783>,  <32.944622, 35.684189, 50.335442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787086, 35.456463, 50.046783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904647, 0.101031, 0.414013,
		-0.162796, 0.815888, -0.554819,
		-0.393842, -0.569315, -0.721643,
		32.668934, 35.285667, 49.830292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302078, 36.034054, 50.165142>,  <32.944622, 35.684189, 50.335442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302078, 36.034054, 50.165142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.283436, 35.641472, 50.090771>,  <32.272251, 35.405922, 50.046150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.283436, 35.641472, 50.090771>,  <32.302078, 36.034054, 50.165142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283436, 35.641472, 50.090771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937823, -0.021105, 0.346472,
		-0.343972, 0.190512, -0.919450,
		-0.046602, -0.981458, -0.185926,
		32.269455, 35.347034, 50.034992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676270, 35.862808, 49.895050>,  <32.302078, 36.034054, 50.165142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676270, 35.862808, 49.895050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.758869, 35.492863, 50.022797>,  <31.808428, 35.270897, 50.099445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.758869, 35.492863, 50.022797>,  <31.676270, 35.862808, 49.895050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758869, 35.492863, 50.022797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939431, -0.096152, 0.328974,
		-0.273547, -0.367952, -0.888697,
		0.206497, -0.924860, 0.319364,
		31.820818, 35.215405, 50.118607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107130, 35.402214, 49.610653>,  <31.676270, 35.862808, 49.895050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107130, 35.402214, 49.610653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.260620, 35.206593, 49.923977>,  <31.352715, 35.089218, 50.111973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.260620, 35.206593, 49.923977>,  <31.107130, 35.402214, 49.610653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260620, 35.206593, 49.923977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920979, -0.140688, 0.363324,
		-0.067480, -0.860835, -0.504390,
		0.383724, -0.489050, 0.783318,
		31.375738, 35.059875, 50.158970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627045, 34.798431, 49.770954>,  <31.107130, 35.402214, 49.610653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627045, 34.798431, 49.770954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.835262, 34.865829, 50.105774>,  <30.960194, 34.906269, 50.306664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.835262, 34.865829, 50.105774>,  <30.627045, 34.798431, 49.770954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835262, 34.865829, 50.105774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852499, 0.047744, 0.520544,
		0.047744, -0.984546, 0.168491,
		-0.520544, -0.168491, -0.837045,
		30.991426, 34.916378, 50.356888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411579, 34.286579, 50.220078>,  <30.627045, 34.798431, 49.770954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411579, 34.286579, 50.220078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.551733, 34.556778, 50.479595>,  <30.635826, 34.718895, 50.635307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.551733, 34.556778, 50.479595>,  <30.411579, 34.286579, 50.220078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551733, 34.556778, 50.479595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869254, -0.023406, 0.493811,
		0.348752, -0.736994, 0.578975,
		0.350384, 0.675494, 0.648798,
		30.656849, 34.759426, 50.674236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143768, 34.117744, 50.755215>,  <30.411579, 34.286579, 50.220078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143768, 34.117744, 50.755215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.252710, 34.485077, 50.870098>,  <30.318075, 34.705475, 50.939030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.252710, 34.485077, 50.870098>,  <30.143768, 34.117744, 50.755215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252710, 34.485077, 50.870098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850003, 0.089748, 0.519077,
		0.450908, -0.385503, 0.805028,
		0.272355, 0.918332, 0.287210,
		30.334417, 34.760578, 50.956261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858997, 34.235161, 51.446438>,  <30.143768, 34.117744, 50.755215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858997, 34.235161, 51.446438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.951433, 34.606007, 51.328419>,  <30.006895, 34.828514, 51.257607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.951433, 34.606007, 51.328419>,  <29.858997, 34.235161, 51.446438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951433, 34.606007, 51.328419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801436, 0.353334, 0.482551,
		0.551631, 0.124951, 0.824676,
		0.231091, 0.927115, -0.295050,
		30.020760, 34.884140, 51.239902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852676, 34.613884, 51.952629>,  <29.858997, 34.235161, 51.446438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852676, 34.613884, 51.952629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.762455, 34.880806, 51.668709>,  <29.708323, 35.040958, 51.498356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.762455, 34.880806, 51.668709>,  <29.852676, 34.613884, 51.952629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762455, 34.880806, 51.668709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874281, 0.182806, 0.449684,
		0.429835, 0.721997, 0.542183,
		-0.225556, 0.667310, -0.709805,
		29.694788, 35.080997, 51.455769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607269, 35.216564, 52.254116>,  <29.852676, 34.613884, 51.952629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607269, 35.216564, 52.254116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.466524, 35.230442, 51.879951>,  <29.382076, 35.238770, 51.655453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.466524, 35.230442, 51.879951>,  <29.607269, 35.216564, 52.254116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466524, 35.230442, 51.879951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894915, 0.280524, 0.347036,
		0.274445, 0.959220, -0.067657,
		-0.351863, 0.034695, -0.935408,
		29.360966, 35.240852, 51.599327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098055, 35.636559, 52.278889>,  <29.607269, 35.216564, 52.254116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098055, 35.636559, 52.278889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.024862, 35.462292, 51.926365>,  <28.980946, 35.357731, 51.714851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.024862, 35.462292, 51.926365>,  <29.098055, 35.636559, 52.278889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.024862, 35.462292, 51.926365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973151, -0.047047, 0.225308,
		-0.139622, 0.898878, -0.415361,
		-0.182983, -0.435667, -0.881312,
		28.969967, 35.331593, 51.661972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544600, 36.003994, 52.100525>,  <29.098055, 35.636559, 52.278889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544600, 36.003994, 52.100525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.529329, 35.680309, 51.866016>,  <28.520166, 35.486099, 51.725311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.529329, 35.680309, 51.866016>,  <28.544600, 36.003994, 52.100525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529329, 35.680309, 51.866016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995324, 0.082886, -0.049593,
		0.088725, 0.581641, -0.808593,
		-0.038176, -0.809212, -0.586275,
		28.517876, 35.437546, 51.690132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079235, 36.165321, 51.579010>,  <28.544600, 36.003994, 52.100525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079235, 36.165321, 51.579010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.076870, 35.765343, 51.582401>,  <28.075451, 35.525356, 51.584435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.076870, 35.765343, 51.582401>,  <28.079235, 36.165321, 51.579010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076870, 35.765343, 51.582401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998762, 0.006323, 0.049348,
		-0.049399, -0.008176, -0.998746,
		-0.005912, -0.999947, 0.008478,
		28.075096, 35.465359, 51.584946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543463, 36.080471, 51.167168>,  <28.079235, 36.165321, 51.579010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543463, 36.080471, 51.167168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.580173, 35.710903, 51.315739>,  <27.602200, 35.489162, 51.404881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.580173, 35.710903, 51.315739>,  <27.543463, 36.080471, 51.167168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580173, 35.710903, 51.315739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995262, -0.073092, 0.064112,
		-0.032086, -0.375549, -0.926247,
		0.091778, -0.923916, 0.371425,
		27.607706, 35.433727, 51.427166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.056322, 35.693409, 50.853413>,  <27.543463, 36.080471, 51.167168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.056322, 35.693409, 50.853413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.123262, 35.483425, 51.187218>,  <27.163427, 35.357433, 51.387501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.123262, 35.483425, 51.187218>,  <27.056322, 35.693409, 50.853413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123262, 35.483425, 51.187218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985889, -0.092481, 0.139534,
		0.003927, -0.846089, -0.533027,
		0.167353, -0.524958, 0.834513,
		27.173468, 35.325935, 51.437572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607538, 35.187042, 50.886719>,  <27.056322, 35.693409, 50.853413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607538, 35.187042, 50.886719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.709490, 35.218491, 51.272228>,  <26.770660, 35.237358, 51.503532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.709490, 35.218491, 51.272228>,  <26.607538, 35.187042, 50.886719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709490, 35.218491, 51.272228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962105, -0.079255, 0.260906,
		0.096895, -0.993749, 0.055437,
		0.254881, 0.078617, 0.963771,
		26.785954, 35.242077, 51.561359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289814, 34.559757, 51.183472>,  <26.607538, 35.187042, 50.886719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289814, 34.559757, 51.183472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.343863, 34.837700, 51.466007>,  <26.376291, 35.004463, 51.635529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.343863, 34.837700, 51.466007>,  <26.289814, 34.559757, 51.183472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343863, 34.837700, 51.466007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909672, -0.195564, 0.366403,
		0.392732, -0.692051, 0.605663,
		0.135124, 0.694853, 0.706343,
		26.384399, 35.046154, 51.677910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911446, 34.334042, 51.714970>,  <26.289814, 34.559757, 51.183472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911446, 34.334042, 51.714970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.978445, 34.719662, 51.797478>,  <26.018644, 34.951035, 51.846985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.978445, 34.719662, 51.797478>,  <25.911446, 34.334042, 51.714970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978445, 34.719662, 51.797478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933797, 0.088040, 0.346801,
		0.316174, -0.250705, 0.914976,
		0.167499, 0.964052, 0.206272,
		26.028694, 35.008877, 51.859360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791920, 34.294895, 52.408649>,  <25.911446, 34.334042, 51.714970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791920, 34.294895, 52.408649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.739798, 34.662952, 52.260944>,  <25.708525, 34.883785, 52.172321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.739798, 34.662952, 52.260944>,  <25.791920, 34.294895, 52.408649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739798, 34.662952, 52.260944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951082, -0.010781, 0.308749,
		0.280112, 0.391432, 0.876538,
		-0.130304, 0.920144, -0.369264,
		25.700706, 34.938995, 52.150166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.575541, 34.640553, 52.973312>,  <25.791920, 34.294895, 52.408649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.575541, 34.640553, 52.973312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.455061, 34.855377, 52.658138>,  <25.382772, 34.984272, 52.469032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.455061, 34.855377, 52.658138>,  <25.575541, 34.640553, 52.973312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455061, 34.855377, 52.658138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920761, 0.051052, 0.386771,
		0.247945, 0.841998, 0.479127,
		-0.301200, 0.537060, -0.787937,
		25.364700, 35.016495, 52.421757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199821, 35.258057, 53.275307>,  <25.575541, 34.640553, 52.973312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199821, 35.258057, 53.275307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.103477, 35.223969, 52.888580>,  <25.045671, 35.203514, 52.656544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.103477, 35.223969, 52.888580>,  <25.199821, 35.258057, 53.275307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.103477, 35.223969, 52.888580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956975, 0.186939, 0.221929,
		0.161821, 0.978668, -0.126582,
		-0.240858, -0.085223, -0.966811,
		25.031219, 35.198402, 52.598537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940149, 35.831413, 53.178524>,  <25.199821, 35.258057, 53.275307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940149, 35.831413, 53.178524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.800703, 35.605370, 52.879425>,  <24.717035, 35.469742, 52.699966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.800703, 35.605370, 52.879425>,  <24.940149, 35.831413, 53.178524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.800703, 35.605370, 52.879425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932896, 0.286160, 0.218673,
		0.090400, 0.773799, -0.626947,
		-0.348616, -0.565109, -0.747743,
		24.696117, 35.435837, 52.655102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.382938, 32.157284, 49.876175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.171112, 32.454777, 49.712997>,  <35.044018, 32.633274, 49.615089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.171112, 32.454777, 49.712997>,  <35.382938, 32.157284, 49.876175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171112, 32.454777, 49.712997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217933, 0.345482, 0.912769,
		0.819796, 0.572275, -0.020870,
		-0.529565, 0.743736, -0.407942,
		35.012241, 32.677898, 49.590614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583878, 32.864605, 50.102913>,  <35.382938, 32.157284, 49.876175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583878, 32.864605, 50.102913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.208038, 32.933414, 49.984554>,  <34.982533, 32.974701, 49.913540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.208038, 32.933414, 49.984554>,  <35.583878, 32.864605, 50.102913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208038, 32.933414, 49.984554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216568, 0.370649, 0.903171,
		0.265039, 0.912704, -0.311008,
		-0.939602, 0.172021, -0.295899,
		34.926159, 32.985020, 49.895786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444176, 33.571815, 50.394920>,  <35.583878, 32.864605, 50.102913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444176, 33.571815, 50.394920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.108658, 33.362881, 50.333488>,  <34.907349, 33.237518, 50.296631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.108658, 33.362881, 50.333488>,  <35.444176, 33.571815, 50.394920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108658, 33.362881, 50.333488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329246, 0.261995, 0.907169,
		-0.433612, 0.811494, -0.391738,
		-0.838796, -0.522337, -0.153577,
		34.857018, 33.206181, 50.287415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962189, 33.891472, 50.807350>,  <35.444176, 33.571815, 50.394920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962189, 33.891472, 50.807350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.784481, 33.535564, 50.765514>,  <34.677856, 33.322021, 50.740414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.784481, 33.535564, 50.765514>,  <34.962189, 33.891472, 50.807350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784481, 33.535564, 50.765514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354866, 0.067579, 0.932471,
		-0.822613, 0.451387, -0.345771,
		-0.444272, -0.889766, -0.104591,
		34.651199, 33.268635, 50.734138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314106, 33.980522, 51.005779>,  <34.962189, 33.891472, 50.807350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314106, 33.980522, 51.005779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353348, 33.583218, 51.030430>,  <34.376892, 33.344833, 51.045219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.353348, 33.583218, 51.030430>,  <34.314106, 33.980522, 51.005779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353348, 33.583218, 51.030430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401733, 0.017124, 0.915596,
		-0.910486, -0.114583, -0.397348,
		0.098108, -0.993266, 0.061623,
		34.382782, 33.285236, 51.048916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783424, 33.903366, 51.355228>,  <34.314106, 33.980522, 51.005779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783424, 33.903366, 51.355228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.997620, 33.567852, 51.394611>,  <34.126137, 33.366543, 51.418243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.997620, 33.567852, 51.394611>,  <33.783424, 33.903366, 51.355228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997620, 33.567852, 51.394611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414386, -0.159370, 0.896039,
		-0.735890, -0.520620, -0.432921,
		0.535490, -0.838782, 0.098460,
		34.158268, 33.316216, 51.424149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339390, 33.449673, 51.615620>,  <33.783424, 33.903366, 51.355228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339390, 33.449673, 51.615620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.701923, 33.313942, 51.716347>,  <33.919445, 33.232506, 51.776783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.701923, 33.313942, 51.716347>,  <33.339390, 33.449673, 51.615620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701923, 33.313942, 51.716347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302212, -0.104008, 0.947550,
		-0.295335, -0.934902, -0.196814,
		0.906336, -0.339324, 0.251821,
		33.973824, 33.212147, 51.791893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180912, 32.934647, 51.955444>,  <33.339390, 33.449673, 51.615620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180912, 32.934647, 51.955444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.560871, 32.983170, 52.070663>,  <33.788849, 33.012283, 52.139797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.560871, 32.983170, 52.070663>,  <33.180912, 32.934647, 51.955444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560871, 32.983170, 52.070663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260369, -0.202717, 0.943988,
		0.172902, -0.971695, -0.160978,
		0.949901, 0.121303, 0.288050,
		33.845840, 33.019562, 52.157078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402874, 32.313988, 52.342480>,  <33.180912, 32.934647, 51.955444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402874, 32.313988, 52.342480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.662117, 32.600235, 52.446667>,  <33.817661, 32.771984, 52.509178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.662117, 32.600235, 52.446667>,  <33.402874, 32.313988, 52.342480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662117, 32.600235, 52.446667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191629, -0.177764, 0.965235,
		0.737044, -0.675489, 0.021924,
		0.648108, 0.715622, 0.260463,
		33.856548, 32.814922, 52.524807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835526, 32.098598, 53.028660>,  <33.402874, 32.313988, 52.342480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835526, 32.098598, 53.028660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.843620, 32.497330, 52.997887>,  <33.848476, 32.736568, 52.979424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.843620, 32.497330, 52.997887>,  <33.835526, 32.098598, 53.028660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843620, 32.497330, 52.997887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282042, 0.079511, 0.956102,
		0.959189, 0.002351, 0.282757,
		0.020235, 0.996831, -0.076929,
		33.849689, 32.796379, 52.974808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288250, 32.241688, 53.544628>,  <33.835526, 32.098598, 53.028660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288250, 32.241688, 53.544628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.057335, 32.561695, 53.479263>,  <33.918785, 32.753700, 53.440044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.057335, 32.561695, 53.479263>,  <34.288250, 32.241688, 53.544628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057335, 32.561695, 53.479263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321978, -0.039122, 0.945939,
		0.750378, 0.598695, 0.280174,
		-0.577289, 0.800021, -0.163410,
		33.884148, 32.801701, 53.430241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418484, 32.629753, 54.135071>,  <34.288250, 32.241688, 53.544628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418484, 32.629753, 54.135071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069866, 32.730598, 53.966862>,  <33.860695, 32.791107, 53.865936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.069866, 32.730598, 53.966862>,  <34.418484, 32.629753, 54.135071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069866, 32.730598, 53.966862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431523, 0.012796, 0.902011,
		0.232794, 0.967612, 0.097642,
		-0.871548, 0.252117, -0.420525,
		33.808403, 32.806232, 53.840706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598946, 33.383152, 54.215584>,  <34.418484, 32.629753, 54.135071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598946, 33.383152, 54.215584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.928722, 33.592831, 54.300922>,  <35.126587, 33.718639, 54.352127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.928722, 33.592831, 54.300922>,  <34.598946, 33.383152, 54.215584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928722, 33.592831, 54.300922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296318, -0.078641, -0.951846,
		-0.482176, 0.847959, -0.220164,
		0.824440, 0.524196, 0.213347,
		35.176056, 33.750088, 54.364925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730289, 33.866196, 53.699863>,  <34.598946, 33.383152, 54.215584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730289, 33.866196, 53.699863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.092476, 33.825397, 53.864651>,  <35.309788, 33.800919, 53.963524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.092476, 33.825397, 53.864651>,  <34.730289, 33.866196, 53.699863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092476, 33.825397, 53.864651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419698, 0.070953, -0.904886,
		0.063062, 0.992252, 0.107052,
		0.905470, -0.101993, 0.411972,
		35.364117, 33.794800, 53.988243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026566, 34.434414, 53.499996>,  <34.730289, 33.866196, 53.699863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026566, 34.434414, 53.499996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330132, 34.185715, 53.577435>,  <35.512272, 34.036495, 53.623898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330132, 34.185715, 53.577435>,  <35.026566, 34.434414, 53.499996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330132, 34.185715, 53.577435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491779, 0.352339, -0.796248,
		0.426858, 0.699486, 0.573159,
		0.758911, -0.621752, 0.193594,
		35.557804, 33.999187, 53.635513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639286, 34.729797, 53.239784>,  <35.026566, 34.434414, 53.499996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639286, 34.729797, 53.239784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.793320, 34.367275, 53.309429>,  <35.885738, 34.149761, 53.351215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.793320, 34.367275, 53.309429>,  <35.639286, 34.729797, 53.239784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793320, 34.367275, 53.309429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690324, 0.157662, -0.706113,
		0.612506, 0.392104, 0.686360,
		0.385082, -0.906310, 0.174110,
		35.908844, 34.095383, 53.361664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290699, 34.850937, 53.191917>,  <35.639286, 34.729797, 53.239784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290699, 34.850937, 53.191917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300400, 34.455383, 53.133251>,  <36.306221, 34.218048, 53.098053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.300400, 34.455383, 53.133251>,  <36.290699, 34.850937, 53.191917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300400, 34.455383, 53.133251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553039, 0.135485, -0.822065,
		0.832802, -0.061178, 0.550180,
		0.024249, -0.988889, -0.146666,
		36.307674, 34.158718, 53.089252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014389, 34.637516, 53.059017>,  <36.290699, 34.850937, 53.191917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014389, 34.637516, 53.059017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.774731, 34.365864, 52.889400>,  <36.630936, 34.202873, 52.787632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.774731, 34.365864, 52.889400>,  <37.014389, 34.637516, 53.059017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774731, 34.365864, 52.889400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601064, -0.031650, -0.798574,
		0.528913, -0.733337, 0.427162,
		-0.599144, -0.679128, -0.424043,
		36.594986, 34.162125, 52.762188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399330, 33.972073, 52.938709>,  <37.014389, 34.637516, 53.059017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399330, 33.972073, 52.938709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.099274, 33.976681, 52.674236>,  <36.919239, 33.979446, 52.515553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.099274, 33.976681, 52.674236>,  <37.399330, 33.972073, 52.938709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099274, 33.976681, 52.674236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660790, -0.025501, -0.750138,
		-0.025501, -0.999609, 0.011518,
		0.750138, -0.011518, 0.661181,
		36.874233, 33.980137, 52.475883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629513, 33.546749, 52.376373>,  <37.399330, 33.972073, 52.938709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629513, 33.546749, 52.376373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.323711, 33.733261, 52.198334>,  <37.140232, 33.845169, 52.091511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.323711, 33.733261, 52.198334>,  <37.629513, 33.546749, 52.376373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323711, 33.733261, 52.198334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523147, 0.045362, -0.851034,
		-0.376633, -0.883472, -0.278614,
		-0.764503, 0.466283, -0.445101,
		37.094360, 33.873146, 52.064804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635330, 33.217922, 51.706100>,  <37.629513, 33.546749, 52.376373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635330, 33.217922, 51.706100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.417538, 33.552647, 51.683136>,  <37.286861, 33.753479, 51.669357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.417538, 33.552647, 51.683136>,  <37.635330, 33.217922, 51.706100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417538, 33.552647, 51.683136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379909, 0.185011, -0.906333,
		-0.747804, -0.515291, -0.418646,
		-0.544480, 0.836807, -0.057412,
		37.254192, 33.803688, 51.665913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085808, 33.194820, 51.160587>,  <37.635330, 33.217922, 51.706100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085808, 33.194820, 51.160587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.186447, 33.572510, 51.245575>,  <37.246830, 33.799122, 51.296566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.186447, 33.572510, 51.245575>,  <37.085808, 33.194820, 51.160587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186447, 33.572510, 51.245575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343422, 0.118146, -0.931720,
		-0.904852, 0.307390, -0.294540,
		0.251603, 0.944221, 0.212469,
		37.261929, 33.855778, 51.309315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108459, 33.436886, 50.427174>,  <37.085808, 33.194820, 51.160587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108459, 33.436886, 50.427174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.277363, 33.740166, 50.625900>,  <37.378704, 33.922134, 50.745136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.277363, 33.740166, 50.625900>,  <37.108459, 33.436886, 50.427174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277363, 33.740166, 50.625900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544450, 0.226070, -0.807754,
		-0.724757, 0.611571, -0.317344,
		0.422257, 0.758203, 0.496816,
		37.404041, 33.967628, 50.774944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123211, 33.913139, 49.878319>,  <37.108459, 33.436886, 50.427174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123211, 33.913139, 49.878319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380627, 34.024906, 50.163357>,  <37.535076, 34.091965, 50.334377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380627, 34.024906, 50.163357>,  <37.123211, 33.913139, 49.878319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380627, 34.024906, 50.163357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579502, 0.430341, -0.692086,
		-0.500037, 0.858332, 0.115018,
		0.643537, 0.279416, 0.712592,
		37.573689, 34.108730, 50.377136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337105, 34.696571, 49.708092>,  <37.123211, 33.913139, 49.878319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337105, 34.696571, 49.708092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618771, 34.541393, 49.945965>,  <37.787769, 34.448288, 50.088688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.618771, 34.541393, 49.945965>,  <37.337105, 34.696571, 49.708092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618771, 34.541393, 49.945965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709406, 0.349134, -0.612249,
		0.029896, 0.852996, 0.521060,
		0.704166, -0.387947, 0.594683,
		37.830021, 34.425011, 50.124371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834270, 35.160084, 49.988113>,  <37.337105, 34.696571, 49.708092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834270, 35.160084, 49.988113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.020367, 34.806839, 49.963936>,  <38.132027, 34.594891, 49.949429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.020367, 34.806839, 49.963936>,  <37.834270, 35.160084, 49.988113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020367, 34.806839, 49.963936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753720, 0.431029, -0.496105,
		0.464170, 0.185256, 0.866156,
		0.465245, -0.883116, -0.060439,
		38.159939, 34.541904, 49.945805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294331, 35.663834, 49.510902>,  <37.834270, 35.160084, 49.988113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294331, 35.663834, 49.510902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.260944, 35.994850, 49.288834>,  <38.240913, 36.193459, 49.155594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.260944, 35.994850, 49.288834>,  <38.294331, 35.663834, 49.510902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260944, 35.994850, 49.288834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988719, -0.138301, -0.057507,
		-0.124370, 0.544106, 0.829747,
		-0.083465, 0.827539, -0.555169,
		38.235905, 36.243111, 49.122284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751537, 35.985146, 49.836945>,  <38.294331, 35.663834, 49.510902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751537, 35.985146, 49.836945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.784412, 36.080757, 49.449932>,  <37.804138, 36.138123, 49.217724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.784412, 36.080757, 49.449932>,  <37.751537, 35.985146, 49.836945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784412, 36.080757, 49.449932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980790, -0.152925, -0.121096,
		-0.176904, 0.958896, 0.221865,
		0.082189, 0.239026, -0.967529,
		37.809071, 36.152466, 49.159672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313099, 36.472729, 49.692001>,  <37.751537, 35.985146, 49.836945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313099, 36.472729, 49.692001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340961, 36.259220, 49.354900>,  <37.357681, 36.131115, 49.152637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340961, 36.259220, 49.354900>,  <37.313099, 36.472729, 49.692001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340961, 36.259220, 49.354900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987500, -0.156634, 0.017581,
		-0.141389, 0.830997, -0.538009,
		0.069660, -0.533770, -0.842756,
		37.361858, 36.099091, 49.102074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893745, 36.461502, 49.071484>,  <37.313099, 36.472729, 49.692001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893745, 36.461502, 49.071484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.577026, 36.694061, 48.996616>,  <36.386993, 36.833595, 48.951694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.577026, 36.694061, 48.996616>,  <36.893745, 36.461502, 49.071484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577026, 36.694061, 48.996616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088694, 0.193743, 0.977035,
		0.604306, 0.790217, -0.101840,
		-0.791800, 0.581395, -0.187168,
		36.339485, 36.868481, 48.940468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928928, 37.176800, 49.458317>,  <36.893745, 36.461502, 49.071484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928928, 37.176800, 49.458317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.546860, 37.102318, 49.366249>,  <36.317619, 37.057629, 49.311008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.546860, 37.102318, 49.366249>,  <36.928928, 37.176800, 49.458317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546860, 37.102318, 49.366249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248789, 0.083387, 0.964962,
		-0.160490, 0.978965, -0.125975,
		-0.955169, -0.186208, -0.230173,
		36.260307, 37.046455, 49.297195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613342, 37.604454, 49.941299>,  <36.928928, 37.176800, 49.458317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613342, 37.604454, 49.941299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.302422, 37.391441, 49.807312>,  <36.115868, 37.263634, 49.726917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.302422, 37.391441, 49.807312>,  <36.613342, 37.604454, 49.941299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302422, 37.391441, 49.807312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453593, 0.105431, 0.884951,
		-0.435949, 0.839817, -0.323505,
		-0.777304, -0.532533, -0.334972,
		36.069229, 37.231682, 49.706821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958561, 38.052162, 50.013638>,  <36.613342, 37.604454, 49.941299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958561, 38.052162, 50.013638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.850941, 37.666946, 50.018806>,  <35.786369, 37.435818, 50.021908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.850941, 37.666946, 50.018806>,  <35.958561, 38.052162, 50.013638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850941, 37.666946, 50.018806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485145, 0.147106, 0.861971,
		-0.832015, 0.225640, -0.506792,
		-0.269047, -0.963041, 0.012926,
		35.770226, 37.378033, 50.022686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294174, 38.041328, 50.078781>,  <35.958561, 38.052162, 50.013638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294174, 38.041328, 50.078781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.405468, 37.681610, 50.213745>,  <35.472244, 37.465778, 50.294724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.405468, 37.681610, 50.213745>,  <35.294174, 38.041328, 50.078781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405468, 37.681610, 50.213745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605689, 0.108366, 0.788288,
		-0.745470, -0.423697, -0.514543,
		0.278236, -0.899298, 0.337412,
		35.488937, 37.411819, 50.314968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708450, 37.703030, 50.272617>,  <35.294174, 38.041328, 50.078781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708450, 37.703030, 50.272617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.000843, 37.500603, 50.455730>,  <35.176277, 37.379147, 50.565598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.000843, 37.500603, 50.455730>,  <34.708450, 37.703030, 50.272617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000843, 37.500603, 50.455730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499916, 0.059500, 0.864027,
		-0.464491, -0.860441, -0.209496,
		0.730980, -0.506063, 0.457786,
		35.220139, 37.348785, 50.593067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365879, 37.210670, 50.705589>,  <34.708450, 37.703030, 50.272617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365879, 37.210670, 50.705589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.736443, 37.260933, 50.847565>,  <34.958778, 37.291092, 50.932751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.736443, 37.260933, 50.847565>,  <34.365879, 37.210670, 50.705589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736443, 37.260933, 50.847565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329499, -0.185649, 0.925724,
		0.182220, -0.974548, -0.130582,
		0.926405, 0.125658, 0.354942,
		35.014362, 37.298630, 50.954048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431217, 36.628113, 51.154655>,  <34.365879, 37.210670, 50.705589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431217, 36.628113, 51.154655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.693531, 36.914646, 51.250004>,  <34.850918, 37.086567, 51.307213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.693531, 36.914646, 51.250004>,  <34.431217, 36.628113, 51.154655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693531, 36.914646, 51.250004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264831, -0.077401, 0.961183,
		0.706975, -0.693455, 0.138948,
		0.655783, 0.716330, 0.238369,
		34.890266, 37.129547, 51.321514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509418, 36.526184, 51.895084>,  <34.431217, 36.628113, 51.154655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509418, 36.526184, 51.895084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.674217, 36.887829, 51.849754>,  <34.773094, 37.104816, 51.822556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.674217, 36.887829, 51.849754>,  <34.509418, 36.526184, 51.895084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674217, 36.887829, 51.849754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345502, 0.270093, 0.898709,
		0.843143, -0.331106, 0.423649,
		0.411992, 0.904112, -0.113330,
		34.797813, 37.159061, 51.815754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741253, 36.732021, 52.548264>,  <34.509418, 36.526184, 51.895084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741253, 36.732021, 52.548264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.734818, 37.087208, 52.364410>,  <34.730957, 37.300320, 52.254101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.734818, 37.087208, 52.364410>,  <34.741253, 36.732021, 52.548264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734818, 37.087208, 52.364410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324863, 0.430107, 0.842302,
		0.945624, 0.162870, 0.281546,
		-0.016091, 0.887965, -0.459630,
		34.729992, 37.353596, 52.226521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079128, 37.217155, 53.007641>,  <34.741253, 36.732021, 52.548264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079128, 37.217155, 53.007641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.821636, 37.424511, 52.782471>,  <34.667141, 37.548923, 52.647369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.821636, 37.424511, 52.782471>,  <35.079128, 37.217155, 53.007641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821636, 37.424511, 52.782471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372435, 0.430384, 0.822230,
		0.668512, 0.738945, -0.083982,
		-0.643726, 0.518393, -0.562926,
		34.628517, 37.580029, 52.613594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211670, 37.885971, 53.299198>,  <35.079128, 37.217155, 53.007641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211670, 37.885971, 53.299198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.857574, 37.881546, 53.113197>,  <34.645119, 37.878891, 53.001598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.857574, 37.881546, 53.113197>,  <35.211670, 37.885971, 53.299198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857574, 37.881546, 53.113197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394035, 0.549046, 0.737078,
		0.247157, 0.835719, -0.490395,
		-0.885240, -0.011059, -0.465003,
		34.592003, 37.878227, 52.973698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916550, 38.535519, 53.382797>,  <35.211670, 37.885971, 53.299198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916550, 38.535519, 53.382797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593311, 38.321594, 53.284039>,  <34.399368, 38.193237, 53.224785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593311, 38.321594, 53.284039>,  <34.916550, 38.535519, 53.382797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593311, 38.321594, 53.284039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513328, 0.433782, 0.740491,
		-0.288926, 0.725125, -0.625072,
		-0.808094, -0.534814, -0.246896,
		34.350883, 38.161148, 53.209969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298958, 38.977139, 53.405731>,  <34.916550, 38.535519, 53.382797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298958, 38.977139, 53.405731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.179356, 38.600063, 53.464977>,  <34.107594, 38.373817, 53.500523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.179356, 38.600063, 53.464977>,  <34.298958, 38.977139, 53.405731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179356, 38.600063, 53.464977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437928, 0.273460, 0.856410,
		-0.847829, 0.191210, -0.494595,
		-0.299006, -0.942687, 0.148111,
		34.089653, 38.317257, 53.509411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667931, 39.189247, 53.792736>,  <34.298958, 38.977139, 53.405731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667931, 39.189247, 53.792736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.717815, 38.794418, 53.832993>,  <33.747746, 38.557522, 53.857147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.717815, 38.794418, 53.832993>,  <33.667931, 39.189247, 53.792736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717815, 38.794418, 53.832993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523090, 0.020782, 0.852024,
		-0.843103, -0.158902, -0.513738,
		0.124712, -0.987075, 0.100641,
		33.755230, 38.498295, 53.863186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010021, 38.880310, 53.710949>,  <33.667931, 39.189247, 53.792736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010021, 38.880310, 53.710949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.235134, 38.615597, 53.909069>,  <33.370201, 38.456768, 54.027939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.235134, 38.615597, 53.909069>,  <33.010021, 38.880310, 53.710949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235134, 38.615597, 53.909069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685043, -0.038074, 0.727507,
		-0.462594, -0.748727, -0.474778,
		0.562781, -0.661784, 0.495298,
		33.403969, 38.417061, 54.057659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577896, 38.301685, 53.909969>,  <33.010021, 38.880310, 53.710949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577896, 38.301685, 53.909969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.879051, 38.286350, 54.172783>,  <33.059746, 38.277149, 54.330471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.879051, 38.286350, 54.172783>,  <32.577896, 38.301685, 53.909969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879051, 38.286350, 54.172783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653738, -0.158935, 0.739842,
		0.076065, -0.986545, -0.144721,
		0.752889, -0.038334, 0.657031,
		33.104919, 38.274849, 54.369892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439587, 37.753929, 54.408993>,  <32.577896, 38.301685, 53.909969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439587, 37.753929, 54.408993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.706169, 37.980820, 54.602528>,  <32.866119, 38.116955, 54.718647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.706169, 37.980820, 54.602528>,  <32.439587, 37.753929, 54.408993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706169, 37.980820, 54.602528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478553, -0.172168, 0.861014,
		0.571689, -0.805366, 0.156705,
		0.666453, 0.567224, 0.483837,
		32.906105, 38.150986, 54.747677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487213, 37.401009, 55.072899>,  <32.439587, 37.753929, 54.408993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487213, 37.401009, 55.072899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.648170, 37.762611, 55.130665>,  <32.744743, 37.979572, 55.165325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.648170, 37.762611, 55.130665>,  <32.487213, 37.401009, 55.072899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648170, 37.762611, 55.130665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200611, -0.066839, 0.977388,
		0.893217, -0.422262, 0.154458,
		0.402391, 0.904006, 0.144412,
		32.768887, 38.033813, 55.173988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908844, 37.284386, 55.635544>,  <32.487213, 37.401009, 55.072899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908844, 37.284386, 55.635544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.846790, 37.679485, 55.628872>,  <32.809559, 37.916546, 55.624870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.846790, 37.679485, 55.628872>,  <32.908844, 37.284386, 55.635544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846790, 37.679485, 55.628872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279084, -0.027626, 0.959869,
		0.947653, 0.153561, 0.279951,
		-0.155132, 0.987753, -0.016677,
		32.800251, 37.975811, 55.623867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243725, 37.638424, 56.191315>,  <32.908844, 37.284386, 55.635544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243725, 37.638424, 56.191315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.921772, 37.843540, 56.071846>,  <32.728600, 37.966610, 56.000164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.921772, 37.843540, 56.071846>,  <33.243725, 37.638424, 56.191315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921772, 37.843540, 56.071846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368288, -0.036986, 0.928976,
		0.465324, 0.857716, 0.218624,
		-0.804883, 0.512792, -0.298676,
		32.680305, 37.997379, 55.982243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176643, 38.080715, 56.778519>,  <33.243725, 37.638424, 56.191315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176643, 38.080715, 56.778519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.834785, 38.117283, 56.574078>,  <32.629669, 38.139225, 56.451412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.834785, 38.117283, 56.574078>,  <33.176643, 38.080715, 56.778519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834785, 38.117283, 56.574078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505945, 0.074464, 0.859345,
		0.116623, 0.993024, -0.017385,
		-0.854645, 0.091424, -0.511100,
		32.578392, 38.144711, 56.420746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929657, 38.722168, 56.924118>,  <33.176643, 38.080715, 56.778519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929657, 38.722168, 56.924118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.618057, 38.501656, 56.804619>,  <32.431099, 38.369347, 56.732918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.618057, 38.501656, 56.804619>,  <32.929657, 38.722168, 56.924118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618057, 38.501656, 56.804619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459222, 0.177190, 0.870471,
		-0.426939, 0.815287, -0.391191,
		-0.778998, -0.551281, -0.298748,
		32.384357, 38.336269, 56.714993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266167, 39.068081, 57.255428>,  <32.929657, 38.722168, 56.924118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266167, 39.068081, 57.255428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.095844, 38.739540, 57.103600>,  <31.993650, 38.542416, 57.012505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.095844, 38.739540, 57.103600>,  <32.266167, 39.068081, 57.255428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095844, 38.739540, 57.103600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544869, -0.102147, 0.832276,
		-0.722362, 0.561203, -0.404034,
		-0.425805, -0.821351, -0.379569,
		31.968103, 38.493134, 56.989727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560102, 39.134426, 57.329578>,  <32.266167, 39.068081, 57.255428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560102, 39.134426, 57.329578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.639778, 38.743229, 57.304771>,  <31.687584, 38.508511, 57.289886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.639778, 38.743229, 57.304771>,  <31.560102, 39.134426, 57.329578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639778, 38.743229, 57.304771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656935, -0.180219, 0.732091,
		-0.727159, -0.105084, -0.678378,
		0.199187, -0.977997, -0.062014,
		31.699533, 38.449829, 57.286167>
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
