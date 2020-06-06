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
	<24.179911, 34.344700, 35.108700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428505, 34.648613, 35.185101>,  <24.577662, 34.830963, 35.230942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428505, 34.648613, 35.185101>,  <24.179911, 34.344700, 35.108700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.428505, 34.648613, 35.185101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457252, -0.153816, -0.875935,
		-0.636144, 0.631716, -0.443008,
		0.621484, 0.759786, 0.191005,
		24.614950, 34.876549, 35.242401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.091232, 34.711655, 34.549110>,  <24.179911, 34.344700, 35.108700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.091232, 34.711655, 34.549110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.444695, 34.800186, 34.714115>,  <24.656771, 34.853306, 34.813118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.444695, 34.800186, 34.714115>,  <24.091232, 34.711655, 34.549110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.444695, 34.800186, 34.714115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444675, -0.121362, -0.887432,
		-0.146353, 0.967618, -0.205663,
		0.883654, 0.221331, 0.412514,
		24.709791, 34.866585, 34.837868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.418198, 35.247589, 34.148361>,  <24.091232, 34.711655, 34.549110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.418198, 35.247589, 34.148361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.690517, 35.009857, 34.319607>,  <24.853910, 34.867218, 34.422356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.690517, 35.009857, 34.319607>,  <24.418198, 35.247589, 34.148361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.690517, 35.009857, 34.319607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529455, -0.004587, -0.848325,
		0.506149, 0.804208, 0.311548,
		0.680801, -0.594330, 0.428114,
		24.894758, 34.831558, 34.448040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148544, 35.616875, 34.043556>,  <24.418198, 35.247589, 34.148361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148544, 35.616875, 34.043556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223684, 35.228123, 34.100342>,  <25.268768, 34.994869, 34.134415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223684, 35.228123, 34.100342>,  <25.148544, 35.616875, 34.043556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223684, 35.228123, 34.100342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555980, -0.013936, -0.831079,
		0.809691, 0.235046, 0.537731,
		0.187848, -0.971884, 0.141965,
		25.280039, 34.936558, 34.142933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827028, 35.653221, 34.003857>,  <25.148544, 35.616875, 34.043556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827028, 35.653221, 34.003857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737251, 35.270660, 33.929100>,  <25.683386, 35.041126, 33.884247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737251, 35.270660, 33.929100>,  <25.827028, 35.653221, 34.003857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737251, 35.270660, 33.929100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754055, -0.048965, -0.654983,
		0.617274, -0.287931, 0.732167,
		-0.224441, -0.956398, -0.186891,
		25.669920, 34.983742, 33.873032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376787, 35.451836, 33.718918>,  <25.827028, 35.653221, 34.003857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376787, 35.451836, 33.718918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152411, 35.122402, 33.685314>,  <26.017784, 34.924744, 33.665150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152411, 35.122402, 33.685314>,  <26.376787, 35.451836, 33.718918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152411, 35.122402, 33.685314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705697, -0.422642, -0.568652,
		0.432824, -0.378268, 0.818277,
		-0.560941, -0.823582, -0.084013,
		25.984129, 34.875328, 33.660110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651697, 34.791634, 34.057121>,  <26.376787, 35.451836, 33.718918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651697, 34.791634, 34.057121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428537, 34.730793, 33.730782>,  <26.294641, 34.694290, 33.534977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.428537, 34.730793, 33.730782>,  <26.651697, 34.791634, 34.057121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428537, 34.730793, 33.730782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815284, -0.284175, -0.504536,
		-0.155104, -0.946631, 0.282547,
		-0.557902, -0.152101, -0.815850,
		26.261168, 34.685162, 33.486027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650230, 34.023144, 33.839603>,  <26.651697, 34.791634, 34.057121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650230, 34.023144, 33.839603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625320, 34.324051, 33.577240>,  <26.610374, 34.504593, 33.419823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.625320, 34.324051, 33.577240>,  <26.650230, 34.023144, 33.839603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625320, 34.324051, 33.577240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667454, -0.457219, -0.587754,
		-0.742042, -0.474392, -0.473631,
		-0.062273, 0.752265, -0.655911,
		26.606638, 34.549732, 33.380466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663103, 33.680824, 33.218449>,  <26.650230, 34.023144, 33.839603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663103, 33.680824, 33.218449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757458, 34.049168, 33.094265>,  <26.814072, 34.270172, 33.019756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757458, 34.049168, 33.094265>,  <26.663103, 33.680824, 33.218449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757458, 34.049168, 33.094265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694971, -0.383158, -0.608445,
		-0.679244, -0.072236, -0.730349,
		0.235888, 0.920854, -0.310460,
		26.828224, 34.325424, 33.001125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835863, 33.589561, 32.615749>,  <26.663103, 33.680824, 33.218449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835863, 33.589561, 32.615749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022711, 33.940010, 32.663441>,  <27.134819, 34.150280, 32.692055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022711, 33.940010, 32.663441>,  <26.835863, 33.589561, 32.615749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022711, 33.940010, 32.663441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746754, -0.318701, -0.583771,
		-0.473455, 0.361724, -0.803117,
		0.467118, 0.876120, 0.119228,
		27.162846, 34.202847, 32.699207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058310, 33.717937, 31.975437>,  <26.835863, 33.589561, 32.615749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058310, 33.717937, 31.975437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279745, 33.948559, 32.215813>,  <27.412607, 34.086929, 32.360039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279745, 33.948559, 32.215813>,  <27.058310, 33.717937, 31.975437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279745, 33.948559, 32.215813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811869, -0.212905, -0.543636,
		-0.185490, 0.788836, -0.585944,
		0.553590, 0.576549, 0.600940,
		27.445822, 34.121525, 32.396095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490232, 33.993034, 31.491743>,  <27.058310, 33.717937, 31.975437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490232, 33.993034, 31.491743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663288, 34.043484, 31.848824>,  <27.767122, 34.073753, 32.063072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663288, 34.043484, 31.848824>,  <27.490232, 33.993034, 31.491743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663288, 34.043484, 31.848824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898452, -0.142558, -0.415285,
		0.074885, 0.981718, -0.174991,
		0.432640, 0.126122, 0.892702,
		27.793079, 34.081322, 32.116634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139147, 33.883778, 31.138752>,  <27.490232, 33.993034, 31.491743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139147, 33.883778, 31.138752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414427, 34.132271, 31.288658>,  <28.579596, 34.281364, 31.378603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414427, 34.132271, 31.288658>,  <28.139147, 33.883778, 31.138752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414427, 34.132271, 31.288658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477896, -0.000502, 0.878416,
		0.545888, -0.783627, 0.296539,
		0.688202, 0.621231, 0.374766,
		28.620888, 34.318642, 31.401089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115810, 33.780323, 31.867796>,  <28.139147, 33.883778, 31.138752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115810, 33.780323, 31.867796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319971, 34.123863, 31.850508>,  <28.442469, 34.329987, 31.840136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319971, 34.123863, 31.850508>,  <28.115810, 33.780323, 31.867796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319971, 34.123863, 31.850508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483783, 0.328332, 0.811265,
		0.710945, -0.393163, 0.583078,
		0.510403, 0.858849, -0.043220,
		28.473093, 34.381519, 31.837542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514881, 33.751320, 32.585503>,  <28.115810, 33.780323, 31.867796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514881, 33.751320, 32.585503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388660, 34.068630, 32.377216>,  <28.312927, 34.259014, 32.252243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388660, 34.068630, 32.377216>,  <28.514881, 33.751320, 32.585503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388660, 34.068630, 32.377216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716866, 0.160248, 0.678546,
		0.621715, 0.587401, 0.518103,
		-0.315553, 0.793272, -0.520716,
		28.293995, 34.306610, 32.221001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468220, 34.330921, 33.047806>,  <28.514881, 33.751320, 32.585503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468220, 34.330921, 33.047806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234482, 34.400070, 32.730656>,  <28.094238, 34.441559, 32.540363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234482, 34.400070, 32.730656>,  <28.468220, 34.330921, 33.047806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234482, 34.400070, 32.730656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756052, 0.238997, 0.609316,
		0.294830, 0.955508, -0.008956,
		-0.584346, 0.172874, -0.792877,
		28.059177, 34.451931, 32.492794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195547, 34.922237, 33.104599>,  <28.468220, 34.330921, 33.047806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195547, 34.922237, 33.104599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959352, 34.704456, 32.866306>,  <27.817635, 34.573788, 32.723331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959352, 34.704456, 32.866306>,  <28.195547, 34.922237, 33.104599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959352, 34.704456, 32.866306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804518, 0.338722, 0.487871,
		-0.063836, 0.767358, -0.638034,
		-0.590488, -0.544453, -0.595730,
		27.782206, 34.541119, 32.687588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.863970, 35.297981, 32.686813>,  <28.195547, 34.922237, 33.104599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.863970, 35.297981, 32.686813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632200, 34.972824, 32.710358>,  <27.493139, 34.777729, 32.724483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632200, 34.972824, 32.710358>,  <27.863970, 35.297981, 32.686813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632200, 34.972824, 32.710358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766829, 0.568205, 0.298525,
		-0.276118, 0.127833, -0.952585,
		-0.579424, -0.812897, 0.058865,
		27.458372, 34.728954, 32.728016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186687, 35.534893, 32.717049>,  <27.863970, 35.297981, 32.686813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186687, 35.534893, 32.717049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065296, 35.162823, 32.799683>,  <26.992462, 34.939579, 32.849262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065296, 35.162823, 32.799683>,  <27.186687, 35.534893, 32.717049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065296, 35.162823, 32.799683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881832, 0.356307, 0.308898,
		-0.360936, -0.088428, -0.928389,
		-0.303477, -0.930175, 0.206583,
		26.974253, 34.883770, 32.861656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432878, 35.553307, 32.561028>,  <27.186687, 35.534893, 32.717049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432878, 35.553307, 32.561028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512609, 35.255924, 32.816383>,  <26.560448, 35.077496, 32.969597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512609, 35.255924, 32.816383>,  <26.432878, 35.553307, 32.561028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512609, 35.255924, 32.816383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860854, 0.178402, 0.476553,
		-0.468186, -0.644550, -0.604448,
		0.199327, -0.743457, 0.638389,
		26.572407, 35.032887, 33.007900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925951, 35.131241, 32.562210>,  <26.432878, 35.553307, 32.561028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925951, 35.131241, 32.562210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081638, 35.071938, 32.925865>,  <26.175051, 35.036354, 33.144058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081638, 35.071938, 32.925865>,  <25.925951, 35.131241, 32.562210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081638, 35.071938, 32.925865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912607, 0.072006, 0.402446,
		-0.125130, -0.986324, -0.107277,
		0.389217, -0.148260, 0.909136,
		26.198404, 35.027458, 33.198605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215174, 35.185753, 32.418427>,  <25.925951, 35.131241, 32.562210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.215174, 35.185753, 32.418427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.082787, 35.113667, 32.047916>,  <25.003353, 35.070415, 31.825611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.082787, 35.113667, 32.047916>,  <25.215174, 35.185753, 32.418427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.082787, 35.113667, 32.047916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735201, 0.566103, -0.372837,
		0.591557, -0.804394, -0.054867,
		-0.330969, -0.180216, -0.926273,
		24.983496, 35.059601, 31.770035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157532, 34.889328, 33.032448>,  <25.215174, 35.185753, 32.418427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157532, 34.889328, 33.032448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525387, 34.739098, 33.078411>,  <25.746099, 34.648960, 33.105988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.525387, 34.739098, 33.078411>,  <25.157532, 34.889328, 33.032448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.525387, 34.739098, 33.078411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211856, -0.228005, 0.950332,
		-0.330729, -0.898305, -0.289251,
		0.919638, -0.375582, 0.114903,
		25.801279, 34.626423, 33.112881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.030479, 34.173878, 33.343971>,  <25.157532, 34.889328, 33.032448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.030479, 34.173878, 33.343971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402212, 34.313431, 33.392349>,  <25.625252, 34.397163, 33.421375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402212, 34.313431, 33.392349>,  <25.030479, 34.173878, 33.343971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402212, 34.313431, 33.392349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043590, -0.221609, 0.974161,
		0.366669, -0.910589, -0.190740,
		0.929330, 0.348880, 0.120950,
		25.681011, 34.418095, 33.428635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467813, 33.746376, 33.736519>,  <25.030479, 34.173878, 33.343971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.467813, 33.746376, 33.736519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544870, 34.135593, 33.787239>,  <25.591105, 34.369125, 33.817673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544870, 34.135593, 33.787239>,  <25.467813, 33.746376, 33.736519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.544870, 34.135593, 33.787239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185850, -0.090703, 0.978383,
		0.963509, -0.212044, 0.163366,
		0.192642, 0.973042, 0.126801,
		25.602663, 34.427505, 33.825279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679840, 33.746666, 34.411385>,  <25.467813, 33.746376, 33.736519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679840, 33.746666, 34.411385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564547, 34.123947, 34.345303>,  <25.495371, 34.350315, 34.305653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564547, 34.123947, 34.345303>,  <25.679840, 33.746666, 34.411385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.564547, 34.123947, 34.345303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376135, 0.047133, 0.925365,
		0.880593, 0.328860, 0.341186,
		-0.288234, 0.943202, -0.165201,
		25.478077, 34.406906, 34.295742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.829578, 34.147591, 35.054062>,  <25.679840, 33.746666, 34.411385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.829578, 34.147591, 35.054062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526089, 34.333405, 34.871391>,  <25.343996, 34.444893, 34.761791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526089, 34.333405, 34.871391>,  <25.829578, 34.147591, 35.054062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526089, 34.333405, 34.871391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490283, 0.054364, 0.869866,
		0.428907, 0.883886, 0.186505,
		-0.758723, 0.464532, -0.456672,
		25.298471, 34.472763, 34.734390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.378372, 34.513634, 35.626038>,  <25.829578, 34.147591, 35.054062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.378372, 34.513634, 35.626038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118683, 34.486481, 35.323013>,  <24.962870, 34.470188, 35.141197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.118683, 34.486481, 35.323013>,  <25.378372, 34.513634, 35.626038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.118683, 34.486481, 35.323013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759343, 0.115071, 0.640435,
		0.043702, 0.991035, -0.126249,
		-0.649222, -0.067878, -0.757564,
		24.923916, 34.466118, 35.095745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124136, 34.302063, 35.803879>,  <25.378372, 34.513634, 35.626038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124136, 34.302063, 35.803879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807135, 34.084240, 35.913708>,  <25.616934, 33.953545, 35.979607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807135, 34.084240, 35.913708>,  <26.124136, 34.302063, 35.803879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807135, 34.084240, 35.913708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437607, -0.194182, 0.877948,
		-0.424777, 0.815934, 0.392193,
		-0.792505, -0.544559, 0.274575,
		25.569384, 33.920872, 35.996078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502508, 35.009628, 35.913368>,  <26.124136, 34.302063, 35.803879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502508, 35.009628, 35.913368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804556, 35.243572, 36.031849>,  <26.985785, 35.383938, 36.102936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804556, 35.243572, 36.031849>,  <26.502508, 35.009628, 35.913368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804556, 35.243572, 36.031849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538585, 0.295821, 0.788934,
		0.373797, -0.755265, 0.538377,
		0.755118, 0.584863, 0.296197,
		27.031092, 35.419029, 36.120708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.582836, 34.874840, 36.669163>,  <26.502508, 35.009628, 35.913368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.582836, 34.874840, 36.669163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754951, 35.227505, 36.591686>,  <26.858221, 35.439106, 36.545200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.754951, 35.227505, 36.591686>,  <26.582836, 34.874840, 36.669163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754951, 35.227505, 36.591686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448155, 0.394905, 0.802002,
		0.783587, -0.258290, 0.565047,
		0.430289, 0.881666, -0.193688,
		26.884039, 35.492004, 36.533581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610462, 35.209400, 37.239990>,  <26.582836, 34.874840, 36.669163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610462, 35.209400, 37.239990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654911, 35.519852, 36.991707>,  <26.681580, 35.706123, 36.842735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654911, 35.519852, 36.991707>,  <26.610462, 35.209400, 37.239990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654911, 35.519852, 36.991707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325984, 0.618485, 0.714990,
		0.938822, 0.122891, 0.321731,
		0.111120, 0.776128, -0.620708,
		26.688248, 35.752689, 36.805496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069445, 35.642242, 37.531391>,  <26.610462, 35.209400, 37.239990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069445, 35.642242, 37.531391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853037, 35.880424, 37.293827>,  <26.723192, 36.023335, 37.151287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853037, 35.880424, 37.293827>,  <27.069445, 35.642242, 37.531391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853037, 35.880424, 37.293827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252509, 0.558593, 0.790072,
		0.802208, 0.577411, -0.151850,
		-0.541019, 0.595459, -0.593909,
		26.690731, 36.059063, 37.115654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275425, 36.349934, 37.731621>,  <27.069445, 35.642242, 37.531391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275425, 36.349934, 37.731621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922050, 36.365250, 37.544827>,  <26.710026, 36.374439, 37.432751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922050, 36.365250, 37.544827>,  <27.275425, 36.349934, 37.731621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922050, 36.365250, 37.544827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370218, 0.553847, 0.745783,
		0.287195, 0.831737, -0.475113,
		-0.883435, 0.038289, -0.466986,
		26.657021, 36.376736, 37.404732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945805, 36.978683, 37.793182>,  <27.275425, 36.349934, 37.731621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945805, 36.978683, 37.793182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632734, 36.732189, 37.758156>,  <26.444893, 36.584293, 37.737141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632734, 36.732189, 37.758156>,  <26.945805, 36.978683, 37.793182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632734, 36.732189, 37.758156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419160, 0.417824, 0.806057,
		-0.460135, 0.667586, -0.585324,
		-0.782675, -0.616240, -0.087570,
		26.397932, 36.547318, 37.731884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124929, 37.388371, 37.087551>,  <26.945805, 36.978683, 37.793182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124929, 37.388371, 37.087551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770788, 37.204777, 37.117168>,  <26.558304, 37.094620, 37.134937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.770788, 37.204777, 37.117168>,  <27.124929, 37.388371, 37.087551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770788, 37.204777, 37.117168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306904, 0.696611, 0.648493,
		-0.349223, 0.551424, -0.757611,
		-0.885355, -0.458982, 0.074039,
		26.505182, 37.067081, 37.139381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.621109, 37.958534, 36.969959>,  <27.124929, 37.388371, 37.087551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.621109, 37.958534, 36.969959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472048, 37.665634, 37.197975>,  <26.382612, 37.489895, 37.334785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472048, 37.665634, 37.197975>,  <26.621109, 37.958534, 36.969959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472048, 37.665634, 37.197975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280143, 0.674396, 0.683162,
		-0.884676, 0.094889, -0.456448,
		-0.372651, -0.732247, 0.570039,
		26.360252, 37.445961, 37.368988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850328, 38.116306, 37.112888>,  <26.621109, 37.958534, 36.969959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850328, 38.116306, 37.112888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003973, 37.889809, 37.404594>,  <26.096159, 37.753910, 37.579617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003973, 37.889809, 37.404594>,  <25.850328, 38.116306, 37.112888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003973, 37.889809, 37.404594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407216, 0.604985, 0.684229,
		-0.828634, -0.559789, 0.001799,
		0.384112, -0.566242, 0.729266,
		26.119207, 37.719936, 37.623375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856163, 38.665287, 37.669563>,  <25.850328, 38.116306, 37.112888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856163, 38.665287, 37.669563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207117, 38.685123, 37.860451>,  <26.417688, 38.697025, 37.974983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207117, 38.685123, 37.860451>,  <25.856163, 38.665287, 37.669563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207117, 38.685123, 37.860451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031518, 0.986538, -0.160465,
		-0.478755, 0.155830, 0.864009,
		0.877383, 0.049592, 0.477221,
		26.470331, 38.700001, 38.003616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938772, 39.142643, 38.254269>,  <25.856163, 38.665287, 37.669563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938772, 39.142643, 38.254269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280380, 39.104389, 38.049717>,  <26.485344, 39.081436, 37.926987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280380, 39.104389, 38.049717>,  <25.938772, 39.142643, 38.254269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280380, 39.104389, 38.049717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059874, 0.994495, -0.085997,
		0.516786, 0.042825, 0.855043,
		0.854018, -0.095638, -0.511377,
		26.536585, 39.075699, 37.896305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295301, 38.594204, 38.647743>,  <25.938772, 39.142643, 38.254269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295301, 38.594204, 38.647743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256008, 38.279278, 38.891212>,  <26.232433, 38.090321, 39.037296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256008, 38.279278, 38.891212>,  <26.295301, 38.594204, 38.647743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256008, 38.279278, 38.891212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295207, -0.561050, -0.773353,
		0.950370, -0.255654, -0.177308,
		-0.098232, -0.787314, 0.608676,
		26.226538, 38.043083, 39.073814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806309, 38.076515, 38.468231>,  <26.295301, 38.594204, 38.647743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806309, 38.076515, 38.468231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467230, 37.920219, 38.611748>,  <26.263783, 37.826443, 38.697857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467230, 37.920219, 38.611748>,  <26.806309, 38.076515, 38.468231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467230, 37.920219, 38.611748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031963, -0.637507, -0.769781,
		0.529519, -0.664008, 0.527923,
		-0.847695, -0.390740, 0.358796,
		26.212921, 37.802998, 38.719387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877058, 37.383335, 38.588039>,  <26.806309, 38.076515, 38.468231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877058, 37.383335, 38.588039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502853, 37.467464, 38.474491>,  <26.278330, 37.517941, 38.406364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502853, 37.467464, 38.474491>,  <26.877058, 37.383335, 38.588039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502853, 37.467464, 38.474491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048678, -0.719089, -0.693211,
		-0.349923, -0.662326, 0.662479,
		-0.935513, 0.210322, -0.283866,
		26.222200, 37.530560, 38.389332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321754, 36.816711, 38.538826>,  <26.877058, 37.383335, 38.588039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321754, 36.816711, 38.538826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245127, 37.097103, 38.264038>,  <26.199150, 37.265339, 38.099167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.245127, 37.097103, 38.264038>,  <26.321754, 36.816711, 38.538826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245127, 37.097103, 38.264038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004882, -0.699243, -0.714867,
		-0.981467, -0.140298, 0.130530,
		-0.191567, 0.700981, -0.686969,
		26.187656, 37.307396, 38.057949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811794, 36.485058, 38.100842>,  <26.321754, 36.816711, 38.538826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.811794, 36.485058, 38.100842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985531, 36.783104, 37.898396>,  <26.089773, 36.961929, 37.776928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985531, 36.783104, 37.898396>,  <25.811794, 36.485058, 38.100842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985531, 36.783104, 37.898396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117065, -0.603817, -0.788480,
		-0.893109, 0.283220, -0.349488,
		0.434340, 0.745112, -0.506119,
		26.115833, 37.006638, 37.746559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460064, 36.416073, 37.479614>,  <25.811794, 36.485058, 38.100842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460064, 36.416073, 37.479614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811459, 36.605389, 37.453506>,  <26.022295, 36.718979, 37.437843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811459, 36.605389, 37.453506>,  <25.460064, 36.416073, 37.479614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811459, 36.605389, 37.453506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200771, -0.489664, -0.848481,
		-0.433532, 0.732277, -0.525186,
		0.878488, 0.473286, -0.065265,
		26.075005, 36.747375, 37.433926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.528727, 36.501804, 36.857700>,  <25.460064, 36.416073, 37.479614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.528727, 36.501804, 36.857700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895332, 36.492466, 37.017426>,  <26.115295, 36.486862, 37.113262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895332, 36.492466, 37.017426>,  <25.528727, 36.501804, 36.857700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895332, 36.492466, 37.017426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363770, -0.366507, -0.856355,
		0.166342, 0.930122, -0.327418,
		0.916516, -0.023343, 0.399316,
		26.170288, 36.485462, 37.137218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972511, 36.682430, 36.242744>,  <25.528727, 36.501804, 36.857700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972511, 36.682430, 36.242744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202347, 36.530239, 36.532597>,  <26.340248, 36.438923, 36.706509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202347, 36.530239, 36.532597>,  <25.972511, 36.682430, 36.242744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202347, 36.530239, 36.532597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536813, -0.493126, -0.684586,
		0.617802, 0.782345, -0.079100,
		0.574589, -0.380477, 0.724628,
		26.374723, 36.416096, 36.749985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631573, 36.723415, 36.023746>,  <25.972511, 36.682430, 36.242744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631573, 36.723415, 36.023746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664597, 36.422947, 36.285717>,  <26.684410, 36.242664, 36.442898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.664597, 36.422947, 36.285717>,  <26.631573, 36.723415, 36.023746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.664597, 36.422947, 36.285717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793473, -0.348072, -0.499246,
		0.602980, 0.560883, 0.567297,
		0.082559, -0.751170, 0.654926,
		26.689363, 36.197598, 36.482193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396309, 36.575169, 36.169060>,  <26.631573, 36.723415, 36.023746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396309, 36.575169, 36.169060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206894, 36.241680, 36.282669>,  <27.093245, 36.041588, 36.350834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206894, 36.241680, 36.282669>,  <27.396309, 36.575169, 36.169060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206894, 36.241680, 36.282669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820162, -0.534950, -0.202885,
		0.321088, 0.136872, 0.937106,
		-0.473536, -0.833723, 0.284024,
		27.064833, 35.991562, 36.367878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855162, 36.200890, 36.710114>,  <27.396309, 36.575169, 36.169060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855162, 36.200890, 36.710114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627766, 35.942841, 36.505905>,  <27.491327, 35.788010, 36.383381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627766, 35.942841, 36.505905>,  <27.855162, 36.200890, 36.710114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627766, 35.942841, 36.505905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813034, -0.345762, -0.468428,
		0.125673, -0.681370, 0.721069,
		-0.568491, -0.645122, -0.510524,
		27.457218, 35.749306, 36.352749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226526, 35.492630, 36.789509>,  <27.855162, 36.200890, 36.710114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226526, 35.492630, 36.789509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004704, 35.541939, 36.460323>,  <27.871611, 35.571526, 36.262814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004704, 35.541939, 36.460323>,  <28.226526, 35.492630, 36.789509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004704, 35.541939, 36.460323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737127, -0.386149, -0.554556,
		-0.386149, -0.914162, 0.123273,
		0.554556, -0.123273, 0.822965,
		27.838337, 35.578922, 36.213432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857298, 34.832542, 36.472977>,  <28.226526, 35.492630, 36.789509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857298, 34.832542, 36.472977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914762, 35.115128, 36.195770>,  <27.949242, 35.284679, 36.029446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914762, 35.115128, 36.195770>,  <27.857298, 34.832542, 36.472977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914762, 35.115128, 36.195770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461309, -0.667350, -0.584669,
		-0.875531, -0.235699, -0.421772,
		0.143664, 0.706463, -0.693016,
		27.957861, 35.327068, 35.987865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804245, 34.521877, 35.809540>,  <27.857298, 34.832542, 36.472977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804245, 34.521877, 35.809540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028849, 34.849926, 35.765526>,  <28.163610, 35.046757, 35.739117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028849, 34.849926, 35.765526>,  <27.804245, 34.521877, 35.809540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028849, 34.849926, 35.765526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688683, -0.536893, -0.487301,
		-0.458722, 0.197846, -0.866274,
		0.561507, 0.820124, -0.110031,
		28.197300, 35.095963, 35.732517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041346, 34.520443, 35.113014>,  <27.804245, 34.521877, 35.809540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041346, 34.520443, 35.113014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301138, 34.708054, 35.352409>,  <28.457014, 34.820621, 35.496044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301138, 34.708054, 35.352409>,  <28.041346, 34.520443, 35.113014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301138, 34.708054, 35.352409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711183, -0.653218, -0.259857,
		0.269061, 0.594405, -0.757818,
		0.649481, 0.469030, 0.598486,
		28.495983, 34.848763, 35.531956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656368, 34.881382, 34.737152>,  <28.041346, 34.520443, 35.113014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656368, 34.881382, 34.737152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653873, 34.676281, 35.080555>,  <28.652376, 34.553219, 35.286598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653873, 34.676281, 35.080555>,  <28.656368, 34.881382, 34.737152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653873, 34.676281, 35.080555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682132, -0.629952, -0.371289,
		0.731202, 0.583302, 0.353698,
		-0.006238, -0.512756, 0.858512,
		28.652002, 34.522453, 35.338108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481627, 34.728577, 34.935196>,  <28.656368, 34.881382, 34.737152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481627, 34.728577, 34.935196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194302, 34.474972, 35.049774>,  <29.021906, 34.322807, 35.118523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.194302, 34.474972, 35.049774>,  <29.481627, 34.728577, 34.935196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194302, 34.474972, 35.049774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420062, -0.723449, -0.547878,
		0.554592, -0.273223, 0.785988,
		-0.718315, -0.634012, 0.286449,
		28.978807, 34.284767, 35.135708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773083, 34.135551, 35.196758>,  <29.481627, 34.728577, 34.935196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773083, 34.135551, 35.196758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420118, 33.999893, 35.066322>,  <29.208340, 33.918499, 34.988060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420118, 33.999893, 35.066322>,  <29.773083, 34.135551, 35.196758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420118, 33.999893, 35.066322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444288, -0.828706, -0.340375,
		-0.154798, -0.445229, 0.881935,
		-0.882409, -0.339144, -0.326092,
		29.155396, 33.898151, 34.968494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400900, 33.494690, 35.617699>,  <29.773083, 34.135551, 35.196758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400900, 33.494690, 35.617699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376549, 33.538696, 35.220875>,  <29.361938, 33.565102, 34.982780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376549, 33.538696, 35.220875>,  <29.400900, 33.494690, 35.617699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376549, 33.538696, 35.220875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520591, -0.844517, -0.125604,
		-0.851633, -0.524106, -0.005861,
		-0.060880, 0.110019, -0.992063,
		29.358284, 33.571701, 34.923256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607719, 32.837238, 35.325878>,  <29.400900, 33.494690, 35.617699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607719, 32.837238, 35.325878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645096, 33.084351, 35.013569>,  <29.667522, 33.232620, 34.826183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645096, 33.084351, 35.013569>,  <29.607719, 32.837238, 35.325878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645096, 33.084351, 35.013569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713317, -0.588632, -0.380382,
		-0.694584, -0.521397, -0.495680,
		0.093443, 0.617784, -0.780776,
		29.673128, 33.269688, 34.779335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499710, 32.486305, 34.717014>,  <29.607719, 32.837238, 35.325878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499710, 32.486305, 34.717014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762428, 32.784832, 34.673870>,  <29.920059, 32.963947, 34.647984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762428, 32.784832, 34.673870>,  <29.499710, 32.486305, 34.717014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762428, 32.784832, 34.673870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644584, -0.629888, -0.433305,
		-0.391319, 0.215070, -0.894770,
		0.656796, 0.746315, -0.107857,
		29.959467, 33.008728, 34.641514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272690, 32.532623, 33.966835>,  <29.499710, 32.486305, 34.717014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272690, 32.532623, 33.966835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257362, 32.433765, 33.579548>,  <29.248165, 32.374451, 33.347176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257362, 32.433765, 33.579548>,  <29.272690, 32.532623, 33.966835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257362, 32.433765, 33.579548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157957, -0.958249, 0.238347,
		-0.986702, -0.143804, 0.075757,
		-0.038319, -0.247144, -0.968221,
		29.245867, 32.359623, 33.289082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550947, 33.222771, 34.179359>,  <29.272690, 32.532623, 33.966835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550947, 33.222771, 34.179359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926311, 33.276371, 34.306755>,  <30.151529, 33.308533, 34.383190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926311, 33.276371, 34.306755>,  <29.550947, 33.222771, 34.179359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926311, 33.276371, 34.306755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258034, 0.341245, -0.903864,
		-0.229799, 0.930374, 0.285651,
		0.938409, 0.134000, 0.318486,
		30.207834, 33.316570, 34.402302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890177, 33.953602, 34.083744>,  <29.550947, 33.222771, 34.179359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890177, 33.953602, 34.083744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183590, 33.684143, 34.047680>,  <30.359638, 33.522469, 34.026039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.183590, 33.684143, 34.047680>,  <29.890177, 33.953602, 34.083744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.183590, 33.684143, 34.047680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267114, 0.407724, -0.873162,
		0.624965, 0.616408, 0.479019,
		0.733532, -0.673648, -0.090162,
		30.403650, 33.482048, 34.020630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939362, 34.553532, 33.548927>,  <29.890177, 33.953602, 34.083744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939362, 34.553532, 33.548927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810482, 34.917011, 33.655098>,  <29.733154, 35.135101, 33.718800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810482, 34.917011, 33.655098>,  <29.939362, 34.553532, 33.548927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810482, 34.917011, 33.655098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722506, -0.417209, 0.551291,
		0.611696, -0.014144, 0.790967,
		-0.322201, 0.908701, 0.265424,
		29.713821, 35.189621, 33.734726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596563, 34.972248, 33.537102>,  <29.939362, 34.553532, 33.548927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596563, 34.972248, 33.537102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450439, 35.072655, 33.178539>,  <30.362764, 35.132900, 32.963402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450439, 35.072655, 33.178539>,  <30.596563, 34.972248, 33.537102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450439, 35.072655, 33.178539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630481, -0.641745, -0.436643,
		-0.684867, -0.724676, 0.076175,
		-0.365310, 0.251015, -0.896404,
		30.340847, 35.147961, 32.909618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543596, 34.406769, 33.155731>,  <30.596563, 34.972248, 33.537102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543596, 34.406769, 33.155731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572060, 34.661327, 32.848503>,  <30.589138, 34.814064, 32.664165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572060, 34.661327, 32.848503>,  <30.543596, 34.406769, 33.155731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572060, 34.661327, 32.848503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385860, -0.727638, -0.567145,
		-0.919809, -0.256010, -0.297339,
		0.071160, 0.636397, -0.768072,
		30.593409, 34.852245, 32.618080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164362, 34.260754, 32.479687>,  <30.543596, 34.406769, 33.155731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164362, 34.260754, 32.479687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480717, 34.468620, 32.350414>,  <30.670530, 34.593338, 32.272850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480717, 34.468620, 32.350414>,  <30.164362, 34.260754, 32.479687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480717, 34.468620, 32.350414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183107, -0.704865, -0.685301,
		-0.583925, 0.482820, -0.652623,
		0.790888, 0.519664, -0.323180,
		30.717983, 34.624519, 32.253460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173233, 34.315865, 31.749855>,  <30.164362, 34.260754, 32.479687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173233, 34.315865, 31.749855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558895, 34.398865, 31.816004>,  <30.790293, 34.448666, 31.855694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558895, 34.398865, 31.816004>,  <30.173233, 34.315865, 31.749855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558895, 34.398865, 31.816004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260688, -0.624619, -0.736133,
		-0.049452, 0.752858, -0.656323,
		0.964156, 0.207498, 0.165372,
		30.848143, 34.461113, 31.865616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451982, 34.489506, 31.078062>,  <30.173233, 34.315865, 31.749855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451982, 34.489506, 31.078062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765400, 34.414452, 31.314993>,  <30.953451, 34.369419, 31.457151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765400, 34.414452, 31.314993>,  <30.451982, 34.489506, 31.078062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765400, 34.414452, 31.314993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402735, -0.572566, -0.714124,
		0.473141, 0.798099, -0.373064,
		0.783545, -0.187635, 0.592326,
		31.000463, 34.358162, 31.492691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991127, 34.536869, 30.653284>,  <30.451982, 34.489506, 31.078062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991127, 34.536869, 30.653284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135710, 34.334682, 30.966681>,  <31.222460, 34.213371, 31.154718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135710, 34.334682, 30.966681>,  <30.991127, 34.536869, 30.653284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135710, 34.334682, 30.966681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457669, -0.635921, -0.621404,
		0.812335, 0.583190, 0.001477,
		0.361457, -0.505464, 0.783489,
		31.244146, 34.183044, 31.201727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674597, 34.524204, 30.636454>,  <30.991127, 34.536869, 30.653284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674597, 34.524204, 30.636454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592104, 34.192791, 30.844683>,  <31.542608, 33.993942, 30.969620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592104, 34.192791, 30.844683>,  <31.674597, 34.524204, 30.636454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592104, 34.192791, 30.844683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428725, -0.554737, -0.713065,
		0.879582, 0.076127, 0.469618,
		-0.206231, -0.828536, 0.520574,
		31.530235, 33.944229, 31.000854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174870, 34.039089, 30.542213>,  <31.674597, 34.524204, 30.636454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174870, 34.039089, 30.542213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884775, 33.798836, 30.676838>,  <31.710718, 33.654686, 30.757612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884775, 33.798836, 30.676838>,  <32.174870, 34.039089, 30.542213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884775, 33.798836, 30.676838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239778, -0.678572, -0.694296,
		0.645397, -0.422829, 0.636143,
		-0.725238, -0.600630, 0.336563,
		31.667204, 33.618649, 30.777807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453480, 33.322823, 30.603436>,  <32.174870, 34.039089, 30.542213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453480, 33.322823, 30.603436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056717, 33.313183, 30.553564>,  <31.818661, 33.307400, 30.523642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056717, 33.313183, 30.553564>,  <32.453480, 33.322823, 30.603436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056717, 33.313183, 30.553564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112032, -0.628344, -0.769826,
		-0.059789, -0.777562, 0.625957,
		-0.991904, -0.024100, -0.124680,
		31.759146, 33.305954, 30.516159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197655, 32.623081, 30.700445>,  <32.453480, 33.322823, 30.603436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197655, 32.623081, 30.700445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974899, 32.847366, 30.455343>,  <31.841246, 32.981937, 30.308281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974899, 32.847366, 30.455343>,  <32.197655, 32.623081, 30.700445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974899, 32.847366, 30.455343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076579, -0.699938, -0.710087,
		-0.827047, -0.442366, 0.346851,
		-0.556892, 0.560713, -0.612757,
		31.807831, 33.015579, 30.271517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113400, 32.288258, 30.119034>,  <32.197655, 32.623081, 30.700445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113400, 32.288258, 30.119034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869247, 32.578381, 29.991678>,  <31.722757, 32.752453, 29.915266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869247, 32.578381, 29.991678>,  <32.113400, 32.288258, 30.119034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869247, 32.578381, 29.991678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267821, -0.567246, -0.778784,
		-0.745461, -0.390080, 0.540486,
		-0.610377, 0.725306, -0.318388,
		31.686134, 32.795971, 29.896162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565311, 31.976286, 29.850382>,  <32.113400, 32.288258, 30.119034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565311, 31.976286, 29.850382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563854, 32.330967, 29.665453>,  <31.562981, 32.543777, 29.554495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563854, 32.330967, 29.665453>,  <31.565311, 31.976286, 29.850382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563854, 32.330967, 29.665453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196846, -0.453917, -0.869029,
		-0.980428, 0.087842, 0.176197,
		-0.003642, 0.886704, -0.462324,
		31.562761, 32.596977, 29.526756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953302, 31.940752, 29.491520>,  <31.565311, 31.976286, 29.850382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953302, 31.940752, 29.491520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198383, 32.207836, 29.322401>,  <31.345432, 32.368088, 29.220930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198383, 32.207836, 29.322401>,  <30.953302, 31.940752, 29.491520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198383, 32.207836, 29.322401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299302, -0.299086, -0.906072,
		-0.731445, 0.681699, 0.016595,
		0.612705, 0.667709, -0.422798,
		31.382195, 32.408150, 29.195562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603094, 32.192131, 28.962318>,  <30.953302, 31.940752, 29.491520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603094, 32.192131, 28.962318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975170, 32.290485, 28.853294>,  <31.198416, 32.349499, 28.787880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975170, 32.290485, 28.853294>,  <30.603094, 32.192131, 28.962318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975170, 32.290485, 28.853294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217037, -0.230434, -0.948575,
		-0.296045, 0.941510, -0.160982,
		0.930189, 0.245882, -0.272561,
		31.254227, 32.364250, 28.771526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505196, 32.520924, 28.369009>,  <30.603094, 32.192131, 28.962318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505196, 32.520924, 28.369009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899103, 32.451576, 28.363733>,  <31.135448, 32.409969, 28.360567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.899103, 32.451576, 28.363733>,  <30.505196, 32.520924, 28.369009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899103, 32.451576, 28.363733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045731, -0.185080, -0.981659,
		0.167747, 0.967310, -0.190189,
		0.984769, -0.173368, -0.013190,
		31.194534, 32.399567, 28.359776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834677, 32.934555, 27.788137>,  <30.505196, 32.520924, 28.369009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834677, 32.934555, 27.788137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082514, 32.632984, 27.875494>,  <31.231216, 32.452042, 27.927908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082514, 32.632984, 27.875494>,  <30.834677, 32.934555, 27.788137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082514, 32.632984, 27.875494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100242, -0.199952, -0.974665,
		0.778495, 0.625788, -0.048314,
		0.619594, -0.753929, 0.218392,
		31.268393, 32.406807, 27.941011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437933, 33.025532, 27.447866>,  <30.834677, 32.934555, 27.788137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437933, 33.025532, 27.447866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440098, 32.632175, 27.520435>,  <31.441397, 32.396160, 27.563976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440098, 32.632175, 27.520435>,  <31.437933, 33.025532, 27.447866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440098, 32.632175, 27.520435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071116, -0.180586, -0.980985,
		0.997453, 0.018213, 0.068958,
		0.005414, -0.983391, 0.181422,
		31.441721, 32.337158, 27.574862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985140, 32.767509, 26.990633>,  <31.437933, 33.025532, 27.447866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985140, 32.767509, 26.990633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791441, 32.433529, 27.095221>,  <31.675222, 32.233143, 27.157974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791441, 32.433529, 27.095221>,  <31.985140, 32.767509, 26.990633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791441, 32.433529, 27.095221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157848, -0.377314, -0.912534,
		0.860576, -0.400617, 0.314507,
		-0.484245, -0.834949, 0.261471,
		31.646168, 32.183044, 27.173662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431835, 32.235043, 26.600548>,  <31.985140, 32.767509, 26.990633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431835, 32.235043, 26.600548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079681, 32.070206, 26.694435>,  <31.868387, 31.971302, 26.750767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079681, 32.070206, 26.694435>,  <32.431835, 32.235043, 26.600548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079681, 32.070206, 26.694435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028584, -0.540129, -0.841097,
		0.473391, -0.733783, 0.487303,
		-0.880389, -0.412097, 0.234717,
		31.815565, 31.946577, 26.764851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565109, 31.625309, 26.463564>,  <32.431835, 32.235043, 26.600548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565109, 31.625309, 26.463564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167507, 31.667538, 26.452173>,  <31.928946, 31.692875, 26.445339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167507, 31.667538, 26.452173>,  <32.565109, 31.625309, 26.463564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167507, 31.667538, 26.452173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026301, -0.483605, -0.874891,
		-0.106136, -0.868896, 0.483482,
		-0.994003, 0.105573, -0.028475,
		31.869307, 31.699209, 26.443630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340187, 31.057308, 26.099972>,  <32.565109, 31.625309, 26.463564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340187, 31.057308, 26.099972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042603, 31.319742, 26.049255>,  <31.864052, 31.477203, 26.018826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042603, 31.319742, 26.049255>,  <32.340187, 31.057308, 26.099972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042603, 31.319742, 26.049255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160922, -0.360067, -0.918943,
		-0.648558, -0.663253, 0.373454,
		-0.743960, 0.656085, -0.126792,
		31.819414, 31.516567, 26.011217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799307, 30.560694, 25.777594>,  <32.340187, 31.057308, 26.099972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799307, 30.560694, 25.777594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709471, 30.944668, 25.710556>,  <31.655569, 31.175053, 25.670334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709471, 30.944668, 25.710556>,  <31.799307, 30.560694, 25.777594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709471, 30.944668, 25.710556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264760, -0.225630, -0.937546,
		-0.937796, -0.166191, 0.304826,
		-0.224590, 0.959933, -0.167594,
		31.642094, 31.232647, 25.660278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320629, 30.542198, 25.213718>,  <31.799307, 30.560694, 25.777594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320629, 30.542198, 25.213718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401405, 30.933949, 25.211006>,  <31.449871, 31.168999, 25.209379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401405, 30.933949, 25.211006>,  <31.320629, 30.542198, 25.213718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401405, 30.933949, 25.211006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063739, -0.020051, -0.997765,
		-0.977321, 0.201059, -0.066473,
		0.201943, 0.979374, -0.006781,
		31.461988, 31.227760, 25.208971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847441, 30.910044, 24.762815>,  <31.320629, 30.542198, 25.213718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847441, 30.910044, 24.762815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150652, 31.170887, 24.767651>,  <31.332579, 31.327393, 24.770552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150652, 31.170887, 24.767651>,  <30.847441, 30.910044, 24.762815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150652, 31.170887, 24.767651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034189, 0.058238, -0.997717,
		-0.651323, 0.755887, 0.066441,
		0.758030, 0.652107, 0.012089,
		31.378061, 31.366520, 24.771276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613388, 31.468103, 24.283766>,  <30.847441, 30.910044, 24.762815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613388, 31.468103, 24.283766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012003, 31.460896, 24.316236>,  <31.251171, 31.456572, 24.335720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012003, 31.460896, 24.316236>,  <30.613388, 31.468103, 24.283766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012003, 31.460896, 24.316236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082775, 0.121859, -0.989090,
		0.007930, 0.992384, 0.122928,
		0.996537, -0.018019, 0.081178,
		31.310965, 31.455490, 24.340590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767719, 32.007248, 23.863197>,  <30.613388, 31.468103, 24.283766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767719, 32.007248, 23.863197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105631, 31.797749, 23.907072>,  <31.308378, 31.672049, 23.933397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105631, 31.797749, 23.907072>,  <30.767719, 32.007248, 23.863197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105631, 31.797749, 23.907072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125761, -0.004920, -0.992048,
		0.520127, 0.851856, 0.061712,
		0.844779, -0.523752, 0.109689,
		31.359064, 31.640623, 23.939980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277117, 32.241467, 23.331715>,  <30.767719, 32.007248, 23.863197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277117, 32.241467, 23.331715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397469, 31.875538, 23.439476>,  <31.469681, 31.655981, 23.504133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397469, 31.875538, 23.439476>,  <31.277117, 32.241467, 23.331715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397469, 31.875538, 23.439476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168182, -0.227166, -0.959224,
		0.938715, 0.333921, 0.085506,
		0.300881, -0.914818, 0.269403,
		31.487734, 31.601093, 23.520296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870964, 32.186794, 22.929750>,  <31.277117, 32.241467, 23.331715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870964, 32.186794, 22.929750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758110, 31.817427, 23.033829>,  <31.690397, 31.595806, 23.096275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758110, 31.817427, 23.033829>,  <31.870964, 32.186794, 22.929750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758110, 31.817427, 23.033829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182523, -0.317924, -0.930382,
		0.941852, -0.215002, 0.258242,
		-0.282136, -0.923417, 0.260195,
		31.673470, 31.540401, 23.111887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265331, 31.667450, 22.521345>,  <31.870964, 32.186794, 22.929750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265331, 31.667450, 22.521345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950642, 31.469147, 22.668474>,  <31.761827, 31.350164, 22.756752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.950642, 31.469147, 22.668474>,  <32.265331, 31.667450, 22.521345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950642, 31.469147, 22.668474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127740, -0.452215, -0.882714,
		0.603947, -0.741436, 0.292440,
		-0.786722, -0.495756, 0.367825,
		31.714624, 31.320419, 22.778822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428318, 30.964882, 22.398764>,  <32.265331, 31.667450, 22.521345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428318, 30.964882, 22.398764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036835, 31.042048, 22.426800>,  <31.801945, 31.088346, 22.443623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036835, 31.042048, 22.426800>,  <32.428318, 30.964882, 22.398764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036835, 31.042048, 22.426800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098796, -0.143442, -0.984715,
		-0.179916, -0.970673, 0.159448,
		-0.978708, 0.192919, 0.070091,
		31.743221, 31.099922, 22.447826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199993, 30.437746, 22.087538>,  <32.428318, 30.964882, 22.398764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199993, 30.437746, 22.087538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860645, 30.649508, 22.087418>,  <31.657036, 30.776566, 22.087345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860645, 30.649508, 22.087418>,  <32.199993, 30.437746, 22.087538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860645, 30.649508, 22.087418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202791, -0.325496, -0.923541,
		-0.489027, -0.783442, 0.383499,
		-0.848368, 0.529407, -0.000302,
		31.606134, 30.808329, 22.087328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645117, 29.965521, 21.722631>,  <32.199993, 30.437746, 22.087538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645117, 29.965521, 21.722631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547262, 30.352222, 21.692856>,  <31.488550, 30.584244, 21.674990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547262, 30.352222, 21.692856>,  <31.645117, 29.965521, 21.722631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547262, 30.352222, 21.692856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178133, -0.120276, -0.976628,
		-0.953112, -0.225658, 0.201634,
		-0.244636, 0.966753, -0.074439,
		31.473871, 30.642248, 21.670525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073441, 29.971697, 21.207363>,  <31.645117, 29.965521, 21.722631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073441, 29.971697, 21.207363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257498, 30.326813, 21.211393>,  <31.367931, 30.539883, 21.213812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257498, 30.326813, 21.211393>,  <31.073441, 29.971697, 21.207363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257498, 30.326813, 21.211393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011086, 0.005600, -0.999923,
		-0.887776, 0.460219, -0.007265,
		0.460143, 0.887788, 0.010073,
		31.395540, 30.593149, 21.214415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890791, 30.242445, 20.623949>,  <31.073441, 29.971697, 21.207363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890791, 30.242445, 20.623949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178869, 30.512098, 20.689507>,  <31.351717, 30.673891, 20.728842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178869, 30.512098, 20.689507>,  <30.890791, 30.242445, 20.623949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178869, 30.512098, 20.689507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182858, 0.043434, -0.982179,
		-0.669239, 0.737331, -0.091990,
		0.720196, 0.674134, 0.163895,
		31.394928, 30.714338, 20.738674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848005, 30.678188, 20.090750>,  <30.890791, 30.242445, 20.623949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848005, 30.678188, 20.090750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212868, 30.733709, 20.245001>,  <31.431786, 30.767021, 20.337551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212868, 30.733709, 20.245001>,  <30.848005, 30.678188, 20.090750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212868, 30.733709, 20.245001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322464, 0.337696, -0.884296,
		-0.252967, 0.930965, 0.263272,
		0.912154, 0.138802, 0.385628,
		31.486513, 30.775351, 20.360689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096756, 31.357449, 19.865213>,  <30.848005, 30.678188, 20.090750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096756, 31.357449, 19.865213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422440, 31.145294, 19.959663>,  <31.617849, 31.018002, 20.016333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422440, 31.145294, 19.959663>,  <31.096756, 31.357449, 19.865213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422440, 31.145294, 19.959663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405865, 0.229178, -0.884732,
		0.415133, 0.816193, 0.401863,
		0.814210, -0.530384, 0.236125,
		31.666702, 30.986179, 20.030500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569963, 31.632612, 19.522215>,  <31.096756, 31.357449, 19.865213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569963, 31.632612, 19.522215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744886, 31.283447, 19.608732>,  <31.849840, 31.073948, 19.660643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744886, 31.283447, 19.608732>,  <31.569963, 31.632612, 19.522215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744886, 31.283447, 19.608732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494520, 0.032528, -0.868558,
		0.751140, 0.486789, 0.445898,
		0.437308, -0.872914, 0.216293,
		31.876080, 31.021572, 19.673620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261181, 31.772350, 19.497297>,  <31.569963, 31.632612, 19.522215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261181, 31.772350, 19.497297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271904, 31.376165, 19.443237>,  <32.278339, 31.138454, 19.410801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271904, 31.376165, 19.443237>,  <32.261181, 31.772350, 19.497297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271904, 31.376165, 19.443237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628110, 0.121868, -0.768522,
		0.777663, -0.064286, 0.625386,
		0.026810, -0.990462, -0.135151,
		32.279945, 31.079027, 19.402693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857601, 31.688696, 19.188206>,  <32.261181, 31.772350, 19.497297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857601, 31.688696, 19.188206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701569, 31.331289, 19.099245>,  <32.607948, 31.116844, 19.045868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701569, 31.331289, 19.099245>,  <32.857601, 31.688696, 19.188206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701569, 31.331289, 19.099245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574621, -0.047494, -0.817041,
		0.719478, -0.446508, 0.531961,
		-0.390081, -0.893518, -0.222402,
		32.584545, 31.063234, 19.032524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469566, 31.342443, 19.007830>,  <32.857601, 31.688696, 19.188206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469566, 31.342443, 19.007830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154575, 31.150942, 18.852562>,  <32.965580, 31.036041, 18.759401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.154575, 31.150942, 18.852562>,  <33.469566, 31.342443, 19.007830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154575, 31.150942, 18.852562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480845, -0.083225, -0.872847,
		0.385575, -0.873995, 0.295745,
		-0.787477, -0.478755, -0.388167,
		32.918331, 31.007315, 18.736113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715038, 30.684002, 18.693962>,  <33.469566, 31.342443, 19.007830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715038, 30.684002, 18.693962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374069, 30.810347, 18.527294>,  <33.169487, 30.886152, 18.427294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374069, 30.810347, 18.527294>,  <33.715038, 30.684002, 18.693962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374069, 30.810347, 18.527294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462074, 0.082152, -0.883028,
		-0.244683, -0.945243, -0.215979,
		-0.852419, 0.315860, -0.416671,
		33.118343, 30.905104, 18.402292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656734, 30.325171, 18.086681>,  <33.715038, 30.684002, 18.693962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656734, 30.325171, 18.086681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407585, 30.630600, 18.018576>,  <33.258095, 30.813858, 17.977713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407585, 30.630600, 18.018576>,  <33.656734, 30.325171, 18.086681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407585, 30.630600, 18.018576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375329, 0.100710, -0.921404,
		-0.686413, -0.637818, -0.349320,
		-0.622869, 0.763574, -0.170263,
		33.220726, 30.859673, 17.967497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437504, 30.272797, 17.341387>,  <33.656734, 30.325171, 18.086681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437504, 30.272797, 17.341387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354603, 30.648714, 17.450077>,  <33.304863, 30.874264, 17.515291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354603, 30.648714, 17.450077>,  <33.437504, 30.272797, 17.341387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354603, 30.648714, 17.450077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319355, 0.327533, -0.889232,
		-0.924695, -0.097514, -0.368009,
		-0.207248, 0.939794, 0.271726,
		33.292427, 30.930653, 17.531595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146553, 30.549854, 16.765501>,  <33.437504, 30.272797, 17.341387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146553, 30.549854, 16.765501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264759, 30.868650, 16.976204>,  <33.335682, 31.059929, 17.102627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264759, 30.868650, 16.976204>,  <33.146553, 30.549854, 16.765501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264759, 30.868650, 16.976204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460615, 0.364196, -0.809441,
		-0.836961, 0.481837, -0.259480,
		0.295517, 0.796991, 0.526759,
		33.353413, 31.107748, 17.134232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842651, 31.195511, 16.513086>,  <33.146553, 30.549854, 16.765501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842651, 31.195511, 16.513086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200287, 31.249044, 16.684061>,  <33.414867, 31.281164, 16.786646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200287, 31.249044, 16.684061>,  <32.842651, 31.195511, 16.513086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200287, 31.249044, 16.684061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336274, 0.429799, -0.837969,
		-0.295860, 0.892951, 0.339272,
		0.894084, 0.133833, 0.427437,
		33.468513, 31.289194, 16.812292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020309, 31.925806, 16.412580>,  <32.842651, 31.195511, 16.513086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020309, 31.925806, 16.412580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303402, 31.643539, 16.399040>,  <33.473259, 31.474178, 16.390915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303402, 31.643539, 16.399040>,  <33.020309, 31.925806, 16.412580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303402, 31.643539, 16.399040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271158, 0.315574, -0.909333,
		0.652370, 0.634385, 0.414690,
		0.707733, -0.705668, -0.033853,
		33.515720, 31.431839, 16.388884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483204, 32.398685, 16.595535>,  <33.020309, 31.925806, 16.412580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483204, 32.398685, 16.595535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568459, 32.787113, 16.638601>,  <33.619610, 33.020172, 16.664440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568459, 32.787113, 16.638601>,  <33.483204, 32.398685, 16.595535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568459, 32.787113, 16.638601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142474, 0.139909, -0.979860,
		-0.966579, 0.193501, 0.168172,
		0.213133, 0.971073, 0.107665,
		33.632397, 33.078434, 16.670900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916100, 32.829811, 16.310944>,  <33.483204, 32.398685, 16.595535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916100, 32.829811, 16.310944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265686, 33.024002, 16.319880>,  <33.475437, 33.140514, 16.325241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265686, 33.024002, 16.319880>,  <32.916100, 32.829811, 16.310944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265686, 33.024002, 16.319880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003244, 0.040142, -0.999189,
		-0.485976, 0.873330, 0.033508,
		0.873966, 0.485473, 0.022341,
		33.527878, 33.169643, 16.326582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995468, 33.554897, 15.899967>,  <32.916100, 32.829811, 16.310944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995468, 33.554897, 15.899967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313896, 33.314869, 15.868516>,  <33.504955, 33.170853, 15.849645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313896, 33.314869, 15.868516>,  <32.995468, 33.554897, 15.899967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313896, 33.314869, 15.868516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254372, -0.213874, -0.943161,
		0.549145, 0.770828, -0.322900,
		0.796075, -0.600069, -0.078629,
		33.552719, 33.134850, 15.844927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230610, 33.158936, 15.261779>,  <32.995468, 33.554897, 15.899967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230610, 33.158936, 15.261779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152599, 32.766754, 15.251359>,  <33.105793, 32.531445, 15.245107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152599, 32.766754, 15.251359>,  <33.230610, 33.158936, 15.261779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152599, 32.766754, 15.251359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325882, -0.039725, -0.944576,
		0.925077, -0.192704, 0.327259,
		-0.195024, -0.980452, -0.026050,
		33.094093, 32.472618, 15.243544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643795, 32.546726, 15.595810>,  <33.230610, 33.158936, 15.261779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643795, 32.546726, 15.595810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776299, 32.878490, 15.415879>,  <33.855801, 33.077549, 15.307920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776299, 32.878490, 15.415879>,  <33.643795, 32.546726, 15.595810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776299, 32.878490, 15.415879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180458, 0.412251, 0.893020,
		0.926122, -0.376997, -0.013111,
		0.331261, 0.829411, -0.449827,
		33.875675, 33.127312, 15.280931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340916, 32.745815, 15.739269>,  <33.643795, 32.546726, 15.595810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340916, 32.745815, 15.739269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143749, 33.084297, 15.658302>,  <34.025452, 33.287388, 15.609722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143749, 33.084297, 15.658302>,  <34.340916, 32.745815, 15.739269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143749, 33.084297, 15.658302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126983, 0.300116, 0.945413,
		0.860763, 0.440301, -0.255385,
		-0.492912, 0.846206, -0.202418,
		33.995876, 33.338158, 15.597577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701633, 33.363396, 15.965673>,  <34.340916, 32.745815, 15.739269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701633, 33.363396, 15.965673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305431, 33.418331, 15.963293>,  <34.067711, 33.451294, 15.961864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305431, 33.418331, 15.963293>,  <34.701633, 33.363396, 15.965673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305431, 33.418331, 15.963293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030856, 0.264309, 0.963944,
		0.133963, 0.954609, -0.266038,
		-0.990506, 0.137342, -0.005952,
		34.008278, 33.459534, 15.961508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585091, 33.915718, 16.338032>,  <34.701633, 33.363396, 15.965673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585091, 33.915718, 16.338032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254208, 33.691456, 16.323078>,  <34.055679, 33.556900, 16.314106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254208, 33.691456, 16.323078>,  <34.585091, 33.915718, 16.338032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254208, 33.691456, 16.323078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065595, 0.030278, 0.997387,
		-0.558056, 0.827498, -0.061822,
		-0.827207, -0.560652, -0.037383,
		34.006046, 33.523258, 16.311863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051674, 34.324451, 16.716959>,  <34.585091, 33.915718, 16.338032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051674, 34.324451, 16.716959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904701, 33.952465, 16.711905>,  <33.816517, 33.729275, 16.708872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.904701, 33.952465, 16.711905>,  <34.051674, 34.324451, 16.716959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904701, 33.952465, 16.711905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187448, 0.060740, 0.980395,
		-0.910964, 0.362599, -0.196637,
		-0.367434, -0.929964, -0.012637,
		33.794472, 33.673477, 16.708113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439358, 34.313606, 17.109077>,  <34.051674, 34.324451, 16.716959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439358, 34.313606, 17.109077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525627, 33.923100, 17.116880>,  <33.577389, 33.688793, 17.121561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525627, 33.923100, 17.116880>,  <33.439358, 34.313606, 17.109077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525627, 33.923100, 17.116880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273930, -0.041317, 0.960862,
		-0.937256, -0.212574, -0.276340,
		0.215671, -0.976271, 0.019506,
		33.590328, 33.630219, 17.122732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921116, 33.901936, 17.520702>,  <33.439358, 34.313606, 17.109077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921116, 33.901936, 17.520702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256634, 33.684177, 17.517809>,  <33.457947, 33.553524, 17.516073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256634, 33.684177, 17.517809>,  <32.921116, 33.901936, 17.520702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256634, 33.684177, 17.517809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111861, -0.185325, 0.976290,
		-0.532826, -0.818102, -0.216347,
		0.838799, -0.544394, -0.007232,
		33.508274, 33.520859, 17.515638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660919, 33.271671, 17.849602>,  <32.921116, 33.901936, 17.520702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660919, 33.271671, 17.849602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052711, 33.351177, 17.862902>,  <33.287788, 33.398880, 17.870882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052711, 33.351177, 17.862902>,  <32.660919, 33.271671, 17.849602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052711, 33.351177, 17.862902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032817, -0.005478, 0.999446,
		0.198837, -0.980032, 0.001157,
		0.979483, 0.198765, 0.033251,
		33.346558, 33.410805, 17.872877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785290, 32.836002, 18.265139>,  <32.660919, 33.271671, 17.849602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785290, 32.836002, 18.265139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121925, 33.051815, 18.275160>,  <33.323906, 33.181301, 18.281172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121925, 33.051815, 18.275160>,  <32.785290, 32.836002, 18.265139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121925, 33.051815, 18.275160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072911, -0.159448, 0.984510,
		0.535169, -0.826730, -0.173528,
		0.841593, 0.539531, 0.025054,
		33.374405, 33.213673, 18.282677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219120, 32.484055, 18.744486>,  <32.785290, 32.836002, 18.265139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219120, 32.484055, 18.744486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394077, 32.841415, 18.703459>,  <33.499050, 33.055832, 18.678843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394077, 32.841415, 18.703459>,  <33.219120, 32.484055, 18.744486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394077, 32.841415, 18.703459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127993, 0.051045, 0.990461,
		0.890115, -0.446347, -0.092023,
		0.437392, 0.893403, -0.102565,
		33.525295, 33.109436, 18.672689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912003, 32.468109, 19.080902>,  <33.219120, 32.484055, 18.744486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912003, 32.468109, 19.080902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783478, 32.846142, 19.104868>,  <33.706364, 33.072960, 19.119247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783478, 32.846142, 19.104868>,  <33.912003, 32.468109, 19.080902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783478, 32.846142, 19.104868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040185, -0.049606, 0.997960,
		0.946122, 0.323061, -0.022039,
		-0.321309, 0.945077, 0.059916,
		33.687084, 33.129665, 19.122843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182892, 32.629101, 19.767120>,  <33.912003, 32.468109, 19.080902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182892, 32.629101, 19.767120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943348, 32.938934, 19.685743>,  <33.799622, 33.124832, 19.636917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943348, 32.938934, 19.685743>,  <34.182892, 32.629101, 19.767120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943348, 32.938934, 19.685743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038168, 0.281350, 0.958846,
		0.799941, 0.566452, -0.198055,
		-0.598863, 0.774580, -0.203443,
		33.763687, 33.171307, 19.624710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579945, 33.127647, 20.108662>,  <34.182892, 32.629101, 19.767120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579945, 33.127647, 20.108662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203251, 33.254162, 20.062874>,  <33.977234, 33.330070, 20.035400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203251, 33.254162, 20.062874>,  <34.579945, 33.127647, 20.108662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203251, 33.254162, 20.062874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048698, 0.208528, 0.976803,
		0.332822, 0.925461, -0.180975,
		-0.941731, 0.316288, -0.114471,
		33.920731, 33.349049, 20.028532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587860, 33.763901, 20.551149>,  <34.579945, 33.127647, 20.108662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587860, 33.763901, 20.551149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209290, 33.653114, 20.484737>,  <33.982147, 33.586643, 20.444889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209290, 33.653114, 20.484737>,  <34.587860, 33.763901, 20.551149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209290, 33.653114, 20.484737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255246, 0.326692, 0.910012,
		-0.197797, 0.903640, -0.379884,
		-0.946428, -0.276962, -0.166032,
		33.925362, 33.570026, 20.434927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158783, 34.307304, 20.934483>,  <34.587860, 33.763901, 20.551149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158783, 34.307304, 20.934483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955196, 33.965694, 20.891407>,  <33.833046, 33.760727, 20.865561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955196, 33.965694, 20.891407>,  <34.158783, 34.307304, 20.934483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955196, 33.965694, 20.891407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460298, 0.164308, 0.872427,
		-0.727380, 0.493603, -0.476733,
		-0.508963, -0.854025, -0.107691,
		33.802509, 33.709488, 20.859100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475002, 34.457623, 21.062273>,  <34.158783, 34.307304, 20.934483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475002, 34.457623, 21.062273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544220, 34.071388, 21.139942>,  <33.585751, 33.839649, 21.186543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544220, 34.071388, 21.139942>,  <33.475002, 34.457623, 21.062273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544220, 34.071388, 21.139942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445734, 0.099024, 0.889672,
		-0.878280, -0.240502, -0.413258,
		0.173046, -0.965585, 0.194171,
		33.596134, 33.781712, 21.198193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911293, 34.268044, 21.430473>,  <33.475002, 34.457623, 21.062273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911293, 34.268044, 21.430473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168259, 33.968098, 21.493744>,  <33.322437, 33.788132, 21.531706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168259, 33.968098, 21.493744>,  <32.911293, 34.268044, 21.430473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168259, 33.968098, 21.493744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426912, -0.178750, 0.886451,
		-0.636440, -0.636992, -0.434955,
		0.642410, -0.749860, 0.158175,
		33.360981, 33.743141, 21.541197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506371, 33.813568, 21.851715>,  <32.911293, 34.268044, 21.430473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506371, 33.813568, 21.851715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875751, 33.663322, 21.883108>,  <33.097378, 33.573177, 21.901943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875751, 33.663322, 21.883108>,  <32.506371, 33.813568, 21.851715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875751, 33.663322, 21.883108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181885, -0.248367, 0.951437,
		-0.337881, -0.892876, -0.297672,
		0.923447, -0.375615, 0.078482,
		33.152786, 33.550640, 21.906652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427311, 33.056553, 21.919874>,  <32.506371, 33.813568, 21.851715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427311, 33.056553, 21.919874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746220, 33.223351, 22.094452>,  <32.937565, 33.323429, 22.199198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746220, 33.223351, 22.094452>,  <32.427311, 33.056553, 21.919874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746220, 33.223351, 22.094452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433509, -0.107589, 0.894704,
		0.420039, -0.902521, 0.094991,
		0.797269, 0.416990, 0.436442,
		32.985401, 33.348446, 22.225384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464714, 32.719505, 22.554380>,  <32.427311, 33.056553, 21.919874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464714, 32.719505, 22.554380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681469, 33.050564, 22.612833>,  <32.811523, 33.249199, 22.647903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681469, 33.050564, 22.612833>,  <32.464714, 32.719505, 22.554380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681469, 33.050564, 22.612833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283015, 0.015981, 0.958982,
		0.791364, -0.561020, 0.242897,
		0.541890, 0.827648, 0.146130,
		32.844036, 33.298859, 22.656672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768917, 32.702816, 23.280087>,  <32.464714, 32.719505, 22.554380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768917, 32.702816, 23.280087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848991, 33.088848, 23.212505>,  <32.897038, 33.320469, 23.171957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848991, 33.088848, 23.212505>,  <32.768917, 32.702816, 23.280087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848991, 33.088848, 23.212505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357166, 0.232460, 0.904652,
		0.912336, -0.120754, 0.391229,
		0.200186, 0.965081, -0.168952,
		32.909046, 33.378372, 23.161819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951591, 33.029488, 23.999466>,  <32.768917, 32.702816, 23.280087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951591, 33.029488, 23.999466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821762, 33.318840, 23.755705>,  <32.743866, 33.492451, 23.609447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821762, 33.318840, 23.755705>,  <32.951591, 33.029488, 23.999466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821762, 33.318840, 23.755705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425026, 0.464033, 0.777191,
		0.844989, 0.511267, 0.156843,
		-0.324572, 0.723380, -0.609405,
		32.724392, 33.535854, 23.572884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149490, 33.660938, 24.286953>,  <32.951591, 33.029488, 23.999466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149490, 33.660938, 24.286953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857777, 33.779980, 24.040512>,  <32.682751, 33.851402, 23.892647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857777, 33.779980, 24.040512>,  <33.149490, 33.660938, 24.286953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857777, 33.779980, 24.040512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390508, 0.558352, 0.731947,
		0.561831, 0.774388, -0.290980,
		-0.729280, 0.297601, -0.616104,
		32.638992, 33.869259, 23.855680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102032, 34.398804, 24.256638>,  <33.149490, 33.660938, 24.286953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102032, 34.398804, 24.256638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738804, 34.292667, 24.127018>,  <32.520866, 34.228985, 24.049246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738804, 34.292667, 24.127018>,  <33.102032, 34.398804, 24.256638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738804, 34.292667, 24.127018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412076, 0.704371, 0.577975,
		0.074890, 0.658373, -0.748957,
		-0.908067, -0.265342, -0.324050,
		32.466385, 34.213066, 24.029802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779522, 35.010136, 24.151016>,  <33.102032, 34.398804, 24.256638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779522, 35.010136, 24.151016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474735, 34.751541, 24.166285>,  <32.291862, 34.596382, 24.175446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474735, 34.751541, 24.166285>,  <32.779522, 35.010136, 24.151016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474735, 34.751541, 24.166285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481411, 0.604860, 0.634340,
		-0.433182, 0.464970, -0.772111,
		-0.761969, -0.646488, 0.038173,
		32.246143, 34.557594, 24.177736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157665, 35.369202, 24.191206>,  <32.779522, 35.010136, 24.151016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157665, 35.369202, 24.191206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019794, 35.014221, 24.313604>,  <31.937073, 34.801235, 24.387043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019794, 35.014221, 24.313604>,  <32.157665, 35.369202, 24.191206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019794, 35.014221, 24.313604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534618, 0.453519, 0.713095,
		-0.771610, 0.082196, -0.630763,
		-0.344677, -0.887448, 0.305996,
		31.916391, 34.747986, 24.405403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438120, 35.502571, 24.416193>,  <32.157665, 35.369202, 24.191206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438120, 35.502571, 24.416193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525898, 35.156818, 24.597162>,  <31.578566, 34.949368, 24.705744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525898, 35.156818, 24.597162>,  <31.438120, 35.502571, 24.416193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525898, 35.156818, 24.597162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382984, 0.350182, 0.854807,
		-0.897311, -0.360855, -0.254199,
		0.219445, -0.864382, 0.452423,
		31.591732, 34.897503, 24.732889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845043, 35.346775, 24.922083>,  <31.438120, 35.502571, 24.416193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845043, 35.346775, 24.922083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150700, 35.120354, 25.045805>,  <31.334093, 34.984501, 25.120039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150700, 35.120354, 25.045805>,  <30.845043, 35.346775, 24.922083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150700, 35.120354, 25.045805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208129, 0.237503, 0.948828,
		-0.610548, -0.789416, 0.063674,
		0.764143, -0.566052, 0.309307,
		31.379942, 34.950539, 25.138597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580544, 34.919144, 25.442846>,  <30.845043, 35.346775, 24.922083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580544, 34.919144, 25.442846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974731, 34.958153, 25.498468>,  <31.211245, 34.981560, 25.531841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974731, 34.958153, 25.498468>,  <30.580544, 34.919144, 25.442846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974731, 34.958153, 25.498468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148187, 0.093645, 0.984516,
		0.082951, -0.990822, 0.106730,
		0.985474, 0.097483, 0.139059,
		31.270372, 34.987408, 25.540184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754219, 34.557667, 26.069960>,  <30.580544, 34.919144, 25.442846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754219, 34.557667, 26.069960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063198, 34.808651, 26.030731>,  <31.248585, 34.959240, 26.007195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063198, 34.808651, 26.030731>,  <30.754219, 34.557667, 26.069960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063198, 34.808651, 26.030731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045842, 0.209112, 0.976817,
		0.633423, -0.750043, 0.190292,
		0.772447, 0.627461, -0.098073,
		31.294931, 34.996891, 26.001310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098608, 34.472462, 26.683950>,  <30.754219, 34.557667, 26.069960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098608, 34.472462, 26.683950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301794, 34.792343, 26.555925>,  <31.423706, 34.984272, 26.479111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301794, 34.792343, 26.555925>,  <31.098608, 34.472462, 26.683950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301794, 34.792343, 26.555925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109375, 0.308678, 0.944857,
		0.854406, -0.514961, 0.069329,
		0.507965, 0.799708, -0.320061,
		31.454184, 35.032257, 26.459908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642160, 34.467693, 27.013689>,  <31.098608, 34.472462, 26.683950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642160, 34.467693, 27.013689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633652, 34.850883, 26.899260>,  <31.628546, 35.080795, 26.830603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633652, 34.850883, 26.899260>,  <31.642160, 34.467693, 27.013689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633652, 34.850883, 26.899260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275268, 0.280690, 0.919479,
		0.961132, -0.059185, -0.269671,
		-0.021274, 0.957972, -0.286072,
		31.627270, 35.138275, 26.813438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365059, 34.802738, 27.243231>,  <31.642160, 34.467693, 27.013689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365059, 34.802738, 27.243231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079697, 35.078255, 27.191681>,  <31.908478, 35.243565, 27.160751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079697, 35.078255, 27.191681>,  <32.365059, 34.802738, 27.243231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079697, 35.078255, 27.191681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319878, 0.483735, 0.814665,
		0.623478, 0.539966, -0.565432,
		-0.713410, 0.688794, -0.128875,
		31.865673, 35.284893, 27.153019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675270, 35.516460, 27.289410>,  <32.365059, 34.802738, 27.243231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675270, 35.516460, 27.289410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290188, 35.551579, 27.391781>,  <32.059139, 35.572651, 27.453203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290188, 35.551579, 27.391781>,  <32.675270, 35.516460, 27.289410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290188, 35.551579, 27.391781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269157, 0.407196, 0.872780,
		-0.027584, 0.909111, -0.415640,
		-0.962701, 0.087798, 0.255926,
		32.001377, 35.577919, 27.468559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681709, 36.131306, 27.574364>,  <32.675270, 35.516460, 27.289410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681709, 36.131306, 27.574364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320316, 35.995026, 27.678394>,  <32.103481, 35.913258, 27.740812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.320316, 35.995026, 27.678394>,  <32.681709, 36.131306, 27.574364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320316, 35.995026, 27.678394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060608, 0.499136, 0.864401,
		-0.424313, 0.796736, -0.430313,
		-0.903485, -0.340697, 0.260078,
		32.049271, 35.892815, 27.756418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425289, 36.685101, 27.991159>,  <32.681709, 36.131306, 27.574364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425289, 36.685101, 27.991159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183472, 36.378262, 28.077040>,  <32.038383, 36.194160, 28.128569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183472, 36.378262, 28.077040>,  <32.425289, 36.685101, 27.991159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183472, 36.378262, 28.077040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085471, 0.330440, 0.939949,
		-0.791976, 0.549886, -0.265329,
		-0.604540, -0.767095, 0.214701,
		32.002110, 36.148132, 28.141451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835794, 36.911457, 28.256834>,  <32.425289, 36.685101, 27.991159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835794, 36.911457, 28.256834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876953, 36.538582, 28.395655>,  <31.901648, 36.314857, 28.478947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876953, 36.538582, 28.395655>,  <31.835794, 36.911457, 28.256834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876953, 36.538582, 28.395655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155576, 0.329528, 0.931240,
		-0.982450, -0.149813, -0.111119,
		0.102895, -0.932184, 0.347052,
		31.907822, 36.258926, 28.499771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334887, 36.779305, 28.872068>,  <31.835794, 36.911457, 28.256834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334887, 36.779305, 28.872068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587002, 36.474361, 28.930780>,  <31.738270, 36.291393, 28.966007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587002, 36.474361, 28.930780>,  <31.334887, 36.779305, 28.872068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587002, 36.474361, 28.930780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116111, 0.094369, 0.988743,
		-0.767631, -0.640234, -0.029039,
		0.630286, -0.762362, 0.146779,
		31.776087, 36.245651, 28.974813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120066, 36.416882, 29.454004>,  <31.334887, 36.779305, 28.872068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120066, 36.416882, 29.454004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471382, 36.225647, 29.456549>,  <31.682171, 36.110905, 29.458075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471382, 36.225647, 29.456549>,  <31.120066, 36.416882, 29.454004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471382, 36.225647, 29.456549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006706, 0.025619, 0.999649,
		-0.478082, -0.877939, 0.025707,
		0.878290, -0.478086, 0.006360,
		31.734869, 36.082222, 29.458456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067261, 35.903061, 29.989504>,  <31.120066, 36.416882, 29.454004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067261, 35.903061, 29.989504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455513, 35.981426, 29.933657>,  <31.688465, 36.028446, 29.900148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455513, 35.981426, 29.933657>,  <31.067261, 35.903061, 29.989504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455513, 35.981426, 29.933657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120792, 0.105015, 0.987108,
		0.208050, -0.974982, 0.078266,
		0.970631, 0.195914, -0.139618,
		31.746702, 36.040199, 29.891771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494028, 35.456650, 30.487034>,  <31.067261, 35.903061, 29.989504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494028, 35.456650, 30.487034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681519, 35.795292, 30.386192>,  <31.794014, 35.998478, 30.325687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681519, 35.795292, 30.386192>,  <31.494028, 35.456650, 30.487034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681519, 35.795292, 30.386192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183602, 0.185792, 0.965283,
		0.864051, -0.498742, -0.068352,
		0.468728, 0.846604, -0.252104,
		31.822138, 36.049274, 30.310560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208702, 35.389759, 30.765388>,  <31.494028, 35.456650, 30.487034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208702, 35.389759, 30.765388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114029, 35.777542, 30.739641>,  <32.057224, 36.010212, 30.724192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114029, 35.777542, 30.739641>,  <32.208702, 35.389759, 30.765388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114029, 35.777542, 30.739641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307283, 0.137541, 0.941626,
		0.921716, 0.203084, -0.330450,
		-0.236680, 0.969453, -0.064369,
		32.043026, 36.068378, 30.720331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714912, 35.699360, 31.281418>,  <32.208702, 35.389759, 30.765388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714912, 35.699360, 31.281418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449940, 35.993931, 31.226484>,  <32.290955, 36.170673, 31.193523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449940, 35.993931, 31.226484>,  <32.714912, 35.699360, 31.281418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449940, 35.993931, 31.226484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072395, 0.245403, 0.966714,
		0.745614, 0.630442, -0.215877,
		-0.662434, 0.736424, -0.137335,
		32.251209, 36.214859, 31.185284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012474, 36.368694, 31.595829>,  <32.714912, 35.699360, 31.281418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012474, 36.368694, 31.595829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613873, 36.396969, 31.578049>,  <32.374710, 36.413933, 31.567381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613873, 36.396969, 31.578049>,  <33.012474, 36.368694, 31.595829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613873, 36.396969, 31.578049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032893, 0.156972, 0.987055,
		0.076746, 0.985070, -0.154099,
		-0.996508, 0.070684, -0.044449,
		32.314919, 36.418175, 31.564714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227634, 37.055744, 31.187309>,  <33.012474, 36.368694, 31.595829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227634, 37.055744, 31.187309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422516, 36.804565, 31.430063>,  <33.539444, 36.653858, 31.575716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422516, 36.804565, 31.430063>,  <33.227634, 37.055744, 31.187309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422516, 36.804565, 31.430063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532780, -0.336895, -0.776304,
		0.691936, 0.701556, 0.170422,
		0.487207, -0.627950, 0.606884,
		33.568676, 36.616180, 31.612129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727028, 36.859795, 30.808483>,  <33.227634, 37.055744, 31.187309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727028, 36.859795, 30.808483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781288, 36.594994, 31.103333>,  <33.813843, 36.436111, 31.280243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.781288, 36.594994, 31.103333>,  <33.727028, 36.859795, 30.808483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781288, 36.594994, 31.103333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374460, -0.654556, -0.656762,
		0.917267, 0.365113, 0.159104,
		0.135650, -0.662004, 0.737123,
		33.821983, 36.396393, 31.324469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482109, 36.621441, 30.743301>,  <33.727028, 36.859795, 30.808483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482109, 36.621441, 30.743301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302074, 36.330841, 30.951002>,  <34.194054, 36.156479, 31.075623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302074, 36.330841, 30.951002>,  <34.482109, 36.621441, 30.743301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302074, 36.330841, 30.951002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411017, -0.684759, -0.601806,
		0.792774, -0.057442, 0.606803,
		-0.450082, -0.726502, 0.519250,
		34.167049, 36.112892, 31.106777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038635, 36.207073, 30.911154>,  <34.482109, 36.621441, 30.743301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038635, 36.207073, 30.911154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694038, 36.004005, 30.907059>,  <34.487282, 35.882164, 30.904602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694038, 36.004005, 30.907059>,  <35.038635, 36.207073, 30.911154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694038, 36.004005, 30.907059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403833, -0.672790, -0.619897,
		0.307814, -0.538171, 0.784616,
		-0.861493, -0.507667, -0.010237,
		34.435589, 35.851704, 30.903988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278175, 35.537373, 30.910931>,  <35.038635, 36.207073, 30.911154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278175, 35.537373, 30.910931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891315, 35.469112, 30.835564>,  <34.659199, 35.428158, 30.790342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891315, 35.469112, 30.835564>,  <35.278175, 35.537373, 30.910931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891315, 35.469112, 30.835564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253657, -0.696693, -0.671026,
		-0.016761, -0.696776, 0.717092,
		-0.967149, -0.170648, -0.188419,
		34.601170, 35.417919, 30.779037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220798, 34.775444, 30.852436>,  <35.278175, 35.537373, 30.910931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220798, 34.775444, 30.852436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906044, 34.938583, 30.667196>,  <34.717190, 35.036469, 30.556051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906044, 34.938583, 30.667196>,  <35.220798, 34.775444, 30.852436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906044, 34.938583, 30.667196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115080, -0.640302, -0.759454,
		-0.606264, -0.650902, 0.456914,
		-0.786893, 0.407848, -0.463098,
		34.669979, 35.060940, 30.528267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889156, 34.263397, 30.509699>,  <35.220798, 34.775444, 30.852436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889156, 34.263397, 30.509699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721581, 34.571617, 30.317558>,  <34.621033, 34.756550, 30.202274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721581, 34.571617, 30.317558>,  <34.889156, 34.263397, 30.509699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721581, 34.571617, 30.317558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132830, -0.471313, -0.871906,
		-0.898245, -0.429084, 0.095100,
		-0.418943, 0.770553, -0.480349,
		34.595898, 34.802784, 30.173454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345348, 33.986324, 30.123407>,  <34.889156, 34.263397, 30.509699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345348, 33.986324, 30.123407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412613, 34.335522, 29.940275>,  <34.452972, 34.545040, 29.830397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412613, 34.335522, 29.940275>,  <34.345348, 33.986324, 30.123407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412613, 34.335522, 29.940275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098023, -0.447332, -0.888980,
		-0.980874, 0.194367, 0.010351,
		0.168158, 0.872992, -0.457829,
		34.463058, 34.597420, 29.802927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839588, 34.220024, 29.452721>,  <34.345348, 33.986324, 30.123407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839588, 34.220024, 29.452721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176857, 34.428963, 29.401777>,  <34.379219, 34.554325, 29.371212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176857, 34.428963, 29.401777>,  <33.839588, 34.220024, 29.452721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176857, 34.428963, 29.401777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054698, -0.318990, -0.946178,
		-0.534856, 0.790823, -0.297534,
		0.843171, 0.522344, -0.127358,
		34.429810, 34.585667, 29.363569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786850, 34.643711, 28.734720>,  <33.839588, 34.220024, 29.452721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786850, 34.643711, 28.734720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172626, 34.616924, 28.836994>,  <34.404091, 34.600853, 28.898357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172626, 34.616924, 28.836994>,  <33.786850, 34.643711, 28.734720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172626, 34.616924, 28.836994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236100, -0.216567, -0.947288,
		0.118806, 0.973969, -0.193055,
		0.964439, -0.066963, 0.255684,
		34.461960, 34.596836, 28.913700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020462, 34.580063, 28.133110>,  <33.786850, 34.643711, 28.734720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020462, 34.580063, 28.133110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350391, 34.591667, 28.358967>,  <34.548351, 34.598629, 28.494480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350391, 34.591667, 28.358967>,  <34.020462, 34.580063, 28.133110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350391, 34.591667, 28.358967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560092, -0.178264, -0.809023,
		0.077182, 0.983555, -0.163288,
		0.824827, 0.029014, 0.564640,
		34.597839, 34.600372, 28.528358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443935, 35.110111, 27.905052>,  <34.020462, 34.580063, 28.133110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443935, 35.110111, 27.905052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646160, 34.814022, 28.082359>,  <34.767494, 34.636368, 28.188744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646160, 34.814022, 28.082359>,  <34.443935, 35.110111, 27.905052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646160, 34.814022, 28.082359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433761, -0.226054, -0.872211,
		0.745830, 0.633225, 0.206795,
		0.505558, -0.740220, 0.443266,
		34.797829, 34.591957, 28.215340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182278, 35.174583, 27.777399>,  <34.443935, 35.110111, 27.905052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182278, 35.174583, 27.777399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133373, 34.783733, 27.846992>,  <35.104031, 34.549221, 27.888748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133373, 34.783733, 27.846992>,  <35.182278, 35.174583, 27.777399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133373, 34.783733, 27.846992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567078, -0.212641, -0.795743,
		0.814539, 0.001371, 0.580107,
		-0.122264, -0.977129, 0.173982,
		35.096695, 34.490593, 27.899187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846523, 34.859516, 27.814548>,  <35.182278, 35.174583, 27.777399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846523, 34.859516, 27.814548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563030, 34.593658, 27.719940>,  <35.392933, 34.434143, 27.663176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563030, 34.593658, 27.719940>,  <35.846523, 34.859516, 27.814548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563030, 34.593658, 27.719940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588611, -0.372296, -0.717588,
		0.388885, -0.647799, 0.655077,
		-0.708735, -0.664644, -0.236521,
		35.350410, 34.394264, 27.648983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223999, 34.246548, 27.505331>,  <35.846523, 34.859516, 27.814548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223999, 34.246548, 27.505331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850765, 34.167843, 27.384911>,  <35.626823, 34.120621, 27.312658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850765, 34.167843, 27.384911>,  <36.223999, 34.246548, 27.505331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850765, 34.167843, 27.384911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356549, -0.396459, -0.845986,
		0.047106, -0.896719, 0.440087,
		-0.933088, -0.196763, -0.301049,
		35.570839, 34.108814, 27.294596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345314, 33.728477, 27.078981>,  <36.223999, 34.246548, 27.505331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345314, 33.728477, 27.078981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966560, 33.828514, 26.998129>,  <35.739307, 33.888538, 26.949617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966560, 33.828514, 26.998129>,  <36.345314, 33.728477, 27.078981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966560, 33.828514, 26.998129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104714, -0.354514, -0.929169,
		-0.304036, -0.900985, 0.309497,
		-0.946888, 0.250092, -0.202131,
		35.682495, 33.903542, 26.937489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078690, 33.130970, 26.631735>,  <36.345314, 33.728477, 27.078981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078690, 33.130970, 26.631735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838692, 33.444328, 26.566870>,  <35.694695, 33.632343, 26.527950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838692, 33.444328, 26.566870>,  <36.078690, 33.130970, 26.631735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838692, 33.444328, 26.566870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047245, -0.167652, -0.984713,
		-0.798610, -0.598481, 0.063579,
		-0.599992, 0.783398, -0.162164,
		35.658695, 33.679348, 26.518221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562611, 32.880127, 26.219549>,  <36.078690, 33.130970, 26.631735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562611, 32.880127, 26.219549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565666, 33.277027, 26.169928>,  <35.567497, 33.515167, 26.140156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565666, 33.277027, 26.169928>,  <35.562611, 32.880127, 26.219549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565666, 33.277027, 26.169928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191986, -0.120294, -0.973997,
		-0.981368, 0.031254, 0.189579,
		0.007636, 0.992246, -0.124053,
		35.567959, 33.574699, 26.132711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967426, 33.008224, 25.807892>,  <35.562611, 32.880127, 26.219549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967426, 33.008224, 25.807892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196999, 33.331188, 25.753193>,  <35.334743, 33.524967, 25.720373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196999, 33.331188, 25.753193>,  <34.967426, 33.008224, 25.807892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196999, 33.331188, 25.753193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147943, -0.062007, -0.987050,
		-0.805428, 0.586731, 0.083862,
		0.573932, 0.807405, -0.136745,
		35.369179, 33.573410, 25.712170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658691, 33.373001, 25.360580>,  <34.967426, 33.008224, 25.807892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658691, 33.373001, 25.360580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020935, 33.539318, 25.327137>,  <35.238281, 33.639107, 25.307070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020935, 33.539318, 25.327137>,  <34.658691, 33.373001, 25.360580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020935, 33.539318, 25.327137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130377, 0.085335, -0.987785,
		-0.403577, 0.905448, 0.131490,
		0.905609, 0.415791, -0.083610,
		35.292618, 33.664055, 25.302053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560894, 33.768982, 24.781794>,  <34.658691, 33.373001, 25.360580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560894, 33.768982, 24.781794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959412, 33.789867, 24.809120>,  <35.198524, 33.802399, 24.825516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959412, 33.789867, 24.809120>,  <34.560894, 33.768982, 24.781794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959412, 33.789867, 24.809120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078178, -0.219192, -0.972545,
		-0.035810, 0.974283, -0.222463,
		0.996296, 0.052218, 0.068318,
		35.258301, 33.805534, 24.829615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827888, 34.311337, 24.404545>,  <34.560894, 33.768982, 24.781794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827888, 34.311337, 24.404545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114647, 34.034710, 24.439875>,  <35.286701, 33.868736, 24.461073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114647, 34.034710, 24.439875>,  <34.827888, 34.311337, 24.404545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114647, 34.034710, 24.439875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005467, -0.132262, -0.991200,
		0.697160, 0.710103, -0.098599,
		0.716894, -0.691564, 0.088326,
		35.329716, 33.827240, 24.466372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311905, 34.492119, 23.926340>,  <34.827888, 34.311337, 24.404545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311905, 34.492119, 23.926340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412525, 34.111000, 23.994339>,  <35.472897, 33.882328, 24.035137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412525, 34.111000, 23.994339>,  <35.311905, 34.492119, 23.926340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412525, 34.111000, 23.994339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214597, -0.116363, -0.969746,
		0.943753, 0.280422, 0.175196,
		0.251552, -0.952797, 0.169996,
		35.487991, 33.825161, 24.045338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019833, 34.343239, 23.710636>,  <35.311905, 34.492119, 23.926340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019833, 34.343239, 23.710636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816654, 33.998867, 23.699417>,  <35.694748, 33.792244, 23.692686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816654, 33.998867, 23.699417>,  <36.019833, 34.343239, 23.710636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816654, 33.998867, 23.699417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400047, -0.206944, -0.892825,
		0.762856, -0.464729, 0.449530,
		-0.507949, -0.860930, -0.028045,
		35.664268, 33.740589, 23.691004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407082, 33.939655, 23.178564>,  <36.019833, 34.343239, 23.710636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407082, 33.939655, 23.178564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082062, 33.711372, 23.225981>,  <35.887051, 33.574402, 23.254431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082062, 33.711372, 23.225981>,  <36.407082, 33.939655, 23.178564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082062, 33.711372, 23.225981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076780, -0.306398, -0.948802,
		0.577807, -0.761851, 0.292783,
		-0.812554, -0.570704, 0.118544,
		35.838295, 33.540161, 23.261543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625080, 33.171684, 23.163488>,  <36.407082, 33.939655, 23.178564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625080, 33.171684, 23.163488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239212, 33.218983, 23.069307>,  <36.007690, 33.247360, 23.012798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239212, 33.218983, 23.069307>,  <36.625080, 33.171684, 23.163488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239212, 33.218983, 23.069307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126559, -0.575848, -0.807702,
		-0.231090, -0.808961, 0.540536,
		-0.964666, 0.118242, -0.235454,
		35.949814, 33.254456, 22.998671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434582, 32.603672, 22.892723>,  <36.625080, 33.171684, 23.163488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434582, 32.603672, 22.892723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134789, 32.837658, 22.768724>,  <35.954914, 32.978050, 22.694326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134789, 32.837658, 22.768724>,  <36.434582, 32.603672, 22.892723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134789, 32.837658, 22.768724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035193, -0.432386, -0.901002,
		-0.661090, -0.686193, 0.303478,
		-0.749481, 0.584963, -0.309995,
		35.909943, 33.013145, 22.675726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991203, 32.149799, 22.613203>,  <36.434582, 32.603672, 22.892723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991203, 32.149799, 22.613203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839355, 32.490662, 22.469139>,  <35.748245, 32.695179, 22.382700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839355, 32.490662, 22.469139>,  <35.991203, 32.149799, 22.613203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839355, 32.490662, 22.469139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260860, -0.472105, -0.842062,
		-0.887603, -0.225714, 0.401515,
		-0.379623, 0.852156, -0.360162,
		35.725468, 32.746307, 22.361090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248154, 32.154438, 22.402523>,  <35.991203, 32.149799, 22.613203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248154, 32.154438, 22.402523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432247, 32.433060, 22.182343>,  <35.542702, 32.600231, 22.050234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432247, 32.433060, 22.182343>,  <35.248154, 32.154438, 22.402523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432247, 32.433060, 22.182343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268231, -0.481946, -0.834134,
		-0.846309, 0.531544, -0.034969,
		0.460232, 0.696555, -0.550452,
		35.570316, 32.642025, 22.017206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849197, 32.157242, 21.746147>,  <35.248154, 32.154438, 22.402523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849197, 32.157242, 21.746147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156963, 32.393169, 21.648077>,  <35.341625, 32.534725, 21.589235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156963, 32.393169, 21.648077>,  <34.849197, 32.157242, 21.746147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156963, 32.393169, 21.648077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016707, -0.365121, -0.930810,
		-0.638528, 0.720278, -0.271076,
		0.769417, 0.589820, -0.245173,
		35.387787, 32.570114, 21.574526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753315, 32.531109, 21.168459>,  <34.849197, 32.157242, 21.746147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753315, 32.531109, 21.168459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149841, 32.491474, 21.203056>,  <35.387756, 32.467693, 21.223816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149841, 32.491474, 21.203056>,  <34.753315, 32.531109, 21.168459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149841, 32.491474, 21.203056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049493, -0.328263, -0.943289,
		0.121860, 0.939375, -0.320507,
		0.991313, -0.099086, 0.086495,
		35.447235, 32.461750, 21.229004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002121, 32.723244, 20.514248>,  <34.753315, 32.531109, 21.168459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002121, 32.723244, 20.514248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335560, 32.550335, 20.651802>,  <35.535622, 32.446590, 20.734335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335560, 32.550335, 20.651802>,  <35.002121, 32.723244, 20.514248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335560, 32.550335, 20.651802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144105, -0.430814, -0.890861,
		0.533244, 0.792174, -0.296833,
		0.833597, -0.432271, 0.343886,
		35.585640, 32.420654, 20.754969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518513, 32.830013, 20.082552>,  <35.002121, 32.723244, 20.514248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518513, 32.830013, 20.082552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641273, 32.499832, 20.272053>,  <35.714931, 32.301723, 20.385754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641273, 32.499832, 20.272053>,  <35.518513, 32.830013, 20.082552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641273, 32.499832, 20.272053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030696, -0.488932, -0.871782,
		0.951245, 0.282098, -0.124718,
		0.306906, -0.825449, 0.473753,
		35.733345, 32.252197, 20.414179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019352, 32.633602, 19.668531>,  <35.518513, 32.830013, 20.082552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019352, 32.633602, 19.668531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927307, 32.284554, 19.840845>,  <35.872082, 32.075123, 19.944233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927307, 32.284554, 19.840845>,  <36.019352, 32.633602, 19.668531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927307, 32.284554, 19.840845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032729, -0.449354, -0.892754,
		0.972614, -0.191333, 0.131962,
		-0.230110, -0.872624, 0.430786,
		35.858273, 32.022766, 19.970081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354755, 32.151199, 19.266577>,  <36.019352, 32.633602, 19.668531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354755, 32.151199, 19.266577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116058, 31.906174, 19.473909>,  <35.972839, 31.759159, 19.598309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116058, 31.906174, 19.473909>,  <36.354755, 32.151199, 19.266577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116058, 31.906174, 19.473909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101991, -0.582811, -0.806182,
		0.795927, -0.533946, 0.285310,
		-0.596739, -0.612563, 0.518332,
		35.937035, 31.722404, 19.629410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567558, 31.446692, 19.403725>,  <36.354755, 32.151199, 19.266577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567558, 31.446692, 19.403725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168381, 31.471640, 19.397932>,  <35.928875, 31.486609, 19.394457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168381, 31.471640, 19.397932>,  <36.567558, 31.446692, 19.403725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168381, 31.471640, 19.397932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028166, -0.630720, -0.775500,
		-0.057503, -0.773500, 0.631182,
		-0.997948, 0.062372, -0.014482,
		35.868996, 31.490351, 19.393587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385250, 30.748354, 19.293968>,  <36.567558, 31.446692, 19.403725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385250, 30.748354, 19.293968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042469, 30.937160, 19.211193>,  <35.836800, 31.050446, 19.161528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042469, 30.937160, 19.211193>,  <36.385250, 30.748354, 19.293968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042469, 30.937160, 19.211193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194149, -0.667598, -0.718763,
		-0.477421, -0.575772, 0.663744,
		-0.856957, 0.472017, -0.206940,
		35.785381, 31.078766, 19.149111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847363, 30.225267, 19.299116>,  <36.385250, 30.748354, 19.293968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847363, 30.225267, 19.299116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744644, 30.533195, 19.065388>,  <35.683014, 30.717953, 18.925150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744644, 30.533195, 19.065388>,  <35.847363, 30.225267, 19.299116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744644, 30.533195, 19.065388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333596, -0.638041, -0.693986,
		-0.907066, 0.016714, 0.420656,
		-0.256796, 0.769821, -0.584321,
		35.667606, 30.764141, 18.890091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522984, 29.859673, 19.640471>,  <35.847363, 30.225267, 19.299116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522984, 29.859673, 19.640471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886829, 29.732021, 19.534073>,  <37.105137, 29.655430, 19.470234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886829, 29.732021, 19.534073>,  <36.522984, 29.859673, 19.640471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886829, 29.732021, 19.534073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304779, 0.077503, 0.949264,
		-0.282323, -0.944537, 0.167762,
		0.909617, -0.319130, -0.265994,
		37.159714, 29.636282, 19.454275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675697, 29.257807, 19.912617>,  <36.522984, 29.859673, 19.640471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675697, 29.257807, 19.912617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022949, 29.443985, 19.843666>,  <37.231300, 29.555693, 19.802296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022949, 29.443985, 19.843666>,  <36.675697, 29.257807, 19.912617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022949, 29.443985, 19.843666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197779, -0.005859, 0.980229,
		0.455234, -0.885057, -0.097142,
		0.868128, 0.465446, -0.172378,
		37.283386, 29.583618, 19.791952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167599, 28.990509, 20.392748>,  <36.675697, 29.257807, 19.912617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167599, 28.990509, 20.392748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315083, 29.347075, 20.287346>,  <37.403572, 29.561014, 20.224104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315083, 29.347075, 20.287346>,  <37.167599, 28.990509, 20.392748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315083, 29.347075, 20.287346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166984, 0.215349, 0.962154,
		0.914424, -0.398754, -0.069452,
		0.368706, 0.891415, -0.263506,
		37.425694, 29.614498, 20.208294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702770, 29.046600, 20.847467>,  <37.167599, 28.990509, 20.392748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702770, 29.046600, 20.847467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649845, 29.417467, 20.707264>,  <37.618092, 29.639988, 20.623142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649845, 29.417467, 20.707264>,  <37.702770, 29.046600, 20.847467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649845, 29.417467, 20.707264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295037, 0.374428, 0.879066,
		0.946281, 0.012896, -0.323089,
		-0.132310, 0.927166, -0.350509,
		37.610153, 29.695618, 20.602112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362282, 29.465214, 20.943773>,  <37.702770, 29.046600, 20.847467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362282, 29.465214, 20.943773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058453, 29.723122, 20.909552>,  <37.876156, 29.877867, 20.889019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058453, 29.723122, 20.909552>,  <38.362282, 29.465214, 20.943773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058453, 29.723122, 20.909552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385099, 0.551820, 0.739726,
		0.524165, 0.528928, -0.667448,
		-0.759573, 0.644771, -0.085555,
		37.830582, 29.916553, 20.883884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713116, 30.047958, 21.133856>,  <38.362282, 29.465214, 20.943773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713116, 30.047958, 21.133856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326649, 30.150120, 21.148195>,  <38.094769, 30.211416, 21.156799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326649, 30.150120, 21.148195>,  <38.713116, 30.047958, 21.133856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326649, 30.150120, 21.148195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148401, 0.436856, 0.887205,
		0.210935, 0.862511, -0.459980,
		-0.966169, 0.255404, 0.035849,
		38.036797, 30.226742, 21.158951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739815, 30.733732, 21.244846>,  <38.713116, 30.047958, 21.133856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739815, 30.733732, 21.244846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382835, 30.596977, 21.362591>,  <38.168648, 30.514925, 21.433237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382835, 30.596977, 21.362591>,  <38.739815, 30.733732, 21.244846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382835, 30.596977, 21.362591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195415, 0.295143, 0.935256,
		-0.406631, 0.892190, -0.196591,
		-0.892449, -0.341887, 0.294361,
		38.115101, 30.494411, 21.450899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439781, 31.168936, 21.750076>,  <38.739815, 30.733732, 21.244846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439781, 31.168936, 21.750076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255871, 30.822277, 21.827562>,  <38.145523, 30.614281, 21.874054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255871, 30.822277, 21.827562>,  <38.439781, 31.168936, 21.750076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255871, 30.822277, 21.827562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033558, 0.201028, 0.979010,
		-0.887400, 0.456628, -0.063345,
		-0.459778, -0.866648, 0.193716,
		38.117939, 30.562283, 21.885677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973446, 31.264427, 22.228502>,  <38.439781, 31.168936, 21.750076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973446, 31.264427, 22.228502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992310, 30.868114, 22.279295>,  <38.003628, 30.630327, 22.309771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992310, 30.868114, 22.279295>,  <37.973446, 31.264427, 22.228502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992310, 30.868114, 22.279295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125479, 0.120242, 0.984783,
		-0.990975, -0.062374, -0.118652,
		0.047158, -0.990783, 0.126983,
		38.006458, 30.570879, 22.317390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467640, 31.083797, 22.666374>,  <37.973446, 31.264427, 22.228502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467640, 31.083797, 22.666374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702042, 30.764118, 22.719862>,  <37.842682, 30.572309, 22.751955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702042, 30.764118, 22.719862>,  <37.467640, 31.083797, 22.666374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702042, 30.764118, 22.719862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094448, 0.096531, 0.990839,
		-0.804786, -0.593264, -0.018915,
		0.586003, -0.799200, 0.133720,
		37.877842, 30.524359, 22.759977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031723, 30.555979, 23.038578>,  <37.467640, 31.083797, 22.666374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031723, 30.555979, 23.038578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417736, 30.462473, 23.086020>,  <37.649345, 30.406370, 23.114485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417736, 30.462473, 23.086020>,  <37.031723, 30.555979, 23.038578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417736, 30.462473, 23.086020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128480, -0.027429, 0.991333,
		-0.228485, -0.971906, -0.056503,
		0.965033, -0.233764, 0.118603,
		37.707245, 30.392344, 23.121601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927551, 30.106155, 23.497576>,  <37.031723, 30.555979, 23.038578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927551, 30.106155, 23.497576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321899, 30.162186, 23.534325>,  <37.558510, 30.195805, 23.556374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321899, 30.162186, 23.534325>,  <36.927551, 30.106155, 23.497576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321899, 30.162186, 23.534325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080461, -0.085066, 0.993121,
		0.146930, -0.986479, -0.072593,
		0.985869, 0.140079, 0.091872,
		37.617661, 30.204208, 23.561886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158371, 29.560400, 23.988096>,  <36.927551, 30.106155, 23.497576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158371, 29.560400, 23.988096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431583, 29.852152, 24.003437>,  <37.595512, 30.027203, 24.012642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431583, 29.852152, 24.003437>,  <37.158371, 29.560400, 23.988096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431583, 29.852152, 24.003437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103085, 0.044285, 0.993686,
		0.723075, -0.682676, 0.105437,
		0.683035, 0.729378, 0.038352,
		37.636494, 30.070965, 24.014942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634388, 29.411535, 24.542854>,  <37.158371, 29.560400, 23.988096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634388, 29.411535, 24.542854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636780, 29.806400, 24.479012>,  <37.638214, 30.043320, 24.440706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636780, 29.806400, 24.479012>,  <37.634388, 29.411535, 24.542854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636780, 29.806400, 24.479012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098021, 0.159418, 0.982333,
		0.995166, 0.009768, 0.097716,
		0.005982, 0.987163, -0.159605,
		37.638573, 30.102549, 24.431129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956970, 29.586878, 25.170107>,  <37.634388, 29.411535, 24.542854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956970, 29.586878, 25.170107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817394, 29.932774, 25.025627>,  <37.733650, 30.140310, 24.938938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817394, 29.932774, 25.025627>,  <37.956970, 29.586878, 25.170107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817394, 29.932774, 25.025627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185820, 0.313931, 0.931084,
		0.918537, 0.392012, 0.051142,
		-0.348942, 0.864739, -0.361201,
		37.712711, 30.192196, 24.917267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276581, 30.114504, 25.562456>,  <37.956970, 29.586878, 25.170107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276581, 30.114504, 25.562456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974766, 30.309534, 25.386757>,  <37.793674, 30.426552, 25.281338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974766, 30.309534, 25.386757>,  <38.276581, 30.114504, 25.562456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974766, 30.309534, 25.386757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089128, 0.586987, 0.804675,
		0.650172, 0.646310, -0.399450,
		-0.754542, 0.487575, -0.439247,
		37.748402, 30.455807, 25.254982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457886, 30.908531, 25.642624>,  <38.276581, 30.114504, 25.562456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457886, 30.908531, 25.642624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069927, 30.879736, 25.549570>,  <37.837151, 30.862459, 25.493738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069927, 30.879736, 25.549570>,  <38.457886, 30.908531, 25.642624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069927, 30.879736, 25.549570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223245, 0.644460, 0.731323,
		0.097280, 0.761242, -0.641130,
		-0.969896, -0.071986, -0.232637,
		37.778957, 30.858141, 25.479778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280903, 31.623394, 25.657124>,  <38.457886, 30.908531, 25.642624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280903, 31.623394, 25.657124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942131, 31.418823, 25.715313>,  <37.738869, 31.296082, 25.750227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942131, 31.418823, 25.715313>,  <38.280903, 31.623394, 25.657124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942131, 31.418823, 25.715313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171687, 0.521973, 0.835504,
		-0.503231, 0.682634, -0.529877,
		-0.846925, -0.511425, 0.145474,
		37.688053, 31.265396, 25.758955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788223, 32.140831, 25.863544>,  <38.280903, 31.623394, 25.657124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788223, 32.140831, 25.863544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624104, 31.793507, 25.975035>,  <37.525631, 31.585112, 26.041929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624104, 31.793507, 25.975035>,  <37.788223, 32.140831, 25.863544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624104, 31.793507, 25.975035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402180, 0.446597, 0.799252,
		-0.818478, 0.215835, -0.532456,
		-0.410300, -0.868313, 0.278725,
		37.501015, 31.533012, 26.058653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112965, 32.309029, 25.955173>,  <37.788223, 32.140831, 25.863544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112965, 32.309029, 25.955173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149815, 31.971754, 26.167044>,  <37.171925, 31.769390, 26.294167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149815, 31.971754, 26.167044>,  <37.112965, 32.309029, 25.955173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149815, 31.971754, 26.167044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550575, 0.400093, 0.732662,
		-0.829687, -0.359121, -0.427377,
		0.092124, -0.843183, 0.529675,
		37.177452, 31.718800, 26.325947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460732, 32.302876, 26.146832>,  <37.112965, 32.309029, 25.955173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460732, 32.302876, 26.146832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650684, 32.058292, 26.400007>,  <36.764656, 31.911543, 26.551912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650684, 32.058292, 26.400007>,  <36.460732, 32.302876, 26.146832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650684, 32.058292, 26.400007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450768, 0.448702, 0.771670,
		-0.755843, -0.651759, -0.062545,
		0.474879, -0.611454, 0.632941,
		36.793148, 31.874857, 26.589890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930859, 32.025784, 26.619734>,  <36.460732, 32.302876, 26.146832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930859, 32.025784, 26.619734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282421, 31.984648, 26.806047>,  <36.493359, 31.959967, 26.917835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282421, 31.984648, 26.806047>,  <35.930859, 32.025784, 26.619734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282421, 31.984648, 26.806047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354571, 0.512348, 0.782163,
		-0.319079, -0.852598, 0.413841,
		0.878901, -0.102835, 0.465786,
		36.546093, 31.953796, 26.945784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727928, 31.716774, 27.201563>,  <35.930859, 32.025784, 26.619734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727928, 31.716774, 27.201563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087109, 31.860989, 27.302519>,  <36.302616, 31.947517, 27.363092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087109, 31.860989, 27.302519>,  <35.727928, 31.716774, 27.201563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087109, 31.860989, 27.302519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384484, 0.363601, 0.848508,
		0.214145, -0.858959, 0.465114,
		0.897949, 0.360533, 0.252392,
		36.356495, 31.969149, 27.378237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930477, 31.521458, 27.860834>,  <35.727928, 31.716774, 27.201563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930477, 31.521458, 27.860834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166374, 31.843491, 27.835384>,  <36.307911, 32.036709, 27.820114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166374, 31.843491, 27.835384>,  <35.930477, 31.521458, 27.860834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166374, 31.843491, 27.835384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175101, 0.204380, 0.963104,
		0.788379, -0.556844, 0.261503,
		0.589744, 0.805080, -0.063625,
		36.343296, 32.085014, 27.816298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355576, 31.637043, 28.535341>,  <35.930477, 31.521458, 27.860834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355576, 31.637043, 28.535341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381569, 31.993710, 28.356140>,  <36.397163, 32.207710, 28.248619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381569, 31.993710, 28.356140>,  <36.355576, 31.637043, 28.535341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381569, 31.993710, 28.356140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006765, 0.449333, 0.893339,
		0.997864, -0.055019, 0.035230,
		0.064980, 0.891669, -0.448001,
		36.401062, 32.261211, 28.221741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969906, 32.053520, 28.766161>,  <36.355576, 31.637043, 28.535341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969906, 32.053520, 28.766161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740211, 32.337570, 28.603199>,  <36.602394, 32.507999, 28.505423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740211, 32.337570, 28.603199>,  <36.969906, 32.053520, 28.766161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740211, 32.337570, 28.603199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100958, 0.555251, 0.825533,
		0.812443, 0.432918, -0.390536,
		-0.574234, 0.710126, -0.407403,
		36.567940, 32.550610, 28.480978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384045, 32.757450, 28.757046>,  <36.969906, 32.053520, 28.766161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384045, 32.757450, 28.757046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987343, 32.803871, 28.778788>,  <36.749321, 32.831722, 28.791832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987343, 32.803871, 28.778788>,  <37.384045, 32.757450, 28.757046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987343, 32.803871, 28.778788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105815, 0.502319, 0.858183,
		0.072292, 0.856859, -0.510458,
		-0.991754, 0.116054, 0.054355,
		36.689816, 32.838688, 28.795094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193352, 33.448280, 28.937929>,  <37.384045, 32.757450, 28.757046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193352, 33.448280, 28.937929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846928, 33.262592, 29.012157>,  <36.639072, 33.151180, 29.056694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846928, 33.262592, 29.012157>,  <37.193352, 33.448280, 28.937929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846928, 33.262592, 29.012157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023282, 0.408239, 0.912578,
		-0.499392, 0.786030, -0.364369,
		-0.866063, -0.464217, 0.185571,
		36.587109, 33.123325, 29.067829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705635, 33.938686, 29.195076>,  <37.193352, 33.448280, 28.937929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705635, 33.938686, 29.195076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588924, 33.582771, 29.335445>,  <36.518898, 33.369221, 29.419666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588924, 33.582771, 29.335445>,  <36.705635, 33.938686, 29.195076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588924, 33.582771, 29.335445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024844, 0.359713, 0.932732,
		-0.956164, 0.280867, -0.082849,
		-0.291775, -0.889787, 0.350923,
		36.501392, 33.315834, 29.440722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324162, 34.114471, 29.812143>,  <36.705635, 33.938686, 29.195076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324162, 34.114471, 29.812143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394703, 33.721897, 29.842276>,  <36.437027, 33.486351, 29.860355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.394703, 33.721897, 29.842276>,  <36.324162, 34.114471, 29.812143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394703, 33.721897, 29.842276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090338, 0.092344, 0.991621,
		-0.980172, -0.168073, 0.104947,
		0.176356, -0.981440, 0.075330,
		36.447609, 33.427464, 29.864874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846741, 33.844070, 30.294918>,  <36.324162, 34.114471, 29.812143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846741, 33.844070, 30.294918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171982, 33.611477, 30.284048>,  <36.367126, 33.471920, 30.277527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171982, 33.611477, 30.284048>,  <35.846741, 33.844070, 30.294918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171982, 33.611477, 30.284048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003427, -0.041899, 0.999116,
		-0.582109, -0.812478, -0.032075,
		0.813104, -0.581485, -0.027174,
		36.415913, 33.437031, 30.275896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821758, 33.432343, 30.915239>,  <35.846741, 33.844070, 30.294918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821758, 33.432343, 30.915239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192780, 33.337807, 30.799458>,  <36.415394, 33.281086, 30.729988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192780, 33.337807, 30.799458>,  <35.821758, 33.432343, 30.915239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192780, 33.337807, 30.799458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190684, -0.366807, 0.910545,
		-0.321365, -0.899777, -0.295170,
		0.927558, -0.236333, -0.289452,
		36.471046, 33.266907, 30.712622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944298, 32.683033, 31.091019>,  <35.821758, 33.432343, 30.915239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944298, 32.683033, 31.091019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293316, 32.877716, 31.074167>,  <36.502728, 32.994526, 31.064056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293316, 32.877716, 31.074167>,  <35.944298, 32.683033, 31.091019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293316, 32.877716, 31.074167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293925, -0.454127, 0.841057,
		0.390220, -0.746244, -0.539304,
		0.872546, 0.486712, -0.042130,
		36.555080, 33.023731, 31.061529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371593, 32.210114, 31.444324>,  <35.944298, 32.683033, 31.091019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371593, 32.210114, 31.444324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591450, 32.542519, 31.410093>,  <36.723362, 32.741962, 31.389555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591450, 32.542519, 31.410093>,  <36.371593, 32.210114, 31.444324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591450, 32.542519, 31.410093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393616, -0.167257, 0.903931,
		0.736861, -0.530519, -0.419029,
		0.549639, 0.831008, -0.085576,
		36.756340, 32.791821, 31.384420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010406, 31.966124, 31.580952>,  <36.371593, 32.210114, 31.444324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010406, 31.966124, 31.580952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002655, 32.356686, 31.666986>,  <36.998005, 32.591022, 31.718607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002655, 32.356686, 31.666986>,  <37.010406, 31.966124, 31.580952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002655, 32.356686, 31.666986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244929, -0.203935, 0.947850,
		0.969347, 0.071045, -0.235198,
		-0.019374, 0.976403, 0.215085,
		36.996841, 32.649605, 31.731512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460793, 32.033329, 32.156715>,  <37.010406, 31.966124, 31.580952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460793, 32.033329, 32.156715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323032, 32.408848, 32.154018>,  <37.240376, 32.634159, 32.152401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323032, 32.408848, 32.154018>,  <37.460793, 32.033329, 32.156715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323032, 32.408848, 32.154018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009218, 0.010568, 0.999902,
		0.938777, 0.344305, -0.012293,
		-0.344401, 0.938799, -0.006747,
		37.219711, 32.690487, 32.151993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920921, 32.364582, 32.605560>,  <37.460793, 32.033329, 32.156715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920921, 32.364582, 32.605560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586906, 32.584049, 32.589184>,  <37.386497, 32.715729, 32.579357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586906, 32.584049, 32.589184>,  <37.920921, 32.364582, 32.605560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586906, 32.584049, 32.589184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011515, 0.056965, 0.998310,
		0.550073, 0.834097, -0.041250,
		-0.835037, 0.548669, -0.040939,
		37.336395, 32.748650, 32.576900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084518, 32.924915, 33.001461>,  <37.920921, 32.364582, 32.605560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084518, 32.924915, 33.001461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685307, 32.911469, 32.980236>,  <37.445782, 32.903400, 32.967503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685307, 32.911469, 32.980236>,  <38.084518, 32.924915, 33.001461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685307, 32.911469, 32.980236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056727, 0.119703, 0.991188,
		-0.026965, 0.992241, -0.121373,
		-0.998026, -0.033612, -0.053059,
		37.385899, 32.901386, 32.964317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810703, 33.457912, 33.383495>,  <38.084518, 32.924915, 33.001461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810703, 33.457912, 33.383495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519783, 33.186260, 33.343857>,  <37.345230, 33.023270, 33.320072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519783, 33.186260, 33.343857>,  <37.810703, 33.457912, 33.383495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519783, 33.186260, 33.343857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242707, 0.119442, 0.962718,
		-0.641971, 0.724238, -0.251699,
		-0.727301, -0.679127, -0.099099,
		37.301594, 32.982521, 33.314129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125793, 33.774956, 33.582623>,  <37.810703, 33.457912, 33.383495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125793, 33.774956, 33.582623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107479, 33.381050, 33.649719>,  <37.096489, 33.144707, 33.689980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107479, 33.381050, 33.649719>,  <37.125793, 33.774956, 33.582623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107479, 33.381050, 33.649719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406884, 0.171746, 0.897189,
		-0.912331, -0.027174, -0.408550,
		-0.045786, -0.984767, 0.167746,
		37.093742, 33.085621, 33.700043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405148, 33.520458, 33.820709>,  <37.125793, 33.774956, 33.582623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405148, 33.520458, 33.820709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685650, 33.270325, 33.957645>,  <36.853951, 33.120243, 34.039806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685650, 33.270325, 33.957645>,  <36.405148, 33.520458, 33.820709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685650, 33.270325, 33.957645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389742, 0.065808, 0.918570,
		-0.596944, -0.777575, -0.197572,
		0.701255, -0.625337, 0.342337,
		36.896027, 33.082726, 34.060349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028419, 33.102024, 34.181183>,  <36.405148, 33.520458, 33.820709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028419, 33.102024, 34.181183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399551, 33.021667, 34.306889>,  <36.622231, 32.973454, 34.382313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399551, 33.021667, 34.306889>,  <36.028419, 33.102024, 34.181183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399551, 33.021667, 34.306889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353712, -0.206517, 0.912271,
		-0.118371, -0.957596, -0.262674,
		0.927834, -0.200898, 0.314267,
		36.677902, 32.961399, 34.401169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120811, 32.348049, 34.511307>,  <36.028419, 33.102024, 34.181183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120811, 32.348049, 34.511307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364681, 32.627998, 34.660149>,  <36.511005, 32.795967, 34.749454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364681, 32.627998, 34.660149>,  <36.120811, 32.348049, 34.511307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364681, 32.627998, 34.660149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286455, -0.243178, 0.926719,
		0.739077, -0.671593, 0.052222,
		0.609679, 0.699876, 0.372109,
		36.547585, 32.837959, 34.771782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457943, 32.021069, 34.994579>,  <36.120811, 32.348049, 34.511307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457943, 32.021069, 34.994579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629276, 32.361897, 35.114910>,  <36.732079, 32.566395, 35.187111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629276, 32.361897, 35.114910>,  <36.457943, 32.021069, 34.994579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629276, 32.361897, 35.114910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126965, -0.272863, 0.953638,
		0.894655, -0.446673, -0.008693,
		0.428337, 0.852073, 0.300830,
		36.757778, 32.617519, 35.205158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902897, 31.811913, 35.478077>,  <36.457943, 32.021069, 34.994579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902897, 31.811913, 35.478077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789898, 32.190674, 35.539486>,  <36.722099, 32.417931, 35.576332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789898, 32.190674, 35.539486>,  <36.902897, 31.811913, 35.478077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789898, 32.190674, 35.539486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261352, -0.229961, 0.937450,
		0.922978, 0.224706, 0.312439,
		-0.282499, 0.946903, 0.153522,
		36.705147, 32.474743, 35.585541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266891, 32.036518, 36.129959>,  <36.902897, 31.811913, 35.478077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266891, 32.036518, 36.129959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943703, 32.260674, 36.057129>,  <36.749790, 32.395168, 36.013432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943703, 32.260674, 36.057129>,  <37.266891, 32.036518, 36.129959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943703, 32.260674, 36.057129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202362, 0.026305, 0.978957,
		0.553386, 0.827812, 0.092147,
		-0.807969, 0.560388, -0.182074,
		36.701313, 32.428791, 36.002506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321541, 32.516003, 36.607807>,  <37.266891, 32.036518, 36.129959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321541, 32.516003, 36.607807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938942, 32.547714, 36.495506>,  <36.709381, 32.566742, 36.428123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938942, 32.547714, 36.495506>,  <37.321541, 32.516003, 36.607807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938942, 32.547714, 36.495506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291718, -0.270552, 0.917443,
		-0.003221, 0.959435, 0.281911,
		-0.956499, 0.079283, -0.280756,
		36.651993, 32.571499, 36.411278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047855, 32.811722, 37.174961>,  <37.321541, 32.516003, 36.607807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047855, 32.811722, 37.174961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754112, 32.631275, 36.972095>,  <36.577866, 32.523006, 36.850376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754112, 32.631275, 36.972095>,  <37.047855, 32.811722, 37.174961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754112, 32.631275, 36.972095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260493, -0.502665, 0.824300,
		-0.626786, 0.737445, 0.251625,
		-0.734359, -0.451113, -0.507163,
		36.533806, 32.495941, 36.819946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471096, 32.972858, 37.569740>,  <37.047855, 32.811722, 37.174961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471096, 32.972858, 37.569740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413887, 32.643730, 37.349739>,  <36.379562, 32.446251, 37.217739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413887, 32.643730, 37.349739>,  <36.471096, 32.972858, 37.569740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413887, 32.643730, 37.349739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320077, -0.487404, 0.812396,
		-0.936534, 0.292232, -0.193659,
		-0.143018, -0.822823, -0.550007,
		36.370983, 32.396885, 37.184738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911892, 32.795685, 37.819523>,  <36.471096, 32.972858, 37.569740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911892, 32.795685, 37.819523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046097, 32.478855, 37.615543>,  <36.126621, 32.288757, 37.493156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046097, 32.478855, 37.615543>,  <35.911892, 32.795685, 37.819523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046097, 32.478855, 37.615543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466553, -0.609985, 0.640505,
		-0.818389, 0.023020, -0.574204,
		0.335511, -0.792079, -0.509945,
		36.146751, 32.241230, 37.462559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422791, 32.328033, 37.714760>,  <35.911892, 32.795685, 37.819523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422791, 32.328033, 37.714760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762501, 32.116867, 37.717468>,  <35.966328, 31.990168, 37.719093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762501, 32.116867, 37.717468>,  <35.422791, 32.328033, 37.714760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762501, 32.116867, 37.717468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394682, -0.626312, 0.672279,
		-0.350662, -0.573621, -0.740267,
		0.849271, -0.527913, 0.006774,
		36.017281, 31.958492, 37.719501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335918, 31.538900, 37.646877>,  <35.422791, 32.328033, 37.714760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335918, 31.538900, 37.646877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679451, 31.615875, 37.836773>,  <35.885571, 31.662060, 37.950710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679451, 31.615875, 37.836773>,  <35.335918, 31.538900, 37.646877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679451, 31.615875, 37.836773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205234, -0.719862, 0.663081,
		0.469346, -0.666908, -0.578747,
		0.858832, 0.192436, 0.474737,
		35.937099, 31.673605, 37.979195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981884, 30.949163, 37.419624>,  <35.335918, 31.538900, 37.646877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981884, 30.949163, 37.419624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076904, 30.671944, 37.691875>,  <35.133915, 30.505611, 37.855225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076904, 30.671944, 37.691875>,  <34.981884, 30.949163, 37.419624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076904, 30.671944, 37.691875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448832, -0.699712, -0.555835,
		0.861464, -0.173449, -0.477279,
		0.237549, -0.693050, 0.680627,
		35.148170, 30.464029, 37.896065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726624, 30.876787, 37.751919>,  <34.981884, 30.949163, 37.419624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726624, 30.876787, 37.751919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858372, 31.135916, 38.026680>,  <35.937420, 31.291393, 38.191536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858372, 31.135916, 38.026680>,  <35.726624, 30.876787, 37.751919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858372, 31.135916, 38.026680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155182, -0.680467, 0.716159,
		0.931361, -0.342479, -0.123596,
		0.329372, 0.647822, 0.686906,
		35.957184, 31.330263, 38.232750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150826, 30.465008, 38.068283>,  <35.726624, 30.876787, 37.751919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150826, 30.465008, 38.068283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042664, 30.772354, 38.300316>,  <35.977764, 30.956762, 38.439533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042664, 30.772354, 38.300316>,  <36.150826, 30.465008, 38.068283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042664, 30.772354, 38.300316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280725, -0.639269, 0.715911,
		0.920909, 0.030746, 0.388564,
		-0.270408, 0.768368, 0.580078,
		35.961540, 31.002865, 38.474339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045738, 30.113701, 38.660336>,  <36.150826, 30.465008, 38.068283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045738, 30.113701, 38.660336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991596, 30.497742, 38.758221>,  <35.959110, 30.728167, 38.816952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991596, 30.497742, 38.758221>,  <36.045738, 30.113701, 38.660336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991596, 30.497742, 38.758221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200593, -0.268425, 0.942184,
		0.970279, 0.078441, 0.228922,
		-0.135355, 0.960102, 0.244713,
		35.950989, 30.785772, 38.831635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478622, 30.315365, 39.302429>,  <36.045738, 30.113701, 38.660336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478622, 30.315365, 39.302429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130482, 30.508650, 39.264484>,  <35.921597, 30.624620, 39.241718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130482, 30.508650, 39.264484>,  <36.478622, 30.315365, 39.302429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130482, 30.508650, 39.264484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171912, -0.117640, 0.978063,
		0.461452, 0.867564, 0.185458,
		-0.870350, 0.483212, -0.094859,
		35.869377, 30.653614, 39.236027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418091, 30.801468, 39.841835>,  <36.478622, 30.315365, 39.302429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418091, 30.801468, 39.841835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044590, 30.734163, 39.715469>,  <35.820492, 30.693781, 39.639648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044590, 30.734163, 39.715469>,  <36.418091, 30.801468, 39.841835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044590, 30.734163, 39.715469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325490, 0.031992, 0.945004,
		-0.148900, 0.985223, -0.084640,
		-0.933748, -0.168261, -0.315917,
		35.764465, 30.683685, 39.620693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879253, 31.176514, 40.281479>,  <36.418091, 30.801468, 39.841835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879253, 31.176514, 40.281479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662308, 30.901787, 40.087933>,  <35.532143, 30.736950, 39.971806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662308, 30.901787, 40.087933>,  <35.879253, 31.176514, 40.281479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662308, 30.901787, 40.087933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245879, -0.420953, 0.873122,
		-0.803360, 0.592520, 0.059435,
		-0.542361, -0.686818, -0.483865,
		35.499599, 30.695742, 39.942772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196827, 31.309015, 40.438873>,  <35.879253, 31.176514, 40.281479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196827, 31.309015, 40.438873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267735, 30.924803, 40.353127>,  <35.310280, 30.694275, 40.301678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267735, 30.924803, 40.353127>,  <35.196827, 31.309015, 40.438873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267735, 30.924803, 40.353127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224862, -0.251590, 0.941350,
		-0.958129, -0.118672, -0.260587,
		0.177273, -0.960531, -0.214371,
		35.320915, 30.636644, 40.288815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627769, 31.081268, 40.645023>,  <35.196827, 31.309015, 40.438873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627769, 31.081268, 40.645023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933533, 30.824917, 40.673195>,  <35.116989, 30.671106, 40.690098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933533, 30.824917, 40.673195>,  <34.627769, 31.081268, 40.645023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933533, 30.824917, 40.673195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199049, -0.130680, 0.971238,
		-0.613243, -0.756436, -0.227458,
		0.764404, -0.640880, 0.070429,
		35.162853, 30.632652, 40.694324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468941, 30.298204, 40.977623>,  <34.627769, 31.081268, 40.645023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468941, 30.298204, 40.977623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834000, 30.448042, 41.043049>,  <35.053036, 30.537945, 41.082302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834000, 30.448042, 41.043049>,  <34.468941, 30.298204, 40.977623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834000, 30.448042, 41.043049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160559, -0.039445, 0.986238,
		0.375891, -0.926349, 0.024145,
		0.912648, 0.374595, 0.163561,
		35.107796, 30.560421, 41.092117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891487, 29.819708, 41.447006>,  <34.468941, 30.298204, 40.977623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891487, 29.819708, 41.447006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001163, 30.199379, 41.508816>,  <35.066971, 30.427181, 41.545902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001163, 30.199379, 41.508816>,  <34.891487, 29.819708, 41.447006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001163, 30.199379, 41.508816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102334, -0.130974, 0.986090,
		0.956214, -0.286194, 0.061221,
		0.274195, 0.949178, 0.154526,
		35.083424, 30.484133, 41.555172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406792, 29.406954, 41.051422>,  <34.891487, 29.819708, 41.447006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406792, 29.406954, 41.051422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082344, 29.614527, 40.943501>,  <34.887676, 29.739071, 40.878746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082344, 29.614527, 40.943501>,  <35.406792, 29.406954, 41.051422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082344, 29.614527, 40.943501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360875, 0.081012, -0.929089,
		-0.460279, -0.850967, -0.252981,
		-0.811118, 0.518934, -0.269804,
		34.839008, 29.770206, 40.862560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512829, 29.379330, 40.357727>,  <35.406792, 29.406954, 41.051422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512829, 29.379330, 40.357727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226364, 29.651779, 40.418625>,  <35.054485, 29.815248, 40.455162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226364, 29.651779, 40.418625>,  <35.512829, 29.379330, 40.357727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226364, 29.651779, 40.418625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272396, 0.473619, -0.837547,
		-0.642580, -0.558350, -0.524725,
		-0.716165, 0.681124, 0.152246,
		35.011517, 29.856117, 40.464298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098042, 29.459560, 39.694611>,  <35.512829, 29.379330, 40.357727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098042, 29.459560, 39.694611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109383, 29.789356, 39.920677>,  <35.116188, 29.987234, 40.056316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109383, 29.789356, 39.920677>,  <35.098042, 29.459560, 39.694611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109383, 29.789356, 39.920677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320750, 0.527991, -0.786349,
		-0.946739, 0.203572, -0.249485,
		0.028353, 0.824490, 0.565166,
		35.117889, 30.036703, 40.090225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694584, 29.851135, 39.357075>,  <35.098042, 29.459560, 39.694611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694584, 29.851135, 39.357075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962635, 30.071272, 39.556293>,  <35.123466, 30.203354, 39.675823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962635, 30.071272, 39.556293>,  <34.694584, 29.851135, 39.357075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962635, 30.071272, 39.556293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272643, 0.441585, -0.854792,
		-0.690356, 0.708611, 0.145873,
		0.670130, 0.550339, 0.498048,
		35.163673, 30.236374, 39.705708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630074, 30.420589, 38.972622>,  <34.694584, 29.851135, 39.357075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630074, 30.420589, 38.972622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955044, 30.531364, 39.177860>,  <35.150028, 30.597830, 39.301003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955044, 30.531364, 39.177860>,  <34.630074, 30.420589, 38.972622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955044, 30.531364, 39.177860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313468, 0.534542, -0.784858,
		-0.491625, 0.798481, 0.347467,
		0.812430, 0.276936, 0.513092,
		35.198772, 30.614445, 39.331787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653320, 31.230961, 39.061920>,  <34.630074, 30.420589, 38.972622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653320, 31.230961, 39.061920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017403, 31.073158, 39.112347>,  <35.235851, 30.978477, 39.142601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017403, 31.073158, 39.112347>,  <34.653320, 31.230961, 39.061920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017403, 31.073158, 39.112347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365690, 0.622664, -0.691780,
		0.194417, 0.675762, 0.711019,
		0.910205, -0.394506, 0.126063,
		35.290462, 30.954807, 39.150166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152508, 31.885759, 39.067856>,  <34.653320, 31.230961, 39.061920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152508, 31.885759, 39.067856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374153, 31.555883, 39.022522>,  <35.507141, 31.357958, 38.995323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374153, 31.555883, 39.022522>,  <35.152508, 31.885759, 39.067856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374153, 31.555883, 39.022522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656708, 0.516735, -0.549291,
		0.511557, 0.229943, 0.827910,
		0.554115, -0.824689, -0.113334,
		35.540386, 31.308477, 38.988522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731182, 32.029602, 39.275772>,  <35.152508, 31.885759, 39.067856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731182, 32.029602, 39.275772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818607, 31.708031, 39.054527>,  <35.871063, 31.515087, 38.921780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818607, 31.708031, 39.054527>,  <35.731182, 32.029602, 39.275772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818607, 31.708031, 39.054527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538227, 0.572113, -0.618869,
		0.813967, -0.162439, 0.557737,
		0.218560, -0.803928, -0.553110,
		35.884174, 31.466852, 38.888596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394199, 32.021675, 39.165348>,  <35.731182, 32.029602, 39.275772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394199, 32.021675, 39.165348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271877, 31.807360, 38.850536>,  <36.198486, 31.678770, 38.661648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271877, 31.807360, 38.850536>,  <36.394199, 32.021675, 39.165348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271877, 31.807360, 38.850536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384256, 0.686863, -0.616901,
		0.871110, -0.491070, -0.004162,
		-0.305800, -0.535789, -0.787030,
		36.180138, 31.646624, 38.614426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001209, 31.834084, 38.759888>,  <36.394199, 32.021675, 39.165348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001209, 31.834084, 38.759888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678223, 31.804585, 38.525772>,  <36.484432, 31.786886, 38.385303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678223, 31.804585, 38.525772>,  <37.001209, 31.834084, 38.759888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678223, 31.804585, 38.525772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488818, 0.471772, -0.733818,
		0.330238, -0.878632, -0.344891,
		-0.807465, -0.073745, -0.585287,
		36.435982, 31.782461, 38.350185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254574, 31.928047, 38.095291>,  <37.001209, 31.834084, 38.759888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254574, 31.928047, 38.095291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860783, 31.998165, 38.091724>,  <36.624508, 32.040234, 38.089584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860783, 31.998165, 38.091724>,  <37.254574, 31.928047, 38.095291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860783, 31.998165, 38.091724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137964, 0.741426, -0.656699,
		-0.108504, -0.647735, -0.754100,
		-0.984476, 0.175293, -0.008917,
		36.565441, 32.050755, 38.089050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126057, 31.910307, 37.404400>,  <37.254574, 31.928047, 38.095291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126057, 31.910307, 37.404400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846699, 32.130943, 37.586826>,  <36.679085, 32.263325, 37.696281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846699, 32.130943, 37.586826>,  <37.126057, 31.910307, 37.404400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846699, 32.130943, 37.586826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117692, 0.717055, -0.687009,
		-0.705974, -0.426124, -0.565702,
		-0.698390, 0.551589, 0.456070,
		36.637180, 32.296421, 37.723648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994038, 31.173090, 37.446804>,  <37.126057, 31.910307, 37.404400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994038, 31.173090, 37.446804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681572, 31.407137, 37.533901>,  <36.494091, 31.547565, 37.586159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.681572, 31.407137, 37.533901>,  <36.994038, 31.173090, 37.446804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681572, 31.407137, 37.533901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234232, 0.597967, -0.766532,
		-0.578716, -0.547788, -0.604166,
		-0.781168, 0.585119, 0.217743,
		36.447220, 31.582672, 37.599224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671291, 31.264921, 36.837185>,  <36.994038, 31.173090, 37.446804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671291, 31.264921, 36.837185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557213, 31.552334, 37.090916>,  <36.488766, 31.724781, 37.243156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557213, 31.552334, 37.090916>,  <36.671291, 31.264921, 36.837185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557213, 31.552334, 37.090916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105376, 0.681312, -0.724369,
		-0.952658, -0.139745, -0.270024,
		-0.285198, 0.718530, 0.634332,
		36.471653, 31.767893, 37.281216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029789, 31.437782, 36.339031>,  <36.671291, 31.264921, 36.837185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029789, 31.437782, 36.339031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116589, 31.696594, 36.631405>,  <36.168671, 31.851881, 36.806828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116589, 31.696594, 36.631405>,  <36.029789, 31.437782, 36.339031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116589, 31.696594, 36.631405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067328, 0.756912, -0.650039,
		-0.973847, 0.091848, 0.207814,
		0.217002, 0.647030, 0.730932,
		36.181690, 31.890703, 36.850685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645466, 31.967806, 36.071484>,  <36.029789, 31.437782, 36.339031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645466, 31.967806, 36.071484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921188, 32.138680, 36.305534>,  <36.086620, 32.241203, 36.445965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921188, 32.138680, 36.305534>,  <35.645466, 31.967806, 36.071484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921188, 32.138680, 36.305534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128614, 0.722677, -0.679115,
		-0.712966, 0.543371, 0.443201,
		0.689302, 0.427184, 0.585129,
		36.127979, 32.266834, 36.481071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385567, 32.672554, 36.102840>,  <35.645466, 31.967806, 36.071484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385567, 32.672554, 36.102840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770817, 32.650246, 36.208118>,  <36.001968, 32.636860, 36.271286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770817, 32.650246, 36.208118>,  <35.385567, 32.672554, 36.102840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770817, 32.650246, 36.208118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225159, 0.702566, -0.675059,
		-0.147263, 0.709429, 0.689219,
		0.963129, -0.055773, 0.263197,
		36.059757, 32.633514, 36.287079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784458, 33.205166, 35.833515>,  <35.385567, 32.672554, 36.102840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784458, 33.205166, 35.833515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100563, 32.990307, 35.951462>,  <36.290226, 32.861389, 36.022232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100563, 32.990307, 35.951462>,  <35.784458, 33.205166, 35.833515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100563, 32.990307, 35.951462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528503, 0.353961, -0.771619,
		0.310104, 0.765624, 0.563609,
		0.790266, -0.537151, 0.294870,
		36.337643, 32.829163, 36.039925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392185, 33.705200, 35.938538>,  <35.784458, 33.205166, 35.833515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392185, 33.705200, 35.938538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444241, 33.325813, 35.822964>,  <36.475471, 33.098183, 35.753620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444241, 33.325813, 35.822964>,  <36.392185, 33.705200, 35.938538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444241, 33.325813, 35.822964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430938, 0.316555, -0.845036,
		0.892949, -0.014545, 0.449923,
		0.130134, -0.948463, -0.288935,
		36.483280, 33.041275, 35.736282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105141, 33.698803, 35.654663>,  <36.392185, 33.705200, 35.938538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105141, 33.698803, 35.654663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967022, 33.359901, 35.493202>,  <36.884151, 33.156563, 35.396324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967022, 33.359901, 35.493202>,  <37.105141, 33.698803, 35.654663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967022, 33.359901, 35.493202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349277, 0.283195, -0.893200,
		0.871078, -0.449404, 0.198140,
		-0.345296, -0.847252, -0.403652,
		36.863434, 33.105724, 35.372108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592213, 33.512463, 35.148945>,  <37.105141, 33.698803, 35.654663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592213, 33.512463, 35.148945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265240, 33.302559, 35.053921>,  <37.069057, 33.176617, 34.996906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265240, 33.302559, 35.053921>,  <37.592213, 33.512463, 35.148945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265240, 33.302559, 35.053921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254268, 0.041345, -0.966250,
		0.516868, -0.850247, 0.099632,
		-0.817432, -0.524757, -0.237561,
		37.020012, 33.145130, 34.982651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922970, 32.910244, 34.895035>,  <37.592213, 33.512463, 35.148945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922970, 32.910244, 34.895035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550297, 32.936031, 34.752026>,  <37.326694, 32.951504, 34.666222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550297, 32.936031, 34.752026>,  <37.922970, 32.910244, 34.895035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550297, 32.936031, 34.752026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356494, -0.027154, -0.933903,
		-0.069915, -0.997550, 0.002317,
		-0.931678, 0.064468, -0.357519,
		37.270794, 32.955372, 34.644772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810215, 32.300652, 34.476864>,  <37.922970, 32.910244, 34.895035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810215, 32.300652, 34.476864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534401, 32.564751, 34.357800>,  <37.368912, 32.723209, 34.286362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534401, 32.564751, 34.357800>,  <37.810215, 32.300652, 34.476864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534401, 32.564751, 34.357800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227430, -0.192809, -0.954516,
		-0.687613, -0.725873, -0.017212,
		-0.689539, 0.660252, -0.297664,
		37.327538, 32.762825, 34.268501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095615, 32.279720, 33.811802>,  <37.810215, 32.300652, 34.476864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095615, 32.279720, 33.811802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388458, 32.288261, 33.539459>,  <38.564163, 32.293385, 33.376053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388458, 32.288261, 33.539459>,  <38.095615, 32.279720, 33.811802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388458, 32.288261, 33.539459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418244, -0.803016, 0.424543,
		-0.537675, -0.595575, -0.596821,
		0.732104, 0.021351, -0.680858,
		38.608089, 32.294666, 33.335201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269657, 31.626457, 33.467918>,  <38.095615, 32.279720, 33.811802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269657, 31.626457, 33.467918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628426, 31.803137, 33.476276>,  <38.843685, 31.909143, 33.481289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628426, 31.803137, 33.476276>,  <38.269657, 31.626457, 33.467918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628426, 31.803137, 33.476276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396984, -0.825135, 0.401940,
		0.194775, -0.352214, -0.915428,
		0.896921, 0.441698, 0.020892,
		38.897503, 31.935646, 33.482544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644279, 31.170618, 33.793446>,  <38.269657, 31.626457, 33.467918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644279, 31.170618, 33.793446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915157, 31.456583, 33.723816>,  <39.077686, 31.628162, 33.682037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915157, 31.456583, 33.723816>,  <38.644279, 31.170618, 33.793446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915157, 31.456583, 33.723816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714274, -0.581917, 0.388826,
		0.176680, -0.387649, -0.904717,
		0.677198, 0.714913, -0.174074,
		39.118317, 31.671057, 33.671593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273121, 30.759432, 33.530186>,  <38.644279, 31.170618, 33.793446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273121, 30.759432, 33.530186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391281, 31.120886, 33.654240>,  <39.462177, 31.337759, 33.728672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391281, 31.120886, 33.654240>,  <39.273121, 30.759432, 33.530186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391281, 31.120886, 33.654240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836443, -0.401473, 0.373073,
		0.461632, 0.149205, -0.874433,
		0.295397, 0.903636, 0.310135,
		39.479900, 31.391977, 33.747280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917553, 31.085493, 33.232975>,  <39.273121, 30.759432, 33.530186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917553, 31.085493, 33.232975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875748, 31.213175, 33.609737>,  <39.850666, 31.289783, 33.835796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875748, 31.213175, 33.609737>,  <39.917553, 31.085493, 33.232975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875748, 31.213175, 33.609737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865979, -0.436504, 0.244016,
		0.489037, 0.841174, -0.230802,
		-0.104514, 0.319203, 0.941906,
		39.844395, 31.308935, 33.892307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474045, 31.626221, 33.507622>,  <39.917553, 31.085493, 33.232975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474045, 31.626221, 33.507622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305756, 31.418758, 33.805344>,  <40.204781, 31.294281, 33.983978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.305756, 31.418758, 33.805344>,  <40.474045, 31.626221, 33.507622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305756, 31.418758, 33.805344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892307, -0.384588, 0.236389,
		0.163646, 0.763602, 0.624605,
		-0.420723, -0.518655, 0.744304,
		40.179539, 31.263163, 34.028633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938076, 31.617077, 34.204296>,  <40.474045, 31.626221, 33.507622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938076, 31.617077, 34.204296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712311, 31.287214, 34.189445>,  <40.576851, 31.089296, 34.180534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712311, 31.287214, 34.189445>,  <40.938076, 31.617077, 34.204296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712311, 31.287214, 34.189445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808496, -0.561314, 0.176808,
		-0.166648, 0.069773, 0.983545,
		-0.564414, -0.824656, -0.037130,
		40.542988, 31.039818, 34.178307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599487, 31.592245, 33.856747>,  <40.938076, 31.617077, 34.204296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599487, 31.592245, 33.856747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655582, 31.788950, 34.200493>,  <41.689240, 31.906973, 34.406738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655582, 31.788950, 34.200493>,  <41.599487, 31.592245, 33.856747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655582, 31.788950, 34.200493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950698, 0.309346, -0.021877,
		-0.276598, -0.813926, 0.510900,
		0.140239, 0.491762, 0.859362,
		41.697655, 31.936480, 34.458302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864285, 32.100761, 33.351521>,  <41.599487, 31.592245, 33.856747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864285, 32.100761, 33.351521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034931, 31.998060, 33.698410>,  <42.137318, 31.936440, 33.906544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034931, 31.998060, 33.698410>,  <41.864285, 32.100761, 33.351521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034931, 31.998060, 33.698410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751686, 0.633880, -0.182110,
		-0.502957, 0.729571, 0.463423,
		0.426617, -0.256755, 0.867223,
		42.162918, 31.921034, 33.958576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979046, 32.662281, 33.879498>,  <41.864285, 32.100761, 33.351521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979046, 32.662281, 33.879498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257713, 32.376801, 33.908588>,  <42.424911, 32.205513, 33.926044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257713, 32.376801, 33.908588>,  <41.979046, 32.662281, 33.879498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257713, 32.376801, 33.908588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715713, 0.684511, -0.138562,
		0.049107, 0.148585, 0.987680,
		0.696666, -0.713700, 0.072730,
		42.466713, 32.162689, 33.930408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074173, 33.394577, 34.138264>,  <41.979046, 32.662281, 33.879498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074173, 33.394577, 34.138264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235470, 33.382549, 34.504105>,  <42.332249, 33.375332, 34.723610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.235470, 33.382549, 34.504105>,  <42.074173, 33.394577, 34.138264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235470, 33.382549, 34.504105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893115, 0.230658, -0.386189,
		-0.199345, 0.972570, 0.119870,
		0.403245, -0.030073, 0.914598,
		42.356441, 33.373528, 34.778484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463345, 34.035831, 34.200035>,  <42.074173, 33.394577, 34.138264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463345, 34.035831, 34.200035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634724, 33.755844, 34.428589>,  <42.737553, 33.587852, 34.565720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634724, 33.755844, 34.428589>,  <42.463345, 34.035831, 34.200035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634724, 33.755844, 34.428589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903310, 0.346842, -0.252451,
		-0.021471, 0.624296, 0.780893,
		0.428451, -0.699968, 0.571380,
		42.763260, 33.545853, 34.600002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979294, 34.319565, 34.672012>,  <42.463345, 34.035831, 34.200035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979294, 34.319565, 34.672012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115070, 33.944126, 34.696739>,  <43.196537, 33.718864, 34.711575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115070, 33.944126, 34.696739>,  <42.979294, 34.319565, 34.672012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115070, 33.944126, 34.696739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939333, 0.341685, 0.030071,
		-0.049345, 0.047856, 0.997635,
		0.339438, -0.938595, 0.061813,
		43.216900, 33.662548, 34.715282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.281124, 33.967041, 35.417286>,  <42.979294, 34.319565, 34.672012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.281124, 33.967041, 35.417286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428532, 33.840855, 35.067501>,  <43.516975, 33.765144, 34.857632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.428532, 33.840855, 35.067501>,  <43.281124, 33.967041, 35.417286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428532, 33.840855, 35.067501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902335, 0.347621, 0.254857,
		0.223582, -0.882974, 0.412758,
		0.368515, -0.315464, -0.874459,
		43.539085, 33.746216, 34.805164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788738, 33.464115, 35.455975>,  <43.281124, 33.967041, 35.417286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788738, 33.464115, 35.455975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890087, 33.645916, 35.114395>,  <43.950897, 33.754997, 34.909447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890087, 33.645916, 35.114395>,  <43.788738, 33.464115, 35.455975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890087, 33.645916, 35.114395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908243, 0.192118, 0.371733,
		0.333012, -0.869782, -0.364118,
		0.253374, 0.454499, -0.853951,
		43.966099, 33.782265, 34.858212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462547, 33.288208, 35.610306>,  <43.788738, 33.464115, 35.455975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462547, 33.288208, 35.610306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437733, 33.620262, 35.388664>,  <44.422844, 33.819496, 35.255680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.437733, 33.620262, 35.388664>,  <44.462547, 33.288208, 35.610306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.437733, 33.620262, 35.388664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903469, 0.282633, 0.322278,
		0.424141, -0.480618, -0.767535,
		-0.062038, 0.830135, -0.554100,
		44.419121, 33.869301, 35.222435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147903, 33.420372, 35.333164>,  <44.462547, 33.288208, 35.610306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.147903, 33.420372, 35.333164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944965, 33.763588, 35.365074>,  <44.823204, 33.969517, 35.384220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.944965, 33.763588, 35.365074>,  <45.147903, 33.420372, 35.333164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.944965, 33.763588, 35.365074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812668, 0.445606, 0.375507,
		0.286653, 0.255343, -0.923380,
		-0.507347, 0.858042, 0.079776,
		44.792763, 34.021000, 35.389008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.850670, 33.656631, 35.615765>,  <45.147903, 33.420372, 35.333164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.850670, 33.656631, 35.615765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921463, 33.967854, 35.856865>,  <45.963940, 34.154587, 36.001526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.921463, 33.967854, 35.856865>,  <45.850670, 33.656631, 35.615765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.921463, 33.967854, 35.856865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891549, -0.386159, 0.236690,
		0.416916, 0.495493, -0.762016,
		0.176981, 0.778054, 0.602752,
		45.974556, 34.201271, 36.037689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.592449, 33.878124, 35.467342>,  <45.850670, 33.656631, 35.615765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.592449, 33.878124, 35.467342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452415, 34.023106, 35.812843>,  <46.368393, 34.110092, 36.020145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452415, 34.023106, 35.812843>,  <46.592449, 33.878124, 35.467342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452415, 34.023106, 35.812843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854856, -0.253366, 0.452799,
		0.382963, 0.896903, -0.221144,
		-0.350086, 0.362451, 0.863753,
		46.347389, 34.131840, 36.071968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.834095, 34.546478, 35.331539>,  <46.592449, 33.878124, 35.467342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.834095, 34.546478, 35.331539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530655, 34.719868, 35.136959>,  <46.348591, 34.823902, 35.020210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.530655, 34.719868, 35.136959>,  <46.834095, 34.546478, 35.331539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.530655, 34.719868, 35.136959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594735, 0.155734, -0.788693,
		-0.266118, -0.887609, -0.375939,
		-0.758598, 0.433470, -0.486449,
		46.303074, 34.849907, 34.991024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.413349, 34.952145, 35.146530>,  <46.834095, 34.546478, 35.331539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.413349, 34.952145, 35.146530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.804970, 34.951626, 35.227966>,  <48.039944, 34.951317, 35.276829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.804970, 34.951626, 35.227966>,  <47.413349, 34.952145, 35.146530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.804970, 34.951626, 35.227966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203498, -0.036593, 0.978391,
		0.006186, -0.999330, -0.036090,
		0.979056, -0.001292, 0.203588,
		48.098686, 34.951237, 35.289043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.309662, 28.032427, 24.924931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.968475, 28.239477, 24.898062>,  <32.763763, 28.363708, 24.881941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.968475, 28.239477, 24.898062>,  <33.309662, 28.032427, 24.924931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968475, 28.239477, 24.898062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079773, -0.002097, 0.996811,
		0.515836, 0.855604, 0.043082,
		-0.852965, 0.517627, -0.067172,
		32.712585, 28.394766, 24.877911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313095, 28.704159, 25.419954>,  <33.309662, 28.032427, 24.924931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313095, 28.704159, 25.419954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.926830, 28.636042, 25.341478>,  <32.695072, 28.595171, 25.294394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.926830, 28.636042, 25.341478>,  <33.313095, 28.704159, 25.419954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926830, 28.636042, 25.341478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197095, -0.011732, 0.980314,
		-0.169243, 0.985323, -0.022234,
		-0.965666, -0.170294, -0.196188,
		32.637131, 28.584953, 25.282621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943581, 29.202337, 25.729939>,  <33.313095, 28.704159, 25.419954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943581, 29.202337, 25.729939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.648865, 28.935497, 25.685905>,  <32.472034, 28.775393, 25.659485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.648865, 28.935497, 25.685905>,  <32.943581, 29.202337, 25.729939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648865, 28.935497, 25.685905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312103, 0.191138, 0.930622,
		-0.599777, 0.720031, -0.349033,
		-0.736790, -0.667100, -0.110083,
		32.427826, 28.735367, 25.652880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294205, 29.502790, 25.824627>,  <32.943581, 29.202337, 25.729939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294205, 29.502790, 25.824627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.185741, 29.122173, 25.882650>,  <32.120663, 28.893803, 25.917463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.185741, 29.122173, 25.882650>,  <32.294205, 29.502790, 25.824627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185741, 29.122173, 25.882650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350119, 0.237886, 0.905995,
		-0.896599, 0.194880, -0.397657,
		-0.271158, -0.951542, 0.145057,
		32.104393, 28.836710, 25.926168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668642, 29.547541, 26.128254>,  <32.294205, 29.502790, 25.824627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668642, 29.547541, 26.128254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.817114, 29.198538, 26.255346>,  <31.906197, 28.989136, 26.331602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.817114, 29.198538, 26.255346>,  <31.668642, 29.547541, 26.128254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817114, 29.198538, 26.255346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335300, 0.193145, 0.922100,
		-0.865909, -0.448801, -0.220861,
		0.371182, -0.872509, 0.317729,
		31.928469, 28.936785, 26.350664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180016, 29.290014, 26.550310>,  <31.668642, 29.547541, 26.128254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180016, 29.290014, 26.550310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.503372, 29.087078, 26.669712>,  <31.697386, 28.965317, 26.741352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.503372, 29.087078, 26.669712>,  <31.180016, 29.290014, 26.550310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503372, 29.087078, 26.669712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219954, 0.210025, 0.952633,
		-0.546004, -0.835759, 0.058191,
		0.808393, -0.507342, 0.298503,
		31.745890, 28.934875, 26.759264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068331, 28.991535, 27.127182>,  <31.180016, 29.290014, 26.550310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068331, 28.991535, 27.127182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.466070, 29.033974, 27.128481>,  <31.704714, 29.059437, 27.129259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.466070, 29.033974, 27.128481>,  <31.068331, 28.991535, 27.127182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466070, 29.033974, 27.128481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045652, 0.399846, 0.915445,
		0.095827, -0.910421, 0.402431,
		0.994351, 0.106096, 0.003246,
		31.764376, 29.065802, 27.129456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199415, 28.926451, 27.792961>,  <31.068331, 28.991535, 27.127182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199415, 28.926451, 27.792961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.567841, 29.043774, 27.690498>,  <31.788895, 29.114168, 27.629021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.567841, 29.043774, 27.690498>,  <31.199415, 28.926451, 27.792961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567841, 29.043774, 27.690498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105490, 0.445270, 0.889160,
		0.374856, -0.845994, 0.379180,
		0.921062, 0.293307, -0.256156,
		31.844158, 29.131765, 27.613651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652420, 28.782780, 28.350975>,  <31.199415, 28.926451, 27.792961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652420, 28.782780, 28.350975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.855772, 29.075827, 28.169945>,  <31.977783, 29.251654, 28.061327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.855772, 29.075827, 28.169945>,  <31.652420, 28.782780, 28.350975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855772, 29.075827, 28.169945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204153, 0.408039, 0.889846,
		0.836583, -0.544774, 0.057873,
		0.508379, 0.732615, -0.452576,
		32.008286, 29.295610, 28.034172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176785, 28.766085, 28.743078>,  <31.652420, 28.782780, 28.350975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176785, 28.766085, 28.743078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.188251, 29.126738, 28.570457>,  <32.195129, 29.343130, 28.466885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.188251, 29.126738, 28.570457>,  <32.176785, 28.766085, 28.743078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188251, 29.126738, 28.570457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250679, 0.411447, 0.876283,
		0.967646, -0.133299, -0.214227,
		0.028665, 0.901633, -0.431550,
		32.196850, 29.397228, 28.440992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801517, 28.961475, 28.961531>,  <32.176785, 28.766085, 28.743078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801517, 28.961475, 28.961531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.618618, 29.303268, 28.862915>,  <32.508881, 29.508345, 28.803745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.618618, 29.303268, 28.862915>,  <32.801517, 28.961475, 28.961531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618618, 29.303268, 28.862915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362395, 0.432178, 0.825767,
		0.812155, 0.288234, -0.507273,
		-0.457247, 0.854484, -0.246541,
		32.481445, 29.559614, 28.788952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288284, 29.383083, 29.221125>,  <32.801517, 28.961475, 28.961531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288284, 29.383083, 29.221125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.957066, 29.604010, 29.182564>,  <32.758335, 29.736565, 29.159428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.957066, 29.604010, 29.182564>,  <33.288284, 29.383083, 29.221125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957066, 29.604010, 29.182564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233269, 0.495739, 0.836558,
		0.509833, 0.670218, -0.539331,
		-0.828043, 0.552314, -0.096403,
		32.708652, 29.769703, 29.153643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467930, 30.109188, 29.195230>,  <33.288284, 29.383083, 29.221125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467930, 30.109188, 29.195230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.085365, 30.090666, 29.310566>,  <32.855827, 30.079552, 29.379766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.085365, 30.090666, 29.310566>,  <33.467930, 30.109188, 29.195230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085365, 30.090666, 29.310566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217025, 0.547956, 0.807864,
		-0.195405, 0.835225, -0.514020,
		-0.956408, -0.046306, 0.288338,
		32.798443, 30.076775, 29.397068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349079, 30.825186, 29.382956>,  <33.467930, 30.109188, 29.195230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349079, 30.825186, 29.382956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.065460, 30.595322, 29.546427>,  <32.895290, 30.457403, 29.644508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.065460, 30.595322, 29.546427>,  <33.349079, 30.825186, 29.382956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065460, 30.595322, 29.546427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047836, 0.539018, 0.840935,
		-0.703537, 0.615812, -0.354699,
		-0.709047, -0.574662, 0.408677,
		32.852745, 30.422924, 29.669029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850208, 31.230265, 29.716005>,  <33.349079, 30.825186, 29.382956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850208, 31.230265, 29.716005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.776051, 30.882393, 29.898998>,  <32.731556, 30.673670, 30.008795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.776051, 30.882393, 29.898998>,  <32.850208, 31.230265, 29.716005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776051, 30.882393, 29.898998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037996, 0.458860, 0.887696,
		-0.981930, 0.181953, -0.052024,
		-0.185390, -0.869679, 0.457482,
		32.720432, 30.621489, 30.036243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424549, 31.390642, 30.258505>,  <32.850208, 31.230265, 29.716005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424549, 31.390642, 30.258505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.570984, 31.033442, 30.363214>,  <32.658844, 30.819120, 30.426041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.570984, 31.033442, 30.363214>,  <32.424549, 31.390642, 30.258505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570984, 31.033442, 30.363214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154289, 0.335655, 0.929264,
		-0.917700, -0.299805, 0.260660,
		0.366089, -0.893002, 0.261774,
		32.680809, 30.765541, 30.441746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152710, 31.253578, 30.902771>,  <32.424549, 31.390642, 30.258505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152710, 31.253578, 30.902771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.460854, 30.998587, 30.897633>,  <32.645741, 30.845591, 30.894550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.460854, 30.998587, 30.897633>,  <32.152710, 31.253578, 30.902771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460854, 30.998587, 30.897633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165667, 0.180662, 0.969492,
		-0.615712, -0.748985, 0.244784,
		0.770359, -0.637481, -0.012846,
		32.691963, 30.807343, 30.893778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206524, 30.894173, 31.527458>,  <32.152710, 31.253578, 30.902771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206524, 30.894173, 31.527458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.578201, 30.840282, 31.389795>,  <32.801208, 30.807947, 31.307198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.578201, 30.840282, 31.389795>,  <32.206524, 30.894173, 31.527458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578201, 30.840282, 31.389795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346604, -0.005596, 0.937995,
		-0.128300, -0.990867, 0.041498,
		0.929196, -0.134728, -0.344156,
		32.856960, 30.799864, 31.286549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530300, 30.484869, 32.056694>,  <32.206524, 30.894173, 31.527458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530300, 30.484869, 32.056694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.814762, 30.672846, 31.847534>,  <32.985439, 30.785631, 31.722038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.814762, 30.672846, 31.847534>,  <32.530300, 30.484869, 32.056694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814762, 30.672846, 31.847534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546757, 0.097863, 0.831553,
		0.441953, -0.877256, -0.187349,
		0.711150, 0.469941, -0.522896,
		33.028107, 30.813828, 31.690666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172493, 30.364464, 32.445415>,  <32.530300, 30.484869, 32.056694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172493, 30.364464, 32.445415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.292458, 30.661201, 32.205509>,  <33.364437, 30.839243, 32.061565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.292458, 30.661201, 32.205509>,  <33.172493, 30.364464, 32.445415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292458, 30.661201, 32.205509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607390, 0.336311, 0.719703,
		0.735615, -0.580142, -0.349723,
		0.299914, 0.741843, -0.599768,
		33.382431, 30.883755, 32.025578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978428, 30.386654, 32.452358>,  <33.172493, 30.364464, 32.445415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978428, 30.386654, 32.452358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.815113, 30.734209, 32.340401>,  <33.717125, 30.942741, 32.273228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.815113, 30.734209, 32.340401>,  <33.978428, 30.386654, 32.452358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815113, 30.734209, 32.340401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584042, 0.484279, 0.651436,
		0.701570, 0.102503, -0.705190,
		-0.408283, 0.868888, -0.279890,
		33.692627, 30.994875, 32.256435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477776, 30.811155, 32.433392>,  <33.978428, 30.386654, 32.452358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477776, 30.811155, 32.433392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.179195, 31.077322, 32.430939>,  <34.000050, 31.237022, 32.429466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.179195, 31.077322, 32.430939>,  <34.477776, 30.811155, 32.433392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179195, 31.077322, 32.430939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484628, 0.549911, 0.680245,
		0.456016, 0.504797, -0.732959,
		-0.746449, 0.665415, -0.006129,
		33.955261, 31.276947, 32.429100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461792, 31.068386, 33.113701>,  <34.477776, 30.811155, 32.433392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461792, 31.068386, 33.113701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853687, 31.026922, 33.182243>,  <35.088825, 31.002043, 33.223370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853687, 31.026922, 33.182243>,  <34.461792, 31.068386, 33.113701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853687, 31.026922, 33.182243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200194, 0.530745, -0.823549,
		-0.005576, 0.841169, 0.540744,
		0.979740, -0.103662, 0.171356,
		35.147610, 30.995823, 33.233650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722740, 31.723431, 32.901249>,  <34.461792, 31.068386, 33.113701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722740, 31.723431, 32.901249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.997074, 31.432541, 32.890114>,  <35.161674, 31.258007, 32.883434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.997074, 31.432541, 32.890114>,  <34.722740, 31.723431, 32.901249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997074, 31.432541, 32.890114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333857, 0.348378, -0.875884,
		0.646661, 0.591419, 0.481719,
		0.685834, -0.727225, -0.027833,
		35.202824, 31.214373, 32.881763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152275, 31.895988, 32.376152>,  <34.722740, 31.723431, 32.901249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152275, 31.895988, 32.376152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.299847, 31.529596, 32.439232>,  <35.388390, 31.309761, 32.477077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.299847, 31.529596, 32.439232>,  <35.152275, 31.895988, 32.376152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299847, 31.529596, 32.439232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220166, -0.078710, -0.972282,
		0.903004, 0.393426, 0.172629,
		0.368933, -0.915981, 0.157695,
		35.410526, 31.254803, 32.486542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900948, 31.901754, 32.092041>,  <35.152275, 31.895988, 32.376152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900948, 31.901754, 32.092041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.778580, 31.521650, 32.068649>,  <35.705158, 31.293589, 32.054615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.778580, 31.521650, 32.068649>,  <35.900948, 31.901754, 32.092041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778580, 31.521650, 32.068649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443163, -0.087764, -0.892135,
		0.842628, -0.298835, 0.447968,
		-0.305917, -0.950260, -0.058481,
		35.686806, 31.236572, 32.051105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472298, 31.393518, 31.815155>,  <35.900948, 31.901754, 32.092041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472298, 31.393518, 31.815155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.114254, 31.229616, 31.744869>,  <35.899426, 31.131275, 31.702698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.114254, 31.229616, 31.744869>,  <36.472298, 31.393518, 31.815155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114254, 31.229616, 31.744869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353056, -0.410786, -0.840599,
		0.272259, -0.814467, 0.512366,
		-0.895113, -0.409754, -0.175713,
		35.845718, 31.106689, 31.692156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617931, 30.851442, 31.436464>,  <36.472298, 31.393518, 31.815155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617931, 30.851442, 31.436464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.226528, 30.839346, 31.354866>,  <35.991688, 30.832088, 31.305906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.226528, 30.839346, 31.354866>,  <36.617931, 30.851442, 31.436464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226528, 30.839346, 31.354866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200995, -0.361225, -0.910559,
		-0.046149, -0.931988, 0.359539,
		-0.978504, -0.030244, -0.203995,
		35.932976, 30.830273, 31.293667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489048, 30.288206, 31.042265>,  <36.617931, 30.851442, 31.436464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489048, 30.288206, 31.042265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.161293, 30.504982, 30.967539>,  <35.964638, 30.635048, 30.922703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.161293, 30.504982, 30.967539>,  <36.489048, 30.288206, 31.042265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161293, 30.504982, 30.967539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058781, -0.244746, -0.967804,
		-0.570212, -0.803992, 0.168687,
		-0.819391, 0.541938, -0.186817,
		35.915474, 30.667562, 30.911493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117249, 29.788445, 30.607176>,  <36.489048, 30.288206, 31.042265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117249, 29.788445, 30.607176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.919426, 30.135958, 30.597095>,  <35.800732, 30.344465, 30.591047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.919426, 30.135958, 30.597095>,  <36.117249, 29.788445, 30.607176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919426, 30.135958, 30.597095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334588, -0.217064, -0.917025,
		-0.802165, -0.445085, 0.398034,
		-0.494552, 0.868783, -0.025201,
		35.771061, 30.396593, 30.589535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302532, 29.649946, 30.589931>,  <36.117249, 29.788445, 30.607176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302532, 29.649946, 30.589931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432110, 29.987650, 30.419151>,  <35.509857, 30.190273, 30.316683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.432110, 29.987650, 30.419151>,  <35.302532, 29.649946, 30.589931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432110, 29.987650, 30.419151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435056, -0.267805, -0.859655,
		-0.840112, 0.464225, 0.280548,
		0.323941, 0.844261, -0.426950,
		35.529293, 30.240929, 30.291067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728401, 29.866493, 30.176031>,  <35.302532, 29.649946, 30.589931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728401, 29.866493, 30.176031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048916, 30.071304, 30.052246>,  <35.241226, 30.194191, 29.977976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048916, 30.071304, 30.052246>,  <34.728401, 29.866493, 30.176031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048916, 30.071304, 30.052246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273017, -0.147315, -0.950663,
		-0.532353, 0.846243, 0.021750,
		0.801288, 0.512026, -0.309462,
		35.289303, 30.224913, 29.959408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477486, 30.342703, 29.713774>,  <34.728401, 29.866493, 30.176031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477486, 30.342703, 29.713774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866558, 30.302872, 29.629892>,  <35.100002, 30.278973, 29.579563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866558, 30.302872, 29.629892>,  <34.477486, 30.342703, 29.713774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866558, 30.302872, 29.629892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221528, -0.128106, -0.966703,
		0.069398, 0.986749, -0.146665,
		0.972682, -0.099578, -0.209702,
		35.158363, 30.272999, 29.566982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576912, 30.786484, 29.172922>,  <34.477486, 30.342703, 29.713774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576912, 30.786484, 29.172922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.879219, 30.524685, 29.164471>,  <35.060604, 30.367605, 29.159399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.879219, 30.524685, 29.164471>,  <34.576912, 30.786484, 29.172922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879219, 30.524685, 29.164471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190140, -0.188453, -0.963500,
		0.626628, 0.732199, -0.266873,
		0.755767, -0.654499, -0.021130,
		35.105949, 30.328335, 29.158131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943657, 30.935173, 28.500851>,  <34.576912, 30.786484, 29.172922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943657, 30.935173, 28.500851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.035732, 30.560802, 28.607473>,  <35.090977, 30.336180, 28.671448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.035732, 30.560802, 28.607473>,  <34.943657, 30.935173, 28.500851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035732, 30.560802, 28.607473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108807, -0.296949, -0.948674,
		0.967043, 0.189373, -0.170190,
		0.230191, -0.935927, 0.266557,
		35.104790, 30.280024, 28.687441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499168, 30.725206, 28.118225>,  <34.943657, 30.935173, 28.500851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499168, 30.725206, 28.118225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.312500, 30.388321, 28.226221>,  <35.200497, 30.186190, 28.291019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.312500, 30.388321, 28.226221>,  <35.499168, 30.725206, 28.118225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312500, 30.388321, 28.226221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116051, -0.244321, -0.962725,
		0.876783, -0.480611, 0.016279,
		-0.466674, -0.842212, 0.269992,
		35.172497, 30.135658, 28.307219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731632, 30.263746, 27.694540>,  <35.499168, 30.725206, 28.118225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731632, 30.263746, 27.694540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449772, 30.013603, 27.828640>,  <35.280655, 29.863518, 27.909100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449772, 30.013603, 27.828640>,  <35.731632, 30.263746, 27.694540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449772, 30.013603, 27.828640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128242, -0.576945, -0.806652,
		0.697869, -0.525415, 0.486742,
		-0.704651, -0.625358, 0.335252,
		35.238377, 29.825996, 27.929216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974400, 29.631374, 27.656347>,  <35.731632, 30.263746, 27.694540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974400, 29.631374, 27.656347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.580517, 29.570869, 27.690929>,  <35.344189, 29.534567, 27.711679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.580517, 29.570869, 27.690929>,  <35.974400, 29.631374, 27.656347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580517, 29.570869, 27.690929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040349, -0.680725, -0.731427,
		0.169491, -0.716751, 0.676417,
		-0.984706, -0.151263, 0.086456,
		35.285107, 29.525490, 27.716866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907433, 28.845917, 27.600592>,  <35.974400, 29.631374, 27.656347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907433, 28.845917, 27.600592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.573185, 29.038864, 27.495478>,  <35.372635, 29.154633, 27.432409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.573185, 29.038864, 27.495478>,  <35.907433, 28.845917, 27.600592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573185, 29.038864, 27.495478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027616, -0.514685, -0.856934,
		-0.548614, -0.708814, 0.443402,
		-0.835619, 0.482372, -0.262789,
		35.322498, 29.183575, 27.416641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572990, 28.368525, 27.262852>,  <35.907433, 28.845917, 27.600592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572990, 28.368525, 27.262852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.352203, 28.680447, 27.144709>,  <35.219730, 28.867599, 27.073822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.352203, 28.680447, 27.144709>,  <35.572990, 28.368525, 27.262852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352203, 28.680447, 27.144709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171889, -0.452999, -0.874784,
		-0.815958, -0.432082, 0.384080,
		-0.551966, 0.779806, -0.295357,
		35.186615, 28.914389, 27.056101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.886375, 28.075455, 26.814951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.934559, 28.457077, 26.705214>,  <34.963467, 28.686050, 26.639370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.934559, 28.457077, 26.705214>,  <34.886375, 28.075455, 26.814951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934559, 28.457077, 26.705214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279538, -0.232577, -0.931540,
		-0.952549, 0.188900, 0.238680,
		0.120456, 0.954057, -0.274345,
		34.970695, 28.743294, 26.622910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421776, 28.230690, 26.269484>,  <34.886375, 28.075455, 26.814951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421776, 28.230690, 26.269484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.654579, 28.553507, 26.229582>,  <34.794262, 28.747198, 26.205641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.654579, 28.553507, 26.229582>,  <34.421776, 28.230690, 26.269484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654579, 28.553507, 26.229582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218067, 0.036717, -0.975243,
		-0.783401, 0.589349, 0.197360,
		0.582004, 0.807044, -0.099753,
		34.829182, 28.795620, 26.199656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963497, 28.769152, 25.906322>,  <34.421776, 28.230690, 26.269484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963497, 28.769152, 25.906322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.351547, 28.845783, 25.846773>,  <34.584377, 28.891762, 25.811045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.351547, 28.845783, 25.846773>,  <33.963497, 28.769152, 25.906322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351547, 28.845783, 25.846773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143988, -0.039243, -0.988801,
		-0.195277, 0.980692, -0.010485,
		0.970121, 0.191580, -0.148871,
		34.642582, 28.903257, 25.802113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068695, 29.321686, 25.349289>,  <33.963497, 28.769152, 25.906322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068695, 29.321686, 25.349289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.447987, 29.194679, 25.352074>,  <34.675560, 29.118475, 25.353745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.447987, 29.194679, 25.352074>,  <34.068695, 29.321686, 25.349289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447987, 29.194679, 25.352074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015448, 0.024209, -0.999588,
		0.317219, 0.947943, 0.027861,
		0.948227, -0.317518, 0.006964,
		34.732456, 29.099424, 25.354162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562614, 29.796873, 24.931837>,  <34.068695, 29.321686, 25.349289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562614, 29.796873, 24.931837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733757, 29.435335, 24.931126>,  <34.836445, 29.218412, 24.930698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.733757, 29.435335, 24.931126>,  <34.562614, 29.796873, 24.931837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733757, 29.435335, 24.931126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141882, -0.065218, -0.987733,
		0.892639, 0.422865, -0.156143,
		0.427861, -0.903843, -0.001780,
		34.862114, 29.164183, 24.930592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173275, 29.809305, 24.449896>,  <34.562614, 29.796873, 24.931837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173275, 29.809305, 24.449896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.072243, 29.424465, 24.491022>,  <35.011623, 29.193562, 24.515697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.072243, 29.424465, 24.491022>,  <35.173275, 29.809305, 24.449896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072243, 29.424465, 24.491022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177493, -0.150527, -0.972542,
		0.951157, -0.227394, 0.208786,
		-0.252579, -0.962098, 0.102814,
		34.996468, 29.135836, 24.521866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721996, 29.466316, 24.161764>,  <35.173275, 29.809305, 24.449896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721996, 29.466316, 24.161764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.412033, 29.213486, 24.162613>,  <35.226055, 29.061789, 24.163122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.412033, 29.213486, 24.162613>,  <35.721996, 29.466316, 24.161764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412033, 29.213486, 24.162613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121269, -0.151965, -0.980918,
		0.620335, -0.759861, 0.194410,
		-0.774905, -0.632074, 0.002121,
		35.179562, 29.023863, 24.163250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990456, 28.892502, 23.857996>,  <35.721996, 29.466316, 24.161764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990456, 28.892502, 23.857996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.600441, 28.812773, 23.818871>,  <35.366432, 28.764935, 23.795395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.600441, 28.812773, 23.818871>,  <35.990456, 28.892502, 23.857996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600441, 28.812773, 23.818871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153483, -0.286764, -0.945626,
		0.160437, -0.937036, 0.310199,
		-0.975040, -0.199324, -0.097811,
		35.307930, 28.752975, 23.789528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937397, 28.167406, 23.531036>,  <35.990456, 28.892502, 23.857996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937397, 28.167406, 23.531036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.588902, 28.359686, 23.491282>,  <35.379807, 28.475054, 23.467428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.588902, 28.359686, 23.491282>,  <35.937397, 28.167406, 23.531036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588902, 28.359686, 23.491282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056791, -0.299828, -0.952302,
		-0.487570, -0.824034, 0.288520,
		-0.871235, 0.480699, -0.099389,
		35.327530, 28.503895, 23.461466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538609, 27.702135, 23.218744>,  <35.937397, 28.167406, 23.531036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538609, 27.702135, 23.218744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.373646, 28.057655, 23.138792>,  <35.274666, 28.270967, 23.090820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.373646, 28.057655, 23.138792>,  <35.538609, 27.702135, 23.218744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373646, 28.057655, 23.138792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064154, -0.247197, -0.966839,
		-0.908737, -0.385909, 0.158966,
		-0.412408, 0.888801, -0.199880,
		35.249924, 28.324295, 23.078829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933033, 27.592024, 22.733246>,  <35.538609, 27.702135, 23.218744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933033, 27.592024, 22.733246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.053482, 27.971354, 22.693239>,  <35.125751, 28.198952, 22.669235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.053482, 27.971354, 22.693239>,  <34.933033, 27.592024, 22.733246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053482, 27.971354, 22.693239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081080, -0.079041, -0.993568,
		-0.950131, 0.307297, 0.053089,
		0.301125, 0.948325, -0.100015,
		35.143818, 28.255852, 22.663235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407669, 27.914692, 22.241592>,  <34.933033, 27.592024, 22.733246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407669, 27.914692, 22.241592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.747047, 28.126266, 22.233910>,  <34.950676, 28.253212, 22.229300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.747047, 28.126266, 22.233910>,  <34.407669, 27.914692, 22.241592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747047, 28.126266, 22.233910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061288, -0.134222, -0.989054,
		-0.525724, 0.837981, -0.146297,
		0.848444, 0.528936, -0.019205,
		35.001579, 28.284946, 22.228148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319881, 28.390396, 21.693657>,  <34.407669, 27.914692, 22.241592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319881, 28.390396, 21.693657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.713154, 28.356417, 21.758320>,  <34.949120, 28.336029, 21.797117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.713154, 28.356417, 21.758320>,  <34.319881, 28.390396, 21.693657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713154, 28.356417, 21.758320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174528, 0.176505, -0.968703,
		0.053757, 0.980627, 0.188363,
		0.983184, -0.084950, 0.161659,
		35.008110, 28.330933, 21.806818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567642, 28.787195, 21.128675>,  <34.319881, 28.390396, 21.693657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567642, 28.787195, 21.128675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.893906, 28.597567, 21.261316>,  <35.089664, 28.483789, 21.340900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.893906, 28.597567, 21.261316>,  <34.567642, 28.787195, 21.128675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893906, 28.597567, 21.261316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334152, -0.081862, -0.938957,
		0.472279, 0.876673, 0.091640,
		0.815656, -0.474071, 0.331603,
		35.138603, 28.455345, 21.360798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152302, 29.094830, 20.798985>,  <34.567642, 28.787195, 21.128675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152302, 29.094830, 20.798985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.295303, 28.744055, 20.927471>,  <35.381104, 28.533590, 21.004562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.295303, 28.744055, 20.927471>,  <35.152302, 29.094830, 20.798985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295303, 28.744055, 20.927471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371147, -0.182212, -0.910521,
		0.856997, 0.444728, 0.260331,
		0.357499, -0.876935, 0.321214,
		35.402554, 28.480974, 21.023836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872738, 29.106955, 20.643578>,  <35.152302, 29.094830, 20.798985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872738, 29.106955, 20.643578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.745010, 28.728128, 20.656845>,  <35.668373, 28.500832, 20.664806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.745010, 28.728128, 20.656845>,  <35.872738, 29.106955, 20.643578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745010, 28.728128, 20.656845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630270, -0.238383, -0.738874,
		0.707669, -0.215031, 0.673028,
		-0.319319, -0.947067, 0.033169,
		35.649216, 28.444008, 20.666796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462429, 28.803551, 20.506916>,  <35.872738, 29.106955, 20.643578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462429, 28.803551, 20.506916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.188347, 28.519051, 20.444155>,  <36.023899, 28.348351, 20.406498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.188347, 28.519051, 20.444155>,  <36.462429, 28.803551, 20.506916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188347, 28.519051, 20.444155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446899, -0.240449, -0.861665,
		0.575131, -0.660537, 0.482613,
		-0.685205, -0.711249, -0.156904,
		35.982784, 28.305676, 20.397083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818336, 28.253967, 20.275473>,  <36.462429, 28.803551, 20.506916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818336, 28.253967, 20.275473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.444614, 28.196987, 20.144766>,  <36.220379, 28.162798, 20.066341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.444614, 28.196987, 20.144766>,  <36.818336, 28.253967, 20.275473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444614, 28.196987, 20.144766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356020, -0.418863, -0.835346,
		-0.017874, -0.896806, 0.442062,
		-0.934307, -0.142452, -0.326768,
		36.164322, 28.154251, 20.046736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872860, 27.600985, 20.046249>,  <36.818336, 28.253967, 20.275473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872860, 27.600985, 20.046249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.530872, 27.701420, 19.864708>,  <36.325680, 27.761681, 19.755783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.530872, 27.701420, 19.864708>,  <36.872860, 27.600985, 20.046249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530872, 27.701420, 19.864708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258949, -0.551537, -0.792939,
		-0.449412, -0.795464, 0.406530,
		-0.854970, 0.251086, -0.453852,
		36.274380, 27.776747, 19.728552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562424, 26.976210, 19.838135>,  <36.872860, 27.600985, 20.046249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562424, 26.976210, 19.838135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.403851, 27.269253, 19.616819>,  <36.308708, 27.445080, 19.484030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.403851, 27.269253, 19.616819>,  <36.562424, 26.976210, 19.838135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403851, 27.269253, 19.616819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233328, -0.502478, -0.832511,
		-0.887920, -0.459129, 0.028258,
		-0.396429, 0.732609, -0.553288,
		36.284924, 27.489035, 19.450832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101524, 26.655045, 19.364124>,  <36.562424, 26.976210, 19.838135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101524, 26.655045, 19.364124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.209618, 27.008270, 19.210674>,  <36.274475, 27.220205, 19.118605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.209618, 27.008270, 19.210674>,  <36.101524, 26.655045, 19.364124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209618, 27.008270, 19.210674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060194, -0.413167, -0.908664,
		-0.960911, 0.222460, -0.164806,
		0.270234, 0.883066, -0.383626,
		36.290688, 27.273190, 19.095587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819546, 26.633278, 18.644928>,  <36.101524, 26.655045, 19.364124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819546, 26.633278, 18.644928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.129410, 26.886091, 18.653206>,  <36.315331, 27.037779, 18.658173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.129410, 26.886091, 18.653206>,  <35.819546, 26.633278, 18.644928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129410, 26.886091, 18.653206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264908, -0.294627, -0.918161,
		-0.574213, 0.716747, -0.395668,
		0.774663, 0.632035, 0.020694,
		36.361809, 27.075703, 18.659414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621841, 26.585960, 17.880934>,  <35.819546, 26.633278, 18.644928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621841, 26.585960, 17.880934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453377, 26.884060, 17.674158>,  <35.352299, 27.062920, 17.550093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453377, 26.884060, 17.674158>,  <35.621841, 26.585960, 17.880934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453377, 26.884060, 17.674158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779030, -0.005365, 0.626964,
		0.464469, 0.666767, 0.582829,
		-0.421166, 0.745247, -0.516940,
		35.327026, 27.107634, 17.519075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216801, 26.821079, 18.311251>,  <35.621841, 26.585960, 17.880934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216801, 26.821079, 18.311251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.089268, 27.063864, 18.020061>,  <35.012749, 27.209534, 17.845348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.089268, 27.063864, 18.020061>,  <35.216801, 26.821079, 18.311251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089268, 27.063864, 18.020061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794197, 0.248106, 0.554702,
		0.517297, 0.755012, 0.402941,
		-0.318835, 0.606960, -0.727972,
		34.993618, 27.245953, 17.801670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108387, 27.541063, 18.541725>,  <35.216801, 26.821079, 18.311251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108387, 27.541063, 18.541725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.863514, 27.465759, 18.234533>,  <34.716591, 27.420576, 18.050219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.863514, 27.465759, 18.234533>,  <35.108387, 27.541063, 18.541725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863514, 27.465759, 18.234533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755723, 0.425050, 0.498212,
		0.232636, 0.885376, -0.402480,
		-0.612179, -0.188261, -0.767981,
		34.679859, 27.409281, 18.004139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634304, 28.099436, 18.443047>,  <35.108387, 27.541063, 18.541725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634304, 28.099436, 18.443047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.432430, 27.804493, 18.263449>,  <34.311306, 27.627527, 18.155691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.432430, 27.804493, 18.263449>,  <34.634304, 28.099436, 18.443047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432430, 27.804493, 18.263449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823615, 0.255359, 0.506408,
		-0.258750, 0.625374, -0.736176,
		-0.504684, -0.737359, -0.448994,
		34.281025, 27.583284, 18.128750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976063, 28.303881, 18.050486>,  <34.634304, 28.099436, 18.443047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976063, 28.303881, 18.050486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.912651, 27.926041, 18.165443>,  <33.874603, 27.699337, 18.234419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.912651, 27.926041, 18.165443>,  <33.976063, 28.303881, 18.050486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912651, 27.926041, 18.165443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855003, 0.276913, 0.438509,
		-0.493799, -0.176205, -0.851537,
		-0.158534, -0.944601, 0.287395,
		33.865089, 27.642660, 18.251661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273232, 28.207508, 18.089954>,  <33.976063, 28.303881, 18.050486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273232, 28.207508, 18.089954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.394691, 27.890434, 18.301409>,  <33.467567, 27.700190, 18.428282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.394691, 27.890434, 18.301409>,  <33.273232, 28.207508, 18.089954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394691, 27.890434, 18.301409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719038, 0.173382, 0.672996,
		-0.625127, -0.584460, -0.517322,
		0.303645, -0.792682, 0.528635,
		33.485786, 27.652630, 18.459999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669617, 28.130823, 18.472012>,  <33.273232, 28.207508, 18.089954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669617, 28.130823, 18.472012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.972668, 27.935701, 18.645472>,  <33.154499, 27.818628, 18.749548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.972668, 27.935701, 18.645472>,  <32.669617, 28.130823, 18.472012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972668, 27.935701, 18.645472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393341, 0.188964, 0.899764,
		-0.520853, -0.852255, -0.048711,
		0.757624, -0.487805, 0.433649,
		33.199955, 27.789360, 18.775566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402451, 27.610062, 18.825018>,  <32.669617, 28.130823, 18.472012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402451, 27.610062, 18.825018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.746056, 27.745586, 18.978540>,  <32.952217, 27.826900, 19.070654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.746056, 27.745586, 18.978540>,  <32.402451, 27.610062, 18.825018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746056, 27.745586, 18.978540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471098, 0.229637, 0.851666,
		0.200418, -0.912400, 0.356874,
		0.859011, 0.338812, 0.383806,
		33.003757, 27.847231, 19.093681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282135, 27.386812, 19.583580>,  <32.402451, 27.610062, 18.825018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282135, 27.386812, 19.583580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.590450, 27.637957, 19.540369>,  <32.775440, 27.788643, 19.514442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.590450, 27.637957, 19.540369>,  <32.282135, 27.386812, 19.583580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590450, 27.637957, 19.540369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145085, 0.338101, 0.929859,
		0.620348, -0.701053, 0.351699,
		0.770790, 0.627863, -0.108028,
		32.821686, 27.826315, 19.507961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466698, 27.447792, 20.220299>,  <32.282135, 27.386812, 19.583580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466698, 27.447792, 20.220299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675781, 27.747463, 20.057571>,  <32.801231, 27.927267, 19.959934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.675781, 27.747463, 20.057571>,  <32.466698, 27.447792, 20.220299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675781, 27.747463, 20.057571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057378, 0.507037, 0.860012,
		0.850576, -0.426197, 0.308022,
		0.522713, 0.749179, -0.406819,
		32.832596, 27.972218, 19.935526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106705, 27.435291, 20.499933>,  <32.466698, 27.447792, 20.220299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106705, 27.435291, 20.499933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.056400, 27.804337, 20.354076>,  <33.026218, 28.025764, 20.266562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.056400, 27.804337, 20.354076>,  <33.106705, 27.435291, 20.499933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056400, 27.804337, 20.354076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073522, 0.375218, 0.924016,
		0.989332, 0.089398, -0.115021,
		-0.125763, 0.922615, -0.364643,
		33.018673, 28.081121, 20.244684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682789, 27.880608, 20.744209>,  <33.106705, 27.435291, 20.499933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682789, 27.880608, 20.744209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.370235, 28.120436, 20.674984>,  <33.182705, 28.264334, 20.633450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.370235, 28.120436, 20.674984>,  <33.682789, 27.880608, 20.744209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370235, 28.120436, 20.674984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058839, 0.346871, 0.936066,
		0.621269, 0.721245, -0.306317,
		-0.781385, 0.599572, -0.173063,
		33.135818, 28.300308, 20.623066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912544, 28.481684, 20.834696>,  <33.682789, 27.880608, 20.744209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912544, 28.481684, 20.834696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.517490, 28.520267, 20.884129>,  <33.280457, 28.543417, 20.913788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.517490, 28.520267, 20.884129>,  <33.912544, 28.481684, 20.834696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517490, 28.520267, 20.884129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152621, 0.411448, 0.898564,
		0.035825, 0.906315, -0.421082,
		-0.987635, 0.096457, 0.123582,
		33.221199, 28.549204, 20.921204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861347, 28.992353, 21.352428>,  <33.912544, 28.481684, 20.834696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861347, 28.992353, 21.352428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.481995, 28.867290, 21.331158>,  <33.254383, 28.792253, 21.318396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.481995, 28.867290, 21.331158>,  <33.861347, 28.992353, 21.352428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481995, 28.867290, 21.331158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189406, 0.423893, 0.885686,
		-0.254374, 0.850036, -0.461230,
		-0.948377, -0.312655, -0.053175,
		33.197483, 28.773495, 21.315205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467411, 29.542812, 21.548347>,  <33.861347, 28.992353, 21.352428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467411, 29.542812, 21.548347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.253716, 29.214701, 21.630060>,  <33.125496, 29.017834, 21.679087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.253716, 29.214701, 21.630060>,  <33.467411, 29.542812, 21.548347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253716, 29.214701, 21.630060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145127, 0.327070, 0.933790,
		-0.832780, 0.469224, -0.293779,
		-0.534243, -0.820277, 0.204280,
		33.093441, 28.968618, 21.691343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904694, 29.760759, 21.991625>,  <33.467411, 29.542812, 21.548347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904694, 29.760759, 21.991625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.912373, 29.366644, 22.059549>,  <32.916981, 29.130175, 22.100304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.912373, 29.366644, 22.059549>,  <32.904694, 29.760759, 21.991625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912373, 29.366644, 22.059549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171510, 0.164080, 0.971423,
		-0.984995, -0.047775, -0.165837,
		0.019199, -0.985289, 0.169812,
		32.918133, 29.071056, 22.110493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286633, 29.615786, 22.343973>,  <32.904694, 29.760759, 21.991625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286633, 29.615786, 22.343973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.529095, 29.308163, 22.425097>,  <32.674572, 29.123589, 22.473770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.529095, 29.308163, 22.425097>,  <32.286633, 29.615786, 22.343973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529095, 29.308163, 22.425097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229152, 0.075311, 0.970473,
		-0.761622, -0.634728, -0.130581,
		0.606153, -0.769057, 0.202808,
		32.710941, 29.077446, 22.485939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882158, 29.222317, 22.774487>,  <32.286633, 29.615786, 22.343973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882158, 29.222317, 22.774487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.248409, 29.072943, 22.834051>,  <32.468159, 28.983318, 22.869791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.248409, 29.072943, 22.834051>,  <31.882158, 29.222317, 22.774487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248409, 29.072943, 22.834051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193016, -0.083406, 0.977644,
		-0.352665, -0.923900, -0.148447,
		0.915627, -0.373434, 0.148913,
		32.523098, 28.960913, 22.878725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769999, 28.508654, 22.995283>,  <31.882158, 29.222317, 22.774487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769999, 28.508654, 22.995283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.116573, 28.655758, 23.130363>,  <32.324516, 28.744020, 23.211412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.116573, 28.655758, 23.130363>,  <31.769999, 28.508654, 22.995283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116573, 28.655758, 23.130363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242517, -0.281236, 0.928489,
		0.436434, -0.886374, -0.154485,
		0.866436, 0.367759, 0.337702,
		32.376503, 28.766085, 23.231674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096088, 27.985716, 23.413652>,  <31.769999, 28.508654, 22.995283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096088, 27.985716, 23.413652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263599, 28.326632, 23.539019>,  <32.364105, 28.531181, 23.614239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263599, 28.326632, 23.539019>,  <32.096088, 27.985716, 23.413652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263599, 28.326632, 23.539019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156146, -0.272412, 0.949426,
		0.894564, -0.446536, 0.019002,
		0.418776, 0.852289, 0.313415,
		32.389233, 28.582319, 23.633043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567928, 27.810368, 23.787285>,  <32.096088, 27.985716, 23.413652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567928, 27.810368, 23.787285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.544044, 28.192482, 23.903120>,  <32.529713, 28.421751, 23.972620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.544044, 28.192482, 23.903120>,  <32.567928, 27.810368, 23.787285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544044, 28.192482, 23.903120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022593, -0.288737, 0.957142,
		0.997960, 0.063693, -0.004343,
		-0.059709, 0.955288, 0.289587,
		32.526131, 28.479069, 23.989996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072609, 27.902744, 24.276686>,  <32.567928, 27.810368, 23.787285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072609, 27.902744, 24.276686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.832390, 28.212591, 24.355989>,  <32.688259, 28.398500, 24.403572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.832390, 28.212591, 24.355989>,  <33.072609, 27.902744, 24.276686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832390, 28.212591, 24.355989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015049, -0.236957, 0.971403,
		0.799447, 0.586358, 0.130646,
		-0.600548, 0.774619, 0.198259,
		32.652225, 28.444977, 24.415466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.074497, 29.521114, 29.243851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.780205, 29.788027, 29.197491>,  <35.603630, 29.948175, 29.169674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.780205, 29.788027, 29.197491>,  <36.074497, 29.521114, 29.243851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780205, 29.788027, 29.197491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206026, 0.383525, 0.900257,
		0.645176, 0.638469, -0.419649,
		-0.735732, 0.667283, -0.115899,
		35.559486, 29.988211, 29.162722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369629, 30.274500, 29.287275>,  <36.074497, 29.521114, 29.243851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369629, 30.274500, 29.287275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.984352, 30.238218, 29.388496>,  <35.753185, 30.216450, 29.449228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.984352, 30.238218, 29.388496>,  <36.369629, 30.274500, 29.287275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984352, 30.238218, 29.388496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173583, 0.508921, 0.843130,
		-0.205260, 0.856021, -0.474443,
		-0.963191, -0.090706, 0.253052,
		35.695396, 30.211006, 29.464413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146156, 31.009155, 29.484579>,  <36.369629, 30.274500, 29.287275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146156, 31.009155, 29.484579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.897446, 30.732218, 29.631035>,  <35.748219, 30.566055, 29.718908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.897446, 30.732218, 29.631035>,  <36.146156, 31.009155, 29.484579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897446, 30.732218, 29.631035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004386, 0.470565, 0.882354,
		-0.783184, 0.547020, -0.295622,
		-0.621775, -0.692342, 0.366139,
		35.710915, 30.524515, 29.740877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588394, 31.418667, 29.769142>,  <36.146156, 31.009155, 29.484579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588394, 31.418667, 29.769142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.589703, 31.060305, 29.946836>,  <35.590488, 30.845287, 30.053453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.589703, 31.060305, 29.946836>,  <35.588394, 31.418667, 29.769142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589703, 31.060305, 29.946836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094824, 0.442514, 0.891734,
		-0.995489, 0.039209, 0.086400,
		0.003269, -0.895904, 0.444235,
		35.590683, 30.791533, 30.080107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323479, 31.595814, 30.383915>,  <35.588394, 31.418667, 29.769142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323479, 31.595814, 30.383915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.442230, 31.218525, 30.443514>,  <35.513481, 30.992151, 30.479273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.442230, 31.218525, 30.443514>,  <35.323479, 31.595814, 30.383915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442230, 31.218525, 30.443514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097456, 0.185142, 0.977867,
		-0.949930, -0.275784, 0.146887,
		0.296875, -0.943221, 0.148995,
		35.531292, 30.935558, 30.488213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756794, 31.248341, 30.742584>,  <35.323479, 31.595814, 30.383915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756794, 31.248341, 30.742584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.113197, 31.076736, 30.801991>,  <35.327038, 30.973774, 30.837635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.113197, 31.076736, 30.801991>,  <34.756794, 31.248341, 30.742584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113197, 31.076736, 30.801991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159868, 0.009690, 0.987091,
		-0.424913, -0.903247, -0.059951,
		0.891005, -0.429012, 0.148517,
		35.380501, 30.948032, 30.846546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633984, 30.676052, 31.221575>,  <34.756794, 31.248341, 30.742584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633984, 30.676052, 31.221575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.030663, 30.718969, 31.249924>,  <35.268669, 30.744720, 31.266933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.030663, 30.718969, 31.249924>,  <34.633984, 30.676052, 31.221575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030663, 30.718969, 31.249924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070548, -0.006833, 0.997485,
		0.107509, -0.994204, 0.000793,
		0.991698, 0.107295, 0.070873,
		35.328171, 30.751158, 31.271185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782986, 30.316595, 31.724436>,  <34.633984, 30.676052, 31.221575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782986, 30.316595, 31.724436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.126743, 30.519655, 31.700008>,  <35.332996, 30.641491, 31.685352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.126743, 30.519655, 31.700008>,  <34.782986, 30.316595, 31.724436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126743, 30.519655, 31.700008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083881, -0.022154, 0.996229,
		0.504385, -0.861277, -0.061621,
		0.859395, 0.507653, -0.061071,
		35.384563, 30.671951, 31.681686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344326, 29.977589, 32.064243>,  <34.782986, 30.316595, 31.724436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344326, 29.977589, 32.064243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.443535, 30.365009, 32.056274>,  <35.503059, 30.597462, 32.051495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.443535, 30.365009, 32.056274>,  <35.344326, 29.977589, 32.064243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443535, 30.365009, 32.056274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029071, 0.013113, 0.999491,
		0.968319, -0.248473, -0.024904,
		0.248020, 0.968550, -0.019921,
		35.517941, 30.655575, 32.050297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863052, 30.060608, 32.511459>,  <35.344326, 29.977589, 32.064243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863052, 30.060608, 32.511459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.727203, 30.436808, 32.507042>,  <35.645695, 30.662527, 32.504391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.727203, 30.436808, 32.507042>,  <35.863052, 30.060608, 32.511459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727203, 30.436808, 32.507042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155813, 0.067837, 0.985454,
		0.927567, 0.332959, -0.169580,
		-0.339620, 0.940498, -0.011044,
		35.625317, 30.718958, 32.503727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256195, 30.371771, 32.906609>,  <35.863052, 30.060608, 32.511459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256195, 30.371771, 32.906609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.928822, 30.601254, 32.919422>,  <35.732399, 30.738943, 32.927109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.928822, 30.601254, 32.919422>,  <36.256195, 30.371771, 32.906609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928822, 30.601254, 32.919422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042164, -0.115561, 0.992405,
		0.573052, 0.810867, 0.118769,
		-0.818433, 0.573708, 0.032033,
		35.683292, 30.773365, 32.929031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325565, 30.685736, 33.619671>,  <36.256195, 30.371771, 32.906609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325565, 30.685736, 33.619671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.959488, 30.733541, 33.465714>,  <35.739841, 30.762226, 33.373341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.959488, 30.733541, 33.465714>,  <36.325565, 30.685736, 33.619671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959488, 30.733541, 33.465714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402331, -0.215030, 0.889883,
		0.023592, 0.969267, 0.244878,
		-0.915190, 0.119517, -0.384893,
		35.684933, 30.769396, 33.350246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132427, 30.757853, 33.905529>,  <36.325565, 30.685736, 33.619671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132427, 30.757853, 33.905529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.096916, 30.816351, 34.299633>,  <37.075611, 30.851450, 34.536095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.096916, 30.816351, 34.299633>,  <37.132427, 30.757853, 33.905529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096916, 30.816351, 34.299633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537616, 0.839739, -0.076203,
		-0.838503, 0.522925, -0.153175,
		-0.088778, 0.146245, 0.985257,
		37.070282, 30.860224, 34.595211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706398, 31.347355, 34.199383>,  <37.132427, 30.757853, 33.905529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.706398, 31.347355, 34.199383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.040989, 31.249973, 34.395763>,  <37.241745, 31.191544, 34.513592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.040989, 31.249973, 34.395763>,  <36.706398, 31.347355, 34.199383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040989, 31.249973, 34.395763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379120, 0.903989, -0.197668,
		-0.395693, 0.351475, 0.848465,
		0.836478, -0.243454, 0.490953,
		37.291931, 31.176937, 34.543049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786018, 31.904406, 33.785686>,  <36.706398, 31.347355, 34.199383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786018, 31.904406, 33.785686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.850815, 32.298187, 33.758545>,  <36.889694, 32.534458, 33.742260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.850815, 32.298187, 33.758545>,  <36.786018, 31.904406, 33.785686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850815, 32.298187, 33.758545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069426, -0.079965, -0.994377,
		-0.984347, 0.156371, -0.081300,
		0.161993, 0.984456, -0.067858,
		36.899414, 32.593525, 33.738186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377228, 32.068523, 33.224766>,  <36.786018, 31.904406, 33.785686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377228, 32.068523, 33.224766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.624111, 32.382027, 33.252415>,  <36.772240, 32.570129, 33.269005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.624111, 32.382027, 33.252415>,  <36.377228, 32.068523, 33.224766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624111, 32.382027, 33.252415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012280, 0.078247, -0.996858,
		-0.786704, 0.616119, 0.038670,
		0.617209, 0.783757, 0.069123,
		36.809273, 32.617153, 33.273151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096134, 32.563831, 32.884167>,  <36.377228, 32.068523, 33.224766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096134, 32.563831, 32.884167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.475113, 32.688831, 32.911564>,  <36.702499, 32.763832, 32.928001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.475113, 32.688831, 32.911564>,  <36.096134, 32.563831, 32.884167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475113, 32.688831, 32.911564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021864, 0.150351, -0.988391,
		-0.319166, 0.937945, 0.135617,
		0.947447, 0.312496, 0.068494,
		36.759346, 32.782581, 32.932114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094585, 33.133709, 32.542614>,  <36.096134, 32.563831, 32.884167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094585, 33.133709, 32.542614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.473572, 33.006500, 32.556347>,  <36.700962, 32.930176, 32.564587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.473572, 33.006500, 32.556347>,  <36.094585, 33.133709, 32.542614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473572, 33.006500, 32.556347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112517, 0.230883, -0.966454,
		0.299426, 0.919541, 0.254535,
		0.947462, -0.318021, 0.034332,
		36.757809, 32.911095, 32.566647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384552, 33.659229, 32.233093>,  <36.094585, 33.133709, 32.542614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384552, 33.659229, 32.233093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.653023, 33.364208, 32.203350>,  <36.814106, 33.187195, 32.185505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.653023, 33.364208, 32.203350>,  <36.384552, 33.659229, 32.233093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653023, 33.364208, 32.203350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159630, 0.241753, -0.957117,
		0.723904, 0.630527, 0.279996,
		0.671179, -0.737557, -0.074355,
		36.854378, 33.142941, 32.181042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968693, 34.012413, 31.870687>,  <36.384552, 33.659229, 32.233093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968693, 34.012413, 31.870687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.981792, 33.613869, 31.839188>,  <36.989655, 33.374744, 31.820288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.981792, 33.613869, 31.839188>,  <36.968693, 34.012413, 31.870687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981792, 33.613869, 31.839188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131373, 0.082398, -0.987902,
		0.990792, 0.022011, 0.133593,
		0.032753, -0.996356, -0.078748,
		36.991619, 33.314960, 31.815563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425983, 33.890751, 31.397005>,  <36.968693, 34.012413, 31.870687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425983, 33.890751, 31.397005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.207905, 33.555431, 31.398918>,  <37.077057, 33.354240, 31.400066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.207905, 33.555431, 31.398918>,  <37.425983, 33.890751, 31.397005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207905, 33.555431, 31.398918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004997, -0.002454, -0.999985,
		0.838294, -0.545212, -0.002851,
		-0.545196, -0.838295, 0.004782,
		37.044346, 33.303944, 31.400352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690403, 33.590508, 30.885498>,  <37.425983, 33.890751, 31.397005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690403, 33.590508, 30.885498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.351208, 33.386925, 30.944670>,  <37.147690, 33.264774, 30.980173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.351208, 33.386925, 30.944670>,  <37.690403, 33.590508, 30.885498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351208, 33.386925, 30.944670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126525, -0.076643, -0.988998,
		0.514697, -0.857372, 0.000596,
		-0.847985, -0.508959, 0.147927,
		37.096813, 33.234238, 30.989048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756275, 33.100925, 30.434206>,  <37.690403, 33.590508, 30.885498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756275, 33.100925, 30.434206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.367970, 33.134361, 30.524212>,  <37.134987, 33.154423, 30.578215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.367970, 33.134361, 30.524212>,  <37.756275, 33.100925, 30.434206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367970, 33.134361, 30.524212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236237, -0.166512, -0.957322,
		-0.042550, -0.982490, 0.181389,
		-0.970764, 0.083585, 0.225015,
		37.076740, 33.159439, 30.591717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311996, 32.526787, 30.187168>,  <37.756275, 33.100925, 30.434206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311996, 32.526787, 30.187168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.020199, 32.798611, 30.218248>,  <36.845119, 32.961704, 30.236897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.020199, 32.798611, 30.218248>,  <37.311996, 32.526787, 30.187168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020199, 32.798611, 30.218248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324894, -0.244303, -0.913652,
		-0.601900, -0.691747, 0.399003,
		-0.729493, 0.679561, 0.077698,
		36.801350, 33.002480, 30.241558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712124, 32.172745, 30.023935>,  <37.311996, 32.526787, 30.187168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712124, 32.172745, 30.023935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.589073, 32.550522, 29.977633>,  <36.515244, 32.777187, 29.949852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.589073, 32.550522, 29.977633>,  <36.712124, 32.172745, 30.023935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589073, 32.550522, 29.977633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401307, -0.239087, -0.884189,
		-0.862739, -0.225547, 0.452559,
		-0.307628, 0.944439, -0.115756,
		36.496784, 32.833855, 29.942905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077496, 32.114811, 29.698025>,  <36.712124, 32.172745, 30.023935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077496, 32.114811, 29.698025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.222435, 32.480125, 29.623606>,  <36.309399, 32.699314, 29.578955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.222435, 32.480125, 29.623606>,  <36.077496, 32.114811, 29.698025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222435, 32.480125, 29.623606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414478, -0.020899, -0.909820,
		-0.834814, 0.406782, 0.370964,
		0.362346, 0.913286, -0.186049,
		36.331139, 32.754112, 29.567791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536999, 32.408958, 29.340399>,  <36.077496, 32.114811, 29.698025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536999, 32.408958, 29.340399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.850105, 32.643440, 29.256838>,  <36.037968, 32.784130, 29.206701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.850105, 32.643440, 29.256838>,  <35.536999, 32.408958, 29.340399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850105, 32.643440, 29.256838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220243, -0.053009, -0.974003,
		-0.582041, 0.808426, 0.087614,
		0.782765, 0.586206, -0.208904,
		36.084934, 32.819302, 29.194166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343987, 32.955185, 28.867779>,  <35.536999, 32.408958, 29.340399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343987, 32.955185, 28.867779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.737160, 32.901947, 28.816969>,  <35.973064, 32.870003, 28.786484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.737160, 32.901947, 28.816969>,  <35.343987, 32.955185, 28.867779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737160, 32.901947, 28.816969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158332, -0.260316, -0.952453,
		0.093699, 0.956306, -0.276946,
		0.982930, -0.133093, -0.127022,
		36.032040, 32.862019, 28.778862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481686, 33.585247, 28.832567>,  <35.343987, 32.955185, 28.867779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481686, 33.585247, 28.832567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.274113, 33.862488, 28.632442>,  <35.149567, 34.028831, 28.512367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.274113, 33.862488, 28.632442>,  <35.481686, 33.585247, 28.832567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274113, 33.862488, 28.632442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113312, 0.524345, 0.843933,
		0.847269, 0.494639, -0.193565,
		-0.518937, 0.693105, -0.500310,
		35.118431, 34.070419, 28.482349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724808, 34.254147, 28.926443>,  <35.481686, 33.585247, 28.832567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724808, 34.254147, 28.926443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.332058, 34.278797, 28.854759>,  <35.096409, 34.293587, 28.811749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.332058, 34.278797, 28.854759>,  <35.724808, 34.254147, 28.926443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332058, 34.278797, 28.854759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122495, 0.515161, 0.848295,
		0.144598, 0.854875, -0.498277,
		-0.981879, 0.061625, -0.179209,
		35.037495, 34.297283, 28.800997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655499, 34.751423, 29.372799>,  <35.724808, 34.254147, 28.926443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655499, 34.751423, 29.372799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.294323, 34.671917, 29.220383>,  <35.077618, 34.624214, 29.128933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.294323, 34.671917, 29.220383>,  <35.655499, 34.751423, 29.372799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294323, 34.671917, 29.220383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421976, 0.578059, 0.698415,
		0.081446, 0.791417, -0.605826,
		-0.902941, -0.198761, -0.381040,
		35.023441, 34.612289, 29.106071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395363, 35.404385, 29.275290>,  <35.655499, 34.751423, 29.372799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395363, 35.404385, 29.275290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.082943, 35.154797, 29.285297>,  <34.895493, 35.005043, 29.291302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.082943, 35.154797, 29.285297>,  <35.395363, 35.404385, 29.275290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082943, 35.154797, 29.285297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456970, 0.598401, 0.658099,
		-0.425606, 0.502573, -0.752516,
		-0.781049, -0.623968, 0.025022,
		34.848629, 34.967606, 29.292805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792000, 35.787609, 29.337505>,  <35.395363, 35.404385, 29.275290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792000, 35.787609, 29.337505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.691017, 35.422558, 29.466114>,  <34.630428, 35.203526, 29.543280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.691017, 35.422558, 29.466114>,  <34.792000, 35.787609, 29.337505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691017, 35.422558, 29.466114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409206, 0.401808, 0.819207,
		-0.876821, 0.075248, -0.474893,
		-0.252460, -0.912627, 0.321522,
		34.615280, 35.148769, 29.562571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130146, 35.857586, 29.616045>,  <34.792000, 35.787609, 29.337505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130146, 35.857586, 29.616045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.224873, 35.501095, 29.770769>,  <34.281708, 35.287201, 29.863604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.224873, 35.501095, 29.770769>,  <34.130146, 35.857586, 29.616045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224873, 35.501095, 29.770769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296072, 0.312996, 0.902427,
		-0.925342, -0.328235, -0.189746,
		0.236818, -0.891232, 0.386810,
		34.295918, 35.233727, 29.886812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551105, 35.546013, 29.993229>,  <34.130146, 35.857586, 29.616045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551105, 35.546013, 29.993229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.878330, 35.381840, 30.154385>,  <34.074665, 35.283337, 30.251078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.878330, 35.381840, 30.154385>,  <33.551105, 35.546013, 29.993229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878330, 35.381840, 30.154385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289389, 0.311625, 0.905066,
		-0.497018, -0.856992, 0.136154,
		0.818063, -0.410432, 0.402887,
		34.123749, 35.258709, 30.275251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322109, 35.268932, 30.572651>,  <33.551105, 35.546013, 29.993229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322109, 35.268932, 30.572651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.716549, 35.303688, 30.629305>,  <33.953213, 35.324543, 30.663298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.716549, 35.303688, 30.629305>,  <33.322109, 35.268932, 30.572651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716549, 35.303688, 30.629305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165834, 0.461105, 0.871712,
		0.010435, -0.883081, 0.469104,
		0.986098, 0.086890, 0.141634,
		34.012379, 35.329754, 30.671795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426552, 35.030048, 31.265146>,  <33.322109, 35.268932, 30.572651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426552, 35.030048, 31.265146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.719139, 35.279896, 31.155743>,  <33.894691, 35.429806, 31.090099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.719139, 35.279896, 31.155743>,  <33.426552, 35.030048, 31.265146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719139, 35.279896, 31.155743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096758, 0.492136, 0.865124,
		0.674977, -0.606345, 0.420418,
		0.731467, 0.624618, -0.273512,
		33.938580, 35.467281, 31.073689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548737, 35.316170, 31.882900>,  <33.426552, 35.030048, 31.265146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548737, 35.316170, 31.882900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.761555, 35.551105, 31.638945>,  <33.889244, 35.692066, 31.492571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.761555, 35.551105, 31.638945>,  <33.548737, 35.316170, 31.882900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761555, 35.551105, 31.638945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093625, 0.756688, 0.647038,
		0.841526, -0.287149, 0.457579,
		0.532041, 0.587340, -0.609888,
		33.921165, 35.727306, 31.455978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181980, 35.545170, 32.219913>,  <33.548737, 35.316170, 31.882900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181980, 35.545170, 32.219913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.033592, 35.811619, 31.961098>,  <33.944561, 35.971489, 31.805809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.033592, 35.811619, 31.961098>,  <34.181980, 35.545170, 32.219913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033592, 35.811619, 31.961098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115049, 0.658420, 0.743806,
		0.921490, 0.350372, -0.167617,
		-0.370971, 0.666126, -0.647037,
		33.922302, 36.011456, 31.766987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393322, 36.246582, 32.527813>,  <34.181980, 35.545170, 32.219913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393322, 36.246582, 32.527813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.113613, 36.323853, 32.252510>,  <33.945789, 36.370213, 32.087326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.113613, 36.323853, 32.252510>,  <34.393322, 36.246582, 32.527813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113613, 36.323853, 32.252510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323866, 0.772709, 0.545923,
		0.637282, 0.604653, -0.477772,
		-0.699272, 0.193173, -0.688261,
		33.903831, 36.381805, 32.046032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.540047, 33.582111, 24.861008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147152, 33.657120, 24.863911>,  <35.911415, 33.702126, 24.865652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147152, 33.657120, 24.863911>,  <36.540047, 33.582111, 24.861008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147152, 33.657120, 24.863911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075935, 0.361790, 0.929162,
		0.171613, 0.913205, -0.369601,
		-0.982234, 0.187522, 0.007256,
		35.852482, 33.713375, 24.866087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480083, 34.211506, 25.153545>,  <36.540047, 33.582111, 24.861008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480083, 34.211506, 25.153545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117176, 34.048588, 25.195454>,  <35.899433, 33.950836, 25.220598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117176, 34.048588, 25.195454>,  <36.480083, 34.211506, 25.153545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117176, 34.048588, 25.195454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020018, 0.290663, 0.956616,
		-0.420080, 0.865808, -0.271862,
		-0.907266, -0.407297, 0.104770,
		35.844997, 33.926399, 25.226885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106735, 34.673405, 25.733007>,  <36.480083, 34.211506, 25.153545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106735, 34.673405, 25.733007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890007, 34.339436, 25.694351>,  <35.759968, 34.139053, 25.671158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890007, 34.339436, 25.694351>,  <36.106735, 34.673405, 25.733007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890007, 34.339436, 25.694351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279002, 0.070206, 0.957721,
		-0.792834, 0.545877, -0.270983,
		-0.541823, -0.834919, -0.096640,
		35.727459, 34.088959, 25.665359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422409, 34.870975, 25.955076>,  <36.106735, 34.673405, 25.733007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422409, 34.870975, 25.955076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466225, 34.475113, 25.992123>,  <35.492512, 34.237595, 26.014351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466225, 34.475113, 25.992123>,  <35.422409, 34.870975, 25.955076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466225, 34.475113, 25.992123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154993, 0.075030, 0.985062,
		-0.981824, -0.122255, -0.145172,
		0.109537, -0.989659, 0.092615,
		35.499084, 34.178215, 26.019907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819611, 34.622860, 26.133772>,  <35.422409, 34.870975, 25.955076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819611, 34.622860, 26.133772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066120, 34.338104, 26.268482>,  <35.214027, 34.167252, 26.349308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066120, 34.338104, 26.268482>,  <34.819611, 34.622860, 26.133772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066120, 34.338104, 26.268482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319708, 0.164656, 0.933100,
		-0.719719, -0.682714, -0.126125,
		0.616273, -0.711892, 0.336775,
		35.251003, 34.124538, 26.369514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485023, 34.308624, 26.653913>,  <34.819611, 34.622860, 26.133772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485023, 34.308624, 26.653913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848656, 34.156170, 26.721216>,  <35.066833, 34.064697, 26.761599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848656, 34.156170, 26.721216>,  <34.485023, 34.308624, 26.653913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848656, 34.156170, 26.721216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191650, -0.023968, 0.981171,
		-0.369930, -0.924207, -0.094834,
		0.909078, -0.381139, 0.168258,
		35.121380, 34.041828, 26.771694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339012, 33.788353, 27.076557>,  <34.485023, 34.308624, 26.653913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339012, 33.788353, 27.076557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724728, 33.862770, 27.151966>,  <34.956158, 33.907421, 27.197212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724728, 33.862770, 27.151966>,  <34.339012, 33.788353, 27.076557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724728, 33.862770, 27.151966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203990, 0.067657, 0.976632,
		0.168939, -0.980210, 0.103191,
		0.964286, 0.186041, 0.188524,
		35.014015, 33.918583, 27.208523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451683, 33.376453, 27.600687>,  <34.339012, 33.788353, 27.076557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451683, 33.376453, 27.600687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727242, 33.666370, 27.604424>,  <34.892578, 33.840321, 27.606665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727242, 33.666370, 27.604424>,  <34.451683, 33.376453, 27.600687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727242, 33.666370, 27.604424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173973, 0.152820, 0.972820,
		0.703669, -0.671801, 0.231373,
		0.688900, 0.724796, 0.009341,
		34.933910, 33.883808, 27.607225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939144, 33.294155, 28.243254>,  <34.451683, 33.376453, 27.600687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939144, 33.294155, 28.243254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977352, 33.674740, 28.126230>,  <35.000278, 33.903091, 28.056017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977352, 33.674740, 28.126230>,  <34.939144, 33.294155, 28.243254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977352, 33.674740, 28.126230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193963, 0.306059, 0.932044,
		0.976347, -0.032287, 0.213785,
		0.095524, 0.951465, -0.292557,
		35.006008, 33.960178, 28.038464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696430, 33.447662, 28.030115>,  <34.939144, 33.294155, 28.243254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696430, 33.447662, 28.030115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953491, 33.168648, 28.156883>,  <36.107727, 33.001240, 28.232944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953491, 33.168648, 28.156883>,  <35.696430, 33.447662, 28.030115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953491, 33.168648, 28.156883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090131, -0.341948, -0.935386,
		0.760838, 0.629692, -0.156884,
		0.642652, -0.697537, 0.316922,
		36.146286, 32.959385, 28.251961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404381, 33.445873, 27.726879>,  <35.696430, 33.447662, 28.030115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404381, 33.445873, 27.726879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421471, 33.070427, 27.863804>,  <36.431725, 32.845161, 27.945959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421471, 33.070427, 27.863804>,  <36.404381, 33.445873, 27.726879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421471, 33.070427, 27.863804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371238, -0.303180, -0.877647,
		0.927554, 0.164579, 0.335495,
		0.042727, -0.938614, 0.342314,
		36.434288, 32.788841, 27.966497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959126, 33.181519, 27.442520>,  <36.404381, 33.445873, 27.726879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959126, 33.181519, 27.442520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748756, 32.858356, 27.548876>,  <36.622536, 32.664459, 27.612688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748756, 32.858356, 27.548876>,  <36.959126, 33.181519, 27.442520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748756, 32.858356, 27.548876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476986, -0.538984, -0.694249,
		0.704196, -0.238295, 0.668822,
		-0.525920, -0.807906, 0.265887,
		36.590981, 32.615986, 27.628641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470535, 32.611912, 27.559168>,  <36.959126, 33.181519, 27.442520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470535, 32.611912, 27.559168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143566, 32.387012, 27.509060>,  <36.947384, 32.252071, 27.478994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143566, 32.387012, 27.509060>,  <37.470535, 32.611912, 27.559168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143566, 32.387012, 27.509060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485920, -0.556256, -0.674137,
		0.309351, -0.611927, 0.727906,
		-0.817425, -0.562249, -0.125269,
		36.898338, 32.218338, 27.471479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656071, 31.852156, 27.576982>,  <37.470535, 32.611912, 27.559168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656071, 31.852156, 27.576982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304176, 31.871935, 27.387827>,  <37.093040, 31.883802, 27.274334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304176, 31.871935, 27.387827>,  <37.656071, 31.852156, 27.576982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304176, 31.871935, 27.387827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303695, -0.706825, -0.638880,
		-0.365840, -0.705658, 0.606800,
		-0.879733, 0.049446, -0.472890,
		37.040257, 31.886768, 27.245960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483681, 31.210155, 27.538845>,  <37.656071, 31.852156, 27.576982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483681, 31.210155, 27.538845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291332, 31.412958, 27.252710>,  <37.175922, 31.534639, 27.081030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291332, 31.412958, 27.252710>,  <37.483681, 31.210155, 27.538845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291332, 31.412958, 27.252710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334317, -0.648199, -0.684157,
		-0.810553, -0.568141, 0.142199,
		-0.480871, 0.507006, -0.715338,
		37.147072, 31.565060, 27.038109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137314, 30.699961, 27.070333>,  <37.483681, 31.210155, 27.538845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137314, 30.699961, 27.070333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161358, 31.021778, 26.833996>,  <37.175785, 31.214869, 26.692194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161358, 31.021778, 26.833996>,  <37.137314, 30.699961, 27.070333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161358, 31.021778, 26.833996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382924, -0.565215, -0.730685,
		-0.921822, -0.182324, -0.342056,
		0.060114, 0.804543, -0.590844,
		37.179394, 31.263142, 26.656742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872028, 30.492002, 26.510458>,  <37.137314, 30.699961, 27.070333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872028, 30.492002, 26.510458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035553, 30.825056, 26.361008>,  <37.133667, 31.024889, 26.271338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035553, 30.825056, 26.361008>,  <36.872028, 30.492002, 26.510458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035553, 30.825056, 26.361008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231539, -0.490630, -0.840043,
		-0.882759, 0.256910, -0.393362,
		0.408811, 0.832634, -0.373623,
		37.158195, 31.074846, 26.248920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507252, 30.573511, 25.931620>,  <36.872028, 30.492002, 26.510458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507252, 30.573511, 25.931620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847160, 30.776773, 25.875525>,  <37.051105, 30.898731, 25.841867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847160, 30.776773, 25.875525>,  <36.507252, 30.573511, 25.931620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847160, 30.776773, 25.875525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070599, -0.373340, -0.925004,
		-0.522405, 0.776140, -0.353128,
		0.849770, 0.508157, -0.140240,
		37.102093, 30.929220, 25.833452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458866, 30.715876, 25.244921>,  <36.507252, 30.573511, 25.931620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458866, 30.715876, 25.244921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851547, 30.746447, 25.314682>,  <37.087154, 30.764790, 25.356539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851547, 30.746447, 25.314682>,  <36.458866, 30.715876, 25.244921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851547, 30.746447, 25.314682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190386, -0.408895, -0.892501,
		0.003102, 0.909376, -0.415964,
		0.981704, 0.076425, 0.174401,
		37.146057, 30.769375, 25.367002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715446, 30.873241, 24.652422>,  <36.458866, 30.715876, 25.244921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715446, 30.873241, 24.652422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047806, 30.769564, 24.849371>,  <37.247219, 30.707357, 24.967541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047806, 30.769564, 24.849371>,  <36.715446, 30.873241, 24.652422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047806, 30.769564, 24.849371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412360, -0.307286, -0.857633,
		0.373591, 0.915639, -0.148442,
		0.830896, -0.259192, 0.492373,
		37.297073, 30.691807, 24.997084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209080, 31.248697, 24.305286>,  <36.715446, 30.873241, 24.652422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209080, 31.248697, 24.305286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356651, 30.932829, 24.501369>,  <37.445194, 30.743307, 24.619020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356651, 30.932829, 24.501369>,  <37.209080, 31.248697, 24.305286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356651, 30.932829, 24.501369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343014, -0.374508, -0.861444,
		0.863846, 0.485964, 0.132700,
		0.368933, -0.789673, 0.490209,
		37.467331, 30.695927, 24.648432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860413, 31.330975, 24.327097>,  <37.209080, 31.248697, 24.305286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860413, 31.330975, 24.327097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778728, 30.939821, 24.345150>,  <37.729717, 30.705130, 24.355982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778728, 30.939821, 24.345150>,  <37.860413, 31.330975, 24.327097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778728, 30.939821, 24.345150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543730, -0.151647, -0.825446,
		0.814036, -0.144026, 0.562674,
		-0.204213, -0.977885, 0.045135,
		37.717464, 30.646456, 24.358690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507626, 31.039684, 24.181787>,  <37.860413, 31.330975, 24.327097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507626, 31.039684, 24.181787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240791, 30.746857, 24.126553>,  <38.080688, 30.571159, 24.093412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240791, 30.746857, 24.126553>,  <38.507626, 31.039684, 24.181787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240791, 30.746857, 24.126553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308646, -0.102887, -0.945596,
		0.678035, -0.673415, 0.294585,
		-0.667087, -0.732070, -0.138086,
		38.040665, 30.527235, 24.085127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.411388, 31.108616, 22.535225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.809748, 31.093540, 22.502333>,  <31.048763, 31.084494, 22.482597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.809748, 31.093540, 22.502333>,  <30.411388, 31.108616, 22.535225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809748, 31.093540, 22.502333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080926, -0.034897, 0.996109,
		-0.040403, -0.998681, -0.031705,
		0.995901, -0.037680, -0.082230,
		31.108519, 31.082233, 22.477663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.724516, 30.695669, 23.208809>,  <30.411388, 31.108616, 22.535225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.724516, 30.695669, 23.208809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.043568, 30.875248, 23.047695>,  <31.234999, 30.982996, 22.951027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.043568, 30.875248, 23.047695>,  <30.724516, 30.695669, 23.208809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043568, 30.875248, 23.047695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418871, 0.068187, 0.905482,
		0.433979, -0.890953, -0.133663,
		0.797627, 0.448948, -0.402786,
		31.282856, 31.009932, 22.926859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232014, 30.378483, 23.567434>,  <30.724516, 30.695669, 23.208809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232014, 30.378483, 23.567434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.408815, 30.708326, 23.426210>,  <31.514896, 30.906233, 23.341476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.408815, 30.708326, 23.426210>,  <31.232014, 30.378483, 23.567434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408815, 30.708326, 23.426210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288025, 0.242283, 0.926467,
		0.849514, -0.511192, -0.130418,
		0.442004, 0.824610, -0.353059,
		31.541416, 30.955709, 23.320293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971844, 30.473299, 23.809389>,  <31.232014, 30.378483, 23.567434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971844, 30.473299, 23.809389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.819014, 30.830091, 23.712736>,  <31.727316, 31.044167, 23.654745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.819014, 30.830091, 23.712736>,  <31.971844, 30.473299, 23.809389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819014, 30.830091, 23.712736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046096, 0.279541, 0.959027,
		0.922980, 0.355284, -0.147923,
		-0.382078, 0.891981, -0.241633,
		31.704390, 31.097687, 23.640245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371628, 30.872616, 24.169971>,  <31.971844, 30.473299, 23.809389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371628, 30.872616, 24.169971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.056705, 31.106768, 24.092527>,  <31.867752, 31.247259, 24.046061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.056705, 31.106768, 24.092527>,  <32.371628, 30.872616, 24.169971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056705, 31.106768, 24.092527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003308, 0.309999, 0.950731,
		0.616559, 0.749153, -0.242127,
		-0.787302, 0.585381, -0.193611,
		31.820515, 31.282381, 24.034445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614994, 31.503630, 24.399300>,  <32.371628, 30.872616, 24.169971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614994, 31.503630, 24.399300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.215179, 31.501722, 24.387260>,  <31.975290, 31.500578, 24.380037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.215179, 31.501722, 24.387260>,  <32.614994, 31.503630, 24.399300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215179, 31.501722, 24.387260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030316, 0.256013, 0.966198,
		0.003097, 0.966662, -0.256038,
		-0.999536, -0.004770, -0.030098,
		31.915319, 31.500292, 24.378231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441139, 32.012310, 24.900507>,  <32.614994, 31.503630, 24.399300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441139, 32.012310, 24.900507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.099766, 31.814224, 24.835491>,  <31.894943, 31.695372, 24.796482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.099766, 31.814224, 24.835491>,  <32.441139, 32.012310, 24.900507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099766, 31.814224, 24.835491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337432, 0.287282, 0.896442,
		-0.397238, 0.819896, -0.412277,
		-0.853429, -0.495217, -0.162540,
		31.843737, 31.665659, 24.786730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857498, 32.445980, 25.115076>,  <32.441139, 32.012310, 24.900507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857498, 32.445980, 25.115076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.747719, 32.062855, 25.149197>,  <31.681852, 31.832979, 25.169668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.747719, 32.062855, 25.149197>,  <31.857498, 32.445980, 25.115076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747719, 32.062855, 25.149197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329302, 0.176958, 0.927494,
		-0.903459, 0.226458, -0.363975,
		-0.274447, -0.957811, 0.085301,
		31.665384, 31.775511, 25.174788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154009, 32.407249, 25.403133>,  <31.857498, 32.445980, 25.115076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154009, 32.407249, 25.403133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.306805, 32.050728, 25.500837>,  <31.398481, 31.836815, 25.559460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.306805, 32.050728, 25.500837>,  <31.154009, 32.407249, 25.403133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306805, 32.050728, 25.500837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130818, 0.209494, 0.969020,
		-0.914861, -0.402109, -0.036574,
		0.381989, -0.891303, 0.244260,
		31.421402, 31.783337, 25.574116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743868, 32.220959, 25.933126>,  <31.154009, 32.407249, 25.403133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743868, 32.220959, 25.933126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.057156, 31.974585, 25.967041>,  <31.245129, 31.826759, 25.987391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.057156, 31.974585, 25.967041>,  <30.743868, 32.220959, 25.933126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057156, 31.974585, 25.967041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057070, 0.064576, 0.996280,
		-0.619118, -0.785146, 0.015426,
		0.783222, -0.615935, 0.084788,
		31.292122, 31.789804, 25.992477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559937, 31.671673, 26.380306>,  <30.743868, 32.220959, 25.933126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559937, 31.671673, 26.380306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.959698, 31.684879, 26.384426>,  <31.199554, 31.692804, 26.386898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.959698, 31.684879, 26.384426>,  <30.559937, 31.671673, 26.380306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959698, 31.684879, 26.384426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008756, -0.046519, 0.998879,
		0.033464, -0.998371, -0.046202,
		0.999402, 0.033022, 0.010298,
		31.259518, 31.694784, 26.387516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685476, 31.335440, 26.947815>,  <30.559937, 31.671673, 26.380306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685476, 31.335440, 26.947815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.036591, 31.518145, 26.890043>,  <31.247259, 31.627768, 26.855381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.036591, 31.518145, 26.890043>,  <30.685476, 31.335440, 26.947815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036591, 31.518145, 26.890043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076696, 0.163606, 0.983540,
		0.472875, -0.874414, 0.108579,
		0.877785, 0.456764, -0.144429,
		31.299927, 31.655174, 26.846714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167356, 30.984739, 27.450001>,  <30.685476, 31.335440, 26.947815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167356, 30.984739, 27.450001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.302860, 31.349194, 27.356129>,  <31.384163, 31.567865, 27.299805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.302860, 31.349194, 27.356129>,  <31.167356, 30.984739, 27.450001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302860, 31.349194, 27.356129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066514, 0.225613, 0.971944,
		0.938519, -0.344864, 0.015825,
		0.338759, 0.911136, -0.234680,
		31.404488, 31.622534, 27.285725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699083, 31.038666, 27.836124>,  <31.167356, 30.984739, 27.450001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699083, 31.038666, 27.836124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.595568, 31.416344, 27.754612>,  <31.533459, 31.642950, 27.705704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.595568, 31.416344, 27.754612>,  <31.699083, 31.038666, 27.836124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595568, 31.416344, 27.754612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063437, 0.227127, 0.971797,
		0.963849, 0.238561, -0.118674,
		-0.258787, 0.944194, -0.203783,
		31.517931, 31.699602, 27.693478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258778, 30.575432, 27.946402>,  <31.699083, 31.038666, 27.836124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258778, 30.575432, 27.946402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.227085, 30.202030, 28.086283>,  <32.208069, 29.977989, 28.170212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.227085, 30.202030, 28.086283>,  <32.258778, 30.575432, 27.946402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227085, 30.202030, 28.086283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038575, -0.347673, -0.936822,
		0.996110, -0.087716, -0.008463,
		-0.079232, -0.933504, 0.349704,
		32.203316, 29.921980, 28.191195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429008, 30.199059, 27.274179>,  <32.258778, 30.575432, 27.946402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429008, 30.199059, 27.274179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.358582, 29.891300, 27.519791>,  <32.316326, 29.706644, 27.667156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.358582, 29.891300, 27.519791>,  <32.429008, 30.199059, 27.274179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358582, 29.891300, 27.519791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003835, -0.624303, -0.781173,
		0.984371, -0.135183, 0.112869,
		-0.176066, -0.769397, 0.614027,
		32.305763, 29.660480, 27.703999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921257, 29.609507, 27.202528>,  <32.429008, 30.199059, 27.274179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921257, 29.609507, 27.202528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.593838, 29.434052, 27.350895>,  <32.397388, 29.328777, 27.439915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.593838, 29.434052, 27.350895>,  <32.921257, 29.609507, 27.202528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593838, 29.434052, 27.350895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003418, -0.641969, -0.766723,
		0.574431, -0.628865, 0.523982,
		-0.818545, -0.438639, 0.370916,
		32.348274, 29.302460, 27.462170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993114, 28.845602, 27.317829>,  <32.921257, 29.609507, 27.202528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993114, 28.845602, 27.317829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.617611, 28.956003, 27.235321>,  <32.392307, 29.022243, 27.185816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.617611, 28.956003, 27.235321>,  <32.993114, 28.845602, 27.317829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617611, 28.956003, 27.235321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008326, -0.616639, -0.787202,
		-0.344462, -0.737279, 0.581176,
		-0.938763, 0.276000, -0.206270,
		32.335983, 29.038803, 27.173439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829338, 28.259520, 26.972406>,  <32.993114, 28.845602, 27.317829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829338, 28.259520, 26.972406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.495556, 28.472265, 26.914722>,  <32.295284, 28.599913, 26.880112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.495556, 28.472265, 26.914722>,  <32.829338, 28.259520, 26.972406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495556, 28.472265, 26.914722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198938, -0.534788, -0.821234,
		-0.513908, -0.656598, 0.552067,
		-0.834459, 0.531865, -0.144210,
		32.245216, 28.631824, 26.871460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530361, 27.788137, 26.619434>,  <32.829338, 28.259520, 26.972406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530361, 27.788137, 26.619434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.347591, 28.138792, 26.559132>,  <32.237930, 28.349184, 26.522949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.347591, 28.138792, 26.559132>,  <32.530361, 27.788137, 26.619434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347591, 28.138792, 26.559132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069024, -0.203918, -0.976552,
		-0.886823, -0.435805, 0.153684,
		-0.456925, 0.876636, -0.150758,
		32.210514, 28.401783, 26.513905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887014, 27.611746, 26.214081>,  <32.530361, 27.788137, 26.619434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887014, 27.611746, 26.214081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.987928, 27.994093, 26.153851>,  <32.048477, 28.223501, 26.117712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.987928, 27.994093, 26.153851>,  <31.887014, 27.611746, 26.214081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987928, 27.994093, 26.153851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146424, -0.116106, -0.982384,
		-0.956510, 0.269890, 0.110670,
		0.252286, 0.955865, -0.150575,
		32.063614, 28.280853, 26.108679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603901, 27.751207, 25.592630>,  <31.887014, 27.611746, 26.214081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603901, 27.751207, 25.592630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.848480, 28.067678, 25.597828>,  <31.995228, 28.257561, 25.600946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.848480, 28.067678, 25.597828>,  <31.603901, 27.751207, 25.592630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848480, 28.067678, 25.597828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116606, -0.073849, -0.990429,
		-0.782645, 0.607112, -0.137411,
		0.611449, 0.791177, 0.012995,
		32.031914, 28.305031, 25.601727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434343, 28.268406, 25.105072>,  <31.603901, 27.751207, 25.592630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434343, 28.268406, 25.105072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.817524, 28.364735, 25.167463>,  <32.047432, 28.422533, 25.204897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.817524, 28.364735, 25.167463>,  <31.434343, 28.268406, 25.105072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817524, 28.364735, 25.167463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131186, 0.115849, -0.984565,
		-0.255176, 0.963630, 0.079385,
		0.957954, 0.240823, 0.155977,
		32.104912, 28.436981, 25.214256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532663, 28.865894, 24.724710>,  <31.434343, 28.268406, 25.105072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532663, 28.865894, 24.724710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.906939, 28.744825, 24.797235>,  <32.131504, 28.672184, 24.840750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.906939, 28.744825, 24.797235>,  <31.532663, 28.865894, 24.724710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906939, 28.744825, 24.797235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270395, 0.285042, -0.919586,
		0.226653, 0.909472, 0.348552,
		0.935690, -0.302674, 0.181311,
		32.187645, 28.654024, 24.851629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865105, 29.530909, 24.617903>,  <31.532663, 28.865894, 24.724710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865105, 29.530909, 24.617903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.105705, 29.219135, 24.547840>,  <32.250065, 29.032072, 24.505802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.105705, 29.219135, 24.547840>,  <31.865105, 29.530909, 24.617903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105705, 29.219135, 24.547840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260086, 0.398375, -0.879575,
		0.755349, 0.483510, 0.442343,
		0.601501, -0.779433, -0.175157,
		32.286156, 28.985306, 24.495293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524433, 29.755203, 24.329758>,  <31.865105, 29.530909, 24.617903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524433, 29.755203, 24.329758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.496384, 29.369215, 24.228632>,  <32.479553, 29.137623, 24.167957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.496384, 29.369215, 24.228632>,  <32.524433, 29.755203, 24.329758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496384, 29.369215, 24.228632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250496, 0.228282, -0.940818,
		0.965575, -0.129306, 0.225712,
		-0.070127, -0.964970, -0.252814,
		32.475346, 29.079723, 24.152788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036549, 29.692204, 23.879757>,  <32.524433, 29.755203, 24.329758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036549, 29.692204, 23.879757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.860016, 29.337036, 23.827868>,  <32.754097, 29.123936, 23.796734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.860016, 29.337036, 23.827868>,  <33.036549, 29.692204, 23.879757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860016, 29.337036, 23.827868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338027, -0.030589, -0.940639,
		0.831243, -0.458983, 0.313640,
		-0.441331, -0.887918, -0.129722,
		32.727615, 29.070662, 23.788950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523098, 29.257469, 23.715174>,  <33.036549, 29.692204, 23.879757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523098, 29.257469, 23.715174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.182068, 29.100859, 23.576706>,  <32.977451, 29.006893, 23.493626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.182068, 29.100859, 23.576706>,  <33.523098, 29.257469, 23.715174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182068, 29.100859, 23.576706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411857, -0.095610, -0.906219,
		0.321710, -0.915187, 0.242766,
		-0.852570, -0.391525, -0.346167,
		32.926296, 28.983402, 23.472857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985996, 28.712835, 23.796896>,  <33.523098, 29.257469, 23.715174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985996, 28.712835, 23.796896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.385338, 28.729336, 23.780947>,  <34.624943, 28.739237, 23.771378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.385338, 28.729336, 23.780947>,  <33.985996, 28.712835, 23.796896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385338, 28.729336, 23.780947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041864, -0.048643, 0.997938,
		0.039226, -0.997964, -0.050290,
		0.998353, 0.041251, -0.039871,
		34.684845, 28.741711, 23.768986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146984, 28.147137, 24.210142>,  <33.985996, 28.712835, 23.796896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146984, 28.147137, 24.210142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.439869, 28.419313, 24.198338>,  <34.615601, 28.582619, 24.191256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.439869, 28.419313, 24.198338>,  <34.146984, 28.147137, 24.210142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439869, 28.419313, 24.198338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064100, -0.025709, 0.997612,
		0.678057, -0.732352, -0.062440,
		0.732209, 0.680440, -0.029512,
		34.659531, 28.623446, 24.189484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701984, 27.883738, 24.637096>,  <34.146984, 28.147137, 24.210142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701984, 27.883738, 24.637096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.780193, 28.274773, 24.605867>,  <34.827118, 28.509394, 24.587130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.780193, 28.274773, 24.605867>,  <34.701984, 27.883738, 24.637096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780193, 28.274773, 24.605867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271212, 0.022604, 0.962254,
		0.942452, -0.209316, -0.260713,
		0.195522, 0.977587, -0.078072,
		34.838848, 28.568048, 24.582445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235752, 27.960039, 25.059809>,  <34.701984, 27.883738, 24.637096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235752, 27.960039, 25.059809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.125641, 28.344028, 25.039104>,  <35.059574, 28.574421, 25.026682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.125641, 28.344028, 25.039104>,  <35.235752, 27.960039, 25.059809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125641, 28.344028, 25.039104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324731, 0.143524, 0.934853,
		0.904861, 0.240532, -0.351241,
		-0.275274, 0.959971, -0.051761,
		35.043060, 28.632019, 25.023577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807037, 28.374119, 25.267328>,  <35.235752, 27.960039, 25.059809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807037, 28.374119, 25.267328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.474815, 28.587948, 25.329817>,  <35.275482, 28.716246, 25.367310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.474815, 28.587948, 25.329817>,  <35.807037, 28.374119, 25.267328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474815, 28.587948, 25.329817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350440, 0.283624, 0.892608,
		0.432855, 0.796110, -0.422902,
		-0.830559, 0.534571, 0.156221,
		35.225647, 28.748320, 25.376682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895187, 29.102909, 25.545610>,  <35.807037, 28.374119, 25.267328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895187, 29.102909, 25.545610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.513214, 29.030039, 25.639343>,  <35.284031, 28.986317, 25.695583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.513214, 29.030039, 25.639343>,  <35.895187, 29.102909, 25.545610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513214, 29.030039, 25.639343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147941, 0.392300, 0.907862,
		-0.257321, 0.901616, -0.347669,
		-0.954934, -0.182178, 0.234333,
		35.226734, 28.975386, 25.709642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665951, 29.749346, 25.930574>,  <35.895187, 29.102909, 25.545610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665951, 29.749346, 25.930574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.403751, 29.459307, 26.015005>,  <35.246429, 29.285284, 26.065662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.403751, 29.459307, 26.015005>,  <35.665951, 29.749346, 25.930574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403751, 29.459307, 26.015005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090731, 0.353088, 0.931180,
		-0.749725, 0.591238, -0.297238,
		-0.655501, -0.725098, 0.211075,
		35.207100, 29.241777, 26.078327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122528, 30.020430, 26.397358>,  <35.665951, 29.749346, 25.930574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122528, 30.020430, 26.397358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.035168, 29.631159, 26.426291>,  <34.982754, 29.397596, 26.443649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.035168, 29.631159, 26.426291>,  <35.122528, 30.020430, 26.397358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035168, 29.631159, 26.426291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057341, 0.086788, 0.994575,
		-0.974174, 0.213066, -0.074757,
		-0.218398, -0.973175, 0.072329,
		34.969646, 29.339207, 26.447989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420319, 29.891287, 26.688646>,  <35.122528, 30.020430, 26.397358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420319, 29.891287, 26.688646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.680088, 29.604387, 26.789680>,  <34.835949, 29.432247, 26.850302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.680088, 29.604387, 26.789680>,  <34.420319, 29.891287, 26.688646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680088, 29.604387, 26.789680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109057, 0.240880, 0.964408,
		-0.752563, -0.653860, 0.078214,
		0.649428, -0.717248, 0.252585,
		34.874916, 29.389214, 26.865456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089336, 29.595284, 27.216913>,  <34.420319, 29.891287, 26.688646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089336, 29.595284, 27.216913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.466560, 29.481283, 27.285517>,  <34.692894, 29.412884, 27.326679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.466560, 29.481283, 27.285517>,  <34.089336, 29.595284, 27.216913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466560, 29.481283, 27.285517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120870, 0.186757, 0.974942,
		-0.309889, -0.940158, 0.141675,
		0.943058, -0.285000, 0.171511,
		34.749477, 29.395782, 27.336969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001591, 29.596161, 27.834730>,  <34.089336, 29.595284, 27.216913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001591, 29.596161, 27.834730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.391628, 29.519516, 27.790052>,  <34.625652, 29.473528, 27.763247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.391628, 29.519516, 27.790052>,  <34.001591, 29.596161, 27.834730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391628, 29.519516, 27.790052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146554, 0.178657, 0.972935,
		-0.166474, -0.965073, 0.202290,
		0.975094, -0.191615, -0.111694,
		34.684158, 29.462032, 27.756544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215302, 29.202757, 28.447605>,  <34.001591, 29.596161, 27.834730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215302, 29.202757, 28.447605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.538616, 29.370846, 28.282640>,  <34.732605, 29.471699, 28.183662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.538616, 29.370846, 28.282640>,  <34.215302, 29.202757, 28.447605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538616, 29.370846, 28.282640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335593, 0.246718, 0.909125,
		0.483785, -0.873237, 0.058395,
		0.808288, 0.420224, -0.412411,
		34.781101, 29.496912, 28.158916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758350, 28.983807, 28.795528>,  <34.215302, 29.202757, 28.447605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758350, 28.983807, 28.795528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.892117, 29.319313, 28.623648>,  <34.972378, 29.520617, 28.520519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.892117, 29.319313, 28.623648>,  <34.758350, 28.983807, 28.795528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892117, 29.319313, 28.623648> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432649, 0.268428, 0.860675,
		0.837247, -0.473731, -0.273124,
		0.334414, 0.838764, -0.429700,
		34.992439, 29.570942, 28.494738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464298, 29.093685, 29.053619>,  <34.758350, 28.983807, 28.795528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464298, 29.093685, 29.053619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.378170, 29.461937, 28.923344>,  <35.326492, 29.682888, 28.845179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.378170, 29.461937, 28.923344>,  <35.464298, 29.093685, 29.053619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378170, 29.461937, 28.923344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551608, 0.389873, 0.737378,
		0.805831, -0.020877, -0.591777,
		-0.215324, 0.920632, -0.325688,
		35.313572, 29.738127, 28.825638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.830811, 30.532841, 23.774117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.453064, 30.426765, 23.696293>,  <38.226418, 30.363119, 23.649599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.453064, 30.426765, 23.696293>,  <38.830811, 30.532841, 23.774117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453064, 30.426765, 23.696293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240424, -0.152926, -0.958546,
		0.224445, -0.951991, 0.208176,
		-0.944363, -0.265191, -0.194558,
		38.169754, 30.347208, 23.637926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926342, 29.982660, 23.314821>,  <38.830811, 30.532841, 23.774117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926342, 29.982660, 23.314821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.555542, 30.121771, 23.258646>,  <38.333061, 30.205236, 23.224941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.555542, 30.121771, 23.258646>,  <38.926342, 29.982660, 23.314821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555542, 30.121771, 23.258646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078608, -0.185968, -0.979406,
		-0.366733, -0.918948, 0.145054,
		-0.926999, 0.347778, -0.140437,
		38.277443, 30.226105, 23.216515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575760, 29.450895, 23.001835>,  <38.926342, 29.982660, 23.314821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575760, 29.450895, 23.001835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.352573, 29.770746, 22.913054>,  <38.218662, 29.962658, 22.859785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.352573, 29.770746, 22.913054>,  <38.575760, 29.450895, 23.001835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352573, 29.770746, 22.913054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088044, -0.322991, -0.942298,
		-0.825178, -0.506231, 0.250621,
		-0.557969, 0.799629, -0.221954,
		38.185181, 30.010635, 22.846468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012848, 29.296000, 22.422440>,  <38.575760, 29.450895, 23.001835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012848, 29.296000, 22.422440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.025387, 29.694271, 22.387468>,  <38.032909, 29.933233, 22.366486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.025387, 29.694271, 22.387468>,  <38.012848, 29.296000, 22.422440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025387, 29.694271, 22.387468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248509, -0.076961, -0.965567,
		-0.968122, 0.051999, 0.245022,
		0.031352, 0.995677, -0.087430,
		38.034794, 29.992973, 22.361240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383282, 29.553602, 22.246460>,  <38.012848, 29.296000, 22.422440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383282, 29.553602, 22.246460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.595913, 29.874273, 22.137110>,  <37.723492, 30.066677, 22.071499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.595913, 29.874273, 22.137110>,  <37.383282, 29.553602, 22.246460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595913, 29.874273, 22.137110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487112, 0.025304, -0.872973,
		-0.692927, 0.597218, 0.403959,
		0.531577, 0.801680, -0.273378,
		37.755386, 30.114777, 22.055096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004387, 29.855907, 21.655613>,  <37.383282, 29.553602, 22.246460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004387, 29.855907, 21.655613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.342621, 30.066828, 21.622295>,  <37.545563, 30.193380, 21.602304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.342621, 30.066828, 21.622295>,  <37.004387, 29.855907, 21.655613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342621, 30.066828, 21.622295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126790, 0.046809, -0.990824,
		-0.518564, 0.848388, 0.106437,
		0.845586, 0.527301, -0.083294,
		37.596298, 30.225018, 21.597307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790005, 30.447807, 21.420963>,  <37.004387, 29.855907, 21.655613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790005, 30.447807, 21.420963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.175755, 30.388481, 21.333334>,  <37.407204, 30.352886, 21.280756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.175755, 30.388481, 21.333334>,  <36.790005, 30.447807, 21.420963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175755, 30.388481, 21.333334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220021, 0.010178, -0.975442,
		0.146901, 0.988888, -0.022817,
		0.964371, -0.148314, -0.219071,
		37.465065, 30.343987, 21.267612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868660, 30.718687, 20.750093>,  <36.790005, 30.447807, 21.420963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868660, 30.718687, 20.750093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.177326, 30.466700, 20.785141>,  <37.362526, 30.315508, 20.806170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.177326, 30.466700, 20.785141>,  <36.868660, 30.718687, 20.750093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177326, 30.466700, 20.785141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087343, -0.241409, -0.966485,
		0.630005, 0.738149, -0.241310,
		0.771664, -0.629967, 0.087617,
		37.408825, 30.277710, 20.811426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328617, 30.875179, 20.184565>,  <36.868660, 30.718687, 20.750093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328617, 30.875179, 20.184565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.456940, 30.513119, 20.296129>,  <37.533932, 30.295883, 20.363068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.456940, 30.513119, 20.296129>,  <37.328617, 30.875179, 20.184565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456940, 30.513119, 20.296129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003713, -0.295673, -0.955282,
		0.947139, 0.305421, -0.098214,
		0.320802, -0.905149, 0.278909,
		37.553181, 30.241573, 20.379803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849567, 30.708706, 19.622318>,  <37.328617, 30.875179, 20.184565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849567, 30.708706, 19.622318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.722580, 30.380791, 19.812963>,  <37.646389, 30.184042, 19.927351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.722580, 30.380791, 19.812963>,  <37.849567, 30.708706, 19.622318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722580, 30.380791, 19.812963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148711, -0.453353, -0.878838,
		0.936535, -0.349881, 0.022014,
		-0.317469, -0.819789, 0.476612,
		37.627338, 30.134853, 19.955948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356876, 30.130188, 19.389891>,  <37.849567, 30.708706, 19.622318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356876, 30.130188, 19.389891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.020390, 29.953506, 19.514631>,  <37.818497, 29.847498, 19.589476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.020390, 29.953506, 19.514631>,  <38.356876, 30.130188, 19.389891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020390, 29.953506, 19.514631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113582, -0.419530, -0.900607,
		0.528632, -0.793028, 0.302747,
		-0.841218, -0.441703, 0.311851,
		37.768024, 29.820995, 19.608187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400566, 29.384790, 19.085791>,  <38.356876, 30.130188, 19.389891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400566, 29.384790, 19.085791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.023788, 29.470085, 19.189537>,  <37.797722, 29.521263, 19.251785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.023788, 29.470085, 19.189537>,  <38.400566, 29.384790, 19.085791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023788, 29.470085, 19.189537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325395, -0.389173, -0.861778,
		-0.082824, -0.896144, 0.435966,
		-0.941944, 0.213237, 0.259368,
		37.741207, 29.534056, 19.267347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923065, 28.702305, 19.085855>,  <38.400566, 29.384790, 19.085791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923065, 28.702305, 19.085855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.713959, 29.031116, 18.995539>,  <37.588493, 29.228403, 18.941349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.713959, 29.031116, 18.995539>,  <37.923065, 28.702305, 19.085855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713959, 29.031116, 18.995539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214373, -0.383121, -0.898478,
		-0.825081, -0.421291, 0.376504,
		-0.522768, 0.822029, -0.225792,
		37.557129, 29.277725, 18.927801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707855, 28.069000, 18.689453>,  <37.923065, 28.702305, 19.085855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707855, 28.069000, 18.689453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.099171, 27.992687, 18.721821>,  <38.333961, 27.946899, 18.741241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.099171, 27.992687, 18.721821>,  <37.707855, 28.069000, 18.689453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099171, 27.992687, 18.721821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200256, 0.769840, -0.606006,
		0.053318, 0.609056, 0.791333,
		0.978292, -0.190780, 0.080920,
		38.392658, 27.935453, 18.746098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035484, 27.813032, 18.562933>,  <37.707855, 28.069000, 18.689453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035484, 27.813032, 18.562933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.683952, 27.623646, 18.539314>,  <36.473034, 27.510014, 18.525143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.683952, 27.623646, 18.539314>,  <37.035484, 27.813032, 18.562933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683952, 27.623646, 18.539314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312985, 0.478651, 0.820325,
		-0.360134, 0.739407, -0.568841,
		-0.878831, -0.473465, -0.059045,
		36.420303, 27.481606, 18.521601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467987, 28.375834, 18.502234>,  <37.035484, 27.813032, 18.562933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467987, 28.375834, 18.502234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.387226, 28.025660, 18.677893>,  <36.338768, 27.815556, 18.783289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.387226, 28.025660, 18.677893>,  <36.467987, 28.375834, 18.502234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387226, 28.025660, 18.677893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434942, 0.481888, 0.760664,
		-0.877531, -0.037425, -0.478056,
		-0.201902, -0.875433, 0.439149,
		36.326656, 27.763029, 18.809637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743969, 28.311806, 18.608320>,  <36.467987, 28.375834, 18.502234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743969, 28.311806, 18.608320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.928768, 28.066198, 18.864300>,  <36.039650, 27.918835, 19.017887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.928768, 28.066198, 18.864300>,  <35.743969, 28.311806, 18.608320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928768, 28.066198, 18.864300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556001, 0.361641, 0.748384,
		-0.690954, -0.701567, -0.174317,
		0.462002, -0.614019, 0.639949,
		36.067368, 27.881992, 19.056284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263386, 28.272440, 19.057941>,  <35.743969, 28.311806, 18.608320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263386, 28.272440, 19.057941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.567085, 28.100361, 19.253277>,  <35.749306, 27.997114, 19.370478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.567085, 28.100361, 19.253277>,  <35.263386, 28.272440, 19.057941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567085, 28.100361, 19.253277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404450, 0.275964, 0.871932,
		-0.509866, -0.859520, 0.035532,
		0.759248, -0.430197, 0.488337,
		35.794861, 27.971302, 19.399778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951996, 28.040882, 19.663862>,  <35.263386, 28.272440, 19.057941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951996, 28.040882, 19.663862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336998, 28.033136, 19.772095>,  <35.567997, 28.028490, 19.837034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336998, 28.033136, 19.772095>,  <34.951996, 28.040882, 19.663862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336998, 28.033136, 19.772095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263723, 0.166880, 0.950053,
		-0.063549, -0.985787, 0.155516,
		0.962503, -0.019362, 0.270580,
		35.625748, 28.027328, 19.853270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940674, 27.522015, 20.150095>,  <34.951996, 28.040882, 19.663862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940674, 27.522015, 20.150095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.260387, 27.748434, 20.230824>,  <35.452217, 27.884285, 20.279261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.260387, 27.748434, 20.230824>,  <34.940674, 27.522015, 20.150095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260387, 27.748434, 20.230824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265995, 0.032091, 0.963440,
		0.538876, -0.823748, 0.176216,
		0.799287, 0.566048, 0.201819,
		35.500172, 27.918249, 20.291368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107975, 27.209822, 20.767500>,  <34.940674, 27.522015, 20.150095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107975, 27.209822, 20.767500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.276417, 27.570000, 20.723930>,  <35.377483, 27.786106, 20.697788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.276417, 27.570000, 20.723930>,  <35.107975, 27.209822, 20.767500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276417, 27.570000, 20.723930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279911, 0.243245, 0.928699,
		0.862739, -0.360594, 0.354477,
		0.421108, 0.900446, -0.108923,
		35.402748, 27.840134, 20.691254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639931, 27.247410, 21.283337>,  <35.107975, 27.209822, 20.767500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639931, 27.247410, 21.283337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552399, 27.627153, 21.193153>,  <35.499878, 27.855000, 21.139044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.552399, 27.627153, 21.193153>,  <35.639931, 27.247410, 21.283337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552399, 27.627153, 21.193153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120372, 0.255556, 0.959271,
		0.968310, 0.182780, -0.170200,
		-0.218831, 0.949359, -0.225456,
		35.486748, 27.911961, 21.125517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108162, 27.636581, 21.731363>,  <35.639931, 27.247410, 21.283337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108162, 27.636581, 21.731363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.831474, 27.901955, 21.617256>,  <35.665462, 28.061178, 21.548792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.831474, 27.901955, 21.617256>,  <36.108162, 27.636581, 21.731363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831474, 27.901955, 21.617256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105989, 0.297475, 0.948828,
		0.714344, 0.686560, -0.135453,
		-0.691721, 0.663434, -0.285267,
		35.623959, 28.100985, 21.531675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291538, 28.433119, 21.888294>,  <36.108162, 27.636581, 21.731363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291538, 28.433119, 21.888294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899204, 28.355219, 21.885878>,  <35.663803, 28.308479, 21.884428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899204, 28.355219, 21.885878>,  <36.291538, 28.433119, 21.888294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899204, 28.355219, 21.885878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081113, 0.379927, 0.921453,
		-0.177156, 0.904283, -0.388442,
		-0.980835, -0.194749, -0.006043,
		35.604954, 28.296795, 21.884064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023273, 29.044741, 22.182865>,  <36.291538, 28.433119, 21.888294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023273, 29.044741, 22.182865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.727058, 28.776854, 22.205088>,  <35.549332, 28.616121, 22.218422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.727058, 28.776854, 22.205088>,  <36.023273, 29.044741, 22.182865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727058, 28.776854, 22.205088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238108, 0.338794, 0.910233,
		-0.628421, 0.660830, -0.410354,
		-0.740535, -0.669718, 0.055556,
		35.504898, 28.575939, 22.221754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461452, 29.518112, 22.519461>,  <36.023273, 29.044741, 22.182865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461452, 29.518112, 22.519461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.331932, 29.142538, 22.566021>,  <35.254219, 28.917192, 22.593958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.331932, 29.142538, 22.566021>,  <35.461452, 29.518112, 22.519461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331932, 29.142538, 22.566021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396393, 0.246342, 0.884414,
		-0.859084, 0.240235, -0.451954,
		-0.323802, -0.938937, 0.116401,
		35.234791, 28.860857, 22.600941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686535, 29.438894, 22.678675>,  <35.461452, 29.518112, 22.519461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686535, 29.438894, 22.678675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881981, 29.123072, 22.827190>,  <34.999249, 28.933578, 22.916300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881981, 29.123072, 22.827190>,  <34.686535, 29.438894, 22.678675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881981, 29.123072, 22.827190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472989, 0.117891, 0.873146,
		-0.733169, -0.602248, -0.315848,
		0.488614, -0.789556, 0.371291,
		35.028564, 28.886206, 22.938578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275879, 29.170145, 23.215042>,  <34.686535, 29.438894, 22.678675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275879, 29.170145, 23.215042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.602612, 28.955076, 23.298649>,  <34.798653, 28.826035, 23.348814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.602612, 28.955076, 23.298649>,  <34.275879, 29.170145, 23.215042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602612, 28.955076, 23.298649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170564, 0.121027, 0.977886,
		-0.551079, -0.834423, 0.007152,
		0.816836, -0.537672, 0.209018,
		34.847664, 28.793776, 23.361355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718182, 28.710627, 23.116211>,  <34.275879, 29.170145, 23.215042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718182, 28.710627, 23.116211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325584, 28.749033, 23.049934>,  <33.090027, 28.772078, 23.010168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325584, 28.749033, 23.049934>,  <33.718182, 28.710627, 23.116211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325584, 28.749033, 23.049934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157224, -0.089943, -0.983459,
		-0.109327, -0.991308, 0.073183,
		-0.981493, 0.096012, -0.165691,
		33.031136, 28.777838, 23.000227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410461, 27.984451, 22.770044>,  <33.718182, 28.710627, 23.116211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410461, 27.984451, 22.770044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.196609, 28.313282, 22.691698>,  <33.068298, 28.510580, 22.644690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.196609, 28.313282, 22.691698>,  <33.410461, 27.984451, 22.770044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196609, 28.313282, 22.691698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183267, -0.113472, -0.976492,
		-0.824978, -0.557953, -0.089994,
		-0.534625, 0.822078, -0.195866,
		33.036221, 28.559906, 22.632938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841328, 27.772522, 22.348923>,  <33.410461, 27.984451, 22.770044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841328, 27.772522, 22.348923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.869263, 28.163755, 22.270462>,  <32.886024, 28.398495, 22.223385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.869263, 28.163755, 22.270462>,  <32.841328, 27.772522, 22.348923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869263, 28.163755, 22.270462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030190, -0.194469, -0.980444,
		-0.997102, 0.074390, 0.015948,
		0.069834, 0.978084, -0.196151,
		32.890213, 28.457180, 22.211617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359543, 27.993109, 21.914116>,  <32.841328, 27.772522, 22.348923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359543, 27.993109, 21.914116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.574127, 28.313934, 21.809116>,  <32.702877, 28.506430, 21.746117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.574127, 28.313934, 21.809116>,  <32.359543, 27.993109, 21.914116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574127, 28.313934, 21.809116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098559, -0.249374, -0.963379,
		-0.838153, 0.542682, -0.054727,
		0.536456, 0.802065, -0.262500,
		32.735065, 28.554554, 21.730366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003452, 28.249294, 21.409956>,  <32.359543, 27.993109, 21.914116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003452, 28.249294, 21.409956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.370956, 28.400621, 21.364775>,  <32.591457, 28.491419, 21.337666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.370956, 28.400621, 21.364775>,  <32.003452, 28.249294, 21.409956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370956, 28.400621, 21.364775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000270, -0.285488, -0.958382,
		-0.394821, 0.880552, -0.262192,
		0.918758, 0.378319, -0.112955,
		32.646584, 28.514116, 21.330889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970812, 28.803724, 20.940062>,  <32.003452, 28.249294, 21.409956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970812, 28.803724, 20.940062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.349834, 28.675964, 20.944355>,  <32.577248, 28.599308, 20.946930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.349834, 28.675964, 20.944355>,  <31.970812, 28.803724, 20.940062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349834, 28.675964, 20.944355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023170, -0.102152, -0.994499,
		0.318741, 0.942097, -0.104195,
		0.947559, -0.319402, 0.010732,
		32.634102, 28.580143, 20.947575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279327, 29.201321, 20.414919>,  <31.970812, 28.803724, 20.940062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279327, 29.201321, 20.414919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501797, 28.876537, 20.485798>,  <32.635277, 28.681667, 20.528326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.501797, 28.876537, 20.485798>,  <32.279327, 29.201321, 20.414919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501797, 28.876537, 20.485798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192727, -0.081393, -0.977871,
		0.808413, 0.578014, 0.111218,
		0.556170, -0.811958, 0.177198,
		32.668648, 28.632950, 20.538958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381889, 29.889292, 20.078148>,  <32.279327, 29.201321, 20.414919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381889, 29.889292, 20.078148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.257690, 30.242771, 19.938049>,  <32.183170, 30.454859, 19.853991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.257690, 30.242771, 19.938049>,  <32.381889, 29.889292, 20.078148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257690, 30.242771, 19.938049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535450, 0.141850, 0.832569,
		0.785421, 0.446048, 0.429132,
		-0.310494, 0.883697, -0.350248,
		32.164543, 30.507881, 19.832975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729961, 30.389111, 20.457253>,  <32.381889, 29.889292, 20.078148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729961, 30.389111, 20.457253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.410595, 30.578709, 20.308735>,  <32.218975, 30.692467, 20.219624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.410595, 30.578709, 20.308735>,  <32.729961, 30.389111, 20.457253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410595, 30.578709, 20.308735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341949, 0.150601, 0.927572,
		0.495582, 0.867553, 0.041840,
		-0.798417, 0.473995, -0.371294,
		32.171070, 30.720907, 20.197348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661922, 31.087198, 20.718390>,  <32.729961, 30.389111, 20.457253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661922, 31.087198, 20.718390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.282738, 30.992535, 20.633202>,  <32.055225, 30.935738, 20.582088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.282738, 30.992535, 20.633202>,  <32.661922, 31.087198, 20.718390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282738, 30.992535, 20.633202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259348, 0.186007, 0.947703,
		-0.184667, 0.953622, -0.237704,
		-0.947965, -0.236657, -0.212971,
		31.998348, 30.921537, 20.569311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259228, 31.681847, 20.993662>,  <32.661922, 31.087198, 20.718390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259228, 31.681847, 20.993662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.003151, 31.385221, 20.913425>,  <31.849504, 31.207247, 20.865284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.003151, 31.385221, 20.913425>,  <32.259228, 31.681847, 20.993662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003151, 31.385221, 20.913425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463457, 0.164577, 0.870702,
		-0.612668, 0.650382, -0.449044,
		-0.640191, -0.741564, -0.200593,
		31.811094, 31.162752, 20.853247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724215, 31.860672, 21.291952>,  <32.259228, 31.681847, 20.993662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724215, 31.860672, 21.291952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.627035, 31.473806, 21.262085>,  <31.568727, 31.241688, 21.244165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.627035, 31.473806, 21.262085>,  <31.724215, 31.860672, 21.291952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627035, 31.473806, 21.262085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411876, 0.033159, 0.910637,
		-0.878257, 0.251989, -0.406406,
		-0.242947, -0.967162, -0.074666,
		31.554152, 31.183659, 21.239685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017429, 31.834793, 21.436752>,  <31.724215, 31.860672, 21.291952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017429, 31.834793, 21.436752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.169689, 31.474957, 21.522396>,  <31.261045, 31.259054, 21.573782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.169689, 31.474957, 21.522396>,  <31.017429, 31.834793, 21.436752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169689, 31.474957, 21.522396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273029, 0.111881, 0.955478,
		-0.883494, -0.422159, -0.203027,
		0.380649, -0.899591, 0.214107,
		31.283884, 31.205080, 21.586628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565725, 31.578934, 21.950108>,  <31.017429, 31.834793, 21.436752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565725, 31.578934, 21.950108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.874422, 31.330936, 22.006706>,  <31.059641, 31.182138, 22.040665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.874422, 31.330936, 22.006706>,  <30.565725, 31.578934, 21.950108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874422, 31.330936, 22.006706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115901, 0.081645, 0.989900,
		-0.625283, -0.780348, -0.008849,
		0.771744, -0.619993, 0.141495,
		31.105946, 31.144939, 22.049154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.629215, 31.753527, 18.100178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.953632, 31.981310, 18.153723>,  <35.148285, 32.117981, 18.185850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.953632, 31.981310, 18.153723>,  <34.629215, 31.753527, 18.100178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953632, 31.981310, 18.153723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496976, -0.550043, -0.671169,
		-0.308575, 0.610875, -0.729118,
		0.811047, 0.569460, 0.133861,
		35.196945, 32.152149, 18.193882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706020, 31.716543, 18.899195>,  <34.629215, 31.753527, 18.100178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706020, 31.716543, 18.899195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.020088, 31.487364, 18.993206>,  <35.208530, 31.349857, 19.049614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.020088, 31.487364, 18.993206>,  <34.706020, 31.716543, 18.899195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020088, 31.487364, 18.993206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080374, 0.470591, 0.878683,
		-0.614042, -0.671026, 0.415544,
		0.785170, -0.572947, 0.235030,
		35.255638, 31.315479, 19.063715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591457, 31.372753, 19.565945>,  <34.706020, 31.716543, 18.899195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591457, 31.372753, 19.565945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.984879, 31.418888, 19.510347>,  <35.220932, 31.446569, 19.476990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.984879, 31.418888, 19.510347>,  <34.591457, 31.372753, 19.565945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984879, 31.418888, 19.510347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068692, 0.472853, 0.878460,
		0.167043, -0.873560, 0.457154,
		0.983554, 0.115338, -0.138993,
		35.279945, 31.453489, 19.468649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930866, 31.026249, 20.132538>,  <34.591457, 31.372753, 19.565945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930866, 31.026249, 20.132538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.230213, 31.247540, 19.986176>,  <35.409821, 31.380314, 19.898357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.230213, 31.247540, 19.986176>,  <34.930866, 31.026249, 20.132538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230213, 31.247540, 19.986176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229554, 0.301544, 0.925406,
		0.622297, -0.776537, 0.098670,
		0.748366, 0.553227, -0.365907,
		35.454723, 31.413507, 19.876404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594051, 30.871124, 20.525299>,  <34.930866, 31.026249, 20.132538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594051, 30.871124, 20.525299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.659283, 31.234814, 20.372084>,  <35.698421, 31.453028, 20.280155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.659283, 31.234814, 20.372084>,  <35.594051, 30.871124, 20.525299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659283, 31.234814, 20.372084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145999, 0.361722, 0.920783,
		0.975751, -0.206082, -0.073757,
		0.163078, 0.909224, -0.383038,
		35.708206, 31.507580, 20.257172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942219, 31.281452, 21.117762>,  <35.594051, 30.871124, 20.525299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942219, 31.281452, 21.117762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.931767, 31.580492, 20.852308>,  <35.925495, 31.759916, 20.693035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.931767, 31.580492, 20.852308>,  <35.942219, 31.281452, 21.117762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931767, 31.580492, 20.852308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188109, 0.655679, 0.731232,
		0.981800, -0.105729, -0.157763,
		-0.026129, 0.747600, -0.663635,
		35.923927, 31.804771, 20.653217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530048, 31.759296, 21.316589>,  <35.942219, 31.281452, 21.117762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530048, 31.759296, 21.316589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.237740, 31.959909, 21.131363>,  <36.062355, 32.080276, 21.020227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.237740, 31.959909, 21.131363>,  <36.530048, 31.759296, 21.316589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237740, 31.959909, 21.131363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082171, 0.608803, 0.789054,
		0.677654, 0.614672, -0.403687,
		-0.730776, 0.501534, -0.463066,
		36.018505, 32.110371, 20.992443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722099, 32.423313, 21.312340>,  <36.530048, 31.759296, 21.316589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722099, 32.423313, 21.312340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.322842, 32.416759, 21.288857>,  <36.083286, 32.412827, 21.274767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.322842, 32.416759, 21.288857>,  <36.722099, 32.423313, 21.312340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322842, 32.416759, 21.288857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055341, 0.647283, 0.760238,
		0.025546, 0.762074, -0.646986,
		-0.998141, -0.016384, -0.058709,
		36.023399, 32.411842, 21.271244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554306, 33.195927, 21.545284>,  <36.722099, 32.423313, 21.312340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554306, 33.195927, 21.545284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.187233, 33.038216, 21.525711>,  <35.966988, 32.943588, 21.513968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.187233, 33.038216, 21.525711>,  <36.554306, 33.195927, 21.545284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187233, 33.038216, 21.525711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279936, 0.554276, 0.783846,
		-0.281931, 0.733023, -0.619025,
		-0.917688, -0.394278, -0.048932,
		35.911926, 32.919933, 21.511032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995121, 33.724133, 21.491909>,  <36.554306, 33.195927, 21.545284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995121, 33.724133, 21.491909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.824551, 33.398319, 21.649239>,  <35.722210, 33.202831, 21.743637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.824551, 33.398319, 21.649239>,  <35.995121, 33.724133, 21.491909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824551, 33.398319, 21.649239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207112, 0.511214, 0.834125,
		-0.880493, 0.274228, -0.386693,
		-0.426423, -0.814530, 0.393324,
		35.696625, 33.153961, 21.767237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334961, 33.806301, 21.818211>,  <35.995121, 33.724133, 21.491909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334961, 33.806301, 21.818211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.430008, 33.465691, 22.005163>,  <35.487038, 33.261326, 22.117334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.430008, 33.465691, 22.005163>,  <35.334961, 33.806301, 21.818211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430008, 33.465691, 22.005163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199149, 0.428234, 0.881451,
		-0.950725, -0.302526, -0.067825,
		0.237616, -0.851524, 0.467381,
		35.501293, 33.210232, 22.145378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853851, 33.698700, 22.269958>,  <35.334961, 33.806301, 21.818211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853851, 33.698700, 22.269958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.164360, 33.488720, 22.409580>,  <35.350666, 33.362732, 22.493353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.164360, 33.488720, 22.409580>,  <34.853851, 33.698700, 22.269958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164360, 33.488720, 22.409580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204804, 0.313660, 0.927185,
		-0.596208, -0.791231, 0.135973,
		0.776267, -0.524948, 0.349054,
		35.397240, 33.331234, 22.514296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316193, 33.116520, 22.217600>,  <34.853851, 33.698700, 22.269958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316193, 33.116520, 22.217600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.946175, 33.228680, 22.115093>,  <33.724163, 33.295975, 22.053589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.946175, 33.228680, 22.115093>,  <34.316193, 33.116520, 22.217600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946175, 33.228680, 22.115093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251018, -0.055129, -0.966411,
		-0.285110, -0.958299, -0.019388,
		-0.925042, 0.280400, -0.256268,
		33.668663, 33.312801, 22.038214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090885, 32.720127, 21.753719>,  <34.316193, 33.116520, 22.217600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090885, 32.720127, 21.753719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.858189, 33.041763, 21.704723>,  <33.718571, 33.234745, 21.675325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.858189, 33.041763, 21.704723>,  <34.090885, 32.720127, 21.753719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858189, 33.041763, 21.704723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256247, 0.038258, -0.965854,
		-0.771952, -0.593269, -0.228304,
		-0.581746, 0.804095, -0.122490,
		33.683666, 33.282993, 21.667976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647587, 32.461342, 21.242521>,  <34.090885, 32.720127, 21.753719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647587, 32.461342, 21.242521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.649380, 32.861332, 21.240110>,  <33.650455, 33.101326, 21.238665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.649380, 32.861332, 21.240110>,  <33.647587, 32.461342, 21.242521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649380, 32.861332, 21.240110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021884, -0.005926, -0.999743,
		-0.999751, 0.004611, 0.021857,
		0.004481, 0.999972, -0.006025,
		33.650723, 33.161324, 21.238302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138058, 32.604736, 20.691305>,  <33.647587, 32.461342, 21.242521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138058, 32.604736, 20.691305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.336067, 32.946751, 20.753098>,  <33.454872, 33.151958, 20.790173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.336067, 32.946751, 20.753098>,  <33.138058, 32.604736, 20.691305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336067, 32.946751, 20.753098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093131, 0.228984, -0.968965,
		-0.863871, 0.465278, 0.192984,
		0.495028, 0.855034, 0.154480,
		33.484577, 33.203262, 20.799442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740974, 33.087208, 20.454704>,  <33.138058, 32.604736, 20.691305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740974, 33.087208, 20.454704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.113071, 33.231823, 20.429615>,  <33.336330, 33.318592, 20.414562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.113071, 33.231823, 20.429615>,  <32.740974, 33.087208, 20.454704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113071, 33.231823, 20.429615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134245, 0.176239, -0.975150,
		-0.341503, 0.915548, 0.212480,
		0.930244, 0.361541, -0.062721,
		33.392143, 33.340286, 20.410799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637634, 33.524868, 19.795767>,  <32.740974, 33.087208, 20.454704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637634, 33.524868, 19.795767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.028076, 33.473930, 19.866207>,  <33.262341, 33.443367, 19.908472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.028076, 33.473930, 19.866207>,  <32.637634, 33.524868, 19.795767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028076, 33.473930, 19.866207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210124, 0.346210, -0.914323,
		0.055465, 0.929474, 0.364693,
		0.976100, -0.127344, 0.176102,
		33.320908, 33.435726, 19.919037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924625, 34.152081, 19.505373>,  <32.637634, 33.524868, 19.795767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924625, 34.152081, 19.505373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.187138, 33.851814, 19.535830>,  <33.344646, 33.671654, 19.554104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.187138, 33.851814, 19.535830>,  <32.924625, 34.152081, 19.505373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187138, 33.851814, 19.535830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300335, 0.167324, -0.939043,
		0.692163, 0.639148, 0.335262,
		0.656285, -0.750662, 0.076142,
		33.384022, 33.626617, 19.558672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326626, 34.338802, 18.995192>,  <32.924625, 34.152081, 19.505373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326626, 34.338802, 18.995192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.457771, 33.964340, 19.045965>,  <33.536461, 33.739662, 19.076429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.457771, 33.964340, 19.045965>,  <33.326626, 34.338802, 18.995192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457771, 33.964340, 19.045965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257891, -0.040569, -0.965322,
		0.908843, 0.349232, 0.228125,
		0.327866, -0.936158, 0.126935,
		33.556129, 33.683495, 19.084045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043842, 34.303757, 18.760828>,  <33.326626, 34.338802, 18.995192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043842, 34.303757, 18.760828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.871548, 33.944317, 18.727390>,  <33.768173, 33.728653, 18.707327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.871548, 33.944317, 18.727390>,  <34.043842, 34.303757, 18.760828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871548, 33.944317, 18.727390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309196, -0.059916, -0.949109,
		0.847859, -0.434661, 0.303651,
		-0.430735, -0.898599, -0.083595,
		33.742329, 33.674736, 18.702312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428921, 33.952072, 18.252798>,  <34.043842, 34.303757, 18.760828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428921, 33.952072, 18.252798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.115250, 33.704029, 18.262014>,  <33.927048, 33.555202, 18.267544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.115250, 33.704029, 18.262014>,  <34.428921, 33.952072, 18.252798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115250, 33.704029, 18.262014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233016, -0.328672, -0.915248,
		0.575128, -0.712346, 0.402232,
		-0.784176, -0.620111, 0.023041,
		33.879997, 33.517998, 18.268927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663342, 33.288391, 17.918085>,  <34.428921, 33.952072, 18.252798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663342, 33.288391, 17.918085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.264347, 33.311913, 17.902269>,  <34.024952, 33.326023, 17.892780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.264347, 33.311913, 17.902269>,  <34.663342, 33.288391, 17.918085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264347, 33.311913, 17.902269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018458, -0.323132, -0.946174,
		-0.068412, -0.944525, 0.321234,
		-0.997486, 0.058801, -0.039540,
		33.965099, 33.329552, 17.890408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515087, 32.681423, 17.572056>,  <34.663342, 33.288391, 17.918085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515087, 32.681423, 17.572056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.202488, 32.930740, 17.561005>,  <34.014927, 33.080330, 17.554375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.202488, 32.930740, 17.561005>,  <34.515087, 32.681423, 17.572056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202488, 32.930740, 17.561005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102386, -0.171806, -0.979796,
		-0.615445, -0.762883, 0.198083,
		-0.781502, 0.623291, -0.027628,
		33.968037, 33.117729, 17.552715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082054, 32.411514, 17.121655>,  <34.515087, 32.681423, 17.572056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082054, 32.411514, 17.121655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.959171, 32.792164, 17.119200>,  <33.885441, 33.020554, 17.117727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.959171, 32.792164, 17.119200>,  <34.082054, 32.411514, 17.121655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959171, 32.792164, 17.119200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047102, -0.021647, -0.998656,
		-0.950476, -0.306505, 0.051474,
		-0.307207, 0.951623, -0.006138,
		33.867008, 33.077652, 17.117359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444660, 31.802122, 17.412971>,  <34.082054, 32.411514, 17.121655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444660, 31.802122, 17.412971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.097996, 31.721636, 17.230366>,  <33.889996, 31.673344, 17.120802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.097996, 31.721636, 17.230366>,  <34.444660, 31.802122, 17.412971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097996, 31.721636, 17.230366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411189, -0.230096, 0.882032,
		-0.282522, 0.952138, 0.116678,
		-0.866663, -0.201217, -0.456516,
		33.837997, 31.661270, 17.093410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821915, 32.051895, 17.816517>,  <34.444660, 31.802122, 17.412971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821915, 32.051895, 17.816517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.642532, 31.781260, 17.582895>,  <33.534901, 31.618879, 17.442722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.642532, 31.781260, 17.582895>,  <33.821915, 32.051895, 17.816517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642532, 31.781260, 17.582895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613805, -0.241869, 0.751494,
		-0.649714, 0.695509, -0.306822,
		-0.448460, -0.676585, -0.584052,
		33.507996, 31.578283, 17.407681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099110, 32.210979, 17.836330>,  <33.821915, 32.051895, 17.816517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099110, 32.210979, 17.836330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.128773, 31.825668, 17.733112>,  <33.146572, 31.594481, 17.671181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.128773, 31.825668, 17.733112>,  <33.099110, 32.210979, 17.836330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128773, 31.825668, 17.733112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597822, -0.250052, 0.761632,
		-0.798191, 0.097782, -0.594415,
		0.074161, -0.963282, -0.258046,
		33.151020, 31.536684, 17.655699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401291, 31.897579, 17.840416>,  <33.099110, 32.210979, 17.836330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401291, 31.897579, 17.840416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.662975, 31.596523, 17.870182>,  <32.819984, 31.415890, 17.888042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.662975, 31.596523, 17.870182>,  <32.401291, 31.897579, 17.840416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662975, 31.596523, 17.870182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576999, -0.433073, 0.692474,
		-0.488961, -0.495959, -0.717595,
		0.654210, -0.752644, 0.074412,
		32.859238, 31.370731, 17.892506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009647, 31.199738, 17.723003>,  <32.401291, 31.897579, 17.840416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009647, 31.199738, 17.723003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.339504, 31.104807, 17.928389>,  <32.537418, 31.047848, 18.051620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.339504, 31.104807, 17.928389>,  <32.009647, 31.199738, 17.723003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339504, 31.104807, 17.928389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564977, -0.390093, 0.727068,
		0.027744, -0.889664, -0.455772,
		0.824640, -0.237329, 0.513463,
		32.586895, 31.033607, 18.082428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949951, 30.535681, 18.014393>,  <32.009647, 31.199738, 17.723003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949951, 30.535681, 18.014393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.237499, 30.671551, 18.256994>,  <32.410027, 30.753073, 18.402555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.237499, 30.671551, 18.256994>,  <31.949951, 30.535681, 18.014393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237499, 30.671551, 18.256994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617607, -0.088348, 0.781509,
		0.319042, -0.936384, 0.146275,
		0.718870, 0.339675, 0.606504,
		32.453159, 30.773453, 18.438946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900358, 30.135748, 18.665796>,  <31.949951, 30.535681, 18.014393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900358, 30.135748, 18.665796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.157009, 30.402477, 18.817410>,  <32.311001, 30.562515, 18.908377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.157009, 30.402477, 18.817410>,  <31.900358, 30.135748, 18.665796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157009, 30.402477, 18.817410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293680, -0.242928, 0.924520,
		0.708568, -0.704510, 0.039964,
		0.641626, 0.666822, 0.379031,
		32.349499, 30.602524, 18.931118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334362, 29.810282, 19.221205>,  <31.900358, 30.135748, 18.665796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334362, 29.810282, 19.221205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.288803, 30.203079, 19.281496>,  <32.261467, 30.438757, 19.317671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.288803, 30.203079, 19.281496>,  <32.334362, 29.810282, 19.221205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288803, 30.203079, 19.281496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388714, -0.183670, 0.902866,
		0.914291, 0.044244, 0.402634,
		-0.113898, 0.981992, 0.150729,
		32.254635, 30.497677, 19.326715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828789, 29.328398, 19.768839>,  <32.334362, 29.810282, 19.221205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828789, 29.328398, 19.768839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.880077, 28.961348, 19.919317>,  <32.910851, 28.741117, 20.009605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.880077, 28.961348, 19.919317>,  <32.828789, 29.328398, 19.768839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880077, 28.961348, 19.919317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150322, -0.356964, -0.921943,
		0.980287, 0.174761, 0.092170,
		0.128219, -0.917625, 0.376198,
		32.918545, 28.686060, 20.032177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363354, 29.052963, 19.431812>,  <32.828789, 29.328398, 19.768839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363354, 29.052963, 19.431812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.197956, 28.719320, 19.577848>,  <33.098717, 28.519135, 19.665470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.197956, 28.719320, 19.577848>,  <33.363354, 29.052963, 19.431812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197956, 28.719320, 19.577848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373743, -0.521122, -0.767299,
		0.830266, -0.180822, 0.527221,
		-0.413491, -0.834107, 0.365089,
		33.073910, 28.469088, 19.687376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890930, 28.524752, 19.578249>,  <33.363354, 29.052963, 19.431812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890930, 28.524752, 19.578249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.550552, 28.315943, 19.554981>,  <33.346325, 28.190657, 19.541019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.550552, 28.315943, 19.554981>,  <33.890930, 28.524752, 19.578249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550552, 28.315943, 19.554981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441634, -0.651122, -0.617251,
		0.284344, -0.550937, 0.784613,
		-0.850945, -0.522023, -0.058170,
		33.295269, 28.159336, 19.537531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144703, 27.844921, 19.596453>,  <33.890930, 28.524752, 19.578249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144703, 27.844921, 19.596453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.776630, 27.857403, 19.440355>,  <33.555786, 27.864891, 19.346697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.776630, 27.857403, 19.440355>,  <34.144703, 27.844921, 19.596453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776630, 27.857403, 19.440355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327607, -0.484354, -0.811218,
		-0.214329, -0.874315, 0.435472,
		-0.920183, 0.031204, -0.390243,
		33.500576, 27.866764, 19.323282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111164, 27.206146, 19.456362>,  <34.144703, 27.844921, 19.596453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111164, 27.206146, 19.456362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.824974, 27.376150, 19.234566>,  <33.653259, 27.478153, 19.101488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.824974, 27.376150, 19.234566>,  <34.111164, 27.206146, 19.456362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824974, 27.376150, 19.234566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307480, -0.521110, -0.796178,
		-0.627336, -0.740141, 0.242158,
		-0.715475, 0.425013, -0.554490,
		33.610332, 27.503653, 19.068218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117352, 26.645126, 19.023544>,  <34.111164, 27.206146, 19.456362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117352, 26.645126, 19.023544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.896461, 26.927385, 18.845955>,  <33.763927, 27.096741, 18.739401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.896461, 26.927385, 18.845955>,  <34.117352, 26.645126, 19.023544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896461, 26.927385, 18.845955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406723, -0.236836, -0.882318,
		-0.727753, -0.667812, -0.156215,
		-0.552225, 0.705646, -0.443972,
		33.730793, 27.139078, 18.712763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787430, 26.378597, 18.363367>,  <34.117352, 26.645126, 19.023544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787430, 26.378597, 18.363367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.786381, 26.778177, 18.345053>,  <33.785751, 27.017925, 18.334064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.786381, 26.778177, 18.345053>,  <33.787430, 26.378597, 18.363367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786381, 26.778177, 18.345053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600629, -0.035029, -0.798760,
		-0.799523, -0.029597, -0.599905,
		-0.002627, 0.998948, -0.045783,
		33.785591, 27.077862, 18.331318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606647, 26.602022, 17.634392>,  <33.787430, 26.378597, 18.363367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606647, 26.602022, 17.634392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.834183, 26.878693, 17.812382>,  <33.970703, 27.044695, 17.919176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.834183, 26.878693, 17.812382>,  <33.606647, 26.602022, 17.634392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834183, 26.878693, 17.812382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634853, -0.025318, -0.772218,
		-0.522861, 0.721762, -0.453515,
		0.568840, 0.691678, 0.444975,
		34.004833, 27.086197, 17.945875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755077, 27.034632, 17.086021>,  <33.606647, 26.602022, 17.634392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755077, 27.034632, 17.086021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.040073, 27.103262, 17.358175>,  <34.211071, 27.144440, 17.521467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.040073, 27.103262, 17.358175>,  <33.755077, 27.034632, 17.086021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040073, 27.103262, 17.358175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700934, -0.218798, -0.678836,
		0.032396, 0.960567, -0.276154,
		0.712490, 0.171574, 0.680383,
		34.253819, 27.154734, 17.562290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.063278, 32.183048, 32.483479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.360111, 31.915741, 32.462543>,  <33.538212, 31.755358, 32.449982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.360111, 31.915741, 32.462543>,  <33.063278, 32.183048, 32.483479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360111, 31.915741, 32.462543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466990, -0.459392, -0.755565,
		0.480873, 0.585132, -0.652979,
		0.742079, -0.668266, -0.052342,
		33.582733, 31.715261, 32.446842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103577, 32.088604, 31.788366>,  <33.063278, 32.183048, 32.483479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103577, 32.088604, 31.788366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305412, 31.768541, 31.918070>,  <33.426514, 31.576506, 31.995892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305412, 31.768541, 31.918070>,  <33.103577, 32.088604, 31.788366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305412, 31.768541, 31.918070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312409, -0.519349, -0.795410,
		0.804854, 0.300054, -0.512033,
		0.504590, -0.800152, 0.324260,
		33.456791, 31.528496, 32.015347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653877, 31.885910, 31.225891>,  <33.103577, 32.088604, 31.788366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653877, 31.885910, 31.225891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571613, 31.588650, 31.480585>,  <33.522255, 31.410294, 31.633402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571613, 31.588650, 31.480585>,  <33.653877, 31.885910, 31.225891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571613, 31.588650, 31.480585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311653, -0.567033, -0.762461,
		0.927672, -0.355251, -0.114987,
		-0.205663, -0.743150, 0.636735,
		33.509914, 31.365705, 31.671606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985065, 31.307388, 30.971109>,  <33.653877, 31.885910, 31.225891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985065, 31.307388, 30.971109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682896, 31.176767, 31.198338>,  <33.501595, 31.098394, 31.334675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.682896, 31.176767, 31.198338>,  <33.985065, 31.307388, 30.971109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682896, 31.176767, 31.198338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377754, -0.491342, -0.784783,
		0.535388, -0.807433, 0.247814,
		-0.755422, -0.326550, 0.568070,
		33.456268, 31.078802, 31.368759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003902, 30.563560, 30.765991>,  <33.985065, 31.307388, 30.971109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003902, 30.563560, 30.765991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659748, 30.640829, 30.954636>,  <33.453255, 30.687191, 31.067823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.659748, 30.640829, 30.954636>,  <34.003902, 30.563560, 30.765991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659748, 30.640829, 30.954636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495962, -0.530330, -0.687584,
		0.117288, -0.825491, 0.552095,
		-0.860387, 0.193172, 0.471613,
		33.401630, 30.698780, 31.096119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719219, 29.960497, 30.871849>,  <34.003902, 30.563560, 30.765991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719219, 29.960497, 30.871849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422676, 30.228783, 30.862635>,  <33.244751, 30.389753, 30.857105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422676, 30.228783, 30.862635>,  <33.719219, 29.960497, 30.871849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422676, 30.228783, 30.862635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462370, -0.535350, -0.706834,
		-0.486415, -0.513367, 0.707004,
		-0.741360, 0.670712, -0.023036,
		33.200268, 30.429996, 30.855722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118790, 29.614672, 30.888893>,  <33.719219, 29.960497, 30.871849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118790, 29.614672, 30.888893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.996811, 29.962145, 30.732738>,  <32.923622, 30.170628, 30.639046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.996811, 29.962145, 30.732738>,  <33.118790, 29.614672, 30.888893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996811, 29.962145, 30.732738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449540, -0.492664, -0.745115,
		-0.839596, -0.051726, 0.540743,
		-0.304946, 0.868681, -0.390386,
		32.905327, 30.222750, 30.615623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516376, 29.455027, 30.558123>,  <33.118790, 29.614672, 30.888893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516376, 29.455027, 30.558123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.616825, 29.803772, 30.389936>,  <32.677094, 30.013020, 30.289024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.616825, 29.803772, 30.389936>,  <32.516376, 29.455027, 30.558123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616825, 29.803772, 30.389936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515444, -0.247223, -0.820487,
		-0.819301, 0.422771, 0.387312,
		0.251126, 0.871863, -0.420465,
		32.692162, 30.065331, 30.263798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937914, 29.673367, 30.305208>,  <32.516376, 29.455027, 30.558123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937914, 29.673367, 30.305208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.221561, 29.877300, 30.110388>,  <32.391750, 29.999660, 29.993496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.221561, 29.877300, 30.110388>,  <31.937914, 29.673367, 30.305208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221561, 29.877300, 30.110388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400340, -0.277490, -0.873342,
		-0.580413, 0.814289, 0.007335,
		0.709118, 0.509836, -0.487052,
		32.434296, 30.030251, 29.964272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550470, 29.821836, 29.690739>,  <31.937914, 29.673367, 30.305208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550470, 29.821836, 29.690739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.928530, 29.925896, 29.611729>,  <32.155365, 29.988331, 29.564323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.928530, 29.925896, 29.611729>,  <31.550470, 29.821836, 29.690739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928530, 29.925896, 29.611729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115859, -0.298396, -0.947384,
		-0.305400, 0.918305, -0.251888,
		0.945150, 0.260147, -0.197524,
		32.212074, 30.003941, 29.552471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479282, 30.256622, 29.092941>,  <31.550470, 29.821836, 29.690739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479282, 30.256622, 29.092941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.860254, 30.135899, 29.109848>,  <32.088837, 30.063463, 29.119991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.860254, 30.135899, 29.109848>,  <31.479282, 30.256622, 29.092941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860254, 30.135899, 29.109848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021800, -0.205803, -0.978351,
		0.303975, 0.930889, -0.202593,
		0.952430, -0.301811, 0.042266,
		32.145985, 30.045355, 29.122528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792694, 30.682354, 28.571079>,  <31.479282, 30.256622, 29.092941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792694, 30.682354, 28.571079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033096, 30.365849, 28.616146>,  <32.177338, 30.175945, 28.643187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033096, 30.365849, 28.616146>,  <31.792694, 30.682354, 28.571079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033096, 30.365849, 28.616146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158643, -0.256268, -0.953498,
		0.783340, 0.555185, -0.279548,
		0.601008, -0.791262, 0.112669,
		32.213398, 30.128469, 28.649946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120445, 31.408356, 28.334848>,  <31.792694, 30.682354, 28.571079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120445, 31.408356, 28.334848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.871996, 31.695856, 28.209885>,  <31.722925, 31.868357, 28.134907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.871996, 31.695856, 28.209885>,  <32.120445, 31.408356, 28.334848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871996, 31.695856, 28.209885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137502, 0.492389, 0.859445,
		0.771555, 0.490865, -0.404665,
		-0.621125, 0.718752, -0.312410,
		31.685659, 31.911482, 28.116161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451511, 32.067326, 28.416761>,  <32.120445, 31.408356, 28.334848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451511, 32.067326, 28.416761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.061565, 32.150597, 28.385023>,  <31.827597, 32.200558, 28.365980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.061565, 32.150597, 28.385023>,  <32.451511, 32.067326, 28.416761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061565, 32.150597, 28.385023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054817, 0.569345, 0.820269,
		0.215937, 0.795303, -0.566448,
		-0.974867, 0.208178, -0.079346,
		31.769106, 32.213051, 28.361219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460316, 32.786938, 28.519222>,  <32.451511, 32.067326, 28.416761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460316, 32.786938, 28.519222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.091324, 32.651752, 28.593861>,  <31.869930, 32.570641, 28.638643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.091324, 32.651752, 28.593861>,  <32.460316, 32.786938, 28.519222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091324, 32.651752, 28.593861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019334, 0.442289, 0.896664,
		-0.385572, 0.830758, -0.401466,
		-0.922475, -0.337966, 0.186596,
		31.814581, 32.550362, 28.649839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078938, 33.447559, 28.644640>,  <32.460316, 32.786938, 28.519222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078938, 33.447559, 28.644640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.877565, 33.134365, 28.790783>,  <31.756742, 32.946449, 28.878469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.877565, 33.134365, 28.790783>,  <32.078938, 33.447559, 28.644640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877565, 33.134365, 28.790783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148112, 0.494793, 0.856295,
		-0.851248, 0.376969, -0.365063,
		-0.503428, -0.782990, 0.365358,
		31.726538, 32.899467, 28.900391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485300, 33.664120, 28.829012>,  <32.078938, 33.447559, 28.644640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485300, 33.664120, 28.829012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.485958, 33.324142, 29.039759>,  <31.486353, 33.120155, 29.166206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.485958, 33.324142, 29.039759>,  <31.485300, 33.664120, 28.829012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485958, 33.324142, 29.039759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309628, 0.500544, 0.808447,
		-0.950856, -0.164465, -0.262342,
		0.001648, -0.849945, 0.526869,
		31.486452, 33.069160, 29.197819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916029, 33.702145, 29.316515>,  <31.485300, 33.664120, 28.829012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916029, 33.702145, 29.316515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.181488, 33.456661, 29.487598>,  <31.340763, 33.309372, 29.590248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.181488, 33.456661, 29.487598>,  <30.916029, 33.702145, 29.316515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181488, 33.456661, 29.487598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275531, 0.331024, 0.902500,
		-0.695451, -0.716790, 0.050589,
		0.663649, -0.613706, 0.427709,
		31.380583, 33.272549, 29.615911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826197, 33.807899, 30.011520>,  <30.916029, 33.702145, 29.316515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826197, 33.807899, 30.011520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.059280, 33.491859, 30.087618>,  <31.199131, 33.302235, 30.133276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.059280, 33.491859, 30.087618>,  <30.826197, 33.807899, 30.011520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059280, 33.491859, 30.087618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038556, 0.206953, 0.977591,
		-0.811764, -0.576988, 0.090131,
		0.582711, -0.790098, 0.190243,
		31.234095, 33.254829, 30.144691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507870, 33.279083, 30.443686>,  <30.826197, 33.807899, 30.011520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507870, 33.279083, 30.443686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.903723, 33.243355, 30.488667>,  <31.141235, 33.221916, 30.515656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.903723, 33.243355, 30.488667>,  <30.507870, 33.279083, 30.443686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903723, 33.243355, 30.488667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066547, 0.408661, 0.910257,
		-0.127265, -0.908305, 0.398480,
		0.989634, -0.089326, 0.112453,
		31.200613, 33.216557, 30.522402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702942, 32.812634, 31.139906>,  <30.507870, 33.279083, 30.443686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702942, 32.812634, 31.139906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.984291, 33.075455, 31.031427>,  <31.153101, 33.233147, 30.966341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.984291, 33.075455, 31.031427>,  <30.702942, 32.812634, 31.139906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984291, 33.075455, 31.031427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096015, 0.465847, 0.879641,
		0.704308, -0.592675, 0.390751,
		0.703371, 0.657056, -0.271194,
		31.195303, 33.272572, 30.950069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167849, 32.913780, 31.711502>,  <30.702942, 32.812634, 31.139906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167849, 32.913780, 31.711502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.268755, 33.237812, 31.499792>,  <31.329298, 33.432232, 31.372766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.268755, 33.237812, 31.499792>,  <31.167849, 32.913780, 31.711502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268755, 33.237812, 31.499792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022196, 0.551666, 0.833770,
		0.967404, -0.198583, 0.157146,
		0.252264, 0.810080, -0.529276,
		31.344435, 33.480835, 31.341009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697023, 33.447662, 32.142757>,  <31.167849, 32.913780, 31.711502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697023, 33.447662, 32.142757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.566284, 33.690891, 31.853367>,  <31.487841, 33.836830, 31.679733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.566284, 33.690891, 31.853367>,  <31.697023, 33.447662, 32.142757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566284, 33.690891, 31.853367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070909, 0.747583, 0.660372,
		0.942412, 0.267144, -0.201230,
		-0.326851, 0.608074, -0.723474,
		31.468229, 33.873314, 31.636324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116405, 34.077892, 32.205505>,  <31.697023, 33.447662, 32.142757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116405, 34.077892, 32.205505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.763645, 34.147720, 32.030338>,  <31.551989, 34.189617, 31.925238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.763645, 34.147720, 32.030338>,  <32.116405, 34.077892, 32.205505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763645, 34.147720, 32.030338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177150, 0.738119, 0.650998,
		0.436884, 0.651693, -0.620023,
		-0.881902, 0.174574, -0.437920,
		31.499075, 34.200092, 31.898962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064663, 34.726955, 32.128395>,  <32.116405, 34.077892, 32.205505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064663, 34.726955, 32.128395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.680456, 34.633553, 32.067890>,  <31.449932, 34.577511, 32.031586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.680456, 34.633553, 32.067890>,  <32.064663, 34.726955, 32.128395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680456, 34.633553, 32.067890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277521, 0.842628, 0.461476,
		0.019700, 0.485235, -0.874162,
		-0.960517, -0.233507, -0.151263,
		31.392302, 34.563499, 32.022511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800198, 35.345955, 31.796635>,  <32.064663, 34.726955, 32.128395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800198, 35.345955, 31.796635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.484884, 35.141617, 31.933834>,  <31.295696, 35.019016, 32.016151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.484884, 35.141617, 31.933834>,  <31.800198, 35.345955, 31.796635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484884, 35.141617, 31.933834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333682, 0.823257, 0.459243,
		-0.516975, 0.247563, -0.819420,
		-0.788285, -0.510843, 0.342996,
		31.248400, 34.988365, 32.036732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182087, 35.619308, 31.529993>,  <31.800198, 35.345955, 31.796635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182087, 35.619308, 31.529993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.078167, 35.429935, 31.866650>,  <31.015814, 35.316311, 32.068645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.078167, 35.429935, 31.866650>,  <31.182087, 35.619308, 31.529993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078167, 35.429935, 31.866650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401762, 0.845550, 0.351614,
		-0.878118, -0.246790, -0.409882,
		-0.259801, -0.473433, 0.841644,
		31.000227, 35.287907, 32.119144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158861, 36.118649, 32.010387>,  <31.182087, 35.619308, 31.529993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158861, 36.118649, 32.010387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517344, 36.294670, 31.987852>,  <31.732433, 36.400284, 31.974331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517344, 36.294670, 31.987852>,  <31.158861, 36.118649, 32.010387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517344, 36.294670, 31.987852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093695, 0.063609, -0.993567,
		-0.433635, 0.895718, 0.098237,
		0.896204, 0.440049, -0.056342,
		31.786205, 36.426685, 31.970949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040251, 36.465977, 31.498795>,  <31.158861, 36.118649, 32.010387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040251, 36.465977, 31.498795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.438320, 36.439804, 31.528048>,  <31.677162, 36.424103, 31.545599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.438320, 36.439804, 31.528048>,  <31.040251, 36.465977, 31.498795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438320, 36.439804, 31.528048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062883, -0.146915, -0.987148,
		0.075332, 0.986983, -0.142091,
		0.995174, -0.065429, 0.073131,
		31.736872, 36.420174, 31.549988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254848, 36.985012, 30.993574>,  <31.040251, 36.465977, 31.498795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254848, 36.985012, 30.993574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.575724, 36.752079, 31.046316>,  <31.768250, 36.612320, 31.077961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.575724, 36.752079, 31.046316>,  <31.254848, 36.985012, 30.993574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575724, 36.752079, 31.046316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140565, -0.030435, -0.989603,
		0.580290, 0.812381, 0.057441,
		0.802187, -0.582332, 0.131854,
		31.816380, 36.577381, 31.085873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778093, 37.324558, 30.524284>,  <31.254848, 36.985012, 30.993574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778093, 37.324558, 30.524284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.865189, 36.939789, 30.590366>,  <31.917446, 36.708927, 30.630014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.865189, 36.939789, 30.590366>,  <31.778093, 37.324558, 30.524284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865189, 36.939789, 30.590366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239295, -0.111484, -0.964525,
		0.946218, 0.249547, 0.205910,
		0.217739, -0.961924, 0.165203,
		31.930510, 36.651211, 30.639927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417789, 37.173931, 30.027969>,  <31.778093, 37.324558, 30.524284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417789, 37.173931, 30.027969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.257092, 36.817722, 30.113365>,  <32.160671, 36.603996, 30.164602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.257092, 36.817722, 30.113365>,  <32.417789, 37.173931, 30.027969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257092, 36.817722, 30.113365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174496, -0.303304, -0.936781,
		0.898973, -0.339093, 0.277243,
		-0.401744, -0.890518, 0.213492,
		32.136570, 36.550568, 30.177412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893486, 36.520943, 29.758217>,  <32.417789, 37.173931, 30.027969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893486, 36.520943, 29.758217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525982, 36.370560, 29.806446>,  <32.305481, 36.280331, 29.835384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525982, 36.370560, 29.806446>,  <32.893486, 36.520943, 29.758217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525982, 36.370560, 29.806446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039672, -0.391757, -0.919213,
		0.392820, -0.839752, 0.374845,
		-0.918759, -0.375956, 0.120575,
		32.250355, 36.257774, 29.842619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000256, 35.885231, 29.435652>,  <32.893486, 36.520943, 29.758217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000256, 35.885231, 29.435652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601875, 35.921185, 29.436459>,  <32.362846, 35.942757, 29.436943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.601875, 35.921185, 29.436459>,  <33.000256, 35.885231, 29.435652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601875, 35.921185, 29.436459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036990, -0.389190, -0.920415,
		-0.081944, -0.916762, 0.390938,
		-0.995950, 0.089883, 0.002019,
		32.303089, 35.948151, 29.437065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600212, 35.257568, 29.078266>,  <33.000256, 35.885231, 29.435652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600212, 35.257568, 29.078266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334084, 35.556190, 29.077734>,  <32.174408, 35.735363, 29.077414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334084, 35.556190, 29.077734>,  <32.600212, 35.257568, 29.078266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334084, 35.556190, 29.077734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327865, -0.293790, -0.897882,
		-0.670710, -0.596943, 0.440234,
		-0.665321, 0.746556, -0.001331,
		32.134487, 35.780159, 29.077335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878778, 35.071312, 29.019810>,  <32.600212, 35.257568, 29.078266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878778, 35.071312, 29.019810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.861219, 35.435543, 28.855406>,  <31.850683, 35.654079, 28.756763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.861219, 35.435543, 28.855406>,  <31.878778, 35.071312, 29.019810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861219, 35.435543, 28.855406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223054, -0.409954, -0.884412,
		-0.973817, 0.052852, 0.221104,
		-0.043899, 0.910574, -0.411009,
		31.848049, 35.708714, 28.732103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292194, 35.224869, 28.591499>,  <31.878778, 35.071312, 29.019810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292194, 35.224869, 28.591499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.514404, 35.513912, 28.426947>,  <31.647730, 35.687336, 28.328215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.514404, 35.513912, 28.426947>,  <31.292194, 35.224869, 28.591499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514404, 35.513912, 28.426947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238782, -0.335271, -0.911360,
		-0.796478, 0.604512, -0.013705,
		0.555523, 0.722605, -0.411382,
		31.681061, 35.730694, 28.303532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838402, 35.462097, 28.110247>,  <31.292194, 35.224869, 28.591499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838402, 35.462097, 28.110247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.198151, 35.604675, 28.008993>,  <31.414000, 35.690220, 27.948240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.198151, 35.604675, 28.008993>,  <30.838402, 35.462097, 28.110247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198151, 35.604675, 28.008993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194256, -0.192897, -0.961798,
		-0.391653, 0.914189, -0.104245,
		0.899373, 0.356441, -0.253136,
		31.467962, 35.711609, 27.933052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757978, 35.884148, 27.471365>,  <30.838402, 35.462097, 28.110247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757978, 35.884148, 27.471365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.148052, 35.795685, 27.475378>,  <31.382097, 35.742607, 27.477785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.148052, 35.795685, 27.475378>,  <30.757978, 35.884148, 27.471365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148052, 35.795685, 27.475378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013233, -0.103460, -0.994546,
		0.220990, 0.969734, -0.103819,
		0.975186, -0.221159, 0.010031,
		31.440609, 35.729336, 27.478388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021210, 36.310055, 26.961021>,  <30.757978, 35.884148, 27.471365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021210, 36.310055, 26.961021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.249773, 35.990051, 27.034212>,  <31.386911, 35.798050, 27.078127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.249773, 35.990051, 27.034212>,  <31.021210, 36.310055, 26.961021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249773, 35.990051, 27.034212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058655, -0.182577, -0.981441,
		0.818566, 0.571537, -0.057402,
		0.571409, -0.800007, 0.182975,
		31.421196, 35.750050, 27.089104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417511, 36.351910, 26.358608>,  <31.021210, 36.310055, 26.961021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417511, 36.351910, 26.358608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.475542, 35.991756, 26.522690>,  <31.510361, 35.775665, 26.621138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.475542, 35.991756, 26.522690>,  <31.417511, 36.351910, 26.358608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475542, 35.991756, 26.522690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103080, -0.398577, -0.911324,
		0.984036, 0.174498, 0.034986,
		0.145080, -0.900381, 0.410202,
		31.519066, 35.721642, 26.645750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842318, 36.092010, 25.870045>,  <31.417511, 36.351910, 26.358608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842318, 36.092010, 25.870045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.723841, 35.771297, 26.077663>,  <31.652754, 35.578869, 26.202234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.723841, 35.771297, 26.077663>,  <31.842318, 36.092010, 25.870045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723841, 35.771297, 26.077663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175024, -0.579794, -0.795742,
		0.938955, -0.144848, 0.312063,
		-0.296193, -0.801784, 0.519048,
		31.634983, 35.530762, 26.233377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372383, 35.639126, 25.851830>,  <31.842318, 36.092010, 25.870045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372383, 35.639126, 25.851830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.036327, 35.430325, 25.910721>,  <31.834694, 35.305046, 25.946054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.036327, 35.430325, 25.910721>,  <32.372383, 35.639126, 25.851830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036327, 35.430325, 25.910721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194093, -0.542843, -0.817098,
		0.506447, -0.657903, 0.557382,
		-0.840142, -0.522001, 0.147227,
		31.784285, 35.273724, 25.954889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605389, 34.938126, 25.778355>,  <32.372383, 35.639126, 25.851830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605389, 34.938126, 25.778355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212990, 34.944054, 25.700964>,  <31.977552, 34.947613, 25.654530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.212990, 34.944054, 25.700964>,  <32.605389, 34.938126, 25.778355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212990, 34.944054, 25.700964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141279, -0.628926, -0.764521,
		-0.133015, -0.777324, 0.614878,
		-0.980993, 0.014824, -0.193476,
		31.918692, 34.948502, 25.642921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510880, 34.368698, 25.546772>,  <32.605389, 34.938126, 25.778355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510880, 34.368698, 25.546772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.167877, 34.528519, 25.417135>,  <31.962074, 34.624413, 25.339354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.167877, 34.528519, 25.417135>,  <32.510880, 34.368698, 25.546772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167877, 34.528519, 25.417135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014636, -0.610751, -0.791687,
		-0.514260, -0.683623, 0.517877,
		-0.857510, 0.399553, -0.324090,
		31.910625, 34.648384, 25.319908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944937, 33.803707, 25.364799>,  <32.510880, 34.368698, 25.546772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944937, 33.803707, 25.364799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.830055, 34.128464, 25.161488>,  <31.761127, 34.323318, 25.039499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.830055, 34.128464, 25.161488>,  <31.944937, 33.803707, 25.364799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830055, 34.128464, 25.161488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039683, -0.540267, -0.840558,
		-0.957048, -0.221240, 0.187384,
		-0.287202, 0.811890, -0.508282,
		31.743895, 34.372032, 25.009003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353422, 33.703377, 24.952070>,  <31.944937, 33.803707, 25.364799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353422, 33.703377, 24.952070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.521008, 34.019672, 24.773546>,  <31.621559, 34.209450, 24.666431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.521008, 34.019672, 24.773546>,  <31.353422, 33.703377, 24.952070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521008, 34.019672, 24.773546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184856, -0.555517, -0.810697,
		-0.888986, 0.257151, -0.378916,
		0.418966, 0.790743, -0.446311,
		31.646698, 34.256897, 24.639652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290306, 33.606136, 24.238400>,  <31.353422, 33.703377, 24.952070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290306, 33.606136, 24.238400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.570156, 33.890488, 24.209604>,  <31.738066, 34.061096, 24.192327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.570156, 33.890488, 24.209604>,  <31.290306, 33.606136, 24.238400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570156, 33.890488, 24.209604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279382, -0.364900, -0.888141,
		-0.657627, 0.601251, -0.453898,
		0.699623, 0.710877, -0.071989,
		31.780043, 34.103752, 24.188007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.322481, 33.848461, 23.522102>,  <31.290306, 33.606136, 24.238400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.322481, 33.848461, 23.522102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.678116, 33.936962, 23.682386>,  <31.891497, 33.990063, 23.778557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.678116, 33.936962, 23.682386>,  <31.322481, 33.848461, 23.522102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678116, 33.936962, 23.682386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441216, -0.181184, -0.878920,
		-0.121860, 0.958238, -0.258708,
		0.889088, 0.221251, 0.400711,
		31.944843, 34.003338, 23.802599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665279, 34.241074, 23.038969>,  <31.322481, 33.848461, 23.522102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665279, 34.241074, 23.038969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957996, 34.115715, 23.281050>,  <32.133625, 34.040501, 23.426298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957996, 34.115715, 23.281050>,  <31.665279, 34.241074, 23.038969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957996, 34.115715, 23.281050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558674, -0.232751, -0.796059,
		0.390341, 0.920658, 0.004760,
		0.731791, -0.313394, 0.605200,
		32.177532, 34.021698, 23.462610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227406, 34.393223, 22.728966>,  <31.665279, 34.241074, 23.038969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227406, 34.393223, 22.728966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395252, 34.133949, 22.983141>,  <32.495960, 33.978386, 23.135647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395252, 34.133949, 22.983141>,  <32.227406, 34.393223, 22.728966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395252, 34.133949, 22.983141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704810, -0.208471, -0.678072,
		0.571985, 0.732393, 0.369369,
		0.419613, -0.648183, 0.635440,
		32.521137, 33.939495, 23.173773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926941, 34.579651, 22.725288>,  <32.227406, 34.393223, 22.728966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926941, 34.579651, 22.725288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.927143, 34.207134, 22.871000>,  <32.927265, 33.983624, 22.958427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.927143, 34.207134, 22.871000>,  <32.926941, 34.579651, 22.725288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927143, 34.207134, 22.871000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516581, -0.311670, -0.797500,
		0.856238, 0.188582, 0.480929,
		0.000503, -0.931289, 0.364282,
		32.927296, 33.927746, 22.980286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692047, 34.271164, 22.835676>,  <32.926941, 34.579651, 22.725288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692047, 34.271164, 22.835676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.439503, 33.965023, 22.785690>,  <33.287975, 33.781338, 22.755699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.439503, 33.965023, 22.785690>,  <33.692047, 34.271164, 22.835676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439503, 33.965023, 22.785690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481718, -0.260782, -0.836624,
		0.607725, -0.588410, 0.533332,
		-0.631362, -0.765354, -0.124964,
		33.250095, 33.735416, 22.748201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108078, 33.645813, 22.747393>,  <33.692047, 34.271164, 22.835676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108078, 33.645813, 22.747393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.755779, 33.559132, 22.578951>,  <33.544399, 33.507122, 22.477886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.755779, 33.559132, 22.578951>,  <34.108078, 33.645813, 22.747393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755779, 33.559132, 22.578951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466841, -0.247679, -0.848949,
		0.079671, -0.944296, 0.319308,
		-0.880745, -0.216702, -0.421103,
		33.491554, 33.494122, 22.452620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662064, 33.315117, 22.837809>,  <34.108078, 33.645813, 22.747393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662064, 33.315117, 22.837809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.057419, 33.273083, 22.881710>,  <35.294632, 33.247864, 22.908051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.057419, 33.273083, 22.881710>,  <34.662064, 33.315117, 22.837809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057419, 33.273083, 22.881710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086417, 0.205385, 0.974859,
		-0.124987, -0.973023, 0.193919,
		0.988388, -0.105087, 0.109756,
		35.353935, 33.241558, 22.914637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676659, 32.875416, 23.394655>,  <34.662064, 33.315117, 22.837809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676659, 32.875416, 23.394655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.028294, 33.063915, 23.366028>,  <35.239277, 33.177017, 23.348852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.028294, 33.063915, 23.366028>,  <34.676659, 32.875416, 23.394655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028294, 33.063915, 23.366028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015485, 0.121830, 0.992430,
		0.476405, -0.873543, 0.099802,
		0.879089, 0.471253, -0.071568,
		35.292019, 33.205292, 23.344557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123260, 32.567822, 23.878769>,  <34.676659, 32.875416, 23.394655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123260, 32.567822, 23.878769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307884, 32.914932, 23.805098>,  <35.418659, 33.123199, 23.760895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307884, 32.914932, 23.805098>,  <35.123260, 32.567822, 23.878769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307884, 32.914932, 23.805098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143178, 0.132021, 0.980852,
		0.875479, -0.479090, -0.063311,
		0.461558, 0.867780, -0.184177,
		35.446350, 33.175266, 23.749844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729229, 32.587379, 24.268656>,  <35.123260, 32.567822, 23.878769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729229, 32.587379, 24.268656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.656937, 32.975819, 24.206299>,  <35.613560, 33.208881, 24.168884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.656937, 32.975819, 24.206299>,  <35.729229, 32.587379, 24.268656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656937, 32.975819, 24.206299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174652, 0.187674, 0.966579,
		0.967900, 0.147468, -0.203524,
		-0.180735, 0.971098, -0.155894,
		35.602715, 33.267147, 24.159531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348080, 32.956707, 24.539145>,  <35.729229, 32.587379, 24.268656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348080, 32.956707, 24.539145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048851, 33.222103, 24.533998>,  <35.869312, 33.381340, 24.530910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048851, 33.222103, 24.533998>,  <36.348080, 32.956707, 24.539145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048851, 33.222103, 24.533998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179888, 0.221403, 0.958447,
		0.638770, 0.714674, -0.284979,
		-0.748073, 0.663492, -0.012864,
		35.824429, 33.421150, 24.530140>
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
