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
	<24.762135, 35.313606, 35.315727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392881, 35.176407, 35.246243>,  <24.171329, 35.094090, 35.204552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392881, 35.176407, 35.246243>,  <24.762135, 35.313606, 35.315727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392881, 35.176407, 35.246243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017150, -0.488096, 0.872621,
		-0.384094, 0.802568, 0.456461,
		-0.923135, -0.342996, -0.173711,
		24.115940, 35.073509, 35.194130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.763884, 35.787163, 35.708748>,  <24.762135, 35.313606, 35.315727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.763884, 35.787163, 35.708748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915064, 35.729637, 35.342915>,  <25.005772, 35.695122, 35.123413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915064, 35.729637, 35.342915>,  <24.763884, 35.787163, 35.708748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.915064, 35.729637, 35.342915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292518, 0.955807, -0.029415,
		0.878400, -0.256416, 0.403316,
		0.377950, -0.143815, -0.914588,
		25.028448, 35.686493, 35.068539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.564131, 35.838474, 35.700226>,  <24.763884, 35.787163, 35.708748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.564131, 35.838474, 35.700226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.370564, 35.960331, 35.372074>,  <25.254423, 36.033447, 35.175182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.370564, 35.960331, 35.372074>,  <25.564131, 35.838474, 35.700226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.370564, 35.960331, 35.372074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296401, 0.939099, 0.173896,
		0.823390, -0.159009, -0.544743,
		-0.483917, 0.304646, -0.820375,
		25.225389, 36.051723, 35.125961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.043509, 36.098652, 35.233379>,  <25.564131, 35.838474, 35.700226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.043509, 36.098652, 35.233379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694715, 36.288738, 35.186359>,  <25.485439, 36.402790, 35.158150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.694715, 36.288738, 35.186359>,  <26.043509, 36.098652, 35.233379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694715, 36.288738, 35.186359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429233, 0.857650, 0.283189,
		0.235389, 0.196481, -0.951833,
		-0.871981, 0.475218, -0.117546,
		25.433121, 36.431305, 35.151096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146641, 36.746319, 34.853542>,  <26.043509, 36.098652, 35.233379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146641, 36.746319, 34.853542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830599, 36.786106, 35.095482>,  <25.640974, 36.809978, 35.240646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830599, 36.786106, 35.095482>,  <26.146641, 36.746319, 34.853542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830599, 36.786106, 35.095482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433302, 0.788582, 0.436334,
		-0.433572, 0.606831, -0.666161,
		-0.790105, 0.099466, 0.604848,
		25.593567, 36.815945, 35.276936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865108, 37.474037, 34.900429>,  <26.146641, 36.746319, 34.853542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865108, 37.474037, 34.900429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737499, 37.344803, 35.256821>,  <25.660934, 37.267262, 35.470654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737499, 37.344803, 35.256821>,  <25.865108, 37.474037, 34.900429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737499, 37.344803, 35.256821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381896, 0.816577, 0.432847,
		-0.867399, 0.478349, -0.137122,
		-0.319023, -0.323085, 0.890978,
		25.641792, 37.247879, 35.524113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.305126, 37.602272, 35.471867>,  <25.865108, 37.474037, 34.900429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.305126, 37.602272, 35.471867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339310, 37.465645, 35.846252>,  <26.359819, 37.383667, 36.070885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339310, 37.465645, 35.846252>,  <26.305126, 37.602272, 35.471867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339310, 37.465645, 35.846252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635049, 0.705181, 0.315329,
		-0.767730, -0.621331, -0.156649,
		0.085458, -0.341567, 0.935964,
		26.364946, 37.363174, 36.127041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994436, 37.313801, 35.276299>,  <26.305126, 37.602272, 35.471867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994436, 37.313801, 35.276299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372288, 37.445049, 35.277828>,  <27.598999, 37.523796, 35.278748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.372288, 37.445049, 35.277828>,  <26.994436, 37.313801, 35.276299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372288, 37.445049, 35.277828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283297, 0.809597, 0.514098,
		0.165585, -0.486716, 0.857723,
		0.944629, 0.328117, 0.003828,
		27.655676, 37.543484, 35.278976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102837, 37.449032, 36.004280>,  <26.994436, 37.313801, 35.276299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102837, 37.449032, 36.004280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398617, 37.633057, 35.807686>,  <27.576084, 37.743469, 35.689728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398617, 37.633057, 35.807686>,  <27.102837, 37.449032, 36.004280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398617, 37.633057, 35.807686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076262, 0.782606, 0.617829,
		0.668877, -0.419373, 0.613784,
		0.739451, 0.460060, -0.491485,
		27.620451, 37.771076, 35.660240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640663, 37.568653, 36.476006>,  <27.102837, 37.449032, 36.004280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640663, 37.568653, 36.476006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674376, 37.852261, 36.195950>,  <27.694603, 38.022427, 36.027916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674376, 37.852261, 36.195950>,  <27.640663, 37.568653, 36.476006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674376, 37.852261, 36.195950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213969, 0.699123, 0.682235,
		0.973198, 0.092309, 0.210630,
		0.084280, 0.709018, -0.700136,
		27.699659, 38.064964, 35.985909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880320, 38.096199, 36.862072>,  <27.640663, 37.568653, 36.476006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880320, 38.096199, 36.862072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769440, 38.262344, 36.515514>,  <27.702911, 38.362030, 36.307579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769440, 38.262344, 36.515514>,  <27.880320, 38.096199, 36.862072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769440, 38.262344, 36.515514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198498, 0.857518, 0.474616,
		0.940085, 0.303540, -0.155253,
		-0.277197, 0.415362, -0.866392,
		27.686281, 38.386951, 36.255596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294197, 38.701832, 36.748528>,  <27.880320, 38.096199, 36.862072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294197, 38.701832, 36.748528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968271, 38.770927, 36.527172>,  <27.772717, 38.812386, 36.394360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968271, 38.770927, 36.527172>,  <28.294197, 38.701832, 36.748528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968271, 38.770927, 36.527172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118279, 0.884961, 0.450393,
		0.567529, 0.432441, -0.700646,
		-0.814813, 0.172740, -0.553390,
		27.723827, 38.822750, 36.361156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495373, 39.292549, 36.467941>,  <28.294197, 38.701832, 36.748528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495373, 39.292549, 36.467941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098795, 39.243370, 36.450394>,  <27.860849, 39.213863, 36.439865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098795, 39.243370, 36.450394>,  <28.495373, 39.292549, 36.467941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098795, 39.243370, 36.450394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130425, 0.946993, 0.293588,
		0.005453, 0.296798, -0.954925,
		-0.991443, -0.122945, -0.043874,
		27.801361, 39.206486, 36.437233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270956, 39.928253, 36.218159>,  <28.495373, 39.292549, 36.467941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270956, 39.928253, 36.218159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925665, 39.789303, 36.364674>,  <27.718491, 39.705933, 36.452583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925665, 39.789303, 36.364674>,  <28.270956, 39.928253, 36.218159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925665, 39.789303, 36.364674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281806, 0.933605, 0.221285,
		-0.418840, 0.087796, -0.903806,
		-0.863226, -0.347380, 0.366290,
		27.666697, 39.685089, 36.474560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736135, 40.334560, 35.917107>,  <28.270956, 39.928253, 36.218159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736135, 40.334560, 35.917107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582865, 40.166786, 36.246288>,  <27.490902, 40.066120, 36.443798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582865, 40.166786, 36.246288>,  <27.736135, 40.334560, 35.917107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582865, 40.166786, 36.246288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195527, 0.907596, 0.371535,
		-0.902743, -0.018545, -0.429781,
		-0.383178, -0.419434, 0.822952,
		27.467911, 40.040955, 36.493176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218622, 40.826675, 36.129105>,  <27.736135, 40.334560, 35.917107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218622, 40.826675, 36.129105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316475, 40.601223, 36.444691>,  <27.375187, 40.465950, 36.634045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.316475, 40.601223, 36.444691>,  <27.218622, 40.826675, 36.129105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316475, 40.601223, 36.444691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064337, 0.802462, 0.593224,
		-0.967479, -0.195882, 0.160046,
		0.244633, -0.563635, 0.788968,
		27.389864, 40.432133, 36.681381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751093, 40.985416, 36.672859>,  <27.218622, 40.826675, 36.129105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751093, 40.985416, 36.672859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077196, 40.864700, 36.870556>,  <27.272858, 40.792271, 36.989174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.077196, 40.864700, 36.870556>,  <26.751093, 40.985416, 36.672859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077196, 40.864700, 36.870556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203712, 0.649463, 0.732597,
		-0.542083, -0.697940, 0.468002,
		0.815259, -0.301791, 0.494242,
		27.321774, 40.774162, 37.018829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530441, 41.089886, 37.278790>,  <26.751093, 40.985416, 36.672859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530441, 41.089886, 37.278790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920187, 41.041279, 37.354523>,  <27.154034, 41.012115, 37.399963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920187, 41.041279, 37.354523>,  <26.530441, 41.089886, 37.278790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920187, 41.041279, 37.354523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063892, 0.657445, 0.750789,
		-0.215709, -0.743639, 0.632828,
		0.974365, -0.121519, 0.189330,
		27.212496, 41.004822, 37.411324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500883, 41.137676, 38.019569>,  <26.530441, 41.089886, 37.278790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500883, 41.137676, 38.019569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884420, 41.164703, 37.909260>,  <27.114542, 41.180920, 37.843075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884420, 41.164703, 37.909260>,  <26.500883, 41.137676, 38.019569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.884420, 41.164703, 37.909260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150238, 0.703425, 0.694709,
		0.240931, -0.707550, 0.664323,
		0.958843, 0.067570, -0.275778,
		27.172073, 41.184975, 37.826527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946550, 41.149170, 38.676003>,  <26.500883, 41.137676, 38.019569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946550, 41.149170, 38.676003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.120070, 41.315811, 38.356438>,  <27.224182, 41.415794, 38.164700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.120070, 41.315811, 38.356438>,  <26.946550, 41.149170, 38.676003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.120070, 41.315811, 38.356438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223798, 0.809080, 0.543419,
		0.872773, -0.414530, 0.257744,
		0.433799, 0.416599, -0.798914,
		27.250210, 41.440792, 38.116764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588652, 41.401508, 38.963593>,  <26.946550, 41.149170, 38.676003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588652, 41.401508, 38.963593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513521, 41.580360, 38.613781>,  <27.468443, 41.687672, 38.403896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.513521, 41.580360, 38.613781>,  <27.588652, 41.401508, 38.963593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513521, 41.580360, 38.613781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285252, 0.876828, 0.387045,
		0.939868, -0.176764, -0.292236,
		-0.187825, 0.447132, -0.874525,
		27.457174, 41.714500, 38.351425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970585, 41.868820, 39.107681>,  <27.588652, 41.401508, 38.963593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970585, 41.868820, 39.107681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752636, 41.998997, 38.798565>,  <27.621866, 42.077103, 38.613094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752636, 41.998997, 38.798565>,  <27.970585, 41.868820, 39.107681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752636, 41.998997, 38.798565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167443, 0.945279, 0.280020,
		0.821630, 0.023177, -0.569550,
		-0.544873, 0.325440, -0.772788,
		27.589174, 42.096630, 38.566727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358719, 42.467697, 38.834198>,  <27.970585, 41.868820, 39.107681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358719, 42.467697, 38.834198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971128, 42.482319, 38.736427>,  <27.738573, 42.491093, 38.677765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971128, 42.482319, 38.736427>,  <28.358719, 42.467697, 38.834198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971128, 42.482319, 38.736427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038517, 0.954582, 0.295450,
		0.244126, 0.295699, -0.923561,
		-0.968978, 0.036554, -0.244428,
		27.680435, 42.493286, 38.663097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212944, 43.124691, 38.517311>,  <28.358719, 42.467697, 38.834198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212944, 43.124691, 38.517311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872181, 42.986084, 38.674374>,  <27.667723, 42.902920, 38.768612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.872181, 42.986084, 38.674374>,  <28.212944, 43.124691, 38.517311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.872181, 42.986084, 38.674374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193009, 0.904752, 0.379699,
		-0.486828, 0.247683, -0.837646,
		-0.851907, -0.346522, 0.392654,
		27.616610, 42.882126, 38.792171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805288, 43.699928, 38.345943>,  <28.212944, 43.124691, 38.517311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805288, 43.699928, 38.345943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726854, 43.469101, 38.663067>,  <27.679794, 43.330605, 38.853340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726854, 43.469101, 38.663067>,  <27.805288, 43.699928, 38.345943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726854, 43.469101, 38.663067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148114, 0.816657, 0.557793,
		-0.969336, -0.008052, -0.245605,
		-0.196084, -0.577066, 0.792808,
		27.668030, 43.295982, 38.900909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234213, 43.979809, 38.778976>,  <27.805288, 43.699928, 38.345943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234213, 43.979809, 38.778976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502871, 43.803082, 39.016865>,  <27.664064, 43.697044, 39.159599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502871, 43.803082, 39.016865>,  <27.234213, 43.979809, 38.778976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502871, 43.803082, 39.016865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017959, 0.792785, 0.609237,
		-0.740656, -0.419871, 0.524535,
		0.671644, -0.441815, 0.594721,
		27.704363, 43.670536, 39.195282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040773, 44.185112, 39.488716>,  <27.234213, 43.979809, 38.778976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040773, 44.185112, 39.488716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422331, 44.065979, 39.503586>,  <27.651266, 43.994499, 39.512508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.422331, 44.065979, 39.503586>,  <27.040773, 44.185112, 39.488716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.422331, 44.065979, 39.503586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140758, 0.553301, 0.821003,
		-0.265086, -0.777918, 0.569713,
		0.953896, -0.297828, 0.037175,
		27.708500, 43.976631, 39.514740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070000, 44.894100, 39.839775>,  <27.040773, 44.185112, 39.488716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070000, 44.894100, 39.839775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075661, 44.765320, 39.461113>,  <27.079058, 44.688053, 39.233917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075661, 44.765320, 39.461113>,  <27.070000, 44.894100, 39.839775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075661, 44.765320, 39.461113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954030, 0.287811, -0.083619,
		0.299378, -0.901951, 0.311219,
		0.014152, -0.321946, -0.946652,
		27.079906, 44.668736, 39.177116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698639, 44.461746, 39.717606>,  <27.070000, 44.894100, 39.839775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698639, 44.461746, 39.717606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609631, 44.622467, 39.362293>,  <27.556227, 44.718899, 39.149105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609631, 44.622467, 39.362293>,  <27.698639, 44.461746, 39.717606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609631, 44.622467, 39.362293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804292, 0.590594, 0.065671,
		0.550998, -0.699821, -0.454589,
		-0.222520, 0.401807, -0.888277,
		27.542875, 44.743008, 39.095810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143265, 44.283783, 39.050537>,  <27.698639, 44.461746, 39.717606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143265, 44.283783, 39.050537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983774, 44.649075, 39.084080>,  <27.888081, 44.868248, 39.104206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983774, 44.649075, 39.084080>,  <28.143265, 44.283783, 39.050537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983774, 44.649075, 39.084080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907140, 0.379335, 0.182215,
		0.134593, 0.148727, -0.979676,
		-0.398726, 0.913228, 0.083860,
		27.864157, 44.923042, 39.109238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423487, 44.838612, 38.455738>,  <28.143265, 44.283783, 39.050537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423487, 44.838612, 38.455738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325880, 44.961407, 38.823700>,  <28.267317, 45.035084, 39.044476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.325880, 44.961407, 38.823700>,  <28.423487, 44.838612, 38.455738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325880, 44.961407, 38.823700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942033, 0.300282, 0.149679,
		-0.230280, 0.903101, -0.362463,
		-0.244016, 0.306984, 0.919900,
		28.252676, 45.053501, 39.099670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599331, 45.586914, 38.593029>,  <28.423487, 44.838612, 38.455738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599331, 45.586914, 38.593029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577349, 45.386040, 38.938236>,  <28.564159, 45.265514, 39.145359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577349, 45.386040, 38.938236>,  <28.599331, 45.586914, 38.593029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577349, 45.386040, 38.938236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874521, 0.392906, 0.284319,
		-0.481863, 0.770350, 0.417576,
		-0.054957, -0.502182, 0.863014,
		28.560862, 45.235386, 39.197140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966352, 46.041187, 38.985203>,  <28.599331, 45.586914, 38.593029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966352, 46.041187, 38.985203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974442, 45.704300, 39.200706>,  <28.979296, 45.502167, 39.330009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974442, 45.704300, 39.200706>,  <28.966352, 46.041187, 38.985203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974442, 45.704300, 39.200706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898428, 0.251733, 0.359802,
		-0.438655, 0.476756, 0.761765,
		0.020224, -0.842220, 0.538755,
		28.980509, 45.451633, 39.362331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530247, 45.700928, 38.579662>,  <28.966352, 46.041187, 38.985203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530247, 45.700928, 38.579662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885857, 45.850609, 38.474129>,  <30.099222, 45.940418, 38.410809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885857, 45.850609, 38.474129>,  <29.530247, 45.700928, 38.579662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885857, 45.850609, 38.474129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324316, -0.921417, -0.214033,
		-0.323190, 0.104716, -0.940523,
		0.889026, 0.374200, -0.263831,
		30.152565, 45.962868, 38.394978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673727, 45.489513, 37.919258>,  <29.530247, 45.700928, 38.579662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673727, 45.489513, 37.919258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021231, 45.583702, 38.093525>,  <30.229733, 45.640217, 38.198086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021231, 45.583702, 38.093525>,  <29.673727, 45.489513, 37.919258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021231, 45.583702, 38.093525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394217, -0.861290, -0.320582,
		0.299750, 0.450258, -0.841082,
		0.868760, 0.235474, 0.435671,
		30.281858, 45.654343, 38.224228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312033, 45.363888, 37.453590>,  <29.673727, 45.489513, 37.919258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312033, 45.363888, 37.453590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400038, 45.312271, 37.840359>,  <30.452841, 45.281303, 38.072422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400038, 45.312271, 37.840359>,  <30.312033, 45.363888, 37.453590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400038, 45.312271, 37.840359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333682, -0.921465, -0.198895,
		0.916652, 0.366405, -0.159675,
		0.220011, -0.129037, 0.966925,
		30.466042, 45.273560, 38.130436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908571, 45.008446, 37.442818>,  <30.312033, 45.363888, 37.453590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908571, 45.008446, 37.442818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834326, 44.945408, 37.830780>,  <30.789780, 44.907585, 38.063557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834326, 44.945408, 37.830780>,  <30.908571, 45.008446, 37.442818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834326, 44.945408, 37.830780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216500, -0.969358, -0.116075,
		0.958476, 0.188439, 0.214044,
		-0.185612, -0.157595, 0.969903,
		30.778643, 44.898129, 38.121750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363264, 44.558800, 37.567612>,  <30.908571, 45.008446, 37.442818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363264, 44.558800, 37.567612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116621, 44.526737, 37.880882>,  <30.968636, 44.507500, 38.068844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116621, 44.526737, 37.880882>,  <31.363264, 44.558800, 37.567612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116621, 44.526737, 37.880882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032447, -0.996545, -0.076450,
		0.786600, -0.021727, 0.617080,
		-0.616610, -0.080158, 0.783178,
		30.931639, 44.502689, 38.115837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664520, 44.100510, 38.072426>,  <31.363264, 44.558800, 37.567612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664520, 44.100510, 38.072426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265898, 44.102200, 38.105556>,  <31.026724, 44.103214, 38.125435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265898, 44.102200, 38.105556>,  <31.664520, 44.100510, 38.072426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265898, 44.102200, 38.105556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017105, -0.987697, -0.155443,
		0.081152, -0.156324, 0.984366,
		-0.996555, 0.004223, 0.082828,
		30.966930, 44.103466, 38.130405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537008, 43.594170, 38.421577>,  <31.664520, 44.100510, 38.072426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537008, 43.594170, 38.421577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171135, 43.616611, 38.261475>,  <30.951611, 43.630077, 38.165413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171135, 43.616611, 38.261475>,  <31.537008, 43.594170, 38.421577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171135, 43.616611, 38.261475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027245, -0.979506, -0.199565,
		-0.403254, -0.193444, 0.894408,
		-0.914682, 0.056107, -0.400260,
		30.896730, 43.633442, 38.141396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155546, 43.079411, 38.827129>,  <31.537008, 43.594170, 38.421577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155546, 43.079411, 38.827129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945230, 43.147224, 38.493710>,  <30.819040, 43.187912, 38.293659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945230, 43.147224, 38.493710>,  <31.155546, 43.079411, 38.827129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945230, 43.147224, 38.493710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260964, -0.964830, -0.031627,
		-0.809595, 0.200897, 0.551541,
		-0.525789, 0.169537, -0.833548,
		30.787493, 43.198086, 38.243645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507732, 42.628304, 38.782433>,  <31.155546, 43.079411, 38.827129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507732, 42.628304, 38.782433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493198, 42.720734, 38.393528>,  <30.484478, 42.776192, 38.160187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493198, 42.720734, 38.393528>,  <30.507732, 42.628304, 38.782433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493198, 42.720734, 38.393528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001400, -0.972911, -0.231174,
		-0.999339, -0.007038, 0.035676,
		-0.036336, 0.231071, -0.972258,
		30.482298, 42.790054, 38.101852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.917149, 42.299416, 38.518810>,  <30.507732, 42.628304, 38.782433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.917149, 42.299416, 38.518810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169331, 42.354042, 38.213161>,  <30.320639, 42.386818, 38.029774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.169331, 42.354042, 38.213161>,  <29.917149, 42.299416, 38.518810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169331, 42.354042, 38.213161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018596, -0.986777, -0.161015,
		-0.776005, 0.087303, -0.624656,
		0.630453, 0.136564, -0.764120,
		30.358467, 42.395012, 37.983925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641514, 41.963436, 37.969036>,  <29.917149, 42.299416, 38.518810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.641514, 41.963436, 37.969036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036039, 41.959503, 37.903198>,  <30.272755, 41.957146, 37.863693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036039, 41.959503, 37.903198>,  <29.641514, 41.963436, 37.969036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036039, 41.959503, 37.903198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068637, -0.932103, -0.355631,
		-0.149927, 0.362060, -0.920019,
		0.986312, -0.009829, -0.164598,
		30.331932, 41.956554, 37.853817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693230, 41.589191, 37.344048>,  <29.641514, 41.963436, 37.969036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693230, 41.589191, 37.344048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059952, 41.585423, 37.503738>,  <30.279985, 41.583160, 37.599552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059952, 41.585423, 37.503738>,  <29.693230, 41.589191, 37.344048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059952, 41.585423, 37.503738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164637, -0.901884, -0.399375,
		0.363821, 0.431876, -0.825298,
		0.916804, -0.009426, 0.399227,
		30.334993, 41.582596, 37.623505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110601, 41.289486, 36.880859>,  <29.693230, 41.589191, 37.344048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110601, 41.289486, 36.880859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350096, 41.230862, 37.195827>,  <30.493793, 41.195686, 37.384808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350096, 41.230862, 37.195827>,  <30.110601, 41.289486, 36.880859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350096, 41.230862, 37.195827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042682, -0.975881, -0.214092,
		0.799807, 0.161794, -0.578041,
		0.598738, -0.146560, 0.787422,
		30.529716, 41.186893, 37.432053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713995, 40.993801, 36.623997>,  <30.110601, 41.289486, 36.880859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713995, 40.993801, 36.623997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686399, 40.873661, 37.004528>,  <30.669842, 40.801579, 37.232849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686399, 40.873661, 37.004528>,  <30.713995, 40.993801, 36.623997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686399, 40.873661, 37.004528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228242, -0.933062, -0.278030,
		0.971157, 0.197952, 0.132925,
		-0.068991, -0.300350, 0.951331,
		30.665703, 40.783558, 37.289928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252859, 40.448151, 36.771206>,  <30.713995, 40.993801, 36.623997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252859, 40.448151, 36.771206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959843, 40.423939, 37.042416>,  <30.784033, 40.409412, 37.205143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959843, 40.423939, 37.042416>,  <31.252859, 40.448151, 36.771206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959843, 40.423939, 37.042416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100026, -0.975656, -0.195169,
		0.673334, -0.210790, 0.708653,
		-0.732541, -0.060530, 0.678026,
		30.740080, 40.405781, 37.245823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468416, 39.795475, 37.018566>,  <31.252859, 40.448151, 36.771206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468416, 39.795475, 37.018566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122389, 39.836151, 37.215061>,  <30.914772, 39.860558, 37.332958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.122389, 39.836151, 37.215061>,  <31.468416, 39.795475, 37.018566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122389, 39.836151, 37.215061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200306, -0.967808, -0.152399,
		0.459927, -0.230234, 0.857589,
		-0.865069, 0.101688, 0.491238,
		30.862867, 39.866657, 37.362434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393213, 39.278664, 37.599415>,  <31.468416, 39.795475, 37.018566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393213, 39.278664, 37.599415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021999, 39.389126, 37.499424>,  <30.799271, 39.455402, 37.439430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021999, 39.389126, 37.499424>,  <31.393213, 39.278664, 37.599415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021999, 39.389126, 37.499424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257554, -0.960544, -0.104986,
		-0.269103, -0.033049, 0.962544,
		-0.928035, 0.276159, -0.249973,
		30.743589, 39.471973, 37.424431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861214, 38.910843, 38.013470>,  <31.393213, 39.278664, 37.599415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861214, 38.910843, 38.013470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688093, 39.019958, 37.669781>,  <30.584221, 39.085426, 37.463566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688093, 39.019958, 37.669781>,  <30.861214, 38.910843, 38.013470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688093, 39.019958, 37.669781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341394, -0.931726, -0.123840,
		-0.834346, 0.239736, 0.496381,
		-0.432802, 0.272787, -0.859226,
		30.558252, 39.101795, 37.412014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225594, 38.450283, 37.904945>,  <30.861214, 38.910843, 38.013470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225594, 38.450283, 37.904945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271925, 38.609192, 37.540798>,  <30.299725, 38.704536, 37.322311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271925, 38.609192, 37.540798>,  <30.225594, 38.450283, 37.904945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271925, 38.609192, 37.540798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307659, -0.857108, -0.413173,
		-0.944420, 0.327940, 0.022944,
		0.115831, 0.397268, -0.910364,
		30.306675, 38.728371, 37.267689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612333, 38.335972, 37.578541>,  <30.225594, 38.450283, 37.904945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612333, 38.335972, 37.578541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872345, 38.389164, 37.279266>,  <30.028351, 38.421078, 37.099701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872345, 38.389164, 37.279266>,  <29.612333, 38.335972, 37.578541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872345, 38.389164, 37.279266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339428, -0.830086, -0.442431,
		-0.679892, 0.541548, -0.494442,
		0.650027, 0.132977, -0.748185,
		30.067352, 38.429058, 37.054810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210272, 38.197067, 36.946178>,  <29.612333, 38.335972, 37.578541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210272, 38.197067, 36.946178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595005, 38.154984, 36.845142>,  <29.825846, 38.129734, 36.784519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595005, 38.154984, 36.845142>,  <29.210272, 38.197067, 36.946178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595005, 38.154984, 36.845142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262593, -0.614457, -0.743967,
		-0.076933, 0.781903, -0.618635,
		0.961835, -0.105213, -0.252595,
		29.883556, 38.123421, 36.769363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242178, 38.391148, 36.245770>,  <29.210272, 38.197067, 36.946178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242178, 38.391148, 36.245770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568653, 38.169880, 36.312515>,  <29.764538, 38.037121, 36.352562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568653, 38.169880, 36.312515>,  <29.242178, 38.391148, 36.245770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568653, 38.169880, 36.312515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259541, -0.609026, -0.749484,
		0.516211, 0.568413, -0.640650,
		0.816189, -0.553167, 0.166860,
		29.813509, 38.003929, 36.362572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595270, 38.310280, 35.593357>,  <29.242178, 38.391148, 36.245770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595270, 38.310280, 35.593357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742924, 38.006226, 35.807251>,  <29.831516, 37.823795, 35.935589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742924, 38.006226, 35.807251>,  <29.595270, 38.310280, 35.593357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742924, 38.006226, 35.807251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106989, -0.606298, -0.788007,
		0.923198, 0.233669, -0.305130,
		0.369133, -0.760132, 0.534734,
		29.853664, 37.778187, 35.967670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124966, 37.972172, 35.176739>,  <29.595270, 38.310280, 35.593357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124966, 37.972172, 35.176739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030144, 37.689537, 35.443436>,  <29.973251, 37.519958, 35.603455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030144, 37.689537, 35.443436>,  <30.124966, 37.972172, 35.176739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030144, 37.689537, 35.443436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013250, -0.683888, -0.729467,
		0.971406, -0.181759, 0.152757,
		-0.237056, -0.706584, 0.666741,
		29.959026, 37.477562, 35.643459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615269, 37.382328, 35.086674>,  <30.124966, 37.972172, 35.176739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615269, 37.382328, 35.086674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298086, 37.229679, 35.276653>,  <30.107777, 37.138088, 35.390640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.298086, 37.229679, 35.276653>,  <30.615269, 37.382328, 35.086674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298086, 37.229679, 35.276653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164637, -0.616327, -0.770088,
		0.586610, -0.688843, 0.425893,
		-0.792959, -0.381623, 0.474953,
		30.060198, 37.115192, 35.419140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592045, 36.638630, 34.965256>,  <30.615269, 37.382328, 35.086674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592045, 36.638630, 34.965256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221640, 36.747112, 35.070286>,  <29.999395, 36.812202, 35.133305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221640, 36.747112, 35.070286>,  <30.592045, 36.638630, 34.965256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221640, 36.747112, 35.070286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355707, -0.394023, -0.847478,
		-0.126375, -0.878178, 0.461338,
		-0.926014, 0.271201, 0.262579,
		29.943836, 36.828472, 35.149059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364439, 36.869507, 35.014393>,  <30.592045, 36.638630, 34.965256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364439, 36.869507, 35.014393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299145, 37.257759, 34.943695>,  <31.259968, 37.490711, 34.901276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299145, 37.257759, 34.943695>,  <31.364439, 36.869507, 35.014393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299145, 37.257759, 34.943695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467085, 0.233828, 0.852734,
		0.869014, 0.056643, -0.491535,
		-0.163236, 0.970627, -0.176742,
		31.250174, 37.548946, 34.890671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023293, 37.154472, 35.043453>,  <31.364439, 36.869507, 35.014393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023293, 37.154472, 35.043453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761648, 37.431774, 35.164474>,  <31.604662, 37.598156, 35.237087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761648, 37.431774, 35.164474>,  <32.023293, 37.154472, 35.043453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761648, 37.431774, 35.164474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425215, 0.006215, 0.905071,
		0.625566, 0.720664, -0.298849,
		-0.654109, 0.693257, 0.302549,
		31.565416, 37.639751, 35.255238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409359, 37.811016, 35.216019>,  <32.023293, 37.154472, 35.043453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409359, 37.811016, 35.216019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063721, 37.713272, 35.392029>,  <31.856337, 37.654625, 35.497635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063721, 37.713272, 35.392029>,  <32.409359, 37.811016, 35.216019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063721, 37.713272, 35.392029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454956, -0.005261, 0.890498,
		-0.215287, 0.969670, 0.115719,
		-0.864099, -0.244360, 0.440025,
		31.804491, 37.639965, 35.524036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321991, 38.253521, 35.687546>,  <32.409359, 37.811016, 35.216019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321991, 38.253521, 35.687546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114998, 37.929565, 35.798027>,  <31.990803, 37.735191, 35.864315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114998, 37.929565, 35.798027>,  <32.321991, 38.253521, 35.687546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114998, 37.929565, 35.798027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408444, 0.049847, 0.911421,
		-0.751921, 0.584456, 0.305001,
		-0.517482, -0.809893, 0.276199,
		31.959753, 37.686596, 35.880886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279255, 38.348888, 36.437149>,  <32.321991, 38.253521, 35.687546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279255, 38.348888, 36.437149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205509, 37.964561, 36.354351>,  <32.161263, 37.733967, 36.304672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205509, 37.964561, 36.354351>,  <32.279255, 38.348888, 36.437149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205509, 37.964561, 36.354351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443886, -0.269300, 0.854659,
		-0.876912, 0.065685, 0.476141,
		-0.184363, -0.960814, -0.206995,
		32.150200, 37.676319, 36.292252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787720, 38.160122, 36.910648>,  <32.279255, 38.348888, 36.437149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787720, 38.160122, 36.910648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003258, 37.849239, 36.780663>,  <32.132580, 37.662712, 36.702671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003258, 37.849239, 36.780663>,  <31.787720, 38.160122, 36.910648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003258, 37.849239, 36.780663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077914, -0.338123, 0.937871,
		-0.838793, -0.530688, -0.121642,
		0.538847, -0.777202, -0.324964,
		32.164913, 37.616077, 36.683174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446346, 37.590103, 37.244083>,  <31.787720, 38.160122, 36.910648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446346, 37.590103, 37.244083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820631, 37.492661, 37.142025>,  <32.045200, 37.434196, 37.080791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820631, 37.492661, 37.142025>,  <31.446346, 37.590103, 37.244083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820631, 37.492661, 37.142025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136084, -0.418023, 0.898186,
		-0.325457, -0.875165, -0.357999,
		0.935713, -0.243603, -0.255144,
		32.101345, 37.419579, 37.065483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586061, 36.905571, 37.605186>,  <31.446346, 37.590103, 37.244083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586061, 36.905571, 37.605186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955620, 37.020069, 37.503613>,  <32.177353, 37.088768, 37.442669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955620, 37.020069, 37.503613>,  <31.586061, 36.905571, 37.605186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955620, 37.020069, 37.503613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321184, -0.219407, 0.921250,
		0.207992, -0.932696, -0.294647,
		0.923894, 0.286248, -0.253932,
		32.232788, 37.105942, 37.427433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048172, 36.440376, 37.950645>,  <31.586061, 36.905571, 37.605186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048172, 36.440376, 37.950645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274509, 36.762112, 37.878147>,  <32.410313, 36.955154, 37.834648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274509, 36.762112, 37.878147>,  <32.048172, 36.440376, 37.950645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274509, 36.762112, 37.878147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448068, -0.115451, 0.886514,
		0.692135, -0.582842, -0.425727,
		0.565848, 0.804342, -0.181245,
		32.444263, 37.003414, 37.823772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856678, 36.198517, 37.973576>,  <32.048172, 36.440376, 37.950645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856678, 36.198517, 37.973576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803993, 36.590622, 38.032555>,  <32.772385, 36.825886, 38.067944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803993, 36.590622, 38.032555>,  <32.856678, 36.198517, 37.973576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803993, 36.590622, 38.032555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462139, -0.070872, 0.883971,
		0.876972, 0.184568, -0.443682,
		-0.131708, 0.980261, 0.147449,
		32.764481, 36.884701, 38.076790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334843, 36.315140, 38.459274>,  <32.856678, 36.198517, 37.973576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334843, 36.315140, 38.459274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102383, 36.638695, 38.494980>,  <32.962906, 36.832829, 38.516403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102383, 36.638695, 38.494980>,  <33.334843, 36.315140, 38.459274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102383, 36.638695, 38.494980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188284, 0.026935, 0.981745,
		0.791714, 0.587351, -0.167953,
		-0.581153, 0.808884, 0.089264,
		32.928036, 36.881359, 38.521759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693497, 36.784210, 38.913818>,  <33.334843, 36.315140, 38.459274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693497, 36.784210, 38.913818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314796, 36.910812, 38.937462>,  <33.087578, 36.986774, 38.951649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314796, 36.910812, 38.937462>,  <33.693497, 36.784210, 38.913818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314796, 36.910812, 38.937462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075520, 0.039829, 0.996349,
		0.312994, 0.947755, -0.061610,
		-0.946748, 0.316504, 0.059108,
		33.030773, 37.005764, 38.955193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605854, 37.374672, 39.541264>,  <33.693497, 36.784210, 38.913818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605854, 37.374672, 39.541264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239521, 37.232830, 39.465897>,  <33.019722, 37.147724, 39.420677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239521, 37.232830, 39.465897>,  <33.605854, 37.374672, 39.541264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239521, 37.232830, 39.465897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273670, 0.207820, 0.939104,
		-0.293856, 0.911628, -0.287374,
		-0.915835, -0.354607, -0.188415,
		32.964771, 37.126450, 39.409370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042191, 37.802803, 39.927498>,  <33.605854, 37.374672, 39.541264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042191, 37.802803, 39.927498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883347, 37.439823, 39.872581>,  <32.788040, 37.222034, 39.839634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883347, 37.439823, 39.872581>,  <33.042191, 37.802803, 39.927498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883347, 37.439823, 39.872581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351097, 0.011997, 0.936262,
		-0.847959, 0.419999, -0.323366,
		-0.397108, -0.907445, -0.137288,
		32.764214, 37.167591, 39.831394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517311, 37.803955, 40.374001>,  <33.042191, 37.802803, 39.927498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517311, 37.803955, 40.374001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526070, 37.410412, 40.302952>,  <32.531326, 37.174286, 40.260323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526070, 37.410412, 40.302952>,  <32.517311, 37.803955, 40.374001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526070, 37.410412, 40.302952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371944, -0.172926, 0.912005,
		-0.927997, 0.046093, -0.369726,
		0.021898, -0.983855, -0.177619,
		32.532639, 37.115253, 40.249664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850813, 37.559956, 40.655655>,  <32.517311, 37.803955, 40.374001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850813, 37.559956, 40.655655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096466, 37.246758, 40.616138>,  <32.243858, 37.058838, 40.592430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096466, 37.246758, 40.616138>,  <31.850813, 37.559956, 40.655655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096466, 37.246758, 40.616138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313388, -0.356836, 0.880031,
		-0.724314, -0.509494, -0.464526,
		0.614131, -0.782997, -0.098792,
		32.280704, 37.011860, 40.586502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502768, 36.923508, 40.698544>,  <31.850813, 37.559956, 40.655655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502768, 36.923508, 40.698544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872076, 36.816589, 40.808910>,  <32.093662, 36.752438, 40.875130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872076, 36.816589, 40.808910>,  <31.502768, 36.923508, 40.698544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872076, 36.816589, 40.808910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382694, -0.577401, 0.721217,
		-0.033463, -0.771468, -0.635387,
		0.923269, -0.267293, 0.275915,
		32.149055, 36.736401, 40.891685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437042, 36.392765, 41.081669>,  <31.502768, 36.923508, 40.698544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437042, 36.392765, 41.081669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828529, 36.374210, 41.161633>,  <32.063419, 36.363079, 41.209610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828529, 36.374210, 41.161633>,  <31.437042, 36.392765, 41.081669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828529, 36.374210, 41.161633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182192, -0.644744, 0.742369,
		0.094455, -0.762990, -0.639472,
		0.978715, -0.046386, 0.199910,
		32.122143, 36.360294, 41.221607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625397, 35.693169, 41.072010>,  <31.437042, 36.392765, 41.081669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625397, 35.693169, 41.072010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872807, 35.906296, 41.303017>,  <32.021252, 36.034172, 41.441620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872807, 35.906296, 41.303017>,  <31.625397, 35.693169, 41.072010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872807, 35.906296, 41.303017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183114, -0.617001, 0.765362,
		0.764130, -0.579148, -0.284064,
		0.618526, 0.532820, 0.577519,
		32.058365, 36.066143, 41.476273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953186, 35.198612, 41.567226>,  <31.625397, 35.693169, 41.072010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953186, 35.198612, 41.567226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997221, 35.547523, 41.757805>,  <32.023643, 35.756870, 41.872154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997221, 35.547523, 41.757805>,  <31.953186, 35.198612, 41.567226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997221, 35.547523, 41.757805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187560, -0.452518, 0.871807,
		0.976064, -0.185339, 0.113788,
		0.110089, 0.872282, 0.476449,
		32.030247, 35.809208, 41.900738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399166, 35.028084, 42.142574>,  <31.953186, 35.198612, 41.567226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399166, 35.028084, 42.142574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202946, 35.368160, 42.219025>,  <32.085213, 35.572208, 42.264896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202946, 35.368160, 42.219025>,  <32.399166, 35.028084, 42.142574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202946, 35.368160, 42.219025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190832, -0.318815, 0.928408,
		0.850260, 0.418959, 0.318640,
		-0.490552, 0.850194, 0.191124,
		32.055779, 35.623219, 42.276363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720730, 35.324257, 42.724247>,  <32.399166, 35.028084, 42.142574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720730, 35.324257, 42.724247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352280, 35.479267, 42.709564>,  <32.131210, 35.572273, 42.700756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352280, 35.479267, 42.709564>,  <32.720730, 35.324257, 42.724247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352280, 35.479267, 42.709564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174094, -0.325797, 0.929273,
		0.348154, 0.862371, 0.367566,
		-0.921130, 0.387521, -0.036706,
		32.075939, 35.595524, 42.698551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644417, 35.667690, 43.347416>,  <32.720730, 35.324257, 42.724247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644417, 35.667690, 43.347416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279877, 35.585861, 43.204536>,  <32.061153, 35.536762, 43.118809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279877, 35.585861, 43.204536>,  <32.644417, 35.667690, 43.347416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279877, 35.585861, 43.204536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258387, -0.391192, 0.883292,
		-0.320429, 0.897284, 0.303655,
		-0.911351, -0.204572, -0.357196,
		32.006470, 35.524490, 43.097378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206638, 35.778271, 43.940563>,  <32.644417, 35.667690, 43.347416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206638, 35.778271, 43.940563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952972, 35.575699, 43.706860>,  <31.800772, 35.454155, 43.566635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952972, 35.575699, 43.706860>,  <32.206638, 35.778271, 43.940563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952972, 35.575699, 43.706860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359984, -0.475367, 0.802769,
		-0.684285, 0.719414, 0.119155,
		-0.634166, -0.506429, -0.584263,
		31.762722, 35.423771, 43.531582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545860, 35.882767, 44.274323>,  <32.206638, 35.778271, 43.940563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545860, 35.882767, 44.274323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514412, 35.554218, 44.048344>,  <31.495543, 35.357090, 43.912758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514412, 35.554218, 44.048344>,  <31.545860, 35.882767, 44.274323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514412, 35.554218, 44.048344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233100, -0.535846, 0.811501,
		-0.969269, 0.195492, -0.149332,
		-0.078623, -0.821372, -0.564948,
		31.490826, 35.307808, 43.878860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970364, 35.596127, 44.490437>,  <31.545860, 35.882767, 44.274323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970364, 35.596127, 44.490437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156239, 35.295078, 44.303833>,  <31.267763, 35.114449, 44.191872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156239, 35.295078, 44.303833>,  <30.970364, 35.596127, 44.490437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156239, 35.295078, 44.303833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193807, -0.600518, 0.775769,
		-0.864006, -0.270076, -0.424916,
		0.464686, -0.752620, -0.466508,
		31.295645, 35.069294, 44.163879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589420, 35.008259, 44.660606>,  <30.970364, 35.596127, 44.490437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589420, 35.008259, 44.660606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930017, 34.858707, 44.513542>,  <31.134377, 34.768978, 44.425304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930017, 34.858707, 44.513542>,  <30.589420, 35.008259, 44.660606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930017, 34.858707, 44.513542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015817, -0.719147, 0.694678,
		-0.524127, -0.585698, -0.618262,
		0.851493, -0.373879, -0.367661,
		31.185465, 34.746544, 44.403244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510061, 34.253819, 44.631550>,  <30.589420, 35.008259, 44.660606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510061, 34.253819, 44.631550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903387, 34.322102, 44.606392>,  <31.139381, 34.363071, 44.591297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903387, 34.322102, 44.606392>,  <30.510061, 34.253819, 44.631550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903387, 34.322102, 44.606392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179768, -0.858724, 0.479871,
		0.027907, -0.483170, -0.875082,
		0.983313, 0.170703, -0.062894,
		31.198381, 34.373314, 44.587524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855200, 33.678528, 44.468979>,  <30.510061, 34.253819, 44.631550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855200, 33.678528, 44.468979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140274, 33.899994, 44.641270>,  <31.311319, 34.032875, 44.744644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140274, 33.899994, 44.641270>,  <30.855200, 33.678528, 44.468979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140274, 33.899994, 44.641270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122599, -0.702888, 0.700655,
		0.690686, -0.446540, -0.568819,
		0.712687, 0.553669, 0.430730,
		31.354080, 34.066093, 44.770489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335255, 33.107643, 44.617355>,  <30.855200, 33.678528, 44.468979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335255, 33.107643, 44.617355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438021, 33.417526, 44.848465>,  <31.499680, 33.603458, 44.987129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438021, 33.417526, 44.848465>,  <31.335255, 33.107643, 44.617355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438021, 33.417526, 44.848465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064713, -0.610287, 0.789533,
		0.964265, -0.165453, -0.206925,
		0.256914, 0.774710, 0.577771,
		31.515095, 33.649940, 45.021797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696711, 32.794975, 45.109280>,  <31.335255, 33.107643, 44.617355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696711, 32.794975, 45.109280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574774, 33.136940, 45.277184>,  <31.501612, 33.342117, 45.377926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574774, 33.136940, 45.277184>,  <31.696711, 32.794975, 45.109280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574774, 33.136940, 45.277184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038179, -0.429415, 0.902300,
		0.951637, 0.291086, 0.098265,
		-0.304844, 0.854910, 0.419761,
		31.483320, 33.393414, 45.403111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062050, 32.850021, 45.818043>,  <31.696711, 32.794975, 45.109280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062050, 32.850021, 45.818043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785540, 33.135590, 45.862679>,  <31.619633, 33.306931, 45.889458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785540, 33.135590, 45.862679>,  <32.062050, 32.850021, 45.818043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785540, 33.135590, 45.862679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333724, -0.452403, 0.827019,
		0.640909, 0.534461, 0.550988,
		-0.691277, 0.713922, 0.111587,
		31.578156, 33.349766, 45.896156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180485, 33.021812, 46.454250>,  <32.062050, 32.850021, 45.818043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180485, 33.021812, 46.454250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823627, 33.190754, 46.390121>,  <31.609514, 33.292118, 46.351643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823627, 33.190754, 46.390121>,  <32.180485, 33.021812, 46.454250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823627, 33.190754, 46.390121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213916, -0.082373, 0.973373,
		0.397898, 0.902682, 0.163836,
		-0.892142, 0.422350, -0.160323,
		31.555984, 33.317459, 46.342026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082832, 33.418453, 47.030537>,  <32.180485, 33.021812, 46.454250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082832, 33.418453, 47.030537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724928, 33.344536, 46.867931>,  <31.510185, 33.300186, 46.770370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724928, 33.344536, 46.867931>,  <32.082832, 33.418453, 47.030537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724928, 33.344536, 46.867931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342572, -0.299873, 0.890348,
		-0.286436, 0.935909, 0.205009,
		-0.894762, -0.184797, -0.406511,
		31.456499, 33.289097, 46.745979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626425, 33.533882, 47.526981>,  <32.082832, 33.418453, 47.030537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626425, 33.533882, 47.526981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437843, 33.291168, 47.271000>,  <31.324694, 33.145538, 47.117413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437843, 33.291168, 47.271000>,  <31.626425, 33.533882, 47.526981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437843, 33.291168, 47.271000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431559, -0.474099, 0.767455,
		-0.769083, 0.637998, -0.038349,
		-0.471453, -0.606786, -0.639955,
		31.296408, 33.109131, 47.079014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963879, 33.668179, 47.734905>,  <31.626425, 33.533882, 47.526981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963879, 33.668179, 47.734905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995382, 33.320423, 47.539780>,  <31.014284, 33.111771, 47.422707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995382, 33.320423, 47.539780>,  <30.963879, 33.668179, 47.734905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995382, 33.320423, 47.539780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511559, -0.455237, 0.728743,
		-0.855631, 0.192149, -0.480598,
		0.078759, -0.869389, -0.487811,
		31.019011, 33.059605, 47.393436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419661, 33.186512, 47.983166>,  <30.963879, 33.668179, 47.734905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419661, 33.186512, 47.983166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678007, 32.939880, 47.803082>,  <30.833015, 32.791901, 47.695030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678007, 32.939880, 47.803082>,  <30.419661, 33.186512, 47.983166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678007, 32.939880, 47.803082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226136, -0.717747, 0.658561,
		-0.729194, -0.323531, -0.602996,
		0.645863, -0.616577, -0.450214,
		30.871767, 32.754906, 47.668018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104105, 32.536129, 47.872723>,  <30.419661, 33.186512, 47.983166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104105, 32.536129, 47.872723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491114, 32.438263, 47.847294>,  <30.723318, 32.379543, 47.832035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491114, 32.438263, 47.847294>,  <30.104105, 32.536129, 47.872723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491114, 32.438263, 47.847294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172476, -0.822779, 0.541560,
		-0.184808, -0.513005, -0.838255,
		0.967521, -0.244663, -0.063575,
		30.781370, 32.364864, 47.828220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082413, 31.872204, 47.713146>,  <30.104105, 32.536129, 47.872723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082413, 31.872204, 47.713146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461245, 31.905142, 47.837246>,  <30.688543, 31.924904, 47.911705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461245, 31.905142, 47.837246>,  <30.082413, 31.872204, 47.713146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461245, 31.905142, 47.837246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088503, -0.862083, 0.498979,
		0.308550, -0.500032, -0.809176,
		0.947082, 0.082345, 0.310251,
		30.745369, 31.929846, 47.930321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482059, 31.310034, 47.440556>,  <30.082413, 31.872204, 47.713146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482059, 31.310034, 47.440556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674009, 31.443712, 47.765034>,  <30.789179, 31.523920, 47.959721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674009, 31.443712, 47.765034>,  <30.482059, 31.310034, 47.440556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674009, 31.443712, 47.765034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027300, -0.918472, 0.394543,
		0.876912, -0.211477, -0.431628,
		0.479875, 0.334196, 0.811193,
		30.817972, 31.543972, 48.008392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047935, 30.814390, 47.635952>,  <30.482059, 31.310034, 47.440556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047935, 30.814390, 47.635952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947906, 31.026424, 47.960045>,  <30.887890, 31.153645, 48.154499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.947906, 31.026424, 47.960045>,  <31.047935, 30.814390, 47.635952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947906, 31.026424, 47.960045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095019, -0.819345, 0.565372,
		0.963553, 0.218372, 0.154528,
		-0.250073, 0.530083, 0.810231,
		30.872885, 31.185450, 48.203114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167549, 30.329363, 48.087368>,  <31.047935, 30.814390, 47.635952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167549, 30.329363, 48.087368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007338, 30.610170, 48.322906>,  <30.911211, 30.778656, 48.464230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007338, 30.610170, 48.322906>,  <31.167549, 30.329363, 48.087368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007338, 30.610170, 48.322906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087410, -0.668994, 0.738110,
		0.912105, 0.244164, 0.329316,
		-0.400530, 0.702020, 0.588850,
		30.887178, 30.820776, 48.499561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645695, 30.400187, 48.658180>,  <31.167549, 30.329363, 48.087368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645695, 30.400187, 48.658180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262829, 30.466822, 48.752911>,  <31.033110, 30.506802, 48.809750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262829, 30.466822, 48.752911>,  <31.645695, 30.400187, 48.658180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262829, 30.466822, 48.752911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047103, -0.717435, 0.695031,
		0.285688, 0.676414, 0.678856,
		-0.957164, 0.166586, 0.236824,
		30.975679, 30.516798, 48.823959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619629, 30.352390, 49.379894>,  <31.645695, 30.400187, 48.658180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619629, 30.352390, 49.379894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242405, 30.315477, 49.252071>,  <31.016069, 30.293329, 49.175377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242405, 30.315477, 49.252071>,  <31.619629, 30.352390, 49.379894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242405, 30.315477, 49.252071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177250, -0.673531, 0.717592,
		-0.281454, 0.733376, 0.618825,
		-0.943062, -0.092283, -0.319559,
		30.959486, 30.287792, 49.156204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209219, 30.173727, 49.935966>,  <31.619629, 30.352390, 49.379894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209219, 30.173727, 49.935966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942711, 30.082615, 49.651939>,  <30.782806, 30.027946, 49.481522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942711, 30.082615, 49.651939>,  <31.209219, 30.173727, 49.935966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942711, 30.082615, 49.651939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211725, -0.855236, 0.473015,
		-0.715022, 0.465495, 0.521591,
		-0.666270, -0.227783, -0.710070,
		30.742830, 30.014280, 49.438919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481491, 30.016468, 50.142128>,  <31.209219, 30.173727, 49.935966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481491, 30.016468, 50.142128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588642, 29.813334, 49.814629>,  <30.652933, 29.691454, 49.618130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588642, 29.813334, 49.814629>,  <30.481491, 30.016468, 50.142128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588642, 29.813334, 49.814629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191855, -0.860902, 0.471211,
		-0.944157, 0.030854, -0.328047,
		0.267877, -0.507835, -0.818746,
		30.669006, 29.660982, 49.569004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079451, 29.487404, 49.917065>,  <30.481491, 30.016468, 50.142128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079451, 29.487404, 49.917065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391165, 29.336369, 49.717010>,  <30.578194, 29.245747, 49.596977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.391165, 29.336369, 49.717010>,  <30.079451, 29.487404, 49.917065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391165, 29.336369, 49.717010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196491, -0.905073, 0.377141,
		-0.595067, -0.195628, -0.779503,
		0.779286, -0.377589, -0.500139,
		30.624950, 29.223091, 49.566967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853930, 28.802546, 49.738762>,  <30.079451, 29.487404, 49.917065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853930, 28.802546, 49.738762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249825, 28.794817, 49.682129>,  <30.487362, 28.790180, 49.648148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249825, 28.794817, 49.682129>,  <29.853930, 28.802546, 49.738762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249825, 28.794817, 49.682129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017414, -0.967127, 0.253695,
		-0.141834, -0.253557, -0.956866,
		0.989737, -0.019320, -0.141587,
		30.546745, 28.789021, 49.639652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999113, 28.180275, 49.412319>,  <29.853930, 28.802546, 49.738762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999113, 28.180275, 49.412319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291414, 28.310425, 49.652363>,  <30.466795, 28.388515, 49.796391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291414, 28.310425, 49.652363>,  <29.999113, 28.180275, 49.412319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291414, 28.310425, 49.652363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043333, -0.899435, 0.434902,
		0.681267, -0.291800, -0.671363,
		0.730751, 0.325376, 0.600111,
		30.510639, 28.408037, 49.832397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658884, 27.835564, 50.033104>,  <29.999113, 28.180275, 49.412319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658884, 27.835564, 50.033104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563278, 27.584969, 49.736351>,  <29.505915, 27.434612, 49.558300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563278, 27.584969, 49.736351>,  <29.658884, 27.835564, 50.033104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563278, 27.584969, 49.736351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953739, -0.007985, -0.300530,
		0.182354, -0.779391, 0.599413,
		-0.239017, -0.626487, -0.741880,
		29.491573, 27.397022, 49.513786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857922, 27.250877, 50.251179>,  <29.658884, 27.835564, 50.033104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857922, 27.250877, 50.251179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854099, 27.304464, 49.854801>,  <29.851805, 27.336617, 49.616974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854099, 27.304464, 49.854801>,  <29.857922, 27.250877, 50.251179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854099, 27.304464, 49.854801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999505, 0.031001, -0.005448,
		0.029990, -0.990501, -0.134199,
		-0.009557, 0.133969, -0.990939,
		29.851233, 27.344654, 49.557518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360916, 26.809198, 50.004951>,  <29.857922, 27.250877, 50.251179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360916, 26.809198, 50.004951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289612, 27.119612, 49.762962>,  <30.246830, 27.305861, 49.617767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289612, 27.119612, 49.762962>,  <30.360916, 26.809198, 50.004951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289612, 27.119612, 49.762962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960521, 0.270697, 0.064215,
		0.213598, -0.569643, -0.793652,
		-0.178260, 0.776035, -0.604974,
		30.236134, 27.352423, 49.581470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850136, 26.740545, 49.513336>,  <30.360916, 26.809198, 50.004951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850136, 26.740545, 49.513336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722610, 27.119505, 49.524605>,  <30.646095, 27.346880, 49.531368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722610, 27.119505, 49.524605>,  <30.850136, 26.740545, 49.513336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722610, 27.119505, 49.524605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945527, 0.315837, 0.078901,
		0.065852, 0.051794, -0.996484,
		-0.318813, 0.947399, 0.028175,
		30.626966, 27.403725, 49.533058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232208, 27.244818, 49.048031>,  <30.850136, 26.740545, 49.513336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232208, 27.244818, 49.048031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110832, 27.460730, 49.362118>,  <31.038006, 27.590277, 49.550568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.110832, 27.460730, 49.362118>,  <31.232208, 27.244818, 49.048031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110832, 27.460730, 49.362118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949099, 0.244275, 0.198851,
		-0.084473, 0.805586, -0.586427,
		-0.303440, 0.539779, 0.785215,
		31.019800, 27.622663, 49.597683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402147, 27.689167, 48.359600>,  <31.232208, 27.244818, 49.048031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402147, 27.689167, 48.359600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020073, 27.579912, 48.313961>,  <30.790829, 27.514359, 48.286579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020073, 27.579912, 48.313961>,  <31.402147, 27.689167, 48.359600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020073, 27.579912, 48.313961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017435, 0.436692, -0.899442,
		0.295497, -0.857144, -0.421883,
		-0.955185, -0.273138, -0.114097,
		30.733519, 27.497971, 48.279732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381161, 27.331543, 47.750874>,  <31.402147, 27.689167, 48.359600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381161, 27.331543, 47.750874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998852, 27.428926, 47.816875>,  <30.769466, 27.487356, 47.856476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998852, 27.428926, 47.816875>,  <31.381161, 27.331543, 47.750874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998852, 27.428926, 47.816875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074362, 0.342775, -0.936470,
		-0.284553, -0.907322, -0.309511,
		-0.955772, 0.243459, 0.165008,
		30.712120, 27.501965, 47.866379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939072, 27.130177, 47.154652>,  <31.381161, 27.331543, 47.750874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939072, 27.130177, 47.154652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783623, 27.445477, 47.345497>,  <30.690353, 27.634657, 47.460003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783623, 27.445477, 47.345497>,  <30.939072, 27.130177, 47.154652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783623, 27.445477, 47.345497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097567, 0.550107, -0.829375,
		-0.916217, -0.275764, -0.290691,
		-0.388623, 0.788249, 0.477112,
		30.667036, 27.681952, 47.488632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453707, 27.453144, 46.750397>,  <30.939072, 27.130177, 47.154652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453707, 27.453144, 46.750397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585529, 27.732660, 47.004353>,  <30.664623, 27.900370, 47.156727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585529, 27.732660, 47.004353>,  <30.453707, 27.453144, 46.750397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585529, 27.732660, 47.004353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301279, 0.559464, -0.772160,
		-0.894777, 0.445747, -0.026157,
		0.329554, 0.698791, 0.634890,
		30.684395, 27.942297, 47.194820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147041, 28.139366, 46.559334>,  <30.453707, 27.453144, 46.750397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147041, 28.139366, 46.559334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494629, 28.197783, 46.748463>,  <30.703182, 28.232832, 46.861938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.494629, 28.197783, 46.748463>,  <30.147041, 28.139366, 46.559334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494629, 28.197783, 46.748463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311602, 0.580781, -0.752062,
		-0.384439, 0.800853, 0.459174,
		0.868971, 0.146043, 0.472822,
		30.755320, 28.241596, 46.890308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259787, 28.787811, 46.560791>,  <30.147041, 28.139366, 46.559334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259787, 28.787811, 46.560791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624950, 28.630037, 46.602776>,  <30.844049, 28.535374, 46.627968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624950, 28.630037, 46.602776>,  <30.259787, 28.787811, 46.560791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624950, 28.630037, 46.602776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325319, 0.547838, -0.770740,
		0.246503, 0.737763, 0.628444,
		0.912910, -0.394434, 0.104965,
		30.898823, 28.511707, 46.634266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696268, 29.312609, 46.498951>,  <30.259787, 28.787811, 46.560791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696268, 29.312609, 46.498951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951893, 29.011478, 46.435898>,  <31.105268, 28.830799, 46.398064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951893, 29.011478, 46.435898>,  <30.696268, 29.312609, 46.498951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951893, 29.011478, 46.435898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403886, 0.502869, -0.764198,
		0.654580, 0.424703, 0.625421,
		0.639062, -0.752828, -0.157636,
		31.143612, 28.785629, 46.388607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410698, 29.663704, 46.519516>,  <30.696268, 29.312609, 46.498951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410698, 29.663704, 46.519516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446829, 29.324368, 46.310841>,  <31.468508, 29.120766, 46.185635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446829, 29.324368, 46.310841>,  <31.410698, 29.663704, 46.519516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446829, 29.324368, 46.310841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504135, 0.490706, -0.710673,
		0.858889, -0.198809, 0.472001,
		0.090326, -0.848341, -0.521688,
		31.473927, 29.069864, 46.154335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037838, 29.636421, 46.130589>,  <31.410698, 29.663704, 46.519516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037838, 29.636421, 46.130589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881100, 29.317696, 45.946613>,  <31.787056, 29.126461, 45.836227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881100, 29.317696, 45.946613>,  <32.037838, 29.636421, 46.130589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881100, 29.317696, 45.946613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535293, 0.209139, -0.818366,
		0.748275, -0.566879, 0.344576,
		-0.391850, -0.796812, -0.459939,
		31.763544, 29.078651, 45.808632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676266, 29.295347, 45.796551>,  <32.037838, 29.636421, 46.130589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676266, 29.295347, 45.796551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333206, 29.207399, 45.610611>,  <32.127369, 29.154631, 45.499046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333206, 29.207399, 45.610611>,  <32.676266, 29.295347, 45.796551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333206, 29.207399, 45.610611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478656, -0.010959, -0.877934,
		0.187938, -0.975467, 0.114642,
		-0.857652, -0.219871, -0.464853,
		32.075909, 29.141438, 45.471153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892384, 28.936646, 45.334373>,  <32.676266, 29.295347, 45.796551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892384, 28.936646, 45.334373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530170, 29.039194, 45.199154>,  <32.312843, 29.100723, 45.118023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530170, 29.039194, 45.199154>,  <32.892384, 28.936646, 45.334373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530170, 29.039194, 45.199154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386213, 0.168264, -0.906933,
		-0.175630, -0.951820, -0.251383,
		-0.905535, 0.256372, -0.338053,
		32.258511, 29.116106, 45.097736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853191, 28.573729, 44.680248>,  <32.892384, 28.936646, 45.334373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853191, 28.573729, 44.680248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597500, 28.880770, 44.661629>,  <32.444084, 29.064995, 44.650455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597500, 28.880770, 44.661629>,  <32.853191, 28.573729, 44.680248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597500, 28.880770, 44.661629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348051, 0.234807, -0.907594,
		-0.685742, -0.596365, -0.417261,
		-0.639233, 0.767603, -0.046548,
		32.405731, 29.111052, 44.647663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487186, 28.590092, 43.978748>,  <32.853191, 28.573729, 44.680248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487186, 28.590092, 43.978748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507816, 28.958273, 44.133724>,  <32.520195, 29.179182, 44.226707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507816, 28.958273, 44.133724>,  <32.487186, 28.590092, 43.978748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507816, 28.958273, 44.133724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386859, 0.339247, -0.857468,
		-0.920695, 0.194109, -0.338588,
		0.051577, 0.920452, 0.387436,
		32.523289, 29.234409, 44.249954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324936, 29.009174, 43.500450>,  <32.487186, 28.590092, 43.978748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324936, 29.009174, 43.500450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495785, 29.273932, 43.746853>,  <32.598293, 29.432785, 43.894695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495785, 29.273932, 43.746853>,  <32.324936, 29.009174, 43.500450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495785, 29.273932, 43.746853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334574, 0.517233, -0.787738,
		-0.840017, 0.542559, -0.000531,
		0.427120, 0.661891, 0.616011,
		32.623920, 29.472498, 43.931656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035576, 29.657713, 43.243065>,  <32.324936, 29.009174, 43.500450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035576, 29.657713, 43.243065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353004, 29.748512, 43.468887>,  <32.543461, 29.802992, 43.604382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353004, 29.748512, 43.468887>,  <32.035576, 29.657713, 43.243065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353004, 29.748512, 43.468887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275851, 0.692778, -0.666308,
		-0.542363, 0.684493, 0.487147,
		0.793567, 0.227000, 0.564554,
		32.591076, 29.816612, 43.638252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960155, 30.324224, 43.332710>,  <32.035576, 29.657713, 43.243065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960155, 30.324224, 43.332710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347839, 30.237692, 43.379753>,  <32.580448, 30.185772, 43.407978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347839, 30.237692, 43.379753>,  <31.960155, 30.324224, 43.332710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347839, 30.237692, 43.379753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236904, 0.689016, -0.684933,
		0.067141, 0.691706, 0.719051,
		0.969210, -0.216334, 0.117607,
		32.638603, 30.172792, 43.415035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497501, 30.970287, 43.455189>,  <31.960155, 30.324224, 43.332710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497501, 30.970287, 43.455189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677315, 30.668152, 43.264450>,  <32.785202, 30.486870, 43.150005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677315, 30.668152, 43.264450>,  <32.497501, 30.970287, 43.455189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677315, 30.668152, 43.264450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208191, 0.607718, -0.766378,
		0.868664, 0.245237, 0.430444,
		0.449533, -0.755339, -0.476847,
		32.812176, 30.441549, 43.121395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028057, 31.228231, 43.197956>,  <32.497501, 30.970287, 43.455189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028057, 31.228231, 43.197956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959831, 30.905981, 42.971020>,  <32.918896, 30.712631, 42.834858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959831, 30.905981, 42.971020>,  <33.028057, 31.228231, 43.197956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959831, 30.905981, 42.971020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115648, 0.555428, -0.823484,
		0.978536, -0.206072, -0.001570,
		-0.170569, -0.805627, -0.567338,
		32.908661, 30.664293, 42.800819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527416, 31.313269, 42.601967>,  <33.028057, 31.228231, 43.197956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527416, 31.313269, 42.601967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273239, 31.035303, 42.467319>,  <33.120735, 30.868525, 42.386532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273239, 31.035303, 42.467319>,  <33.527416, 31.313269, 42.601967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273239, 31.035303, 42.467319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243503, 0.233360, -0.941408,
		0.732750, -0.680176, 0.020928,
		-0.635440, -0.694913, -0.336619,
		33.082607, 30.826830, 42.366333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954193, 30.788149, 42.157661>,  <33.527416, 31.313269, 42.601967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954193, 30.788149, 42.157661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568237, 30.806051, 42.054138>,  <33.336662, 30.816792, 41.992023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568237, 30.806051, 42.054138>,  <33.954193, 30.788149, 42.157661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568237, 30.806051, 42.054138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255238, 0.392143, -0.883786,
		0.061934, -0.918815, -0.389799,
		-0.964892, 0.044755, -0.258803,
		33.278770, 30.819477, 41.976498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868740, 30.544628, 41.413872>,  <33.954193, 30.788149, 42.157661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868740, 30.544628, 41.413872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493134, 30.677988, 41.447578>,  <33.267769, 30.758003, 41.467800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493134, 30.677988, 41.447578>,  <33.868740, 30.544628, 41.413872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493134, 30.677988, 41.447578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005070, 0.231585, -0.972801,
		-0.343845, -0.913900, -0.215771,
		-0.939013, 0.333399, 0.084263,
		33.211430, 30.778008, 41.472858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424355, 30.275394, 40.763042>,  <33.868740, 30.544628, 41.413872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424355, 30.275394, 40.763042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234764, 30.590967, 40.919468>,  <33.121010, 30.780312, 41.013325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234764, 30.590967, 40.919468>,  <33.424355, 30.275394, 40.763042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234764, 30.590967, 40.919468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139450, 0.371263, -0.917997,
		-0.869425, -0.489644, -0.065954,
		-0.473977, 0.788932, 0.391066,
		33.092571, 30.827646, 41.036789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818199, 30.430273, 40.294559>,  <33.424355, 30.275394, 40.763042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818199, 30.430273, 40.294559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857025, 30.768488, 40.504566>,  <32.880322, 30.971416, 40.630569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857025, 30.768488, 40.504566>,  <32.818199, 30.430273, 40.294559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857025, 30.768488, 40.504566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085014, 0.532626, -0.842070,
		-0.991640, 0.037104, 0.123583,
		0.097068, 0.845537, 0.525019,
		32.886147, 31.022148, 40.662071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316860, 30.794546, 40.103409>,  <32.818199, 30.430273, 40.294559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316860, 30.794546, 40.103409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559933, 31.070702, 40.260429>,  <32.705776, 31.236395, 40.354641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559933, 31.070702, 40.260429>,  <32.316860, 30.794546, 40.103409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559933, 31.070702, 40.260429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254194, 0.637354, -0.727437,
		-0.752406, 0.342264, 0.562798,
		0.607677, 0.690388, 0.392548,
		32.742237, 31.277819, 40.378193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952606, 31.341909, 40.000370>,  <32.316860, 30.794546, 40.103409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952606, 31.341909, 40.000370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319641, 31.494350, 40.045609>,  <32.539864, 31.585815, 40.072750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319641, 31.494350, 40.045609>,  <31.952606, 31.341909, 40.000370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319641, 31.494350, 40.045609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184161, 0.659641, -0.728669,
		-0.352299, 0.647792, 0.675464,
		0.917589, 0.381103, 0.113092,
		32.594917, 31.608681, 40.079536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875120, 32.091835, 39.938114>,  <31.952606, 31.341909, 40.000370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875120, 32.091835, 39.938114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262814, 32.019981, 39.870796>,  <32.495430, 31.976870, 39.830406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262814, 32.019981, 39.870796>,  <31.875120, 32.091835, 39.938114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262814, 32.019981, 39.870796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004171, 0.671617, -0.740887,
		0.246114, 0.718793, 0.650203,
		0.969232, -0.179631, -0.168293,
		32.553581, 31.966093, 39.820309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185310, 32.725578, 39.822693>,  <31.875120, 32.091835, 39.938114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185310, 32.725578, 39.822693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438408, 32.463329, 39.657864>,  <32.590267, 32.305981, 39.558968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438408, 32.463329, 39.657864>,  <32.185310, 32.725578, 39.822693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438408, 32.463329, 39.657864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109161, 0.602347, -0.790735,
		0.766630, 0.455350, 0.452698,
		0.632742, -0.655618, -0.412071,
		32.628231, 32.266644, 39.534241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820107, 33.106457, 39.620602>,  <32.185310, 32.725578, 39.822693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820107, 33.106457, 39.620602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848988, 32.771782, 39.403439>,  <32.866318, 32.570976, 39.273140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848988, 32.771782, 39.403439>,  <32.820107, 33.106457, 39.620602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848988, 32.771782, 39.403439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205992, 0.545100, -0.812670,
		0.975886, -0.053155, 0.211710,
		0.072205, -0.836684, -0.542906,
		32.870647, 32.520775, 39.240566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306370, 33.248383, 39.175732>,  <32.820107, 33.106457, 39.620602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306370, 33.248383, 39.175732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119465, 32.948544, 38.988213>,  <33.007320, 32.768639, 38.875702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119465, 32.948544, 38.988213>,  <33.306370, 33.248383, 39.175732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119465, 32.948544, 38.988213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135091, 0.463482, -0.875748,
		0.873737, -0.472534, -0.115304,
		-0.467262, -0.749597, -0.468797,
		32.979286, 32.723663, 38.847572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661964, 33.186172, 38.596474>,  <33.306370, 33.248383, 39.175732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661964, 33.186172, 38.596474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321251, 32.991138, 38.519810>,  <33.116825, 32.874119, 38.473812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321251, 32.991138, 38.519810>,  <33.661964, 33.186172, 38.596474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321251, 32.991138, 38.519810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004191, 0.372160, -0.928159,
		0.523882, -0.789785, -0.319042,
		-0.851780, -0.487583, -0.191658,
		33.065716, 32.844864, 38.462311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815849, 32.660133, 38.023746>,  <33.661964, 33.186172, 38.596474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815849, 32.660133, 38.023746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434616, 32.778889, 38.047413>,  <33.205875, 32.850140, 38.061615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434616, 32.778889, 38.047413>,  <33.815849, 32.660133, 38.023746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434616, 32.778889, 38.047413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073836, 0.417528, -0.905659,
		-0.293581, -0.858795, -0.419858,
		-0.953078, 0.296885, 0.059168,
		33.148693, 32.867954, 38.065163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627083, 32.693336, 37.265034>,  <33.815849, 32.660133, 38.023746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627083, 32.693336, 37.265034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315071, 32.870140, 37.442200>,  <33.127865, 32.976223, 37.548500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315071, 32.870140, 37.442200>,  <33.627083, 32.693336, 37.265034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315071, 32.870140, 37.442200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285119, 0.379019, -0.880370,
		-0.557010, -0.813000, -0.169620,
		-0.780030, 0.442013, 0.442919,
		33.081062, 33.002743, 37.575077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099228, 32.672161, 36.779396>,  <33.627083, 32.693336, 37.265034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099228, 32.672161, 36.779396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013985, 32.967194, 37.035694>,  <32.962841, 33.144215, 37.189472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013985, 32.967194, 37.035694>,  <33.099228, 32.672161, 36.779396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013985, 32.967194, 37.035694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404502, 0.530359, -0.745049,
		-0.889362, -0.417955, 0.185333,
		-0.213104, 0.737586, 0.640745,
		32.950054, 33.188469, 37.227917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449898, 32.882584, 36.519165>,  <33.099228, 32.672161, 36.779396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449898, 32.882584, 36.519165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590958, 33.175430, 36.752285>,  <32.675594, 33.351139, 36.892155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590958, 33.175430, 36.752285>,  <32.449898, 32.882584, 36.519165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590958, 33.175430, 36.752285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297180, 0.678186, -0.672121,
		-0.887313, 0.063826, 0.456730,
		0.352647, 0.732113, 0.582796,
		32.696751, 33.395065, 36.927124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963413, 33.352726, 36.466175>,  <32.449898, 32.882584, 36.519165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963413, 33.352726, 36.466175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256363, 33.577435, 36.620075>,  <32.432133, 33.712261, 36.712418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256363, 33.577435, 36.620075>,  <31.963413, 33.352726, 36.466175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256363, 33.577435, 36.620075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192220, 0.712662, -0.674659,
		-0.653205, 0.420147, 0.629921,
		0.732376, 0.561774, 0.384753,
		32.476074, 33.745968, 36.735500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693733, 34.026878, 36.666538>,  <31.963413, 33.352726, 36.466175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693733, 34.026878, 36.666538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087170, 34.081566, 36.619450>,  <32.323231, 34.114380, 36.591198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087170, 34.081566, 36.619450>,  <31.693733, 34.026878, 36.666538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087170, 34.081566, 36.619450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180321, 0.723920, -0.665902,
		-0.005821, 0.676202, 0.736693,
		0.983591, 0.136717, -0.117719,
		32.382248, 34.122581, 36.584133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818708, 34.796463, 36.766380>,  <31.693733, 34.026878, 36.666538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818708, 34.796463, 36.766380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105759, 34.635319, 36.539146>,  <32.277988, 34.538631, 36.402805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105759, 34.635319, 36.539146>,  <31.818708, 34.796463, 36.766380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105759, 34.635319, 36.539146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142286, 0.713691, -0.685857,
		0.681739, 0.573019, 0.454842,
		0.717625, -0.402858, -0.568084,
		32.321045, 34.514462, 36.368721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144150, 35.413803, 36.508583>,  <31.818708, 34.796463, 36.766380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144150, 35.413803, 36.508583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302143, 35.135090, 36.269093>,  <32.396938, 34.967861, 36.125397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302143, 35.135090, 36.269093>,  <32.144150, 35.413803, 36.508583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302143, 35.135090, 36.269093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162504, 0.694440, -0.700961,
		0.904200, 0.179573, 0.387525,
		0.394986, -0.696783, -0.598731,
		32.420639, 34.926056, 36.089474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733448, 35.699539, 36.253506>,  <32.144150, 35.413803, 36.508583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733448, 35.699539, 36.253506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652786, 35.400845, 35.999981>,  <32.604389, 35.221626, 35.847866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652786, 35.400845, 35.999981>,  <32.733448, 35.699539, 36.253506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652786, 35.400845, 35.999981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119459, 0.623525, -0.772623,
		0.972145, -0.231515, -0.036530,
		-0.201651, -0.746737, -0.633814,
		32.592293, 35.176823, 35.809837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277523, 35.638969, 35.811146>,  <32.733448, 35.699539, 36.253506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277523, 35.638969, 35.811146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972378, 35.468578, 35.616585>,  <32.789291, 35.366344, 35.499847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972378, 35.468578, 35.616585>,  <33.277523, 35.638969, 35.811146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972378, 35.468578, 35.616585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195603, 0.564985, -0.801580,
		0.616263, -0.706637, -0.347683,
		-0.762862, -0.425977, -0.486400,
		32.743519, 35.340786, 35.470665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560680, 35.507000, 35.084675>,  <33.277523, 35.638969, 35.811146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560680, 35.507000, 35.084675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163570, 35.466209, 35.059353>,  <32.925304, 35.441734, 35.044159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163570, 35.466209, 35.059353>,  <33.560680, 35.507000, 35.084675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163570, 35.466209, 35.059353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009137, 0.461682, -0.886998,
		0.119681, -0.881164, -0.457412,
		-0.992770, -0.101978, -0.063306,
		32.865738, 35.435616, 35.040359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903595, 34.881615, 35.363144>,  <33.560680, 35.507000, 35.084675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903595, 34.881615, 35.363144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043358, 35.144588, 35.630184>,  <34.127216, 35.302372, 35.790409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043358, 35.144588, 35.630184>,  <33.903595, 34.881615, 35.363144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043358, 35.144588, 35.630184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919677, -0.376902, -0.110179,
		0.179185, 0.652477, -0.736320,
		0.349410, 0.657434, 0.667603,
		34.148182, 35.341820, 35.830463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258713, 34.168270, 35.460415>,  <33.903595, 34.881615, 35.363144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258713, 34.168270, 35.460415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553616, 34.438087, 35.475616>,  <34.730556, 34.599976, 35.484737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553616, 34.438087, 35.475616>,  <34.258713, 34.168270, 35.460415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553616, 34.438087, 35.475616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446276, -0.528458, 0.722198,
		0.507235, -0.515486, -0.690642,
		0.737258, 0.674541, 0.038003,
		34.774792, 34.640450, 35.487019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825802, 33.824837, 35.539711>,  <34.258713, 34.168270, 35.460415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825802, 33.824837, 35.539711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943390, 34.183838, 35.671207>,  <35.013943, 34.399239, 35.750107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943390, 34.183838, 35.671207>,  <34.825802, 33.824837, 35.539711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943390, 34.183838, 35.671207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396192, -0.427418, 0.812616,
		0.869837, -0.108636, -0.481230,
		0.293966, 0.897503, 0.328743,
		35.031578, 34.453091, 35.769829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519936, 33.799538, 35.672504>,  <34.825802, 33.824837, 35.539711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519936, 33.799538, 35.672504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416523, 34.101868, 35.913136>,  <35.354477, 34.283264, 36.057514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416523, 34.101868, 35.913136>,  <35.519936, 33.799538, 35.672504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416523, 34.101868, 35.913136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479598, -0.440149, 0.759114,
		0.838539, 0.484771, -0.248697,
		-0.258532, 0.755821, 0.601577,
		35.338963, 34.328613, 36.093609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160938, 34.101418, 35.965061>,  <35.519936, 33.799538, 35.672504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160938, 34.101418, 35.965061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868782, 34.179955, 36.226742>,  <35.693489, 34.227077, 36.383751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868782, 34.179955, 36.226742>,  <36.160938, 34.101418, 35.965061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868782, 34.179955, 36.226742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523646, -0.454010, 0.720882,
		0.438556, 0.869094, 0.228788,
		-0.730386, 0.196343, 0.654206,
		35.649666, 34.238857, 36.423004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568611, 34.094692, 36.534702>,  <36.160938, 34.101418, 35.965061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568611, 34.094692, 36.534702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220837, 34.153599, 36.723339>,  <36.012173, 34.188942, 36.836521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220837, 34.153599, 36.723339>,  <36.568611, 34.094692, 36.534702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220837, 34.153599, 36.723339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297230, -0.606558, 0.737389,
		0.394643, 0.781281, 0.483588,
		-0.869432, 0.147268, 0.471593,
		35.960007, 34.197781, 36.864819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729961, 34.375748, 37.170513>,  <36.568611, 34.094692, 36.534702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729961, 34.375748, 37.170513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360619, 34.226997, 37.208714>,  <36.139011, 34.137745, 37.231632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360619, 34.226997, 37.208714>,  <36.729961, 34.375748, 37.170513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360619, 34.226997, 37.208714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280193, -0.482613, 0.829805,
		-0.262499, 0.792963, 0.549822,
		-0.923356, -0.371879, 0.095497,
		36.083611, 34.115433, 37.237362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575581, 34.574596, 37.808781>,  <36.729961, 34.375748, 37.170513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575581, 34.574596, 37.808781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354130, 34.261021, 37.696396>,  <36.221260, 34.072876, 37.628963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354130, 34.261021, 37.696396>,  <36.575581, 34.574596, 37.808781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354130, 34.261021, 37.696396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103246, -0.399399, 0.910945,
		-0.826342, 0.475313, 0.302055,
		-0.553624, -0.783938, -0.280966,
		36.188042, 34.025841, 37.612106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246563, 34.334427, 38.389294>,  <36.575581, 34.574596, 37.808781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246563, 34.334427, 38.389294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154453, 34.026886, 38.150684>,  <36.099186, 33.842361, 38.007519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154453, 34.026886, 38.150684>,  <36.246563, 34.334427, 38.389294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154453, 34.026886, 38.150684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007970, -0.614463, 0.788905,
		-0.973093, 0.176910, 0.147623,
		-0.230274, -0.768855, -0.596520,
		36.085373, 33.796230, 37.971729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829704, 34.042870, 38.721420>,  <36.246563, 34.334427, 38.389294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829704, 34.042870, 38.721420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942173, 33.748848, 38.474636>,  <36.009655, 33.572433, 38.326565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942173, 33.748848, 38.474636>,  <35.829704, 34.042870, 38.721420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942173, 33.748848, 38.474636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062449, -0.627517, 0.776094,
		-0.957623, -0.256745, -0.130537,
		0.281172, -0.735054, -0.616958,
		36.026524, 33.528332, 38.289547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486916, 33.447861, 38.901569>,  <35.829704, 34.042870, 38.721420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486916, 33.447861, 38.901569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784935, 33.280731, 38.693596>,  <35.963745, 33.180454, 38.568813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784935, 33.280731, 38.693596>,  <35.486916, 33.447861, 38.901569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784935, 33.280731, 38.693596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042063, -0.748507, 0.661792,
		-0.665684, -0.514936, -0.540098,
		0.745047, -0.417826, -0.519929,
		36.008450, 33.155384, 38.537617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247303, 32.777527, 38.760216>,  <35.486916, 33.447861, 38.901569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247303, 32.777527, 38.760216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645561, 32.783592, 38.723415>,  <35.884514, 32.787231, 38.701336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645561, 32.783592, 38.723415>,  <35.247303, 32.777527, 38.760216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645561, 32.783592, 38.723415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078486, -0.668971, 0.739133,
		-0.050343, -0.743134, -0.667246,
		0.995643, 0.015159, -0.092004,
		35.944256, 32.788139, 38.695816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480244, 32.114902, 38.651237>,  <35.247303, 32.777527, 38.760216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480244, 32.114902, 38.651237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817181, 32.288952, 38.778435>,  <36.019344, 32.393383, 38.854755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817181, 32.288952, 38.778435>,  <35.480244, 32.114902, 38.651237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817181, 32.288952, 38.778435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097701, -0.703550, 0.703898,
		0.530011, -0.561856, -0.635143,
		0.842344, 0.435128, 0.317996,
		36.069885, 32.419491, 38.873833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057514, 31.615606, 38.665493>,  <35.480244, 32.114902, 38.651237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057514, 31.615606, 38.665493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154564, 31.893753, 38.936077>,  <36.212795, 32.060642, 39.098427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154564, 31.893753, 38.936077>,  <36.057514, 31.615606, 38.665493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154564, 31.893753, 38.936077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281310, -0.717767, 0.636927,
		0.928438, 0.035762, -0.369761,
		0.242625, 0.695365, 0.676462,
		36.227352, 32.102364, 39.139015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756908, 31.476782, 38.930763>,  <36.057514, 31.615606, 38.665493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756908, 31.476782, 38.930763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583050, 31.695646, 39.216896>,  <36.478737, 31.826965, 39.388577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583050, 31.695646, 39.216896>,  <36.756908, 31.476782, 38.930763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583050, 31.695646, 39.216896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256852, -0.685981, 0.680777,
		0.863199, 0.479629, 0.157617,
		-0.434643, 0.547162, 0.715332,
		36.452656, 31.859795, 39.431496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148594, 31.312170, 39.431282>,  <36.756908, 31.476782, 38.930763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148594, 31.312170, 39.431282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825260, 31.475233, 39.601181>,  <36.631260, 31.573071, 39.703121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825260, 31.475233, 39.601181>,  <37.148594, 31.312170, 39.431282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825260, 31.475233, 39.601181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025346, -0.744897, 0.666698,
		0.588174, 0.528152, 0.612460,
		-0.808337, 0.407658, 0.424743,
		36.582760, 31.597530, 39.728603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316441, 31.288664, 40.139168>,  <37.148594, 31.312170, 39.431282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316441, 31.288664, 40.139168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919586, 31.335989, 40.122818>,  <36.681473, 31.364384, 40.113010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919586, 31.335989, 40.122818>,  <37.316441, 31.288664, 40.139168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919586, 31.335989, 40.122818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112196, -0.695766, 0.709452,
		0.055501, 0.708457, 0.703568,
		-0.992135, 0.118313, -0.040870,
		36.621944, 31.371483, 40.110558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089252, 31.448500, 40.834309>,  <37.316441, 31.288664, 40.139168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089252, 31.448500, 40.834309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748268, 31.326935, 40.664158>,  <36.543678, 31.253996, 40.562069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.748268, 31.326935, 40.664158>,  <37.089252, 31.448500, 40.834309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748268, 31.326935, 40.664158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270585, -0.439709, 0.856411,
		-0.447313, 0.845160, 0.292603,
		-0.852464, -0.303910, -0.425375,
		36.492527, 31.235762, 40.536545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474873, 31.496801, 41.312920>,  <37.089252, 31.448500, 40.834309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474873, 31.496801, 41.312920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346027, 31.224737, 41.049519>,  <36.268719, 31.061499, 40.891479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346027, 31.224737, 41.049519>,  <36.474873, 31.496801, 41.312920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346027, 31.224737, 41.049519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434197, -0.511960, 0.741195,
		-0.841257, 0.524670, -0.130413,
		-0.322117, -0.680161, -0.658500,
		36.249393, 31.020689, 40.851967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783443, 31.481169, 41.410614>,  <36.474873, 31.496801, 41.312920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783443, 31.481169, 41.410614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864670, 31.126274, 41.244926>,  <35.913406, 30.913338, 41.145515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864670, 31.126274, 41.244926>,  <35.783443, 31.481169, 41.410614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864670, 31.126274, 41.244926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587111, -0.448882, 0.673651,
		-0.783622, 0.106396, -0.612059,
		0.203068, -0.887235, -0.414220,
		35.925591, 30.860104, 41.120659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045830, 31.029352, 41.387787>,  <35.783443, 31.481169, 41.410614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045830, 31.029352, 41.387787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342026, 30.770603, 41.314865>,  <35.519741, 30.615353, 41.271114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342026, 30.770603, 41.314865>,  <35.045830, 31.029352, 41.387787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342026, 30.770603, 41.314865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452889, -0.680699, 0.575796,
		-0.496559, -0.343807, -0.797011,
		0.740487, -0.646873, -0.182301,
		35.564171, 30.576542, 41.260174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724400, 30.436052, 41.265976>,  <35.045830, 31.029352, 41.387787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724400, 30.436052, 41.265976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094917, 30.363400, 41.398033>,  <35.317226, 30.319807, 41.477268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094917, 30.363400, 41.398033>,  <34.724400, 30.436052, 41.265976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094917, 30.363400, 41.398033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356845, -0.704257, 0.613745,
		0.121032, -0.686317, -0.717161,
		0.926290, -0.181632, 0.330147,
		35.372803, 30.308910, 41.497078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725719, 29.743370, 41.326527>,  <34.724400, 30.436052, 41.265976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725719, 29.743370, 41.326527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024509, 29.879299, 41.555107>,  <35.203781, 29.960857, 41.692253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024509, 29.879299, 41.555107>,  <34.725719, 29.743370, 41.326527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024509, 29.879299, 41.555107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276065, -0.623381, 0.731563,
		0.604832, -0.704214, -0.371835,
		0.746972, 0.339822, 0.571449,
		35.248600, 29.981245, 41.726543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018559, 29.171227, 41.628712>,  <34.725719, 29.743370, 41.326527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018559, 29.171227, 41.628712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095825, 29.485613, 41.863636>,  <35.142185, 29.674246, 42.004593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095825, 29.485613, 41.863636>,  <35.018559, 29.171227, 41.628712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095825, 29.485613, 41.863636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245608, -0.540797, 0.804497,
		0.949927, -0.299654, 0.088574,
		0.193170, 0.785968, 0.587315,
		35.153778, 29.721403, 42.039829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306427, 28.820438, 42.142746>,  <35.018559, 29.171227, 41.628712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306427, 28.820438, 42.142746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206123, 29.169384, 42.310604>,  <35.145943, 29.378752, 42.411320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206123, 29.169384, 42.310604>,  <35.306427, 28.820438, 42.142746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206123, 29.169384, 42.310604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155820, -0.464215, 0.871909,
		0.955428, 0.153246, 0.252337,
		-0.250755, 0.872365, 0.419645,
		35.130898, 29.431093, 42.436497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492382, 28.751162, 42.801640>,  <35.306427, 28.820438, 42.142746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492382, 28.751162, 42.801640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250534, 29.069464, 42.815567>,  <35.105427, 29.260445, 42.823921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250534, 29.069464, 42.815567>,  <35.492382, 28.751162, 42.801640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250534, 29.069464, 42.815567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427198, -0.360857, 0.829026,
		0.672264, 0.486372, 0.558125,
		-0.604618, 0.795754, 0.034814,
		35.069149, 29.308189, 42.826012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848927, 28.891752, 43.546452>,  <35.492382, 28.751162, 42.801640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848927, 28.891752, 43.546452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645744, 29.228941, 43.617306>,  <35.523834, 29.431253, 43.659821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645744, 29.228941, 43.617306>,  <35.848927, 28.891752, 43.546452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645744, 29.228941, 43.617306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009712, -0.211237, 0.977387,
		0.861328, 0.494750, 0.115486,
		-0.507957, 0.842972, 0.177139,
		35.493359, 29.481833, 43.670448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164814, 29.006731, 44.203129>,  <35.848927, 28.891752, 43.546452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164814, 29.006731, 44.203129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790550, 29.145941, 44.179710>,  <35.565994, 29.229467, 44.165661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790550, 29.145941, 44.179710>,  <36.164814, 29.006731, 44.203129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790550, 29.145941, 44.179710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156004, -0.259072, 0.953176,
		0.316562, 0.900978, 0.296695,
		-0.935656, 0.348025, -0.058544,
		35.509853, 29.250349, 44.162148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097107, 29.506983, 44.708920>,  <36.164814, 29.006731, 44.203129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097107, 29.506983, 44.708920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750660, 29.320984, 44.635574>,  <35.542793, 29.209385, 44.591568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750660, 29.320984, 44.635574>,  <36.097107, 29.506983, 44.708920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750660, 29.320984, 44.635574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040989, -0.299524, 0.953208,
		-0.498159, 0.833105, 0.240362,
		-0.866116, -0.464997, -0.183359,
		35.490826, 29.181484, 44.580566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428898, 29.735413, 45.200531>,  <36.097107, 29.506983, 44.708920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428898, 29.735413, 45.200531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379532, 29.355110, 45.086807>,  <35.349915, 29.126928, 45.018574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379532, 29.355110, 45.086807>,  <35.428898, 29.735413, 45.200531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379532, 29.355110, 45.086807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320008, -0.233068, 0.918300,
		-0.939342, 0.204311, -0.275486,
		-0.123412, -0.950755, -0.284312,
		35.342506, 29.069883, 45.001514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995686, 29.607990, 45.652512>,  <35.428898, 29.735413, 45.200531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995686, 29.607990, 45.652512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091351, 29.251936, 45.497353>,  <35.148750, 29.038303, 45.404259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091351, 29.251936, 45.497353>,  <34.995686, 29.607990, 45.652512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091351, 29.251936, 45.497353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212550, -0.437792, 0.873591,
		-0.947431, -0.126480, -0.293900,
		0.239159, -0.890135, -0.387895,
		35.163097, 28.984896, 45.380985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505192, 29.209135, 45.968201>,  <34.995686, 29.607990, 45.652512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505192, 29.209135, 45.968201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793159, 28.953117, 45.860828>,  <34.965939, 28.799507, 45.796406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793159, 28.953117, 45.860828>,  <34.505192, 29.209135, 45.968201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793159, 28.953117, 45.860828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202263, -0.563446, 0.801011,
		-0.663934, -0.522367, -0.535093,
		0.719918, -0.640047, -0.268436,
		35.009136, 28.761103, 45.780296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164742, 28.509377, 46.027607>,  <34.505192, 29.209135, 45.968201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164742, 28.509377, 46.027607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561428, 28.458015, 46.028542>,  <34.799442, 28.427198, 46.029102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561428, 28.458015, 46.028542>,  <34.164742, 28.509377, 46.027607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561428, 28.458015, 46.028542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087574, -0.662858, 0.743607,
		-0.093935, -0.737653, -0.668613,
		0.991719, -0.128404, 0.002334,
		34.858944, 28.419495, 46.029243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254311, 27.771614, 46.134651>,  <34.164742, 28.509377, 46.027607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254311, 27.771614, 46.134651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598759, 27.952768, 46.227051>,  <34.805428, 28.061460, 46.282490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598759, 27.952768, 46.227051>,  <34.254311, 27.771614, 46.134651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598759, 27.952768, 46.227051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027964, -0.411480, 0.910990,
		0.507624, -0.790935, -0.341671,
		0.861125, 0.452886, 0.230995,
		34.857098, 28.088634, 46.296349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594864, 27.285137, 46.432877>,  <34.254311, 27.771614, 46.134651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594864, 27.285137, 46.432877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775696, 27.621582, 46.551640>,  <34.884193, 27.823450, 46.622898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775696, 27.621582, 46.551640>,  <34.594864, 27.285137, 46.432877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775696, 27.621582, 46.551640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165249, -0.406075, 0.898774,
		0.876538, -0.357253, -0.322571,
		0.452078, 0.841114, 0.296905,
		34.911320, 27.873917, 46.640713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224705, 26.975594, 46.813560>,  <34.594864, 27.285137, 46.432877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224705, 26.975594, 46.813560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168617, 27.340534, 46.967419>,  <35.134964, 27.559500, 47.059734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168617, 27.340534, 46.967419>,  <35.224705, 26.975594, 46.813560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168617, 27.340534, 46.967419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206079, -0.353080, 0.912615,
		0.968437, 0.207233, -0.138508,
		-0.140219, 0.912354, 0.384642,
		35.126553, 27.614241, 47.082809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768028, 27.045765, 47.199310>,  <35.224705, 26.975594, 46.813560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768028, 27.045765, 47.199310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484600, 27.288740, 47.342945>,  <35.314541, 27.434526, 47.429127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484600, 27.288740, 47.342945>,  <35.768028, 27.045765, 47.199310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484600, 27.288740, 47.342945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138070, -0.379693, 0.914751,
		0.691998, 0.697746, 0.185171,
		-0.708572, 0.607440, 0.359085,
		35.272030, 27.470972, 47.450672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024426, 27.404442, 47.795479>,  <35.768028, 27.045765, 47.199310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024426, 27.404442, 47.795479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631290, 27.452955, 47.851070>,  <35.395409, 27.482063, 47.884426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631290, 27.452955, 47.851070>,  <36.024426, 27.404442, 47.795479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631290, 27.452955, 47.851070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085237, -0.369561, 0.925289,
		0.163583, 0.921257, 0.352882,
		-0.982840, 0.121283, 0.138979,
		35.336437, 27.489340, 47.892765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833469, 27.892450, 48.370640>,  <36.024426, 27.404442, 47.795479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833469, 27.892450, 48.370640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518154, 27.649328, 48.332317>,  <35.328964, 27.503454, 48.309322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518154, 27.649328, 48.332317>,  <35.833469, 27.892450, 48.370640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518154, 27.649328, 48.332317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107123, -0.288894, 0.951349,
		-0.605914, 0.739671, 0.292841,
		-0.788285, -0.607805, -0.095809,
		35.281670, 27.466986, 48.303574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113556, 28.385088, 48.849789>,  <35.833469, 27.892450, 48.370640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113556, 28.385088, 48.849789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212044, 28.743483, 48.997616>,  <36.271137, 28.958519, 49.086311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212044, 28.743483, 48.997616>,  <36.113556, 28.385088, 48.849789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212044, 28.743483, 48.997616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023426, 0.375695, -0.926447,
		-0.968931, 0.236767, 0.071514,
		0.246219, 0.895988, 0.369569,
		36.285908, 29.012280, 49.108486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761261, 28.874165, 48.387745>,  <36.113556, 28.385088, 48.849789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761261, 28.874165, 48.387745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053188, 29.090408, 48.555130>,  <36.228344, 29.220154, 48.655560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053188, 29.090408, 48.555130>,  <35.761261, 28.874165, 48.387745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053188, 29.090408, 48.555130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051548, 0.566847, -0.822209,
		-0.681696, 0.621633, 0.385827,
		0.729817, 0.540608, 0.418462,
		36.272133, 29.252590, 48.680668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581600, 29.575712, 48.512444>,  <35.761261, 28.874165, 48.387745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581600, 29.575712, 48.512444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980690, 29.587008, 48.487961>,  <36.220142, 29.593784, 48.473270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980690, 29.587008, 48.487961>,  <35.581600, 29.575712, 48.512444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980690, 29.587008, 48.487961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063760, 0.689955, -0.721039,
		0.021871, 0.723301, 0.690186,
		0.997726, 0.028236, -0.061208,
		36.280006, 29.595478, 48.469597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709545, 30.351965, 48.447151>,  <35.581600, 29.575712, 48.512444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709545, 30.351965, 48.447151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008377, 30.124071, 48.310173>,  <36.187675, 29.987335, 48.227985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008377, 30.124071, 48.310173>,  <35.709545, 30.351965, 48.447151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008377, 30.124071, 48.310173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025998, 0.539818, -0.841380,
		0.664223, 0.619677, 0.418100,
		0.747082, -0.569734, -0.342449,
		36.232502, 29.953152, 48.207439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036415, 30.866814, 47.977238>,  <35.709545, 30.351965, 48.447151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036415, 30.866814, 47.977238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258480, 30.541498, 47.907547>,  <36.391720, 30.346310, 47.865730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258480, 30.541498, 47.907547>,  <36.036415, 30.866814, 47.977238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258480, 30.541498, 47.907547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276713, 0.378144, -0.883423,
		0.784361, 0.442233, 0.434980,
		0.555164, -0.813287, -0.174230,
		36.425030, 30.297512, 47.855278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712780, 31.033213, 47.850693>,  <36.036415, 30.866814, 47.977238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712780, 31.033213, 47.850693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639416, 30.689701, 47.659336>,  <36.595398, 30.483593, 47.544521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639416, 30.689701, 47.659336>,  <36.712780, 31.033213, 47.850693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639416, 30.689701, 47.659336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244683, 0.431446, -0.868323,
		0.952098, -0.276314, 0.130997,
		-0.183412, -0.858781, -0.478388,
		36.584393, 30.432066, 47.515820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234493, 31.035051, 47.353786>,  <36.712780, 31.033213, 47.850693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234493, 31.035051, 47.353786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959126, 30.770456, 47.234787>,  <36.793903, 30.611698, 47.163387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959126, 30.770456, 47.234787>,  <37.234493, 31.035051, 47.353786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959126, 30.770456, 47.234787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109230, 0.310943, -0.944131,
		0.717038, -0.682457, -0.141806,
		-0.688422, -0.661489, -0.297502,
		36.752598, 30.572010, 47.145535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434807, 30.903282, 46.736343>,  <37.234493, 31.035051, 47.353786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434807, 30.903282, 46.736343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061909, 30.759527, 46.719543>,  <36.838169, 30.673275, 46.709465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061909, 30.759527, 46.719543>,  <37.434807, 30.903282, 46.736343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061909, 30.759527, 46.719543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097332, 0.360861, -0.927527,
		0.348471, -0.860603, -0.371391,
		-0.932253, -0.359364, -0.041986,
		36.782234, 30.651712, 46.706944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365711, 30.648033, 46.046844>,  <37.434807, 30.903282, 46.736343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365711, 30.648033, 46.046844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980789, 30.671499, 46.153076>,  <36.749836, 30.685579, 46.216816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980789, 30.671499, 46.153076>,  <37.365711, 30.648033, 46.046844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980789, 30.671499, 46.153076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234095, 0.318452, -0.918579,
		-0.138464, -0.946122, -0.292713,
		-0.962303, 0.058667, 0.265577,
		36.692097, 30.689100, 46.232750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968571, 30.171999, 45.630829>,  <37.365711, 30.648033, 46.046844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968571, 30.171999, 45.630829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728985, 30.467129, 45.755322>,  <36.585236, 30.644207, 45.830017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728985, 30.467129, 45.755322>,  <36.968571, 30.171999, 45.630829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728985, 30.467129, 45.755322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060663, 0.345731, -0.936370,
		-0.798478, -0.579729, -0.162321,
		-0.598960, 0.737824, 0.311227,
		36.549297, 30.688477, 45.848690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451794, 30.274618, 45.089535>,  <36.968571, 30.171999, 45.630829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451794, 30.274618, 45.089535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479702, 30.603451, 45.315563>,  <36.496445, 30.800751, 45.451180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479702, 30.603451, 45.315563>,  <36.451794, 30.274618, 45.089535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479702, 30.603451, 45.315563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073976, 0.569160, -0.818892,
		-0.994817, 0.015330, 0.100524,
		0.069768, 0.822084, 0.565076,
		36.500633, 30.850077, 45.485085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865582, 30.602930, 44.982513>,  <36.451794, 30.274618, 45.089535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865582, 30.602930, 44.982513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119049, 30.885979, 45.107567>,  <36.271130, 31.055807, 45.182598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119049, 30.885979, 45.107567>,  <35.865582, 30.602930, 44.982513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119049, 30.885979, 45.107567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277266, 0.585015, -0.762156,
		-0.722213, 0.396269, 0.566903,
		0.633666, 0.707622, 0.312633,
		36.309147, 31.098265, 45.201355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445663, 31.195890, 45.089428>,  <35.865582, 30.602930, 44.982513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445663, 31.195890, 45.089428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825012, 31.311419, 45.037010>,  <36.052620, 31.380735, 45.005562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825012, 31.311419, 45.037010>,  <35.445663, 31.195890, 45.089428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825012, 31.311419, 45.037010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302655, 0.700633, -0.646153,
		-0.094812, 0.652454, 0.751874,
		0.948373, 0.288821, -0.131040,
		36.109524, 31.398066, 44.997700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470795, 31.971539, 45.086582>,  <35.445663, 31.195890, 45.089428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470795, 31.971539, 45.086582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801430, 31.847809, 44.898506>,  <35.999809, 31.773571, 44.785660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801430, 31.847809, 44.898506>,  <35.470795, 31.971539, 45.086582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801430, 31.847809, 44.898506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041012, 0.866306, -0.497827,
		0.561316, 0.392213, 0.728761,
		0.826585, -0.309326, -0.470187,
		36.049404, 31.755011, 44.757450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976105, 32.616119, 45.075638>,  <35.470795, 31.971539, 45.086582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976105, 32.616119, 45.075638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078579, 32.363705, 44.782745>,  <36.140064, 32.212254, 44.607010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078579, 32.363705, 44.782745>,  <35.976105, 32.616119, 45.075638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078579, 32.363705, 44.782745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188265, 0.775575, -0.602528,
		0.948116, 0.016508, 0.317496,
		0.256188, -0.631040, -0.732227,
		36.155434, 32.174393, 44.563076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436226, 32.919415, 44.698929>,  <35.976105, 32.616119, 45.075638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436226, 32.919415, 44.698929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397224, 32.654175, 44.402065>,  <36.373825, 32.495033, 44.223949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397224, 32.654175, 44.402065>,  <36.436226, 32.919415, 44.698929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397224, 32.654175, 44.402065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092657, 0.736423, -0.670146,
		0.990913, -0.134105, -0.010361,
		-0.097500, -0.663097, -0.742157,
		36.367973, 32.455246, 44.179417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830437, 33.095711, 44.168980>,  <36.436226, 32.919415, 44.698929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830437, 33.095711, 44.168980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616611, 32.837185, 43.951164>,  <36.488316, 32.682072, 43.820477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616611, 32.837185, 43.951164>,  <36.830437, 33.095711, 44.168980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616611, 32.837185, 43.951164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140197, 0.567580, -0.811294,
		0.833416, -0.510033, -0.212799,
		-0.534567, -0.646312, -0.544536,
		36.456242, 32.643291, 43.787804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282059, 32.841682, 43.628265>,  <36.830437, 33.095711, 44.168980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282059, 32.841682, 43.628265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902264, 32.780983, 43.518398>,  <36.674385, 32.744564, 43.452480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902264, 32.780983, 43.518398>,  <37.282059, 32.841682, 43.628265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902264, 32.780983, 43.518398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220513, 0.300073, -0.928079,
		0.223251, -0.941769, -0.251455,
		-0.949491, -0.151746, -0.274664,
		36.617416, 32.735458, 43.436001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292339, 32.550423, 43.038555>,  <37.282059, 32.841682, 43.628265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292339, 32.550423, 43.038555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917812, 32.690250, 43.025253>,  <36.693096, 32.774147, 43.017273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917812, 32.690250, 43.025253>,  <37.292339, 32.550423, 43.038555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917812, 32.690250, 43.025253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175941, 0.385070, -0.905961,
		-0.303889, -0.854122, -0.422052,
		-0.936321, 0.349568, -0.033257,
		36.636917, 32.795120, 43.015278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948959, 32.492786, 42.316193>,  <37.292339, 32.550423, 43.038555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948959, 32.492786, 42.316193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715370, 32.781353, 42.465073>,  <36.575214, 32.954491, 42.554401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715370, 32.781353, 42.465073>,  <36.948959, 32.492786, 42.316193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715370, 32.781353, 42.465073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061701, 0.417733, -0.906472,
		-0.809424, -0.552322, -0.199434,
		-0.583975, 0.721415, 0.372202,
		36.540176, 32.997776, 42.576733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281620, 32.431747, 41.866203>,  <36.948959, 32.492786, 42.316193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281620, 32.431747, 41.866203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316830, 32.791096, 42.038338>,  <36.337955, 33.006702, 42.141617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316830, 32.791096, 42.038338>,  <36.281620, 32.431747, 41.866203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316830, 32.791096, 42.038338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001342, 0.431901, -0.901920,
		-0.996117, 0.079972, 0.036814,
		0.088028, 0.898369, 0.430331,
		36.343239, 33.060608, 42.167439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956551, 32.935997, 41.431339>,  <36.281620, 32.431747, 41.866203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956551, 32.935997, 41.431339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183483, 33.179688, 41.652966>,  <36.319641, 33.325901, 41.785942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183483, 33.179688, 41.652966>,  <35.956551, 32.935997, 41.431339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183483, 33.179688, 41.652966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234367, 0.525550, -0.817845,
		-0.789438, 0.593840, 0.155378,
		0.567327, 0.609222, 0.554065,
		36.353680, 33.362453, 41.819183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830288, 33.634621, 41.144787>,  <35.956551, 32.935997, 41.431339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830288, 33.634621, 41.144787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163319, 33.651554, 41.365704>,  <36.363136, 33.661713, 41.498253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163319, 33.651554, 41.365704>,  <35.830288, 33.634621, 41.144787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163319, 33.651554, 41.365704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431545, 0.575510, -0.694663,
		-0.347257, 0.816698, 0.460887,
		0.832575, 0.042333, 0.552292,
		36.413090, 33.664253, 41.531391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961315, 34.357536, 41.187115>,  <35.830288, 33.634621, 41.144787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961315, 34.357536, 41.187115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294315, 34.148537, 41.260803>,  <36.494114, 34.023136, 41.305016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294315, 34.148537, 41.260803>,  <35.961315, 34.357536, 41.187115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294315, 34.148537, 41.260803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438982, 0.419237, -0.794692,
		0.337996, 0.742450, 0.578383,
		0.832498, -0.522502, 0.184222,
		36.544064, 33.991787, 41.316071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457996, 34.788353, 41.217461>,  <35.961315, 34.357536, 41.187115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457996, 34.788353, 41.217461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627560, 34.436184, 41.132458>,  <36.729298, 34.224884, 41.081455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627560, 34.436184, 41.132458>,  <36.457996, 34.788353, 41.217461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627560, 34.436184, 41.132458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585687, 0.445442, -0.677165,
		0.690850, 0.162594, 0.704478,
		0.423907, -0.880423, -0.212504,
		36.754730, 34.172058, 41.068707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118389, 35.053825, 41.128506>,  <36.457996, 34.788353, 41.217461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118389, 35.053825, 41.128506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132046, 34.672508, 41.008457>,  <37.140240, 34.443718, 40.936428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132046, 34.672508, 41.008457>,  <37.118389, 35.053825, 41.128506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132046, 34.672508, 41.008457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752885, 0.222027, -0.619571,
		0.657266, -0.204803, 0.725298,
		0.034146, -0.953289, -0.300124,
		37.142288, 34.386520, 40.918419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815556, 34.878410, 41.129467>,  <37.118389, 35.053825, 41.128506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815556, 34.878410, 41.129467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636780, 34.628986, 40.872902>,  <37.529514, 34.479332, 40.718964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636780, 34.628986, 40.872902>,  <37.815556, 34.878410, 41.129467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636780, 34.628986, 40.872902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646361, 0.270586, -0.713443,
		0.618432, -0.733455, 0.282108,
		-0.446944, -0.623560, -0.641416,
		37.502697, 34.441917, 40.680477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373653, 34.390244, 40.810226>,  <37.815556, 34.878410, 41.129467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373653, 34.390244, 40.810226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071259, 34.368507, 40.549297>,  <37.889820, 34.355465, 40.392738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071259, 34.368507, 40.549297>,  <38.373653, 34.390244, 40.810226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071259, 34.368507, 40.549297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650263, 0.051964, -0.757930,
		0.075096, -0.997169, -0.003938,
		-0.755989, -0.054357, -0.652324,
		37.844463, 34.352203, 40.353600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603786, 33.919231, 40.276794>,  <38.373653, 34.390244, 40.810226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603786, 33.919231, 40.276794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313675, 34.139111, 40.110996>,  <38.139610, 34.271038, 40.011517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.313675, 34.139111, 40.110996>,  <38.603786, 33.919231, 40.276794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313675, 34.139111, 40.110996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529051, 0.059750, -0.846484,
		-0.440546, -0.833223, -0.334154,
		-0.725275, 0.549699, -0.414495,
		38.096092, 34.304020, 39.986649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521431, 33.584568, 39.677059>,  <38.603786, 33.919231, 40.276794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521431, 33.584568, 39.677059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382168, 33.957832, 39.641293>,  <38.298611, 34.181789, 39.619831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382168, 33.957832, 39.641293>,  <38.521431, 33.584568, 39.677059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382168, 33.957832, 39.641293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585395, 0.141920, -0.798230,
		-0.732186, -0.330260, -0.595678,
		-0.348162, 0.933160, -0.089420,
		38.277718, 34.237782, 39.614468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385071, 33.698669, 38.997723>,  <38.521431, 33.584568, 39.677059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385071, 33.698669, 38.997723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408966, 34.082245, 39.108627>,  <38.423306, 34.312389, 39.175171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408966, 34.082245, 39.108627>,  <38.385071, 33.698669, 38.997723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408966, 34.082245, 39.108627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545082, 0.201357, -0.813843,
		-0.836251, 0.199752, -0.510669,
		0.059740, 0.958934, 0.277266,
		38.426888, 34.369926, 39.191807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194786, 34.290085, 38.429279>,  <38.385071, 33.698669, 38.997723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194786, 34.290085, 38.429279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438553, 34.472961, 38.688381>,  <38.584812, 34.582687, 38.843842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438553, 34.472961, 38.688381>,  <38.194786, 34.290085, 38.429279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438553, 34.472961, 38.688381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434959, 0.490288, -0.755267,
		-0.662887, 0.742020, 0.099931,
		0.609418, 0.457191, 0.647754,
		38.621380, 34.610119, 38.882706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245022, 34.985985, 38.264812>,  <38.194786, 34.290085, 38.429279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245022, 34.985985, 38.264812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557724, 34.963306, 38.513214>,  <38.745346, 34.949699, 38.662254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557724, 34.963306, 38.513214>,  <38.245022, 34.985985, 38.264812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557724, 34.963306, 38.513214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570737, 0.466271, -0.675907,
		-0.251232, 0.882823, 0.396871,
		0.781756, -0.056699, 0.621002,
		38.792252, 34.946297, 38.699516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482605, 35.693993, 38.384636>,  <38.245022, 34.985985, 38.264812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482605, 35.693993, 38.384636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787548, 35.443821, 38.451141>,  <38.970512, 35.293716, 38.491043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787548, 35.443821, 38.451141>,  <38.482605, 35.693993, 38.384636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787548, 35.443821, 38.451141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583195, 0.552588, -0.595424,
		0.280523, 0.550890, 0.786020,
		0.762358, -0.625433, 0.166263,
		39.016254, 35.256191, 38.501019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947144, 36.147961, 38.329411>,  <38.482605, 35.693993, 38.384636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947144, 36.147961, 38.329411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171684, 35.818478, 38.297440>,  <39.306408, 35.620789, 38.278255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171684, 35.818478, 38.297440>,  <38.947144, 36.147961, 38.329411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171684, 35.818478, 38.297440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690478, 0.519407, -0.503444,
		0.456206, 0.227422, 0.860323,
		0.561352, -0.823708, -0.079927,
		39.340092, 35.571365, 38.273460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578278, 36.292397, 38.546654>,  <38.947144, 36.147961, 38.329411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578278, 36.292397, 38.546654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635448, 35.965321, 38.323597>,  <39.669750, 35.769077, 38.189762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635448, 35.965321, 38.323597>,  <39.578278, 36.292397, 38.546654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635448, 35.965321, 38.323597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774059, 0.443456, -0.451863,
		0.616771, -0.367065, 0.696316,
		0.142923, -0.817686, -0.557641,
		39.678326, 35.720016, 38.156303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308540, 36.328217, 38.479599>,  <39.578278, 36.292397, 38.546654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308540, 36.328217, 38.479599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183773, 36.073376, 38.197659>,  <40.108913, 35.920471, 38.028496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183773, 36.073376, 38.197659>,  <40.308540, 36.328217, 38.479599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183773, 36.073376, 38.197659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656441, 0.391812, -0.644645,
		0.686873, -0.663765, 0.296008,
		-0.311913, -0.637102, -0.704849,
		40.090199, 35.882244, 37.986202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905621, 36.086445, 38.136688>,  <40.308540, 36.328217, 38.479599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905621, 36.086445, 38.136688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607033, 36.031799, 37.876190>,  <40.427879, 35.999012, 37.719891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607033, 36.031799, 37.876190>,  <40.905621, 36.086445, 38.136688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607033, 36.031799, 37.876190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543437, 0.439623, -0.715127,
		0.383998, -0.887732, -0.253925,
		-0.746473, -0.136615, -0.651241,
		40.383091, 35.990814, 37.680817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160889, 35.740570, 37.455421>,  <40.905621, 36.086445, 38.136688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160889, 35.740570, 37.455421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818081, 35.920135, 37.354229>,  <40.612396, 36.027874, 37.293514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818081, 35.920135, 37.354229>,  <41.160889, 35.740570, 37.455421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818081, 35.920135, 37.354229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410941, 0.299238, -0.861153,
		-0.310883, -0.841982, -0.440929,
		-0.857018, 0.448913, -0.252976,
		40.560974, 36.054810, 37.278336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295067, 35.716980, 36.762569>,  <41.160889, 35.740570, 37.455421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295067, 35.716980, 36.762569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990940, 35.971733, 36.813625>,  <40.808464, 36.124588, 36.844257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990940, 35.971733, 36.813625>,  <41.295067, 35.716980, 36.762569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990940, 35.971733, 36.813625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210502, 0.427489, -0.879171,
		-0.614496, -0.641582, -0.459094,
		-0.760318, 0.636887, 0.127636,
		40.762844, 36.162800, 36.851917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733860, 35.718029, 36.243843>,  <41.295067, 35.716980, 36.762569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733860, 35.718029, 36.243843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779171, 36.092426, 36.377163>,  <40.806358, 36.317062, 36.457153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779171, 36.092426, 36.377163>,  <40.733860, 35.718029, 36.243843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779171, 36.092426, 36.377163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125481, 0.319293, -0.939312,
		-0.985608, 0.148229, -0.081279,
		0.113281, 0.935992, 0.333298,
		40.813156, 36.373222, 36.477154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063774, 35.739494, 35.548626>,  <40.733860, 35.718029, 36.243843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063774, 35.739494, 35.548626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292088, 35.583347, 35.259678>,  <41.429077, 35.489658, 35.086308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.292088, 35.583347, 35.259678>,  <41.063774, 35.739494, 35.548626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292088, 35.583347, 35.259678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116610, -0.832305, 0.541913,
		-0.812777, -0.393552, -0.429547,
		0.570785, -0.390365, -0.722371,
		41.463322, 35.466236, 35.042965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234058, 35.141609, 35.796776>,  <41.063774, 35.739494, 35.548626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234058, 35.141609, 35.796776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403385, 35.106770, 35.436062>,  <41.504982, 35.085865, 35.219635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403385, 35.106770, 35.436062>,  <41.234058, 35.141609, 35.796776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403385, 35.106770, 35.436062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348128, -0.903312, 0.250668,
		-0.836425, -0.420050, -0.352067,
		0.423320, -0.087100, -0.901784,
		41.530380, 35.080639, 35.165527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877396, 34.601738, 35.420319>,  <41.234058, 35.141609, 35.796776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877396, 34.601738, 35.420319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261684, 34.646194, 35.318600>,  <41.492256, 34.672871, 35.257568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261684, 34.646194, 35.318600>,  <40.877396, 34.601738, 35.420319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261684, 34.646194, 35.318600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218792, -0.867043, 0.447624,
		-0.170738, -0.485679, -0.857301,
		0.960718, 0.111145, -0.254300,
		41.549900, 34.679539, 35.242310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209263, 34.148605, 34.922550>,  <40.877396, 34.601738, 35.420319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209263, 34.148605, 34.922550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446140, 34.250114, 35.228466>,  <41.588268, 34.311020, 35.412018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446140, 34.250114, 35.228466>,  <41.209263, 34.148605, 34.922550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446140, 34.250114, 35.228466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127814, -0.966681, 0.221792,
		0.795595, -0.033593, -0.604897,
		0.592193, 0.253770, 0.764793,
		41.623798, 34.326244, 35.457905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835659, 33.613049, 34.910362>,  <41.209263, 34.148605, 34.922550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835659, 33.613049, 34.910362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737408, 33.796913, 35.251743>,  <41.678455, 33.907230, 35.456573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737408, 33.796913, 35.251743>,  <41.835659, 33.613049, 34.910362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737408, 33.796913, 35.251743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045703, -0.873955, 0.483854,
		0.968286, 0.157853, 0.193660,
		-0.245628, 0.459658, 0.853452,
		41.663719, 33.934811, 35.507778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416389, 33.391819, 35.196606>,  <41.835659, 33.613049, 34.910362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416389, 33.391819, 35.196606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060333, 33.437969, 35.372944>,  <41.846699, 33.465660, 35.478748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060333, 33.437969, 35.372944>,  <42.416389, 33.391819, 35.196606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060333, 33.437969, 35.372944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016387, -0.974897, 0.222053,
		0.455400, 0.190434, 0.869681,
		-0.890136, 0.115374, 0.440847,
		41.793293, 33.472580, 35.505199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240448, 34.088264, 35.250866>,  <42.416389, 33.391819, 35.196606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240448, 34.088264, 35.250866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.637280, 34.138493, 35.250225>,  <42.875378, 34.168629, 35.249840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.637280, 34.138493, 35.250225>,  <42.240448, 34.088264, 35.250866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637280, 34.138493, 35.250225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121413, 0.962327, 0.243281,
		0.032088, -0.241161, 0.969955,
		0.992083, 0.125571, -0.001599,
		42.934906, 34.176163, 35.249744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.339931, 34.625252, 35.783794>,  <42.240448, 34.088264, 35.250866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.339931, 34.625252, 35.783794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670635, 34.606689, 35.559536>,  <42.869057, 34.595551, 35.424980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670635, 34.606689, 35.559536>,  <42.339931, 34.625252, 35.783794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670635, 34.606689, 35.559536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090350, 0.994608, 0.050902,
		0.555259, -0.092737, 0.826491,
		0.826755, -0.046410, -0.560644,
		42.918663, 34.592766, 35.391342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793930, 35.069492, 36.145187>,  <42.339931, 34.625252, 35.783794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793930, 35.069492, 36.145187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899319, 35.047012, 35.759975>,  <42.962551, 35.033524, 35.528851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899319, 35.047012, 35.759975>,  <42.793930, 35.069492, 36.145187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899319, 35.047012, 35.759975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095110, 0.991924, -0.083911,
		0.959966, 0.113701, 0.256001,
		0.263474, -0.056203, -0.963028,
		42.978359, 35.030151, 35.471066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308403, 35.556660, 36.068535>,  <42.793930, 35.069492, 36.145187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308403, 35.556660, 36.068535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212910, 35.492233, 35.685482>,  <43.155613, 35.453579, 35.455650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212910, 35.492233, 35.685482>,  <43.308403, 35.556660, 36.068535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212910, 35.492233, 35.685482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022151, 0.984990, -0.171186,
		0.970833, -0.062080, -0.231580,
		-0.238731, -0.161063, -0.957636,
		43.141293, 35.443913, 35.398190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892612, 35.808350, 35.628117>,  <43.308403, 35.556660, 36.068535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892612, 35.808350, 35.628117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557972, 35.800003, 35.409149>,  <43.357189, 35.794994, 35.277771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557972, 35.800003, 35.409149>,  <43.892612, 35.808350, 35.628117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557972, 35.800003, 35.409149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066312, 0.988068, -0.139011,
		0.543785, -0.152597, -0.825234,
		-0.836601, -0.020869, -0.547416,
		43.306992, 35.793743, 35.244923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977722, 36.346466, 35.152615>,  <43.892612, 35.808350, 35.628117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977722, 36.346466, 35.152615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582077, 36.288357, 35.161999>,  <43.344688, 36.253490, 35.167629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582077, 36.288357, 35.161999>,  <43.977722, 36.346466, 35.152615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582077, 36.288357, 35.161999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145793, 0.989067, -0.022156,
		-0.019982, -0.025335, -0.999479,
		-0.989114, -0.145274, 0.023457,
		43.285343, 36.244774, 35.169037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737438, 36.807137, 34.742168>,  <43.977722, 36.346466, 35.152615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737438, 36.807137, 34.742168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410484, 36.706161, 34.949303>,  <43.214310, 36.645576, 35.073582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410484, 36.706161, 34.949303>,  <43.737438, 36.807137, 34.742168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410484, 36.706161, 34.949303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229580, 0.967156, 0.109099,
		-0.528367, -0.029708, -0.848496,
		-0.817387, -0.252442, 0.517833,
		43.165268, 36.630428, 35.104652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.245056, 37.222832, 34.418682>,  <43.737438, 36.807137, 34.742168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.245056, 37.222832, 34.418682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099342, 37.127388, 34.778763>,  <43.011913, 37.070122, 34.994812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099342, 37.127388, 34.778763>,  <43.245056, 37.222832, 34.418682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099342, 37.127388, 34.778763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298682, 0.945492, 0.129745,
		-0.882090, -0.221610, -0.415699,
		-0.364287, -0.238608, 0.900200,
		42.990055, 37.055805, 35.048824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603016, 37.485752, 34.392082>,  <43.245056, 37.222832, 34.418682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603016, 37.485752, 34.392082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677818, 37.456215, 34.783913>,  <42.722698, 37.438492, 35.019012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677818, 37.456215, 34.783913>,  <42.603016, 37.485752, 34.392082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677818, 37.456215, 34.783913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404823, 0.902771, 0.145338,
		-0.895068, -0.423735, 0.138928,
		0.187005, -0.073846, 0.979579,
		42.733921, 37.434063, 35.077785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001911, 37.695305, 34.689522>,  <42.603016, 37.485752, 34.392082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001911, 37.695305, 34.689522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278580, 37.749702, 34.973236>,  <42.444580, 37.782341, 35.143467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278580, 37.749702, 34.973236>,  <42.001911, 37.695305, 34.689522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278580, 37.749702, 34.973236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283940, 0.954230, 0.093932,
		-0.664051, -0.266366, 0.698631,
		0.691675, 0.135993, 0.709290,
		42.486084, 37.790501, 35.186024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642010, 38.020943, 35.229401>,  <42.001911, 37.695305, 34.689522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642010, 38.020943, 35.229401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029030, 38.077484, 35.313175>,  <42.261242, 38.111408, 35.363438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029030, 38.077484, 35.313175>,  <41.642010, 38.020943, 35.229401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029030, 38.077484, 35.313175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136143, 0.989915, -0.039149,
		-0.212855, 0.009366, 0.977039,
		0.967553, 0.141350, 0.209434,
		42.319294, 38.119888, 35.376007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677700, 38.631256, 35.732124>,  <41.642010, 38.020943, 35.229401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677700, 38.631256, 35.732124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053738, 38.625328, 35.595886>,  <42.279362, 38.621769, 35.514141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053738, 38.625328, 35.595886>,  <41.677700, 38.631256, 35.732124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053738, 38.625328, 35.595886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001664, 0.998843, -0.048066,
		0.340915, 0.045753, 0.938980,
		0.940093, -0.014824, -0.340597,
		42.335766, 38.620880, 35.493706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032162, 39.238583, 36.015079>,  <41.677700, 38.631256, 35.732124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032162, 39.238583, 36.015079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277542, 39.133896, 35.717037>,  <42.424770, 39.071083, 35.538212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277542, 39.133896, 35.717037>,  <42.032162, 39.238583, 36.015079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277542, 39.133896, 35.717037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131898, 0.964193, -0.230076,
		0.778641, 0.042862, 0.626005,
		0.613451, -0.261715, -0.745106,
		42.461578, 39.055382, 35.493504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639606, 39.632671, 36.064617>,  <42.032162, 39.238583, 36.015079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639606, 39.632671, 36.064617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651287, 39.545643, 35.674374>,  <42.658295, 39.493423, 35.440228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.651287, 39.545643, 35.674374>,  <42.639606, 39.632671, 36.064617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651287, 39.545643, 35.674374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168241, 0.963169, -0.209765,
		0.985313, -0.158010, 0.064736,
		0.029206, -0.217576, -0.975606,
		42.660049, 39.480370, 35.381691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274540, 39.834152, 35.805565>,  <42.639606, 39.632671, 36.064617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.274540, 39.834152, 35.805565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037708, 39.844711, 35.483383>,  <42.895611, 39.851048, 35.290073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.037708, 39.844711, 35.483383>,  <43.274540, 39.834152, 35.805565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.037708, 39.844711, 35.483383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364991, 0.899861, -0.238812,
		0.718490, -0.435377, -0.542419,
		-0.592075, 0.026394, -0.805450,
		42.860085, 39.852631, 35.241749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835548, 40.000057, 35.319065>,  <43.274540, 39.834152, 35.805565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835548, 40.000057, 35.319065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490681, 40.071449, 35.129406>,  <43.283760, 40.114285, 35.015610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490681, 40.071449, 35.129406>,  <43.835548, 40.000057, 35.319065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490681, 40.071449, 35.129406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412658, 0.790339, -0.452855,
		0.293908, -0.586096, -0.755056,
		-0.862167, 0.178481, -0.474144,
		43.232029, 40.124992, 34.987164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027718, 40.190956, 34.659084>,  <43.835548, 40.000057, 35.319065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027718, 40.190956, 34.659084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656052, 40.337921, 34.675400>,  <43.433052, 40.426102, 34.685188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.656052, 40.337921, 34.675400>,  <44.027718, 40.190956, 34.659084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656052, 40.337921, 34.675400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260073, 0.728099, -0.634219,
		-0.262718, -0.578685, -0.772077,
		-0.929162, 0.367417, 0.040785,
		43.377304, 40.448147, 34.687634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692772, 40.266830, 33.950489>,  <44.027718, 40.190956, 34.659084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692772, 40.266830, 33.950489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.506424, 40.537163, 34.178951>,  <43.394615, 40.699364, 34.316029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.506424, 40.537163, 34.178951>,  <43.692772, 40.266830, 33.950489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.506424, 40.537163, 34.178951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402092, 0.736678, -0.543717,
		-0.788217, -0.023645, -0.614943,
		-0.465871, 0.675830, 0.571155,
		43.366661, 40.739910, 34.350296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.368793, 40.715263, 33.477520>,  <43.692772, 40.266830, 33.950489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.368793, 40.715263, 33.477520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357578, 40.938606, 33.809170>,  <43.350849, 41.072613, 34.008160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.357578, 40.938606, 33.809170>,  <43.368793, 40.715263, 33.477520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.357578, 40.938606, 33.809170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185332, 0.817978, -0.544577,
		-0.982276, 0.138393, -0.126419,
		-0.028042, 0.558354, 0.829129,
		43.349167, 41.106113, 34.057907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769360, 41.207035, 33.374474>,  <43.368793, 40.715263, 33.477520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769360, 41.207035, 33.374474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053856, 41.326557, 33.628983>,  <43.224556, 41.398270, 33.781689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053856, 41.326557, 33.628983>,  <42.769360, 41.207035, 33.374474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053856, 41.326557, 33.628983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208584, 0.774682, -0.596959,
		-0.671285, 0.557301, 0.488663,
		0.711245, 0.298802, 0.636277,
		43.267231, 41.416199, 33.819866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726681, 41.909988, 33.475243>,  <42.769360, 41.207035, 33.374474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726681, 41.909988, 33.475243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103882, 41.859962, 33.598598>,  <43.330204, 41.829948, 33.672611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.103882, 41.859962, 33.598598>,  <42.726681, 41.909988, 33.475243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.103882, 41.859962, 33.598598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271701, 0.824423, -0.496492,
		-0.192148, 0.551983, 0.811415,
		0.943005, -0.125062, 0.308386,
		43.386784, 41.822445, 33.691113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953079, 42.506603, 33.793716>,  <42.726681, 41.909988, 33.475243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953079, 42.506603, 33.793716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273346, 42.316345, 33.648010>,  <43.465508, 42.202190, 33.560585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273346, 42.316345, 33.648010>,  <42.953079, 42.506603, 33.793716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273346, 42.316345, 33.648010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142150, 0.741477, -0.655748,
		0.581999, 0.473257, 0.661291,
		0.800669, -0.475647, -0.364265,
		43.513546, 42.173653, 33.538731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425144, 43.078403, 33.747280>,  <42.953079, 42.506603, 33.793716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425144, 43.078403, 33.747280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537670, 42.792130, 33.491577>,  <43.605186, 42.620365, 33.338154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.537670, 42.792130, 33.491577>,  <43.425144, 43.078403, 33.747280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537670, 42.792130, 33.491577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338713, 0.697341, -0.631656,
		0.897851, -0.038832, 0.438584,
		0.281314, -0.715687, -0.639261,
		43.622063, 42.577423, 33.299797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.210430, 43.128990, 33.702343>,  <43.425144, 43.078403, 33.747280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.210430, 43.128990, 33.702343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940765, 43.015522, 33.429565>,  <43.778969, 42.947441, 33.265900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940765, 43.015522, 33.429565>,  <44.210430, 43.128990, 33.702343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940765, 43.015522, 33.429565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360526, 0.679441, -0.639046,
		0.644617, -0.676675, -0.355779,
		-0.674158, -0.283672, -0.681939,
		43.738518, 42.930420, 33.224983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707100, 42.986973, 33.073093>,  <44.210430, 43.128990, 33.702343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707100, 42.986973, 33.073093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324333, 43.085312, 33.011295>,  <44.094673, 43.144314, 32.974216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324333, 43.085312, 33.011295>,  <44.707100, 42.986973, 33.073093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324333, 43.085312, 33.011295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290289, 0.798333, -0.527634,
		-0.006382, -0.549749, -0.835305,
		-0.956918, 0.245847, -0.154491,
		44.037258, 43.159065, 32.964947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688560, 43.132420, 32.429153>,  <44.707100, 42.986973, 33.073093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688560, 43.132420, 32.429153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358025, 43.290684, 32.589458>,  <44.159702, 43.385643, 32.685642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358025, 43.290684, 32.589458>,  <44.688560, 43.132420, 32.429153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358025, 43.290684, 32.589458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189503, 0.865481, -0.463715,
		-0.530325, -0.307243, -0.790163,
		-0.826344, 0.395658, 0.400762,
		44.110123, 43.409382, 32.709686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.223122, 43.458439, 31.901594>,  <44.688560, 43.132420, 32.429153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.223122, 43.458439, 31.901594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156948, 43.636070, 32.253826>,  <44.117245, 43.742649, 32.465164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156948, 43.636070, 32.253826>,  <44.223122, 43.458439, 31.901594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156948, 43.636070, 32.253826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309988, 0.871045, -0.381034,
		-0.936237, 0.209935, -0.281759,
		-0.165432, 0.444080, 0.880582,
		44.107319, 43.769295, 32.518002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283611, 43.543724, 31.128551>,  <44.223122, 43.458439, 31.901594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283611, 43.543724, 31.128551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581799, 43.278625, 31.100132>,  <44.760712, 43.119568, 31.083080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581799, 43.278625, 31.100132>,  <44.283611, 43.543724, 31.128551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.581799, 43.278625, 31.100132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579425, -0.591654, -0.560547,
		0.329463, 0.459037, -0.825069,
		0.745467, -0.662745, -0.071049,
		44.805439, 43.079803, 31.078817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354713, 43.292526, 30.426388>,  <44.283611, 43.543724, 31.128551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354713, 43.292526, 30.426388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526581, 43.017883, 30.660976>,  <44.629704, 42.853096, 30.801729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526581, 43.017883, 30.660976>,  <44.354713, 43.292526, 30.426388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526581, 43.017883, 30.660976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643056, -0.688624, -0.335076,
		0.633925, -0.233161, -0.737411,
		0.429673, -0.686609, 0.586472,
		44.655483, 42.811901, 30.836918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502872, 42.669315, 30.026310>,  <44.354713, 43.292526, 30.426388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502872, 42.669315, 30.026310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.477905, 42.541519, 30.404522>,  <44.462925, 42.464840, 30.631449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.477905, 42.541519, 30.404522>,  <44.502872, 42.669315, 30.026310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477905, 42.541519, 30.404522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459427, -0.831838, -0.311404,
		0.886020, -0.453839, -0.094863,
		-0.062416, -0.319492, 0.945531,
		44.459179, 42.445671, 30.688181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775455, 41.982773, 29.954460>,  <44.502872, 42.669315, 30.026310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775455, 41.982773, 29.954460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549866, 41.986744, 30.284754>,  <44.414513, 41.989124, 30.482929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549866, 41.986744, 30.284754>,  <44.775455, 41.982773, 29.954460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549866, 41.986744, 30.284754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359912, -0.902914, -0.234968,
		0.743234, -0.429707, 0.512791,
		-0.563974, 0.009924, 0.825733,
		44.380672, 41.989719, 30.532475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541866, 41.311665, 30.254869>,  <44.775455, 41.982773, 29.954460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541866, 41.311665, 30.254869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175655, 41.157768, 30.207914>,  <43.955929, 41.065430, 30.179741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.175655, 41.157768, 30.207914>,  <44.541866, 41.311665, 30.254869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.175655, 41.157768, 30.207914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186631, -0.664802, 0.723330,
		-0.356332, 0.640323, 0.680451,
		-0.915530, -0.384740, -0.117386,
		43.900997, 41.042347, 30.172699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.248096, 41.351837, 30.925848>,  <44.541866, 41.311665, 30.254869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.248096, 41.351837, 30.925848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081650, 41.048790, 30.724705>,  <43.981781, 40.866962, 30.604019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081650, 41.048790, 30.724705>,  <44.248096, 41.351837, 30.925848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081650, 41.048790, 30.724705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155177, -0.604064, 0.781682,
		-0.895974, 0.247237, 0.368924,
		-0.416114, -0.757615, -0.502860,
		43.956814, 40.821507, 30.573847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825855, 41.004028, 31.431122>,  <44.248096, 41.351837, 30.925848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825855, 41.004028, 31.431122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899342, 40.754791, 31.127016>,  <43.943436, 40.605247, 30.944553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899342, 40.754791, 31.127016>,  <43.825855, 41.004028, 31.431122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899342, 40.754791, 31.127016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202289, -0.732907, 0.649558,
		-0.961939, -0.273129, -0.008604,
		0.183719, -0.623095, -0.760263,
		43.954456, 40.567863, 30.898937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.917824, 40.384380, 31.789507>,  <43.825855, 41.004028, 31.431122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.917824, 40.384380, 31.789507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956661, 40.246941, 31.415873>,  <43.979965, 40.164478, 31.191692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956661, 40.246941, 31.415873>,  <43.917824, 40.384380, 31.789507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956661, 40.246941, 31.415873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202692, -0.912024, 0.356551,
		-0.974417, -0.223951, -0.018907,
		0.097094, -0.343597, -0.934085,
		43.985790, 40.143860, 31.135647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445915, 39.775162, 31.647722>,  <43.917824, 40.384380, 31.789507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445915, 39.775162, 31.647722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793175, 39.782654, 31.449343>,  <44.001530, 39.787151, 31.330315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793175, 39.782654, 31.449343>,  <43.445915, 39.775162, 31.647722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793175, 39.782654, 31.449343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281795, -0.841196, 0.461498,
		-0.408546, -0.540405, -0.735563,
		0.868149, 0.018734, -0.495951,
		44.053619, 39.788273, 31.300558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509754, 39.100147, 31.430586>,  <43.445915, 39.775162, 31.647722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.509754, 39.100147, 31.430586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879253, 39.250267, 31.399998>,  <44.100952, 39.340340, 31.381645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879253, 39.250267, 31.399998>,  <43.509754, 39.100147, 31.430586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879253, 39.250267, 31.399998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374561, -0.843481, 0.385024,
		0.079995, -0.384307, -0.919733,
		0.923745, 0.375296, -0.076472,
		44.156376, 39.362854, 31.377056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938957, 38.702187, 31.020103>,  <43.509754, 39.100147, 31.430586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938957, 38.702187, 31.020103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204456, 38.895775, 31.248209>,  <44.363758, 39.011929, 31.385073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204456, 38.895775, 31.248209>,  <43.938957, 38.702187, 31.020103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204456, 38.895775, 31.248209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319570, -0.872843, 0.368808,
		0.676246, -0.062557, -0.734015,
		0.663751, 0.483974, 0.570266,
		44.403584, 39.040966, 31.419289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.413036, 38.230614, 30.932552>,  <43.938957, 38.702187, 31.020103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.413036, 38.230614, 30.932552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.539181, 38.461090, 31.234161>,  <44.614868, 38.599377, 31.415127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.539181, 38.461090, 31.234161>,  <44.413036, 38.230614, 30.932552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539181, 38.461090, 31.234161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285884, -0.815341, 0.503478,
		0.904885, 0.056785, -0.421852,
		0.315363, 0.576190, 0.754023,
		44.633789, 38.633945, 31.460369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102913, 38.095871, 31.016409>,  <44.413036, 38.230614, 30.932552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102913, 38.095871, 31.016409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978764, 38.253170, 31.362595>,  <44.904274, 38.347549, 31.570305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.978764, 38.253170, 31.362595>,  <45.102913, 38.095871, 31.016409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978764, 38.253170, 31.362595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297969, -0.824298, 0.481401,
		0.902709, 0.407294, 0.138663,
		-0.310371, 0.393248, 0.865463,
		44.885651, 38.371143, 31.622234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622204, 37.970291, 31.451723>,  <45.102913, 38.095871, 31.016409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622204, 37.970291, 31.451723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312046, 38.026726, 31.697931>,  <45.125954, 38.060585, 31.845655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312046, 38.026726, 31.697931>,  <45.622204, 37.970291, 31.451723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312046, 38.026726, 31.697931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292149, -0.783991, 0.547729,
		0.559839, 0.604527, 0.566681,
		-0.775390, 0.141084, 0.615521,
		45.079430, 38.069050, 31.882587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.937130, 37.925053, 32.094028>,  <45.622204, 37.970291, 31.451723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.937130, 37.925053, 32.094028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551128, 37.835659, 32.148907>,  <45.319527, 37.782024, 32.181835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.551128, 37.835659, 32.148907>,  <45.937130, 37.925053, 32.094028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.551128, 37.835659, 32.148907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256918, -0.700888, 0.665394,
		-0.052546, 0.677356, 0.733776,
		-0.965004, -0.223484, 0.137196,
		45.261627, 37.768616, 32.190067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.946388, 37.784679, 32.882004>,  <45.937130, 37.925053, 32.094028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.946388, 37.784679, 32.882004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.604454, 37.632370, 32.740997>,  <45.399292, 37.540985, 32.656395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.604454, 37.632370, 32.740997>,  <45.946388, 37.784679, 32.882004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.604454, 37.632370, 32.740997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042545, -0.625632, 0.778958,
		-0.517154, 0.680878, 0.518611,
		-0.854834, -0.380777, -0.352516,
		45.348003, 37.518135, 32.635242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545685, 37.732632, 33.460136>,  <45.946388, 37.784679, 32.882004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545685, 37.732632, 33.460136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400196, 37.461464, 33.204594>,  <45.312904, 37.298763, 33.051270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400196, 37.461464, 33.204594>,  <45.545685, 37.732632, 33.460136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400196, 37.461464, 33.204594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203640, -0.611375, 0.764690,
		-0.908977, 0.408229, 0.084317,
		-0.363718, -0.677916, -0.638858,
		45.291080, 37.258091, 33.012936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150036, 37.449150, 33.913589>,  <45.545685, 37.732632, 33.460136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150036, 37.449150, 33.913589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.207527, 37.183609, 33.620018>,  <45.242020, 37.024284, 33.443874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.207527, 37.183609, 33.620018>,  <45.150036, 37.449150, 33.913589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.207527, 37.183609, 33.620018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068201, -0.746505, 0.661875,
		-0.987265, -0.045073, -0.152566,
		0.143724, -0.663851, -0.733924,
		45.250645, 36.984455, 33.399841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566879, 36.897648, 34.051281>,  <45.150036, 37.449150, 33.913589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566879, 36.897648, 34.051281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849468, 36.746410, 33.811966>,  <45.019020, 36.655666, 33.668377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849468, 36.746410, 33.811966>,  <44.566879, 36.897648, 34.051281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.849468, 36.746410, 33.811966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020919, -0.856128, 0.516341,
		-0.707433, -0.352264, -0.612739,
		0.706470, -0.378095, -0.598284,
		45.061409, 36.632980, 33.632481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370007, 36.298756, 33.813660>,  <44.566879, 36.897648, 34.051281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370007, 36.298756, 33.813660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763226, 36.253746, 33.755764>,  <44.999157, 36.226738, 33.721027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763226, 36.253746, 33.755764>,  <44.370007, 36.298756, 33.813660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763226, 36.253746, 33.755764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035929, -0.892417, 0.449779,
		-0.179784, -0.436954, -0.881333,
		0.983050, -0.112529, -0.144743,
		45.058140, 36.219986, 33.712341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442711, 35.557854, 33.729511>,  <44.370007, 36.298756, 33.813660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442711, 35.557854, 33.729511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.821144, 35.673401, 33.788139>,  <45.048203, 35.742729, 33.823318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.821144, 35.673401, 33.788139>,  <44.442711, 35.557854, 33.729511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821144, 35.673401, 33.788139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149880, -0.791507, 0.592497,
		0.287168, -0.538582, -0.792126,
		0.946082, 0.288870, 0.146573,
		45.104969, 35.760063, 33.832111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.828049, 34.921501, 33.768883>,  <44.442711, 35.557854, 33.729511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.828049, 34.921501, 33.768883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.057087, 35.191124, 33.955551>,  <45.194508, 35.352898, 34.067551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.057087, 35.191124, 33.955551>,  <44.828049, 34.921501, 33.768883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057087, 35.191124, 33.955551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158318, -0.649419, 0.743768,
		0.804408, -0.351994, -0.478568,
		0.572593, 0.674059, 0.466671,
		45.228867, 35.393341, 34.095551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.431736, 34.541584, 33.875072>,  <44.828049, 34.921501, 33.768883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.431736, 34.541584, 33.875072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400188, 34.848511, 34.129631>,  <45.381260, 35.032665, 34.282368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400188, 34.848511, 34.129631>,  <45.431736, 34.541584, 33.875072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400188, 34.848511, 34.129631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259735, -0.600523, 0.756247,
		0.962454, 0.224936, -0.151939,
		-0.078865, 0.767317, 0.636400,
		45.376530, 35.078705, 34.320553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.996136, 34.579998, 34.358009>,  <45.431736, 34.541584, 33.875072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.996136, 34.579998, 34.358009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702396, 34.776852, 34.545002>,  <45.526154, 34.894962, 34.657196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702396, 34.776852, 34.545002>,  <45.996136, 34.579998, 34.358009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702396, 34.776852, 34.545002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179791, -0.523083, 0.833102,
		0.654528, 0.695836, 0.295644,
		-0.734349, 0.492134, 0.467477,
		45.482090, 34.924492, 34.685246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.143494, 34.675621, 35.076305>,  <45.996136, 34.579998, 34.358009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.143494, 34.675621, 35.076305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754013, 34.749920, 35.129089>,  <45.520325, 34.794498, 35.160759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754013, 34.749920, 35.129089>,  <46.143494, 34.675621, 35.076305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754013, 34.749920, 35.129089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057545, -0.359892, 0.931218,
		0.220460, 0.914317, 0.339737,
		-0.973697, 0.185746, 0.131957,
		45.461903, 34.805645, 35.168674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.283035, 35.373348, 34.938934>,  <46.143494, 34.675621, 35.076305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.283035, 35.373348, 34.938934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.621349, 35.586754, 34.938633>,  <46.824337, 35.714798, 34.938454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.621349, 35.586754, 34.938633>,  <46.283035, 35.373348, 34.938934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.621349, 35.586754, 34.938633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532853, -0.844662, 0.051126,
		0.026641, -0.043643, -0.998692,
		0.845789, 0.533518, -0.000753,
		46.875088, 35.746811, 34.938408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.663338, 35.311417, 34.310318>,  <46.283035, 35.373348, 34.938934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.663338, 35.311417, 34.310318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.886879, 35.386803, 34.633343>,  <47.021004, 35.432034, 34.827160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.886879, 35.386803, 34.633343>,  <46.663338, 35.311417, 34.310318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.886879, 35.386803, 34.633343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552903, -0.810471, -0.193482,
		0.618044, 0.554634, -0.557139,
		0.558856, 0.188463, 0.807565,
		47.054535, 35.443340, 34.875610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.423992, 35.291931, 34.124519>,  <46.663338, 35.311417, 34.310318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.423992, 35.291931, 34.124519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.374863, 35.234982, 34.517384>,  <47.345387, 35.200813, 34.753101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.374863, 35.234982, 34.517384>,  <47.423992, 35.291931, 34.124519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.374863, 35.234982, 34.517384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576355, -0.815893, -0.046194,
		0.807917, 0.560401, 0.182267,
		-0.122823, -0.142371, 0.982163,
		47.338017, 35.192268, 34.812031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.066341, 35.316048, 34.723896>,  <47.423992, 35.291931, 34.124519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.066341, 35.316048, 34.723896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.756516, 35.083637, 34.823856>,  <47.570618, 34.944191, 34.883831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.756516, 35.083637, 34.823856>,  <48.066341, 35.316048, 34.723896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.756516, 35.083637, 34.823856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567694, -0.812855, -0.130348,
		0.278866, 0.040901, 0.959459,
		-0.774569, -0.581029, 0.249897,
		47.524143, 34.909328, 34.898827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.073612, 34.792381, 45.604717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.678017, 34.838154, 45.642242>,  <34.440659, 34.865616, 45.664757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.678017, 34.838154, 45.642242>,  <35.073612, 34.792381, 45.604717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678017, 34.838154, 45.642242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008506, 0.588962, -0.808116,
		-0.147724, -0.800018, -0.581506,
		-0.988992, 0.114432, 0.093809,
		34.381317, 34.872482, 45.670383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855042, 34.728249, 44.862621>,  <35.073612, 34.792381, 45.604717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855042, 34.728249, 44.862621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563782, 34.889473, 45.084373>,  <34.389027, 34.986206, 45.217426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563782, 34.889473, 45.084373>,  <34.855042, 34.728249, 44.862621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563782, 34.889473, 45.084373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128280, 0.714397, -0.687882,
		-0.673308, -0.571997, -0.468483,
		-0.728149, 0.403059, 0.554385,
		34.345337, 35.010391, 45.250690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302311, 34.859200, 44.366692>,  <34.855042, 34.728249, 44.862621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302311, 34.859200, 44.366692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.238892, 35.092411, 44.685425>,  <34.200840, 35.232338, 44.876663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.238892, 35.092411, 44.685425>,  <34.302311, 34.859200, 44.366692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238892, 35.092411, 44.685425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160009, 0.781197, -0.603431,
		-0.974299, -0.223174, -0.030570,
		-0.158551, 0.583030, 0.796829,
		34.191326, 35.267319, 44.924473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592972, 35.115662, 44.312191>,  <34.302311, 34.859200, 44.366692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592972, 35.115662, 44.312191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.813004, 35.365833, 44.533550>,  <33.945023, 35.515938, 44.666367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.813004, 35.365833, 44.533550>,  <33.592972, 35.115662, 44.312191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813004, 35.365833, 44.533550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153460, 0.727081, -0.669181,
		-0.820892, 0.283177, 0.495930,
		0.550078, 0.625430, 0.553399,
		33.978027, 35.553463, 44.699570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226250, 35.731476, 44.333836>,  <33.592972, 35.115662, 44.312191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226250, 35.731476, 44.333836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.579769, 35.872059, 44.457367>,  <33.791882, 35.956409, 44.531487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.579769, 35.872059, 44.457367>,  <33.226250, 35.731476, 44.333836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579769, 35.872059, 44.457367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037007, 0.710533, -0.702690,
		-0.466398, 0.609609, 0.640975,
		0.883800, 0.351454, 0.308832,
		33.844910, 35.977493, 44.550018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123451, 36.532406, 44.450844>,  <33.226250, 35.731476, 44.333836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123451, 36.532406, 44.450844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.507435, 36.439133, 44.388741>,  <33.737823, 36.383167, 44.351479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.507435, 36.439133, 44.388741>,  <33.123451, 36.532406, 44.450844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507435, 36.439133, 44.388741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099572, 0.802036, -0.588917,
		0.261851, 0.549876, 0.793139,
		0.959958, -0.233183, -0.155262,
		33.795422, 36.369179, 44.342163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420162, 37.166149, 44.335037>,  <33.123451, 36.532406, 44.450844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420162, 37.166149, 44.335037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.700954, 36.911423, 44.207485>,  <33.869431, 36.758587, 44.130955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.700954, 36.911423, 44.207485>,  <33.420162, 37.166149, 44.335037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700954, 36.911423, 44.207485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210197, 0.613051, -0.761568,
		0.680472, 0.467577, 0.564207,
		0.701979, -0.636820, -0.318881,
		33.911549, 36.720375, 44.111820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135197, 37.469475, 44.102570>,  <33.420162, 37.166149, 44.335037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135197, 37.469475, 44.102570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.138088, 37.120285, 43.907486>,  <34.139824, 36.910770, 43.790436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.138088, 37.120285, 43.907486>,  <34.135197, 37.469475, 44.102570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138088, 37.120285, 43.907486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387792, 0.451999, -0.803315,
		0.921719, -0.183323, 0.341800,
		0.007227, -0.872978, -0.487707,
		34.140255, 36.858391, 43.761173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790470, 37.438179, 43.651501>,  <34.135197, 37.469475, 44.102570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790470, 37.438179, 43.651501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.548969, 37.160954, 43.493946>,  <34.404068, 36.994617, 43.399414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.548969, 37.160954, 43.493946>,  <34.790470, 37.438179, 43.651501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548969, 37.160954, 43.493946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436469, 0.126070, -0.890843,
		0.667066, -0.709770, 0.226384,
		-0.603753, -0.693060, -0.393890,
		34.367844, 36.953037, 43.375778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281063, 37.090889, 43.236202>,  <34.790470, 37.438179, 43.651501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281063, 37.090889, 43.236202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.930443, 36.952881, 43.101963>,  <34.720070, 36.870075, 43.021420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.930443, 36.952881, 43.101963>,  <35.281063, 37.090889, 43.236202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930443, 36.952881, 43.101963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349837, 0.022184, -0.936548,
		0.330572, -0.938333, 0.101255,
		-0.876548, -0.345019, -0.335597,
		34.667477, 36.849377, 43.001286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459770, 36.508945, 42.863937>,  <35.281063, 37.090889, 43.236202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459770, 36.508945, 42.863937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.114506, 36.640667, 42.710827>,  <34.907349, 36.719700, 42.618961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.114506, 36.640667, 42.710827>,  <35.459770, 36.508945, 42.863937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114506, 36.640667, 42.710827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409217, 0.012129, -0.912357,
		-0.295803, -0.944145, -0.145228,
		-0.863158, 0.329308, -0.382772,
		34.855556, 36.739460, 42.595997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467331, 36.217739, 42.361694>,  <35.459770, 36.508945, 42.863937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467331, 36.217739, 42.361694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.211872, 36.514816, 42.281158>,  <35.058598, 36.693062, 42.232838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.211872, 36.514816, 42.281158>,  <35.467331, 36.217739, 42.361694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211872, 36.514816, 42.281158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294361, -0.005952, -0.955676,
		-0.710974, -0.669603, -0.214819,
		-0.638645, 0.742695, -0.201337,
		35.020279, 36.737625, 42.220757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072945, 36.005810, 41.757988>,  <35.467331, 36.217739, 42.361694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072945, 36.005810, 41.757988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.094704, 36.403301, 41.797077>,  <35.107758, 36.641796, 41.820530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.094704, 36.403301, 41.797077>,  <35.072945, 36.005810, 41.757988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094704, 36.403301, 41.797077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373783, 0.070486, -0.924834,
		-0.925920, 0.086832, -0.367604,
		0.054394, 0.993726, 0.097721,
		35.111023, 36.701420, 41.826393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146408, 36.279808, 41.013203>,  <35.072945, 36.005810, 41.757988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146408, 36.279808, 41.013203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.195904, 36.615818, 41.224503>,  <35.225601, 36.817425, 41.351284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.195904, 36.615818, 41.224503>,  <35.146408, 36.279808, 41.013203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195904, 36.615818, 41.224503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653667, 0.331521, -0.680305,
		-0.746598, 0.429481, -0.508073,
		0.123742, 0.840024, 0.528250,
		35.233025, 36.867825, 41.382977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009884, 36.743698, 40.653439>,  <35.146408, 36.279808, 41.013203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009884, 36.743698, 40.653439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.252190, 36.924339, 40.915462>,  <35.397572, 37.032722, 41.072678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.252190, 36.924339, 40.915462>,  <35.009884, 36.743698, 40.653439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252190, 36.924339, 40.915462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605418, 0.272582, -0.747775,
		-0.516255, 0.849561, -0.108289,
		0.605763, 0.451603, 0.655061,
		35.433918, 37.059822, 41.111980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144855, 37.302357, 40.296139>,  <35.009884, 36.743698, 40.653439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144855, 37.302357, 40.296139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.431702, 37.268314, 40.572834>,  <35.603809, 37.247890, 40.738853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.431702, 37.268314, 40.572834>,  <35.144855, 37.302357, 40.296139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431702, 37.268314, 40.572834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659134, 0.405330, -0.633443,
		-0.226475, 0.910200, 0.346763,
		0.717113, -0.085104, 0.691741,
		35.646835, 37.242783, 40.780357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420856, 38.015530, 40.287300>,  <35.144855, 37.302357, 40.296139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420856, 38.015530, 40.287300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.688068, 37.757385, 40.435490>,  <35.848396, 37.602501, 40.524403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.688068, 37.757385, 40.435490>,  <35.420856, 38.015530, 40.287300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688068, 37.757385, 40.435490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657611, 0.278985, -0.699797,
		0.348262, 0.711113, 0.610764,
		0.668028, -0.645357, 0.370476,
		35.888477, 37.563778, 40.546631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958344, 38.475105, 40.370739>,  <35.420856, 38.015530, 40.287300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958344, 38.475105, 40.370739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.109219, 38.105011, 40.354404>,  <36.199745, 37.882954, 40.344604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.109219, 38.105011, 40.354404>,  <35.958344, 38.475105, 40.370739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109219, 38.105011, 40.354404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613221, 0.282545, -0.737651,
		0.694038, 0.253194, 0.673946,
		0.377189, -0.925236, -0.040833,
		36.222374, 37.827438, 40.342155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599190, 38.596535, 40.050919>,  <35.958344, 38.475105, 40.370739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599190, 38.596535, 40.050919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576157, 38.197853, 40.028046>,  <36.562336, 37.958645, 40.014324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576157, 38.197853, 40.028046>,  <36.599190, 38.596535, 40.050919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576157, 38.197853, 40.028046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694380, 0.001167, -0.719607,
		0.717301, -0.081138, 0.692023,
		-0.057580, -0.996702, -0.057178,
		36.558884, 37.898842, 40.010891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259418, 38.376911, 39.972443>,  <36.599190, 38.596535, 40.050919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259418, 38.376911, 39.972443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005951, 38.109306, 39.817070>,  <36.853870, 37.948742, 39.723846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005951, 38.109306, 39.817070>,  <37.259418, 38.376911, 39.972443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005951, 38.109306, 39.817070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558894, -0.048735, -0.827806,
		0.534885, -0.741648, 0.404791,
		-0.633668, -0.669016, -0.388435,
		36.815849, 37.908600, 39.700539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655781, 38.171585, 39.375996>,  <37.259418, 38.376911, 39.972443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655781, 38.171585, 39.375996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.312500, 37.976341, 39.312439>,  <37.106533, 37.859196, 39.274307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.312500, 37.976341, 39.312439>,  <37.655781, 38.171585, 39.375996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312500, 37.976341, 39.312439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321465, -0.269728, -0.907693,
		0.400197, -0.830058, 0.388390,
		-0.858197, -0.488110, -0.158890,
		37.055042, 37.829906, 39.264771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814163, 37.459934, 39.175789>,  <37.655781, 38.171585, 39.375996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814163, 37.459934, 39.175789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449417, 37.534275, 39.029385>,  <37.230568, 37.578880, 38.941544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.449417, 37.534275, 39.029385>,  <37.814163, 37.459934, 39.175789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449417, 37.534275, 39.029385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324885, -0.218227, -0.920231,
		-0.250898, -0.958038, 0.138614,
		-0.911866, 0.185851, -0.366005,
		37.175858, 37.590031, 38.919582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147732, 37.348816, 38.553875>,  <37.814163, 37.459934, 39.175789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147732, 37.348816, 38.553875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.535412, 37.360416, 38.651691>,  <38.768021, 37.367374, 38.710381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.535412, 37.360416, 38.651691>,  <38.147732, 37.348816, 38.553875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535412, 37.360416, 38.651691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122701, -0.804130, 0.581653,
		0.213513, -0.593746, -0.775808,
		0.969204, 0.028998, 0.244545,
		38.826172, 37.369118, 38.725056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386173, 36.714893, 38.592888>,  <38.147732, 37.348816, 38.553875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386173, 36.714893, 38.592888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662022, 36.891014, 38.822861>,  <38.827530, 36.996685, 38.960846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662022, 36.891014, 38.822861>,  <38.386173, 36.714893, 38.592888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662022, 36.891014, 38.822861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147897, -0.691560, 0.707015,
		0.708903, -0.572607, -0.411798,
		0.689626, 0.440301, 0.574936,
		38.868908, 37.023106, 38.995342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738922, 36.160030, 39.040859>,  <38.386173, 36.714893, 38.592888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738922, 36.160030, 39.040859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840336, 36.487747, 39.246567>,  <38.901184, 36.684380, 39.369991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.840336, 36.487747, 39.246567>,  <38.738922, 36.160030, 39.040859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840336, 36.487747, 39.246567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261065, -0.453962, 0.851918,
		0.931432, -0.350248, 0.098794,
		0.253534, 0.819295, 0.514272,
		38.916397, 36.733536, 39.400848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304092, 36.030678, 39.559078>,  <38.738922, 36.160030, 39.040859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304092, 36.030678, 39.559078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.098755, 36.355991, 39.668655>,  <38.975552, 36.551178, 39.734402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.098755, 36.355991, 39.668655>,  <39.304092, 36.030678, 39.559078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098755, 36.355991, 39.668655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256712, -0.450125, 0.855270,
		0.818885, 0.368726, 0.439850,
		-0.513348, 0.813283, 0.273944,
		38.944752, 36.599976, 39.750839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465378, 36.091000, 40.308712>,  <39.304092, 36.030678, 39.559078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465378, 36.091000, 40.308712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139019, 36.305046, 40.221115>,  <38.943203, 36.433475, 40.168556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.139019, 36.305046, 40.221115>,  <39.465378, 36.091000, 40.308712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139019, 36.305046, 40.221115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407198, -0.262890, 0.874688,
		0.410491, 0.802830, 0.432391,
		-0.815897, 0.535120, -0.218997,
		38.894249, 36.465584, 40.155415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401749, 36.684341, 40.861160>,  <39.465378, 36.091000, 40.308712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401749, 36.684341, 40.861160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.036404, 36.659092, 40.700275>,  <38.817196, 36.643944, 40.603745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.036404, 36.659092, 40.700275>,  <39.401749, 36.684341, 40.861160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036404, 36.659092, 40.700275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399750, -0.048324, 0.915350,
		-0.077218, 0.996835, 0.018903,
		-0.913366, -0.063125, -0.402216,
		38.762394, 36.640156, 40.579609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951218, 37.141235, 41.251152>,  <39.401749, 36.684341, 40.861160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951218, 37.141235, 41.251152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.736374, 36.852520, 41.076553>,  <38.607468, 36.679291, 40.971794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.736374, 36.852520, 41.076553>,  <38.951218, 37.141235, 41.251152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736374, 36.852520, 41.076553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512308, -0.131952, 0.848604,
		-0.670111, 0.679416, -0.298906,
		-0.537114, -0.721791, -0.436493,
		38.575241, 36.635983, 40.945606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394119, 37.218189, 41.559734>,  <38.951218, 37.141235, 41.251152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394119, 37.218189, 41.559734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350803, 36.857815, 41.391647>,  <38.324814, 36.641590, 41.290794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350803, 36.857815, 41.391647>,  <38.394119, 37.218189, 41.559734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350803, 36.857815, 41.391647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545766, -0.299426, 0.782613,
		-0.830910, 0.314091, -0.459276,
		-0.108293, -0.900939, -0.420217,
		38.318317, 36.587532, 41.265583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842674, 37.016270, 41.988678>,  <38.394119, 37.218189, 41.559734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842674, 37.016270, 41.988678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.977425, 36.689590, 41.801270>,  <38.058273, 36.493584, 41.688824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.977425, 36.689590, 41.801270>,  <37.842674, 37.016270, 41.988678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977425, 36.689590, 41.801270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255309, -0.558202, 0.789448,
		-0.906274, -0.146327, -0.396555,
		0.336876, -0.816700, -0.468525,
		38.078487, 36.444580, 41.660713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282436, 36.605858, 41.942299>,  <37.842674, 37.016270, 41.988678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282436, 36.605858, 41.942299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611763, 36.380997, 41.910973>,  <37.809357, 36.246078, 41.892178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611763, 36.380997, 41.910973>,  <37.282436, 36.605858, 41.942299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611763, 36.380997, 41.910973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251081, -0.484472, 0.838000,
		-0.509033, -0.670272, -0.540020,
		0.823313, -0.562158, -0.078319,
		37.858757, 36.212349, 41.887478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084484, 35.944057, 42.026093>,  <37.282436, 36.605858, 41.942299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084484, 35.944057, 42.026093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.474072, 35.941185, 42.116714>,  <37.707825, 35.939461, 42.171089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.474072, 35.941185, 42.116714>,  <37.084484, 35.944057, 42.026093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474072, 35.941185, 42.116714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183258, -0.613194, 0.768381,
		0.133403, -0.789900, -0.598550,
		0.973971, -0.007185, 0.226558,
		37.766262, 35.939030, 42.184681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181252, 35.251019, 42.212101>,  <37.084484, 35.944057, 42.026093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181252, 35.251019, 42.212101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.492008, 35.453506, 42.361866>,  <37.678463, 35.574997, 42.451725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.492008, 35.453506, 42.361866>,  <37.181252, 35.251019, 42.212101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492008, 35.453506, 42.361866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022861, -0.571582, 0.820227,
		0.629223, -0.645784, -0.432483,
		0.776889, 0.506218, 0.374416,
		37.725075, 35.605373, 42.474190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655636, 34.835655, 42.412498>,  <37.181252, 35.251019, 42.212101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655636, 34.835655, 42.412498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.752304, 35.155457, 42.632458>,  <37.810303, 35.347336, 42.764435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.752304, 35.155457, 42.632458>,  <37.655636, 34.835655, 42.412498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752304, 35.155457, 42.632458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068163, -0.551310, 0.831511,
		0.967962, -0.238431, -0.078737,
		0.241667, 0.799505, 0.549900,
		37.824802, 35.395309, 42.797428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148422, 34.633163, 42.924126>,  <37.655636, 34.835655, 42.412498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148422, 34.633163, 42.924126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.026730, 34.966461, 43.108799>,  <37.953712, 35.166439, 43.219601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.026730, 34.966461, 43.108799>,  <38.148422, 34.633163, 42.924126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026730, 34.966461, 43.108799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259169, -0.538775, 0.801594,
		0.916664, 0.124219, 0.379865,
		-0.304235, 0.833241, 0.461681,
		37.935459, 35.216434, 43.247303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428650, 34.632900, 43.640503>,  <38.148422, 34.633163, 42.924126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428650, 34.632900, 43.640503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.118706, 34.884476, 43.665886>,  <37.932739, 35.035423, 43.681114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.118706, 34.884476, 43.665886>,  <38.428650, 34.632900, 43.640503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118706, 34.884476, 43.665886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154460, -0.285722, 0.945783,
		0.612974, 0.723046, 0.318541,
		-0.774858, 0.628942, 0.063458,
		37.886250, 35.073158, 43.684925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511818, 34.957752, 44.284092>,  <38.428650, 34.632900, 43.640503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511818, 34.957752, 44.284092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.128368, 35.009804, 44.182812>,  <37.898300, 35.041035, 44.122044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.128368, 35.009804, 44.182812>,  <38.511818, 34.957752, 44.284092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128368, 35.009804, 44.182812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282609, -0.327942, 0.901436,
		0.034268, 0.935693, 0.351148,
		-0.958623, 0.130128, -0.253197,
		37.840782, 35.048843, 44.106853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203362, 35.315788, 44.878159>,  <38.511818, 34.957752, 44.284092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203362, 35.315788, 44.878159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.902931, 35.163765, 44.662216>,  <37.722675, 35.072552, 44.532650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.902931, 35.163765, 44.662216>,  <38.203362, 35.315788, 44.878159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902931, 35.163765, 44.662216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439470, -0.322429, 0.838395,
		-0.492701, 0.866948, 0.075145,
		-0.751074, -0.380054, -0.539859,
		37.677608, 35.049747, 44.500259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648151, 35.453049, 45.348259>,  <38.203362, 35.315788, 44.878159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648151, 35.453049, 45.348259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525208, 35.167557, 45.096508>,  <37.451443, 34.996262, 44.945457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.525208, 35.167557, 45.096508>,  <37.648151, 35.453049, 45.348259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525208, 35.167557, 45.096508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541136, -0.412948, 0.732561,
		-0.782752, 0.565740, -0.259301,
		-0.307361, -0.713731, -0.629378,
		37.432999, 34.953438, 44.907696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.890766, 35.521664, 45.281956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.976562, 35.144108, 45.181511>,  <37.028042, 34.917572, 45.121243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.976562, 35.144108, 45.181511>,  <36.890766, 35.521664, 45.281956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976562, 35.144108, 45.181511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696100, -0.328080, 0.638598,
		-0.685154, 0.037826, -0.727415,
		0.214495, -0.943892, -0.251116,
		37.040913, 34.860939, 45.106174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221996, 35.280163, 45.107685>,  <36.890766, 35.521664, 45.281956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221996, 35.280163, 45.107685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479237, 34.983646, 45.184528>,  <36.633583, 34.805737, 45.230633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.479237, 34.983646, 45.184528>,  <36.221996, 35.280163, 45.107685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479237, 34.983646, 45.184528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634897, -0.375873, 0.675001,
		-0.428163, -0.556065, -0.712368,
		0.643104, -0.741291, 0.192109,
		36.672169, 34.761261, 45.242161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773521, 34.731781, 45.382347>,  <36.221996, 35.280163, 45.107685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773521, 34.731781, 45.382347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.137150, 34.579163, 45.449291>,  <36.355328, 34.487591, 45.489460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.137150, 34.579163, 45.449291>,  <35.773521, 34.731781, 45.382347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137150, 34.579163, 45.449291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381050, -0.598932, 0.704331,
		-0.168498, -0.704060, -0.689861,
		0.909071, -0.381550, 0.167363,
		36.409870, 34.464699, 45.499500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771156, 33.919266, 45.374557>,  <35.773521, 34.731781, 45.382347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771156, 33.919266, 45.374557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.083405, 34.044247, 45.591076>,  <36.270756, 34.119236, 45.720985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.083405, 34.044247, 45.591076>,  <35.771156, 33.919266, 45.374557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083405, 34.044247, 45.591076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228949, -0.662913, 0.712831,
		0.581556, -0.680383, -0.445951,
		0.780625, 0.312451, 0.541294,
		36.317593, 34.137981, 45.753464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988945, 33.199196, 45.782276>,  <35.771156, 33.919266, 45.374557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988945, 33.199196, 45.782276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128765, 33.514328, 45.985111>,  <36.212658, 33.703407, 46.106812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.128765, 33.514328, 45.985111>,  <35.988945, 33.199196, 45.782276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128765, 33.514328, 45.985111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434766, -0.343031, 0.832651,
		0.829935, -0.511517, 0.222616,
		0.349551, 0.787832, 0.507084,
		36.233631, 33.750679, 46.137238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365517, 32.958279, 46.375694>,  <35.988945, 33.199196, 45.782276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365517, 32.958279, 46.375694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.304100, 33.331181, 46.506741>,  <36.267250, 33.554920, 46.585369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.304100, 33.331181, 46.506741>,  <36.365517, 32.958279, 46.375694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304100, 33.331181, 46.506741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423586, -0.361634, 0.830540,
		0.892748, -0.011246, 0.450416,
		-0.153545, 0.932253, 0.327611,
		36.258038, 33.610855, 46.605022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846428, 33.143917, 46.957649>,  <36.365517, 32.958279, 46.375694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846428, 33.143917, 46.957649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.495422, 33.333000, 46.989964>,  <36.284821, 33.446449, 47.009354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.495422, 33.333000, 46.989964>,  <36.846428, 33.143917, 46.957649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495422, 33.333000, 46.989964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169844, -0.463891, 0.869459,
		0.448474, 0.749237, 0.487355,
		-0.877510, 0.472704, 0.080789,
		36.232170, 33.474812, 47.014202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828186, 33.135143, 47.728233>,  <36.846428, 33.143917, 46.957649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828186, 33.135143, 47.728233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.473335, 33.256680, 47.589275>,  <36.260426, 33.329601, 47.505901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.473335, 33.256680, 47.589275>,  <36.828186, 33.135143, 47.728233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473335, 33.256680, 47.589275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441429, -0.338902, 0.830834,
		0.134708, 0.890407, 0.434774,
		-0.887127, 0.303842, -0.347399,
		36.207199, 33.347832, 47.485054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523373, 33.627907, 48.306374>,  <36.828186, 33.135143, 47.728233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523373, 33.627907, 48.306374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.256020, 33.454914, 48.064312>,  <36.095608, 33.351116, 47.919075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.256020, 33.454914, 48.064312>,  <36.523373, 33.627907, 48.306374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256020, 33.454914, 48.064312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488669, -0.358054, 0.795613,
		-0.560769, 0.827499, 0.027977,
		-0.668386, -0.432484, -0.605159,
		36.055504, 33.325169, 47.882763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905243, 33.911690, 48.516815>,  <36.523373, 33.627907, 48.306374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905243, 33.911690, 48.516815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.841820, 33.551746, 48.354279>,  <35.803764, 33.335781, 48.256756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.841820, 33.551746, 48.354279>,  <35.905243, 33.911690, 48.516815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841820, 33.551746, 48.354279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448267, -0.301081, 0.841669,
		-0.879724, 0.315607, -0.355637,
		-0.158561, -0.899857, -0.406345,
		35.794250, 33.281788, 48.232376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294144, 33.867798, 48.629627>,  <35.905243, 33.911690, 48.516815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294144, 33.867798, 48.629627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420921, 33.496288, 48.552765>,  <35.496990, 33.273384, 48.506649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.420921, 33.496288, 48.552765>,  <35.294144, 33.867798, 48.629627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420921, 33.496288, 48.552765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403776, -0.315456, 0.858751,
		-0.858201, -0.194593, -0.475000,
		0.316948, -0.928774, -0.192153,
		35.516006, 33.217655, 48.495117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789803, 33.326748, 48.972282>,  <35.294144, 33.867798, 48.629627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789803, 33.326748, 48.972282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.108242, 33.101044, 48.884796>,  <35.299305, 32.965622, 48.832302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.108242, 33.101044, 48.884796>,  <34.789803, 33.326748, 48.972282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108242, 33.101044, 48.884796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207418, -0.593941, 0.777311,
		-0.568512, -0.573450, -0.589872,
		0.796098, -0.564260, -0.218719,
		35.347073, 32.931767, 48.819180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587067, 32.566574, 49.110451>,  <34.789803, 33.326748, 48.972282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587067, 32.566574, 49.110451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984962, 32.543472, 49.144314>,  <35.223698, 32.529610, 49.164631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984962, 32.543472, 49.144314>,  <34.587067, 32.566574, 49.110451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984962, 32.543472, 49.144314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102457, -0.541746, 0.834275,
		-0.002318, -0.838556, -0.544811,
		0.994735, -0.057753, 0.084660,
		35.283382, 32.526146, 49.169712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789181, 31.829828, 49.040375>,  <34.587067, 32.566574, 49.110451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789181, 31.829828, 49.040375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.086250, 32.020832, 49.228172>,  <35.264492, 32.135433, 49.340851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.086250, 32.020832, 49.228172>,  <34.789181, 31.829828, 49.040375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086250, 32.020832, 49.228172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075233, -0.756156, 0.650052,
		0.665417, -0.447454, -0.597499,
		0.742671, 0.477507, 0.469496,
		35.309052, 32.164085, 49.369022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250488, 31.254707, 49.104633>,  <34.789181, 31.829828, 49.040375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250488, 31.254707, 49.104633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332386, 31.535707, 49.377270>,  <35.381523, 31.704308, 49.540852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.332386, 31.535707, 49.377270>,  <35.250488, 31.254707, 49.104633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332386, 31.535707, 49.377270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259829, -0.710370, 0.654112,
		0.943700, 0.043176, -0.327972,
		0.204740, 0.702502, 0.681595,
		35.393806, 31.746458, 49.581749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747173, 31.004982, 49.494457>,  <35.250488, 31.254707, 49.104633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747173, 31.004982, 49.494457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.622475, 31.268044, 49.768772>,  <35.547657, 31.425880, 49.933361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.622475, 31.268044, 49.768772>,  <35.747173, 31.004982, 49.494457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622475, 31.268044, 49.768772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005311, -0.722949, 0.690881,
		0.950150, 0.211738, 0.228870,
		-0.311747, 0.657656, 0.685786,
		35.528950, 31.465340, 49.974506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173565, 30.999023, 50.115543>,  <35.747173, 31.004982, 49.494457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173565, 30.999023, 50.115543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.820728, 31.149038, 50.229572>,  <35.609028, 31.239048, 50.297989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.820728, 31.149038, 50.229572>,  <36.173565, 30.999023, 50.115543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820728, 31.149038, 50.229572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120836, -0.765025, 0.632563,
		0.455320, 0.523530, 0.720138,
		-0.882089, 0.375038, 0.285070,
		35.556103, 31.261549, 50.315094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175968, 30.918741, 50.883289>,  <36.173565, 30.999023, 50.115543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175968, 30.918741, 50.883289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.790028, 30.996826, 50.812912>,  <35.558464, 31.043678, 50.770687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.790028, 30.996826, 50.812912>,  <36.175968, 30.918741, 50.883289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790028, 30.996826, 50.812912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262791, -0.711032, 0.652207,
		0.002219, 0.675519, 0.737340,
		-0.964850, 0.195214, -0.175942,
		35.500572, 31.055389, 50.760128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865055, 30.872816, 51.503155>,  <36.175968, 30.918741, 50.883289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865055, 30.872816, 51.503155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.538692, 30.876549, 51.271912>,  <35.342873, 30.878788, 51.133167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.538692, 30.876549, 51.271912>,  <35.865055, 30.872816, 51.503155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538692, 30.876549, 51.271912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434718, -0.669122, 0.602740,
		-0.381199, 0.743094, 0.549999,
		-0.815909, 0.009331, -0.578105,
		35.293919, 30.879349, 51.098480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286270, 31.163929, 51.883652>,  <35.865055, 30.872816, 51.503155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286270, 31.163929, 51.883652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173252, 30.914314, 51.592243>,  <35.105442, 30.764545, 51.417397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173252, 30.914314, 51.592243>,  <35.286270, 31.163929, 51.883652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173252, 30.914314, 51.592243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280415, -0.672563, 0.684855,
		-0.917352, 0.397793, 0.015043,
		-0.282548, -0.624034, -0.728524,
		35.088490, 30.727104, 51.373688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686485, 30.907787, 52.124290>,  <35.286270, 31.163929, 51.883652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686485, 30.907787, 52.124290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791073, 30.646797, 51.839783>,  <34.853825, 30.490202, 51.669079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.791073, 30.646797, 51.839783>,  <34.686485, 30.907787, 52.124290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791073, 30.646797, 51.839783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235563, -0.757762, 0.608528,
		-0.936026, 0.008440, -0.351828,
		0.261466, -0.652477, -0.711273,
		34.869514, 30.451054, 51.626400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164883, 30.520954, 51.979408>,  <34.686485, 30.907787, 52.124290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164883, 30.520954, 51.979408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.513493, 30.330345, 51.933170>,  <34.722660, 30.215979, 51.905426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.513493, 30.330345, 51.933170>,  <34.164883, 30.520954, 51.979408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513493, 30.330345, 51.933170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246075, -0.628952, 0.737473,
		-0.424128, -0.614283, -0.665411,
		0.871529, -0.476524, -0.115597,
		34.774952, 30.187387, 51.898491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067142, 29.805122, 52.009750>,  <34.164883, 30.520954, 51.979408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067142, 29.805122, 52.009750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.455570, 29.862646, 52.086006>,  <34.688625, 29.897160, 52.131760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.455570, 29.862646, 52.086006>,  <34.067142, 29.805122, 52.009750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455570, 29.862646, 52.086006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021312, -0.742943, 0.669015,
		0.237842, -0.653723, -0.718385,
		0.971070, 0.143810, 0.190636,
		34.746891, 29.905788, 52.143196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293369, 29.801931, 52.178810>,  <34.067142, 29.805122, 52.009750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293369, 29.801931, 52.178810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906796, 29.874689, 52.251392>,  <32.674850, 29.918344, 52.294941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906796, 29.874689, 52.251392>,  <33.293369, 29.801931, 52.178810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906796, 29.874689, 52.251392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032934, 0.612734, -0.789603,
		-0.254812, -0.769072, -0.586174,
		-0.966430, 0.181895, 0.181460,
		32.616867, 29.929258, 52.305832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882511, 29.761915, 51.578789>,  <33.293369, 29.801931, 52.178810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882511, 29.761915, 51.578789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.687729, 30.008295, 51.826492>,  <32.570858, 30.156124, 51.975113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.687729, 30.008295, 51.826492>,  <32.882511, 29.761915, 51.578789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687729, 30.008295, 51.826492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090756, 0.669476, -0.737268,
		-0.868699, -0.415218, -0.270103,
		-0.486954, 0.615951, 0.619257,
		32.541641, 30.193081, 52.012268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379642, 29.962837, 51.219486>,  <32.882511, 29.761915, 51.578789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379642, 29.962837, 51.219486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.366375, 30.254339, 51.493073>,  <32.358414, 30.429241, 51.657227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.366375, 30.254339, 51.493073>,  <32.379642, 29.962837, 51.219486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366375, 30.254339, 51.493073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332768, 0.637247, -0.695112,
		-0.942425, -0.250661, 0.221369,
		-0.033171, 0.728756, 0.683970,
		32.356422, 30.472965, 51.698265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637270, 30.364262, 51.114357>,  <32.379642, 29.962837, 51.219486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637270, 30.364262, 51.114357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.914803, 30.575451, 51.310253>,  <32.081322, 30.702166, 51.427792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.914803, 30.575451, 51.310253>,  <31.637270, 30.364262, 51.114357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914803, 30.575451, 51.310253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055892, 0.717488, -0.694325,
		-0.717966, 0.454372, 0.527325,
		0.693831, 0.527975, 0.489736,
		32.122952, 30.733843, 51.457172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360937, 31.090517, 51.018925>,  <31.637270, 30.364262, 51.114357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360937, 31.090517, 51.018925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.750137, 31.112598, 51.108566>,  <31.983658, 31.125847, 51.162354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.750137, 31.112598, 51.108566>,  <31.360937, 31.090517, 51.018925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750137, 31.112598, 51.108566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149699, 0.588103, -0.794811,
		-0.175672, 0.806900, 0.563961,
		0.973000, 0.055202, 0.224106,
		32.042038, 31.129160, 51.175797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462353, 31.773563, 51.083965>,  <31.360937, 31.090517, 51.018925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462353, 31.773563, 51.083965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.806013, 31.591419, 50.990578>,  <32.012211, 31.482132, 50.934547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.806013, 31.591419, 50.990578>,  <31.462353, 31.773563, 51.083965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806013, 31.591419, 50.990578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169929, 0.684222, -0.709199,
		0.482686, 0.569636, 0.665229,
		0.859150, -0.455362, -0.233467,
		32.063759, 31.454811, 50.920536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844437, 32.318451, 50.802387>,  <31.462353, 31.773563, 51.083965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844437, 32.318451, 50.802387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.122189, 32.049519, 50.699776>,  <32.288837, 31.888159, 50.638210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.122189, 32.049519, 50.699776>,  <31.844437, 32.318451, 50.802387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122189, 32.049519, 50.699776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356146, 0.630841, -0.689348,
		0.625299, 0.387307, 0.677491,
		0.694378, -0.672334, -0.256527,
		32.330502, 31.847818, 50.622818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376743, 32.771278, 50.471004>,  <31.844437, 32.318451, 50.802387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376743, 32.771278, 50.471004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.496204, 32.403996, 50.366928>,  <32.567883, 32.183624, 50.304482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.496204, 32.403996, 50.366928>,  <32.376743, 32.771278, 50.471004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496204, 32.403996, 50.366928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533786, 0.386717, -0.752012,
		0.791125, 0.085702, 0.605620,
		0.298653, -0.918207, -0.260195,
		32.585800, 32.128532, 50.288868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157204, 32.673073, 50.443375>,  <32.376743, 32.771278, 50.471004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157204, 32.673073, 50.443375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.997192, 32.407261, 50.190903>,  <32.901188, 32.247776, 50.039421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.997192, 32.407261, 50.190903>,  <33.157204, 32.673073, 50.443375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997192, 32.407261, 50.190903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494008, 0.423734, -0.759214,
		0.771969, -0.615510, 0.158778,
		-0.400025, -0.664527, -0.631176,
		32.877186, 32.207901, 50.001549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696625, 32.344646, 50.079391>,  <33.157204, 32.673073, 50.443375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696625, 32.344646, 50.079391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.375168, 32.283230, 49.849403>,  <33.182293, 32.246380, 49.711411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.375168, 32.283230, 49.849403>,  <33.696625, 32.344646, 50.079391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375168, 32.283230, 49.849403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440462, 0.496243, -0.748155,
		0.400199, -0.854498, -0.331170,
		-0.803638, -0.153543, -0.574970,
		33.134075, 32.237167, 49.676914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955460, 32.204407, 49.413654>,  <33.696625, 32.344646, 50.079391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955460, 32.204407, 49.413654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.583061, 32.314777, 49.318066>,  <33.359623, 32.381001, 49.260712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.583061, 32.314777, 49.318066>,  <33.955460, 32.204407, 49.413654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583061, 32.314777, 49.318066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354762, 0.529816, -0.770350,
		-0.085948, -0.801972, -0.591146,
		-0.930998, 0.275926, -0.238973,
		33.303761, 32.397556, 49.246372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851929, 32.048977, 48.711445>,  <33.955460, 32.204407, 49.413654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851929, 32.048977, 48.711445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.557201, 32.311031, 48.778248>,  <33.380363, 32.468266, 48.818329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.557201, 32.311031, 48.778248>,  <33.851929, 32.048977, 48.711445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557201, 32.311031, 48.778248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268419, 0.510178, -0.817111,
		-0.620521, -0.557237, -0.551761,
		-0.736821, 0.655138, 0.167004,
		33.336155, 32.507572, 48.828350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453094, 32.108608, 48.083012>,  <33.851929, 32.048977, 48.711445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453094, 32.108608, 48.083012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.380623, 32.454388, 48.270584>,  <33.337139, 32.661858, 48.383129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.380623, 32.454388, 48.270584>,  <33.453094, 32.108608, 48.083012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380623, 32.454388, 48.270584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174878, 0.497541, -0.849630,
		-0.967778, -0.071926, -0.241316,
		-0.181175, 0.864453, 0.468931,
		33.326271, 32.713722, 48.411263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059868, 32.447987, 47.572426>,  <33.453094, 32.108608, 48.083012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059868, 32.447987, 47.572426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.151951, 32.735825, 47.834476>,  <33.207203, 32.908527, 47.991707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.151951, 32.735825, 47.834476>,  <33.059868, 32.447987, 47.572426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151951, 32.735825, 47.834476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042933, 0.680061, -0.731897,
		-0.972193, 0.140364, 0.187451,
		0.230210, 0.719593, 0.655125,
		33.221012, 32.951702, 48.031013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699802, 33.031590, 47.289757>,  <33.059868, 32.447987, 47.572426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699802, 33.031590, 47.289757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.989666, 33.149811, 47.538757>,  <33.163586, 33.220745, 47.688160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.989666, 33.149811, 47.538757>,  <32.699802, 33.031590, 47.289757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989666, 33.149811, 47.538757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217266, 0.759283, -0.613420,
		-0.653957, 0.579771, 0.486009,
		0.724662, 0.295557, 0.622504,
		33.207066, 33.238480, 47.725510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695869, 33.760273, 47.193905>,  <32.699802, 33.031590, 47.289757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695869, 33.760273, 47.193905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050426, 33.671806, 47.356575>,  <33.263161, 33.618725, 47.454178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050426, 33.671806, 47.356575>,  <32.695869, 33.760273, 47.193905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050426, 33.671806, 47.356575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447815, 0.632282, -0.632203,
		-0.117311, 0.742499, 0.659496,
		0.886397, -0.221168, 0.406676,
		33.316345, 33.605457, 47.478577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902248, 34.423443, 47.240711>,  <32.695869, 33.760273, 47.193905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902248, 34.423443, 47.240711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.226612, 34.189461, 47.247005>,  <33.421230, 34.049072, 47.250782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.226612, 34.189461, 47.247005>,  <32.902248, 34.423443, 47.240711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226612, 34.189461, 47.247005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443965, 0.597501, -0.667749,
		0.381201, 0.548472, 0.744220,
		0.810914, -0.584954, 0.015735,
		33.469887, 34.013973, 47.251724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352139, 34.929100, 47.340012>,  <32.902248, 34.423443, 47.240711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352139, 34.929100, 47.340012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.575573, 34.618786, 47.222610>,  <33.709633, 34.432598, 47.152168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.575573, 34.618786, 47.222610>,  <33.352139, 34.929100, 47.340012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575573, 34.618786, 47.222610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395279, 0.560063, -0.728069,
		0.729202, 0.290675, 0.619494,
		0.558587, -0.775782, -0.293501,
		33.743149, 34.386051, 47.134560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052006, 35.129795, 47.228889>,  <33.352139, 34.929100, 47.340012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052006, 35.129795, 47.228889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.981884, 34.809616, 46.999615>,  <33.939812, 34.617508, 46.862049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.981884, 34.809616, 46.999615>,  <34.052006, 35.129795, 47.228889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981884, 34.809616, 46.999615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384451, 0.480323, -0.788345,
		0.906348, -0.358562, 0.223532,
		-0.175303, -0.800452, -0.573189,
		33.929295, 34.569481, 46.827660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518600, 35.227608, 46.714321>,  <34.052006, 35.129795, 47.228889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518600, 35.227608, 46.714321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.297958, 34.929157, 46.565178>,  <34.165573, 34.750088, 46.475693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.297958, 34.929157, 46.565178>,  <34.518600, 35.227608, 46.714321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297958, 34.929157, 46.565178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391224, 0.163366, -0.905679,
		0.736667, -0.645447, 0.201791,
		-0.551602, -0.746130, -0.372861,
		34.132477, 34.705318, 46.453320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963478, 34.833950, 46.307766>,  <34.518600, 35.227608, 46.714321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963478, 34.833950, 46.307766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583351, 34.778721, 46.196171>,  <34.355274, 34.745583, 46.129215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583351, 34.778721, 46.196171>,  <34.963478, 34.833950, 46.307766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583351, 34.778721, 46.196171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219402, 0.338661, -0.914971,
		0.220815, -0.930722, -0.291542,
		-0.950317, -0.138075, -0.278984,
		34.298256, 34.737297, 46.112476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.524597, 41.640961, 34.216621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.156956, 41.738384, 34.092735>,  <43.936371, 41.796837, 34.018406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.156956, 41.738384, 34.092735>,  <44.524597, 41.640961, 34.216621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156956, 41.738384, 34.092735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393649, -0.534178, 0.748127,
		0.016770, 0.809527, 0.586843,
		-0.919108, 0.243556, -0.309711,
		43.881222, 41.811451, 33.999821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020908, 41.846703, 34.840855>,  <44.524597, 41.640961, 34.216621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020908, 41.846703, 34.840855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.803234, 41.743977, 34.521378>,  <43.672630, 41.682339, 34.329693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.803234, 41.743977, 34.521378>,  <44.020908, 41.846703, 34.840855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803234, 41.743977, 34.521378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513487, -0.650900, 0.559161,
		-0.663470, 0.714405, 0.222338,
		-0.544187, -0.256819, -0.798690,
		43.639977, 41.666931, 34.281769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372353, 41.793243, 35.167698>,  <44.020908, 41.846703, 34.840855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372353, 41.793243, 35.167698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353859, 41.577362, 34.831463>,  <43.342762, 41.447834, 34.629723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.353859, 41.577362, 34.831463>,  <43.372353, 41.793243, 35.167698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353859, 41.577362, 34.831463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423315, -0.751609, 0.505853,
		-0.904802, 0.379220, -0.193715,
		-0.046232, -0.539699, -0.840587,
		43.339989, 41.415451, 34.579288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656521, 41.451904, 35.137184>,  <43.372353, 41.793243, 35.167698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656521, 41.451904, 35.137184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.880512, 41.235943, 34.885811>,  <43.014908, 41.106365, 34.734989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.880512, 41.235943, 34.885811>,  <42.656521, 41.451904, 35.137184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880512, 41.235943, 34.885811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405250, -0.840071, 0.360628,
		-0.722633, 0.052728, -0.689218,
		0.559977, -0.539908, -0.628431,
		43.048504, 41.073971, 34.697281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206009, 40.986416, 34.833302>,  <42.656521, 41.451904, 35.137184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206009, 40.986416, 34.833302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.571613, 40.835777, 34.772957>,  <42.790977, 40.745396, 34.736752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.571613, 40.835777, 34.772957>,  <42.206009, 40.986416, 34.833302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571613, 40.835777, 34.772957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348220, -0.919068, 0.184542,
		-0.208147, -0.116142, -0.971178,
		0.914012, -0.376596, -0.150858,
		42.845818, 40.722797, 34.727699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090691, 40.372616, 34.392796>,  <42.206009, 40.986416, 34.833302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090691, 40.372616, 34.392796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.445175, 40.308792, 34.566772>,  <42.657867, 40.270496, 34.671158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.445175, 40.308792, 34.566772>,  <42.090691, 40.372616, 34.392796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445175, 40.308792, 34.566772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205020, -0.976958, 0.059339,
		0.415447, -0.141757, -0.898503,
		0.886211, -0.159559, 0.434938,
		42.711037, 40.260925, 34.697254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380169, 39.783932, 34.003750>,  <42.090691, 40.372616, 34.392796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380169, 39.783932, 34.003750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.536446, 39.801781, 34.371525>,  <42.630211, 39.812489, 34.592190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.536446, 39.801781, 34.371525>,  <42.380169, 39.783932, 34.003750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536446, 39.801781, 34.371525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309476, -0.934318, 0.176846,
		0.866941, -0.353636, -0.351218,
		0.390689, 0.044621, 0.919441,
		42.653652, 39.815166, 34.647358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541935, 39.134331, 34.121777>,  <42.380169, 39.783932, 34.003750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541935, 39.134331, 34.121777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.583908, 39.260593, 34.498997>,  <42.609093, 39.336353, 34.725330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.583908, 39.260593, 34.498997>,  <42.541935, 39.134331, 34.121777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583908, 39.260593, 34.498997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005415, -0.948092, 0.317949,
		0.994465, -0.038468, -0.097772,
		0.104928, 0.315660, 0.943053,
		42.615387, 39.355293, 34.781914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.157452, 38.849228, 34.434338>,  <42.541935, 39.134331, 34.121777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.157452, 38.849228, 34.434338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.940323, 38.902420, 34.766037>,  <42.810043, 38.934338, 34.965057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.940323, 38.902420, 34.766037>,  <43.157452, 38.849228, 34.434338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.940323, 38.902420, 34.766037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255714, -0.914332, 0.314017,
		0.799970, 0.382508, 0.462315,
		-0.542824, 0.132984, 0.829251,
		42.777477, 38.942314, 35.014812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484833, 38.561558, 34.893555>,  <43.157452, 38.849228, 34.434338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484833, 38.561558, 34.893555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134457, 38.574608, 35.086082>,  <42.924232, 38.582439, 35.201599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.134457, 38.574608, 35.086082>,  <43.484833, 38.561558, 34.893555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134457, 38.574608, 35.086082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126019, -0.947593, 0.293575,
		0.465672, 0.317809, 0.825922,
		-0.875939, 0.032628, 0.481318,
		42.871674, 38.584396, 35.230476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583565, 38.342808, 35.598511>,  <43.484833, 38.561558, 34.893555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583565, 38.342808, 35.598511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.199974, 38.277328, 35.505928>,  <42.969822, 38.238041, 35.450378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.199974, 38.277328, 35.505928>,  <43.583565, 38.342808, 35.598511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199974, 38.277328, 35.505928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109340, -0.966844, 0.230775,
		-0.261556, 0.196000, 0.945078,
		-0.958975, -0.163695, -0.231454,
		42.912281, 38.228222, 35.436493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292263, 37.885529, 36.168491>,  <43.583565, 38.342808, 35.598511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292263, 37.885529, 36.168491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.060188, 37.836479, 35.846413>,  <42.920944, 37.807049, 35.653164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.060188, 37.836479, 35.846413>,  <43.292263, 37.885529, 36.168491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060188, 37.836479, 35.846413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083185, -0.974511, 0.208345,
		-0.810225, 0.187860, 0.555198,
		-0.580186, -0.122622, -0.805201,
		42.886131, 37.799694, 35.604851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898266, 37.236885, 36.347542>,  <43.292263, 37.885529, 36.168491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898266, 37.236885, 36.347542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.842899, 37.297550, 35.956066>,  <42.809681, 37.333950, 35.721180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.842899, 37.297550, 35.956066>,  <42.898266, 37.236885, 36.347542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842899, 37.297550, 35.956066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048920, -0.988045, -0.146195,
		-0.989166, 0.027642, 0.144179,
		-0.138414, 0.151664, -0.978693,
		42.801376, 37.343048, 35.662457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409000, 36.822144, 36.212097>,  <42.898266, 37.236885, 36.347542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409000, 36.822144, 36.212097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.583057, 36.886238, 35.857704>,  <42.687492, 36.924694, 35.645069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.583057, 36.886238, 35.857704>,  <42.409000, 36.822144, 36.212097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583057, 36.886238, 35.857704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038251, -0.986437, -0.159621,
		-0.899548, 0.035569, -0.435372,
		0.435145, 0.160240, -0.885987,
		42.713600, 36.934311, 35.591908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075832, 36.385696, 35.782612>,  <42.409000, 36.822144, 36.212097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075832, 36.385696, 35.782612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.422466, 36.447258, 35.592731>,  <42.630447, 36.484196, 35.478802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.422466, 36.447258, 35.592731>,  <42.075832, 36.385696, 35.782612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422466, 36.447258, 35.592731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056051, -0.915215, -0.399049,
		-0.495871, 0.372418, -0.784485,
		0.866585, 0.153906, -0.474703,
		42.682442, 36.493431, 35.450321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953838, 36.079948, 35.093414>,  <42.075832, 36.385696, 35.782612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953838, 36.079948, 35.093414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.349323, 36.128551, 35.128468>,  <42.586617, 36.157715, 35.149498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.349323, 36.128551, 35.128468>,  <41.953838, 36.079948, 35.093414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349323, 36.128551, 35.128468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145179, -0.921475, -0.360286,
		0.036972, 0.368942, -0.928717,
		0.988714, 0.121510, 0.087631,
		42.645939, 36.165005, 35.154758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259216, 35.730759, 34.479588>,  <41.953838, 36.079948, 35.093414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259216, 35.730759, 34.479588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.569126, 35.744694, 34.732098>,  <42.755074, 35.753056, 34.883602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.569126, 35.744694, 34.732098>,  <42.259216, 35.730759, 34.479588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569126, 35.744694, 34.732098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220787, -0.950528, -0.218516,
		0.592429, 0.308678, -0.744141,
		0.774778, 0.034841, 0.631273,
		42.801559, 35.755146, 34.921478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732384, 35.232391, 34.210159>,  <42.259216, 35.730759, 34.479588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732384, 35.232391, 34.210159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.869034, 35.309029, 34.578201>,  <42.951023, 35.355011, 34.799026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.869034, 35.309029, 34.578201>,  <42.732384, 35.232391, 34.210159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869034, 35.309029, 34.578201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212641, -0.969371, 0.122898,
		0.915465, 0.153667, -0.371900,
		0.341624, 0.191590, 0.920101,
		42.971519, 35.366505, 34.854233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358673, 34.998878, 34.202644>,  <42.732384, 35.232391, 34.210159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358673, 34.998878, 34.202644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.240997, 34.994213, 34.584915>,  <43.170391, 34.991413, 34.814278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.240997, 34.994213, 34.584915>,  <43.358673, 34.998878, 34.202644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240997, 34.994213, 34.584915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355303, -0.929596, 0.098033,
		0.887249, 0.368395, 0.277621,
		-0.294191, -0.011660, 0.955676,
		43.152740, 34.990715, 34.871616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887802, 34.596180, 34.533749>,  <43.358673, 34.998878, 34.202644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887802, 34.596180, 34.533749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.573544, 34.581890, 34.780804>,  <43.384987, 34.573315, 34.929035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.573544, 34.581890, 34.780804>,  <43.887802, 34.596180, 34.533749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573544, 34.581890, 34.780804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302949, -0.892664, 0.333725,
		0.539421, 0.449304, 0.712145,
		-0.785650, -0.035725, 0.617639,
		43.337849, 34.571171, 34.966095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208363, 34.488396, 35.238697>,  <43.887802, 34.596180, 34.533749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208363, 34.488396, 35.238697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.827274, 34.366997, 35.232800>,  <43.598621, 34.294155, 35.229259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.827274, 34.366997, 35.232800>,  <44.208363, 34.488396, 35.238697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827274, 34.366997, 35.232800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269157, -0.865442, 0.422569,
		-0.141012, 0.398619, 0.906211,
		-0.952717, -0.303500, -0.014747,
		43.541458, 34.275948, 35.228374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293640, 35.189915, 35.423603>,  <44.208363, 34.488396, 35.238697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293640, 35.189915, 35.423603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.664345, 35.098038, 35.304710>,  <44.886768, 35.042912, 35.233376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.664345, 35.098038, 35.304710>,  <44.293640, 35.189915, 35.423603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664345, 35.098038, 35.304710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013956, 0.811775, -0.583803,
		0.375382, 0.536900, 0.755530,
		0.926765, -0.229694, -0.297233,
		44.942375, 35.029129, 35.215542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.737885, 35.742840, 35.453941>,  <44.293640, 35.189915, 35.423603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.737885, 35.742840, 35.453941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933762, 35.496601, 35.206963>,  <45.051289, 35.348858, 35.058777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.933762, 35.496601, 35.206963>,  <44.737885, 35.742840, 35.453941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933762, 35.496601, 35.206963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257328, 0.778662, -0.572248,
		0.833055, 0.121343, 0.539718,
		0.489696, -0.615598, -0.617444,
		45.080669, 35.311920, 35.021729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379925, 36.117222, 35.225510>,  <44.737885, 35.742840, 35.453941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379925, 36.117222, 35.225510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.347443, 35.825001, 34.954304>,  <45.327953, 35.649670, 34.791580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.347443, 35.825001, 34.954304>,  <45.379925, 36.117222, 35.225510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.347443, 35.825001, 34.954304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309387, 0.628182, -0.713909,
		0.947463, -0.267741, 0.175011,
		-0.081204, -0.730549, -0.678015,
		45.323082, 35.605835, 34.750900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926685, 36.202393, 34.813576>,  <45.379925, 36.117222, 35.225510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926685, 36.202393, 34.813576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.707157, 35.968277, 34.574837>,  <45.575439, 35.827808, 34.431591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.707157, 35.968277, 34.574837>,  <45.926685, 36.202393, 34.813576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707157, 35.968277, 34.574837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160475, 0.626942, -0.762360,
		0.820394, -0.514176, -0.250152,
		-0.548818, -0.585292, -0.596852,
		45.542511, 35.792690, 34.395782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.173191, 36.360477, 34.198635>,  <45.926685, 36.202393, 34.813576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.173191, 36.360477, 34.198635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.878315, 36.128796, 34.059452>,  <45.701389, 35.989788, 33.975941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.878315, 36.128796, 34.059452>,  <46.173191, 36.360477, 34.198635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.878315, 36.128796, 34.059452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131692, 0.628260, -0.766777,
		0.662729, -0.519436, -0.539423,
		-0.737189, -0.579203, -0.347960,
		45.657158, 35.955036, 33.955067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.294952, 35.982403, 33.548500>,  <46.173191, 36.360477, 34.198635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.294952, 35.982403, 33.548500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.910004, 36.079788, 33.596783>,  <45.679035, 36.138218, 33.625751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.910004, 36.079788, 33.596783>,  <46.294952, 35.982403, 33.548500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.910004, 36.079788, 33.596783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039294, 0.564211, -0.824695,
		-0.268886, -0.788919, -0.552547,
		-0.962370, 0.243461, 0.120709,
		45.621292, 36.152828, 33.632996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.038712, 36.134281, 32.833332>,  <46.294952, 35.982403, 33.548500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.038712, 36.134281, 32.833332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.758141, 36.295441, 33.068508>,  <45.589798, 36.392136, 33.209614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.758141, 36.295441, 33.068508>,  <46.038712, 36.134281, 32.833332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.758141, 36.295441, 33.068508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170978, 0.705696, -0.687575,
		-0.691926, -0.582810, -0.426111,
		-0.701431, 0.402896, 0.587937,
		45.547710, 36.416309, 33.244888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474636, 36.201195, 32.351215>,  <46.038712, 36.134281, 32.833332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474636, 36.201195, 32.351215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.375080, 36.439804, 32.656429>,  <45.315346, 36.582970, 32.839558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.375080, 36.439804, 32.656429>,  <45.474636, 36.201195, 32.351215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375080, 36.439804, 32.656429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083947, 0.771570, -0.630581,
		-0.964888, -0.220997, -0.141957,
		-0.248886, 0.596523, 0.763030,
		45.300415, 36.618763, 32.885338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833454, 36.437393, 32.126869>,  <45.474636, 36.201195, 32.351215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833454, 36.437393, 32.126869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.978416, 36.686352, 32.404366>,  <45.065395, 36.835728, 32.570866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.978416, 36.686352, 32.404366>,  <44.833454, 36.437393, 32.126869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.978416, 36.686352, 32.404366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234015, 0.781266, -0.578672,
		-0.902163, 0.047369, 0.428787,
		0.362408, 0.622398, 0.693744,
		45.087139, 36.873070, 32.612488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273830, 36.967106, 32.181984>,  <44.833454, 36.437393, 32.126869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273830, 36.967106, 32.181984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.606865, 37.136658, 32.324600>,  <44.806686, 37.238388, 32.410172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.606865, 37.136658, 32.324600>,  <44.273830, 36.967106, 32.181984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606865, 37.136658, 32.324600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231085, 0.850830, -0.471897,
		-0.503382, 0.310506, 0.806345,
		0.832590, 0.423879, 0.356540,
		44.856644, 37.263821, 32.431561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046356, 37.597969, 32.475082>,  <44.273830, 36.967106, 32.181984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046356, 37.597969, 32.475082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.436947, 37.637672, 32.398514>,  <44.671303, 37.661495, 32.352573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.436947, 37.637672, 32.398514>,  <44.046356, 37.597969, 32.475082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436947, 37.637672, 32.398514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172062, 0.893748, -0.414258,
		0.129964, 0.437450, 0.889802,
		0.976475, 0.099263, -0.191424,
		44.729889, 37.667450, 32.341087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016476, 38.263817, 32.615906>,  <44.046356, 37.597969, 32.475082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016476, 38.263817, 32.615906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.358337, 38.202614, 32.417454>,  <44.563454, 38.165894, 32.298382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.358337, 38.202614, 32.417454>,  <44.016476, 38.263817, 32.615906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358337, 38.202614, 32.417454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064287, 0.917048, -0.393562,
		0.515197, 0.368256, 0.773925,
		0.854658, -0.153008, -0.496134,
		44.614735, 38.156712, 32.268612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435307, 38.858788, 32.780586>,  <44.016476, 38.263817, 32.615906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435307, 38.858788, 32.780586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.565750, 38.704300, 32.435452>,  <44.644016, 38.611607, 32.228371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.565750, 38.704300, 32.435452>,  <44.435307, 38.858788, 32.780586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.565750, 38.704300, 32.435452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024825, 0.908921, -0.416228,
		0.945006, 0.157156, 0.286820,
		0.326110, -0.386218, -0.862837,
		44.663582, 38.588436, 32.176601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027294, 39.294441, 32.495667>,  <44.435307, 38.858788, 32.780586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.027294, 39.294441, 32.495667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898758, 39.097965, 32.171822>,  <44.821636, 38.980080, 31.977514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.898758, 39.097965, 32.171822>,  <45.027294, 39.294441, 32.495667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898758, 39.097965, 32.171822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009756, 0.853194, -0.521503,
		0.946912, -0.175480, -0.269377,
		-0.321344, -0.491189, -0.809612,
		44.802353, 38.950607, 31.928938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369350, 39.677391, 31.984261>,  <45.027294, 39.294441, 32.495667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369350, 39.677391, 31.984261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.057781, 39.481056, 31.828127>,  <44.870838, 39.363255, 31.734447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.057781, 39.481056, 31.828127>,  <45.369350, 39.677391, 31.984261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.057781, 39.481056, 31.828127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180029, 0.771240, -0.610556,
		0.600721, -0.405305, -0.689102,
		-0.778924, -0.490832, -0.390334,
		44.824104, 39.333805, 31.711027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.363853, 39.782085, 31.256044>,  <45.369350, 39.677391, 31.984261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.363853, 39.782085, 31.256044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.984905, 39.671776, 31.321085>,  <44.757538, 39.605591, 31.360109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.984905, 39.671776, 31.321085>,  <45.363853, 39.782085, 31.256044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.984905, 39.671776, 31.321085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307573, 0.643111, -0.701290,
		0.088827, -0.714392, -0.694084,
		-0.947369, -0.275775, 0.162602,
		44.700695, 39.589043, 31.369865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157486, 39.867950, 30.619497>,  <45.363853, 39.782085, 31.256044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157486, 39.867950, 30.619497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.819820, 39.841831, 30.832333>,  <44.617222, 39.826160, 30.960033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.819820, 39.841831, 30.832333>,  <45.157486, 39.867950, 30.619497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.819820, 39.841831, 30.832333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482653, 0.524538, -0.701360,
		-0.233302, -0.848879, -0.474314,
		-0.844166, -0.065301, 0.532090,
		44.566570, 39.822243, 30.991959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570690, 39.710449, 30.133564>,  <45.157486, 39.867950, 30.619497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570690, 39.710449, 30.133564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.404793, 39.874016, 30.458717>,  <44.305256, 39.972157, 30.653809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.404793, 39.874016, 30.458717>,  <44.570690, 39.710449, 30.133564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404793, 39.874016, 30.458717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565303, 0.584238, -0.582322,
		-0.713037, -0.701037, -0.011145,
		-0.414741, 0.408917, 0.812882,
		44.280369, 39.996693, 30.702581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896564, 39.664230, 30.005434>,  <44.570690, 39.710449, 30.133564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896564, 39.664230, 30.005434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.945442, 39.961464, 30.268614>,  <43.974770, 40.139805, 30.426521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.945442, 39.961464, 30.268614>,  <43.896564, 39.664230, 30.005434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945442, 39.961464, 30.268614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546600, 0.603710, -0.580313,
		-0.828431, -0.288724, 0.479939,
		0.122193, 0.743084, 0.657948,
		43.982101, 40.184387, 30.465998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.302235, 40.008766, 29.812439>,  <43.896564, 39.664230, 30.005434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.302235, 40.008766, 29.812439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.510815, 40.247856, 30.056015>,  <43.635963, 40.391312, 30.202162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.510815, 40.247856, 30.056015>,  <43.302235, 40.008766, 29.812439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510815, 40.247856, 30.056015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471064, 0.796700, -0.378641,
		-0.711467, -0.089407, 0.697008,
		0.521453, 0.597726, 0.608942,
		43.667252, 40.427174, 30.238697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812790, 40.301685, 30.069653>,  <43.302235, 40.008766, 29.812439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812790, 40.301685, 30.069653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.138645, 40.532021, 30.097296>,  <43.334156, 40.670223, 30.113882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.138645, 40.532021, 30.097296>,  <42.812790, 40.301685, 30.069653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138645, 40.532021, 30.097296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475870, 0.731762, -0.487927,
		-0.331540, 0.364596, 0.870144,
		0.814634, 0.575843, 0.069108,
		43.383034, 40.704773, 30.118029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.737354, 36.327267, 42.958641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438515, 36.102497, 42.816605>,  <38.259212, 35.967636, 42.731384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438515, 36.102497, 42.816605>,  <38.737354, 36.327267, 42.958641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438515, 36.102497, 42.816605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185760, 0.336414, -0.923211,
		0.638233, -0.755688, -0.146951,
		-0.747096, -0.561926, -0.355087,
		38.214386, 35.933918, 42.710079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008949, 35.965370, 42.399017>,  <38.737354, 36.327267, 42.958641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008949, 35.965370, 42.399017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615837, 35.933247, 42.332447>,  <38.379971, 35.913971, 42.292503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615837, 35.933247, 42.332447>,  <39.008949, 35.965370, 42.399017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615837, 35.933247, 42.332447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137251, 0.285787, -0.948413,
		0.123728, -0.954922, -0.269843,
		-0.982779, -0.080309, -0.166424,
		38.321003, 35.909153, 42.282520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951313, 35.443844, 41.888351>,  <39.008949, 35.965370, 42.399017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951313, 35.443844, 41.888351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637115, 35.691280, 41.895851>,  <38.448597, 35.839741, 41.900352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637115, 35.691280, 41.895851>,  <38.951313, 35.443844, 41.888351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637115, 35.691280, 41.895851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173546, 0.249247, -0.952763,
		-0.594043, -0.745132, -0.303135,
		-0.785490, 0.618590, 0.018749,
		38.401470, 35.876858, 41.901474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516651, 35.242355, 41.321529>,  <38.951313, 35.443844, 41.888351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516651, 35.242355, 41.321529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415939, 35.621655, 41.398918>,  <38.355515, 35.849236, 41.445351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415939, 35.621655, 41.398918>,  <38.516651, 35.242355, 41.321529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415939, 35.621655, 41.398918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067243, 0.182292, -0.980942,
		-0.965446, -0.259989, 0.017867,
		-0.251777, 0.948249, 0.193476,
		38.340405, 35.906128, 41.456963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276669, 35.387314, 40.716728>,  <38.516651, 35.242355, 41.321529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276669, 35.387314, 40.716728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285419, 35.749565, 40.886127>,  <38.290668, 35.966915, 40.987766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285419, 35.749565, 40.886127>,  <38.276669, 35.387314, 40.716728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285419, 35.749565, 40.886127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192381, 0.411873, -0.890702,
		-0.981076, 0.100957, -0.165217,
		0.021874, 0.905631, 0.423501,
		38.291981, 36.021255, 41.013176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719486, 35.815304, 40.395454>,  <38.276669, 35.387314, 40.716728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719486, 35.815304, 40.395454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002941, 36.051670, 40.549671>,  <38.173016, 36.193489, 40.642200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002941, 36.051670, 40.549671>,  <37.719486, 35.815304, 40.395454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002941, 36.051670, 40.549671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204927, 0.350503, -0.913867,
		-0.675153, 0.726613, 0.127286,
		0.708642, 0.590916, 0.385546,
		38.215534, 36.228943, 40.665337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.626949, 36.440434, 40.015648>,  <37.719486, 35.815304, 40.395454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.626949, 36.440434, 40.015648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971073, 36.505367, 40.208939>,  <38.177547, 36.544327, 40.324913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971073, 36.505367, 40.208939>,  <37.626949, 36.440434, 40.015648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971073, 36.505367, 40.208939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362229, 0.472313, -0.803561,
		-0.358680, 0.866353, 0.347535,
		0.860313, 0.162334, 0.483227,
		38.229168, 36.554066, 40.353909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867718, 37.177670, 39.941055>,  <37.626949, 36.440434, 40.015648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867718, 37.177670, 39.941055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199314, 36.964783, 40.009789>,  <38.398270, 36.837051, 40.051029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199314, 36.964783, 40.009789>,  <37.867718, 37.177670, 39.941055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199314, 36.964783, 40.009789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466760, 0.489143, -0.736800,
		0.308082, 0.691005, 0.653909,
		0.828988, -0.532214, 0.171837,
		38.448009, 36.805119, 40.061340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285103, 37.694832, 39.889042>,  <37.867718, 37.177670, 39.941055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285103, 37.694832, 39.889042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491898, 37.352680, 39.876091>,  <38.615974, 37.147388, 39.868320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491898, 37.352680, 39.876091>,  <38.285103, 37.694832, 39.889042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491898, 37.352680, 39.876091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620330, 0.400446, -0.674413,
		0.589845, 0.328578, 0.737644,
		0.516984, -0.855382, -0.032374,
		38.646992, 37.096066, 39.866379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947357, 37.849438, 40.053444>,  <38.285103, 37.694832, 39.889042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947357, 37.849438, 40.053444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951763, 37.522049, 39.823666>,  <38.954407, 37.325615, 39.685799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951763, 37.522049, 39.823666>,  <38.947357, 37.849438, 40.053444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951763, 37.522049, 39.823666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622601, 0.455146, -0.636560,
		0.782462, -0.350639, 0.514593,
		0.011013, -0.818471, -0.574443,
		38.955067, 37.276508, 39.651333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692543, 37.701683, 39.665516>,  <38.947357, 37.849438, 40.053444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692543, 37.701683, 39.665516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433025, 37.491718, 39.445141>,  <39.277313, 37.365742, 39.312916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433025, 37.491718, 39.445141>,  <39.692543, 37.701683, 39.665516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433025, 37.491718, 39.445141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305858, 0.483069, -0.820424,
		0.696791, -0.700796, -0.152864,
		-0.648793, -0.524909, -0.550942,
		39.238388, 37.334244, 39.279858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138824, 37.328022, 39.096718>,  <39.692543, 37.701683, 39.665516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138824, 37.328022, 39.096718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754108, 37.382847, 39.001915>,  <39.523277, 37.415741, 38.945034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754108, 37.382847, 39.001915>,  <40.138824, 37.328022, 39.096718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754108, 37.382847, 39.001915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273748, 0.496536, -0.823720,
		0.004779, -0.857126, -0.515085,
		-0.961790, 0.137067, -0.237009,
		39.465572, 37.423965, 38.930813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010662, 37.057938, 38.389111>,  <40.138824, 37.328022, 39.096718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010662, 37.057938, 38.389111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775829, 37.368244, 38.481647>,  <39.634930, 37.554428, 38.537170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775829, 37.368244, 38.481647>,  <40.010662, 37.057938, 38.389111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775829, 37.368244, 38.481647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418705, 0.535564, -0.733388,
		-0.692839, -0.333693, -0.639237,
		-0.587078, 0.775771, 0.231341,
		39.599705, 37.600975, 38.551048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578186, 37.266857, 37.871368>,  <40.010662, 37.057938, 38.389111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578186, 37.266857, 37.871368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675102, 37.585091, 38.093483>,  <39.733253, 37.776031, 38.226749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675102, 37.585091, 38.093483>,  <39.578186, 37.266857, 37.871368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675102, 37.585091, 38.093483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245443, 0.503456, -0.828426,
		-0.938644, 0.337011, -0.073288,
		0.242291, 0.795585, 0.555283,
		39.747791, 37.823765, 38.260067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743591, 37.046062, 37.196732>,  <39.578186, 37.266857, 37.871368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743591, 37.046062, 37.196732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038738, 36.808949, 37.067642>,  <40.215828, 36.666679, 36.990189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038738, 36.808949, 37.067642>,  <39.743591, 37.046062, 37.196732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038738, 36.808949, 37.067642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113556, -0.580369, 0.806397,
		-0.665326, -0.558365, -0.495549,
		0.737866, -0.592790, -0.322729,
		40.260098, 36.631111, 36.970825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414261, 36.567646, 36.972942>,  <39.743591, 37.046062, 37.196732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414261, 36.567646, 36.972942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772072, 36.422363, 37.077171>,  <39.986759, 36.335194, 37.139709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772072, 36.422363, 37.077171>,  <39.414261, 36.567646, 36.972942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772072, 36.422363, 37.077171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446976, -0.719370, 0.531714,
		-0.005672, -0.592104, -0.805842,
		0.894528, -0.363208, 0.260576,
		40.040432, 36.313400, 37.155346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446079, 35.826244, 36.765263>,  <39.414261, 36.567646, 36.972942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446079, 35.826244, 36.765263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720238, 35.879387, 37.051643>,  <39.884731, 35.911270, 37.223473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720238, 35.879387, 37.051643>,  <39.446079, 35.826244, 36.765263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720238, 35.879387, 37.051643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440712, -0.707007, 0.553095,
		0.579663, -0.694616, -0.426028,
		0.685393, 0.132853, 0.715951,
		39.925858, 35.919243, 37.266430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.557480, 35.147289, 37.031757>,  <39.446079, 35.826244, 36.765263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.557480, 35.147289, 37.031757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732475, 35.364063, 37.318787>,  <39.837471, 35.494129, 37.491005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732475, 35.364063, 37.318787>,  <39.557480, 35.147289, 37.031757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732475, 35.364063, 37.318787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457071, -0.553198, 0.696461,
		0.774396, -0.632676, 0.005684,
		0.437489, 0.541934, 0.717572,
		39.863724, 35.526642, 37.534058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845760, 34.679539, 37.425613>,  <39.557480, 35.147289, 37.031757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845760, 34.679539, 37.425613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786732, 35.000317, 37.657169>,  <39.751316, 35.192783, 37.796104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786732, 35.000317, 37.657169>,  <39.845760, 34.679539, 37.425613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786732, 35.000317, 37.657169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484054, -0.568969, 0.664806,
		0.862506, -0.182110, 0.472144,
		-0.147567, 0.801942, 0.578889,
		39.742462, 35.240898, 37.830837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905792, 34.433609, 38.185608>,  <39.845760, 34.679539, 37.425613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905792, 34.433609, 38.185608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728252, 34.791668, 38.202118>,  <39.621727, 35.006504, 38.212025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728252, 34.791668, 38.202118>,  <39.905792, 34.433609, 38.185608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728252, 34.791668, 38.202118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569835, -0.317500, 0.757946,
		0.691581, 0.312893, 0.651010,
		-0.443851, 0.895149, 0.041280,
		39.595097, 35.060211, 38.214500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025639, 34.619591, 39.021252>,  <39.905792, 34.433609, 38.185608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025639, 34.619591, 39.021252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713116, 34.806988, 38.856293>,  <39.525600, 34.919426, 38.757317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713116, 34.806988, 38.856293>,  <40.025639, 34.619591, 39.021252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713116, 34.806988, 38.856293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569703, -0.265429, 0.777808,
		0.254935, 0.842652, 0.474284,
		-0.781311, 0.468492, -0.412395,
		39.478722, 34.947536, 38.732574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794003, 35.060612, 39.526073>,  <40.025639, 34.619591, 39.021252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794003, 35.060612, 39.526073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491947, 35.009068, 39.268963>,  <39.310715, 34.978142, 39.114697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491947, 35.009068, 39.268963>,  <39.794003, 35.060612, 39.526073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491947, 35.009068, 39.268963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594676, -0.278023, 0.754363,
		-0.275916, 0.951891, 0.133315,
		-0.755136, -0.128862, -0.642778,
		39.265408, 34.970409, 39.076130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209217, 35.298241, 39.805588>,  <39.794003, 35.060612, 39.526073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209217, 35.298241, 39.805588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030357, 35.112698, 39.499676>,  <38.923042, 35.001373, 39.316128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030357, 35.112698, 39.499676>,  <39.209217, 35.298241, 39.805588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030357, 35.112698, 39.499676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787623, -0.201042, 0.582436,
		-0.423922, 0.862796, -0.275451,
		-0.447146, -0.463859, -0.764784,
		38.896214, 34.973541, 39.270241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544052, 35.555729, 39.730579>,  <39.209217, 35.298241, 39.805588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544052, 35.555729, 39.730579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521339, 35.187824, 39.575237>,  <38.507713, 34.967083, 39.482033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521339, 35.187824, 39.575237>,  <38.544052, 35.555729, 39.730579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521339, 35.187824, 39.575237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688181, -0.245756, 0.682649,
		-0.723314, 0.306021, -0.619006,
		-0.056780, -0.919758, -0.388357,
		38.504307, 34.911896, 39.458729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882462, 35.439777, 39.411018>,  <38.544052, 35.555729, 39.730579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882462, 35.439777, 39.411018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988499, 35.060402, 39.480515>,  <38.052120, 34.832775, 39.522213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988499, 35.060402, 39.480515>,  <37.882462, 35.439777, 39.411018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988499, 35.060402, 39.480515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796829, -0.114025, 0.593349,
		-0.542944, -0.295738, -0.785971,
		0.265096, -0.948440, 0.173743,
		38.068027, 34.775871, 39.532639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268639, 35.027168, 39.380882>,  <37.882462, 35.439777, 39.411018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268639, 35.027168, 39.380882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513447, 34.804100, 39.605179>,  <37.660332, 34.670261, 39.739758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513447, 34.804100, 39.605179>,  <37.268639, 35.027168, 39.380882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513447, 34.804100, 39.605179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755271, -0.201909, 0.623537,
		-0.234512, -0.805129, -0.544768,
		0.612021, -0.557675, 0.560741,
		37.697052, 34.636799, 39.773403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789581, 34.465492, 39.663956>,  <37.268639, 35.027168, 39.380882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789581, 34.465492, 39.663956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131130, 34.443222, 39.870956>,  <37.336060, 34.429859, 39.995159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131130, 34.443222, 39.870956>,  <36.789581, 34.465492, 39.663956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131130, 34.443222, 39.870956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508604, -0.300515, 0.806854,
		0.110599, -0.952151, -0.284914,
		0.853868, -0.055671, 0.517505,
		37.387291, 34.426521, 40.026207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914368, 33.690292, 39.770397>,  <36.789581, 34.465492, 39.663956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914368, 33.690292, 39.770397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089355, 33.924755, 40.043175>,  <37.194347, 34.065434, 40.206841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089355, 33.924755, 40.043175>,  <36.914368, 33.690292, 39.770397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089355, 33.924755, 40.043175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559393, -0.416375, 0.716737,
		0.704062, -0.695023, 0.145739,
		0.437466, 0.586153, 0.681944,
		37.220596, 34.100601, 40.247757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067997, 33.074585, 39.375748>,  <36.914368, 33.690292, 39.770397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067997, 33.074585, 39.375748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739887, 32.889198, 39.241673>,  <36.543022, 32.777966, 39.161228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739887, 32.889198, 39.241673>,  <37.067997, 33.074585, 39.375748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739887, 32.889198, 39.241673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050106, 0.525541, -0.849291,
		0.569772, -0.713446, -0.407866,
		-0.820274, -0.463466, -0.335187,
		36.493805, 32.750160, 39.141117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256416, 32.821941, 38.633671>,  <37.067997, 33.074585, 39.375748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256416, 32.821941, 38.633671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859108, 32.841141, 38.675831>,  <36.620724, 32.852661, 38.701126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859108, 32.841141, 38.675831>,  <37.256416, 32.821941, 38.633671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859108, 32.841141, 38.675831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084105, 0.326744, -0.941363,
		-0.079629, -0.943893, -0.320508,
		-0.993270, 0.048003, 0.105404,
		36.561127, 32.855541, 38.707451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076080, 32.657063, 38.015175>,  <37.256416, 32.821941, 38.633671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076080, 32.657063, 38.015175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735710, 32.808441, 38.160892>,  <36.531490, 32.899269, 38.248325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735710, 32.808441, 38.160892>,  <37.076080, 32.657063, 38.015175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735710, 32.808441, 38.160892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175073, 0.449542, -0.875934,
		-0.495258, -0.809131, -0.316270,
		-0.850923, 0.378443, 0.364297,
		36.480434, 32.921974, 38.270180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773834, 32.734524, 37.505699>,  <37.076080, 32.657063, 38.015175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773834, 32.734524, 37.505699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542599, 32.952145, 37.748951>,  <36.403858, 33.082718, 37.894901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542599, 32.952145, 37.748951>,  <36.773834, 32.734524, 37.505699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542599, 32.952145, 37.748951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400866, 0.459786, -0.792404,
		-0.710714, -0.701861, -0.047709,
		-0.578093, 0.544048, 0.608128,
		36.369171, 33.115360, 37.931389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078693, 32.721481, 37.184578>,  <36.773834, 32.734524, 37.505699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078693, 32.721481, 37.184578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067543, 33.043453, 37.421661>,  <36.060852, 33.236637, 37.563911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067543, 33.043453, 37.421661>,  <36.078693, 32.721481, 37.184578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067543, 33.043453, 37.421661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527774, 0.491706, -0.692589,
		-0.848927, -0.332123, 0.411117,
		-0.027876, 0.804934, 0.592709,
		36.059181, 33.284935, 37.599476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347622, 32.987705, 37.389397>,  <36.078693, 32.721481, 37.184578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347622, 32.987705, 37.389397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580341, 33.308338, 37.444492>,  <35.719975, 33.500717, 37.477551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580341, 33.308338, 37.444492>,  <35.347622, 32.987705, 37.389397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580341, 33.308338, 37.444492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573671, 0.524491, -0.629136,
		-0.576549, 0.287013, 0.764994,
		0.581802, 0.801582, 0.137744,
		35.754883, 33.548813, 37.485817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912441, 33.534058, 37.234219>,  <35.347622, 32.987705, 37.389397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912441, 33.534058, 37.234219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273384, 33.706413, 37.230595>,  <35.489952, 33.809826, 37.228420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273384, 33.706413, 37.230595>,  <34.912441, 33.534058, 37.234219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273384, 33.706413, 37.230595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329172, 0.675476, -0.659832,
		-0.278194, 0.598388, 0.751359,
		0.902360, 0.430887, -0.009059,
		35.544094, 33.835678, 37.227879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810116, 34.191967, 37.393410>,  <34.912441, 33.534058, 37.234219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810116, 34.191967, 37.393410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152016, 34.196331, 37.185837>,  <35.357155, 34.198952, 37.061295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152016, 34.196331, 37.185837>,  <34.810116, 34.191967, 37.393410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152016, 34.196331, 37.185837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378239, 0.697756, -0.608335,
		0.355448, 0.716252, 0.600533,
		0.854747, 0.010913, -0.518930,
		35.408440, 34.199604, 37.030159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714512, 34.742817, 36.987064>,  <34.810116, 34.191967, 37.393410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714512, 34.742817, 36.987064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066299, 34.616753, 36.844406>,  <35.277374, 34.541115, 36.758812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066299, 34.616753, 36.844406>,  <34.714512, 34.742817, 36.987064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066299, 34.616753, 36.844406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071689, 0.653076, -0.753891,
		0.470518, 0.688595, 0.551769,
		0.879473, -0.315164, -0.356649,
		35.330143, 34.522205, 36.737411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886818, 35.368866, 36.650711>,  <34.714512, 34.742817, 36.987064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886818, 35.368866, 36.650711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061901, 35.044727, 36.494888>,  <35.166950, 34.850243, 36.401394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061901, 35.044727, 36.494888>,  <34.886818, 35.368866, 36.650711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061901, 35.044727, 36.494888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091650, 0.471220, -0.877241,
		0.894436, 0.348270, 0.280523,
		0.437705, -0.810345, -0.389557,
		35.193211, 34.801624, 36.378021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241558, 35.676666, 36.171780>,  <34.886818, 35.368866, 36.650711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241558, 35.676666, 36.171780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196049, 35.292179, 36.071293>,  <35.168743, 35.061485, 36.011002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196049, 35.292179, 36.071293>,  <35.241558, 35.676666, 36.171780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196049, 35.292179, 36.071293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064443, 0.259463, -0.963601,
		0.991414, -0.093444, -0.091464,
		-0.113774, -0.961222, -0.251213,
		35.161915, 35.003811, 35.995930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787586, 35.540874, 35.613518>,  <35.241558, 35.676666, 36.171780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787586, 35.540874, 35.613518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462761, 35.307461, 35.616379>,  <35.267868, 35.167412, 35.618095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462761, 35.307461, 35.616379>,  <35.787586, 35.540874, 35.613518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462761, 35.307461, 35.616379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290068, 0.392973, -0.872601,
		0.506382, -0.710677, -0.488381,
		-0.812058, -0.583533, 0.007150,
		35.219143, 35.132401, 35.618523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.552017, 29.968960, 41.861237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.188889, 30.083942, 41.739109>,  <35.971012, 30.152933, 41.665833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.188889, 30.083942, 41.739109>,  <36.552017, 29.968960, 41.861237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188889, 30.083942, 41.739109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401626, 0.386589, -0.830208,
		-0.120616, -0.876309, -0.466407,
		-0.907826, 0.287458, -0.305319,
		35.916542, 30.170179, 41.647514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523933, 29.787228, 41.056004>,  <36.552017, 29.968960, 41.861237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523933, 29.787228, 41.056004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.220242, 30.040255, 41.117233>,  <36.038025, 30.192070, 41.153973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.220242, 30.040255, 41.117233>,  <36.523933, 29.787228, 41.056004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220242, 30.040255, 41.117233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218530, 0.469322, -0.855559,
		-0.613038, -0.616114, -0.494557,
		-0.759229, 0.632566, 0.153073,
		35.992474, 30.230024, 41.163155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075581, 29.819321, 40.440693>,  <36.523933, 29.787228, 41.056004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075581, 29.819321, 40.440693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.054981, 30.157272, 40.653683>,  <36.042622, 30.360043, 40.781479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.054981, 30.157272, 40.653683>,  <36.075581, 29.819321, 40.440693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054981, 30.157272, 40.653683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231901, 0.528726, -0.816500,
		-0.971376, 0.081437, -0.223154,
		-0.051494, 0.844877, 0.532476,
		36.039532, 30.410736, 40.813427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817574, 30.263746, 39.928738>,  <36.075581, 29.819321, 40.440693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817574, 30.263746, 39.928738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.951454, 30.511456, 40.212845>,  <36.031780, 30.660082, 40.383308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.951454, 30.511456, 40.212845>,  <35.817574, 30.263746, 39.928738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951454, 30.511456, 40.212845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161758, 0.704792, -0.690726,
		-0.928337, 0.346077, 0.135721,
		0.334699, 0.619273, 0.710266,
		36.051865, 30.697237, 40.425926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415405, 30.881695, 39.870724>,  <35.817574, 30.263746, 39.928738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415405, 30.881695, 39.870724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.748669, 30.991245, 40.062904>,  <35.948627, 31.056976, 40.178211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.748669, 30.991245, 40.062904>,  <35.415405, 30.881695, 39.870724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748669, 30.991245, 40.062904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150393, 0.723816, -0.673403,
		-0.532189, 0.633310, 0.561866,
		0.833161, 0.273877, 0.480453,
		35.998615, 31.073408, 40.207039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323059, 31.584154, 40.043133>,  <35.415405, 30.881695, 39.870724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323059, 31.584154, 40.043133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.718887, 31.529167, 40.060318>,  <35.956387, 31.496174, 40.070629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.718887, 31.529167, 40.060318>,  <35.323059, 31.584154, 40.043133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718887, 31.529167, 40.060318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140305, 0.852769, -0.503090,
		0.032524, 0.503872, 0.863166,
		0.989574, -0.137469, 0.042961,
		36.015759, 31.487926, 40.073208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546001, 32.200703, 40.285244>,  <35.323059, 31.584154, 40.043133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546001, 32.200703, 40.285244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.864708, 32.028187, 40.115936>,  <36.055931, 31.924679, 40.014351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.864708, 32.028187, 40.115936>,  <35.546001, 32.200703, 40.285244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864708, 32.028187, 40.115936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185134, 0.840979, -0.508408,
		0.575231, 0.326720, 0.749909,
		0.796765, -0.431286, -0.423271,
		36.103737, 31.898802, 39.988956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231339, 32.651283, 40.432087>,  <35.546001, 32.200703, 40.285244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231339, 32.651283, 40.432087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257908, 32.425488, 40.102982>,  <36.273849, 32.290009, 39.905518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257908, 32.425488, 40.102982>,  <36.231339, 32.651283, 40.432087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257908, 32.425488, 40.102982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082284, 0.824873, -0.559297,
		0.994393, -0.030550, 0.101239,
		0.066423, -0.564491, -0.822762,
		36.277836, 32.256142, 39.856152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513847, 33.097240, 40.060314>,  <36.231339, 32.651283, 40.432087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513847, 33.097240, 40.060314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.448673, 32.812939, 39.786591>,  <36.409569, 32.642357, 39.622356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.448673, 32.812939, 39.786591>,  <36.513847, 33.097240, 40.060314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448673, 32.812939, 39.786591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066793, 0.684043, -0.726377,
		0.984373, -0.164059, -0.063981,
		-0.162934, -0.710753, -0.684312,
		36.399792, 32.599712, 39.581299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197960, 33.251507, 40.354858>,  <36.513847, 33.097240, 40.060314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197960, 33.251507, 40.354858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.161091, 33.615047, 40.517582>,  <37.138969, 33.833172, 40.615215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.161091, 33.615047, 40.517582>,  <37.197960, 33.251507, 40.354858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161091, 33.615047, 40.517582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404585, -0.407489, 0.818696,
		0.909843, -0.089125, 0.405268,
		-0.092175, 0.908851, 0.406810,
		37.133438, 33.887703, 40.639626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453629, 33.080162, 40.928692>,  <37.197960, 33.251507, 40.354858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453629, 33.080162, 40.928692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.243530, 33.417439, 40.974564>,  <37.117474, 33.619804, 41.002087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.243530, 33.417439, 40.974564>,  <37.453629, 33.080162, 40.928692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243530, 33.417439, 40.974564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316242, -0.318530, 0.893605,
		0.790007, 0.433094, 0.433958,
		-0.525243, 0.843190, 0.114678,
		37.085957, 33.670395, 41.008968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648247, 33.368824, 41.565735>,  <37.453629, 33.080162, 40.928692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648247, 33.368824, 41.565735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307652, 33.563744, 41.488258>,  <37.103294, 33.680695, 41.441772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307652, 33.563744, 41.488258>,  <37.648247, 33.368824, 41.565735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307652, 33.563744, 41.488258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300248, -0.150233, 0.941956,
		0.429914, 0.860216, 0.274231,
		-0.851484, 0.487297, -0.193691,
		37.052208, 33.709934, 41.430153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543648, 33.884785, 42.085915>,  <37.648247, 33.368824, 41.565735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543648, 33.884785, 42.085915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.189842, 33.788494, 41.926075>,  <36.977558, 33.730721, 41.830170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.189842, 33.788494, 41.926075>,  <37.543648, 33.884785, 42.085915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189842, 33.788494, 41.926075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335573, -0.266721, 0.903466,
		-0.324072, 0.933225, 0.155137,
		-0.884516, -0.240728, -0.399602,
		36.924488, 33.716274, 41.806194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068493, 34.193680, 42.581245>,  <37.543648, 33.884785, 42.085915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068493, 34.193680, 42.581245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.857246, 33.942490, 42.352604>,  <36.730499, 33.791775, 42.215420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.857246, 33.942490, 42.352604>,  <37.068493, 34.193680, 42.581245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857246, 33.942490, 42.352604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571243, -0.235331, 0.786321,
		-0.628310, 0.741796, -0.234447,
		-0.528117, -0.627980, -0.571606,
		36.698811, 33.754097, 42.181122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410973, 34.196861, 42.833374>,  <37.068493, 34.193680, 42.581245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410973, 34.196861, 42.833374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.411098, 33.866215, 42.608265>,  <36.411175, 33.667828, 42.473202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.411098, 33.866215, 42.608265>,  <36.410973, 34.196861, 42.833374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411098, 33.866215, 42.608265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485970, -0.491974, 0.722353,
		-0.873975, 0.273264, -0.401864,
		0.000313, -0.826613, -0.562771,
		36.411194, 33.618233, 42.439434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762661, 33.877594, 43.052132>,  <36.410973, 34.196861, 42.833374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762661, 33.877594, 43.052132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.997952, 33.590481, 42.903114>,  <36.139126, 33.418213, 42.813705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.997952, 33.590481, 42.903114>,  <35.762661, 33.877594, 43.052132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997952, 33.590481, 42.903114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223837, -0.587177, 0.777895,
		-0.777104, -0.374188, -0.506056,
		0.588223, -0.717779, -0.372540,
		36.174419, 33.375149, 42.791351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391151, 33.303276, 43.174927>,  <35.762661, 33.877594, 43.052132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391151, 33.303276, 43.174927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.744133, 33.129593, 43.102543>,  <35.955921, 33.025383, 43.059113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.744133, 33.129593, 43.102543>,  <35.391151, 33.303276, 43.174927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744133, 33.129593, 43.102543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120065, -0.579853, 0.805826,
		-0.454826, -0.689373, -0.563824,
		0.882450, -0.434206, -0.180962,
		36.008869, 32.999332, 43.048252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363373, 32.498669, 43.054249>,  <35.391151, 33.303276, 43.174927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363373, 32.498669, 43.054249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.736851, 32.578228, 43.173347>,  <35.960938, 32.625961, 43.244804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.736851, 32.578228, 43.173347>,  <35.363373, 32.498669, 43.054249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736851, 32.578228, 43.173347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111288, -0.629153, 0.769273,
		0.340331, -0.751403, -0.565303,
		0.933697, 0.198896, 0.297743,
		36.016960, 32.637897, 43.262669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736073, 31.861715, 43.057484>,  <35.363373, 32.498669, 43.054249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736073, 31.861715, 43.057484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954311, 32.089951, 43.303005>,  <36.085255, 32.226891, 43.450317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.954311, 32.089951, 43.303005>,  <35.736073, 31.861715, 43.057484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954311, 32.089951, 43.303005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154921, -0.788465, 0.595250,
		0.823604, -0.229676, -0.518581,
		0.545598, 0.570589, 0.613801,
		36.117992, 32.261127, 43.487144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057705, 31.423903, 43.472569>,  <35.736073, 31.861715, 43.057484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057705, 31.423903, 43.472569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.170349, 31.749762, 43.675365>,  <36.237934, 31.945278, 43.797043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.170349, 31.749762, 43.675365>,  <36.057705, 31.423903, 43.472569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170349, 31.749762, 43.675365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204865, -0.567242, 0.797663,
		0.937404, -0.120764, -0.326634,
		0.281610, 0.814649, 0.506994,
		36.254833, 31.994156, 43.827465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741039, 31.334753, 43.710274>,  <36.057705, 31.423903, 43.472569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741039, 31.334753, 43.710274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.555889, 31.582642, 43.963791>,  <36.444798, 31.731375, 44.115902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.555889, 31.582642, 43.963791>,  <36.741039, 31.334753, 43.710274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555889, 31.582642, 43.963791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296652, -0.565470, 0.769572,
		0.835310, 0.544232, 0.077902,
		-0.462877, 0.619721, 0.633790,
		36.417027, 31.768559, 44.153927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193207, 31.515163, 44.244713>,  <36.741039, 31.334753, 43.710274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193207, 31.515163, 44.244713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.828609, 31.567255, 44.400772>,  <36.609852, 31.598511, 44.494408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.828609, 31.567255, 44.400772>,  <37.193207, 31.515163, 44.244713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828609, 31.567255, 44.400772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191543, -0.705022, 0.682829,
		0.363987, 0.697126, 0.617680,
		-0.911496, 0.130229, 0.390148,
		36.555161, 31.606323, 44.517815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354416, 31.731537, 44.927601>,  <37.193207, 31.515163, 44.244713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354416, 31.731537, 44.927601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.971920, 31.615646, 44.911285>,  <36.742424, 31.546112, 44.901497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.971920, 31.615646, 44.911285>,  <37.354416, 31.731537, 44.927601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971920, 31.615646, 44.911285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113244, -0.495037, 0.861460,
		-0.269779, 0.819144, 0.506184,
		-0.956240, -0.289726, -0.040787,
		36.685047, 31.528728, 44.899048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.625854, 34.210632, 46.116329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.929502, 33.958012, 46.053242>,  <31.111691, 33.806438, 46.015388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.929502, 33.958012, 46.053242>,  <30.625854, 34.210632, 46.116329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929502, 33.958012, 46.053242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340770, 0.591994, -0.730355,
		0.554630, 0.500680, 0.664609,
		0.759119, -0.631556, -0.157721,
		31.157238, 33.768543, 46.005924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260235, 34.468674, 46.067207>,  <30.625854, 34.210632, 46.116329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260235, 34.468674, 46.067207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.345360, 34.148396, 45.843208>,  <31.396435, 33.956230, 45.708809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.345360, 34.148396, 45.843208>,  <31.260235, 34.468674, 46.067207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345360, 34.148396, 45.843208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309637, 0.598856, -0.738577,
		0.926734, -0.016218, 0.375368,
		0.212813, -0.800692, -0.560002,
		31.409204, 33.908188, 45.675209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903994, 34.589500, 45.849842>,  <31.260235, 34.468674, 46.067207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903994, 34.589500, 45.849842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.735044, 34.340038, 45.586735>,  <31.633675, 34.190361, 45.428871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.735044, 34.340038, 45.586735>,  <31.903994, 34.589500, 45.849842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735044, 34.340038, 45.586735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295506, 0.591282, -0.750374,
		0.856899, -0.511312, -0.065449,
		-0.422374, -0.623654, -0.657765,
		31.608332, 34.152943, 45.389404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365147, 34.721043, 45.300568>,  <31.903994, 34.589500, 45.849842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365147, 34.721043, 45.300568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.055405, 34.523140, 45.142784>,  <31.869560, 34.404400, 45.048115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.055405, 34.523140, 45.142784>,  <32.365147, 34.721043, 45.300568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055405, 34.523140, 45.142784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038784, 0.585111, -0.810025,
		0.631567, -0.642542, -0.433893,
		-0.774351, -0.494757, -0.394457,
		31.823099, 34.374714, 45.024448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551193, 34.610790, 44.616215>,  <32.365147, 34.721043, 45.300568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551193, 34.610790, 44.616215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.158291, 34.535789, 44.614330>,  <31.922550, 34.490788, 44.613197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.158291, 34.535789, 44.614330>,  <32.551193, 34.610790, 44.616215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158291, 34.535789, 44.614330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054069, 0.307129, -0.950131,
		0.179604, -0.933013, -0.311817,
		-0.982252, -0.187507, -0.004715,
		31.863615, 34.479538, 44.612915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352276, 34.271034, 43.992889>,  <32.551193, 34.610790, 44.616215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352276, 34.271034, 43.992889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.008194, 34.424549, 44.127201>,  <31.801744, 34.516659, 44.207790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.008194, 34.424549, 44.127201>,  <32.352276, 34.271034, 43.992889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008194, 34.424549, 44.127201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173075, 0.399656, -0.900178,
		-0.479674, -0.832455, -0.277363,
		-0.860208, 0.383787, 0.335782,
		31.750132, 34.539684, 44.227936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778589, 34.060574, 43.637974>,  <32.352276, 34.271034, 43.992889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778589, 34.060574, 43.637974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.680069, 34.417336, 43.789677>,  <31.620956, 34.631393, 43.880699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.680069, 34.417336, 43.789677>,  <31.778589, 34.060574, 43.637974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680069, 34.417336, 43.789677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154752, 0.350098, -0.923841,
		-0.956759, -0.286233, 0.051796,
		-0.246300, 0.891909, 0.379255,
		31.606178, 34.684910, 43.903454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435188, 34.237755, 43.095123>,  <31.778589, 34.060574, 43.637974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435188, 34.237755, 43.095123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.452307, 34.563320, 43.326885>,  <31.462578, 34.758659, 43.465942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.452307, 34.563320, 43.326885>,  <31.435188, 34.237755, 43.095123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452307, 34.563320, 43.326885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074394, 0.580924, -0.810551,
		-0.996310, -0.008414, 0.085413,
		0.042798, 0.813914, 0.579407,
		31.465147, 34.807495, 43.500706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004644, 34.720154, 42.717804>,  <31.435188, 34.237755, 43.095123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004644, 34.720154, 42.717804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.229729, 34.943188, 42.961922>,  <31.364780, 35.077007, 43.108391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.229729, 34.943188, 42.961922>,  <31.004644, 34.720154, 42.717804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229729, 34.943188, 42.961922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171806, 0.643265, -0.746118,
		-0.808602, 0.524702, 0.266177,
		0.562712, 0.557582, 0.610293,
		31.398542, 35.110462, 43.145008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748621, 35.354988, 42.667961>,  <31.004644, 34.720154, 42.717804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748621, 35.354988, 42.667961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.121986, 35.408657, 42.801071>,  <31.346006, 35.440861, 42.880936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.121986, 35.408657, 42.801071>,  <30.748621, 35.354988, 42.667961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121986, 35.408657, 42.801071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164802, 0.663507, -0.729794,
		-0.318718, 0.736040, 0.597214,
		0.933413, 0.134177, 0.332772,
		31.402010, 35.448910, 42.900902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853506, 36.035587, 42.555241>,  <30.748621, 35.354988, 42.667961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853506, 36.035587, 42.555241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.229189, 35.906048, 42.600876>,  <31.454597, 35.828323, 42.628258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.229189, 35.906048, 42.600876>,  <30.853506, 36.035587, 42.555241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229189, 35.906048, 42.600876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289392, 0.567788, -0.770629,
		0.184787, 0.756796, 0.626988,
		0.939205, -0.323847, 0.114091,
		31.510950, 35.808895, 42.635101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373260, 36.684914, 42.504814>,  <30.853506, 36.035587, 42.555241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373260, 36.684914, 42.504814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.593084, 36.357201, 42.439388>,  <31.724979, 36.160572, 42.400131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.593084, 36.357201, 42.439388>,  <31.373260, 36.684914, 42.504814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593084, 36.357201, 42.439388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408169, 0.434121, -0.803080,
		0.728960, 0.374577, 0.572983,
		0.549559, -0.819287, -0.163566,
		31.757952, 36.111416, 42.390320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093075, 36.856262, 42.570049>,  <31.373260, 36.684914, 42.504814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093075, 36.856262, 42.570049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.064030, 36.540295, 42.326488>,  <32.046604, 36.350716, 42.180351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.064030, 36.540295, 42.326488>,  <32.093075, 36.856262, 42.570049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064030, 36.540295, 42.326488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277048, 0.570512, -0.773150,
		0.958108, -0.224835, 0.177419,
		-0.072612, -0.789915, -0.608902,
		32.042248, 36.303322, 42.143818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837593, 36.750484, 42.313412>,  <32.093075, 36.856262, 42.570049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837593, 36.750484, 42.313412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.592518, 36.567558, 42.055580>,  <32.445473, 36.457802, 41.900883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.592518, 36.567558, 42.055580>,  <32.837593, 36.750484, 42.313412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592518, 36.567558, 42.055580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507398, 0.397695, -0.764452,
		0.605939, -0.795426, -0.011623,
		-0.612687, -0.457313, -0.644576,
		32.408710, 36.430363, 41.862206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542400, 36.570084, 42.473526>,  <32.837593, 36.750484, 42.313412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542400, 36.570084, 42.473526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.898468, 36.641258, 42.641304>,  <34.112110, 36.683964, 42.741970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.898468, 36.641258, 42.641304>,  <33.542400, 36.570084, 42.473526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898468, 36.641258, 42.641304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373020, -0.244016, 0.895160,
		0.261630, -0.953308, -0.150844,
		0.890172, 0.177933, 0.419445,
		34.165520, 36.694637, 42.767136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749878, 35.981689, 42.816711>,  <33.542400, 36.570084, 42.473526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749878, 35.981689, 42.816711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948975, 36.279598, 42.994507>,  <34.068432, 36.458344, 43.101185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948975, 36.279598, 42.994507>,  <33.749878, 35.981689, 42.816711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948975, 36.279598, 42.994507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174393, -0.416080, 0.892449,
		0.849615, -0.521721, -0.077215,
		0.497737, 0.744772, 0.444492,
		34.098297, 36.503029, 43.127853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305481, 35.699459, 43.226578>,  <33.749878, 35.981689, 42.816711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305481, 35.699459, 43.226578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.238750, 36.064556, 43.375748>,  <34.198711, 36.283615, 43.465248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.238750, 36.064556, 43.375748>,  <34.305481, 35.699459, 43.226578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238750, 36.064556, 43.375748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059932, -0.386910, 0.920168,
		0.984163, 0.131159, 0.119249,
		-0.166827, 0.912742, 0.372922,
		34.188702, 36.338379, 43.487625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848808, 35.807182, 43.691998>,  <34.305481, 35.699459, 43.226578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848808, 35.807182, 43.691998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.602093, 36.095066, 43.819489>,  <34.454063, 36.267796, 43.895985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.602093, 36.095066, 43.819489>,  <34.848808, 35.807182, 43.691998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602093, 36.095066, 43.819489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059648, -0.446502, 0.892792,
		0.784864, 0.531654, 0.318328,
		-0.616790, 0.719708, 0.318731,
		34.417057, 36.310978, 43.915108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045338, 36.078995, 44.354145>,  <34.848808, 35.807182, 43.691998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045338, 36.078995, 44.354145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656616, 36.172264, 44.340099>,  <34.423386, 36.228226, 44.331673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.656616, 36.172264, 44.340099>,  <35.045338, 36.078995, 44.354145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656616, 36.172264, 44.340099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131908, -0.414141, 0.900604,
		0.195454, 0.879840, 0.433220,
		-0.971801, 0.233172, -0.035113,
		34.365074, 36.242214, 44.329567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970074, 36.464184, 44.923588>,  <35.045338, 36.078995, 44.354145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970074, 36.464184, 44.923588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.596943, 36.348309, 44.837879>,  <34.373066, 36.278782, 44.786453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.596943, 36.348309, 44.837879>,  <34.970074, 36.464184, 44.923588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596943, 36.348309, 44.837879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120460, -0.309730, 0.943163,
		-0.339592, 0.905620, 0.254028,
		-0.932827, -0.289690, -0.214273,
		34.317093, 36.261402, 44.773598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628311, 36.267082, 45.576122>,  <34.970074, 36.464184, 44.923588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628311, 36.267082, 45.576122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.390881, 36.087276, 45.309109>,  <34.248421, 35.979393, 45.148899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.390881, 36.087276, 45.309109>,  <34.628311, 36.267082, 45.576122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390881, 36.087276, 45.309109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065032, -0.799961, 0.596518,
		-0.802145, 0.397491, 0.445606,
		-0.593578, -0.449515, -0.667534,
		34.212807, 35.952423, 45.108849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055038, 36.075325, 45.969624>,  <34.628311, 36.267082, 45.576122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055038, 36.075325, 45.969624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091877, 35.835346, 45.651737>,  <34.113979, 35.691357, 45.461006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091877, 35.835346, 45.651737>,  <34.055038, 36.075325, 45.969624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091877, 35.835346, 45.651737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098634, -0.799682, 0.592267,
		-0.990853, 0.023843, -0.132820,
		0.092093, -0.599950, -0.794720,
		34.119503, 35.655361, 45.413322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416077, 35.626167, 45.890610>,  <34.055038, 36.075325, 45.969624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416077, 35.626167, 45.890610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.727890, 35.448025, 45.714436>,  <33.914978, 35.341141, 45.608730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.727890, 35.448025, 45.714436>,  <33.416077, 35.626167, 45.890610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727890, 35.448025, 45.714436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148717, -0.814665, 0.560540,
		-0.608449, -0.371459, -0.701290,
		0.779534, -0.445354, -0.440440,
		33.961750, 35.314419, 45.582302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118874, 35.121101, 45.811565>,  <33.416077, 35.626167, 45.890610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118874, 35.121101, 45.811565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.507973, 35.034340, 45.778767>,  <33.741432, 34.982285, 45.759087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.507973, 35.034340, 45.778767>,  <33.118874, 35.121101, 45.811565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507973, 35.034340, 45.778767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137323, -0.823780, 0.550027,
		-0.186848, -0.523775, -0.831112,
		0.972744, -0.216902, -0.081995,
		33.799797, 34.969269, 45.754169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076111, 34.482769, 45.696106>,  <33.118874, 35.121101, 45.811565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076111, 34.482769, 45.696106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.428940, 34.577721, 45.858879>,  <33.640636, 34.634689, 45.956543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.428940, 34.577721, 45.858879>,  <33.076111, 34.482769, 45.696106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428940, 34.577721, 45.858879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124130, -0.716149, 0.686820,
		0.454458, -0.656340, -0.602234,
		0.882077, 0.237376, 0.406931,
		33.693562, 34.648933, 45.980957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293190, 33.822224, 45.931202>,  <33.076111, 34.482769, 45.696106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293190, 33.822224, 45.931202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.557575, 34.078186, 46.087990>,  <33.716206, 34.231762, 46.182064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.557575, 34.078186, 46.087990>,  <33.293190, 33.822224, 45.931202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557575, 34.078186, 46.087990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074252, -0.575547, 0.814391,
		0.746733, -0.509180, -0.427931,
		0.660966, 0.639907, 0.391972,
		33.755867, 34.270157, 46.205582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918983, 33.438248, 46.098820>,  <33.293190, 33.822224, 45.931202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918983, 33.438248, 46.098820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.924839, 33.775070, 46.314495>,  <33.928352, 33.977165, 46.443901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.924839, 33.775070, 46.314495>,  <33.918983, 33.438248, 46.098820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924839, 33.775070, 46.314495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028975, -0.538661, 0.842024,
		0.999473, -0.027946, 0.016515,
		0.014635, 0.842059, 0.539187,
		33.929230, 34.027687, 46.476250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375557, 33.309223, 46.726440>,  <33.918983, 33.438248, 46.098820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375557, 33.309223, 46.726440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.169888, 33.632298, 46.841869>,  <34.046486, 33.826141, 46.911125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.169888, 33.632298, 46.841869>,  <34.375557, 33.309223, 46.726440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169888, 33.632298, 46.841869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282826, -0.477294, 0.831985,
		0.809716, 0.346167, 0.473845,
		-0.514169, 0.807687, 0.288568,
		34.015636, 33.874603, 46.928440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962822, 33.600491, 47.071980>,  <34.375557, 33.309223, 46.726440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962822, 33.600491, 47.071980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.333408, 33.537468, 47.208702>,  <35.555759, 33.499653, 47.290737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.333408, 33.537468, 47.208702>,  <34.962822, 33.600491, 47.071980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333408, 33.537468, 47.208702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370282, 0.544306, -0.752743,
		-0.067449, 0.823958, 0.562622,
		0.926468, -0.157556, 0.341810,
		35.611347, 33.490200, 47.311245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292507, 34.305984, 47.201828>,  <34.962822, 33.600491, 47.071980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292507, 34.305984, 47.201828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.570488, 34.025627, 47.137585>,  <35.737274, 33.857414, 47.099037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.570488, 34.025627, 47.137585>,  <35.292507, 34.305984, 47.201828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570488, 34.025627, 47.137585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479342, 0.618058, -0.623085,
		0.535981, 0.356027, 0.765486,
		0.694950, -0.700891, -0.160609,
		35.778973, 33.815361, 47.089401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841148, 34.751270, 46.880466>,  <35.292507, 34.305984, 47.201828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841148, 34.751270, 46.880466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.993748, 34.387890, 46.812153>,  <36.085308, 34.169861, 46.771164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.993748, 34.387890, 46.812153>,  <35.841148, 34.751270, 46.880466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993748, 34.387890, 46.812153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598526, 0.383568, -0.703308,
		0.704431, 0.166094, 0.690066,
		0.381503, -0.908454, -0.170785,
		36.108200, 34.115353, 46.760918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637089, 34.700138, 46.948940>,  <35.841148, 34.751270, 46.880466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637089, 34.700138, 46.948940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.514446, 34.413120, 46.698780>,  <36.440861, 34.240910, 46.548683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.514446, 34.413120, 46.698780>,  <36.637089, 34.700138, 46.948940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514446, 34.413120, 46.698780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517502, 0.425783, -0.742227,
		0.798863, -0.551219, 0.240780,
		-0.306610, -0.717542, -0.625399,
		36.422462, 34.197857, 46.511162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286934, 34.437523, 46.537014>,  <36.637089, 34.700138, 46.948940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286934, 34.437523, 46.537014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.960289, 34.342022, 46.326820>,  <36.764301, 34.284721, 46.200703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.960289, 34.342022, 46.326820>,  <37.286934, 34.437523, 46.537014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960289, 34.342022, 46.326820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410490, 0.399790, -0.819552,
		0.405778, -0.884959, -0.228455,
		-0.816604, -0.238778, -0.525493,
		36.715305, 34.270397, 46.169174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588295, 34.080410, 45.904789>,  <37.286934, 34.437523, 46.537014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588295, 34.080410, 45.904789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.218819, 34.189697, 45.797340>,  <36.997135, 34.255268, 45.732872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.218819, 34.189697, 45.797340>,  <37.588295, 34.080410, 45.904789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218819, 34.189697, 45.797340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349647, 0.314373, -0.882562,
		-0.156682, -0.909133, -0.385911,
		-0.923687, 0.273215, -0.268619,
		36.941711, 34.271660, 45.716755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387772, 33.683636, 45.304306>,  <37.588295, 34.080410, 45.904789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387772, 33.683636, 45.304306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.187069, 34.029625, 45.301033>,  <37.066647, 34.237217, 45.299068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.187069, 34.029625, 45.301033>,  <37.387772, 33.683636, 45.304306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187069, 34.029625, 45.301033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364133, 0.202633, -0.909036,
		-0.784630, -0.459097, -0.416637,
		-0.501760, 0.864969, -0.008181,
		37.036541, 34.289116, 45.298580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068859, 33.684780, 44.637623>,  <37.387772, 33.683636, 45.304306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068859, 33.684780, 44.637623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.074680, 34.053558, 44.792439>,  <37.078171, 34.274826, 44.885326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.074680, 34.053558, 44.792439>,  <37.068859, 33.684780, 44.637623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074680, 34.053558, 44.792439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387825, 0.351573, -0.852050,
		-0.921618, 0.162500, -0.352439,
		0.014550, 0.921949, 0.387038,
		37.079044, 34.330143, 44.908550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033276, 34.035690, 44.062828>,  <37.068859, 33.684780, 44.637623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033276, 34.035690, 44.062828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.133522, 34.329453, 44.315128>,  <37.193668, 34.505711, 44.466507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.133522, 34.329453, 44.315128>,  <37.033276, 34.035690, 44.062828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133522, 34.329453, 44.315128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300171, 0.560477, -0.771856,
		-0.920374, 0.382772, -0.079983,
		0.250617, 0.734405, 0.630746,
		37.208706, 34.549774, 44.504353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678986, 34.567005, 43.777763>,  <37.033276, 34.035690, 44.062828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678986, 34.567005, 43.777763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.966255, 34.725246, 44.006752>,  <37.138618, 34.820190, 44.144146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.966255, 34.725246, 44.006752>,  <36.678986, 34.567005, 43.777763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966255, 34.725246, 44.006752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228409, 0.643082, -0.730941,
		-0.657306, 0.655702, 0.371488,
		0.718177, 0.395601, 0.572470,
		37.181709, 34.843925, 44.178493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597328, 35.233883, 43.715511>,  <36.678986, 34.567005, 43.777763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597328, 35.233883, 43.715511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.979881, 35.179787, 43.819080>,  <37.209412, 35.147327, 43.881222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.979881, 35.179787, 43.819080>,  <36.597328, 35.233883, 43.715511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979881, 35.179787, 43.819080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291192, 0.511898, -0.808188,
		-0.023242, 0.848334, 0.528951,
		0.956382, -0.135242, 0.258926,
		37.266796, 35.139214, 43.896759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849426, 35.850155, 43.737427>,  <36.597328, 35.233883, 43.715511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849426, 35.850155, 43.737427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.186569, 35.634903, 43.735840>,  <37.388855, 35.505753, 43.734886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.186569, 35.634903, 43.735840>,  <36.849426, 35.850155, 43.737427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186569, 35.634903, 43.735840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337590, 0.534468, -0.774840,
		0.419083, 0.651737, 0.632145,
		0.842854, -0.538128, -0.003967,
		37.439426, 35.473465, 43.734650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452049, 36.328686, 43.636566>,  <36.849426, 35.850155, 43.737427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452049, 36.328686, 43.636566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.602390, 35.980911, 43.508312>,  <37.692596, 35.772247, 43.431358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.602390, 35.980911, 43.508312>,  <37.452049, 36.328686, 43.636566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602390, 35.980911, 43.508312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494994, 0.480872, -0.723701,
		0.783399, 0.113294, 0.611106,
		0.375855, -0.869440, -0.320635,
		37.715145, 35.720078, 43.412121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157566, 36.432449, 43.476479>,  <37.452049, 36.328686, 43.636566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157566, 36.432449, 43.476479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.038063, 36.120399, 43.256603>,  <37.966362, 35.933170, 43.124680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.038063, 36.120399, 43.256603>,  <38.157566, 36.432449, 43.476479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038063, 36.120399, 43.256603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361972, 0.440322, -0.821641,
		0.883018, -0.444443, 0.150833,
		-0.298758, -0.780120, -0.549688,
		37.948437, 35.886364, 43.091698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.863537, 42.583271, 39.602871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.955811, 42.832230, 39.303696>,  <27.011175, 42.981606, 39.124191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.955811, 42.832230, 39.303696>,  <26.863537, 42.583271, 39.602871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955811, 42.832230, 39.303696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175682, -0.782679, -0.597119,
		-0.957038, 0.006347, -0.289895,
		0.230684, 0.622394, -0.747937,
		27.025015, 43.018948, 39.079315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487137, 42.309658, 39.077827>,  <26.863537, 42.583271, 39.602871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487137, 42.309658, 39.077827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.811771, 42.519119, 38.974197>,  <27.006552, 42.644794, 38.912018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.811771, 42.519119, 38.974197>,  <26.487137, 42.309658, 39.077827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811771, 42.519119, 38.974197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261474, -0.722116, -0.640452,
		-0.522457, 0.452039, -0.722979,
		0.811585, 0.523649, -0.259079,
		27.055246, 42.676212, 38.896473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451864, 42.410961, 38.314640>,  <26.487137, 42.309658, 39.077827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451864, 42.410961, 38.314640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.833548, 42.460224, 38.423683>,  <27.062557, 42.489780, 38.489109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.833548, 42.460224, 38.423683>,  <26.451864, 42.410961, 38.314640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833548, 42.460224, 38.423683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275233, -0.718453, -0.638805,
		0.117185, 0.684586, -0.719451,
		0.954209, 0.123158, 0.272612,
		27.119810, 42.497173, 38.505466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809502, 42.601315, 37.703739>,  <26.451864, 42.410961, 38.314640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809502, 42.601315, 37.703739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.050272, 42.432762, 37.975067>,  <27.194735, 42.331631, 38.137863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.050272, 42.432762, 37.975067>,  <26.809502, 42.601315, 37.703739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050272, 42.432762, 37.975067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201214, -0.742001, -0.639490,
		0.772785, 0.521414, -0.361843,
		0.601927, -0.421380, 0.678323,
		27.230850, 42.306347, 38.178566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404177, 42.389885, 37.348373>,  <26.809502, 42.601315, 37.703739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404177, 42.389885, 37.348373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.361742, 42.164116, 37.675831>,  <27.336281, 42.028652, 37.872303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.361742, 42.164116, 37.675831>,  <27.404177, 42.389885, 37.348373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361742, 42.164116, 37.675831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139180, -0.823609, -0.549816,
		0.984568, 0.055611, 0.165930,
		-0.106086, -0.564425, 0.818639,
		27.329916, 41.994789, 37.921421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990782, 42.018150, 37.157597>,  <27.404177, 42.389885, 37.348373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990782, 42.018150, 37.157597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.790539, 41.832680, 37.450008>,  <27.670393, 41.721397, 37.625454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.790539, 41.832680, 37.450008>,  <27.990782, 42.018150, 37.157597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790539, 41.832680, 37.450008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154000, -0.878688, -0.451877,
		0.851867, -0.113634, 0.511283,
		-0.500607, -0.463676, 0.731025,
		27.640356, 41.693577, 37.669315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369478, 41.510990, 37.350479>,  <27.990782, 42.018150, 37.157597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369478, 41.510990, 37.350479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.009666, 41.413795, 37.495701>,  <27.793779, 41.355480, 37.582832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.009666, 41.413795, 37.495701>,  <28.369478, 41.510990, 37.350479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009666, 41.413795, 37.495701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056397, -0.888681, -0.455044,
		0.433206, -0.388851, 0.813098,
		-0.899529, -0.242984, 0.363052,
		27.739807, 41.340900, 37.604618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463591, 40.858051, 37.663540>,  <28.369478, 41.510990, 37.350479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463591, 40.858051, 37.663540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.073765, 40.892605, 37.580822>,  <27.839870, 40.913338, 37.531193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.073765, 40.892605, 37.580822>,  <28.463591, 40.858051, 37.663540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073765, 40.892605, 37.580822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002313, -0.926562, -0.376135,
		-0.224098, -0.366090, 0.903193,
		-0.974564, 0.086380, -0.206794,
		27.781395, 40.918518, 37.518784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268415, 40.228058, 37.685638>,  <28.463591, 40.858051, 37.663540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268415, 40.228058, 37.685638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959942, 40.390835, 37.489815>,  <27.774857, 40.488499, 37.372318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959942, 40.390835, 37.489815>,  <28.268415, 40.228058, 37.685638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959942, 40.390835, 37.489815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173253, -0.874150, -0.453701,
		-0.612581, -0.265069, 0.744636,
		-0.771186, 0.406939, -0.489564,
		27.728586, 40.512917, 37.342945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618689, 39.762661, 37.833244>,  <28.268415, 40.228058, 37.685638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618689, 39.762661, 37.833244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568563, 39.965153, 37.491947>,  <27.538488, 40.086647, 37.287167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568563, 39.965153, 37.491947>,  <27.618689, 39.762661, 37.833244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568563, 39.965153, 37.491947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266355, -0.845616, -0.462588,
		-0.955695, 0.169299, 0.240802,
		-0.125311, 0.506232, -0.853244,
		27.530970, 40.117023, 37.235973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007372, 39.521137, 37.582939>,  <27.618689, 39.762661, 37.833244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007372, 39.521137, 37.582939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.198875, 39.656998, 37.259106>,  <27.313778, 39.738514, 37.064804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.198875, 39.656998, 37.259106>,  <27.007372, 39.521137, 37.582939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198875, 39.656998, 37.259106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235029, -0.838895, -0.490935,
		-0.845902, 0.425316, -0.321803,
		0.478761, 0.339649, -0.809584,
		27.342505, 39.758892, 37.016232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598072, 39.339188, 37.054878>,  <27.007372, 39.521137, 37.582939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598072, 39.339188, 37.054878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.940847, 39.416866, 36.863907>,  <27.146513, 39.463474, 36.749325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.940847, 39.416866, 36.863907>,  <26.598072, 39.339188, 37.054878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940847, 39.416866, 36.863907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103354, -0.842741, -0.528305,
		-0.504948, 0.502070, -0.702106,
		0.856940, 0.194201, -0.477431,
		27.197929, 39.475128, 36.720676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.458435, 39.174103, 36.332397>,  <26.598072, 39.339188, 37.054878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.458435, 39.174103, 36.332397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.857584, 39.196091, 36.346401>,  <27.097075, 39.209286, 36.354805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.857584, 39.196091, 36.346401>,  <26.458435, 39.174103, 36.332397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857584, 39.196091, 36.346401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064197, -0.736402, -0.673491,
		-0.011244, 0.674307, -0.738366,
		0.997874, 0.054974, 0.035009,
		27.156946, 39.212582, 36.356903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758434, 39.158630, 35.609154>,  <26.458435, 39.174103, 36.332397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758434, 39.158630, 35.609154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.060152, 39.043049, 35.844967>,  <27.241182, 38.973701, 35.986454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.060152, 39.043049, 35.844967>,  <26.758434, 39.158630, 35.609154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060152, 39.043049, 35.844967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299248, -0.647927, -0.700458,
		0.584370, 0.704768, -0.402261,
		0.754296, -0.288951, 0.589529,
		27.286442, 38.956364, 36.021824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355642, 39.026089, 35.192284>,  <26.758434, 39.158630, 35.609154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355642, 39.026089, 35.192284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.477015, 38.822739, 35.514645>,  <27.549837, 38.700729, 35.708061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.477015, 38.822739, 35.514645>,  <27.355642, 39.026089, 35.192284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477015, 38.822739, 35.514645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389949, -0.705458, -0.591834,
		0.869408, 0.493842, -0.015815,
		0.303429, -0.508379, 0.805904,
		27.568043, 38.670223, 35.756416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912880, 38.758137, 34.940140>,  <27.355642, 39.026089, 35.192284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912880, 38.758137, 34.940140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.869022, 38.553471, 35.281006>,  <27.842709, 38.430672, 35.485523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.869022, 38.553471, 35.281006>,  <27.912880, 38.758137, 34.940140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869022, 38.553471, 35.281006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412726, -0.803362, -0.429262,
		0.904232, 0.304644, 0.299260,
		-0.109643, -0.511665, 0.852161,
		27.836130, 38.399971, 35.536655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591295, 38.410099, 35.072819>,  <27.912880, 38.758137, 34.940140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591295, 38.410099, 35.072819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.297438, 38.217876, 35.264385>,  <28.121122, 38.102543, 35.379326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.297438, 38.217876, 35.264385>,  <28.591295, 38.410099, 35.072819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297438, 38.217876, 35.264385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241710, -0.844963, -0.477088,
		0.633937, -0.234731, 0.736903,
		-0.734643, -0.480560, 0.478916,
		28.077045, 38.073708, 35.408062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953472, 37.755871, 35.412827>,  <28.591295, 38.410099, 35.072819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953472, 37.755871, 35.412827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.559439, 37.694775, 35.381119>,  <28.323019, 37.658115, 35.362095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.559439, 37.694775, 35.381119>,  <28.953472, 37.755871, 35.412827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559439, 37.694775, 35.381119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171982, -0.889993, -0.422297,
		-0.006044, -0.429630, 0.902985,
		-0.985082, -0.152744, -0.079268,
		28.263914, 37.648952, 35.357338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817961, 37.007957, 35.420826>,  <28.953472, 37.755871, 35.412827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817961, 37.007957, 35.420826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.160707, 36.811226, 35.359009>,  <29.366356, 36.693188, 35.321918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.160707, 36.811226, 35.359009>,  <28.817961, 37.007957, 35.420826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160707, 36.811226, 35.359009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428641, 0.513126, 0.743619,
		-0.286435, -0.703425, 0.650499,
		0.856868, -0.491829, -0.154539,
		29.417768, 36.663677, 35.312649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020353, 36.677208, 36.131165>,  <28.817961, 37.007957, 35.420826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020353, 36.677208, 36.131165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.329170, 36.795818, 35.906303>,  <29.514462, 36.866985, 35.771385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.329170, 36.795818, 35.906303>,  <29.020353, 36.677208, 36.131165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329170, 36.795818, 35.906303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400616, 0.459611, 0.792632,
		0.493412, -0.837154, 0.236045,
		0.772044, 0.296531, -0.562155,
		29.560783, 36.884777, 35.737656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683325, 36.541965, 36.535263>,  <29.020353, 36.677208, 36.131165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683325, 36.541965, 36.535263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.762289, 36.839245, 36.279552>,  <29.809668, 37.017612, 36.126125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.762289, 36.839245, 36.279552>,  <29.683325, 36.541965, 36.535263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762289, 36.839245, 36.279552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452886, 0.509213, 0.731844,
		0.869438, -0.433996, -0.236061,
		0.197412, 0.743202, -0.639280,
		29.821512, 37.062206, 36.087769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368254, 36.878407, 36.700806>,  <29.683325, 36.541965, 36.535263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368254, 36.878407, 36.700806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173805, 37.147743, 36.477989>,  <30.057137, 37.309345, 36.344299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.173805, 37.147743, 36.477989>,  <30.368254, 36.878407, 36.700806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173805, 37.147743, 36.477989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368637, 0.735940, 0.567890,
		0.792335, 0.070716, -0.605974,
		-0.486120, 0.673343, -0.557042,
		30.027969, 37.349747, 36.310875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878952, 37.336323, 36.591095>,  <30.368254, 36.878407, 36.700806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878952, 37.336323, 36.591095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.543129, 37.542572, 36.522655>,  <30.341635, 37.666321, 36.481590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.543129, 37.542572, 36.522655>,  <30.878952, 37.336323, 36.591095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543129, 37.542572, 36.522655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357215, 0.761230, 0.541226,
		0.409315, 0.393271, -0.823285,
		-0.839559, 0.515622, -0.171101,
		30.291262, 37.697258, 36.471325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121998, 38.039009, 36.405090>,  <30.878952, 37.336323, 36.591095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121998, 38.039009, 36.405090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.735802, 38.079403, 36.501114>,  <30.504084, 38.103642, 36.558727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.735802, 38.079403, 36.501114>,  <31.121998, 38.039009, 36.405090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735802, 38.079403, 36.501114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218025, 0.817587, 0.532932,
		-0.142447, 0.566880, -0.811391,
		-0.965492, 0.100989, 0.240057,
		30.446154, 38.109699, 36.573132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967686, 38.684460, 36.191280>,  <31.121998, 38.039009, 36.405090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967686, 38.684460, 36.191280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.668283, 38.600357, 36.442848>,  <30.488642, 38.549896, 36.593788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.668283, 38.600357, 36.442848>,  <30.967686, 38.684460, 36.191280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668283, 38.600357, 36.442848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074519, 0.915728, 0.394828,
		-0.658930, 0.342397, -0.669758,
		-0.748504, -0.210254, 0.628916,
		30.443733, 38.537281, 36.631523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341194, 39.184959, 36.054142>,  <30.967686, 38.684460, 36.191280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341194, 39.184959, 36.054142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.329786, 39.059361, 36.433739>,  <30.322941, 38.984001, 36.661499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.329786, 39.059361, 36.433739>,  <30.341194, 39.184959, 36.054142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329786, 39.059361, 36.433739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189958, 0.930378, 0.313549,
		-0.981378, 0.189212, 0.033112,
		-0.028521, -0.314000, 0.948994,
		30.321230, 38.965160, 36.718437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769924, 39.398533, 36.464630>,  <30.341194, 39.184959, 36.054142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769924, 39.398533, 36.464630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.054464, 39.332527, 36.737907>,  <30.225189, 39.292923, 36.901875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.054464, 39.332527, 36.737907>,  <29.769924, 39.398533, 36.464630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054464, 39.332527, 36.737907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140500, 0.919038, 0.368278,
		-0.688649, -0.357964, 0.630575,
		0.711352, -0.165018, 0.683189,
		30.267870, 39.283020, 36.942863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549299, 39.765614, 37.118885>,  <29.769924, 39.398533, 36.464630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549299, 39.765614, 37.118885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925583, 39.684402, 37.227585>,  <30.151354, 39.635677, 37.292805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.925583, 39.684402, 37.227585>,  <29.549299, 39.765614, 37.118885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925583, 39.684402, 37.227585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042124, 0.864829, 0.500296,
		-0.336589, -0.459185, 0.822105,
		0.940709, -0.203025, 0.271749,
		30.207796, 39.623493, 37.309109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642612, 39.842781, 37.826298>,  <29.549299, 39.765614, 37.118885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642612, 39.842781, 37.826298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006548, 39.881538, 37.664902>,  <30.224909, 39.904793, 37.568062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.006548, 39.881538, 37.664902>,  <29.642612, 39.842781, 37.826298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006548, 39.881538, 37.664902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130570, 0.856122, 0.500006,
		0.393886, -0.507609, 0.766281,
		0.909838, 0.096892, -0.403493,
		30.279499, 39.910606, 37.543854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033617, 40.148972, 38.310638>,  <29.642612, 39.842781, 37.826298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033617, 40.148972, 38.310638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.244665, 40.244640, 37.984592>,  <30.371294, 40.302044, 37.788963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.244665, 40.244640, 37.984592>,  <30.033617, 40.148972, 38.310638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244665, 40.244640, 37.984592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241595, 0.877671, 0.413915,
		0.814400, -0.415317, 0.405294,
		0.527621, 0.239175, -0.815114,
		30.402952, 40.316395, 37.740059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652878, 40.575386, 38.562565>,  <30.033617, 40.148972, 38.310638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652878, 40.575386, 38.562565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.624014, 40.634106, 38.167953>,  <30.606695, 40.669338, 37.931187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.624014, 40.634106, 38.167953>,  <30.652878, 40.575386, 38.562565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624014, 40.634106, 38.167953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404990, 0.908212, 0.105521,
		0.911469, -0.391920, -0.124990,
		-0.072161, 0.146799, -0.986531,
		30.602365, 40.678146, 37.871994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153135, 41.066586, 38.547134>,  <30.652878, 40.575386, 38.562565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153135, 41.066586, 38.547134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.978952, 41.108200, 38.189465>,  <30.874443, 41.133167, 37.974861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.978952, 41.108200, 38.189465>,  <31.153135, 41.066586, 38.547134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978952, 41.108200, 38.189465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133718, 0.989756, 0.050034,
		0.890223, -0.097779, -0.444908,
		-0.435458, 0.104034, -0.894178,
		30.848314, 41.139412, 37.921211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545435, 41.495708, 38.026867>,  <31.153135, 41.066586, 38.547134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545435, 41.495708, 38.026867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.165455, 41.534683, 37.908138>,  <30.937468, 41.558067, 37.836903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.165455, 41.534683, 37.908138>,  <31.545435, 41.495708, 38.026867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165455, 41.534683, 37.908138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058243, 0.988696, 0.138158,
		0.306923, 0.113955, -0.944887,
		-0.949950, 0.097437, -0.296817,
		30.880470, 41.563915, 37.819092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532513, 42.082680, 37.535221>,  <31.545435, 41.495708, 38.026867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532513, 42.082680, 37.535221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.164469, 42.030075, 37.682789>,  <30.943642, 41.998512, 37.771328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.164469, 42.030075, 37.682789>,  <31.532513, 42.082680, 37.535221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164469, 42.030075, 37.682789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037038, 0.966938, 0.252309,
		-0.389903, 0.218488, -0.894561,
		-0.920111, -0.131509, 0.368919,
		30.888435, 41.990623, 37.793465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184637, 42.528297, 36.991722>,  <31.532513, 42.082680, 37.535221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184637, 42.528297, 36.991722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.948185, 42.487652, 37.311783>,  <30.806314, 42.463264, 37.503819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.948185, 42.487652, 37.311783>,  <31.184637, 42.528297, 36.991722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948185, 42.487652, 37.311783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002580, 0.991790, 0.127853,
		-0.806573, 0.077642, -0.586014,
		-0.591129, -0.101611, 0.800151,
		30.770845, 42.457169, 37.551826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689892, 43.137814, 36.885448>,  <31.184637, 42.528297, 36.991722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689892, 43.137814, 36.885448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.640614, 43.012814, 37.262207>,  <30.611048, 42.937813, 37.488262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.640614, 43.012814, 37.262207>,  <30.689892, 43.137814, 36.885448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640614, 43.012814, 37.262207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019888, 0.949712, 0.312494,
		-0.992183, 0.019765, -0.123214,
		-0.123194, -0.312502, 0.941895,
		30.603655, 42.919064, 37.544777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147121, 43.555145, 37.085079>,  <30.689892, 43.137814, 36.885448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147121, 43.555145, 37.085079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.353891, 43.449596, 37.410816>,  <30.477953, 43.386265, 37.606258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.353891, 43.449596, 37.410816>,  <30.147121, 43.555145, 37.085079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353891, 43.449596, 37.410816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042341, 0.942259, 0.332199,
		-0.854984, -0.206201, 0.475902,
		0.516923, -0.263874, 0.814347,
		30.508968, 43.370434, 37.655121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792637, 43.822750, 37.564613>,  <30.147121, 43.555145, 37.085079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792637, 43.822750, 37.564613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.134960, 43.758457, 37.761292>,  <30.340353, 43.719883, 37.879299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.134960, 43.758457, 37.761292>,  <29.792637, 43.822750, 37.564613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134960, 43.758457, 37.761292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159907, 0.821754, 0.546946,
		-0.491960, -0.546705, 0.677562,
		0.855807, -0.160728, 0.491692,
		30.391703, 43.710239, 37.908798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710876, 43.998787, 38.353828>,  <29.792637, 43.822750, 37.564613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710876, 43.998787, 38.353828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.100267, 44.035370, 38.269947>,  <30.333902, 44.057320, 38.219620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.100267, 44.035370, 38.269947>,  <29.710876, 43.998787, 38.353828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100267, 44.035370, 38.269947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040433, 0.833412, 0.551171,
		0.225179, -0.545031, 0.807611,
		0.973478, 0.091457, -0.209704,
		30.392311, 44.062809, 38.207035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987003, 44.294094, 38.982948>,  <29.710876, 43.998787, 38.353828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987003, 44.294094, 38.982948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.286596, 44.374310, 38.730343>,  <30.466352, 44.422440, 38.578781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.286596, 44.374310, 38.730343>,  <29.987003, 44.294094, 38.982948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286596, 44.374310, 38.730343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005225, 0.951283, 0.308275,
		0.662567, -0.234193, 0.711448,
		0.748984, 0.200536, -0.631513,
		30.511292, 44.434471, 38.540890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480160, 44.668140, 39.342556>,  <29.987003, 44.294094, 38.982948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480160, 44.668140, 39.342556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.562536, 44.745560, 38.958862>,  <30.611961, 44.792011, 38.728645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.562536, 44.745560, 38.958862>,  <30.480160, 44.668140, 39.342556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562536, 44.745560, 38.958862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190382, 0.953590, 0.233284,
		0.959866, -0.230664, 0.159535,
		0.205941, 0.193548, -0.959233,
		30.624319, 44.803623, 38.671093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079901, 45.147049, 39.280144>,  <30.480160, 44.668140, 39.342556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079901, 45.147049, 39.280144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.864275, 45.185322, 38.945419>,  <30.734900, 45.208286, 38.744583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.864275, 45.185322, 38.945419>,  <31.079901, 45.147049, 39.280144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864275, 45.185322, 38.945419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169548, 0.960861, 0.219086,
		0.825023, 0.259981, -0.501743,
		-0.539064, 0.095682, -0.836812,
		30.702557, 45.214027, 38.694374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.966553, 31.987688, 45.751572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.757908, 31.706646, 45.557968>,  <36.632721, 31.538021, 45.441807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.757908, 31.706646, 45.557968>,  <36.966553, 31.987688, 45.751572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757908, 31.706646, 45.557968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012080, -0.573321, 0.819242,
		-0.853095, 0.421483, 0.307541,
		-0.521616, -0.702606, -0.484006,
		36.601421, 31.495865, 45.412766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321632, 31.983166, 46.138180>,  <36.966553, 31.987688, 45.751572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321632, 31.983166, 46.138180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.370102, 31.645828, 45.928768>,  <36.399185, 31.443426, 45.803120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.370102, 31.645828, 45.928768>,  <36.321632, 31.983166, 46.138180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370102, 31.645828, 45.928768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198807, -0.496113, 0.845191,
		-0.972519, -0.206498, 0.107546,
		0.121175, -0.843345, -0.523533,
		36.406456, 31.392824, 45.771709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796482, 31.612366, 46.376980>,  <36.321632, 31.983166, 46.138180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796482, 31.612366, 46.376980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.040710, 31.343355, 46.209690>,  <36.187248, 31.181950, 46.109318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.040710, 31.343355, 46.209690>,  <35.796482, 31.612366, 46.376980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040710, 31.343355, 46.209690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011155, -0.520729, 0.853649,
		-0.791883, -0.525879, -0.310439,
		0.610571, -0.672528, -0.418222,
		36.223881, 31.141598, 46.084225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509872, 31.039377, 46.568798>,  <35.796482, 31.612366, 46.376980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509872, 31.039377, 46.568798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877357, 30.914570, 46.471958>,  <36.097847, 30.839685, 46.413857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.877357, 30.914570, 46.471958>,  <35.509872, 31.039377, 46.568798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877357, 30.914570, 46.471958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003577, -0.606417, 0.795139,
		-0.394911, -0.731370, -0.556006,
		0.918712, -0.312020, -0.242097,
		36.152969, 30.820963, 46.399330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545109, 30.288033, 46.761673>,  <35.509872, 31.039377, 46.568798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545109, 30.288033, 46.761673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931126, 30.385548, 46.723167>,  <36.162735, 30.444056, 46.700066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931126, 30.385548, 46.723167>,  <35.545109, 30.288033, 46.761673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931126, 30.385548, 46.723167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241205, -0.682336, 0.690100,
		0.102556, -0.689192, -0.717284,
		0.965040, 0.243786, -0.096259,
		36.220638, 30.458683, 46.694290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876671, 29.717825, 46.640400>,  <35.545109, 30.288033, 46.761673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876671, 29.717825, 46.640400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148327, 29.974188, 46.783512>,  <36.311321, 30.128006, 46.869377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148327, 29.974188, 46.783512>,  <35.876671, 29.717825, 46.640400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148327, 29.974188, 46.783512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354144, -0.713055, 0.605090,
		0.642921, -0.284237, -0.711239,
		0.679142, 0.640906, 0.357778,
		36.352070, 30.166460, 46.890846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325794, 29.263733, 46.952911>,  <35.876671, 29.717825, 46.640400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325794, 29.263733, 46.952911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430519, 29.614193, 47.114807>,  <36.493355, 29.824469, 47.211945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.430519, 29.614193, 47.114807>,  <36.325794, 29.263733, 46.952911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430519, 29.614193, 47.114807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325104, -0.474920, 0.817776,
		0.908713, -0.082526, -0.409182,
		0.261817, 0.876151, 0.404736,
		36.509064, 29.877039, 47.236229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965149, 29.258499, 47.347824>,  <36.325794, 29.263733, 46.952911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965149, 29.258499, 47.347824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.816105, 29.585304, 47.523846>,  <36.726677, 29.781387, 47.629459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.816105, 29.585304, 47.523846>,  <36.965149, 29.258499, 47.347824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816105, 29.585304, 47.523846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253219, -0.366692, 0.895219,
		0.892771, 0.445000, -0.070249,
		-0.372613, 0.817014, 0.440055,
		36.704323, 29.830408, 47.655861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459431, 29.511305, 47.853279>,  <36.965149, 29.258499, 47.347824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459431, 29.511305, 47.853279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.099110, 29.636772, 47.973385>,  <36.882915, 29.712051, 48.045448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.099110, 29.636772, 47.973385>,  <37.459431, 29.511305, 47.853279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099110, 29.636772, 47.973385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216754, -0.274368, 0.936878,
		0.376251, 0.909030, 0.179164,
		-0.900807, 0.313667, 0.300267,
		36.828869, 29.730873, 48.063465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534840, 29.801226, 48.556297>,  <37.459431, 29.511305, 47.853279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534840, 29.801226, 48.556297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.135803, 29.783752, 48.534748>,  <36.896381, 29.773268, 48.521820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.135803, 29.783752, 48.534748>,  <37.534840, 29.801226, 48.556297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135803, 29.783752, 48.534748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025066, -0.497158, 0.867298,
		-0.064670, 0.866560, 0.494866,
		-0.997592, -0.043684, -0.053872,
		36.836525, 29.770647, 48.518585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186344, 30.034580, 49.090969>,  <37.534840, 29.801226, 48.556297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186344, 30.034580, 49.090969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.890629, 29.796455, 48.965076>,  <36.713200, 29.653582, 48.889542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.890629, 29.796455, 48.965076>,  <37.186344, 30.034580, 49.090969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890629, 29.796455, 48.965076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191157, -0.262625, 0.945773,
		-0.645684, 0.759364, 0.080359,
		-0.739291, -0.595310, -0.314731,
		36.668842, 29.617863, 48.870659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665176, 30.159647, 49.537628>,  <37.186344, 30.034580, 49.090969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665176, 30.159647, 49.537628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.564331, 29.801252, 49.391396>,  <36.503822, 29.586216, 49.303658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.564331, 29.801252, 49.391396>,  <36.665176, 30.159647, 49.537628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564331, 29.801252, 49.391396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297453, -0.287739, 0.910345,
		-0.920847, 0.338255, -0.193970,
		-0.252116, -0.895986, -0.365579,
		36.488697, 29.532457, 49.281723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002277, 30.045500, 49.719242>,  <36.665176, 30.159647, 49.537628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002277, 30.045500, 49.719242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176853, 29.689068, 49.669449>,  <36.281601, 29.475208, 49.639572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176853, 29.689068, 49.669449>,  <36.002277, 30.045500, 49.719242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176853, 29.689068, 49.669449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285564, -0.268390, 0.920011,
		-0.853212, -0.365984, -0.371597,
		0.436443, -0.891079, -0.124481,
		36.307785, 29.421743, 49.632103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585506, 29.357710, 49.594444>,  <36.002277, 30.045500, 49.719242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585506, 29.357710, 49.594444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.920513, 29.330685, 49.811333>,  <36.121517, 29.314470, 49.941463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.920513, 29.330685, 49.811333>,  <35.585506, 29.357710, 49.594444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920513, 29.330685, 49.811333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518048, -0.413729, 0.748635,
		0.173751, -0.907890, -0.381506,
		0.837518, -0.067563, 0.542217,
		36.171768, 29.310415, 49.973999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838882, 29.630859, 50.370071>,  <35.585506, 29.357710, 49.594444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838882, 29.630859, 50.370071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552380, 29.813431, 50.158920>,  <35.380478, 29.922974, 50.032230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552380, 29.813431, 50.158920>,  <35.838882, 29.630859, 50.370071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552380, 29.813431, 50.158920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693099, -0.377255, 0.614241,
		0.081211, 0.805825, 0.586559,
		-0.716253, 0.456426, -0.527880,
		35.337505, 29.950359, 50.000557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186146, 29.587915, 50.720589>,  <35.838882, 29.630859, 50.370071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186146, 29.587915, 50.720589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.053440, 29.858521, 50.983574>,  <34.973816, 30.020884, 51.141365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.053440, 29.858521, 50.983574>,  <35.186146, 29.587915, 50.720589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053440, 29.858521, 50.983574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187022, 0.730274, -0.657056,
		-0.924638, -0.095026, -0.368801,
		-0.331763, 0.676513, 0.657467,
		34.953911, 30.061474, 51.180813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658249, 29.947056, 50.418953>,  <35.186146, 29.587915, 50.720589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658249, 29.947056, 50.418953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.790009, 30.195009, 50.703835>,  <34.869064, 30.343781, 50.874763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.790009, 30.195009, 50.703835>,  <34.658249, 29.947056, 50.418953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790009, 30.195009, 50.703835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006580, 0.755795, -0.654776,
		-0.944167, 0.210998, 0.253040,
		0.329403, 0.619882, 0.712208,
		34.888828, 30.380974, 50.917496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320202, 30.662973, 50.292641>,  <34.658249, 29.947056, 50.418953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320202, 30.662973, 50.292641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618061, 30.752846, 50.544041>,  <34.796776, 30.806768, 50.694881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618061, 30.752846, 50.544041>,  <34.320202, 30.662973, 50.292641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618061, 30.752846, 50.544041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072568, 0.908803, -0.410865,
		-0.663498, 0.351560, 0.660437,
		0.744651, 0.224682, 0.628501,
		34.841457, 30.820250, 50.732590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269451, 31.369753, 50.507858>,  <34.320202, 30.662973, 50.292641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269451, 31.369753, 50.507858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654919, 31.278807, 50.563923>,  <34.886200, 31.224239, 50.597561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.654919, 31.278807, 50.563923>,  <34.269451, 31.369753, 50.507858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654919, 31.278807, 50.563923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266124, 0.862057, -0.431318,
		-0.022763, 0.452949, 0.891245,
		0.963670, -0.227364, 0.140164,
		34.944019, 31.210598, 50.605972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631660, 31.962475, 50.848492>,  <34.269451, 31.369753, 50.507858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631660, 31.962475, 50.848492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892765, 31.740498, 50.642212>,  <35.049427, 31.607311, 50.518444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892765, 31.740498, 50.642212>,  <34.631660, 31.962475, 50.848492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892765, 31.740498, 50.642212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334049, 0.821827, -0.461532,
		0.679940, 0.128999, 0.721832,
		0.652758, -0.554941, -0.515701,
		35.088593, 31.574015, 50.487503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290066, 32.389893, 50.854237>,  <34.631660, 31.962475, 50.848492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290066, 32.389893, 50.854237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.323215, 32.116962, 50.563702>,  <35.343105, 31.953203, 50.389381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.323215, 32.116962, 50.563702>,  <35.290066, 32.389893, 50.854237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323215, 32.116962, 50.563702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361755, 0.699725, -0.616051,
		0.928582, -0.211698, 0.304827,
		0.082878, -0.682326, -0.726335,
		35.348080, 31.912264, 50.345802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812302, 32.728371, 50.440193>,  <35.290066, 32.389893, 50.854237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812302, 32.728371, 50.440193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675018, 32.451294, 50.186455>,  <35.592648, 32.285049, 50.034214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675018, 32.451294, 50.186455>,  <35.812302, 32.728371, 50.440193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675018, 32.451294, 50.186455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253626, 0.581930, -0.772678,
		0.904370, -0.426072, -0.024036,
		-0.343204, -0.692691, -0.634342,
		35.572056, 32.243488, 49.996151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249237, 32.829918, 49.869328>,  <35.812302, 32.728371, 50.440193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249237, 32.829918, 49.869328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975979, 32.581596, 49.715485>,  <35.812027, 32.432606, 49.623177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975979, 32.581596, 49.715485>,  <36.249237, 32.829918, 49.869328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975979, 32.581596, 49.715485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129690, 0.415156, -0.900459,
		0.718679, -0.665020, -0.203098,
		-0.683141, -0.620800, -0.384610,
		35.771038, 32.395355, 49.600101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570393, 32.562473, 49.172359>,  <36.249237, 32.829918, 49.869328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570393, 32.562473, 49.172359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170479, 32.555096, 49.168732>,  <35.930531, 32.550671, 49.166557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170479, 32.555096, 49.168732>,  <36.570393, 32.562473, 49.172359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170479, 32.555096, 49.168732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002583, 0.324873, -0.945754,
		0.020386, -0.945578, -0.324757,
		-0.999789, -0.018441, -0.009065,
		35.870541, 32.549564, 49.166012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413883, 32.251122, 48.550068>,  <36.570393, 32.562473, 49.172359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413883, 32.251122, 48.550068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.091026, 32.465435, 48.649239>,  <35.897312, 32.594021, 48.708740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.091026, 32.465435, 48.649239>,  <36.413883, 32.251122, 48.550068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091026, 32.465435, 48.649239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029692, 0.382587, -0.923442,
		-0.589616, -0.752707, -0.292892,
		-0.807138, 0.535780, 0.247929,
		35.848885, 32.626167, 48.723618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876518, 32.029716, 48.099903>,  <36.413883, 32.251122, 48.550068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876518, 32.029716, 48.099903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814716, 32.396618, 48.246750>,  <35.777634, 32.616760, 48.334858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814716, 32.396618, 48.246750>,  <35.876518, 32.029716, 48.099903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814716, 32.396618, 48.246750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045996, 0.364499, -0.930067,
		-0.986920, -0.160587, -0.014127,
		-0.154507, 0.917253, 0.367118,
		35.768364, 32.671795, 48.356884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443321, 32.211117, 47.572861>,  <35.876518, 32.029716, 48.099903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443321, 32.211117, 47.572861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.537964, 32.544113, 47.773247>,  <35.594749, 32.743912, 47.893478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.537964, 32.544113, 47.773247>,  <35.443321, 32.211117, 47.572861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537964, 32.544113, 47.773247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146182, 0.479238, -0.865426,
		-0.960545, 0.278001, -0.008303,
		0.236610, 0.832494, 0.500968,
		35.608948, 32.793861, 47.923538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005341, 32.804680, 47.317245>,  <35.443321, 32.211117, 47.572861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005341, 32.804680, 47.317245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.346035, 32.938007, 47.478954>,  <35.550453, 33.018005, 47.575981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.346035, 32.938007, 47.478954>,  <35.005341, 32.804680, 47.317245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346035, 32.938007, 47.478954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175505, 0.545508, -0.819524,
		-0.493702, 0.768972, 0.406129,
		0.851737, 0.333322, 0.404277,
		35.601555, 33.038006, 47.600239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435524, 33.162994, 47.444092>,  <35.005341, 32.804680, 47.317245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435524, 33.162994, 47.444092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164154, 33.452381, 47.392963>,  <34.001335, 33.626015, 47.362286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164154, 33.452381, 47.392963>,  <34.435524, 33.162994, 47.444092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164154, 33.452381, 47.392963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526955, -0.357951, 0.770837,
		0.511923, 0.590308, 0.624077,
		-0.678420, 0.723469, -0.127823,
		33.960629, 33.669422, 47.354618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488911, 33.551384, 48.013626>,  <34.435524, 33.162994, 47.444092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488911, 33.551384, 48.013626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.120853, 33.561596, 47.857327>,  <33.900021, 33.567722, 47.763546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.120853, 33.561596, 47.857327>,  <34.488911, 33.551384, 48.013626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120853, 33.561596, 47.857327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378690, -0.311993, 0.871352,
		-0.099664, 0.949741, 0.296746,
		-0.920142, 0.025533, -0.390752,
		33.844810, 33.569256, 47.740101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082027, 33.796360, 48.544434>,  <34.488911, 33.551384, 48.013626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082027, 33.796360, 48.544434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.821865, 33.622730, 48.295097>,  <33.665768, 33.518551, 48.145496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.821865, 33.622730, 48.295097>,  <34.082027, 33.796360, 48.544434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821865, 33.622730, 48.295097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443667, -0.448997, 0.775603,
		-0.616548, 0.781012, 0.099445,
		-0.650406, -0.434076, -0.623338,
		33.626743, 33.492508, 48.108097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508320, 33.856655, 48.910469>,  <34.082027, 33.796360, 48.544434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508320, 33.856655, 48.910469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442150, 33.563759, 48.646210>,  <33.402447, 33.388023, 48.487652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442150, 33.563759, 48.646210>,  <33.508320, 33.856655, 48.910469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442150, 33.563759, 48.646210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439629, -0.544890, 0.714018,
		-0.882814, 0.408560, -0.231772,
		-0.165429, -0.732238, -0.660652,
		33.392521, 33.344086, 48.448013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907307, 33.741859, 48.985065>,  <33.508320, 33.856655, 48.910469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907307, 33.741859, 48.985065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059303, 33.413269, 48.814995>,  <33.150501, 33.216114, 48.712952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059303, 33.413269, 48.814995>,  <32.907307, 33.741859, 48.985065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059303, 33.413269, 48.814995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457320, -0.566398, 0.685603,
		-0.804029, -0.066081, -0.590906,
		0.379994, -0.821478, -0.425181,
		33.173302, 33.166824, 48.687439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360508, 33.364628, 48.938244>,  <32.907307, 33.741859, 48.985065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360508, 33.364628, 48.938244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.673676, 33.115971, 48.928375>,  <32.861576, 32.966778, 48.922455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.673676, 33.115971, 48.928375>,  <32.360508, 33.364628, 48.938244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673676, 33.115971, 48.928375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442033, -0.583746, 0.681063,
		-0.437779, -0.522308, -0.731809,
		0.782915, -0.621639, -0.024675,
		32.908550, 32.929478, 48.920971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062828, 32.620495, 48.992661>,  <32.360508, 33.364628, 48.938244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062828, 32.620495, 48.992661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447395, 32.541889, 49.069656>,  <32.678135, 32.494728, 49.115852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.447395, 32.541889, 49.069656>,  <32.062828, 32.620495, 48.992661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447395, 32.541889, 49.069656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274552, -0.642240, 0.715646,
		-0.017008, -0.740886, -0.671416,
		0.961422, -0.196511, 0.192488,
		32.735821, 32.482937, 49.127403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896244, 32.188713, 48.396111>,  <32.062828, 32.620495, 48.992661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896244, 32.188713, 48.396111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.564528, 32.051937, 48.219315>,  <31.365498, 31.969872, 48.113235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.564528, 32.051937, 48.219315>,  <31.896244, 32.188713, 48.396111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564528, 32.051937, 48.219315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114413, 0.670288, -0.733229,
		0.546978, -0.658630, -0.516742,
		-0.829292, -0.341938, -0.441988,
		31.315741, 31.949356, 48.086720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962215, 32.005524, 47.760132>,  <31.896244, 32.188713, 48.396111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962215, 32.005524, 47.760132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.578981, 32.115925, 47.790840>,  <31.349041, 32.182167, 47.809265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.578981, 32.115925, 47.790840>,  <31.962215, 32.005524, 47.760132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578981, 32.115925, 47.790840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146800, 0.703112, -0.695760,
		-0.246009, -0.655329, -0.714159,
		-0.958086, 0.276002, 0.076769,
		31.291555, 32.198727, 47.813869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630774, 31.901787, 47.179516>,  <31.962215, 32.005524, 47.760132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630774, 31.901787, 47.179516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.417927, 32.185612, 47.364285>,  <31.290218, 32.355907, 47.475147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.417927, 32.185612, 47.364285>,  <31.630774, 31.901787, 47.179516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417927, 32.185612, 47.364285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023542, 0.532963, -0.845811,
		-0.846343, -0.460946, -0.266895,
		-0.532118, 0.709563, 0.461921,
		31.258291, 32.398479, 47.502861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123798, 31.936613, 46.643322>,  <31.630774, 31.901787, 47.179516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123798, 31.936613, 46.643322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.102390, 32.255066, 46.884422>,  <31.089546, 32.446136, 47.029083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.102390, 32.255066, 46.884422>,  <31.123798, 31.936613, 46.643322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102390, 32.255066, 46.884422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041581, 0.601314, -0.797930,
		-0.997701, -0.067767, 0.000922,
		-0.053519, 0.796134, 0.602750,
		31.086334, 32.493904, 47.065247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642038, 32.310287, 46.308846>,  <31.123798, 31.936613, 46.643322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642038, 32.310287, 46.308846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.842585, 32.559555, 46.548946>,  <30.962912, 32.709114, 46.693005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.842585, 32.559555, 46.548946>,  <30.642038, 32.310287, 46.308846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842585, 32.559555, 46.548946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040937, 0.675877, -0.735877,
		-0.864267, 0.393515, 0.313350,
		0.501364, 0.623167, 0.600248,
		30.992994, 32.746506, 46.729019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436861, 32.877899, 46.144444>,  <30.642038, 32.310287, 46.308846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436861, 32.877899, 46.144444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.744097, 33.032600, 46.348587>,  <30.928438, 33.125420, 46.471073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.744097, 33.032600, 46.348587>,  <30.436861, 32.877899, 46.144444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744097, 33.032600, 46.348587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124822, 0.691287, -0.711718,
		-0.628060, 0.610366, 0.482695,
		0.768089, 0.386751, 0.510356,
		30.974524, 33.148624, 46.501694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335342, 33.510746, 46.115456>,  <30.436861, 32.877899, 46.144444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335342, 33.510746, 46.115456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.726812, 33.468857, 46.186138>,  <30.961695, 33.443726, 46.228546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.726812, 33.468857, 46.186138>,  <30.335342, 33.510746, 46.115456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726812, 33.468857, 46.186138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201948, 0.647726, -0.734621,
		-0.037527, 0.754642, 0.655063,
		0.978677, -0.104721, 0.176705,
		31.020416, 33.437439, 46.239151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.059284, 27.090488, 48.138111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.438885, 27.209991, 48.178398>,  <34.666645, 27.281693, 48.202572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.438885, 27.209991, 48.178398>,  <34.059284, 27.090488, 48.138111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438885, 27.209991, 48.178398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064449, 0.496547, -0.865614,
		-0.308620, 0.814976, 0.490477,
		0.949000, 0.298757, 0.100720,
		34.723583, 27.299618, 48.208614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071144, 27.824453, 48.039806>,  <34.059284, 27.090488, 48.138111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071144, 27.824453, 48.039806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.453453, 27.715664, 47.995018>,  <34.682838, 27.650391, 47.968147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.453453, 27.715664, 47.995018>,  <34.071144, 27.824453, 48.039806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453453, 27.715664, 47.995018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064579, 0.565451, -0.822250,
		0.286942, 0.778650, 0.558004,
		0.955769, -0.271973, -0.111968,
		34.740185, 27.634071, 47.961430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508678, 28.378752, 48.029541>,  <34.071144, 27.824453, 48.039806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508678, 28.378752, 48.029541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.703976, 28.101295, 47.817699>,  <34.821152, 27.934822, 47.690594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.703976, 28.101295, 47.817699>,  <34.508678, 28.378752, 48.029541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703976, 28.101295, 47.817699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065879, 0.634416, -0.770179,
		0.870219, 0.341142, 0.355444,
		0.488240, -0.693641, -0.529607,
		34.850449, 27.893204, 47.658817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826023, 28.819109, 47.467884>,  <34.508678, 28.378752, 48.029541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826023, 28.819109, 47.467884> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.944855, 28.452087, 47.362179>,  <35.016155, 28.231874, 47.298756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.944855, 28.452087, 47.362179>,  <34.826023, 28.819109, 47.467884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944855, 28.452087, 47.362179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238077, 0.339199, -0.910090,
		0.924697, 0.207451, 0.319218,
		0.297078, -0.917555, -0.264267,
		35.033978, 28.176821, 47.282898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532928, 28.836994, 47.218437>,  <34.826023, 28.819109, 47.467884>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532928, 28.836994, 47.218437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.317974, 28.549271, 47.042339>,  <35.189003, 28.376637, 46.936680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.317974, 28.549271, 47.042339>,  <35.532928, 28.836994, 47.218437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317974, 28.549271, 47.042339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197531, 0.400144, -0.894911,
		0.819878, -0.567872, -0.072945,
		-0.537384, -0.719310, -0.440242,
		35.156757, 28.333477, 46.910267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940968, 28.693537, 46.644619>,  <35.532928, 28.836994, 47.218437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940968, 28.693537, 46.644619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.600258, 28.516560, 46.532391>,  <35.395832, 28.410374, 46.465054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.600258, 28.516560, 46.532391>,  <35.940968, 28.693537, 46.644619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600258, 28.516560, 46.532391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194724, 0.229812, -0.953556,
		0.486373, -0.866851, -0.109594,
		-0.851777, -0.442443, -0.280571,
		35.344727, 28.383827, 46.448219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188183, 28.224962, 46.034306>,  <35.940968, 28.693537, 46.644619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188183, 28.224962, 46.034306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.792084, 28.276712, 46.013626>,  <35.554424, 28.307762, 46.001221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.792084, 28.276712, 46.013626>,  <36.188183, 28.224962, 46.034306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792084, 28.276712, 46.013626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097081, 0.374608, -0.922087,
		-0.099932, -0.918112, -0.383515,
		-0.990247, 0.129378, -0.051696,
		35.495010, 28.315525, 45.998116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957504, 27.918629, 45.419769>,  <36.188183, 28.224962, 46.034306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957504, 27.918629, 45.419769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.657665, 28.160891, 45.526566>,  <35.477760, 28.306248, 45.590645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.657665, 28.160891, 45.526566>,  <35.957504, 27.918629, 45.419769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657665, 28.160891, 45.526566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109600, 0.284229, -0.952471,
		-0.652756, -0.743233, -0.146677,
		-0.749599, 0.605656, 0.266990,
		35.432785, 28.342587, 45.606663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362366, 27.800941, 44.900875>,  <35.957504, 27.918629, 45.419769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362366, 27.800941, 44.900875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.309551, 28.164801, 45.058411>,  <35.277863, 28.383116, 45.152931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.309551, 28.164801, 45.058411>,  <35.362366, 27.800941, 44.900875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309551, 28.164801, 45.058411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166368, 0.371343, -0.913469,
		-0.977184, -0.186133, 0.102306,
		-0.132036, 0.909648, 0.393837,
		35.269939, 28.437695, 45.176563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732975, 28.019226, 44.652264>,  <35.362366, 27.800941, 44.900875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732975, 28.019226, 44.652264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.942116, 28.344694, 44.753906>,  <35.067600, 28.539974, 44.814892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.942116, 28.344694, 44.753906>,  <34.732975, 28.019226, 44.652264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942116, 28.344694, 44.753906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183229, 0.398406, -0.898721,
		-0.832498, 0.423339, 0.357395,
		0.522852, 0.813669, 0.254104,
		35.098972, 28.588795, 44.830139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407375, 28.596201, 44.292244>,  <34.732975, 28.019226, 44.652264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407375, 28.596201, 44.292244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.763157, 28.748106, 44.393948>,  <34.976627, 28.839249, 44.454967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.763157, 28.748106, 44.393948>,  <34.407375, 28.596201, 44.292244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763157, 28.748106, 44.393948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118698, 0.345282, -0.930963,
		-0.441336, 0.858231, 0.262036,
		0.889457, 0.379764, 0.254255,
		35.029995, 28.862036, 44.470222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401314, 29.349611, 44.168324>,  <34.407375, 28.596201, 44.292244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401314, 29.349611, 44.168324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.749809, 29.156288, 44.134010>,  <34.958908, 29.040295, 44.113422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.749809, 29.156288, 44.134010>,  <34.401314, 29.349611, 44.168324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749809, 29.156288, 44.134010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035831, 0.236912, -0.970870,
		0.489552, 0.842785, 0.223724,
		0.871238, -0.483308, -0.085783,
		35.011181, 29.011295, 44.108276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853188, 29.820589, 43.794708>,  <34.401314, 29.349611, 44.168324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853188, 29.820589, 43.794708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.491653, 29.961536, 43.697620>,  <33.274734, 30.046104, 43.639366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.491653, 29.961536, 43.697620>,  <33.853188, 29.820589, 43.794708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491653, 29.961536, 43.697620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364850, -0.338348, 0.867413,
		0.223525, 0.872557, 0.434374,
		-0.903837, 0.352370, -0.242723,
		33.220501, 30.067247, 43.624802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632626, 30.137447, 44.370380>,  <33.853188, 29.820589, 43.794708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632626, 30.137447, 44.370380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.313759, 30.047022, 44.146442>,  <33.122440, 29.992767, 44.012081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.313759, 30.047022, 44.146442>,  <33.632626, 30.137447, 44.370380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313759, 30.047022, 44.146442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369603, -0.550494, 0.748565,
		-0.477415, 0.803649, 0.355280,
		-0.797163, -0.226063, -0.559845,
		33.074612, 29.979202, 43.978489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164574, 30.343311, 44.770248>,  <33.632626, 30.137447, 44.370380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164574, 30.343311, 44.770248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.992134, 30.093241, 44.509998>,  <32.888672, 29.943199, 44.353848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.992134, 30.093241, 44.509998>,  <33.164574, 30.343311, 44.770248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992134, 30.093241, 44.509998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699796, -0.223530, 0.678468,
		-0.569596, 0.747789, -0.341133,
		-0.431098, -0.625177, -0.650622,
		32.862804, 29.905687, 44.314812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382179, 30.469143, 44.700230>,  <33.164574, 30.343311, 44.770248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382179, 30.469143, 44.700230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.456818, 30.093397, 44.585144>,  <32.501602, 29.867950, 44.516094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.456818, 30.093397, 44.585144>,  <32.382179, 30.469143, 44.700230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456818, 30.093397, 44.585144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656464, -0.337094, 0.674849,
		-0.730915, 0.062947, -0.679559,
		0.186596, -0.939364, -0.287710,
		32.512794, 29.811588, 44.498833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639233, 30.125847, 44.571278>,  <32.382179, 30.469143, 44.700230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639233, 30.125847, 44.571278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.860420, 29.794306, 44.605297>,  <31.993134, 29.595381, 44.625710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.860420, 29.794306, 44.605297>,  <31.639233, 30.125847, 44.571278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860420, 29.794306, 44.605297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610084, -0.333261, 0.718842,
		-0.567472, -0.449381, -0.689951,
		0.552968, -0.828851, 0.085044,
		32.026310, 29.545650, 44.630810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169323, 29.564495, 44.541992>,  <31.639233, 30.125847, 44.571278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169323, 29.564495, 44.541992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.499878, 29.421747, 44.716221>,  <31.698212, 29.336098, 44.820759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.499878, 29.421747, 44.716221>,  <31.169323, 29.564495, 44.541992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499878, 29.421747, 44.716221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559012, -0.426901, 0.710817,
		-0.067723, -0.830903, -0.552281,
		0.826389, -0.356871, 0.435574,
		31.747795, 29.314686, 44.846893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995520, 28.873867, 44.730114>,  <31.169323, 29.564495, 44.541992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995520, 28.873867, 44.730114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.307251, 28.970949, 44.961193>,  <31.494289, 29.029198, 45.099842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.307251, 28.970949, 44.961193>,  <30.995520, 28.873867, 44.730114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307251, 28.970949, 44.961193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499490, -0.316064, 0.806606,
		0.378358, -0.917168, -0.125089,
		0.779330, 0.242705, 0.577702,
		31.541050, 29.043760, 45.134502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129715, 28.296600, 45.081203>,  <30.995520, 28.873867, 44.730114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129715, 28.296600, 45.081203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.292561, 28.561377, 45.332947>,  <31.390268, 28.720243, 45.483994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.292561, 28.561377, 45.332947>,  <31.129715, 28.296600, 45.081203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292561, 28.561377, 45.332947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274421, -0.568566, 0.775517,
		0.871179, -0.488432, -0.049820,
		0.407113, 0.661942, 0.629358,
		31.414694, 28.759960, 45.521755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342384, 27.822306, 45.646736>,  <31.129715, 28.296600, 45.081203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342384, 27.822306, 45.646736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.392879, 28.189919, 45.796104>,  <31.423176, 28.410486, 45.885727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.392879, 28.189919, 45.796104>,  <31.342384, 27.822306, 45.646736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392879, 28.189919, 45.796104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210637, -0.343019, 0.915407,
		0.969379, -0.194214, 0.150281,
		0.126236, 0.919032, 0.373424,
		31.430750, 28.465628, 45.908131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917595, 27.836679, 46.150661>,  <31.342384, 27.822306, 45.646736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917595, 27.836679, 46.150661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.668562, 28.139368, 46.230423>,  <31.519142, 28.320982, 46.278282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.668562, 28.139368, 46.230423>,  <31.917595, 27.836679, 46.150661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668562, 28.139368, 46.230423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143534, -0.360917, 0.921486,
		0.769278, 0.545080, 0.333316,
		-0.622583, 0.756721, 0.199408,
		31.481787, 28.366385, 46.290245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079895, 28.072704, 46.858284>,  <31.917595, 27.836679, 46.150661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079895, 28.072704, 46.858284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.714975, 28.206673, 46.764019>,  <31.496023, 28.287054, 46.707458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.714975, 28.206673, 46.764019>,  <32.079895, 28.072704, 46.858284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714975, 28.206673, 46.764019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358590, -0.375372, 0.854698,
		0.197797, 0.864247, 0.462552,
		-0.912299, 0.334923, -0.235663,
		31.441286, 28.307150, 46.693321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886541, 28.539932, 47.403969>,  <32.079895, 28.072704, 46.858284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886541, 28.539932, 47.403969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.540432, 28.416750, 47.245743>,  <31.332767, 28.342840, 47.150806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.540432, 28.416750, 47.245743>,  <31.886541, 28.539932, 47.403969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540432, 28.416750, 47.245743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290847, -0.334291, 0.896470,
		-0.408303, 0.890738, 0.199685,
		-0.865272, -0.307953, -0.395561,
		31.280849, 28.324364, 47.127075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313026, 28.787811, 47.941555>,  <31.886541, 28.539932, 47.403969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313026, 28.787811, 47.941555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.149471, 28.493973, 47.724972>,  <31.051338, 28.317669, 47.595020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.149471, 28.493973, 47.724972>,  <31.313026, 28.787811, 47.941555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149471, 28.493973, 47.724972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383845, -0.399846, 0.832338,
		-0.827934, 0.548168, -0.118480,
		-0.408888, -0.734599, -0.541457,
		31.026806, 28.273594, 47.562534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604193, 28.649530, 48.013226>,  <31.313026, 28.787811, 47.941555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604193, 28.649530, 48.013226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.817776, 28.314959, 47.963779>,  <30.945925, 28.114216, 47.934113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.817776, 28.314959, 47.963779>,  <30.604193, 28.649530, 48.013226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817776, 28.314959, 47.963779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351059, -0.352318, 0.867542,
		-0.769186, -0.419835, -0.481758,
		0.533956, -0.836427, -0.123612,
		30.977962, 28.064030, 47.926697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309076, 29.168383, 48.469307>,  <30.604193, 28.649530, 48.013226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309076, 29.168383, 48.469307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.323240, 29.317055, 48.840382>,  <30.331739, 29.406258, 49.063026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.323240, 29.317055, 48.840382>,  <30.309076, 29.168383, 48.469307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323240, 29.317055, 48.840382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092304, 0.925516, -0.367288,
		-0.995101, -0.072623, 0.067082,
		0.035412, 0.371681, 0.927685,
		30.333864, 29.428558, 49.118687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822016, 29.690075, 48.605125>,  <30.309076, 29.168383, 48.469307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822016, 29.690075, 48.605125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.102837, 29.779375, 48.875614>,  <30.271330, 29.832956, 49.037907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.102837, 29.779375, 48.875614>,  <29.822016, 29.690075, 48.605125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102837, 29.779375, 48.875614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007091, 0.947349, -0.320124,
		-0.712089, 0.229539, 0.663506,
		0.702053, 0.223252, 0.676225,
		30.313452, 29.846350, 49.078480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567581, 30.261723, 48.875793>,  <29.822016, 29.690075, 48.605125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567581, 30.261723, 48.875793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.965191, 30.259586, 48.919415>,  <30.203756, 30.258305, 48.945587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.965191, 30.259586, 48.919415>,  <29.567581, 30.261723, 48.875793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965191, 30.259586, 48.919415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024091, 0.984913, -0.171364,
		-0.106488, 0.172966, 0.979154,
		0.994022, -0.005341, 0.109049,
		30.263397, 30.257984, 48.952129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794340, 30.907131, 49.082073>,  <29.567581, 30.261723, 48.875793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794340, 30.907131, 49.082073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.178041, 30.809427, 49.025261>,  <30.408262, 30.750805, 48.991173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.178041, 30.809427, 49.025261>,  <29.794340, 30.907131, 49.082073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178041, 30.809427, 49.025261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232769, 0.968094, -0.092809,
		0.160165, 0.055968, 0.985502,
		0.959253, -0.244259, -0.142027,
		30.465816, 30.736149, 48.982655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191669, 31.548687, 49.253304>,  <29.794340, 30.907131, 49.082073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191669, 31.548687, 49.253304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.442698, 31.333389, 49.028290>,  <30.593315, 31.204212, 48.893280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.442698, 31.333389, 49.028290>,  <30.191669, 31.548687, 49.253304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.442698, 31.333389, 49.028290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505634, 0.831192, -0.231203,
		0.592019, -0.139342, 0.793787,
		0.627572, -0.538242, -0.562538,
		30.630970, 31.171917, 48.859528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820221, 31.878225, 49.300724>,  <30.191669, 31.548687, 49.253304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820221, 31.878225, 49.300724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.825819, 31.658159, 48.966747>,  <30.829178, 31.526119, 48.766361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.825819, 31.658159, 48.966747>,  <30.820221, 31.878225, 49.300724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825819, 31.658159, 48.966747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408283, 0.765381, -0.497491,
		0.912748, -0.333930, 0.235334,
		0.013993, -0.550167, -0.834937,
		30.830017, 31.493109, 48.716267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459404, 32.174088, 49.041512>,  <30.820221, 31.878225, 49.300724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459404, 32.174088, 49.041512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.277052, 31.963682, 48.754322>,  <31.167641, 31.837439, 48.582008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.277052, 31.963682, 48.754322>,  <31.459404, 32.174088, 49.041512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277052, 31.963682, 48.754322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360383, 0.628495, -0.689288,
		0.813817, -0.572977, -0.096950,
		-0.455878, -0.526016, -0.717971,
		31.140287, 31.805878, 48.538929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116272, 31.877884, 48.997181>,  <31.459404, 32.174088, 49.041512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116272, 31.877884, 48.997181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.443874, 31.995464, 49.194290>,  <32.640434, 32.066013, 49.312553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.443874, 31.995464, 49.194290>,  <32.116272, 31.877884, 48.997181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443874, 31.995464, 49.194290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139163, -0.731404, 0.667594,
		0.556653, -0.615339, -0.558117,
		0.819006, 0.293949, 0.492771,
		32.689575, 32.083649, 49.342121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261288, 31.232132, 49.351643>,  <32.116272, 31.877884, 48.997181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261288, 31.232132, 49.351643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.482086, 31.505463, 49.542793>,  <32.614567, 31.669460, 49.657482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.482086, 31.505463, 49.542793>,  <32.261288, 31.232132, 49.351643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482086, 31.505463, 49.542793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118063, -0.503275, 0.856023,
		0.825447, -0.528940, -0.197130,
		0.551996, 0.683327, 0.477875,
		32.647686, 31.710461, 49.686157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613132, 30.941906, 49.801685>,  <32.261288, 31.232132, 49.351643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613132, 30.941906, 49.801685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.633865, 31.307816, 49.961937>,  <32.646305, 31.527361, 50.058086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.633865, 31.307816, 49.961937>,  <32.613132, 30.941906, 49.801685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633865, 31.307816, 49.961937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061971, -0.397448, 0.915530,
		0.996731, -0.072283, 0.036088,
		0.051834, 0.914773, 0.400629,
		32.649414, 31.582247, 50.082127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121037, 30.898636, 50.306641>,  <32.613132, 30.941906, 49.801685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121037, 30.898636, 50.306641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.850967, 31.182449, 50.387348>,  <32.688927, 31.352737, 50.435772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.850967, 31.182449, 50.387348>,  <33.121037, 30.898636, 50.306641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850967, 31.182449, 50.387348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159574, -0.407531, 0.899141,
		0.720197, 0.574875, 0.388375,
		-0.675168, 0.709534, 0.201768,
		32.648418, 31.395309, 50.447880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348240, 31.432138, 50.913960>,  <33.121037, 30.898636, 50.306641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348240, 31.432138, 50.913960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.951355, 31.386578, 50.893764>,  <32.713226, 31.359241, 50.881649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.951355, 31.386578, 50.893764>,  <33.348240, 31.432138, 50.913960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951355, 31.386578, 50.893764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004102, -0.375120, 0.926967,
		-0.124520, 0.919952, 0.371730,
		-0.992209, -0.113901, -0.050484,
		32.653694, 31.352407, 50.878620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191284, 31.486931, 51.647892>,  <33.348240, 31.432138, 50.913960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191284, 31.486931, 51.647892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.844330, 31.357138, 51.496975>,  <32.636158, 31.279263, 51.406425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.844330, 31.357138, 51.496975>,  <33.191284, 31.486931, 51.647892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844330, 31.357138, 51.496975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152536, -0.548313, 0.822244,
		-0.473677, 0.770755, 0.426106,
		-0.867389, -0.324482, -0.377291,
		32.584114, 31.259792, 51.383789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810440, 31.592024, 52.155319>,  <33.191284, 31.486931, 51.647892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810440, 31.592024, 52.155319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.638611, 31.314636, 51.923954>,  <32.535511, 31.148203, 51.785133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.638611, 31.314636, 51.923954>,  <32.810440, 31.592024, 52.155319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638611, 31.314636, 51.923954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257192, -0.520046, 0.814496,
		-0.865631, 0.498652, 0.045044,
		-0.429575, -0.693469, -0.578418,
		32.509739, 31.106596, 51.750427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330078, 31.409834, 52.574455>,  <32.810440, 31.592024, 52.155319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330078, 31.409834, 52.574455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.328270, 31.106684, 52.313499>,  <32.327187, 30.924793, 52.156925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.328270, 31.106684, 52.313499>,  <32.330078, 31.409834, 52.574455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328270, 31.106684, 52.313499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133143, -0.646129, 0.751525,
		-0.991086, 0.090254, -0.097988,
		-0.004516, -0.757873, -0.652386,
		32.326916, 30.879322, 52.117783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796255, 30.931818, 52.747505>,  <32.330078, 31.409834, 52.574455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796255, 30.931818, 52.747505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.050529, 30.711565, 52.531094>,  <32.203094, 30.579414, 52.401249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.050529, 30.711565, 52.531094>,  <31.796255, 30.931818, 52.747505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050529, 30.711565, 52.531094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065103, -0.736601, 0.673187,
		-0.769202, -0.392710, -0.504092,
		0.635681, -0.550634, -0.541028,
		32.241234, 30.546375, 52.368786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.949451, 37.853683, 38.525753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325756, 37.786457, 38.643547>,  <36.551540, 37.746120, 38.714226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325756, 37.786457, 38.643547>,  <35.949451, 37.853683, 38.525753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325756, 37.786457, 38.643547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291408, 0.043284, 0.955619,
		-0.173351, -0.984826, -0.008255,
		0.940761, -0.168063, 0.294489,
		36.607983, 37.736038, 38.731895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889442, 37.327274, 38.921497>,  <35.949451, 37.853683, 38.525753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889442, 37.327274, 38.921497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245296, 37.474274, 39.029938>,  <36.458809, 37.562473, 39.095001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245296, 37.474274, 39.029938>,  <35.889442, 37.327274, 38.921497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245296, 37.474274, 39.029938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231667, -0.148416, 0.961407,
		0.393552, -0.918105, -0.046898,
		0.889633, 0.367499, 0.271104,
		36.512188, 37.584522, 39.111267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192551, 36.829708, 39.306664>,  <35.889442, 37.327274, 38.921497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192551, 36.829708, 39.306664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380470, 37.160717, 39.429619>,  <36.493221, 37.359322, 39.503391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380470, 37.160717, 39.429619>,  <36.192551, 36.829708, 39.306664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380470, 37.160717, 39.429619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337454, -0.153416, 0.928756,
		0.815727, -0.540063, 0.207176,
		0.469803, 0.827524, 0.307392,
		36.521412, 37.408974, 39.521835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427811, 36.631744, 39.863701>,  <36.192551, 36.829708, 39.306664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427811, 36.631744, 39.863701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457874, 37.028057, 39.908775>,  <36.475914, 37.265846, 39.935822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457874, 37.028057, 39.908775>,  <36.427811, 36.631744, 39.863701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457874, 37.028057, 39.908775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285230, -0.086921, 0.954510,
		0.955508, -0.103884, 0.276068,
		0.075162, 0.990784, 0.112685,
		36.480423, 37.325291, 39.942581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848183, 36.638844, 40.378979>,  <36.427811, 36.631744, 39.863701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848183, 36.638844, 40.378979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625225, 36.970722, 40.366852>,  <36.491451, 37.169849, 40.359573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625225, 36.970722, 40.366852>,  <36.848183, 36.638844, 40.378979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625225, 36.970722, 40.366852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511333, -0.314290, 0.799850,
		0.654100, 0.461338, 0.599433,
		-0.557397, 0.829692, -0.030320,
		36.458008, 37.219631, 40.357758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724854, 36.745323, 41.068493>,  <36.848183, 36.638844, 40.378979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724854, 36.745323, 41.068493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461315, 36.976265, 40.875584>,  <36.303192, 37.114830, 40.759838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461315, 36.976265, 40.875584>,  <36.724854, 36.745323, 41.068493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461315, 36.976265, 40.875584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659729, -0.135367, 0.739211,
		0.361500, 0.805197, 0.470081,
		-0.658844, 0.577351, -0.482277,
		36.263660, 37.149471, 40.730900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614719, 37.193638, 41.636368>,  <36.724854, 36.745323, 41.068493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614719, 37.193638, 41.636368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311649, 37.188709, 41.375359>,  <36.129807, 37.185753, 41.218754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311649, 37.188709, 41.375359>,  <36.614719, 37.193638, 41.636368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311649, 37.188709, 41.375359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638247, -0.194794, 0.744779,
		-0.136286, 0.980767, 0.139724,
		-0.757672, -0.012324, -0.652520,
		36.084347, 37.185013, 41.179604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130661, 37.692028, 41.960983>,  <36.614719, 37.193638, 41.636368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130661, 37.692028, 41.960983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910439, 37.504032, 41.685013>,  <35.778305, 37.391235, 41.519432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910439, 37.504032, 41.685013>,  <36.130661, 37.692028, 41.960983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910439, 37.504032, 41.685013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712820, -0.165472, 0.681548,
		-0.434482, 0.867024, -0.243914,
		-0.550557, -0.469987, -0.689927,
		35.745270, 37.363037, 41.478035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526115, 37.889721, 42.132626>,  <36.130661, 37.692028, 41.960983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526115, 37.889721, 42.132626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450981, 37.568714, 41.906113>,  <35.405899, 37.376110, 41.770206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450981, 37.568714, 41.906113>,  <35.526115, 37.889721, 42.132626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450981, 37.568714, 41.906113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715898, -0.282869, 0.638338,
		-0.672464, 0.525304, -0.521390,
		-0.187836, -0.802522, -0.566283,
		35.394630, 37.327957, 41.736229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862602, 37.967003, 41.943981>,  <35.526115, 37.889721, 42.132626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862602, 37.967003, 41.943981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949902, 37.577103, 41.925110>,  <35.002281, 37.343163, 41.913788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949902, 37.577103, 41.925110>,  <34.862602, 37.967003, 41.943981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949902, 37.577103, 41.925110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794624, -0.205569, 0.571239,
		-0.566516, -0.087181, -0.819426,
		0.218250, -0.974752, -0.047182,
		35.015377, 37.284676, 41.910957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231865, 37.727852, 41.997326>,  <34.862602, 37.967003, 41.943981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231865, 37.727852, 41.997326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461262, 37.405277, 42.054966>,  <34.598900, 37.211735, 42.089550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461262, 37.405277, 42.054966>,  <34.231865, 37.727852, 41.997326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461262, 37.405277, 42.054966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627485, -0.319341, 0.710130,
		-0.526656, -0.497679, -0.689166,
		0.573496, -0.806435, 0.144103,
		34.633312, 37.163345, 42.098198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768085, 37.120903, 42.054447>,  <34.231865, 37.727852, 41.997326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768085, 37.120903, 42.054447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104858, 37.013157, 42.241463>,  <34.306923, 36.948509, 42.353672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104858, 37.013157, 42.241463>,  <33.768085, 37.120903, 42.054447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104858, 37.013157, 42.241463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539529, -0.407991, 0.736513,
		-0.007635, -0.872346, -0.488829,
		0.841933, -0.269361, 0.467541,
		34.357437, 36.932350, 42.381725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209541, 36.879955, 41.596077>,  <33.768085, 37.120903, 42.054447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209541, 36.879955, 41.596077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905582, 36.652897, 41.469376>,  <32.723206, 36.516663, 41.393353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905582, 36.652897, 41.469376>,  <33.209541, 36.879955, 41.596077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905582, 36.652897, 41.469376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288706, 0.141874, -0.946848,
		0.582412, -0.810957, 0.056072,
		-0.759898, -0.567644, -0.316758,
		32.677612, 36.482605, 41.374348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355415, 36.391285, 41.121929>,  <33.209541, 36.879955, 41.596077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355415, 36.391285, 41.121929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969425, 36.466503, 41.048763>,  <32.737831, 36.511635, 41.004864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969425, 36.466503, 41.048763>,  <33.355415, 36.391285, 41.121929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969425, 36.466503, 41.048763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200416, 0.078562, -0.976556,
		-0.169271, -0.979012, -0.113499,
		-0.964977, 0.188049, -0.182912,
		32.679932, 36.522919, 40.993889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040634, 35.932865, 40.573006>,  <33.355415, 36.391285, 41.121929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040634, 35.932865, 40.573006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805744, 36.255581, 40.546906>,  <32.664810, 36.449211, 40.531246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805744, 36.255581, 40.546906>,  <33.040634, 35.932865, 40.573006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805744, 36.255581, 40.546906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177952, 0.050037, -0.982766,
		-0.789617, -0.588721, -0.172952,
		-0.587229, 0.806786, -0.065255,
		32.629574, 36.497616, 40.527328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606396, 35.862503, 39.977848>,  <33.040634, 35.932865, 40.573006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606396, 35.862503, 39.977848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553738, 36.252018, 40.052048>,  <32.522144, 36.485725, 40.096565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553738, 36.252018, 40.052048>,  <32.606396, 35.862503, 39.977848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553738, 36.252018, 40.052048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010460, 0.188479, -0.982021,
		-0.991242, -0.127336, -0.034998,
		-0.131643, 0.973787, 0.185496,
		32.514244, 36.544155, 40.107697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092941, 36.101917, 39.584015>,  <32.606396, 35.862503, 39.977848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092941, 36.101917, 39.584015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319511, 36.427418, 39.636139>,  <32.455452, 36.622719, 39.667412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319511, 36.427418, 39.636139>,  <32.092941, 36.101917, 39.584015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319511, 36.427418, 39.636139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076900, 0.209617, -0.974755,
		-0.820519, 0.542102, 0.181309,
		0.566422, 0.813748, 0.130307,
		32.489437, 36.671543, 39.675232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767376, 36.637066, 39.141823>,  <32.092941, 36.101917, 39.584015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767376, 36.637066, 39.141823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116013, 36.819454, 39.213844>,  <32.325195, 36.928886, 39.257057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116013, 36.819454, 39.213844>,  <31.767376, 36.637066, 39.141823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116013, 36.819454, 39.213844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077924, 0.233762, -0.969166,
		-0.483998, 0.858749, 0.168214,
		0.871593, 0.455967, 0.180058,
		32.377491, 36.956245, 39.267860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774309, 37.418728, 38.932255>,  <31.767376, 36.637066, 39.141823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774309, 37.418728, 38.932255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147705, 37.275406, 38.938129>,  <32.371742, 37.189415, 38.941654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.147705, 37.275406, 38.938129>,  <31.774309, 37.418728, 38.932255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147705, 37.275406, 38.938129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094234, 0.205576, -0.974094,
		0.345998, 0.910692, 0.225668,
		0.933491, -0.358300, 0.014689,
		32.427753, 37.167915, 38.942535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132378, 37.916027, 38.669312>,  <31.774309, 37.418728, 38.932255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132378, 37.916027, 38.669312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364540, 37.595028, 38.613976>,  <32.503838, 37.402428, 38.580776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364540, 37.595028, 38.613976>,  <32.132378, 37.916027, 38.669312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364540, 37.595028, 38.613976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032312, 0.192441, -0.980776,
		0.813689, 0.564774, 0.137623,
		0.580402, -0.802494, -0.138338,
		32.538662, 37.354279, 38.572475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624863, 38.158886, 38.226406>,  <32.132378, 37.916027, 38.669312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624863, 38.158886, 38.226406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650749, 37.761650, 38.187244>,  <32.666283, 37.523308, 38.163746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650749, 37.761650, 38.187244>,  <32.624863, 38.158886, 38.226406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650749, 37.761650, 38.187244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024462, 0.096501, -0.995032,
		0.997604, 0.066793, -0.018048,
		0.064720, -0.993089, -0.097903,
		32.670166, 37.463722, 38.157875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061909, 38.137413, 37.726673>,  <32.624863, 38.158886, 38.226406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061909, 38.137413, 37.726673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856064, 37.794922, 37.744801>,  <32.732559, 37.589428, 37.755676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.856064, 37.794922, 37.744801>,  <33.061909, 38.137413, 37.726673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856064, 37.794922, 37.744801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038045, -0.029999, -0.998826,
		0.856581, -0.515728, -0.017137,
		-0.514608, -0.856227, 0.045318,
		32.701683, 37.538055, 37.758396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428005, 37.634274, 37.280521>,  <33.061909, 38.137413, 37.726673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428005, 37.634274, 37.280521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048290, 37.511345, 37.307079>,  <32.820461, 37.437588, 37.323013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048290, 37.511345, 37.307079>,  <33.428005, 37.634274, 37.280521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048290, 37.511345, 37.307079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076126, 0.019788, -0.996902,
		0.305052, -0.951401, -0.042179,
		-0.949288, -0.307318, 0.066390,
		32.763504, 37.419151, 37.326996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411545, 37.102253, 36.726269>,  <33.428005, 37.634274, 37.280521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411545, 37.102253, 36.726269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031200, 37.203892, 36.797028>,  <32.802994, 37.264874, 36.839481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031200, 37.203892, 36.797028>,  <33.411545, 37.102253, 36.726269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031200, 37.203892, 36.797028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182945, -0.000170, -0.983123,
		-0.249778, -0.967179, 0.046648,
		-0.950864, 0.254096, 0.176898,
		32.745941, 37.280121, 36.850098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952271, 36.601315, 36.353073>,  <33.411545, 37.102253, 36.726269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952271, 36.601315, 36.353073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691582, 36.893311, 36.435417>,  <32.535168, 37.068508, 36.484821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691582, 36.893311, 36.435417>,  <32.952271, 36.601315, 36.353073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691582, 36.893311, 36.435417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150413, 0.141631, -0.978426,
		-0.743395, -0.668623, 0.017496,
		-0.651720, 0.729989, 0.205858,
		32.496067, 37.112309, 36.497173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288239, 36.401684, 36.086227>,  <32.952271, 36.601315, 36.353073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288239, 36.401684, 36.086227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271717, 36.799404, 36.125542>,  <32.261803, 37.038036, 36.149128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271717, 36.799404, 36.125542>,  <32.288239, 36.401684, 36.086227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271717, 36.799404, 36.125542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279523, 0.082940, -0.956550,
		-0.959250, -0.066984, 0.274504,
		-0.041306, 0.994301, 0.098284,
		32.259327, 37.097694, 36.155025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699598, 36.591301, 35.717545>,  <32.288239, 36.401684, 36.086227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699598, 36.591301, 35.717545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971785, 36.883915, 35.734623>,  <32.135098, 37.059483, 35.744869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971785, 36.883915, 35.734623>,  <31.699598, 36.591301, 35.717545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971785, 36.883915, 35.734623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017224, 0.074214, -0.997093,
		-0.732577, 0.677753, 0.063100,
		0.680466, 0.731535, 0.042694,
		32.175926, 37.103374, 35.747433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333120, 35.974709, 36.108662>,  <31.699598, 36.591301, 35.717545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333120, 35.974709, 36.108662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680054, 35.957279, 35.910336>,  <31.888214, 35.946823, 35.791340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680054, 35.957279, 35.910336>,  <31.333120, 35.974709, 36.108662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680054, 35.957279, 35.910336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243269, -0.831960, 0.498660,
		-0.434230, -0.553122, -0.710986,
		0.867332, -0.043572, -0.495820,
		31.940254, 35.944206, 35.761589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471258, 35.207943, 35.793652>,  <31.333120, 35.974709, 36.108662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471258, 35.207943, 35.793652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808792, 35.411732, 35.861042>,  <32.011314, 35.534004, 35.901478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808792, 35.411732, 35.861042>,  <31.471258, 35.207943, 35.793652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808792, 35.411732, 35.861042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338726, -0.749238, 0.569129,
		0.416181, -0.423184, -0.804804,
		0.843836, 0.509468, 0.168475,
		32.061943, 35.564571, 35.911583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610317, 35.377708, 35.014671>,  <31.471258, 35.207943, 35.793652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610317, 35.377708, 35.014671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009689, 35.380653, 34.992474>,  <32.249313, 35.382420, 34.979153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009689, 35.380653, 34.992474>,  <31.610317, 35.377708, 35.014671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009689, 35.380653, 34.992474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040906, -0.772779, 0.633355,
		-0.038223, -0.634632, -0.771868,
		0.998432, 0.007365, -0.055498,
		32.309219, 35.382862, 34.975822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863899, 34.700325, 34.745789>,  <31.610317, 35.377708, 35.014671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863899, 34.700325, 34.745789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110607, 34.907436, 34.982941>,  <32.258633, 35.031704, 35.125233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110607, 34.907436, 34.982941>,  <31.863899, 34.700325, 34.745789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110607, 34.907436, 34.982941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049212, -0.777092, 0.627460,
		0.785603, -0.357822, -0.504769,
		0.616771, 0.517775, 0.592877,
		32.295639, 35.062767, 35.160805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355576, 34.218796, 35.029682>,  <31.863899, 34.700325, 34.745789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355576, 34.218796, 35.029682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428539, 34.524834, 35.276699>,  <32.472317, 34.708454, 35.424908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428539, 34.524834, 35.276699>,  <32.355576, 34.218796, 35.029682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428539, 34.524834, 35.276699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265234, -0.643087, 0.718395,
		0.946772, 0.032748, -0.320236,
		0.182413, 0.765093, 0.617542,
		32.483265, 34.754360, 35.461960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899441, 33.912670, 35.406910>,  <32.355576, 34.218796, 35.029682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899441, 33.912670, 35.406910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757629, 34.226631, 35.610180>,  <32.672543, 34.415009, 35.732143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757629, 34.226631, 35.610180>,  <32.899441, 33.912670, 35.406910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757629, 34.226631, 35.610180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287124, -0.425838, 0.858034,
		0.889871, 0.450107, -0.074391,
		-0.354529, 0.784898, 0.508177,
		32.651272, 34.462101, 35.762634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474705, 34.079834, 35.796177>,  <32.899441, 33.912670, 35.406910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474705, 34.079834, 35.796177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131550, 34.203815, 35.960106>,  <32.925655, 34.278206, 36.058464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131550, 34.203815, 35.960106>,  <33.474705, 34.079834, 35.796177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131550, 34.203815, 35.960106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262716, -0.420870, 0.868245,
		0.441598, 0.852524, 0.279630,
		-0.857888, 0.309952, 0.409827,
		32.874184, 34.296803, 36.083054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656307, 34.289482, 36.363152>,  <33.474705, 34.079834, 35.796177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656307, 34.289482, 36.363152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264729, 34.229149, 36.418171>,  <33.029781, 34.192951, 36.451183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264729, 34.229149, 36.418171>,  <33.656307, 34.289482, 36.363152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264729, 34.229149, 36.418171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186804, -0.390305, 0.901535,
		-0.082295, 0.908246, 0.410263,
		-0.978944, -0.150831, 0.137544,
		32.971046, 34.183899, 36.459435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606926, 34.338055, 37.105873>,  <33.656307, 34.289482, 36.363152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606926, 34.338055, 37.105873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271702, 34.149208, 36.996510>,  <33.070568, 34.035900, 36.930889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271702, 34.149208, 36.996510>,  <33.606926, 34.338055, 37.105873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271702, 34.149208, 36.996510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029489, -0.461217, 0.886797,
		-0.544774, 0.751255, 0.372607,
		-0.838064, -0.472117, -0.273413,
		33.020283, 34.007572, 36.914486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228828, 34.256676, 37.729534>,  <33.606926, 34.338055, 37.105873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228828, 34.256676, 37.729534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069691, 33.992340, 37.474972>,  <32.974209, 33.833740, 37.322235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069691, 33.992340, 37.474972>,  <33.228828, 34.256676, 37.729534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069691, 33.992340, 37.474972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177453, -0.625136, 0.760076,
		-0.900127, 0.415326, 0.131440,
		-0.397847, -0.660840, -0.636402,
		32.950336, 33.794086, 37.284050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623596, 34.178394, 38.048527>,  <33.228828, 34.256676, 37.729534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623596, 34.178394, 38.048527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715305, 33.868320, 37.813061>,  <32.770329, 33.682278, 37.671780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715305, 33.868320, 37.813061>,  <32.623596, 34.178394, 38.048527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715305, 33.868320, 37.813061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260434, -0.631580, 0.730261,
		-0.937875, -0.014117, -0.346685,
		0.229269, -0.775182, -0.588666,
		32.784084, 33.635765, 37.636459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113018, 33.664585, 38.105270>,  <32.623596, 34.178394, 38.048527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113018, 33.664585, 38.105270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431999, 33.474182, 37.956955>,  <32.623386, 33.359940, 37.867966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431999, 33.474182, 37.956955>,  <32.113018, 33.664585, 38.105270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431999, 33.474182, 37.956955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165069, -0.763182, 0.624745,
		-0.580363, -0.436999, -0.687176,
		0.797452, -0.476010, -0.370788,
		32.671234, 33.331379, 37.845718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777266, 32.986847, 38.204014>,  <32.113018, 33.664585, 38.105270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777266, 32.986847, 38.204014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173855, 32.945759, 38.171951>,  <32.411808, 32.921104, 38.152714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173855, 32.945759, 38.171951>,  <31.777266, 32.986847, 38.204014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173855, 32.945759, 38.171951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041507, -0.832147, 0.553000,
		-0.123512, -0.544958, -0.829316,
		0.991475, -0.102725, -0.080160,
		32.471298, 32.914940, 38.147903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889874, 32.306145, 38.153835>,  <31.777266, 32.986847, 38.204014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889874, 32.306145, 38.153835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243347, 32.463753, 38.254910>,  <32.455433, 32.558319, 38.315552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243347, 32.463753, 38.254910>,  <31.889874, 32.306145, 38.153835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243347, 32.463753, 38.254910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164233, -0.766501, 0.620890,
		0.438327, -0.507171, -0.742056,
		0.883684, 0.394023, 0.252684,
		32.508453, 32.581959, 38.330715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380013, 31.687107, 38.264248>,  <31.889874, 32.306145, 38.153835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380013, 31.687107, 38.264248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552925, 32.004608, 38.435406>,  <32.656673, 32.195107, 38.538101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552925, 32.004608, 38.435406>,  <32.380013, 31.687107, 38.264248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552925, 32.004608, 38.435406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221427, -0.553430, 0.802923,
		0.874131, -0.252338, -0.414994,
		0.432278, 0.793751, 0.427896,
		32.682610, 32.242733, 38.563774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958424, 31.476280, 38.552601>,  <32.380013, 31.687107, 38.264248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958424, 31.476280, 38.552601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894798, 31.801853, 38.776108>,  <32.856625, 31.997196, 38.910210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894798, 31.801853, 38.776108>,  <32.958424, 31.476280, 38.552601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894798, 31.801853, 38.776108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049421, -0.558694, 0.827900,
		0.986031, 0.159302, 0.048641,
		-0.159062, 0.813931, 0.558763,
		32.847080, 32.046032, 38.943737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514198, 31.431101, 39.067703>,  <32.958424, 31.476280, 38.552601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514198, 31.431101, 39.067703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251621, 31.696180, 39.211876>,  <33.094074, 31.855228, 39.298378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251621, 31.696180, 39.211876>,  <33.514198, 31.431101, 39.067703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251621, 31.696180, 39.211876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089063, -0.406365, 0.909360,
		0.749096, 0.629047, 0.207735,
		-0.656447, 0.662697, 0.360431,
		33.054688, 31.894989, 39.320004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793449, 31.774803, 39.667660>,  <33.514198, 31.431101, 39.067703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793449, 31.774803, 39.667660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397514, 31.822229, 39.699051>,  <33.159954, 31.850685, 39.717888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397514, 31.822229, 39.699051>,  <33.793449, 31.774803, 39.667660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397514, 31.822229, 39.699051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050943, -0.219598, 0.974259,
		0.132746, 0.968359, 0.211327,
		-0.989840, 0.118563, 0.078481,
		33.100563, 31.857798, 39.722595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806568, 31.998379, 40.342602>,  <33.793449, 31.774803, 39.667660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806568, 31.998379, 40.342602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432301, 31.881115, 40.264027>,  <33.207741, 31.810757, 40.216881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432301, 31.881115, 40.264027>,  <33.806568, 31.998379, 40.342602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432301, 31.881115, 40.264027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093546, -0.330680, 0.939095,
		-0.340262, 0.897055, 0.281982,
		-0.935666, -0.293161, -0.196434,
		33.151600, 31.793167, 40.205097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475750, 32.245945, 40.873161>,  <33.806568, 31.998379, 40.342602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475750, 32.245945, 40.873161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246880, 31.950737, 40.730087>,  <33.109558, 31.773611, 40.644241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246880, 31.950737, 40.730087>,  <33.475750, 32.245945, 40.873161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246880, 31.950737, 40.730087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126886, -0.351217, 0.927656,
		-0.810256, 0.576167, 0.107313,
		-0.572175, -0.738023, -0.357684,
		33.075226, 31.729330, 40.622784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048664, 32.164169, 41.364208>,  <33.475750, 32.245945, 40.873161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048664, 32.164169, 41.364208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010029, 31.830173, 41.147518>,  <32.986847, 31.629776, 41.017506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.010029, 31.830173, 41.147518>,  <33.048664, 32.164169, 41.364208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010029, 31.830173, 41.147518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141560, -0.527211, 0.837860,
		-0.985206, 0.157613, -0.067280,
		-0.096587, -0.834989, -0.541723,
		32.981052, 31.579678, 40.985001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490982, 31.840157, 41.664471>,  <33.048664, 32.164169, 41.364208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490982, 31.840157, 41.664471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647938, 31.546253, 41.443142>,  <32.742111, 31.369911, 41.310345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647938, 31.546253, 41.443142>,  <32.490982, 31.840157, 41.664471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647938, 31.546253, 41.443142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174653, -0.650142, 0.739467,
		-0.903067, -0.193517, -0.383434,
		0.392386, -0.734756, -0.553323,
		32.765656, 31.325827, 41.277145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051838, 31.281769, 41.534161>,  <32.490982, 31.840157, 41.664471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051838, 31.281769, 41.534161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429680, 31.150627, 41.528015>,  <32.656384, 31.071941, 41.524330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429680, 31.150627, 41.528015>,  <32.051838, 31.281769, 41.534161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429680, 31.150627, 41.528015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201822, -0.617114, 0.760551,
		-0.258830, -0.715319, -0.649096,
		0.944603, -0.327856, -0.015360,
		32.713062, 31.052271, 41.523407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978546, 30.689665, 41.753941>,  <32.051838, 31.281769, 41.534161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978546, 30.689665, 41.753941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372120, 30.743233, 41.801170>,  <32.608265, 30.775373, 41.829506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372120, 30.743233, 41.801170>,  <31.978546, 30.689665, 41.753941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372120, 30.743233, 41.801170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012201, -0.609350, 0.792807,
		0.178118, -0.781510, -0.597926,
		0.983934, 0.133918, 0.118071,
		32.667301, 30.783407, 41.836594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186367, 30.008930, 41.955196>,  <31.978546, 30.689665, 41.753941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186367, 30.008930, 41.955196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477627, 30.263615, 42.056709>,  <32.652382, 30.416426, 42.117615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.477627, 30.263615, 42.056709>,  <32.186367, 30.008930, 41.955196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477627, 30.263615, 42.056709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206151, -0.556544, 0.804836,
		0.653686, -0.533721, -0.536504,
		0.728146, 0.636711, 0.253778,
		32.696072, 30.454628, 42.132843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776421, 29.533096, 42.091011>,  <32.186367, 30.008930, 41.955196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776421, 29.533096, 42.091011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831249, 29.877272, 42.287319>,  <32.864147, 30.083776, 42.405102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831249, 29.877272, 42.287319>,  <32.776421, 29.533096, 42.091011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831249, 29.877272, 42.287319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402279, -0.501104, 0.766203,
		0.905197, 0.092399, -0.414825,
		0.137074, 0.860440, 0.490768,
		32.872372, 30.135405, 42.434551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374416, 29.444315, 42.516079>,  <32.776421, 29.533096, 42.091011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374416, 29.444315, 42.516079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179317, 29.737919, 42.705112>,  <33.062260, 29.914082, 42.818531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179317, 29.737919, 42.705112>,  <33.374416, 29.444315, 42.516079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179317, 29.737919, 42.705112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095013, -0.493489, 0.864547,
		0.867798, 0.466583, 0.170959,
		-0.487749, 0.734009, 0.472580,
		33.032993, 29.958122, 42.846886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737129, 29.743244, 43.040188>,  <33.374416, 29.444315, 42.516079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737129, 29.743244, 43.040188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349350, 29.799477, 43.120594>,  <33.116684, 29.833216, 43.168839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349350, 29.799477, 43.120594>,  <33.737129, 29.743244, 43.040188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349350, 29.799477, 43.120594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129658, -0.401957, 0.906432,
		0.208228, 0.904802, 0.371449,
		-0.969448, 0.140583, 0.201014,
		33.058514, 29.841652, 43.180897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245060, 30.257036, 43.008259>,  <33.737129, 29.743244, 43.040188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245060, 30.257036, 43.008259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509064, 29.959227, 42.968128>,  <34.667465, 29.780540, 42.944050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509064, 29.959227, 42.968128>,  <34.245060, 30.257036, 43.008259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509064, 29.959227, 42.968128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568425, 0.582229, -0.581294,
		0.491199, 0.326635, 0.807485,
		0.660012, -0.744526, -0.100322,
		34.707066, 29.735868, 42.938030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730598, 30.624416, 42.858494>,  <34.245060, 30.257036, 43.008259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730598, 30.624416, 42.858494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885284, 30.277264, 42.733761>,  <34.978096, 30.068972, 42.658920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885284, 30.277264, 42.733761>,  <34.730598, 30.624416, 42.858494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885284, 30.277264, 42.733761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603905, 0.493871, -0.625612,
		0.696959, 0.053617, 0.715104,
		0.386713, -0.867881, -0.311828,
		35.001297, 30.016899, 42.640213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484772, 30.760775, 42.759197>,  <34.730598, 30.624416, 42.858494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484772, 30.760775, 42.759197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387131, 30.437143, 42.545353>,  <35.328545, 30.242964, 42.417046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387131, 30.437143, 42.545353>,  <35.484772, 30.760775, 42.759197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387131, 30.437143, 42.545353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512443, 0.360409, -0.779427,
		0.823296, -0.464215, 0.326631,
		-0.244101, -0.809079, -0.534608,
		35.313900, 30.194420, 42.384972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160667, 30.316551, 42.516556>,  <35.484772, 30.760775, 42.759197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160667, 30.316551, 42.516556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857361, 30.262732, 42.261391>,  <35.675377, 30.230440, 42.108292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857361, 30.262732, 42.261391>,  <36.160667, 30.316551, 42.516556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857361, 30.262732, 42.261391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582367, 0.300039, -0.755530,
		0.293051, -0.944391, -0.149154,
		-0.758267, -0.134546, -0.637909,
		35.629879, 30.222368, 42.070019>
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
