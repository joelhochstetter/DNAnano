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
	<42.216560, 32.760143, 22.891766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236923, 32.940411, 23.248260>,  <42.249142, 33.048573, 23.462158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.236923, 32.940411, 23.248260>,  <42.216560, 32.760143, 22.891766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.236923, 32.940411, 23.248260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640248, 0.699617, -0.317203,
		-0.766479, -0.554467, 0.324154,
		0.050906, 0.450669, 0.891239,
		42.252193, 33.075611, 23.515633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517925, 32.701263, 23.252369>,  <42.216560, 32.760143, 22.891766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517925, 32.701263, 23.252369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716522, 33.017601, 23.395515>,  <41.835678, 33.207401, 23.481403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.716522, 33.017601, 23.395515>,  <41.517925, 32.701263, 23.252369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716522, 33.017601, 23.395515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778951, 0.587837, -0.218364,
		-0.383060, -0.170347, 0.907881,
		0.496488, 0.790841, 0.357869,
		41.865467, 33.254852, 23.502876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356564, 33.072083, 22.566807>,  <41.517925, 32.701263, 23.252369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356564, 33.072083, 22.566807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195396, 32.785923, 22.338470>,  <41.098698, 32.614227, 22.201468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195396, 32.785923, 22.338470>,  <41.356564, 33.072083, 22.566807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195396, 32.785923, 22.338470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908003, 0.234192, 0.347398,
		-0.114841, 0.658300, -0.743945,
		-0.402917, -0.715399, -0.570843,
		41.074520, 32.571304, 22.167217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866013, 33.262836, 21.892246>,  <41.356564, 33.072083, 22.566807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866013, 33.262836, 21.892246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775127, 32.922184, 22.081177>,  <40.720596, 32.717793, 22.194534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775127, 32.922184, 22.081177>,  <40.866013, 33.262836, 21.892246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775127, 32.922184, 22.081177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891974, 0.376651, 0.250032,
		-0.390838, -0.364491, -0.845217,
		-0.227218, -0.851634, 0.472326,
		40.706963, 32.666695, 22.222874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542866, 33.788441, 21.353552>,  <40.866013, 33.262836, 21.892246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542866, 33.788441, 21.353552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570236, 33.953857, 20.990387>,  <40.586658, 34.053108, 20.772488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570236, 33.953857, 20.990387>,  <40.542866, 33.788441, 21.353552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570236, 33.953857, 20.990387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545203, -0.746636, -0.381168,
		-0.835507, 0.521078, 0.174373,
		0.068425, 0.413537, -0.907912,
		40.590763, 34.077919, 20.718014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908001, 33.873161, 21.055822>,  <40.542866, 33.788441, 21.353552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908001, 33.873161, 21.055822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199009, 33.806606, 20.789577>,  <40.373611, 33.766674, 20.629831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199009, 33.806606, 20.789577>,  <39.908001, 33.873161, 21.055822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199009, 33.806606, 20.789577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447878, -0.850093, -0.277031,
		-0.519737, 0.499656, -0.692977,
		0.727516, -0.166386, -0.665610,
		40.417263, 33.756691, 20.589895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970695, 34.279240, 20.428715>,  <39.908001, 33.873161, 21.055822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970695, 34.279240, 20.428715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863777, 34.648094, 20.540577>,  <39.799625, 34.869408, 20.607695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863777, 34.648094, 20.540577>,  <39.970695, 34.279240, 20.428715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863777, 34.648094, 20.540577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428948, 0.373743, -0.822387,
		-0.862876, -0.099865, -0.495451,
		-0.267299, 0.922140, 0.279657,
		39.783588, 34.924736, 20.624474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699688, 34.612061, 19.824835>,  <39.970695, 34.279240, 20.428715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699688, 34.612061, 19.824835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809284, 34.917656, 20.058502>,  <39.875042, 35.101013, 20.198702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809284, 34.917656, 20.058502>,  <39.699688, 34.612061, 19.824835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809284, 34.917656, 20.058502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519649, 0.393505, -0.758366,
		-0.809255, 0.511349, -0.289187,
		0.273993, 0.763987, 0.584167,
		39.891483, 35.146851, 20.233753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631989, 35.248352, 19.404476>,  <39.699688, 34.612061, 19.824835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631989, 35.248352, 19.404476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886875, 35.337955, 19.699440>,  <40.039806, 35.391716, 19.876419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886875, 35.337955, 19.699440>,  <39.631989, 35.248352, 19.404476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886875, 35.337955, 19.699440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514393, 0.588884, -0.623390,
		-0.573894, 0.776554, 0.260019,
		0.637217, 0.224008, 0.737411,
		40.078041, 35.405159, 19.920664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792282, 35.874214, 19.274540>,  <39.631989, 35.248352, 19.404476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792282, 35.874214, 19.274540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094986, 35.783039, 19.519604>,  <40.276608, 35.728333, 19.666643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.094986, 35.783039, 19.519604>,  <39.792282, 35.874214, 19.274540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094986, 35.783039, 19.519604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645416, 0.409178, -0.644990,
		-0.103669, 0.883525, 0.456767,
		0.756764, -0.227939, 0.612660,
		40.322014, 35.714657, 19.703402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214607, 36.396404, 19.362877>,  <39.792282, 35.874214, 19.274540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214607, 36.396404, 19.362877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458397, 36.094860, 19.461044>,  <40.604671, 35.913933, 19.519945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458397, 36.094860, 19.461044>,  <40.214607, 36.396404, 19.362877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458397, 36.094860, 19.461044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660861, 0.312086, -0.682543,
		0.437952, 0.578182, 0.688407,
		0.609476, -0.753862, 0.245419,
		40.641239, 35.868702, 19.534670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840019, 36.636501, 19.535393>,  <40.214607, 36.396404, 19.362877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840019, 36.636501, 19.535393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960213, 36.263840, 19.453674>,  <41.032330, 36.040245, 19.404644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960213, 36.263840, 19.453674>,  <40.840019, 36.636501, 19.535393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960213, 36.263840, 19.453674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772067, 0.363357, -0.521426,
		0.560018, -0.001047, 0.828480,
		0.300488, -0.931649, -0.204295,
		41.050358, 35.984344, 19.392385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546436, 36.721249, 19.373602>,  <40.840019, 36.636501, 19.535393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546436, 36.721249, 19.373602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470398, 36.357338, 19.226002>,  <41.424774, 36.138992, 19.137442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470398, 36.357338, 19.226002>,  <41.546436, 36.721249, 19.373602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470398, 36.357338, 19.226002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757608, 0.103112, -0.644514,
		0.624415, -0.402077, 0.669656,
		-0.190095, -0.909781, -0.369002,
		41.413368, 36.084404, 19.115301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222687, 36.470791, 19.259865>,  <41.546436, 36.721249, 19.373602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222687, 36.470791, 19.259865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969692, 36.253391, 19.039116>,  <41.817894, 36.122952, 18.906666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969692, 36.253391, 19.039116>,  <42.222687, 36.470791, 19.259865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969692, 36.253391, 19.039116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660940, -0.007194, -0.750404,
		0.403876, -0.839376, 0.363773,
		-0.632488, -0.543503, -0.551872,
		41.779945, 36.090340, 18.873554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509434, 35.683876, 18.987339>,  <42.222687, 36.470791, 19.259865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509434, 35.683876, 18.987339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218204, 35.815506, 18.746799>,  <42.043468, 35.894485, 18.602476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218204, 35.815506, 18.746799>,  <42.509434, 35.683876, 18.987339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218204, 35.815506, 18.746799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566460, -0.205213, -0.798130,
		-0.386048, -0.921737, -0.036997,
		-0.728073, 0.329074, -0.601349,
		41.999783, 35.914227, 18.566395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495853, 35.187656, 18.492109>,  <42.509434, 35.683876, 18.987339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495853, 35.187656, 18.492109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299911, 35.503544, 18.344391>,  <42.182346, 35.693077, 18.255760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.299911, 35.503544, 18.344391>,  <42.495853, 35.187656, 18.492109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299911, 35.503544, 18.344391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554317, -0.044806, -0.831099,
		-0.672884, -0.611826, -0.415808,
		-0.489857, 0.789723, -0.369295,
		42.152954, 35.740459, 18.233603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328201, 35.015656, 17.827185>,  <42.495853, 35.187656, 18.492109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328201, 35.015656, 17.827185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324093, 35.415615, 17.830929>,  <42.321629, 35.655590, 17.833176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.324093, 35.415615, 17.830929>,  <42.328201, 35.015656, 17.827185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.324093, 35.415615, 17.830929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462461, 0.013047, -0.886544,
		-0.886580, -0.004776, -0.462551,
		-0.010269, 0.999904, 0.009358,
		42.321011, 35.715588, 17.833736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956791, 35.120861, 17.227806>,  <42.328201, 35.015656, 17.827185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956791, 35.120861, 17.227806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143627, 35.465382, 17.307796>,  <42.255730, 35.672092, 17.355791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143627, 35.465382, 17.307796>,  <41.956791, 35.120861, 17.227806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143627, 35.465382, 17.307796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502127, -0.072220, -0.861773,
		-0.727804, 0.502935, -0.466216,
		0.467086, 0.861302, 0.199975,
		42.283752, 35.723774, 17.367788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795082, 35.572426, 16.689529>,  <41.956791, 35.120861, 17.227806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795082, 35.572426, 16.689529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115665, 35.751842, 16.847759>,  <42.308014, 35.859493, 16.942698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115665, 35.751842, 16.847759>,  <41.795082, 35.572426, 16.689529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115665, 35.751842, 16.847759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404679, 0.080273, -0.910929,
		-0.440344, 0.890149, -0.117180,
		0.801456, 0.448542, 0.395573,
		42.356102, 35.886406, 16.966431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857368, 36.294075, 16.362392>,  <41.795082, 35.572426, 16.689529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857368, 36.294075, 16.362392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211559, 36.176868, 16.506653>,  <42.424072, 36.106544, 16.593208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.211559, 36.176868, 16.506653>,  <41.857368, 36.294075, 16.362392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211559, 36.176868, 16.506653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396370, 0.071200, -0.915326,
		0.242530, 0.953452, 0.179190,
		0.885477, -0.293020, 0.360651,
		42.477203, 36.088963, 16.614849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336048, 36.799297, 16.023458>,  <41.857368, 36.294075, 16.362392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336048, 36.799297, 16.023458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556499, 36.489120, 16.146717>,  <42.688770, 36.303017, 16.220673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556499, 36.489120, 16.146717>,  <42.336048, 36.799297, 16.023458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556499, 36.489120, 16.146717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480287, -0.007180, -0.877082,
		0.682335, 0.631383, 0.368475,
		0.551129, -0.775437, 0.308144,
		42.721840, 36.256489, 16.239161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019657, 37.038643, 15.965185>,  <42.336048, 36.799297, 16.023458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019657, 37.038643, 15.965185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006599, 36.639473, 15.942983>,  <42.998764, 36.399971, 15.929661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.006599, 36.639473, 15.942983>,  <43.019657, 37.038643, 15.965185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006599, 36.639473, 15.942983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499949, 0.031785, -0.865471,
		0.865439, -0.056003, 0.497874,
		-0.032644, -0.997925, -0.055506,
		42.996807, 36.340096, 15.926331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607487, 36.959141, 15.585319>,  <43.019657, 37.038643, 15.965185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607487, 36.959141, 15.585319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420990, 36.607197, 15.548509>,  <43.309093, 36.396030, 15.526423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420990, 36.607197, 15.548509>,  <43.607487, 36.959141, 15.585319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420990, 36.607197, 15.548509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545733, -0.204185, -0.812702,
		0.696273, -0.429134, 0.575368,
		-0.466239, -0.879859, -0.092024,
		43.281116, 36.343239, 15.520902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167980, 36.572392, 15.273879>,  <43.607487, 36.959141, 15.585319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167980, 36.572392, 15.273879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822552, 36.375698, 15.229251>,  <43.615295, 36.257683, 15.202475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822552, 36.375698, 15.229251>,  <44.167980, 36.572392, 15.273879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822552, 36.375698, 15.229251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249930, -0.225259, -0.941697,
		0.437930, -0.841106, 0.317425,
		-0.863569, -0.491732, -0.111569,
		43.563480, 36.228180, 15.195780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343140, 35.990284, 14.805198>,  <44.167980, 36.572392, 15.273879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343140, 35.990284, 14.805198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945938, 36.009129, 14.761870>,  <43.707619, 36.020435, 14.735874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945938, 36.009129, 14.761870>,  <44.343140, 35.990284, 14.805198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945938, 36.009129, 14.761870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107528, -0.018997, -0.994021,
		-0.048898, -0.998709, 0.013797,
		-0.992999, 0.047122, -0.108318,
		43.648037, 36.023262, 14.729375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198250, 35.511242, 14.294360>,  <44.343140, 35.990284, 14.805198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198250, 35.511242, 14.294360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881142, 35.754486, 14.310946>,  <43.690876, 35.900433, 14.320898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.881142, 35.754486, 14.310946>,  <44.198250, 35.511242, 14.294360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881142, 35.754486, 14.310946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027513, 0.032258, -0.999101,
		-0.608899, -0.793198, -0.008842,
		-0.792771, 0.608108, 0.041465,
		43.643311, 35.936920, 14.323386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731136, 35.258873, 13.917946>,  <44.198250, 35.511242, 14.294360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731136, 35.258873, 13.917946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688725, 35.656506, 13.908547>,  <43.663277, 35.895084, 13.902908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688725, 35.656506, 13.908547>,  <43.731136, 35.258873, 13.917946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688725, 35.656506, 13.908547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079757, -0.032055, -0.996299,
		-0.991159, -0.103763, 0.082684,
		-0.106029, 0.994085, -0.023496,
		43.656918, 35.954731, 13.901499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352657, 35.396339, 13.317890>,  <43.731136, 35.258873, 13.917946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352657, 35.396339, 13.317890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510242, 35.755714, 13.395457>,  <43.604794, 35.971340, 13.441998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510242, 35.755714, 13.395457>,  <43.352657, 35.396339, 13.317890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510242, 35.755714, 13.395457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206841, 0.292231, -0.933712,
		-0.895551, 0.327735, 0.300961,
		0.393960, 0.898438, 0.193919,
		43.628429, 36.025246, 13.453633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.825588, 35.851429, 13.660669>,  <43.352657, 35.396339, 13.317890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.825588, 35.851429, 13.660669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074284, 35.964119, 13.368348>,  <43.223499, 36.031734, 13.192956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074284, 35.964119, 13.368348>,  <42.825588, 35.851429, 13.660669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074284, 35.964119, 13.368348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765564, 0.415626, -0.491087,
		0.165389, 0.864803, 0.474091,
		0.621738, 0.281727, -0.730802,
		43.260803, 36.048637, 13.149108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897533, 36.513645, 13.730919>,  <42.825588, 35.851429, 13.660669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897533, 36.513645, 13.730919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959923, 36.391533, 13.355159>,  <42.997356, 36.318264, 13.129703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959923, 36.391533, 13.355159>,  <42.897533, 36.513645, 13.730919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959923, 36.391533, 13.355159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822513, 0.486465, -0.294658,
		0.546940, 0.818629, -0.175224,
		0.155975, -0.305284, -0.939400,
		43.006714, 36.299946, 13.073339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877708, 37.125759, 13.477010>,  <42.897533, 36.513645, 13.730919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877708, 37.125759, 13.477010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783909, 36.808723, 13.251864>,  <42.727631, 36.618504, 13.116777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783909, 36.808723, 13.251864>,  <42.877708, 37.125759, 13.477010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783909, 36.808723, 13.251864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852670, 0.445773, -0.272469,
		0.466865, 0.416045, -0.780348,
		-0.234499, -0.792586, -0.562865,
		42.713558, 36.570946, 13.083005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579063, 37.387630, 12.874555>,  <42.877708, 37.125759, 13.477010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579063, 37.387630, 12.874555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430721, 37.016815, 12.852374>,  <42.341717, 36.794327, 12.839066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430721, 37.016815, 12.852374>,  <42.579063, 37.387630, 12.874555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430721, 37.016815, 12.852374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790247, 0.346371, -0.505507,
		0.487829, -0.143648, -0.861039,
		-0.370854, -0.927034, -0.055452,
		42.319466, 36.738705, 12.835739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420673, 37.023594, 12.077487>,  <42.579063, 37.387630, 12.874555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420673, 37.023594, 12.077487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181599, 36.913902, 12.378837>,  <42.038155, 36.848087, 12.559647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.181599, 36.913902, 12.378837>,  <42.420673, 37.023594, 12.077487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.181599, 36.913902, 12.378837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784391, 0.394402, -0.478725,
		-0.165852, -0.877066, -0.450831,
		-0.597682, -0.274230, 0.753375,
		42.002293, 36.831635, 12.604849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914177, 36.647171, 11.735840>,  <42.420673, 37.023594, 12.077487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914177, 36.647171, 11.735840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805641, 36.814640, 12.082501>,  <41.740520, 36.915119, 12.290499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805641, 36.814640, 12.082501>,  <41.914177, 36.647171, 11.735840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805641, 36.814640, 12.082501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624335, 0.608731, -0.489543,
		-0.732516, -0.673916, 0.096216,
		-0.271341, 0.418669, 0.866655,
		41.724239, 36.940239, 12.342498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211227, 36.580318, 11.837075>,  <41.914177, 36.647171, 11.735840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211227, 36.580318, 11.837075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363174, 36.906757, 12.011289>,  <41.454342, 37.102619, 12.115817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.363174, 36.906757, 12.011289>,  <41.211227, 36.580318, 11.837075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.363174, 36.906757, 12.011289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449676, 0.574362, -0.684032,
		-0.808390, 0.063989, 0.585158,
		0.379863, 0.816097, 0.435534,
		41.477135, 37.151585, 12.141949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613487, 37.116730, 12.065493>,  <41.211227, 36.580318, 11.837075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613487, 37.116730, 12.065493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972725, 37.278816, 11.997111>,  <41.188267, 37.376068, 11.956082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972725, 37.278816, 11.997111>,  <40.613487, 37.116730, 12.065493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972725, 37.278816, 11.997111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420939, 0.679379, -0.601044,
		-0.127410, 0.611756, 0.780718,
		0.898096, 0.405214, -0.170953,
		41.242153, 37.400379, 11.945826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118687, 37.438095, 12.470442>,  <40.613487, 37.116730, 12.065493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118687, 37.438095, 12.470442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423435, 37.384872, 12.724008>,  <40.606285, 37.352940, 12.876147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423435, 37.384872, 12.724008>,  <40.118687, 37.438095, 12.470442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423435, 37.384872, 12.724008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623885, 0.112343, 0.773399,
		-0.174119, -0.984721, 0.002581,
		0.761873, -0.133054, 0.633914,
		40.651997, 37.344955, 12.914182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985020, 36.784607, 12.895466>,  <40.118687, 37.438095, 12.470442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985020, 36.784607, 12.895466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252438, 37.013081, 13.085961>,  <40.412888, 37.150166, 13.200259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252438, 37.013081, 13.085961>,  <39.985020, 36.784607, 12.895466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252438, 37.013081, 13.085961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510956, -0.112507, 0.852212,
		0.540348, -0.813077, 0.216633,
		0.668542, 0.571181, 0.476240,
		40.452999, 37.184433, 13.228833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016651, 36.515179, 13.574250>,  <39.985020, 36.784607, 12.895466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016651, 36.515179, 13.574250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210548, 36.861752, 13.622121>,  <40.326885, 37.069695, 13.650844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210548, 36.861752, 13.622121>,  <40.016651, 36.515179, 13.574250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210548, 36.861752, 13.622121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329221, 0.053976, 0.942709,
		0.810333, -0.496371, 0.311412,
		0.484742, 0.866431, 0.119677,
		40.355972, 37.121681, 13.658024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414383, 36.520344, 14.138668>,  <40.016651, 36.515179, 13.574250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414383, 36.520344, 14.138668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371395, 36.915977, 14.098342>,  <40.345604, 37.153358, 14.074146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371395, 36.915977, 14.098342>,  <40.414383, 36.520344, 14.138668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371395, 36.915977, 14.098342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182308, 0.080080, 0.979975,
		0.977351, 0.123693, 0.171712,
		-0.107466, 0.989084, -0.100816,
		40.339157, 37.212704, 14.068097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815876, 36.759464, 14.610604>,  <40.414383, 36.520344, 14.138668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815876, 36.759464, 14.610604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576046, 37.071548, 14.539294>,  <40.432148, 37.258797, 14.496509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576046, 37.071548, 14.539294>,  <40.815876, 36.759464, 14.610604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576046, 37.071548, 14.539294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287642, -0.002208, 0.957735,
		0.746840, 0.625516, 0.225745,
		-0.599577, 0.780208, -0.178275,
		40.396172, 37.305611, 14.485811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069393, 37.272217, 15.016320>,  <40.815876, 36.759464, 14.610604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069393, 37.272217, 15.016320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690025, 37.373337, 14.939803>,  <40.462406, 37.434010, 14.893893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690025, 37.373337, 14.939803>,  <41.069393, 37.272217, 15.016320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690025, 37.373337, 14.939803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199485, -0.006933, 0.979876,
		0.246384, 0.967494, 0.057005,
		-0.948420, 0.252798, -0.191292,
		40.405499, 37.449177, 14.882416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864498, 37.895138, 15.398567>,  <41.069393, 37.272217, 15.016320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864498, 37.895138, 15.398567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513668, 37.713409, 15.336185>,  <40.303169, 37.604374, 15.298755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513668, 37.713409, 15.336185>,  <40.864498, 37.895138, 15.398567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513668, 37.713409, 15.336185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199058, 0.048291, 0.978797,
		-0.437158, 0.889528, -0.132791,
		-0.877080, -0.454322, -0.155957,
		40.250546, 37.577114, 15.289397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430290, 38.275684, 15.825810>,  <40.864498, 37.895138, 15.398567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430290, 38.275684, 15.825810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216839, 37.946991, 15.745814>,  <40.088768, 37.749775, 15.697817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216839, 37.946991, 15.745814>,  <40.430290, 38.275684, 15.825810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216839, 37.946991, 15.745814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370457, 0.014540, 0.928736,
		-0.760264, 0.569688, -0.312175,
		-0.533629, -0.821732, -0.199991,
		40.056751, 37.700470, 15.685817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717171, 38.384212, 15.999116>,  <40.430290, 38.275684, 15.825810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717171, 38.384212, 15.999116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731979, 37.984558, 16.006622>,  <39.740864, 37.744766, 16.011126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731979, 37.984558, 16.006622>,  <39.717171, 38.384212, 15.999116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731979, 37.984558, 16.006622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511604, -0.002819, 0.859217,
		-0.858424, -0.041410, -0.511267,
		0.037022, -0.999138, 0.018766,
		39.743088, 37.684818, 16.012253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127033, 38.216984, 16.217453>,  <39.717171, 38.384212, 15.999116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127033, 38.216984, 16.217453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358215, 37.894444, 16.267677>,  <39.496925, 37.700920, 16.297812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358215, 37.894444, 16.267677>,  <39.127033, 38.216984, 16.217453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358215, 37.894444, 16.267677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413953, -0.157082, 0.896643,
		-0.703283, -0.570200, -0.424578,
		0.577959, -0.806349, 0.125562,
		39.531605, 37.652538, 16.305346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663803, 37.658005, 16.357704>,  <39.127033, 38.216984, 16.217453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663803, 37.658005, 16.357704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005676, 37.548534, 16.534164>,  <39.210800, 37.482853, 16.640041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005676, 37.548534, 16.534164>,  <38.663803, 37.658005, 16.357704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005676, 37.548534, 16.534164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519041, -0.433339, 0.736759,
		-0.010463, -0.858673, -0.512416,
		0.854685, -0.273674, 0.441152,
		39.262081, 37.466431, 16.666510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590584, 36.923439, 16.505445>,  <38.663803, 37.658005, 16.357704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590584, 36.923439, 16.505445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875122, 37.071072, 16.744701>,  <39.045845, 37.159653, 16.888254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875122, 37.071072, 16.744701>,  <38.590584, 36.923439, 16.505445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875122, 37.071072, 16.744701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369364, -0.527726, 0.764902,
		0.597966, -0.765038, -0.239068,
		0.711342, 0.369082, 0.598140,
		39.088524, 37.181797, 16.924143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526001, 36.564281, 17.056431>,  <38.590584, 36.923439, 16.505445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526001, 36.564281, 17.056431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784245, 36.828247, 17.210163>,  <38.939190, 36.986626, 17.302402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784245, 36.828247, 17.210163>,  <38.526001, 36.564281, 17.056431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784245, 36.828247, 17.210163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224088, -0.317408, 0.921432,
		0.730052, -0.681006, -0.057043,
		0.645607, 0.659911, 0.384329,
		38.977928, 37.026222, 17.325462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920071, 36.170265, 17.437822>,  <38.526001, 36.564281, 17.056431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920071, 36.170265, 17.437822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982464, 36.540718, 17.575191>,  <39.019901, 36.762993, 17.657614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982464, 36.540718, 17.575191>,  <38.920071, 36.170265, 17.437822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982464, 36.540718, 17.575191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333348, -0.277923, 0.900909,
		0.929810, -0.255008, 0.265374,
		0.155985, 0.926137, 0.343423,
		39.029259, 36.818558, 17.678219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314648, 36.034042, 18.023741>,  <38.920071, 36.170265, 17.437822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314648, 36.034042, 18.023741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174068, 36.406734, 18.060322>,  <39.089722, 36.630348, 18.082272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174068, 36.406734, 18.060322>,  <39.314648, 36.034042, 18.023741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174068, 36.406734, 18.060322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312993, -0.209000, 0.926474,
		0.882336, 0.296986, 0.365078,
		-0.351451, 0.931729, 0.091453,
		39.068634, 36.686253, 18.087757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753651, 36.431446, 18.601606>,  <39.314648, 36.034042, 18.023741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753651, 36.431446, 18.601606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395382, 36.602299, 18.552078>,  <39.180420, 36.704811, 18.522362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395382, 36.602299, 18.552078>,  <39.753651, 36.431446, 18.601606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395382, 36.602299, 18.552078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227863, -0.201672, 0.952579,
		0.381903, 0.881413, 0.277959,
		-0.895672, 0.427130, -0.123822,
		39.126678, 36.730438, 18.514933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569973, 36.846504, 19.217236>,  <39.753651, 36.431446, 18.601606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569973, 36.846504, 19.217236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223091, 36.785995, 19.027466>,  <39.014961, 36.749691, 18.913603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223091, 36.785995, 19.027466>,  <39.569973, 36.846504, 19.217236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223091, 36.785995, 19.027466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403641, -0.344394, 0.847624,
		-0.291608, 0.926558, 0.237601,
		-0.867202, -0.151268, -0.474425,
		38.962929, 36.740616, 18.885138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082684, 37.076790, 19.656124>,  <39.569973, 36.846504, 19.217236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082684, 37.076790, 19.656124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850822, 36.897766, 19.383743>,  <38.711708, 36.790352, 19.220314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850822, 36.897766, 19.383743>,  <39.082684, 37.076790, 19.656124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850822, 36.897766, 19.383743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624192, -0.293322, 0.724118,
		-0.523822, 0.844782, -0.109337,
		-0.579651, -0.447556, -0.680954,
		38.676926, 36.763500, 19.179457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461433, 37.373722, 19.758772>,  <39.082684, 37.076790, 19.656124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461433, 37.373722, 19.758772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410122, 37.013813, 19.591942>,  <38.379337, 36.797867, 19.491844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410122, 37.013813, 19.591942>,  <38.461433, 37.373722, 19.758772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410122, 37.013813, 19.591942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811864, -0.146260, 0.565230,
		-0.569581, 0.411112, -0.711734,
		-0.128274, -0.899775, -0.417074,
		38.371639, 36.743881, 19.466820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854290, 37.425335, 19.666306>,  <38.461433, 37.373722, 19.758772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854290, 37.425335, 19.666306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937523, 37.034142, 19.659916>,  <37.987461, 36.799427, 19.656082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937523, 37.034142, 19.659916>,  <37.854290, 37.425335, 19.666306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937523, 37.034142, 19.659916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791448, -0.177944, 0.584761,
		-0.574728, -0.109037, -0.811048,
		0.208082, -0.977981, -0.015973,
		37.999947, 36.740746, 19.655125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216415, 37.101467, 19.452742>,  <37.854290, 37.425335, 19.666306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216415, 37.101467, 19.452742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427948, 36.827011, 19.652561>,  <37.554867, 36.662338, 19.772453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427948, 36.827011, 19.652561>,  <37.216415, 37.101467, 19.452742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427948, 36.827011, 19.652561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805324, -0.219844, 0.550566,
		-0.267943, -0.693454, -0.668826,
		0.528829, -0.686142, 0.499549,
		37.586597, 36.621166, 19.802425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805740, 36.520107, 19.536615>,  <37.216415, 37.101467, 19.452742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805740, 36.520107, 19.536615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078648, 36.468987, 19.824554>,  <37.242393, 36.438316, 19.997318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078648, 36.468987, 19.824554>,  <36.805740, 36.520107, 19.536615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078648, 36.468987, 19.824554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727860, -0.211379, 0.652334,
		0.068793, -0.969013, -0.237236,
		0.682267, -0.127799, 0.719847,
		37.283329, 36.430645, 20.040508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902508, 35.768898, 19.791601>,  <36.805740, 36.520107, 19.536615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902508, 35.768898, 19.791601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939980, 36.058296, 20.065178>,  <36.962463, 36.231937, 20.229324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.939980, 36.058296, 20.065178>,  <36.902508, 35.768898, 19.791601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939980, 36.058296, 20.065178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827715, -0.325163, 0.457337,
		0.553274, -0.608950, 0.568390,
		0.093675, 0.723498, 0.683941,
		36.968082, 36.275345, 20.270361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986145, 35.575256, 20.562202>,  <36.902508, 35.768898, 19.791601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986145, 35.575256, 20.562202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825066, 35.941360, 20.566841>,  <36.728416, 36.161022, 20.569624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825066, 35.941360, 20.566841>,  <36.986145, 35.575256, 20.562202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825066, 35.941360, 20.566841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816501, -0.364918, 0.447394,
		0.413713, 0.170695, 0.894262,
		-0.402700, 0.915258, 0.011598,
		36.704254, 36.215939, 20.570320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702618, 35.703949, 21.244200>,  <36.986145, 35.575256, 20.562202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702618, 35.703949, 21.244200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521088, 35.930489, 20.969013>,  <36.412170, 36.066410, 20.803902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521088, 35.930489, 20.969013>,  <36.702618, 35.703949, 21.244200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521088, 35.930489, 20.969013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891053, -0.295703, 0.344362,
		-0.008406, 0.769294, 0.638840,
		-0.453822, 0.566346, -0.687967,
		36.384941, 36.100391, 20.762623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340508, 36.280853, 21.531202>,  <36.702618, 35.703949, 21.244200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340508, 36.280853, 21.531202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175228, 36.140446, 21.195095>,  <36.076061, 36.056202, 20.993431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175228, 36.140446, 21.195095>,  <36.340508, 36.280853, 21.531202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175228, 36.140446, 21.195095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839105, -0.211724, 0.501073,
		-0.353793, 0.912116, -0.207060,
		-0.413198, -0.351022, -0.840269,
		36.051270, 36.035141, 20.943014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560448, 36.515522, 21.335762>,  <36.340508, 36.280853, 21.531202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560448, 36.515522, 21.335762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638763, 36.148911, 21.196255>,  <35.685753, 35.928944, 21.112551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638763, 36.148911, 21.196255>,  <35.560448, 36.515522, 21.335762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638763, 36.148911, 21.196255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788407, -0.358618, 0.499808,
		-0.583163, 0.177114, -0.792812,
		0.195794, -0.916528, -0.348771,
		35.697502, 35.873951, 21.091623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911221, 36.177128, 21.182268>,  <35.560448, 36.515522, 21.335762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911221, 36.177128, 21.182268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195728, 35.906891, 21.259899>,  <35.366432, 35.744747, 21.306479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195728, 35.906891, 21.259899>,  <34.911221, 36.177128, 21.182268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195728, 35.906891, 21.259899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622734, -0.477571, 0.619781,
		-0.326035, -0.561690, -0.760398,
		0.711269, -0.675596, 0.194079,
		35.409107, 35.704212, 21.318123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798923, 35.377956, 21.003954>,  <34.911221, 36.177128, 21.182268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798923, 35.377956, 21.003954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043869, 35.419754, 21.317410>,  <35.190838, 35.444832, 21.505484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043869, 35.419754, 21.317410>,  <34.798923, 35.377956, 21.003954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043869, 35.419754, 21.317410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368615, -0.839146, 0.399945,
		0.699382, -0.533773, -0.475343,
		0.612362, 0.104496, 0.783641,
		35.227577, 35.451103, 21.552502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166687, 34.700958, 21.160275>,  <34.798923, 35.377956, 21.003954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166687, 34.700958, 21.160275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169205, 34.910904, 21.500740>,  <35.170715, 35.036869, 21.705019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169205, 34.910904, 21.500740>,  <35.166687, 34.700958, 21.160275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169205, 34.910904, 21.500740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506093, -0.732450, 0.455399,
		0.862456, -0.433635, 0.261018,
		0.006294, 0.524860, 0.851165,
		35.171093, 35.068363, 21.756090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549202, 34.242638, 21.640944>,  <35.166687, 34.700958, 21.160275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549202, 34.242638, 21.640944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383266, 34.506741, 21.891373>,  <35.283703, 34.665203, 22.041630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383266, 34.506741, 21.891373>,  <35.549202, 34.242638, 21.640944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383266, 34.506741, 21.891373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167283, -0.731686, 0.660796,
		0.894384, 0.169395, 0.413984,
		-0.414842, 0.660258, 0.626071,
		35.258816, 34.704819, 22.079195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695969, 33.958141, 22.349789>,  <35.549202, 34.242638, 21.640944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695969, 33.958141, 22.349789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433346, 34.251064, 22.422070>,  <35.275772, 34.426819, 22.465439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433346, 34.251064, 22.422070>,  <35.695969, 33.958141, 22.349789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433346, 34.251064, 22.422070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284644, -0.462411, 0.839734,
		0.698506, 0.499898, 0.512047,
		-0.656558, 0.732310, 0.180704,
		35.236378, 34.470757, 22.476280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683613, 34.258083, 22.984879>,  <35.695969, 33.958141, 22.349789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683613, 34.258083, 22.984879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303909, 34.327953, 22.880268>,  <35.076088, 34.369873, 22.817503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303909, 34.327953, 22.880268>,  <35.683613, 34.258083, 22.984879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303909, 34.327953, 22.880268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313473, -0.458612, 0.831511,
		0.025304, 0.871301, 0.490097,
		-0.949260, 0.174673, -0.261525,
		35.019131, 34.380356, 22.801811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376820, 34.398296, 23.643406>,  <35.683613, 34.258083, 22.984879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376820, 34.398296, 23.643406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092793, 34.306862, 23.377007>,  <34.922379, 34.252003, 23.217167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092793, 34.306862, 23.377007>,  <35.376820, 34.398296, 23.643406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092793, 34.306862, 23.377007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358216, -0.697029, 0.621153,
		-0.606207, 0.679631, 0.413054,
		-0.710066, -0.228585, -0.665999,
		34.879772, 34.238285, 23.177206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744881, 34.262615, 24.078516>,  <35.376820, 34.398296, 23.643406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744881, 34.262615, 24.078516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645916, 34.108570, 23.722881>,  <34.586536, 34.016144, 23.509501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645916, 34.108570, 23.722881>,  <34.744881, 34.262615, 24.078516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645916, 34.108570, 23.722881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446804, -0.768877, 0.457379,
		-0.859741, 0.510408, 0.018159,
		-0.247411, -0.385114, -0.889087,
		34.571693, 33.993034, 23.456156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061005, 34.146832, 24.091257>,  <34.744881, 34.262615, 24.078516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061005, 34.146832, 24.091257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189075, 33.896374, 23.806881>,  <34.265919, 33.746101, 23.636255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189075, 33.896374, 23.806881>,  <34.061005, 34.146832, 24.091257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189075, 33.896374, 23.806881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604441, -0.712867, 0.355629,
		-0.729481, 0.315861, -0.606704,
		0.320170, -0.626141, -0.710941,
		34.285126, 33.708530, 23.593599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374855, 33.779194, 23.843201>,  <34.061005, 34.146832, 24.091257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374855, 33.779194, 23.843201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696125, 33.555511, 23.761024>,  <33.888885, 33.421303, 23.711718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696125, 33.555511, 23.761024>,  <33.374855, 33.779194, 23.843201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696125, 33.555511, 23.761024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506521, -0.822522, 0.258639,
		-0.313612, -0.103671, -0.943875,
		0.803172, -0.559204, -0.205441,
		33.937077, 33.387749, 23.699392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179165, 33.155048, 23.641785>,  <33.374855, 33.779194, 23.843201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179165, 33.155048, 23.641785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550732, 33.036648, 23.730778>,  <33.773670, 32.965607, 23.784174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550732, 33.036648, 23.730778>,  <33.179165, 33.155048, 23.641785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550732, 33.036648, 23.730778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369956, -0.716275, 0.591678,
		-0.015777, -0.631929, -0.774866,
		0.928915, -0.296002, 0.222485,
		33.829407, 32.947845, 23.797523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110176, 32.385399, 23.567255>,  <33.179165, 33.155048, 23.641785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110176, 32.385399, 23.567255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440380, 32.418655, 23.790546>,  <33.638504, 32.438610, 23.924522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440380, 32.418655, 23.790546>,  <33.110176, 32.385399, 23.567255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440380, 32.418655, 23.790546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312965, -0.755659, 0.575354,
		0.469666, -0.649668, -0.597784,
		0.825510, 0.083138, 0.558231,
		33.688034, 32.443596, 23.958015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565887, 31.770102, 23.506533>,  <33.110176, 32.385399, 23.567255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565887, 31.770102, 23.506533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697277, 31.949230, 23.839172>,  <33.776112, 32.056705, 24.038757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697277, 31.949230, 23.839172>,  <33.565887, 31.770102, 23.506533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697277, 31.949230, 23.839172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199351, -0.827751, 0.524488,
		0.923235, -0.338062, -0.182623,
		0.328476, 0.447820, 0.831602,
		33.795818, 32.083576, 24.088654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091717, 31.326002, 23.758640>,  <33.565887, 31.770102, 23.506533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091717, 31.326002, 23.758640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927876, 31.549923, 24.046764>,  <33.829571, 31.684275, 24.219639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927876, 31.549923, 24.046764>,  <34.091717, 31.326002, 23.758640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927876, 31.549923, 24.046764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139057, -0.818673, 0.557169,
		0.901604, 0.128053, 0.413175,
		-0.409602, 0.559800, 0.720312,
		33.804996, 31.717863, 24.262857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437317, 31.123491, 24.289310>,  <34.091717, 31.326002, 23.758640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437317, 31.123491, 24.289310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110596, 31.282734, 24.456329>,  <33.914562, 31.378281, 24.556540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110596, 31.282734, 24.456329>,  <34.437317, 31.123491, 24.289310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110596, 31.282734, 24.456329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004153, -0.719676, 0.694297,
		0.576904, 0.568837, 0.586179,
		-0.816801, 0.398109, 0.417546,
		33.865555, 31.402166, 24.581593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554188, 31.258333, 24.943813>,  <34.437317, 31.123491, 24.289310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554188, 31.258333, 24.943813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155270, 31.228981, 24.945122>,  <33.915916, 31.211370, 24.945906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155270, 31.228981, 24.945122>,  <34.554188, 31.258333, 24.943813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155270, 31.228981, 24.945122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049680, -0.641075, 0.765869,
		-0.054102, 0.763962, 0.642989,
		-0.997299, -0.073379, 0.003270,
		33.856079, 31.206968, 24.946102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495125, 31.258879, 25.601130>,  <34.554188, 31.258333, 24.943813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495125, 31.258879, 25.601130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120358, 31.160088, 25.502182>,  <33.895496, 31.100813, 25.442814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120358, 31.160088, 25.502182>,  <34.495125, 31.258879, 25.601130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120358, 31.160088, 25.502182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060038, -0.583449, 0.809928,
		-0.344359, 0.773685, 0.531815,
		-0.936916, -0.246977, -0.247367,
		33.839283, 31.085995, 25.427973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990364, 31.425016, 26.214851>,  <34.495125, 31.258879, 25.601130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990364, 31.425016, 26.214851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838345, 31.136070, 25.983768>,  <33.747131, 30.962702, 25.845118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838345, 31.136070, 25.983768>,  <33.990364, 31.425016, 26.214851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838345, 31.136070, 25.983768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124385, -0.578987, 0.805793,
		-0.916564, 0.378101, 0.130194,
		-0.380052, -0.722366, -0.577709,
		33.724331, 30.919361, 25.810455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472240, 31.217121, 26.568798>,  <33.990364, 31.425016, 26.214851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472240, 31.217121, 26.568798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568981, 30.916649, 26.323120>,  <33.627026, 30.736366, 26.175713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568981, 30.916649, 26.323120>,  <33.472240, 31.217121, 26.568798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568981, 30.916649, 26.323120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069417, -0.644760, 0.761226,
		-0.967827, -0.141468, -0.208081,
		0.241851, -0.751180, -0.614196,
		33.641537, 30.691296, 26.138861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934067, 30.654127, 26.674072>,  <33.472240, 31.217121, 26.568798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934067, 30.654127, 26.674072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266521, 30.503174, 26.510708>,  <33.465992, 30.412601, 26.412689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266521, 30.503174, 26.510708>,  <32.934067, 30.654127, 26.674072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266521, 30.503174, 26.510708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048913, -0.681995, 0.729719,
		-0.553918, -0.626470, -0.548370,
		0.831133, -0.377382, -0.408412,
		33.515862, 30.389959, 26.388184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891201, 29.849695, 26.766356>,  <32.934067, 30.654127, 26.674072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891201, 29.849695, 26.766356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269047, 29.923569, 26.657845>,  <33.495754, 29.967894, 26.592737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269047, 29.923569, 26.657845>,  <32.891201, 29.849695, 26.766356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269047, 29.923569, 26.657845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325249, -0.637029, 0.698861,
		-0.043742, -0.748388, -0.661817,
		0.944616, 0.184686, -0.271278,
		33.552433, 29.978975, 26.576462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136475, 29.221214, 26.823074>,  <32.891201, 29.849695, 26.766356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136475, 29.221214, 26.823074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448883, 29.470257, 26.842548>,  <33.636330, 29.619682, 26.854233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448883, 29.470257, 26.842548>,  <33.136475, 29.221214, 26.823074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448883, 29.470257, 26.842548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352263, -0.503578, 0.788872,
		0.515672, -0.598976, -0.612626,
		0.781021, 0.622605, 0.048684,
		33.683189, 29.657038, 26.857153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638466, 28.794298, 26.843307>,  <33.136475, 29.221214, 26.823074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638466, 28.794298, 26.843307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796642, 29.125290, 27.002758>,  <33.891548, 29.323885, 27.098429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796642, 29.125290, 27.002758>,  <33.638466, 28.794298, 26.843307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796642, 29.125290, 27.002758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377040, -0.541994, 0.751055,
		0.837536, -0.146700, -0.526319,
		0.395442, 0.827479, 0.398628,
		33.915276, 29.373533, 27.122347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355129, 28.651510, 26.830658>,  <33.638466, 28.794298, 26.843307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355129, 28.651510, 26.830658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267384, 28.925228, 27.108829>,  <34.214737, 29.089458, 27.275732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267384, 28.925228, 27.108829>,  <34.355129, 28.651510, 26.830658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267384, 28.925228, 27.108829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335585, -0.616375, 0.712365,
		0.916113, 0.389640, -0.094432,
		-0.219361, 0.684297, 0.695427,
		34.201576, 29.130518, 27.317457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813137, 28.530657, 27.360151>,  <34.355129, 28.651510, 26.830658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813137, 28.530657, 27.360151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551250, 28.761528, 27.555382>,  <34.394119, 28.900051, 27.672520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551250, 28.761528, 27.555382>,  <34.813137, 28.530657, 27.360151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551250, 28.761528, 27.555382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185259, -0.503485, 0.843909,
		0.732823, 0.642938, 0.222711,
		-0.654713, 0.577177, 0.488075,
		34.354836, 28.934681, 27.701805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134705, 28.759762, 28.000473>,  <34.813137, 28.530657, 27.360151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134705, 28.759762, 28.000473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743824, 28.799278, 28.075653>,  <34.509296, 28.822989, 28.120760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.743824, 28.799278, 28.075653>,  <35.134705, 28.759762, 28.000473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743824, 28.799278, 28.075653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125661, -0.444439, 0.886952,
		0.171153, 0.890345, 0.421891,
		-0.977198, 0.098789, 0.187949,
		34.450665, 28.828915, 28.132038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081554, 28.948420, 28.726131>,  <35.134705, 28.759762, 28.000473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081554, 28.948420, 28.726131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729397, 28.793919, 28.616066>,  <34.518101, 28.701218, 28.550028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729397, 28.793919, 28.616066>,  <35.081554, 28.948420, 28.726131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729397, 28.793919, 28.616066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128001, -0.365144, 0.922109,
		-0.456641, 0.847041, 0.272030,
		-0.880395, -0.386253, -0.275161,
		34.465279, 28.678043, 28.533518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723061, 28.929413, 29.340662>,  <35.081554, 28.948420, 28.726131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723061, 28.929413, 29.340662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463921, 28.717075, 29.122124>,  <34.308437, 28.589672, 28.991001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463921, 28.717075, 29.122124>,  <34.723061, 28.929413, 29.340662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463921, 28.717075, 29.122124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508305, -0.232937, 0.829076,
		-0.567373, 0.814829, -0.118922,
		-0.647853, -0.530843, -0.546344,
		34.269566, 28.557823, 28.958221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919357, 29.036896, 29.559538>,  <34.723061, 28.929413, 29.340662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919357, 29.036896, 29.559538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970242, 28.680042, 29.386143>,  <34.000771, 28.465929, 29.282104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970242, 28.680042, 29.386143>,  <33.919357, 29.036896, 29.559538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970242, 28.680042, 29.386143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451699, -0.441198, 0.775443,
		-0.883054, 0.097161, -0.459102,
		0.127212, -0.892135, -0.433489,
		34.008404, 28.412401, 29.256096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228401, 28.614887, 29.555872>,  <33.919357, 29.036896, 29.559538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228401, 28.614887, 29.555872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531624, 28.354031, 29.552784>,  <33.713558, 28.197517, 29.550932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531624, 28.354031, 29.552784>,  <33.228401, 28.614887, 29.555872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531624, 28.354031, 29.552784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439179, -0.519189, 0.733188,
		-0.482147, -0.552412, -0.679982,
		0.758061, -0.652138, -0.007718,
		33.759041, 28.158388, 29.550468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884430, 27.980955, 29.667925>,  <33.228401, 28.614887, 29.555872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884430, 27.980955, 29.667925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259968, 27.851078, 29.713791>,  <33.485291, 27.773151, 29.741310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259968, 27.851078, 29.713791>,  <32.884430, 27.980955, 29.667925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259968, 27.851078, 29.713791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274927, -0.506288, 0.817366,
		-0.207339, -0.798903, -0.564592,
		0.938842, -0.324694, 0.114667,
		33.541622, 27.753670, 29.748190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848454, 27.283325, 29.915958>,  <32.884430, 27.980955, 29.667925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848454, 27.283325, 29.915958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223190, 27.369377, 30.026260>,  <33.448032, 27.421007, 30.092442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223190, 27.369377, 30.026260>,  <32.848454, 27.283325, 29.915958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223190, 27.369377, 30.026260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102996, -0.583787, 0.805348,
		0.334236, -0.782888, -0.524760,
		0.936845, 0.215128, 0.275757,
		33.504242, 27.433916, 30.108988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182709, 26.629959, 30.128325>,  <32.848454, 27.283325, 29.915958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182709, 26.629959, 30.128325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361221, 26.941719, 30.304218>,  <33.468330, 27.128775, 30.409754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361221, 26.941719, 30.304218>,  <33.182709, 26.629959, 30.128325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361221, 26.941719, 30.304218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139686, -0.546030, 0.826038,
		0.883922, -0.307224, -0.352556,
		0.446286, 0.779400, 0.439733,
		33.495106, 27.175539, 30.436138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736492, 26.446491, 30.567696>,  <33.182709, 26.629959, 30.128325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736492, 26.446491, 30.567696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660149, 26.811153, 30.713272>,  <33.614342, 27.029951, 30.800619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660149, 26.811153, 30.713272>,  <33.736492, 26.446491, 30.567696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660149, 26.811153, 30.713272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088327, -0.353304, 0.931329,
		0.977635, 0.209902, -0.013091,
		-0.190863, 0.911656, 0.363943,
		33.602890, 27.084650, 30.822454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259785, 26.479998, 31.063126>,  <33.736492, 26.446491, 30.567696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259785, 26.479998, 31.063126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978924, 26.750835, 31.151237>,  <33.810406, 26.913338, 31.204103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978924, 26.750835, 31.151237>,  <34.259785, 26.479998, 31.063126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978924, 26.750835, 31.151237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070370, -0.241864, 0.967755,
		0.708539, 0.695014, 0.122179,
		-0.702154, 0.677095, 0.220278,
		33.768276, 26.953964, 31.217321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403839, 26.663677, 31.717682>,  <34.259785, 26.479998, 31.063126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403839, 26.663677, 31.717682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035034, 26.814095, 31.680855>,  <33.813751, 26.904345, 31.658758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.035034, 26.814095, 31.680855>,  <34.403839, 26.663677, 31.717682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035034, 26.814095, 31.680855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140922, -0.104489, 0.984491,
		0.360591, 0.920692, 0.149333,
		-0.922017, 0.376043, -0.092068,
		33.758430, 26.926907, 31.653234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274849, 27.229668, 32.203640>,  <34.403839, 26.663677, 31.717682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274849, 27.229668, 32.203640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920650, 27.061348, 32.124813>,  <33.708134, 26.960356, 32.077518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920650, 27.061348, 32.124813>,  <34.274849, 27.229668, 32.203640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920650, 27.061348, 32.124813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177098, -0.086456, 0.980389,
		-0.429582, 0.903026, 0.002034,
		-0.885492, -0.420797, -0.197064,
		33.655003, 26.935108, 32.065693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780743, 27.524067, 32.701843>,  <34.274849, 27.229668, 32.203640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780743, 27.524067, 32.701843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603897, 27.190102, 32.570724>,  <33.497787, 26.989721, 32.492054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603897, 27.190102, 32.570724>,  <33.780743, 27.524067, 32.701843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603897, 27.190102, 32.570724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301802, -0.205673, 0.930921,
		-0.844658, 0.510506, -0.161047,
		-0.442118, -0.834915, -0.327795,
		33.471260, 26.939627, 32.472385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223545, 27.444109, 33.224091>,  <33.780743, 27.524067, 32.701843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223545, 27.444109, 33.224091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252628, 27.090252, 33.039864>,  <33.270077, 26.877937, 32.929329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252628, 27.090252, 33.039864>,  <33.223545, 27.444109, 33.224091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252628, 27.090252, 33.039864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494794, -0.432948, 0.753483,
		-0.865964, 0.173106, -0.469192,
		0.072703, -0.884642, -0.460569,
		33.274441, 26.824860, 32.901691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550819, 27.161501, 33.102077>,  <33.223545, 27.444109, 33.224091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550819, 27.161501, 33.102077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775284, 26.830437, 33.105556>,  <32.909962, 26.631798, 33.107643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.775284, 26.830437, 33.105556>,  <32.550819, 27.161501, 33.102077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775284, 26.830437, 33.105556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540886, -0.358728, 0.760761,
		-0.626534, -0.431611, -0.648974,
		0.561158, -0.827663, 0.008697,
		32.943630, 26.582138, 33.108166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171474, 26.738909, 33.316383>,  <32.550819, 27.161501, 33.102077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171474, 26.738909, 33.316383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504871, 26.524399, 33.369587>,  <32.704910, 26.395693, 33.401508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504871, 26.524399, 33.369587>,  <32.171474, 26.738909, 33.316383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504871, 26.524399, 33.369587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369433, -0.361900, 0.855890,
		-0.410857, -0.762519, -0.499761,
		0.833496, -0.536276, 0.133011,
		32.754921, 26.363516, 33.409489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973658, 26.024967, 33.548420>,  <32.171474, 26.738909, 33.316383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973658, 26.024967, 33.548420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348873, 26.083820, 33.673920>,  <32.574001, 26.119133, 33.749218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348873, 26.083820, 33.673920>,  <31.973658, 26.024967, 33.548420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348873, 26.083820, 33.673920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251133, -0.335247, 0.908043,
		0.238787, -0.930571, -0.277524,
		0.938037, 0.147133, 0.313750,
		32.630283, 26.127960, 33.768044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177662, 25.356962, 33.824821>,  <31.973658, 26.024967, 33.548420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177662, 25.356962, 33.824821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447155, 25.601685, 33.990608>,  <32.608849, 25.748518, 34.090080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447155, 25.601685, 33.990608>,  <32.177662, 25.356962, 33.824821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447155, 25.601685, 33.990608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265757, -0.322750, 0.908408,
		0.689538, -0.722170, -0.054855,
		0.673729, 0.611804, 0.414470,
		32.649273, 25.785225, 34.114948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644279, 24.965693, 34.207104>,  <32.177662, 25.356962, 33.824821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644279, 24.965693, 34.207104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573593, 25.327843, 34.361542>,  <32.531181, 25.545134, 34.454205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573593, 25.327843, 34.361542>,  <32.644279, 24.965693, 34.207104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573593, 25.327843, 34.361542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249624, -0.420666, 0.872197,
		0.952082, 0.057752, 0.300341,
		-0.176714, 0.905376, 0.386092,
		32.520580, 25.599455, 34.477371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083370, 25.106495, 34.896370>,  <32.644279, 24.965693, 34.207104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083370, 25.106495, 34.896370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727528, 25.289185, 34.897236>,  <32.514023, 25.398800, 34.897755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727528, 25.289185, 34.897236>,  <33.083370, 25.106495, 34.896370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727528, 25.289185, 34.897236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296666, -0.581440, 0.757573,
		0.347265, 0.673297, 0.652747,
		-0.889605, 0.456726, 0.002170,
		32.460648, 25.426203, 34.897888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929699, 25.335669, 35.563690>,  <33.083370, 25.106495, 34.896370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929699, 25.335669, 35.563690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592155, 25.247505, 35.368011>,  <32.389629, 25.194607, 35.250603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592155, 25.247505, 35.368011>,  <32.929699, 25.335669, 35.563690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592155, 25.247505, 35.368011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232797, -0.671050, 0.703915,
		-0.483428, 0.707891, 0.514963,
		-0.843862, -0.220411, -0.489199,
		32.338997, 25.181381, 35.221252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346230, 25.611441, 35.872890>,  <32.929699, 25.335669, 35.563690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346230, 25.611441, 35.872890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301250, 25.275318, 35.660759>,  <32.274261, 25.073645, 35.533482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301250, 25.275318, 35.660759>,  <32.346230, 25.611441, 35.872890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301250, 25.275318, 35.660759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271759, -0.487353, 0.829840,
		-0.955773, 0.237437, -0.173557,
		-0.112451, -0.840304, -0.530324,
		32.267517, 25.023228, 35.501663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779541, 25.678371, 36.443424>,  <32.346230, 25.611441, 35.872890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779541, 25.678371, 36.443424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396719, 25.686409, 36.559109>,  <31.167027, 25.691231, 36.628517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.396719, 25.686409, 36.559109>,  <31.779541, 25.678371, 36.443424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396719, 25.686409, 36.559109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286196, -0.093589, 0.953589,
		0.046227, 0.995408, 0.083819,
		-0.957055, 0.020093, 0.289209,
		31.109602, 25.692436, 36.645870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848597, 25.983843, 37.059971>,  <31.779541, 25.678371, 36.443424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848597, 25.983843, 37.059971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496370, 25.795204, 37.078724>,  <31.285034, 25.682020, 37.089977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496370, 25.795204, 37.078724>,  <31.848597, 25.983843, 37.059971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496370, 25.795204, 37.078724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170672, -0.223273, 0.959698,
		-0.442122, 0.853080, 0.277095,
		-0.880567, -0.471596, 0.046883,
		31.232201, 25.653725, 37.092789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448566, 26.013063, 37.511375>,  <31.848597, 25.983843, 37.059971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448566, 26.013063, 37.511375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515594, 26.405880, 37.546051>,  <32.555813, 26.641569, 37.566856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515594, 26.405880, 37.546051>,  <32.448566, 26.013063, 37.511375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515594, 26.405880, 37.546051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629077, -0.038806, -0.776374,
		-0.759067, 0.184632, -0.624282,
		0.167569, 0.982041, 0.086692,
		32.565865, 26.700493, 37.572060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409325, 26.424648, 36.855431>,  <32.448566, 26.013063, 37.511375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409325, 26.424648, 36.855431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664639, 26.624306, 37.089848>,  <32.817825, 26.744101, 37.230499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664639, 26.624306, 37.089848>,  <32.409325, 26.424648, 36.855431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664639, 26.624306, 37.089848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643887, 0.071065, -0.761813,
		-0.421902, 0.863600, -0.276033,
		0.638286, 0.499144, 0.586043,
		32.856125, 26.774050, 37.265659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688610, 26.993925, 36.501762>,  <32.409325, 26.424648, 36.855431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688610, 26.993925, 36.501762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973461, 26.948265, 36.778847>,  <33.144371, 26.920870, 36.945099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973461, 26.948265, 36.778847>,  <32.688610, 26.993925, 36.501762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973461, 26.948265, 36.778847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678955, 0.362995, -0.638165,
		-0.178605, 0.924773, 0.335999,
		0.712124, -0.114149, 0.692712,
		33.187099, 26.914021, 36.986660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944275, 27.671652, 36.681152>,  <32.688610, 26.993925, 36.501762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944275, 27.671652, 36.681152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195606, 27.360485, 36.678566>,  <33.346405, 27.173784, 36.677013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195606, 27.360485, 36.678566>,  <32.944275, 27.671652, 36.681152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195606, 27.360485, 36.678566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531928, 0.435681, -0.726109,
		0.567672, 0.452797, 0.687549,
		0.628332, -0.777918, -0.006469,
		33.384106, 27.127110, 36.676624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646564, 27.913956, 36.878845>,  <32.944275, 27.671652, 36.681152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646564, 27.913956, 36.878845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610577, 27.628567, 36.600891>,  <33.588982, 27.457333, 36.434120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610577, 27.628567, 36.600891>,  <33.646564, 27.913956, 36.878845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610577, 27.628567, 36.600891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396264, 0.614462, -0.682211,
		0.913718, -0.336738, 0.227438,
		-0.089974, -0.713473, -0.694882,
		33.583584, 27.414524, 36.392426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270638, 27.876625, 36.619102>,  <33.646564, 27.913956, 36.878845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270638, 27.876625, 36.619102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045567, 27.706192, 36.335739>,  <33.910522, 27.603931, 36.165722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045567, 27.706192, 36.335739>,  <34.270638, 27.876625, 36.619102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045567, 27.706192, 36.335739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458085, 0.552636, -0.696241,
		0.688150, -0.716273, -0.115774,
		-0.562680, -0.426083, -0.708410,
		33.876762, 27.578367, 36.123215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703068, 27.844059, 36.127892>,  <34.270638, 27.876625, 36.619102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703068, 27.844059, 36.127892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349846, 27.822937, 35.941376>,  <34.137913, 27.810265, 35.829464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349846, 27.822937, 35.941376>,  <34.703068, 27.844059, 36.127892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349846, 27.822937, 35.941376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328014, 0.641142, -0.693789,
		0.335593, -0.765603, -0.548843,
		-0.883053, -0.052803, -0.466292,
		34.084930, 27.807096, 35.801487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875229, 27.586054, 35.488224>,  <34.703068, 27.844059, 36.127892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875229, 27.586054, 35.488224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529152, 27.786129, 35.474083>,  <34.321507, 27.906174, 35.465599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529152, 27.786129, 35.474083>,  <34.875229, 27.586054, 35.488224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529152, 27.786129, 35.474083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391820, 0.630376, -0.670152,
		-0.312914, -0.593665, -0.741381,
		-0.865195, 0.500188, -0.035357,
		34.269592, 27.936186, 35.463474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817463, 27.755621, 34.743877>,  <34.875229, 27.586054, 35.488224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817463, 27.755621, 34.743877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492966, 27.947899, 34.877037>,  <34.298267, 28.063265, 34.956932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492966, 27.947899, 34.877037>,  <34.817463, 27.755621, 34.743877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492966, 27.947899, 34.877037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150496, 0.721811, -0.675529,
		-0.565010, -0.497918, -0.657906,
		-0.811242, 0.480693, 0.332896,
		34.249592, 28.092108, 34.976906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385124, 28.063339, 34.124840>,  <34.817463, 27.755621, 34.743877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385124, 28.063339, 34.124840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282280, 28.278957, 34.445671>,  <34.220573, 28.408327, 34.638168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282280, 28.278957, 34.445671>,  <34.385124, 28.063339, 34.124840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282280, 28.278957, 34.445671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101597, 0.810302, -0.577138,
		-0.961027, -0.229877, -0.153572,
		-0.257111, 0.539043, 0.802077,
		34.205147, 28.440670, 34.686295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766083, 28.427902, 33.916824>,  <34.385124, 28.063339, 34.124840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766083, 28.427902, 33.916824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950321, 28.623367, 34.213219>,  <34.060863, 28.740646, 34.391056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950321, 28.623367, 34.213219>,  <33.766083, 28.427902, 33.916824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950321, 28.623367, 34.213219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222914, 0.871738, -0.436329,
		-0.859164, 0.035795, 0.510448,
		0.460595, 0.488663, 0.740986,
		34.088501, 28.769966, 34.435516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441872, 29.072245, 33.931332>,  <33.766083, 28.427902, 33.916824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441872, 29.072245, 33.931332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787888, 29.111675, 34.128101>,  <33.995499, 29.135334, 34.246162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787888, 29.111675, 34.128101>,  <33.441872, 29.072245, 33.931332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787888, 29.111675, 34.128101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150926, 0.883958, -0.442538,
		-0.478462, 0.457057, 0.749782,
		0.865041, 0.098576, 0.491922,
		34.047401, 29.141249, 34.275677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459229, 29.819422, 34.261105>,  <33.441872, 29.072245, 33.931332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459229, 29.819422, 34.261105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835392, 29.693317, 34.210121>,  <34.061089, 29.617655, 34.179531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835392, 29.693317, 34.210121>,  <33.459229, 29.819422, 34.261105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835392, 29.693317, 34.210121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258290, 0.906023, -0.335273,
		0.221183, 0.282371, 0.933459,
		0.940407, -0.315259, -0.127463,
		34.117516, 29.598740, 34.171883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774006, 30.333422, 34.532028>,  <33.459229, 29.819422, 34.261105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774006, 30.333422, 34.532028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029160, 30.137146, 34.294601>,  <34.182251, 30.019381, 34.152145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029160, 30.137146, 34.294601>,  <33.774006, 30.333422, 34.532028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029160, 30.137146, 34.294601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201249, 0.850165, -0.486538,
		0.743371, 0.190900, 0.641059,
		0.637886, -0.490691, -0.593569,
		34.220524, 29.989939, 34.116531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390594, 30.729809, 34.380207>,  <33.774006, 30.333422, 34.532028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390594, 30.729809, 34.380207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391296, 30.469124, 34.076820>,  <34.391716, 30.312712, 33.894791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391296, 30.469124, 34.076820>,  <34.390594, 30.729809, 34.380207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391296, 30.469124, 34.076820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188544, 0.745076, -0.639776,
		0.982063, -0.141883, 0.124181,
		0.001751, -0.651714, -0.758463,
		34.391823, 30.273609, 33.849281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935940, 30.960764, 33.925674>,  <34.390594, 30.729809, 34.380207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935940, 30.960764, 33.925674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712494, 30.715595, 33.702145>,  <34.578426, 30.568495, 33.568027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712494, 30.715595, 33.702145>,  <34.935940, 30.960764, 33.925674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712494, 30.715595, 33.702145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115777, 0.609526, -0.784266,
		0.821311, -0.502798, -0.269525,
		-0.558609, -0.612922, -0.558823,
		34.544910, 30.531719, 33.534496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300945, 30.838139, 33.312748>,  <34.935940, 30.960764, 33.925674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300945, 30.838139, 33.312748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922813, 30.735664, 33.232033>,  <34.695934, 30.674179, 33.183605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922813, 30.735664, 33.232033>,  <35.300945, 30.838139, 33.312748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922813, 30.735664, 33.232033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037811, 0.528493, -0.848095,
		0.323914, -0.809360, -0.489914,
		-0.945331, -0.256186, -0.201789,
		34.639214, 30.658808, 33.171497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404049, 30.606527, 32.685757>,  <35.300945, 30.838139, 33.312748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404049, 30.606527, 32.685757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012501, 30.688278, 32.688423>,  <34.777573, 30.737329, 32.690022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012501, 30.688278, 32.688423>,  <35.404049, 30.606527, 32.685757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012501, 30.688278, 32.688423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126026, 0.628632, -0.767424,
		-0.161037, -0.750368, -0.641105,
		-0.978869, 0.204379, 0.006667,
		34.718842, 30.749592, 32.690422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090485, 30.534481, 32.025074>,  <35.404049, 30.606527, 32.685757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090485, 30.534481, 32.025074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832821, 30.792145, 32.190056>,  <34.678223, 30.946743, 32.289043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832821, 30.792145, 32.190056>,  <35.090485, 30.534481, 32.025074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832821, 30.792145, 32.190056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079784, 0.592875, -0.801333,
		-0.760719, -0.483278, -0.433299,
		-0.644159, 0.644159, 0.412453,
		34.639572, 30.985394, 32.313793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579166, 30.739500, 31.506842>,  <35.090485, 30.534481, 32.025074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579166, 30.739500, 31.506842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529396, 31.036201, 31.770454>,  <34.499535, 31.214222, 31.928621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.529396, 31.036201, 31.770454>,  <34.579166, 30.739500, 31.506842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529396, 31.036201, 31.770454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231982, 0.667531, -0.707522,
		-0.964729, 0.064851, -0.255131,
		-0.124424, 0.741753, 0.659031,
		34.492069, 31.258728, 31.968164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286144, 31.267345, 31.142910>,  <34.579166, 30.739500, 31.506842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286144, 31.267345, 31.142910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472496, 31.464279, 31.437004>,  <34.584305, 31.582439, 31.613461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472496, 31.464279, 31.437004>,  <34.286144, 31.267345, 31.142910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472496, 31.464279, 31.437004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160993, 0.769882, -0.617546,
		-0.870082, 0.406067, 0.279407,
		0.465875, 0.492333, 0.735234,
		34.612259, 31.611979, 31.657574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931843, 31.890606, 31.122768>,  <34.286144, 31.267345, 31.142910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931843, 31.890606, 31.122768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263802, 31.958378, 31.335396>,  <34.462978, 31.999041, 31.462971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263802, 31.958378, 31.335396>,  <33.931843, 31.890606, 31.122768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263802, 31.958378, 31.335396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271137, 0.710214, -0.649677,
		-0.487599, 0.683294, 0.543467,
		0.829899, 0.169428, 0.531566,
		34.512772, 32.009205, 31.494865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017109, 32.673203, 31.282202>,  <33.931843, 31.890606, 31.122768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017109, 32.673203, 31.282202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388481, 32.531910, 31.328247>,  <34.611305, 32.447136, 31.355875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388481, 32.531910, 31.328247>,  <34.017109, 32.673203, 31.282202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388481, 32.531910, 31.328247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361672, 0.788522, -0.497419,
		0.084933, 0.503451, 0.859839,
		0.928429, -0.353227, 0.115113,
		34.667011, 32.425941, 31.362782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374405, 33.259430, 31.412727>,  <34.017109, 32.673203, 31.282202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374405, 33.259430, 31.412727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658482, 33.004013, 31.294136>,  <34.828926, 32.850765, 31.222980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658482, 33.004013, 31.294136>,  <34.374405, 33.259430, 31.412727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658482, 33.004013, 31.294136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374209, 0.699094, -0.609291,
		0.596322, 0.321767, 0.735436,
		0.710188, -0.638540, -0.296477,
		34.871536, 32.812450, 31.205193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063545, 33.574837, 31.574657>,  <34.374405, 33.259430, 31.412727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063545, 33.574837, 31.574657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111198, 33.320427, 31.269691>,  <35.139790, 33.167782, 31.086712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111198, 33.320427, 31.269691>,  <35.063545, 33.574837, 31.574657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111198, 33.320427, 31.269691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478828, 0.709492, -0.517054,
		0.869788, -0.303467, 0.389072,
		0.119135, -0.636026, -0.762416,
		35.146938, 33.129620, 31.040966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664104, 33.740211, 31.345587>,  <35.063545, 33.574837, 31.574657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664104, 33.740211, 31.345587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553699, 33.510387, 31.037380>,  <35.487457, 33.372494, 30.852457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553699, 33.510387, 31.037380>,  <35.664104, 33.740211, 31.345587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553699, 33.510387, 31.037380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566501, 0.550366, -0.613331,
		0.776462, -0.605785, 0.173581,
		-0.276013, -0.574562, -0.770516,
		35.470894, 33.338020, 30.806225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217304, 33.722900, 30.916605>,  <35.664104, 33.740211, 31.345587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217304, 33.722900, 30.916605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910408, 33.646580, 30.671677>,  <35.726269, 33.600788, 30.524719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910408, 33.646580, 30.671677>,  <36.217304, 33.722900, 30.916605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910408, 33.646580, 30.671677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471601, 0.479208, -0.740238,
		0.434669, -0.856711, -0.277685,
		-0.767239, -0.190802, -0.612322,
		35.680237, 33.589340, 30.487980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493767, 33.554867, 30.273539>,  <36.217304, 33.722900, 30.916605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493767, 33.554867, 30.273539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118176, 33.664967, 30.191017>,  <35.892822, 33.731026, 30.141504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118176, 33.664967, 30.191017>,  <36.493767, 33.554867, 30.273539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118176, 33.664967, 30.191017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327058, 0.528575, -0.783353,
		-0.106575, -0.803022, -0.586343,
		-0.938975, 0.275254, -0.206302,
		35.836483, 33.747543, 30.129126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487675, 33.305779, 29.601377>,  <36.493767, 33.554867, 30.273539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487675, 33.305779, 29.601377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193790, 33.572105, 29.653355>,  <36.017460, 33.731903, 29.684542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193790, 33.572105, 29.653355>,  <36.487675, 33.305779, 29.601377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193790, 33.572105, 29.653355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034455, 0.227929, -0.973068,
		-0.677503, -0.710448, -0.190403,
		-0.734713, 0.665817, 0.129944,
		35.973377, 33.771851, 29.692337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155308, 33.271587, 29.021883>,  <36.487675, 33.305779, 29.601377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155308, 33.271587, 29.021883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010185, 33.615719, 29.165108>,  <35.923111, 33.822197, 29.251043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010185, 33.615719, 29.165108>,  <36.155308, 33.271587, 29.021883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010185, 33.615719, 29.165108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006430, 0.386545, -0.922248,
		-0.931843, -0.332293, -0.145772,
		-0.362804, 0.860328, 0.358063,
		35.901344, 33.873817, 29.272526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635403, 33.362740, 28.542089>,  <36.155308, 33.271587, 29.021883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635403, 33.362740, 28.542089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733631, 33.714729, 28.704735>,  <35.792568, 33.925922, 28.802322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733631, 33.714729, 28.704735>,  <35.635403, 33.362740, 28.542089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733631, 33.714729, 28.704735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032016, 0.426590, -0.903878,
		-0.968850, 0.208948, 0.132931,
		0.245571, 0.879978, 0.406612,
		35.807301, 33.978722, 28.826719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152760, 33.866997, 28.201660>,  <35.635403, 33.362740, 28.542089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152760, 33.866997, 28.201660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458836, 34.076630, 28.351231>,  <35.642483, 34.202408, 28.440973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458836, 34.076630, 28.351231>,  <35.152760, 33.866997, 28.201660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458836, 34.076630, 28.351231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046807, 0.624561, -0.779572,
		-0.642099, 0.579019, 0.502440,
		0.765192, 0.524080, 0.373928,
		35.688393, 34.233852, 28.463409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923321, 34.534664, 28.180674>,  <35.152760, 33.866997, 28.201660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923321, 34.534664, 28.180674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322868, 34.517776, 28.171867>,  <35.562595, 34.507645, 28.166584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.322868, 34.517776, 28.171867>,  <34.923321, 34.534664, 28.180674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322868, 34.517776, 28.171867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003815, 0.389965, -0.920822,
		0.047458, 0.919861, 0.389362,
		0.998866, -0.042215, -0.022016,
		35.622528, 34.505112, 28.165262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201550, 35.131916, 27.968678>,  <34.923321, 34.534664, 28.180674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201550, 35.131916, 27.968678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515575, 34.897533, 27.888363>,  <35.703991, 34.756905, 27.840174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515575, 34.897533, 27.888363>,  <35.201550, 35.131916, 27.968678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515575, 34.897533, 27.888363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113255, 0.454490, -0.883523,
		0.608966, 0.670886, 0.423169,
		0.785069, -0.585961, -0.200788,
		35.751095, 34.721745, 27.828127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714272, 35.616817, 27.614775>,  <35.201550, 35.131916, 27.968678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714272, 35.616817, 27.614775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832321, 35.251350, 27.502979>,  <35.903152, 35.032070, 27.435902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832321, 35.251350, 27.502979>,  <35.714272, 35.616817, 27.614775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832321, 35.251350, 27.502979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195114, 0.343988, -0.918479,
		0.935324, 0.216535, 0.279789,
		0.295127, -0.913666, -0.279491,
		35.920860, 34.977249, 27.419132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361794, 35.748985, 27.395300>,  <35.714272, 35.616817, 27.614775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361794, 35.748985, 27.395300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292202, 35.390301, 27.232506>,  <36.250446, 35.175091, 27.134829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292202, 35.390301, 27.232506>,  <36.361794, 35.748985, 27.395300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292202, 35.390301, 27.232506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190593, 0.374811, -0.907299,
		0.966129, -0.235423, 0.105696,
		-0.173983, -0.896712, -0.406985,
		36.240005, 35.121288, 27.110411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971592, 35.469234, 26.966084>,  <36.361794, 35.748985, 27.395300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971592, 35.469234, 26.966084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648468, 35.274426, 26.833263>,  <36.454594, 35.157539, 26.753571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.648468, 35.274426, 26.833263>,  <36.971592, 35.469234, 26.966084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648468, 35.274426, 26.833263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221391, 0.271396, -0.936659,
		0.546293, -0.830151, -0.111412,
		-0.807805, -0.487025, -0.332050,
		36.406128, 35.128319, 26.733648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220890, 35.172226, 26.325142>,  <36.971592, 35.469234, 26.966084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220890, 35.172226, 26.325142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822124, 35.145428, 26.308746>,  <36.582867, 35.129349, 26.298908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822124, 35.145428, 26.308746>,  <37.220890, 35.172226, 26.325142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822124, 35.145428, 26.308746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020411, 0.282988, -0.958906,
		0.075840, -0.956781, -0.280746,
		-0.996911, -0.066993, -0.040991,
		36.523052, 35.125328, 26.296450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100742, 34.885403, 25.696508>,  <37.220890, 35.172226, 26.325142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100742, 34.885403, 25.696508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740768, 35.044697, 25.767532>,  <36.524784, 35.140274, 25.810146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740768, 35.044697, 25.767532>,  <37.100742, 34.885403, 25.696508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740768, 35.044697, 25.767532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120837, 0.163492, -0.979116,
		-0.418949, -0.902596, -0.099010,
		-0.899934, 0.398235, 0.177562,
		36.470787, 35.164165, 25.820801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602528, 34.638542, 25.198719>,  <37.100742, 34.885403, 25.696508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602528, 34.638542, 25.198719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442783, 34.985039, 25.318806>,  <36.346935, 35.192936, 25.390858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442783, 34.985039, 25.318806>,  <36.602528, 34.638542, 25.198719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442783, 34.985039, 25.318806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101273, 0.283776, -0.953528,
		-0.911183, -0.411206, -0.025602,
		-0.399361, 0.866245, 0.300216,
		36.322975, 35.244911, 25.408871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056953, 34.710648, 24.844105>,  <36.602528, 34.638542, 25.198719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056953, 34.710648, 24.844105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121712, 35.091702, 24.947086>,  <36.160568, 35.320332, 25.008875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.121712, 35.091702, 24.947086>,  <36.056953, 34.710648, 24.844105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121712, 35.091702, 24.947086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183852, 0.285447, -0.940595,
		-0.969530, 0.104944, 0.221355,
		0.161895, 0.952632, 0.257455,
		36.170280, 35.377491, 25.024323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657101, 35.128651, 24.499428>,  <36.056953, 34.710648, 24.844105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657101, 35.128651, 24.499428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902306, 35.421082, 24.619263>,  <36.049427, 35.596539, 24.691164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902306, 35.421082, 24.619263>,  <35.657101, 35.128651, 24.499428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902306, 35.421082, 24.619263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023023, 0.395556, -0.918153,
		-0.789741, 0.555937, 0.259311,
		0.613008, 0.731073, 0.299588,
		36.086208, 35.640404, 24.709139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333141, 35.716496, 24.292725>,  <35.657101, 35.128651, 24.499428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333141, 35.716496, 24.292725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708321, 35.851643, 24.323975>,  <35.933426, 35.932732, 24.342724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708321, 35.851643, 24.323975>,  <35.333141, 35.716496, 24.292725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708321, 35.851643, 24.323975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054436, 0.365941, -0.929044,
		-0.342482, 0.867141, 0.361625,
		0.937946, 0.337867, 0.078125,
		35.989704, 35.953003, 24.347412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369316, 36.299110, 24.002645>,  <35.333141, 35.716496, 24.292725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369316, 36.299110, 24.002645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763947, 36.235405, 24.017048>,  <36.000725, 36.197182, 24.025690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763947, 36.235405, 24.017048>,  <35.369316, 36.299110, 24.002645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763947, 36.235405, 24.017048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089841, 0.345318, -0.934176,
		0.136349, 0.924873, 0.354992,
		0.986579, -0.159267, 0.036008,
		36.059921, 36.187626, 24.027851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906677, 36.176964, 24.669432>,  <35.369316, 36.299110, 24.002645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906677, 36.176964, 24.669432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549767, 36.268536, 24.513775>,  <34.335621, 36.323479, 24.420382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549767, 36.268536, 24.513775>,  <34.906677, 36.176964, 24.669432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549767, 36.268536, 24.513775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445317, -0.304234, 0.842101,
		0.074393, 0.924679, 0.373409,
		-0.892277, 0.228932, -0.389143,
		34.282082, 36.337215, 24.397032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555122, 36.602192, 25.171049>,  <34.906677, 36.176964, 24.669432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555122, 36.602192, 25.171049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285580, 36.418930, 24.939186>,  <34.123852, 36.308971, 24.800068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285580, 36.418930, 24.939186>,  <34.555122, 36.602192, 25.171049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285580, 36.418930, 24.939186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477143, -0.329165, 0.814853,
		-0.564134, 0.825677, 0.003205,
		-0.673860, -0.458157, -0.579659,
		34.083420, 36.281483, 24.765289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024323, 36.681004, 25.521938>,  <34.555122, 36.602192, 25.171049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024323, 36.681004, 25.521938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878735, 36.410801, 25.265434>,  <33.791382, 36.248680, 25.111532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878735, 36.410801, 25.265434>,  <34.024323, 36.681004, 25.521938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878735, 36.410801, 25.265434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538637, -0.409023, 0.736594,
		-0.759864, 0.613507, -0.214979,
		-0.363974, -0.675507, -0.641259,
		33.769543, 36.208149, 25.073057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265739, 36.672714, 25.551094>,  <34.024323, 36.681004, 25.521938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265739, 36.672714, 25.551094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386814, 36.313202, 25.424244>,  <33.459457, 36.097492, 25.348133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.386814, 36.313202, 25.424244>,  <33.265739, 36.672714, 25.551094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386814, 36.313202, 25.424244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536723, -0.435701, 0.722561,
		-0.787597, -0.048502, -0.614279,
		0.302688, -0.898784, -0.317125,
		33.477619, 36.043568, 25.329107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613934, 36.211845, 25.587744>,  <33.265739, 36.672714, 25.551094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613934, 36.211845, 25.587744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903370, 35.940289, 25.537910>,  <33.077030, 35.777355, 25.508011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903370, 35.940289, 25.537910>,  <32.613934, 36.211845, 25.587744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903370, 35.940289, 25.537910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358154, -0.523594, 0.773030,
		-0.590037, -0.514736, -0.622016,
		0.723590, -0.678893, -0.124585,
		33.120445, 35.736622, 25.500536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326611, 35.603844, 25.629368>,  <32.613934, 36.211845, 25.587744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326611, 35.603844, 25.629368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710224, 35.518177, 25.703537>,  <32.940392, 35.466778, 25.748037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710224, 35.518177, 25.703537>,  <32.326611, 35.603844, 25.629368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710224, 35.518177, 25.703537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261910, -0.420926, 0.868461,
		-0.107949, -0.881449, -0.459777,
		0.959036, -0.214169, 0.185422,
		32.997936, 35.453926, 25.759163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282074, 34.951279, 25.827509>,  <32.326611, 35.603844, 25.629368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282074, 34.951279, 25.827509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630844, 35.069588, 25.983597>,  <32.840107, 35.140572, 26.077250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630844, 35.069588, 25.983597>,  <32.282074, 34.951279, 25.827509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630844, 35.069588, 25.983597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234473, -0.447419, 0.863041,
		0.429852, -0.844001, -0.320765,
		0.871923, 0.295769, 0.390219,
		32.892422, 35.158318, 26.100662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596355, 34.343445, 26.285938>,  <32.282074, 34.951279, 25.827509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596355, 34.343445, 26.285938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749577, 34.689339, 26.415867>,  <32.841507, 34.896873, 26.493824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749577, 34.689339, 26.415867>,  <32.596355, 34.343445, 26.285938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749577, 34.689339, 26.415867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043472, -0.368126, 0.928759,
		0.922704, -0.341640, -0.178602,
		0.383049, 0.864734, 0.324820,
		32.864491, 34.948757, 26.513313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152344, 34.151478, 26.830341>,  <32.596355, 34.343445, 26.285938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152344, 34.151478, 26.830341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062538, 34.534985, 26.900043>,  <33.008656, 34.765087, 26.941866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062538, 34.534985, 26.900043>,  <33.152344, 34.151478, 26.830341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062538, 34.534985, 26.900043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022804, -0.183942, 0.982673,
		0.974203, 0.216653, 0.063161,
		-0.224517, 0.958763, 0.174256,
		32.995182, 34.822613, 26.952320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532379, 34.319653, 27.421011>,  <33.152344, 34.151478, 26.830341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532379, 34.319653, 27.421011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257587, 34.610321, 27.420605>,  <33.092712, 34.784721, 27.420361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257587, 34.610321, 27.420605>,  <33.532379, 34.319653, 27.421011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257587, 34.610321, 27.420605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073117, -0.067733, 0.995021,
		0.722987, 0.683635, 0.099664,
		-0.686981, 0.726674, -0.001015,
		33.051495, 34.828323, 27.420300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710629, 34.756870, 28.012197>,  <33.532379, 34.319653, 27.421011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710629, 34.756870, 28.012197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341190, 34.859333, 27.898106>,  <33.119530, 34.920811, 27.829651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341190, 34.859333, 27.898106>,  <33.710629, 34.756870, 28.012197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341190, 34.859333, 27.898106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295398, -0.001273, 0.955373,
		0.244366, 0.966633, 0.076845,
		-0.923594, 0.256160, -0.285230,
		33.064114, 34.936180, 27.812536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609787, 35.282436, 28.301687>,  <33.710629, 34.756870, 28.012197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609787, 35.282436, 28.301687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256443, 35.101131, 28.253983>,  <33.044437, 34.992348, 28.225359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256443, 35.101131, 28.253983>,  <33.609787, 35.282436, 28.301687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256443, 35.101131, 28.253983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227667, 0.192548, 0.954512,
		-0.409684, 0.870331, -0.273283,
		-0.883361, -0.453266, -0.119262,
		32.991436, 34.965153, 28.218204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197239, 35.406864, 28.837099>,  <33.609787, 35.282436, 28.301687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197239, 35.406864, 28.837099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942444, 35.130989, 28.699360>,  <32.789566, 34.965466, 28.616716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942444, 35.130989, 28.699360>,  <33.197239, 35.406864, 28.837099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942444, 35.130989, 28.699360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391112, -0.095786, 0.915345,
		-0.664285, 0.717745, -0.208730,
		-0.636991, -0.689687, -0.344348,
		32.751347, 34.924084, 28.596056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520802, 35.611248, 29.194544>,  <33.197239, 35.406864, 28.837099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520802, 35.611248, 29.194544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529819, 35.229172, 29.076496>,  <32.535229, 34.999924, 29.005667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529819, 35.229172, 29.076496>,  <32.520802, 35.611248, 29.194544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529819, 35.229172, 29.076496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144966, -0.295200, 0.944374,
		-0.989180, 0.021490, -0.145126,
		0.022546, -0.955194, -0.295121,
		32.536583, 34.942612, 28.987959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943884, 35.258076, 29.481895>,  <32.520802, 35.611248, 29.194544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943884, 35.258076, 29.481895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235016, 34.987259, 29.438305>,  <32.409695, 34.824768, 29.412151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235016, 34.987259, 29.438305>,  <31.943884, 35.258076, 29.481895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235016, 34.987259, 29.438305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311039, -0.467553, 0.827436,
		-0.611162, -0.568336, -0.550885,
		0.727829, -0.677044, -0.108976,
		32.453365, 34.784145, 29.405613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697308, 34.776814, 29.878122>,  <31.943884, 35.258076, 29.481895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697308, 34.776814, 29.878122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066990, 34.631660, 29.830536>,  <32.288799, 34.544567, 29.801983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066990, 34.631660, 29.830536>,  <31.697308, 34.776814, 29.878122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066990, 34.631660, 29.830536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141693, -0.615134, 0.775586,
		-0.354630, -0.699946, -0.619930,
		0.924208, -0.362886, -0.118968,
		32.344254, 34.522793, 29.794846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588902, 34.142071, 29.789885>,  <31.697308, 34.776814, 29.878122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588902, 34.142071, 29.789885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969004, 34.176956, 29.909489>,  <32.197063, 34.197887, 29.981251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969004, 34.176956, 29.909489>,  <31.588902, 34.142071, 29.789885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969004, 34.176956, 29.909489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106539, -0.811070, 0.575165,
		0.292681, -0.578411, -0.761432,
		0.950256, 0.087218, 0.299008,
		32.254082, 34.203121, 29.999191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920481, 33.438347, 29.745449>,  <31.588902, 34.142071, 29.789885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920481, 33.438347, 29.745449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169903, 33.619591, 30.000278>,  <32.319557, 33.728336, 30.153177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169903, 33.619591, 30.000278>,  <31.920481, 33.438347, 29.745449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169903, 33.619591, 30.000278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204199, -0.692216, 0.692199,
		0.754639, -0.561715, -0.339110,
		0.623556, 0.453114, 0.637076,
		32.356968, 33.755524, 30.191401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422279, 32.902309, 30.127962>,  <31.920481, 33.438347, 29.745449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422279, 32.902309, 30.127962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397900, 33.216976, 30.373707>,  <32.383270, 33.405777, 30.521154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397900, 33.216976, 30.373707>,  <32.422279, 32.902309, 30.127962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397900, 33.216976, 30.373707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022873, -0.616446, 0.787065,
		0.997878, 0.033922, 0.055568,
		-0.060953, 0.786666, 0.614363,
		32.379612, 33.452976, 30.558016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901657, 32.746483, 30.648863>,  <32.422279, 32.902309, 30.127962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901657, 32.746483, 30.648863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672504, 33.029167, 30.814926>,  <32.535011, 33.198780, 30.914564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672504, 33.029167, 30.814926>,  <32.901657, 32.746483, 30.648863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672504, 33.029167, 30.814926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040507, -0.530311, 0.846835,
		0.818634, 0.468323, 0.332434,
		-0.572885, 0.706714, 0.415160,
		32.500637, 33.241180, 30.939474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242531, 32.882797, 31.262802>,  <32.901657, 32.746483, 30.648863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242531, 32.882797, 31.262802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854385, 32.970890, 31.302586>,  <32.621498, 33.023746, 31.326456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854385, 32.970890, 31.302586>,  <33.242531, 32.882797, 31.262802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854385, 32.970890, 31.302586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057521, -0.610265, 0.790106,
		0.234700, 0.760970, 0.604847,
		-0.970364, 0.220229, 0.099458,
		32.563274, 33.036961, 31.332422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080864, 33.003136, 32.020374>,  <33.242531, 32.882797, 31.262802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080864, 33.003136, 32.020374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711102, 32.944653, 31.879467>,  <32.489243, 32.909561, 31.794922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711102, 32.944653, 31.879467>,  <33.080864, 33.003136, 32.020374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711102, 32.944653, 31.879467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229947, -0.523235, 0.820579,
		-0.304299, 0.839552, 0.450061,
		-0.924406, -0.146211, -0.352272,
		32.433781, 32.900791, 31.773785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631535, 33.225811, 32.579285>,  <33.080864, 33.003136, 32.020374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631535, 33.225811, 32.579285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454014, 32.953793, 32.345844>,  <32.347504, 32.790581, 32.205780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454014, 32.953793, 32.345844>,  <32.631535, 33.225811, 32.579285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454014, 32.953793, 32.345844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196609, -0.561486, 0.803790,
		-0.874292, 0.471462, 0.115485,
		-0.443799, -0.680042, -0.583596,
		32.320873, 32.749779, 32.170765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154812, 32.982140, 32.898941>,  <32.631535, 33.225811, 32.579285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154812, 32.982140, 32.898941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162453, 32.674252, 32.643703>,  <32.167038, 32.489517, 32.490562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162453, 32.674252, 32.643703>,  <32.154812, 32.982140, 32.898941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162453, 32.674252, 32.643703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206549, -0.627481, 0.750736,
		-0.978250, 0.117455, -0.170973,
		0.019104, -0.769722, -0.638094,
		32.168182, 32.443336, 32.452274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692673, 32.555355, 33.142059>,  <32.154812, 32.982140, 32.898941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692673, 32.555355, 33.142059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873991, 32.319248, 32.874897>,  <31.982782, 32.177586, 32.714600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873991, 32.319248, 32.874897>,  <31.692673, 32.555355, 33.142059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873991, 32.319248, 32.874897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328180, -0.807201, 0.490638,
		-0.828744, -0.003213, -0.559619,
		0.453301, -0.590269, -0.667908,
		32.009979, 32.142166, 32.674522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298113, 31.804596, 33.090450>,  <31.692673, 32.555355, 33.142059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298113, 31.804596, 33.090450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667833, 31.732243, 32.956020>,  <31.889666, 31.688831, 32.875362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667833, 31.732243, 32.956020>,  <31.298113, 31.804596, 33.090450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667833, 31.732243, 32.956020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016089, -0.898242, 0.439206,
		-0.381321, -0.400552, -0.833157,
		0.924302, -0.180884, -0.336075,
		31.945124, 31.677977, 32.855198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272049, 31.115667, 32.822899>,  <31.298113, 31.804596, 33.090450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272049, 31.115667, 32.822899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643330, 31.227554, 32.921040>,  <31.866098, 31.294687, 32.979923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643330, 31.227554, 32.921040>,  <31.272049, 31.115667, 32.822899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643330, 31.227554, 32.921040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085737, -0.802464, 0.590509,
		0.362063, -0.527076, -0.768831,
		0.928202, 0.279719, 0.245353,
		31.921791, 31.311470, 32.994644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642962, 30.542297, 33.001770>,  <31.272049, 31.115667, 32.822899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642962, 30.542297, 33.001770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874624, 30.822884, 33.167915>,  <32.013622, 30.991236, 33.267601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874624, 30.822884, 33.167915>,  <31.642962, 30.542297, 33.001770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874624, 30.822884, 33.167915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055541, -0.542276, 0.838363,
		0.813323, -0.462472, -0.353022,
		0.579155, 0.701467, 0.415359,
		32.048370, 31.033323, 33.292522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149666, 30.191608, 33.389015>,  <31.642962, 30.542297, 33.001770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149666, 30.191608, 33.389015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168774, 30.557228, 33.550129>,  <32.180237, 30.776600, 33.646797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.168774, 30.557228, 33.550129>,  <32.149666, 30.191608, 33.389015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168774, 30.557228, 33.550129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147376, -0.405279, 0.902236,
		0.987926, 0.016261, -0.154069,
		0.047770, 0.914048, 0.402783,
		32.183105, 30.831442, 33.670963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837719, 30.283234, 33.840603>,  <32.149666, 30.191608, 33.389015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837719, 30.283234, 33.840603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561954, 30.543358, 33.968235>,  <32.396496, 30.699432, 34.044815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561954, 30.543358, 33.968235>,  <32.837719, 30.283234, 33.840603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561954, 30.543358, 33.968235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150445, -0.302337, 0.941254,
		0.708575, 0.696914, 0.110598,
		-0.689411, 0.650310, 0.319076,
		32.355129, 30.738451, 34.063957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.026272, 30.432549, 34.529743>,  <32.837719, 30.283234, 33.840603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.026272, 30.432549, 34.529743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651672, 30.572197, 34.516548>,  <32.426914, 30.655987, 34.508633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651672, 30.572197, 34.516548>,  <33.026272, 30.432549, 34.529743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651672, 30.572197, 34.516548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150225, -0.314413, 0.937324,
		0.316869, 0.882756, 0.346894,
		-0.936497, 0.349121, -0.032985,
		32.370724, 30.676933, 34.506653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905819, 30.708250, 35.118668>,  <33.026272, 30.432549, 34.529743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905819, 30.708250, 35.118668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533619, 30.636372, 34.990997>,  <32.310299, 30.593245, 34.914394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533619, 30.636372, 34.990997>,  <32.905819, 30.708250, 35.118668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533619, 30.636372, 34.990997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252887, -0.315215, 0.914707,
		-0.264979, 0.931852, 0.247865,
		-0.930502, -0.179696, -0.319179,
		32.254467, 30.582462, 34.895245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515144, 30.863411, 35.634895>,  <32.905819, 30.708250, 35.118668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515144, 30.863411, 35.634895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257355, 30.630775, 35.436337>,  <32.102680, 30.491194, 35.317200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257355, 30.630775, 35.436337>,  <32.515144, 30.863411, 35.634895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257355, 30.630775, 35.436337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249650, -0.453577, 0.855536,
		-0.722727, 0.675293, 0.147123,
		-0.644469, -0.581590, -0.496399,
		32.064014, 30.456299, 35.287418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141167, 30.731005, 36.156868>,  <32.515144, 30.863411, 35.634895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141167, 30.731005, 36.156868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997824, 30.475960, 35.884094>,  <31.911818, 30.322933, 35.720432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997824, 30.475960, 35.884094>,  <32.141167, 30.731005, 36.156868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997824, 30.475960, 35.884094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496191, -0.488650, 0.717646,
		-0.790805, 0.595542, -0.141267,
		-0.358358, -0.637613, -0.681930,
		31.890316, 30.284676, 35.679516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281525, 30.674004, 36.188175>,  <32.141167, 30.731005, 36.156868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281525, 30.674004, 36.188175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471512, 30.361534, 36.026100>,  <31.585505, 30.174053, 35.928856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471512, 30.361534, 36.026100>,  <31.281525, 30.674004, 36.188175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471512, 30.361534, 36.026100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526237, -0.621169, 0.580709,
		-0.705321, -0.062597, -0.706118,
		0.474970, -0.781172, -0.405183,
		31.614002, 30.127182, 35.904545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770712, 30.141338, 36.109653>,  <31.281525, 30.674004, 36.188175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770712, 30.141338, 36.109653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094696, 29.908588, 36.080288>,  <31.289087, 29.768938, 36.062668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094696, 29.908588, 36.080288>,  <30.770712, 30.141338, 36.109653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094696, 29.908588, 36.080288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418697, -0.661340, 0.622352,
		-0.410679, -0.473343, -0.779287,
		0.809960, -0.581873, -0.073411,
		31.337685, 29.734026, 36.058266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550007, 29.461813, 35.987755>,  <30.770712, 30.141338, 36.109653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550007, 29.461813, 35.987755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917257, 29.394032, 36.131050>,  <31.137608, 29.353363, 36.217026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917257, 29.394032, 36.131050>,  <30.550007, 29.461813, 35.987755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917257, 29.394032, 36.131050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344404, -0.788379, 0.509749,
		0.196045, -0.591390, -0.782192,
		0.918125, -0.169456, 0.358235,
		31.192696, 29.343195, 36.238522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733614, 28.680698, 35.832272>,  <30.550007, 29.461813, 35.987755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733614, 28.680698, 35.832272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945494, 28.827728, 36.138031>,  <31.072620, 28.915947, 36.321487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.945494, 28.827728, 36.138031>,  <30.733614, 28.680698, 35.832272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945494, 28.827728, 36.138031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276543, -0.777128, 0.565329,
		0.801838, -0.510843, -0.309993,
		0.529698, 0.367576, 0.764401,
		31.104403, 28.938002, 36.367352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156012, 28.005644, 35.693634>,  <30.733614, 28.680698, 35.832272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156012, 28.005644, 35.693634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796251, 27.858055, 35.599876>,  <30.580395, 27.769503, 35.543621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796251, 27.858055, 35.599876>,  <31.156012, 28.005644, 35.693634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796251, 27.858055, 35.599876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020510, 0.571240, -0.820527,
		0.436644, -0.733175, -0.521342,
		-0.899401, -0.368970, -0.234391,
		30.526432, 27.747364, 35.529560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240858, 27.710915, 35.009003>,  <31.156012, 28.005644, 35.693634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240858, 27.710915, 35.009003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843861, 27.738968, 35.049084>,  <30.605663, 27.755800, 35.073132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843861, 27.738968, 35.049084>,  <31.240858, 27.710915, 35.009003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843861, 27.738968, 35.049084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070199, 0.344244, -0.936252,
		-0.100158, -0.936257, -0.336736,
		-0.992492, 0.070135, 0.100203,
		30.546112, 27.760008, 35.079144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979467, 27.272362, 34.428020>,  <31.240858, 27.710915, 35.009003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979467, 27.272362, 34.428020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725998, 27.557568, 34.548069>,  <30.573915, 27.728691, 34.620098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725998, 27.557568, 34.548069>,  <30.979467, 27.272362, 34.428020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725998, 27.557568, 34.548069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144099, 0.272368, -0.951342,
		-0.760062, -0.646086, -0.069848,
		-0.633673, 0.713013, 0.300117,
		30.535896, 27.771471, 34.638103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532017, 27.319859, 33.848370>,  <30.979467, 27.272362, 34.428020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532017, 27.319859, 33.848370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443787, 27.651485, 34.053894>,  <30.390848, 27.850462, 34.177208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443787, 27.651485, 34.053894>,  <30.532017, 27.319859, 33.848370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443787, 27.651485, 34.053894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488803, 0.361898, -0.793789,
		-0.844048, -0.426241, 0.325424,
		-0.220575, 0.829065, 0.513807,
		30.377613, 27.900206, 34.208035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838692, 27.484892, 33.692280>,  <30.532017, 27.319859, 33.848370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838692, 27.484892, 33.692280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979982, 27.821522, 33.855736>,  <30.064756, 28.023499, 33.953808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979982, 27.821522, 33.855736>,  <29.838692, 27.484892, 33.692280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979982, 27.821522, 33.855736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478368, 0.537850, -0.694177,
		-0.803988, 0.049721, 0.592563,
		0.353225, 0.841573, 0.408640,
		30.085951, 28.073994, 33.978329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296520, 28.032999, 33.740772>,  <29.838692, 27.484892, 33.692280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296520, 28.032999, 33.740772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643909, 28.231293, 33.740097>,  <29.852343, 28.350269, 33.739693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643909, 28.231293, 33.740097>,  <29.296520, 28.032999, 33.740772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643909, 28.231293, 33.740097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348506, 0.608113, -0.713261,
		-0.352563, 0.620035, 0.700896,
		0.868471, 0.495736, -0.001687,
		29.904451, 28.380014, 33.739590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232573, 28.796009, 33.963551>,  <29.296520, 28.032999, 33.740772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232573, 28.796009, 33.963551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572838, 28.803780, 33.753410>,  <29.776997, 28.808441, 33.627327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572838, 28.803780, 33.753410>,  <29.232573, 28.796009, 33.963551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572838, 28.803780, 33.753410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427672, 0.606717, -0.670068,
		0.305723, 0.794681, 0.524420,
		0.850664, 0.019424, -0.525350,
		29.828037, 28.809607, 33.595806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107180, 29.354061, 33.661442>,  <29.232573, 28.796009, 33.963551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107180, 29.354061, 33.661442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453943, 29.249481, 33.491684>,  <29.662003, 29.186733, 33.389828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453943, 29.249481, 33.491684>,  <29.107180, 29.354061, 33.661442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453943, 29.249481, 33.491684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115961, 0.722266, -0.681824,
		0.484788, 0.640294, 0.595822,
		0.866910, -0.261448, -0.424395,
		29.714016, 29.171047, 33.364365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664116, 29.923183, 33.628662>,  <29.107180, 29.354061, 33.661442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664116, 29.923183, 33.628662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724234, 29.670593, 33.324387>,  <29.760305, 29.519039, 33.141823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724234, 29.670593, 33.324387>,  <29.664116, 29.923183, 33.628662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724234, 29.670593, 33.324387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028239, 0.766374, -0.641774,
		0.988238, 0.117938, 0.097351,
		0.150296, -0.631476, -0.760690,
		29.769323, 29.481150, 33.096180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088778, 30.278799, 33.226360>,  <29.664116, 29.923183, 33.628662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088778, 30.278799, 33.226360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938496, 29.997032, 32.985481>,  <29.848328, 29.827972, 32.840954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938496, 29.997032, 32.985481>,  <30.088778, 30.278799, 33.226360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938496, 29.997032, 32.985481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154419, 0.688305, -0.708796,
		0.913785, -0.173305, -0.367373,
		-0.375703, -0.704417, -0.602201,
		29.825785, 29.785707, 32.804821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456186, 30.406082, 32.455116>,  <30.088778, 30.278799, 33.226360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456186, 30.406082, 32.455116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135424, 30.178738, 32.381458>,  <29.942966, 30.042332, 32.337261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135424, 30.178738, 32.381458>,  <30.456186, 30.406082, 32.455116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135424, 30.178738, 32.381458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178001, 0.521510, -0.834472,
		0.570318, -0.636389, -0.519371,
		-0.801906, -0.568363, -0.184149,
		29.894852, 30.008230, 32.326214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500376, 30.158440, 31.799858>,  <30.456186, 30.406082, 32.455116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500376, 30.158440, 31.799858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115870, 30.146297, 31.909435>,  <29.885166, 30.139011, 31.975182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115870, 30.146297, 31.909435>,  <30.500376, 30.158440, 31.799858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115870, 30.146297, 31.909435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246099, 0.542077, -0.803485,
		-0.124108, -0.839780, -0.528551,
		-0.961266, -0.030357, 0.273945,
		29.827490, 30.137190, 31.991619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176533, 30.037020, 31.169476>,  <30.500376, 30.158440, 31.799858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176533, 30.037020, 31.169476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895876, 30.203278, 31.400970>,  <29.727482, 30.303032, 31.539867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895876, 30.203278, 31.400970>,  <30.176533, 30.037020, 31.169476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895876, 30.203278, 31.400970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481341, 0.322379, -0.815097,
		-0.525364, -0.850476, -0.026127,
		-0.701643, 0.415647, 0.578736,
		29.685383, 30.327972, 31.574591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561819, 29.777214, 30.875540>,  <30.176533, 30.037020, 31.169476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561819, 29.777214, 30.875540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498407, 30.115139, 31.079956>,  <29.460360, 30.317894, 31.202606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.498407, 30.115139, 31.079956>,  <29.561819, 29.777214, 30.875540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498407, 30.115139, 31.079956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107107, 0.499817, -0.859483,
		-0.981527, -0.190990, 0.011249,
		-0.158530, 0.844811, 0.511041,
		29.450848, 30.368582, 31.233269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173195, 30.122349, 30.489332>,  <29.561819, 29.777214, 30.875540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173195, 30.122349, 30.489332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288363, 30.417664, 30.733311>,  <29.357464, 30.594852, 30.879698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.288363, 30.417664, 30.733311>,  <29.173195, 30.122349, 30.489332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288363, 30.417664, 30.733311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125395, 0.602367, -0.788308,
		-0.949410, 0.303453, 0.080855,
		0.287919, 0.738288, 0.609945,
		29.374739, 30.639151, 30.916294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838131, 30.679716, 30.308813>,  <29.173195, 30.122349, 30.489332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838131, 30.679716, 30.308813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139856, 30.832455, 30.522430>,  <29.320892, 30.924099, 30.650600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.139856, 30.832455, 30.522430>,  <28.838131, 30.679716, 30.308813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139856, 30.832455, 30.522430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180399, 0.661584, -0.727848,
		-0.631243, 0.645366, 0.430157,
		0.754313, 0.381849, 0.534044,
		29.366150, 30.947010, 30.682644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838896, 31.429970, 30.337814>,  <28.838131, 30.679716, 30.308813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838896, 31.429970, 30.337814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226589, 31.384007, 30.424885>,  <29.459206, 31.356428, 30.477127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226589, 31.384007, 30.424885>,  <28.838896, 31.429970, 30.337814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226589, 31.384007, 30.424885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245457, 0.517275, -0.819864,
		-0.018392, 0.848070, 0.529565,
		0.969233, -0.114907, 0.217678,
		29.517359, 31.349535, 30.490189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143894, 32.118019, 30.458481>,  <28.838896, 31.429970, 30.337814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143894, 32.118019, 30.458481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443512, 31.867180, 30.372986>,  <29.623283, 31.716677, 30.321688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443512, 31.867180, 30.372986>,  <29.143894, 32.118019, 30.458481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443512, 31.867180, 30.372986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273823, 0.586802, -0.762026,
		0.603285, 0.512265, 0.611254,
		0.749045, -0.627095, -0.213738,
		29.668226, 31.679052, 30.308865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746988, 32.525440, 30.332708>,  <29.143894, 32.118019, 30.458481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746988, 32.525440, 30.332708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879728, 32.187744, 30.164356>,  <29.959372, 31.985126, 30.063345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879728, 32.187744, 30.164356>,  <29.746988, 32.525440, 30.332708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879728, 32.187744, 30.164356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426595, 0.532239, -0.731258,
		0.841364, 0.063122, 0.536770,
		0.331848, -0.844238, -0.420879,
		29.979282, 31.934473, 30.038094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386196, 32.707199, 30.187979>,  <29.746988, 32.525440, 30.332708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386196, 32.707199, 30.187979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310757, 32.397053, 29.946903>,  <30.265493, 32.210964, 29.802258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310757, 32.397053, 29.946903>,  <30.386196, 32.707199, 30.187979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310757, 32.397053, 29.946903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558230, 0.420271, -0.715368,
		0.807967, -0.471355, 0.353573,
		-0.188596, -0.775369, -0.602690,
		30.254177, 32.164444, 29.766096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101683, 32.580368, 29.920256>,  <30.386196, 32.707199, 30.187979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101683, 32.580368, 29.920256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853889, 32.393188, 29.668140>,  <30.705214, 32.280880, 29.516870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853889, 32.393188, 29.668140>,  <31.101683, 32.580368, 29.920256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853889, 32.393188, 29.668140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506329, 0.375387, -0.776348,
		0.599895, -0.800067, 0.004391,
		-0.619482, -0.467950, -0.630290,
		30.668045, 32.252804, 29.479053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477013, 32.219425, 29.380825>,  <31.101683, 32.580368, 29.920256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477013, 32.219425, 29.380825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114456, 32.309101, 29.237606>,  <30.896923, 32.362907, 29.151674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114456, 32.309101, 29.237606>,  <31.477013, 32.219425, 29.380825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114456, 32.309101, 29.237606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420983, 0.408935, -0.809657,
		-0.035098, -0.884597, -0.465034,
		-0.906389, 0.224189, -0.358047,
		30.842539, 32.376358, 29.130192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531546, 32.217358, 28.688908>,  <31.477013, 32.219425, 29.380825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531546, 32.217358, 28.688908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180521, 32.405785, 28.724640>,  <30.969906, 32.518841, 28.746078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.180521, 32.405785, 28.724640>,  <31.531546, 32.217358, 28.688908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180521, 32.405785, 28.724640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123575, 0.402235, -0.907158,
		-0.463266, -0.785048, -0.411198,
		-0.877561, 0.471070, 0.089329,
		30.917253, 32.547104, 28.751438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122740, 32.063984, 28.117510>,  <31.531546, 32.217358, 28.688908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122740, 32.063984, 28.117510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996244, 32.419880, 28.249180>,  <30.920347, 32.633419, 28.328182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996244, 32.419880, 28.249180>,  <31.122740, 32.063984, 28.117510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996244, 32.419880, 28.249180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029945, 0.356171, -0.933941,
		-0.948208, -0.285489, -0.139277,
		-0.316236, 0.889741, 0.329175,
		30.901373, 32.686802, 28.347933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671503, 32.318211, 27.632591>,  <31.122740, 32.063984, 28.117510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671503, 32.318211, 27.632591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723257, 32.645771, 27.856258>,  <30.754309, 32.842308, 27.990459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723257, 32.645771, 27.856258>,  <30.671503, 32.318211, 27.632591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723257, 32.645771, 27.856258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220486, 0.573549, -0.788941,
		-0.966770, -0.021212, 0.254764,
		0.129385, 0.818897, 0.559167,
		30.762072, 32.891441, 28.024008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179155, 32.713169, 27.351885>,  <30.671503, 32.318211, 27.632591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179155, 32.713169, 27.351885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413656, 32.970512, 27.548820>,  <30.554358, 33.124920, 27.666983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.413656, 32.970512, 27.548820>,  <30.179155, 32.713169, 27.351885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.413656, 32.970512, 27.548820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172264, 0.692830, -0.700223,
		-0.791602, 0.325695, 0.517001,
		0.586253, 0.643358, 0.492340,
		30.589533, 33.163521, 27.696522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815641, 33.277649, 27.593096>,  <30.179155, 32.713169, 27.351885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815641, 33.277649, 27.593096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199039, 33.386326, 27.558517>,  <30.429077, 33.451530, 27.537771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.199039, 33.386326, 27.558517>,  <29.815641, 33.277649, 27.593096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199039, 33.386326, 27.558517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262715, 0.723831, -0.638004,
		-0.110768, 0.634233, 0.765166,
		0.958494, 0.271691, -0.086445,
		30.486588, 33.467834, 27.532583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719465, 33.963638, 27.553896>,  <29.815641, 33.277649, 27.593096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719465, 33.963638, 27.553896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094854, 33.886162, 27.439526>,  <30.320087, 33.839676, 27.370903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094854, 33.886162, 27.439526>,  <29.719465, 33.963638, 27.553896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094854, 33.886162, 27.439526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060814, 0.722298, -0.688903,
		0.339961, 0.663904, 0.666076,
		0.938471, -0.193694, -0.285927,
		30.376396, 33.828053, 27.353748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152370, 34.636189, 27.722586>,  <29.719465, 33.963638, 27.553896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152370, 34.636189, 27.722586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320141, 34.422066, 27.429321>,  <30.420803, 34.293591, 27.253363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320141, 34.422066, 27.429321>,  <30.152370, 34.636189, 27.722586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320141, 34.422066, 27.429321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108959, 0.772109, -0.626080,
		0.901227, 0.342478, 0.265515,
		0.419425, -0.535310, -0.733162,
		30.445969, 34.261475, 27.209373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406282, 35.160973, 27.328680>,  <30.152370, 34.636189, 27.722586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406282, 35.160973, 27.328680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406864, 34.848427, 27.079052>,  <30.407213, 34.660900, 26.929276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406864, 34.848427, 27.079052>,  <30.406282, 35.160973, 27.328680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406864, 34.848427, 27.079052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134157, 0.618277, -0.774426,
		0.990959, 0.084851, -0.103926,
		0.001456, -0.781367, -0.624070,
		30.407301, 34.614017, 26.891830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682268, 35.562885, 26.851664>,  <30.406282, 35.160973, 27.328680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682268, 35.562885, 26.851664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522306, 35.230656, 26.696629>,  <30.426329, 35.031319, 26.603607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522306, 35.230656, 26.696629>,  <30.682268, 35.562885, 26.851664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522306, 35.230656, 26.696629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203704, 0.492839, -0.845940,
		0.893634, -0.259341, -0.366279,
		-0.399904, -0.830573, -0.387589,
		30.402336, 34.981483, 26.580353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780079, 35.637096, 26.104925>,  <30.682268, 35.562885, 26.851664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780079, 35.637096, 26.104925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514917, 35.338531, 26.128315>,  <30.355820, 35.159393, 26.142349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514917, 35.338531, 26.128315>,  <30.780079, 35.637096, 26.104925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514917, 35.338531, 26.128315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471852, 0.355864, -0.806670,
		0.581302, -0.562338, -0.588102,
		-0.662906, -0.746416, 0.058476,
		30.316046, 35.114605, 26.145857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734661, 35.367813, 25.371016>,  <30.780079, 35.637096, 26.104925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734661, 35.367813, 25.371016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399445, 35.250565, 25.555088>,  <30.198315, 35.180218, 25.665531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399445, 35.250565, 25.555088>,  <30.734661, 35.367813, 25.371016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399445, 35.250565, 25.555088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536602, 0.290211, -0.792361,
		0.098705, -0.910967, -0.400497,
		-0.838042, -0.293117, 0.460182,
		30.148031, 35.162628, 25.693142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367790, 34.974648, 24.820578>,  <30.734661, 35.367813, 25.371016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367790, 34.974648, 24.820578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093336, 35.082077, 25.091011>,  <29.928663, 35.146534, 25.253271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093336, 35.082077, 25.091011>,  <30.367790, 34.974648, 24.820578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093336, 35.082077, 25.091011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629789, 0.245869, -0.736827,
		-0.364119, -0.931352, 0.000445,
		-0.686136, 0.268573, 0.676081,
		29.887495, 35.162647, 25.293835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839912, 34.750973, 24.552563>,  <30.367790, 34.974648, 24.820578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839912, 34.750973, 24.552563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679399, 35.012291, 24.809368>,  <29.583092, 35.169083, 24.963451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679399, 35.012291, 24.809368>,  <29.839912, 34.750973, 24.552563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679399, 35.012291, 24.809368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588938, 0.352804, -0.727105,
		-0.701517, -0.669880, 0.243175,
		-0.401280, 0.653292, 0.642016,
		29.559015, 35.208279, 25.001972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139750, 34.723328, 24.428570>,  <29.839912, 34.750973, 24.552563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139750, 34.723328, 24.428570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186020, 35.074203, 24.614967>,  <29.213783, 35.284729, 24.726807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186020, 35.074203, 24.614967>,  <29.139750, 34.723328, 24.428570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186020, 35.074203, 24.614967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718670, 0.397761, -0.570351,
		-0.685662, -0.268918, 0.676425,
		0.115678, 0.877194, 0.465993,
		29.220724, 35.337360, 24.754765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407145, 34.894203, 24.691046>,  <29.139750, 34.723328, 24.428570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407145, 34.894203, 24.691046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636812, 35.213802, 24.619564>,  <28.774612, 35.405560, 24.576675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636812, 35.213802, 24.619564>,  <28.407145, 34.894203, 24.691046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636812, 35.213802, 24.619564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745916, 0.420498, -0.516518,
		-0.337550, 0.429869, 0.837421,
		0.574169, 0.798996, -0.178707,
		28.809063, 35.453503, 24.565952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.974237, 35.442657, 24.757822>,  <28.407145, 34.894203, 24.691046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.974237, 35.442657, 24.757822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290197, 35.621555, 24.589996>,  <28.479773, 35.728893, 24.489300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290197, 35.621555, 24.589996>,  <27.974237, 35.442657, 24.757822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290197, 35.621555, 24.589996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611239, 0.629377, -0.479866,
		0.049450, 0.635501, 0.770515,
		0.789899, 0.447240, -0.419565,
		28.527166, 35.755726, 24.464127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879633, 36.140125, 24.859924>,  <27.974237, 35.442657, 24.757822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879633, 36.140125, 24.859924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123920, 36.111866, 24.544449>,  <28.270493, 36.094910, 24.355164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123920, 36.111866, 24.544449>,  <27.879633, 36.140125, 24.859924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123920, 36.111866, 24.544449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595807, 0.615054, -0.516452,
		0.521571, 0.785314, 0.333535,
		0.610719, -0.070644, -0.788690,
		28.307137, 36.090672, 24.307842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900610, 36.849167, 24.661312>,  <27.879633, 36.140125, 24.859924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900610, 36.849167, 24.661312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989616, 36.599312, 24.361897>,  <28.043020, 36.449398, 24.182247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989616, 36.599312, 24.361897>,  <27.900610, 36.849167, 24.661312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989616, 36.599312, 24.361897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454767, 0.612641, -0.646420,
		0.862365, 0.484251, -0.147741,
		0.222517, -0.624637, -0.748541,
		28.056372, 36.411922, 24.137335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423429, 37.205769, 24.274258>,  <27.900610, 36.849167, 24.661312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423429, 37.205769, 24.274258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180876, 36.951530, 24.083126>,  <28.035343, 36.798988, 23.968447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180876, 36.951530, 24.083126>,  <28.423429, 37.205769, 24.274258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180876, 36.951530, 24.083126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552268, 0.768967, -0.322008,
		0.572100, 0.068628, -0.817308,
		-0.606384, -0.635594, -0.477827,
		27.998960, 36.760853, 23.939777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305382, 37.514473, 23.670084>,  <28.423429, 37.205769, 24.274258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305382, 37.514473, 23.670084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999866, 37.287598, 23.793327>,  <27.816557, 37.151474, 23.867273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999866, 37.287598, 23.793327>,  <28.305382, 37.514473, 23.670084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999866, 37.287598, 23.793327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636611, 0.740751, -0.214510,
		-0.106566, -0.359986, -0.926852,
		-0.763787, -0.567184, 0.308110,
		27.770731, 37.117443, 23.885759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747040, 37.653645, 23.223320>,  <28.305382, 37.514473, 23.670084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747040, 37.653645, 23.223320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554974, 37.469669, 23.522091>,  <27.439734, 37.359283, 23.701353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.554974, 37.469669, 23.522091>,  <27.747040, 37.653645, 23.223320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.554974, 37.469669, 23.522091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806859, 0.565639, -0.170383,
		-0.344124, -0.684476, -0.642707,
		-0.480163, -0.459941, 0.746926,
		27.410925, 37.331688, 23.746168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.097479, 37.508648, 23.049059>,  <27.747040, 37.653645, 23.223320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.097479, 37.508648, 23.049059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084513, 37.572678, 23.443687>,  <27.076733, 37.611095, 23.680466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084513, 37.572678, 23.443687>,  <27.097479, 37.508648, 23.049059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084513, 37.572678, 23.443687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934081, 0.346330, -0.086886,
		-0.355588, -0.924354, 0.138297,
		-0.032417, 0.160076, 0.986572,
		27.074787, 37.620701, 23.739658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464649, 37.202271, 23.290829>,  <27.097479, 37.508648, 23.049059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464649, 37.202271, 23.290829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580767, 37.476685, 23.557690>,  <26.650436, 37.641331, 23.717806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580767, 37.476685, 23.557690>,  <26.464649, 37.202271, 23.290829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580767, 37.476685, 23.557690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941570, 0.329213, 0.071169,
		-0.170811, -0.648830, 0.741514,
		0.290293, 0.686031, 0.667152,
		26.667854, 37.682495, 23.757835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966625, 37.082981, 23.725405>,  <26.464649, 37.202271, 23.290829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966625, 37.082981, 23.725405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136177, 37.444042, 23.755161>,  <26.237909, 37.660679, 23.773016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136177, 37.444042, 23.755161>,  <25.966625, 37.082981, 23.725405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136177, 37.444042, 23.755161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889817, 0.399709, 0.220134,
		0.168970, -0.159505, 0.972629,
		0.423881, 0.902657, 0.074391,
		26.263342, 37.714840, 23.777479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639612, 37.461113, 24.328896>,  <25.966625, 37.082981, 23.725405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639612, 37.461113, 24.328896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.810829, 37.731575, 24.089031>,  <25.913559, 37.893852, 23.945112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.810829, 37.731575, 24.089031>,  <25.639612, 37.461113, 24.328896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.810829, 37.731575, 24.089031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658190, 0.687922, 0.305858,
		0.619327, 0.263770, 0.739500,
		0.428042, 0.676158, -0.599659,
		25.939241, 37.934422, 23.909134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.188080, 36.875164, 24.507113>,  <25.639612, 37.461113, 24.328896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.188080, 36.875164, 24.507113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793720, 36.866486, 24.440739>,  <24.557104, 36.861279, 24.400915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793720, 36.866486, 24.440739>,  <25.188080, 36.875164, 24.507113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.793720, 36.866486, 24.440739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118752, 0.607941, -0.785051,
		0.117911, -0.793685, -0.596792,
		-0.985898, -0.021696, -0.165935,
		24.497952, 36.859978, 24.390959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.991297, 36.690113, 23.751196>,  <25.188080, 36.875164, 24.507113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.991297, 36.690113, 23.751196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.678818, 36.901070, 23.884811>,  <24.491329, 37.027645, 23.964981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.678818, 36.901070, 23.884811>,  <24.991297, 36.690113, 23.751196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.678818, 36.901070, 23.884811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121678, 0.653448, -0.747128,
		-0.612310, -0.543010, -0.574645,
		-0.781199, 0.527396, 0.334040,
		24.444458, 37.059288, 23.985023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.754761, 36.844532, 23.227167>,  <24.991297, 36.690113, 23.751196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.754761, 36.844532, 23.227167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.550146, 37.102345, 23.454468>,  <24.427378, 37.257030, 23.590849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.550146, 37.102345, 23.454468>,  <24.754761, 36.844532, 23.227167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.550146, 37.102345, 23.454468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032900, 0.675533, -0.736595,
		-0.858632, -0.358099, -0.366764,
		-0.511535, 0.644531, 0.568253,
		24.396685, 37.295704, 23.624943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.203049, 37.107567, 22.814487>,  <24.754761, 36.844532, 23.227167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.203049, 37.107567, 22.814487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.292030, 37.375694, 23.097668>,  <24.345419, 37.536572, 23.267576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.292030, 37.375694, 23.097668>,  <24.203049, 37.107567, 22.814487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.292030, 37.375694, 23.097668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016949, 0.728693, -0.684630,
		-0.974796, 0.140299, 0.173461,
		0.222453, 0.670315, 0.707950,
		24.358767, 37.576790, 23.310053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.183285, 37.728775, 22.413597>,  <24.203049, 37.107567, 22.814487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.183285, 37.728775, 22.413597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302389, 37.861160, 22.771770>,  <24.373852, 37.940594, 22.986675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.302389, 37.861160, 22.771770>,  <24.183285, 37.728775, 22.413597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.302389, 37.861160, 22.771770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240869, 0.881585, -0.405944,
		-0.923754, 0.336556, 0.182781,
		0.297760, 0.330966, 0.895433,
		24.391718, 37.960449, 23.040400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.777164, 38.412788, 22.629650>,  <24.183285, 37.728775, 22.413597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.777164, 38.412788, 22.629650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.137766, 38.387131, 22.800846>,  <24.354126, 38.371735, 22.903564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.137766, 38.387131, 22.800846>,  <23.777164, 38.412788, 22.629650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.137766, 38.387131, 22.800846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287657, 0.827684, -0.481865,
		-0.323332, 0.557517, 0.764612,
		0.901504, -0.064143, 0.427990,
		24.408216, 38.367889, 22.929243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.950464, 39.086613, 22.854948>,  <23.777164, 38.412788, 22.629650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.950464, 39.086613, 22.854948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.300468, 38.894203, 22.833107>,  <24.510471, 38.778759, 22.820002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.300468, 38.894203, 22.833107>,  <23.950464, 39.086613, 22.854948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.300468, 38.894203, 22.833107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365402, 0.730223, -0.577283,
		0.317556, 0.485176, 0.814716,
		0.875008, -0.481019, -0.054602,
		24.562971, 38.749897, 22.816727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.414783, 39.654537, 22.766455>,  <23.950464, 39.086613, 22.854948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.414783, 39.654537, 22.766455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.652018, 39.343483, 22.683002>,  <24.794357, 39.156849, 22.632931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.652018, 39.343483, 22.683002>,  <24.414783, 39.654537, 22.766455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.652018, 39.343483, 22.683002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502398, 0.559925, -0.658847,
		0.629163, 0.285937, 0.722768,
		0.593085, -0.777640, -0.208630,
		24.829943, 39.110191, 22.620413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102188, 39.817543, 22.981163>,  <24.414783, 39.654537, 22.766455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.102188, 39.817543, 22.981163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085815, 39.545982, 22.687927>,  <25.075991, 39.383045, 22.511986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085815, 39.545982, 22.687927>,  <25.102188, 39.817543, 22.981163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.085815, 39.545982, 22.687927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705973, 0.499554, -0.502044,
		0.707055, -0.538093, 0.458835,
		-0.040933, -0.678898, -0.733091,
		25.073536, 39.342312, 22.468000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800222, 39.932648, 22.714401>,  <25.102188, 39.817543, 22.981163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800222, 39.932648, 22.714401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605598, 39.709320, 22.445614>,  <25.488825, 39.575325, 22.284342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.605598, 39.709320, 22.445614>,  <25.800222, 39.932648, 22.714401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.605598, 39.709320, 22.445614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634810, 0.302499, -0.710992,
		0.600229, -0.772512, 0.207242,
		-0.486560, -0.558318, -0.671968,
		25.459631, 39.541824, 22.244024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254099, 39.617130, 22.344332>,  <25.800222, 39.932648, 22.714401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254099, 39.617130, 22.344332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938297, 39.579872, 22.101677>,  <25.748816, 39.557518, 21.956085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938297, 39.579872, 22.101677>,  <26.254099, 39.617130, 22.344332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.938297, 39.579872, 22.101677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471033, 0.541696, -0.696199,
		0.393459, -0.835398, -0.383797,
		-0.789504, -0.093144, -0.606635,
		25.701447, 39.551929, 21.919685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502838, 39.344330, 21.668457>,  <26.254099, 39.617130, 22.344332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502838, 39.344330, 21.668457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149794, 39.520504, 21.602718>,  <25.937967, 39.626209, 21.563274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.149794, 39.520504, 21.602718>,  <26.502838, 39.344330, 21.668457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.149794, 39.520504, 21.602718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411701, 0.555425, -0.722499,
		-0.226933, -0.705349, -0.671554,
		-0.882612, 0.440438, -0.164348,
		25.885010, 39.652634, 21.553413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356565, 39.309223, 20.986006>,  <26.502838, 39.344330, 21.668457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.356565, 39.309223, 20.986006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112116, 39.605473, 21.097725>,  <25.965446, 39.783222, 21.164757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112116, 39.605473, 21.097725>,  <26.356565, 39.309223, 20.986006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112116, 39.605473, 21.097725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382643, 0.585309, -0.714841,
		-0.692903, -0.329984, -0.641090,
		-0.611122, 0.740624, 0.279296,
		25.928780, 39.827660, 21.181513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050146, 39.518764, 20.419409>,  <26.356565, 39.309223, 20.986006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050146, 39.518764, 20.419409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973459, 39.831570, 20.656628>,  <25.927448, 40.019253, 20.798958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973459, 39.831570, 20.656628>,  <26.050146, 39.518764, 20.419409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973459, 39.831570, 20.656628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077629, 0.614443, -0.785132,
		-0.978376, -0.104485, -0.178505,
		-0.191715, 0.782012, 0.593046,
		25.915945, 40.066174, 20.834541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508722, 39.855480, 20.084167>,  <26.050146, 39.518764, 20.419409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508722, 39.855480, 20.084167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675898, 40.148560, 20.299007>,  <25.776203, 40.324406, 20.427912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675898, 40.148560, 20.299007>,  <25.508722, 39.855480, 20.084167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675898, 40.148560, 20.299007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071310, 0.562930, -0.823423,
		-0.905671, 0.382442, 0.183023,
		0.417940, 0.732699, 0.537102,
		25.801279, 40.368370, 20.460138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.273672, 40.448345, 19.819014>,  <25.508722, 39.855480, 20.084167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.273672, 40.448345, 19.819014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.603081, 40.592331, 19.994392>,  <25.800726, 40.678722, 20.099621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.603081, 40.592331, 19.994392>,  <25.273672, 40.448345, 19.819014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.603081, 40.592331, 19.994392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150252, 0.606882, -0.780461,
		-0.547026, 0.708604, 0.445695,
		0.823521, 0.359965, 0.438449,
		25.850138, 40.700321, 20.125927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287535, 41.068684, 19.604559>,  <25.273672, 40.448345, 19.819014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287535, 41.068684, 19.604559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666830, 41.036266, 19.727375>,  <25.894407, 41.016815, 19.801064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.666830, 41.036266, 19.727375>,  <25.287535, 41.068684, 19.604559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.666830, 41.036266, 19.727375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292027, 0.602364, -0.742885,
		-0.124743, 0.794097, 0.594852,
		0.948240, -0.081043, 0.307039,
		25.951302, 41.011955, 19.819487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616755, 41.664429, 19.656698>,  <25.287535, 41.068684, 19.604559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616755, 41.664429, 19.656698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948172, 41.453922, 19.580215>,  <26.147022, 41.327618, 19.534327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.948172, 41.453922, 19.580215>,  <25.616755, 41.664429, 19.656698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948172, 41.453922, 19.580215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282353, 0.687583, -0.668960,
		0.483521, 0.500274, 0.718285,
		0.828543, -0.526266, -0.191207,
		26.196735, 41.296043, 19.522854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075338, 42.131683, 19.413574>,  <25.616755, 41.664429, 19.656698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075338, 42.131683, 19.413574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270092, 41.794533, 19.321918>,  <26.386944, 41.592243, 19.266926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270092, 41.794533, 19.321918>,  <26.075338, 42.131683, 19.413574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270092, 41.794533, 19.321918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404043, 0.449911, -0.796448,
		0.774399, 0.295196, 0.559612,
		0.486884, -0.842876, -0.229138,
		26.416157, 41.541672, 19.253178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811649, 42.194389, 19.357426>,  <26.075338, 42.131683, 19.413574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811649, 42.194389, 19.357426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689684, 41.886593, 19.132957>,  <26.616505, 41.701916, 18.998276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689684, 41.886593, 19.132957>,  <26.811649, 42.194389, 19.357426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689684, 41.886593, 19.132957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322129, 0.471175, -0.821114,
		0.896249, -0.431137, 0.104208,
		-0.304912, -0.769490, -0.561171,
		26.598209, 41.655746, 18.964605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452246, 41.887119, 18.954969>,  <26.811649, 42.194389, 19.357426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452246, 41.887119, 18.954969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097301, 41.840103, 18.776634>,  <26.884335, 41.811893, 18.669634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097301, 41.840103, 18.776634>,  <27.452246, 41.887119, 18.954969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097301, 41.840103, 18.776634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380040, 0.361058, -0.851591,
		0.261069, -0.925106, -0.275719,
		-0.887363, -0.117540, -0.445839,
		26.831093, 41.804840, 18.642883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479731, 41.571182, 18.232281>,  <27.452246, 41.887119, 18.954969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479731, 41.571182, 18.232281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198141, 41.843422, 18.313477>,  <27.029188, 42.006767, 18.362194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198141, 41.843422, 18.313477>,  <27.479731, 41.571182, 18.232281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198141, 41.843422, 18.313477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380045, 0.602434, -0.701882,
		-0.599990, -0.416961, -0.682756,
		-0.703973, 0.680600, 0.202991,
		26.986950, 42.047604, 18.374374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255615, 41.950432, 17.579802>,  <27.479731, 41.571182, 18.232281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255615, 41.950432, 17.579802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208044, 42.186356, 17.899296>,  <27.179501, 42.327911, 18.090992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208044, 42.186356, 17.899296>,  <27.255615, 41.950432, 17.579802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208044, 42.186356, 17.899296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401226, 0.764389, -0.504704,
		-0.908225, 0.260451, -0.327554,
		-0.118928, 0.589809, 0.798738,
		27.172365, 42.363297, 18.138918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879265, 42.443111, 17.461283>,  <27.255615, 41.950432, 17.579802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879265, 42.443111, 17.461283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075068, 42.599991, 17.772812>,  <27.192549, 42.694118, 17.959728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075068, 42.599991, 17.772812>,  <26.879265, 42.443111, 17.461283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075068, 42.599991, 17.772812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140865, 0.845847, -0.514490,
		-0.860548, 0.361554, 0.358799,
		0.489505, 0.392201, 0.778822,
		27.221918, 42.717651, 18.006458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563660, 43.005783, 17.882336>,  <26.879265, 42.443111, 17.461283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563660, 43.005783, 17.882336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960274, 43.035324, 17.839615>,  <27.198242, 43.053051, 17.813982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.960274, 43.035324, 17.839615>,  <26.563660, 43.005783, 17.882336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960274, 43.035324, 17.839615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123850, 0.785054, -0.606919,
		0.039023, 0.615008, 0.787555,
		0.991533, 0.073855, -0.106804,
		27.257734, 43.057480, 17.807573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981752, 43.513355, 17.870243>,  <26.563660, 43.005783, 17.882336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981752, 43.513355, 17.870243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868704, 43.890362, 17.941555>,  <25.800875, 44.116566, 17.984343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868704, 43.890362, 17.941555>,  <25.981752, 43.513355, 17.870243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868704, 43.890362, 17.941555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860347, -0.331259, 0.387388,
		0.424177, -0.043897, 0.904515,
		-0.282624, 0.942518, 0.178279,
		25.783916, 44.173119, 17.995039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.799303, 43.721249, 18.586908>,  <25.981752, 43.513355, 17.870243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.799303, 43.721249, 18.586908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560926, 43.909809, 18.326866>,  <25.417900, 44.022945, 18.170841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.560926, 43.909809, 18.326866>,  <25.799303, 43.721249, 18.586908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.560926, 43.909809, 18.326866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802544, -0.377713, 0.461797,
		-0.027861, 0.796941, 0.603415,
		-0.595942, 0.471401, -0.650103,
		25.382143, 44.051228, 18.131836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.334948, 44.103157, 18.985643>,  <25.799303, 43.721249, 18.586908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.334948, 44.103157, 18.985643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.167517, 43.959042, 18.652180>,  <25.067059, 43.872574, 18.452103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.167517, 43.959042, 18.652180>,  <25.334948, 44.103157, 18.985643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.167517, 43.959042, 18.652180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809464, -0.268197, 0.522339,
		-0.411776, 0.893456, -0.179377,
		-0.418579, -0.360286, -0.833658,
		25.041943, 43.850956, 18.402082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.674992, 44.437202, 18.880312>,  <25.334948, 44.103157, 18.985643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.674992, 44.437202, 18.880312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719383, 44.066540, 18.736649>,  <24.746017, 43.844143, 18.650450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719383, 44.066540, 18.736649>,  <24.674992, 44.437202, 18.880312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.719383, 44.066540, 18.736649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824238, -0.287735, 0.487688,
		-0.555261, 0.241911, -0.795716,
		0.110978, -0.926654, -0.359160,
		24.752676, 43.788544, 18.628901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.066103, 44.217365, 18.467297>,  <24.674992, 44.437202, 18.880312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.066103, 44.217365, 18.467297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259106, 43.911808, 18.638718>,  <24.374907, 43.728474, 18.741570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.259106, 43.911808, 18.638718>,  <24.066103, 44.217365, 18.467297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.259106, 43.911808, 18.638718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855744, -0.306791, 0.416631,
		-0.186785, -0.567759, -0.801724,
		0.482508, -0.763891, 0.428553,
		24.403858, 43.682640, 18.767282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.564068, 43.672371, 18.594179>,  <24.066103, 44.217365, 18.467297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.564068, 43.672371, 18.594179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.848570, 43.611385, 18.868660>,  <24.019272, 43.574795, 19.033348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.848570, 43.611385, 18.868660>,  <23.564068, 43.672371, 18.594179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.848570, 43.611385, 18.868660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562021, -0.709662, 0.424868,
		0.422194, -0.687849, -0.590438,
		0.711256, -0.152462, 0.686200,
		24.061947, 43.565647, 19.074520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.655157, 42.960541, 18.688007>,  <23.564068, 43.672371, 18.594179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.655157, 42.960541, 18.688007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.754530, 43.151127, 19.025352>,  <23.814154, 43.265480, 19.227760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.754530, 43.151127, 19.025352>,  <23.655157, 42.960541, 18.688007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.754530, 43.151127, 19.025352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256728, -0.807136, 0.531622,
		0.934009, -0.348588, -0.078197,
		0.248432, 0.476465, 0.843364,
		23.829060, 43.294067, 19.278362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.132982, 42.536297, 19.016546>,  <23.655157, 42.960541, 18.688007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.132982, 42.536297, 19.016546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.948980, 42.750687, 19.299709>,  <23.838579, 42.879318, 19.469606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.948980, 42.750687, 19.299709>,  <24.132982, 42.536297, 19.016546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.948980, 42.750687, 19.299709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164987, -0.834977, 0.524969,
		0.872454, 0.124691, 0.472520,
		-0.460003, 0.535971, 0.707907,
		23.810980, 42.911476, 19.512081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.302235, 42.194340, 19.504307>,  <24.132982, 42.536297, 19.016546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.302235, 42.194340, 19.504307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.016129, 42.409504, 19.682766>,  <23.844465, 42.538605, 19.789841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.016129, 42.409504, 19.682766>,  <24.302235, 42.194340, 19.504307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.016129, 42.409504, 19.682766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181399, -0.759420, 0.624801,
		0.674901, 0.365967, 0.640763,
		-0.715264, 0.537912, 0.446147,
		23.801550, 42.570877, 19.816610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.345276, 41.984497, 20.104292>,  <24.302235, 42.194340, 19.504307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.345276, 41.984497, 20.104292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.979788, 42.145996, 20.122669>,  <23.760496, 42.242893, 20.133696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.979788, 42.145996, 20.122669>,  <24.345276, 41.984497, 20.104292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.979788, 42.145996, 20.122669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306829, -0.759641, 0.573412,
		0.266412, 0.509840, 0.817978,
		-0.913718, 0.403743, 0.045943,
		23.705673, 42.267120, 20.136452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.206631, 42.039700, 20.811142>,  <24.345276, 41.984497, 20.104292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.206631, 42.039700, 20.811142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.858505, 42.016941, 20.615463>,  <23.649630, 42.003284, 20.498056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.858505, 42.016941, 20.615463>,  <24.206631, 42.039700, 20.811142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.858505, 42.016941, 20.615463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193861, -0.873536, 0.446490,
		-0.452736, 0.483423, 0.749221,
		-0.870315, -0.056897, -0.489198,
		23.597410, 41.999870, 20.468704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.795094, 41.794128, 21.365881>,  <24.206631, 42.039700, 20.811142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.795094, 41.794128, 21.365881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.622587, 41.727047, 21.011280>,  <23.519083, 41.686798, 20.798519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.622587, 41.727047, 21.011280>,  <23.795094, 41.794128, 21.365881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.622587, 41.727047, 21.011280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211424, -0.936429, 0.280003,
		-0.877103, 0.308183, 0.368393,
		-0.431265, -0.167704, -0.886502,
		23.493208, 41.676735, 20.745329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.005711, 41.623508, 21.614874>,  <23.795094, 41.794128, 21.365881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.005711, 41.623508, 21.614874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.052277, 41.480244, 21.244324>,  <23.080215, 41.394283, 21.021994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.052277, 41.480244, 21.244324>,  <23.005711, 41.623508, 21.614874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.052277, 41.480244, 21.244324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406080, -0.868358, 0.284701,
		-0.906393, 0.343038, -0.246530,
		0.116413, -0.358162, -0.926374,
		23.087200, 41.372795, 20.966412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.333221, 41.309097, 21.516376>,  <23.005711, 41.623508, 21.614874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.333221, 41.309097, 21.516376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.580181, 41.129826, 21.257778>,  <22.728357, 41.022263, 21.102619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.580181, 41.129826, 21.257778>,  <22.333221, 41.309097, 21.516376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.580181, 41.129826, 21.257778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384527, -0.888897, 0.249000,
		-0.686265, 0.094864, -0.721139,
		0.617398, -0.448177, -0.646496,
		22.765400, 40.995373, 21.063829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.921585, 40.842270, 21.172182>,  <22.333221, 41.309097, 21.516376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.921585, 40.842270, 21.172182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.284697, 40.689987, 21.101753>,  <22.502563, 40.598618, 21.059496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.284697, 40.689987, 21.101753>,  <21.921585, 40.842270, 21.172182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.284697, 40.689987, 21.101753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295947, -0.878803, 0.374326,
		-0.297238, -0.287699, -0.910428,
		0.907780, -0.380703, -0.176070,
		22.557030, 40.575775, 21.048933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.761618, 40.269669, 20.814629>,  <21.921585, 40.842270, 21.172182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.761618, 40.269669, 20.814629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.145199, 40.215576, 20.914330>,  <22.375347, 40.183121, 20.974150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.145199, 40.215576, 20.914330>,  <21.761618, 40.269669, 20.814629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.145199, 40.215576, 20.914330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184020, -0.965519, 0.184147,
		0.215755, -0.222456, -0.950770,
		0.958951, -0.135230, 0.249252,
		22.432884, 40.175007, 20.989105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.068521, 39.610939, 20.448645>,  <21.761618, 40.269669, 20.814629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.068521, 39.610939, 20.448645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.242550, 39.688423, 20.800369>,  <22.346966, 39.734913, 21.011404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.242550, 39.688423, 20.800369>,  <22.068521, 39.610939, 20.448645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.242550, 39.688423, 20.800369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111968, -0.957364, 0.266302,
		0.893408, -0.214315, -0.394831,
		0.435070, 0.193708, 0.879313,
		22.373072, 39.746536, 21.064163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.344112, 38.920406, 20.609568>,  <22.068521, 39.610939, 20.448645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.344112, 38.920406, 20.609568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.384901, 39.126617, 20.949883>,  <22.409374, 39.250343, 21.154072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.384901, 39.126617, 20.949883>,  <22.344112, 38.920406, 20.609568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.384901, 39.126617, 20.949883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157781, -0.836037, 0.525498,
		0.982195, -0.187825, -0.003914,
		0.101973, 0.515524, 0.850786,
		22.415493, 39.281273, 21.205118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.683041, 38.515568, 21.069235>,  <22.344112, 38.920406, 20.609568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.683041, 38.515568, 21.069235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.492416, 38.764439, 21.317680>,  <22.378042, 38.913761, 21.466747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.492416, 38.764439, 21.317680>,  <22.683041, 38.515568, 21.069235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.492416, 38.764439, 21.317680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218476, -0.768152, 0.601839,
		0.851561, 0.151115, 0.502004,
		-0.476563, 0.622178, 0.621114,
		22.349447, 38.951092, 21.504015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.802494, 38.187397, 21.632710>,  <22.683041, 38.515568, 21.069235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.802494, 38.187397, 21.632710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.507980, 38.434246, 21.743740>,  <22.331272, 38.582355, 21.810358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.507980, 38.434246, 21.743740>,  <22.802494, 38.187397, 21.632710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.507980, 38.434246, 21.743740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321191, -0.679783, 0.659342,
		0.595583, 0.396309, 0.698727,
		-0.736286, 0.617118, 0.277576,
		22.287094, 38.619381, 21.827013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.856073, 38.061092, 22.292810>,  <22.802494, 38.187397, 21.632710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.856073, 38.061092, 22.292810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.495964, 38.227871, 22.242760>,  <22.279898, 38.327938, 22.212729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.495964, 38.227871, 22.242760>,  <22.856073, 38.061092, 22.292810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.495964, 38.227871, 22.242760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372445, -0.588932, 0.717248,
		0.225365, 0.692324, 0.685492,
		-0.900275, 0.416950, -0.125127,
		22.225882, 38.352955, 22.205221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.699608, 38.369389, 22.918863>,  <22.856073, 38.061092, 22.292810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.699608, 38.369389, 22.918863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.351440, 38.312775, 22.730251>,  <22.142540, 38.278805, 22.617085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.351440, 38.312775, 22.730251>,  <22.699608, 38.369389, 22.918863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.351440, 38.312775, 22.730251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365861, -0.454922, 0.811906,
		-0.329425, 0.879211, 0.344189,
		-0.870416, -0.141537, -0.471532,
		22.090315, 38.270313, 22.588791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.102930, 38.645042, 23.365255>,  <22.699608, 38.369389, 22.918863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.102930, 38.645042, 23.365255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.996683, 38.366169, 23.098907>,  <21.932936, 38.198845, 22.939098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.996683, 38.366169, 23.098907>,  <22.102930, 38.645042, 23.365255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.996683, 38.366169, 23.098907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387212, -0.555373, 0.735954,
		-0.882901, 0.453314, -0.122443,
		-0.265617, -0.697186, -0.665868,
		21.916998, 38.157013, 22.899147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.358343, 38.432278, 23.423494>,  <22.102930, 38.645042, 23.365255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.358343, 38.432278, 23.423494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.522579, 38.120125, 23.234852>,  <21.621120, 37.932831, 23.121666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.522579, 38.120125, 23.234852>,  <21.358343, 38.432278, 23.423494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.522579, 38.120125, 23.234852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414664, -0.620444, 0.665660,
		-0.812076, -0.077758, -0.578348,
		0.410593, -0.780387, -0.471604,
		21.645758, 37.886009, 23.093370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.938276, 37.896774, 23.563995>,  <21.358343, 38.432278, 23.423494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.938276, 37.896774, 23.563995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.269161, 37.696995, 23.461025>,  <21.467691, 37.577126, 23.399242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.269161, 37.696995, 23.461025>,  <20.938276, 37.896774, 23.563995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.269161, 37.696995, 23.461025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098611, -0.580074, 0.808573,
		-0.553163, -0.643480, -0.529098,
		0.827216, -0.499447, -0.257421,
		21.517324, 37.547157, 23.383797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.692116, 37.189613, 23.545698>,  <20.938276, 37.896774, 23.563995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.692116, 37.189613, 23.545698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.083519, 37.221626, 23.621712>,  <21.318361, 37.240833, 23.667320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.083519, 37.221626, 23.621712>,  <20.692116, 37.189613, 23.545698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.083519, 37.221626, 23.621712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065625, -0.752802, 0.654968,
		0.195478, -0.653363, -0.731372,
		0.978510, 0.080036, 0.190033,
		21.377071, 37.245636, 23.678722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.456787, 36.976105, 24.240255>,  <20.692116, 37.189613, 23.545698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.456787, 36.976105, 24.240255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439402, 37.356903, 24.361462>,  <20.428970, 37.585381, 24.434185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439402, 37.356903, 24.361462>,  <20.456787, 36.976105, 24.240255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439402, 37.356903, 24.361462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283351, 0.279101, -0.917504,
		-0.958031, -0.125739, 0.257618,
		-0.043464, 0.951994, 0.303016,
		20.426363, 37.642502, 24.452366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.996258, 36.663895, 23.811304>,  <20.456787, 36.976105, 24.240255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.996258, 36.663895, 23.811304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.102957, 36.866596, 23.483391>,  <20.166977, 36.988216, 23.286644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.102957, 36.866596, 23.483391>,  <19.996258, 36.663895, 23.811304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.102957, 36.866596, 23.483391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779635, 0.613517, 0.125566,
		0.566581, 0.605636, 0.558741,
		0.266750, 0.506757, -0.819782,
		20.182981, 37.018623, 23.237457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.710070, 37.369522, 23.959387>,  <19.996258, 36.663895, 23.811304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.710070, 37.369522, 23.959387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.761318, 37.321739, 23.565571>,  <19.792068, 37.293068, 23.329281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.761318, 37.321739, 23.565571>,  <19.710070, 37.369522, 23.959387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.761318, 37.321739, 23.565571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932139, 0.324501, -0.160676,
		0.338678, 0.938312, -0.069774,
		0.128122, -0.119456, -0.984538,
		19.799755, 37.285904, 23.270210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.567024, 37.933849, 23.710661>,  <19.710070, 37.369522, 23.959387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.567024, 37.933849, 23.710661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.488352, 37.625225, 23.468666>,  <19.441149, 37.440052, 23.323469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.488352, 37.625225, 23.468666>,  <19.567024, 37.933849, 23.710661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.488352, 37.625225, 23.468666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960738, 0.274822, -0.038154,
		0.195703, 0.573731, -0.795320,
		-0.196681, -0.771561, -0.604989,
		19.429348, 37.393757, 23.287170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.349173, 38.334312, 23.104673>,  <19.567024, 37.933849, 23.710661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.349173, 38.334312, 23.104673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.212053, 37.967976, 23.188309>,  <19.129782, 37.748173, 23.238489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.212053, 37.967976, 23.188309>,  <19.349173, 38.334312, 23.104673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.212053, 37.967976, 23.188309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937943, 0.346109, -0.021729,
		-0.052467, -0.203560, -0.977656,
		-0.342799, -0.915845, 0.209087,
		19.109213, 37.693222, 23.251036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.927883, 37.995712, 22.605358>,  <19.349173, 38.334312, 23.104673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.927883, 37.995712, 22.605358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.814014, 37.857830, 22.963161>,  <18.745693, 37.775101, 23.177843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.814014, 37.857830, 22.963161>,  <18.927883, 37.995712, 22.605358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.814014, 37.857830, 22.963161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879326, 0.465504, -0.100459,
		-0.381767, -0.815161, -0.435622,
		-0.284674, -0.344702, 0.894506,
		18.728613, 37.754421, 23.231514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.762062, 29.148977, 27.343704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.152925, 29.064175, 27.349510>,  <30.387444, 29.013292, 27.352993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.152925, 29.064175, 27.349510>,  <29.762062, 29.148977, 27.343704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152925, 29.064175, 27.349510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181469, 0.796971, -0.576112,
		0.110572, 0.565588, 0.817242,
		0.977161, -0.212006, 0.014514,
		30.446074, 29.000572, 27.353865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017111, 29.754486, 27.313177>,  <29.762062, 29.148977, 27.343704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017111, 29.754486, 27.313177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.340559, 29.538746, 27.219166>,  <30.534628, 29.409302, 27.162760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.340559, 29.538746, 27.219166>,  <30.017111, 29.754486, 27.313177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340559, 29.538746, 27.219166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338140, 0.752962, -0.564544,
		0.481452, 0.377029, 0.791235,
		0.808619, -0.539349, -0.235026,
		30.583145, 29.376942, 27.148659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647879, 30.225777, 27.332502>,  <30.017111, 29.754486, 27.313177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647879, 30.225777, 27.332502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.759617, 29.908108, 27.116631>,  <30.826660, 29.717506, 26.987106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.759617, 29.908108, 27.116631>,  <30.647879, 30.225777, 27.332502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759617, 29.908108, 27.116631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419602, 0.606516, -0.675331,
		0.863654, -0.037799, 0.502665,
		0.279348, -0.794172, -0.539681,
		30.843422, 29.669857, 26.954725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328121, 30.250084, 27.222612>,  <30.647879, 30.225777, 27.332502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328121, 30.250084, 27.222612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.197079, 30.002747, 26.936863>,  <31.118454, 29.854343, 26.765413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.197079, 30.002747, 26.936863>,  <31.328121, 30.250084, 27.222612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197079, 30.002747, 26.936863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293372, 0.652149, -0.699024,
		0.898113, -0.438580, -0.032243,
		-0.327605, -0.618343, -0.714371,
		31.098797, 29.817244, 26.722551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894205, 30.197906, 26.772257>,  <31.328121, 30.250084, 27.222612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894205, 30.197906, 26.772257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.590473, 30.079674, 26.540379>,  <31.408234, 30.008734, 26.401251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.590473, 30.079674, 26.540379>,  <31.894205, 30.197906, 26.772257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590473, 30.079674, 26.540379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399909, 0.490789, -0.774079,
		0.513314, -0.819608, -0.254464,
		-0.759329, -0.295584, -0.579698,
		31.362675, 29.990999, 26.366468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177879, 30.010418, 26.032553>,  <31.894205, 30.197906, 26.772257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177879, 30.010418, 26.032553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.788530, 30.076694, 25.969185>,  <31.554922, 30.116461, 25.931164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.788530, 30.076694, 25.969185>,  <32.177879, 30.010418, 26.032553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788530, 30.076694, 25.969185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221975, 0.508678, -0.831850,
		-0.057245, -0.844863, -0.531911,
		-0.973370, 0.165690, -0.158419,
		31.496519, 30.126402, 25.921659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104877, 29.972994, 25.295029>,  <32.177879, 30.010418, 26.032553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104877, 29.972994, 25.295029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.797995, 30.187660, 25.435532>,  <31.613865, 30.316460, 25.519833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.797995, 30.187660, 25.435532>,  <32.104877, 29.972994, 25.295029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797995, 30.187660, 25.435532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107197, 0.647228, -0.754722,
		-0.632377, -0.541375, -0.554088,
		-0.767208, 0.536665, 0.351258,
		31.567833, 30.348660, 25.540909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640978, 30.142550, 24.620150>,  <32.104877, 29.972994, 25.295029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640978, 30.142550, 24.620150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.550467, 30.390911, 24.920357>,  <31.496161, 30.539928, 25.100481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.550467, 30.390911, 24.920357>,  <31.640978, 30.142550, 24.620150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550467, 30.390911, 24.920357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128779, 0.744671, -0.654890,
		-0.965512, -0.244839, -0.088544,
		-0.226279, 0.620902, 0.750519,
		31.482582, 30.577181, 25.145512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073830, 30.496077, 24.433119>,  <31.640978, 30.142550, 24.620150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073830, 30.496077, 24.433119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.244846, 30.732567, 24.706661>,  <31.347456, 30.874462, 24.870787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.244846, 30.732567, 24.706661>,  <31.073830, 30.496077, 24.433119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244846, 30.732567, 24.706661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184733, 0.797658, -0.574122,
		-0.884919, 0.119130, 0.450251,
		0.427541, 0.591228, 0.683855,
		31.373108, 30.909935, 24.911818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642599, 30.981890, 24.484482>,  <31.073830, 30.496077, 24.433119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642599, 30.981890, 24.484482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.970739, 31.137390, 24.652241>,  <31.167624, 31.230690, 24.752895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.970739, 31.137390, 24.652241>,  <30.642599, 30.981890, 24.484482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970739, 31.137390, 24.652241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146757, 0.851949, -0.502638,
		-0.552707, 0.350791, 0.755950,
		0.820352, 0.388752, 0.419397,
		31.216845, 31.254015, 24.778061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344353, 31.581509, 24.982391>,  <30.642599, 30.981890, 24.484482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344353, 31.581509, 24.982391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.727024, 31.648125, 24.886864>,  <30.956627, 31.688093, 24.829548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.727024, 31.648125, 24.886864>,  <30.344353, 31.581509, 24.982391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727024, 31.648125, 24.886864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247494, 0.897194, -0.365773,
		0.153352, 0.409032, 0.899542,
		0.956677, 0.166539, -0.238819,
		31.014027, 31.698086, 24.815218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437605, 32.254742, 25.085936>,  <30.344353, 31.581509, 24.982391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437605, 32.254742, 25.085936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.740961, 32.183865, 24.835033>,  <30.922974, 32.141338, 24.684492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.740961, 32.183865, 24.835033>,  <30.437605, 32.254742, 25.085936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740961, 32.183865, 24.835033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245257, 0.814042, -0.526483,
		0.603900, 0.553118, 0.573904,
		0.758389, -0.177189, -0.627256,
		30.968477, 32.130707, 24.646856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659637, 32.878910, 24.875883>,  <30.437605, 32.254742, 25.085936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659637, 32.878910, 24.875883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.853848, 32.662052, 24.601555>,  <30.970373, 32.531937, 24.436958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.853848, 32.662052, 24.601555>,  <30.659637, 32.878910, 24.875883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853848, 32.662052, 24.601555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109425, 0.740633, -0.662940,
		0.867347, 0.396921, 0.300273,
		0.485527, -0.542141, -0.685818,
		30.999506, 32.499409, 24.395809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243076, 33.324219, 24.614073>,  <30.659637, 32.878910, 24.875883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243076, 33.324219, 24.614073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.188019, 33.035076, 24.343212>,  <31.154984, 32.861591, 24.180696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.188019, 33.035076, 24.343212>,  <31.243076, 33.324219, 24.614073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188019, 33.035076, 24.343212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063035, 0.675879, -0.734312,
		0.988474, -0.143759, -0.047467,
		-0.137646, -0.722856, -0.677150,
		31.146725, 32.818218, 24.140066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756855, 33.376163, 24.130863>,  <31.243076, 33.324219, 24.614073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756855, 33.376163, 24.130863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.475607, 33.174374, 23.930412>,  <31.306858, 33.053299, 23.810143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.475607, 33.174374, 23.930412>,  <31.756855, 33.376163, 24.130863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475607, 33.174374, 23.930412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093555, 0.632993, -0.768484,
		0.704892, -0.587218, -0.397873,
		-0.703118, -0.504475, -0.501128,
		31.264671, 33.023033, 23.780073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027065, 33.272911, 23.384796>,  <31.756855, 33.376163, 24.130863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027065, 33.272911, 23.384796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.627865, 33.247658, 23.385399>,  <31.388344, 33.232506, 23.385761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.627865, 33.247658, 23.385399>,  <32.027065, 33.272911, 23.384796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627865, 33.247658, 23.385399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045888, 0.708569, -0.704148,
		0.043389, -0.702811, -0.710052,
		-0.998004, -0.063136, 0.001506,
		31.328465, 33.228718, 23.385851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917173, 33.249771, 22.724520>,  <32.027065, 33.272911, 23.384796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917173, 33.249771, 22.724520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.575418, 33.368404, 22.895191>,  <31.370365, 33.439583, 22.997595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.575418, 33.368404, 22.895191>,  <31.917173, 33.249771, 22.724520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575418, 33.368404, 22.895191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101170, 0.710462, -0.696425,
		-0.509690, -0.638186, -0.577006,
		-0.854389, 0.296585, 0.426681,
		31.319101, 33.457378, 23.023195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675753, 33.563236, 22.129307>,  <31.917173, 33.249771, 22.724520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675753, 33.563236, 22.129307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.426498, 33.685966, 22.417072>,  <31.276945, 33.759605, 22.589731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.426498, 33.685966, 22.417072>,  <31.675753, 33.563236, 22.129307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426498, 33.685966, 22.417072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120927, 0.870976, -0.476212,
		-0.772709, -0.383741, -0.505632,
		-0.623136, 0.306829, 0.719415,
		31.239557, 33.778015, 22.632896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092096, 33.789703, 21.864620>,  <31.675753, 33.563236, 22.129307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092096, 33.789703, 21.864620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.043579, 33.972160, 22.217262>,  <31.014469, 34.081635, 22.428846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.043579, 33.972160, 22.217262>,  <31.092096, 33.789703, 21.864620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043579, 33.972160, 22.217262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314589, 0.824711, -0.469985,
		-0.941446, -0.334350, 0.043464,
		-0.121294, 0.456139, 0.881604,
		31.007191, 34.109001, 22.481743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389256, 34.122349, 21.917692>,  <31.092096, 33.789703, 21.864620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389256, 34.122349, 21.917692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.586605, 34.324684, 22.200737>,  <30.705015, 34.446087, 22.370564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.586605, 34.324684, 22.200737>,  <30.389256, 34.122349, 21.917692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586605, 34.324684, 22.200737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399955, 0.854343, -0.331866,
		-0.772412, -0.119279, 0.623821,
		0.493372, 0.505837, 0.707611,
		30.734617, 34.476437, 22.413021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899794, 34.481140, 22.244806>,  <30.389256, 34.122349, 21.917692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899794, 34.481140, 22.244806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.253586, 34.650703, 22.322777>,  <30.465860, 34.752441, 22.369558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.253586, 34.650703, 22.322777>,  <29.899794, 34.481140, 22.244806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253586, 34.650703, 22.322777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370571, 0.892089, -0.258563,
		-0.283499, 0.156460, 0.946123,
		0.884481, 0.423908, 0.194927,
		30.518930, 34.777874, 22.381254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822466, 35.050362, 22.687115>,  <29.899794, 34.481140, 22.244806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822466, 35.050362, 22.687115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.170835, 35.155167, 22.520821>,  <30.379858, 35.218052, 22.421043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.170835, 35.155167, 22.520821>,  <29.822466, 35.050362, 22.687115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170835, 35.155167, 22.520821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342603, 0.930240, -0.131439,
		0.352294, 0.256906, 0.899938,
		0.870926, 0.262017, -0.415734,
		30.432114, 35.233772, 22.396101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063026, 34.962063, 22.348217>,  <29.822466, 35.050362, 22.687115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063026, 34.962063, 22.348217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.672281, 35.047314, 22.355335>,  <28.437834, 35.098465, 22.359606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.672281, 35.047314, 22.355335>,  <29.063026, 34.962063, 22.348217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672281, 35.047314, 22.355335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202006, -0.946811, 0.250485,
		0.070232, 0.241096, 0.967957,
		-0.976863, 0.213125, 0.017794,
		28.379223, 35.111252, 22.360674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792540, 34.772263, 23.056190>,  <29.063026, 34.962063, 22.348217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792540, 34.772263, 23.056190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.470104, 34.785809, 22.819859>,  <28.276644, 34.793938, 22.678061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.470104, 34.785809, 22.819859>,  <28.792540, 34.772263, 23.056190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470104, 34.785809, 22.819859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345477, -0.837511, 0.423345,
		-0.480489, 0.545370, 0.686806,
		-0.806087, 0.033863, -0.590828,
		28.228279, 34.795967, 22.642611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181854, 34.714394, 23.498825>,  <28.792540, 34.772263, 23.056190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181854, 34.714394, 23.498825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.079260, 34.609238, 23.126781>,  <28.017704, 34.546143, 22.903555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.079260, 34.609238, 23.126781>,  <28.181854, 34.714394, 23.498825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079260, 34.609238, 23.126781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359599, -0.867266, 0.344293,
		-0.897164, 0.422773, 0.127905,
		-0.256486, -0.262893, -0.930109,
		28.002314, 34.530369, 22.847750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543371, 34.551430, 23.643787>,  <28.181854, 34.714394, 23.498825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543371, 34.551430, 23.643787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.610739, 34.363590, 23.297119>,  <27.651159, 34.250889, 23.089119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.610739, 34.363590, 23.297119>,  <27.543371, 34.551430, 23.643787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610739, 34.363590, 23.297119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422831, -0.828646, 0.366823,
		-0.890421, 0.304675, -0.338119,
		0.168419, -0.469594, -0.866670,
		27.661264, 34.222713, 23.037119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938341, 34.073818, 23.529106>,  <27.543371, 34.551430, 23.643787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938341, 34.073818, 23.529106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.232414, 33.924641, 23.302685>,  <27.408859, 33.835133, 23.166832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.232414, 33.924641, 23.302685>,  <26.938341, 34.073818, 23.529106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232414, 33.924641, 23.302685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192608, -0.915558, 0.353065,
		-0.649928, -0.150541, -0.744936,
		0.735183, -0.372948, -0.566052,
		27.452969, 33.812756, 23.132870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608812, 33.669849, 23.141785>,  <26.938341, 34.073818, 23.529106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608812, 33.669849, 23.141785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.985674, 33.536255, 23.153103>,  <27.211790, 33.456100, 23.159893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.985674, 33.536255, 23.153103>,  <26.608812, 33.669849, 23.141785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985674, 33.536255, 23.153103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322656, -0.880852, 0.346399,
		-0.090766, -0.335491, -0.937660,
		0.942154, -0.333983, 0.028296,
		27.268320, 33.436058, 23.161592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589460, 32.939758, 23.026226>,  <26.608812, 33.669849, 23.141785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589460, 32.939758, 23.026226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.958405, 32.988377, 23.172913>,  <27.179771, 33.017548, 23.260925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.958405, 32.988377, 23.172913>,  <26.589460, 32.939758, 23.026226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958405, 32.988377, 23.172913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030343, -0.923497, 0.382404,
		0.385142, -0.363841, -0.848108,
		0.922359, 0.121545, 0.366717,
		27.235111, 33.024841, 23.282928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.875488, 32.237431, 23.053480>,  <26.589460, 32.939758, 23.026226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.875488, 32.237431, 23.053480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.108513, 32.458797, 23.291588>,  <27.248327, 32.591618, 23.434452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.108513, 32.458797, 23.291588>,  <26.875488, 32.237431, 23.053480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108513, 32.458797, 23.291588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057917, -0.758786, 0.648760,
		0.810720, -0.343467, -0.474093,
		0.582562, 0.553421, 0.595270,
		27.283281, 32.624825, 23.470169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.423218, 31.822487, 23.227211>,  <26.875488, 32.237431, 23.053480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.423218, 31.822487, 23.227211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.410475, 32.101910, 23.513149>,  <27.402830, 32.269562, 23.684711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.410475, 32.101910, 23.513149>,  <27.423218, 31.822487, 23.227211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410475, 32.101910, 23.513149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025916, -0.714390, 0.699267,
		0.999156, 0.040802, 0.004654,
		-0.031857, 0.698557, 0.714845,
		27.400917, 32.311478, 23.727602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014076, 31.693846, 23.635998>,  <27.423218, 31.822487, 23.227211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014076, 31.693846, 23.635998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.757498, 31.895409, 23.867386>,  <27.603552, 32.016346, 24.006218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.757498, 31.895409, 23.867386>,  <28.014076, 31.693846, 23.635998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757498, 31.895409, 23.867386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187133, -0.628482, 0.754978,
		0.743996, 0.592527, 0.308839,
		-0.641445, 0.503906, 0.578469,
		27.565063, 32.046581, 24.040926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415609, 31.949593, 24.268047>,  <28.014076, 31.693846, 23.635998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415609, 31.949593, 24.268047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.025721, 31.953629, 24.357327>,  <27.791788, 31.956051, 24.410894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.025721, 31.953629, 24.357327>,  <28.415609, 31.949593, 24.268047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025721, 31.953629, 24.357327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197819, -0.425410, 0.883116,
		0.103862, 0.904944, 0.412660,
		-0.974721, 0.010090, 0.223199,
		27.733305, 31.956656, 24.424286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370787, 32.178013, 24.946865>,  <28.415609, 31.949593, 24.268047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370787, 32.178013, 24.946865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.031757, 31.981934, 24.865551>,  <27.828341, 31.864285, 24.816763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.031757, 31.981934, 24.865551>,  <28.370787, 32.178013, 24.946865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031757, 31.981934, 24.865551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040730, -0.442025, 0.896077,
		-0.529115, 0.751210, 0.394614,
		-0.847572, -0.490201, -0.203285,
		27.777485, 31.834873, 24.804565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995687, 32.166080, 25.579252>,  <28.370787, 32.178013, 24.946865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995687, 32.166080, 25.579252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.817986, 31.883137, 25.359333>,  <27.711365, 31.713369, 25.227381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.817986, 31.883137, 25.359333>,  <27.995687, 32.166080, 25.579252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817986, 31.883137, 25.359333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129596, -0.556489, 0.820686,
		-0.886477, 0.435846, 0.155552,
		-0.444255, -0.707361, -0.549798,
		27.684710, 31.670929, 25.194393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445126, 31.911068, 25.950569>,  <27.995687, 32.166080, 25.579252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445126, 31.911068, 25.950569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.506111, 31.611454, 25.692669>,  <27.542702, 31.431686, 25.537930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.506111, 31.611454, 25.692669>,  <27.445126, 31.911068, 25.950569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506111, 31.611454, 25.692669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105180, -0.660970, 0.743005,
		-0.982697, -0.045465, -0.179555,
		0.152461, -0.749034, -0.644751,
		27.551849, 31.386744, 25.499243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972996, 31.471073, 26.164215>,  <27.445126, 31.911068, 25.950569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972996, 31.471073, 26.164215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.208683, 31.238152, 25.940163>,  <27.350096, 31.098398, 25.805731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.208683, 31.238152, 25.940163>,  <26.972996, 31.471073, 26.164215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208683, 31.238152, 25.940163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065905, -0.725579, 0.684976,
		-0.805283, -0.366684, -0.465899,
		0.589216, -0.582304, -0.560130,
		27.385448, 31.063461, 25.772123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590281, 30.844770, 26.097382>,  <26.972996, 31.471073, 26.164215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590281, 30.844770, 26.097382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.975914, 30.758762, 26.035019>,  <27.207294, 30.707157, 25.997601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.975914, 30.758762, 26.035019>,  <26.590281, 30.844770, 26.097382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975914, 30.758762, 26.035019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094385, -0.826059, 0.555624,
		-0.248260, -0.520953, -0.816686,
		0.964084, -0.215022, -0.155907,
		27.265139, 30.694256, 25.988247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587034, 30.126591, 26.108746>,  <26.590281, 30.844770, 26.097382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587034, 30.126591, 26.108746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.972656, 30.227848, 26.141029>,  <27.204029, 30.288603, 26.160400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.972656, 30.227848, 26.141029>,  <26.587034, 30.126591, 26.108746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972656, 30.227848, 26.141029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139690, -0.741291, 0.656486,
		0.226015, -0.621615, -0.750008,
		0.964056, 0.253145, 0.080709,
		27.261873, 30.303791, 26.165241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052185, 29.428427, 26.055899>,  <26.587034, 30.126591, 26.108746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052185, 29.428427, 26.055899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.264444, 29.707783, 26.248009>,  <27.391800, 29.875397, 26.363274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.264444, 29.707783, 26.248009>,  <27.052185, 29.428427, 26.055899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.264444, 29.707783, 26.248009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205554, -0.655754, 0.726453,
		0.822290, -0.286768, -0.491532,
		0.530648, 0.698391, 0.480274,
		27.423639, 29.917299, 26.392090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.940744, 29.106953, 26.217535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.818645, 29.390282, 26.472126>,  <27.745386, 29.560280, 26.624880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.818645, 29.390282, 26.472126>,  <27.940744, 29.106953, 26.217535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818645, 29.390282, 26.472126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438049, -0.489020, 0.754303,
		0.845540, 0.509057, -0.161008,
		-0.305247, 0.708322, 0.636477,
		27.727072, 29.602777, 26.663069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402407, 29.073160, 26.647669>,  <27.940744, 29.106953, 26.217535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402407, 29.073160, 26.647669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.137915, 29.298668, 26.845634>,  <27.979219, 29.433973, 26.964415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.137915, 29.298668, 26.845634>,  <28.402407, 29.073160, 26.647669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137915, 29.298668, 26.845634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361504, -0.338613, 0.868709,
		0.657336, 0.753330, 0.020096,
		-0.661229, 0.563769, 0.494915,
		27.939547, 29.467798, 26.994108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763212, 29.521034, 27.116123>,  <28.402407, 29.073160, 26.647669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763212, 29.521034, 27.116123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.397091, 29.465813, 27.267471>,  <28.177418, 29.432680, 27.358280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.397091, 29.465813, 27.267471>,  <28.763212, 29.521034, 27.116123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.397091, 29.465813, 27.267471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402509, -0.279897, 0.871575,
		-0.014422, 0.950052, 0.311760,
		-0.915302, -0.138056, 0.378368,
		28.122499, 29.424397, 27.380981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003223, 29.684685, 27.798031>,  <28.763212, 29.521034, 27.116123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003223, 29.684685, 27.798031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.619446, 29.575947, 27.827881>,  <28.389179, 29.510704, 27.845791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.619446, 29.575947, 27.827881>,  <29.003223, 29.684685, 27.798031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619446, 29.575947, 27.827881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209295, -0.509576, 0.834583,
		-0.188853, 0.816353, 0.545805,
		-0.959443, -0.271847, 0.074624,
		28.331614, 29.494392, 27.850267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663475, 29.835054, 28.472376>,  <29.003223, 29.684685, 27.798031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663475, 29.835054, 28.472376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.422855, 29.534363, 28.364269>,  <28.278484, 29.353949, 28.299406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.422855, 29.534363, 28.364269>,  <28.663475, 29.835054, 28.472376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422855, 29.534363, 28.364269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305899, -0.529302, 0.791369,
		-0.737947, 0.393373, 0.548354,
		-0.601548, -0.751729, -0.270264,
		28.242392, 29.308844, 28.283190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195824, 29.771437, 28.906313>,  <28.663475, 29.835054, 28.472376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195824, 29.771437, 28.906313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.188543, 29.409145, 28.736927>,  <28.184175, 29.191771, 28.635296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.188543, 29.409145, 28.736927>,  <28.195824, 29.771437, 28.906313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188543, 29.409145, 28.736927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100999, -0.423035, 0.900467,
		-0.994720, -0.026378, 0.099179,
		-0.018204, -0.905729, -0.423466,
		28.183083, 29.137426, 28.609888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620932, 29.326454, 29.181559>,  <28.195824, 29.771437, 28.906313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620932, 29.326454, 29.181559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.890532, 29.070095, 29.034603>,  <28.052292, 28.916281, 28.946430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.890532, 29.070095, 29.034603>,  <27.620932, 29.326454, 29.181559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890532, 29.070095, 29.034603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027307, -0.518600, 0.854581,
		-0.738226, -0.565956, -0.367038,
		0.674001, -0.640896, -0.367390,
		28.092731, 28.877827, 28.924387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318661, 28.676996, 29.437180>,  <27.620932, 29.326454, 29.181559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318661, 28.676996, 29.437180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.693125, 28.613228, 29.311836>,  <27.917803, 28.574966, 29.236629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.693125, 28.613228, 29.311836>,  <27.318661, 28.676996, 29.437180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693125, 28.613228, 29.311836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087908, -0.756838, 0.647664,
		-0.340411, -0.633863, -0.694506,
		0.936159, -0.159419, -0.313358,
		27.973972, 28.565401, 29.217829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442028, 27.848610, 29.222704>,  <27.318661, 28.676996, 29.437180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442028, 27.848610, 29.222704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.794493, 28.001442, 29.334110>,  <28.005972, 28.093142, 29.400953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.794493, 28.001442, 29.334110>,  <27.442028, 27.848610, 29.222704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794493, 28.001442, 29.334110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063172, -0.678912, 0.731497,
		0.468576, -0.626973, -0.622367,
		0.881162, 0.382078, 0.278515,
		28.058842, 28.116066, 29.417665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741383, 27.219135, 29.501474>,  <27.442028, 27.848610, 29.222704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741383, 27.219135, 29.501474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.949793, 27.528526, 29.645844>,  <28.074839, 27.714161, 29.732464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.949793, 27.528526, 29.645844>,  <27.741383, 27.219135, 29.501474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949793, 27.528526, 29.645844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224116, -0.531989, 0.816554,
		0.823592, -0.344558, -0.450529,
		0.521027, 0.773477, 0.360921,
		28.106100, 27.760569, 29.754120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356936, 26.881056, 29.744930>,  <27.741383, 27.219135, 29.501474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356936, 26.881056, 29.744930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.331076, 27.232372, 29.934425>,  <28.315559, 27.443161, 30.048122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.331076, 27.232372, 29.934425>,  <28.356936, 26.881056, 29.744930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331076, 27.232372, 29.934425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280238, -0.439648, 0.853332,
		0.957751, 0.187925, -0.217708,
		-0.064648, 0.878290, 0.473738,
		28.311682, 27.495859, 30.076546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834682, 26.787979, 30.176723>,  <28.356936, 26.881056, 29.744930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834682, 26.787979, 30.176723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.600388, 27.074944, 30.327579>,  <28.459810, 27.247122, 30.418093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.600388, 27.074944, 30.327579>,  <28.834682, 26.787979, 30.176723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.600388, 27.074944, 30.327579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138601, -0.369806, 0.918713,
		0.798563, 0.590396, 0.117175,
		-0.585737, 0.717409, 0.377142,
		28.424667, 27.290167, 30.440722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.219921, 27.103479, 30.768494>,  <28.834682, 26.787979, 30.176723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.219921, 27.103479, 30.768494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.834047, 27.192810, 30.824368>,  <28.602524, 27.246408, 30.857893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.834047, 27.192810, 30.824368>,  <29.219921, 27.103479, 30.768494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834047, 27.192810, 30.824368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038239, -0.405945, 0.913097,
		0.260623, 0.886191, 0.383068,
		-0.964683, 0.223326, 0.139686,
		28.544641, 27.259808, 30.866274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227100, 27.356943, 31.429043>,  <29.219921, 27.103479, 30.768494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227100, 27.356943, 31.429043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.854670, 27.249050, 31.330784>,  <28.631212, 27.184315, 31.271828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.854670, 27.249050, 31.330784>,  <29.227100, 27.356943, 31.429043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854670, 27.249050, 31.330784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162294, -0.296804, 0.941046,
		-0.326740, 0.916053, 0.232571,
		-0.931076, -0.269732, -0.245647,
		28.575346, 27.168131, 31.257090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866688, 27.479996, 32.146152>,  <29.227100, 27.356943, 31.429043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866688, 27.479996, 32.146152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.621355, 27.252464, 31.926968>,  <28.474155, 27.115946, 31.795458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.621355, 27.252464, 31.926968>,  <28.866688, 27.479996, 32.146152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621355, 27.252464, 31.926968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344077, -0.432053, 0.833631,
		-0.710939, 0.699833, 0.069272,
		-0.613333, -0.568826, -0.547960,
		28.437355, 27.081816, 31.762579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267126, 27.578291, 32.412334>,  <28.866688, 27.479996, 32.146152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267126, 27.578291, 32.412334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.236923, 27.225975, 32.225353>,  <28.218801, 27.014585, 32.113163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.236923, 27.225975, 32.225353>,  <28.267126, 27.578291, 32.412334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236923, 27.225975, 32.225353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388582, -0.405739, 0.827272,
		-0.918315, 0.244107, -0.311623,
		-0.075506, -0.880788, -0.467453,
		28.214272, 26.961739, 32.085117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708099, 27.350121, 32.664661>,  <28.267126, 27.578291, 32.412334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708099, 27.350121, 32.664661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.879286, 27.009468, 32.543617>,  <27.981997, 26.805077, 32.470989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.879286, 27.009468, 32.543617>,  <27.708099, 27.350121, 32.664661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879286, 27.009468, 32.543617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172432, -0.405611, 0.897634,
		-0.887195, -0.331975, -0.320435,
		0.427964, -0.851629, -0.302613,
		28.007675, 26.753979, 32.452835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297054, 26.898384, 32.836300>,  <27.708099, 27.350121, 32.664661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297054, 26.898384, 32.836300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.631775, 26.684551, 32.788998>,  <27.832607, 26.556252, 32.760616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.631775, 26.684551, 32.788998>,  <27.297054, 26.898384, 32.836300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631775, 26.684551, 32.788998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183937, -0.477929, 0.858924,
		-0.515690, -0.696993, -0.498261,
		0.836798, -0.534587, -0.118261,
		27.882816, 26.524178, 32.753521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063530, 26.207945, 32.969978>,  <27.297054, 26.898384, 32.836300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063530, 26.207945, 32.969978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.461679, 26.205441, 33.008335>,  <27.700569, 26.203938, 33.031349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.461679, 26.205441, 33.008335>,  <27.063530, 26.207945, 32.969978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461679, 26.205441, 33.008335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086329, -0.496676, 0.863632,
		0.042221, -0.867913, -0.494918,
		0.995371, -0.006263, 0.095896,
		27.760290, 26.203562, 33.037106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279367, 25.557970, 33.090427>,  <27.063530, 26.207945, 32.969978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279367, 25.557970, 33.090427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.585335, 25.767399, 33.240505>,  <27.768915, 25.893057, 33.330551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.585335, 25.767399, 33.240505>,  <27.279367, 25.557970, 33.090427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585335, 25.767399, 33.240505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045031, -0.537597, 0.841999,
		0.642553, -0.660955, -0.387640,
		0.764917, 0.523573, 0.375197,
		27.814810, 25.924471, 33.353065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693146, 25.116446, 33.363304>,  <27.279367, 25.557970, 33.090427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693146, 25.116446, 33.363304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.811623, 25.448017, 33.553104>,  <27.882710, 25.646959, 33.666985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.811623, 25.448017, 33.553104>,  <27.693146, 25.116446, 33.363304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811623, 25.448017, 33.553104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121232, -0.460144, 0.879528,
		0.947403, -0.318035, -0.035799,
		0.296194, 0.828927, 0.474498,
		27.900480, 25.696695, 33.695454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313751, 25.004763, 33.666306>,  <27.693146, 25.116446, 33.363304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313751, 25.004763, 33.666306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.119106, 25.294163, 33.862164>,  <28.002319, 25.467804, 33.979679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.119106, 25.294163, 33.862164>,  <28.313751, 25.004763, 33.666306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119106, 25.294163, 33.862164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045615, -0.538673, 0.841280,
		0.872425, 0.431714, 0.229123,
		-0.486614, 0.723502, 0.489644,
		27.973122, 25.511213, 34.009056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750128, 24.782793, 34.254128>,  <28.313751, 25.004763, 33.666306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750128, 24.782793, 34.254128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.057217, 24.828453, 34.506340>,  <29.241470, 24.855848, 34.657669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.057217, 24.828453, 34.506340>,  <28.750128, 24.782793, 34.254128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057217, 24.828453, 34.506340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544891, 0.401499, -0.736133,
		-0.337188, 0.908718, 0.246041,
		0.767722, 0.114149, 0.630533,
		29.287533, 24.862698, 34.695499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938587, 25.428139, 34.215771>,  <28.750128, 24.782793, 34.254128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938587, 25.428139, 34.215771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.264606, 25.252941, 34.367485>,  <29.460218, 25.147823, 34.458515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.264606, 25.252941, 34.367485>,  <28.938587, 25.428139, 34.215771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264606, 25.252941, 34.367485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578644, 0.648640, -0.494406,
		-0.029475, 0.622437, 0.782115,
		0.815048, -0.437993, 0.379288,
		29.509121, 25.121544, 34.481270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295517, 25.960333, 34.324753>,  <28.938587, 25.428139, 34.215771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295517, 25.960333, 34.324753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.537231, 25.642181, 34.305965>,  <29.682261, 25.451290, 34.294693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.537231, 25.642181, 34.305965>,  <29.295517, 25.960333, 34.324753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537231, 25.642181, 34.305965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654834, 0.529365, -0.539412,
		0.453903, 0.295202, 0.840731,
		0.604288, -0.795380, -0.046972,
		29.718517, 25.403568, 34.291874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038811, 26.073675, 34.587906>,  <29.295517, 25.960333, 34.324753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038811, 26.073675, 34.587906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.052101, 25.779728, 34.316948>,  <30.060076, 25.603359, 34.154373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.052101, 25.779728, 34.316948>,  <30.038811, 26.073675, 34.587906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052101, 25.779728, 34.316948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586387, 0.563189, -0.582210,
		0.809349, -0.377870, 0.449630,
		0.033227, -0.734869, -0.677395,
		30.062069, 25.559267, 34.113728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621447, 26.311653, 34.253704>,  <30.038811, 26.073675, 34.587906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621447, 26.311653, 34.253704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.463974, 26.025681, 34.022572>,  <30.369490, 25.854097, 33.883892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.463974, 26.025681, 34.022572>,  <30.621447, 26.311653, 34.253704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463974, 26.025681, 34.022572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460209, 0.390857, -0.797144,
		0.795753, -0.579742, 0.175146,
		-0.393681, -0.714934, -0.577828,
		30.345869, 25.811201, 33.849224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124090, 26.144032, 33.769825>,  <30.621447, 26.311653, 34.253704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124090, 26.144032, 33.769825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.816187, 25.969540, 33.583416>,  <30.631445, 25.864845, 33.471573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.816187, 25.969540, 33.583416>,  <31.124090, 26.144032, 33.769825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816187, 25.969540, 33.583416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503628, 0.033537, -0.863269,
		0.392214, -0.899209, 0.193882,
		-0.769758, -0.436231, -0.466021,
		30.585260, 25.838671, 33.443611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370783, 25.547132, 33.304745>,  <31.124090, 26.144032, 33.769825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370783, 25.547132, 33.304745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.029356, 25.700001, 33.163113>,  <30.824501, 25.791721, 33.078133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.029356, 25.700001, 33.163113>,  <31.370783, 25.547132, 33.304745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029356, 25.700001, 33.163113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408625, 0.069490, -0.910053,
		-0.323189, -0.921476, -0.215478,
		-0.853566, 0.382169, -0.354080,
		30.773287, 25.814651, 33.056889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262386, 25.261972, 32.703781>,  <31.370783, 25.547132, 33.304745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262386, 25.261972, 32.703781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.035175, 25.585789, 32.644463>,  <30.898849, 25.780079, 32.608871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.035175, 25.585789, 32.644463>,  <31.262386, 25.261972, 32.703781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035175, 25.585789, 32.644463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368434, 0.088997, -0.925384,
		-0.735937, -0.580281, -0.348814,
		-0.568026, 0.809539, -0.148299,
		30.864767, 25.828651, 32.599972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042967, 25.298025, 31.958263>,  <31.262386, 25.261972, 32.703781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042967, 25.298025, 31.958263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.995922, 25.672050, 32.092026>,  <30.967695, 25.896465, 32.172283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.995922, 25.672050, 32.092026>,  <31.042967, 25.298025, 31.958263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995922, 25.672050, 32.092026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180656, 0.351269, -0.918680,
		-0.976489, -0.047635, -0.210238,
		-0.117612, 0.935062, 0.334405,
		30.960638, 25.952570, 32.192348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728132, 25.547535, 31.461657>,  <31.042967, 25.298025, 31.958263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728132, 25.547535, 31.461657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.839188, 25.880726, 31.653099>,  <30.905821, 26.080641, 31.767965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.839188, 25.880726, 31.653099>,  <30.728132, 25.547535, 31.461657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839188, 25.880726, 31.653099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044146, 0.486605, -0.872506,
		-0.959670, 0.263371, 0.098329,
		0.277640, 0.832977, 0.478607,
		30.922480, 26.130619, 31.796680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347580, 26.030434, 31.144455>,  <30.728132, 25.547535, 31.461657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347580, 26.030434, 31.144455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.612494, 26.261368, 31.335480>,  <30.771442, 26.399927, 31.450094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.612494, 26.261368, 31.335480>,  <30.347580, 26.030434, 31.144455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612494, 26.261368, 31.335480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008762, 0.631374, -0.775429,
		-0.749201, 0.517739, 0.413090,
		0.662284, 0.577333, 0.477563,
		30.811178, 26.434568, 31.478748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930107, 26.638107, 31.160616>,  <30.347580, 26.030434, 31.144455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930107, 26.638107, 31.160616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.323864, 26.705322, 31.181545>,  <30.560118, 26.745651, 31.194103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.323864, 26.705322, 31.181545>,  <29.930107, 26.638107, 31.160616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323864, 26.705322, 31.181545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081972, 0.700851, -0.708582,
		-0.155737, 0.693233, 0.703686,
		0.984392, 0.168035, 0.052323,
		30.619181, 26.755733, 31.197243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023573, 27.418121, 31.168943>,  <29.930107, 26.638107, 31.160616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023573, 27.418121, 31.168943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.364595, 27.248405, 31.046879>,  <30.569210, 27.146576, 30.973640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.364595, 27.248405, 31.046879>,  <30.023573, 27.418121, 31.168943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364595, 27.248405, 31.046879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075570, 0.677839, -0.731316,
		0.517139, 0.600429, 0.609961,
		0.852558, -0.424287, -0.305163,
		30.620363, 27.121119, 30.955330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268713, 27.977877, 30.845064>,  <30.023573, 27.418121, 31.168943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268713, 27.977877, 30.845064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.494074, 27.678787, 30.704498>,  <30.629290, 27.499334, 30.620159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.494074, 27.678787, 30.704498>,  <30.268713, 27.977877, 30.845064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494074, 27.678787, 30.704498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117269, 0.493413, -0.861853,
		0.817819, 0.444358, 0.365674,
		0.563400, -0.747722, -0.351413,
		30.663094, 27.454470, 30.599073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916023, 28.283222, 30.556623>,  <30.268713, 27.977877, 30.845064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916023, 28.283222, 30.556623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.840494, 27.922997, 30.399994>,  <30.795177, 27.706861, 30.306015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.840494, 27.922997, 30.399994>,  <30.916023, 28.283222, 30.556623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840494, 27.922997, 30.399994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093070, 0.380542, -0.920069,
		0.977591, -0.210173, 0.011960,
		-0.188822, -0.900564, -0.391575,
		30.783848, 27.652828, 30.282522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314899, 28.253124, 30.041218>,  <30.916023, 28.283222, 30.556623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314899, 28.253124, 30.041218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.045618, 27.969761, 29.956409>,  <30.884048, 27.799742, 29.905525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.045618, 27.969761, 29.956409>,  <31.314899, 28.253124, 30.041218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045618, 27.969761, 29.956409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009370, 0.294874, -0.955490,
		0.739398, -0.641252, -0.205148,
		-0.673203, -0.708410, -0.212020,
		30.843657, 27.757238, 29.892803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547943, 28.122625, 29.395355>,  <31.314899, 28.253124, 30.041218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547943, 28.122625, 29.395355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.187895, 27.948803, 29.407616>,  <30.971865, 27.844509, 29.414972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.187895, 27.948803, 29.407616>,  <31.547943, 28.122625, 29.395355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187895, 27.948803, 29.407616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145250, 0.233038, -0.961559,
		0.410711, -0.869972, -0.272882,
		-0.900122, -0.434559, 0.030652,
		30.917858, 27.818436, 29.416811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528811, 27.745960, 28.818727>,  <31.547943, 28.122625, 29.395355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528811, 27.745960, 28.818727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.152603, 27.823853, 28.930088>,  <30.926878, 27.870588, 28.996904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.152603, 27.823853, 28.930088>,  <31.528811, 27.745960, 28.818727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152603, 27.823853, 28.930088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213371, 0.299122, -0.930053,
		-0.264385, -0.934134, -0.239780,
		-0.940518, 0.194730, 0.278400,
		30.870447, 27.882271, 29.013609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214264, 27.370678, 28.319550>,  <31.528811, 27.745960, 28.818727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214264, 27.370678, 28.319550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.006750, 27.678711, 28.468056>,  <30.882242, 27.863531, 28.557159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.006750, 27.678711, 28.468056>,  <31.214264, 27.370678, 28.319550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006750, 27.678711, 28.468056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158932, 0.339828, -0.926962,
		-0.840002, -0.539898, -0.053906,
		-0.518784, 0.770082, 0.371263,
		30.851114, 27.909737, 28.579435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714155, 27.507734, 27.865541>,  <31.214264, 27.370678, 28.319550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714155, 27.507734, 27.865541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.696621, 27.853127, 28.066532>,  <30.686100, 28.060362, 28.187126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.696621, 27.853127, 28.066532>,  <30.714155, 27.507734, 27.865541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696621, 27.853127, 28.066532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075266, 0.498675, -0.863515,
		-0.996200, -0.075671, 0.043131,
		-0.043835, 0.863480, 0.502475,
		30.683470, 28.112171, 28.217274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130751, 27.898798, 27.506851>,  <30.714155, 27.507734, 27.865541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130751, 27.898798, 27.506851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.350597, 28.152653, 27.724167>,  <30.482506, 28.304966, 27.854555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.350597, 28.152653, 27.724167>,  <30.130751, 27.898798, 27.506851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350597, 28.152653, 27.724167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138942, 0.710701, -0.689637,
		-0.823783, 0.303549, 0.478790,
		0.549616, 0.634635, 0.543287,
		30.515482, 28.343042, 27.887154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887886, 28.419979, 27.267586>,  <30.130751, 27.898798, 27.506851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887886, 28.419979, 27.267586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.232813, 28.545055, 27.426903>,  <30.439770, 28.620100, 27.522493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.232813, 28.545055, 27.426903>,  <29.887886, 28.419979, 27.267586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232813, 28.545055, 27.426903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071104, 0.703996, -0.706635,
		-0.501352, 0.637664, 0.584834,
		0.862317, 0.312689, 0.398291,
		30.491508, 28.638863, 27.546391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.819082, 41.094677, 18.161810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.191248, 41.208790, 18.253841>,  <26.414547, 41.277260, 18.309061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.191248, 41.208790, 18.253841>,  <25.819082, 41.094677, 18.161810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191248, 41.208790, 18.253841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096895, -0.413963, 0.905122,
		0.353464, -0.864434, -0.357515,
		0.930416, 0.285286, 0.230080,
		26.470373, 41.294376, 18.322865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.328352, 40.541737, 18.371389>,  <25.819082, 41.094677, 18.161810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.328352, 40.541737, 18.371389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.411930, 40.891884, 18.545780>,  <26.462076, 41.101971, 18.650415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.411930, 40.891884, 18.545780>,  <26.328352, 40.541737, 18.371389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411930, 40.891884, 18.545780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046875, -0.436341, 0.898559,
		0.976803, -0.208186, -0.050139,
		0.208945, 0.875365, 0.435978,
		26.474613, 41.154495, 18.676573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957502, 40.408363, 18.847849>,  <26.328352, 40.541737, 18.371389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957502, 40.408363, 18.847849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.792732, 40.746727, 18.983353>,  <26.693871, 40.949745, 19.064655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.792732, 40.746727, 18.983353>,  <26.957502, 40.408363, 18.847849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792732, 40.746727, 18.983353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054971, -0.394159, 0.917397,
		0.909557, 0.359278, 0.208865,
		-0.411926, 0.845907, 0.338760,
		26.669155, 41.000500, 19.084980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087349, 40.383106, 19.558161>,  <26.957502, 40.408363, 18.847849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087349, 40.383106, 19.558161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.821779, 40.681446, 19.536564>,  <26.662437, 40.860451, 19.523605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.821779, 40.681446, 19.536564>,  <27.087349, 40.383106, 19.558161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821779, 40.681446, 19.536564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320781, -0.218836, 0.921526,
		0.675504, 0.629142, 0.384545,
		-0.663923, 0.745849, -0.053992,
		26.622602, 40.905201, 19.520367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196949, 40.985729, 20.106972>,  <27.087349, 40.383106, 19.558161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196949, 40.985729, 20.106972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.805197, 40.964283, 20.029057>,  <26.570147, 40.951416, 19.982307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.805197, 40.964283, 20.029057>,  <27.196949, 40.985729, 20.106972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805197, 40.964283, 20.029057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189114, -0.095937, 0.977258,
		-0.071088, 0.993942, 0.083819,
		-0.979379, -0.053620, -0.194788,
		26.511383, 40.948196, 19.970619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905521, 41.089928, 20.803802>,  <27.196949, 40.985729, 20.106972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905521, 41.089928, 20.803802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.589279, 40.971531, 20.589390>,  <26.399534, 40.900494, 20.460743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.589279, 40.971531, 20.589390>,  <26.905521, 41.089928, 20.803802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589279, 40.971531, 20.589390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434482, -0.345675, 0.831706,
		-0.431471, 0.890448, 0.144690,
		-0.790606, -0.295992, -0.536032,
		26.352097, 40.882732, 20.428579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307007, 41.309998, 21.174412>,  <26.905521, 41.089928, 20.803802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307007, 41.309998, 21.174412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.163473, 41.019230, 20.940208>,  <26.077353, 40.844769, 20.799686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.163473, 41.019230, 20.940208>,  <26.307007, 41.309998, 21.174412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.163473, 41.019230, 20.940208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354492, -0.474153, 0.805924,
		-0.863465, 0.496754, -0.087545,
		-0.358836, -0.726921, -0.585510,
		26.055822, 40.801155, 20.764555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.788740, 41.080997, 21.627270>,  <26.307007, 41.309998, 21.174412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.788740, 41.080997, 21.627270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.814844, 40.768940, 21.378395>,  <25.830507, 40.581707, 21.229071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.814844, 40.768940, 21.378395>,  <25.788740, 41.080997, 21.627270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814844, 40.768940, 21.378395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289015, -0.611571, 0.736513,
		-0.955098, 0.131756, -0.265385,
		0.065261, -0.780142, -0.622189,
		25.834423, 40.534897, 21.191738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169590, 40.768356, 21.622812>,  <25.788740, 41.080997, 21.627270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169590, 40.768356, 21.622812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.412088, 40.484928, 21.478374>,  <25.557589, 40.314873, 21.391712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.412088, 40.484928, 21.478374>,  <25.169590, 40.768356, 21.622812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.412088, 40.484928, 21.478374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461180, -0.683144, 0.566239,
		-0.647902, -0.176751, -0.740933,
		0.606247, -0.708572, -0.361097,
		25.593962, 40.272358, 21.370045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.703043, 40.228172, 21.320942>,  <25.169590, 40.768356, 21.622812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.703043, 40.228172, 21.320942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.066608, 40.076210, 21.389694>,  <25.284748, 39.985031, 21.430946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.066608, 40.076210, 21.389694>,  <24.703043, 40.228172, 21.320942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.066608, 40.076210, 21.389694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415172, -0.786177, 0.457775,
		-0.038782, -0.487440, -0.872295,
		0.908916, -0.379906, 0.171882,
		25.339283, 39.962238, 21.441259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.638756, 39.544479, 21.146006>,  <24.703043, 40.228172, 21.320942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.638756, 39.544479, 21.146006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.972397, 39.563972, 21.365788>,  <25.172581, 39.575668, 21.497658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.972397, 39.563972, 21.365788>,  <24.638756, 39.544479, 21.146006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.972397, 39.563972, 21.365788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376455, -0.677769, 0.631594,
		0.403185, -0.733658, -0.546980,
		0.834100, 0.048736, 0.549456,
		25.222628, 39.578594, 21.530624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.813467, 38.920937, 21.239515>,  <24.638756, 39.544479, 21.146006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.813467, 38.920937, 21.239515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.007847, 39.098137, 21.540874>,  <25.124474, 39.204456, 21.721691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.007847, 39.098137, 21.540874>,  <24.813467, 38.920937, 21.239515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.007847, 39.098137, 21.540874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267652, -0.745176, 0.610799,
		0.831996, -0.498465, -0.243547,
		0.485947, 0.442996, 0.753399,
		25.153631, 39.231037, 21.766893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.127972, 38.360909, 21.617990>,  <24.813467, 38.920937, 21.239515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.127972, 38.360909, 21.617990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.135769, 38.654732, 21.889297>,  <25.140448, 38.831024, 22.052082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.135769, 38.654732, 21.889297>,  <25.127972, 38.360909, 21.617990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.135769, 38.654732, 21.889297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251703, -0.652940, 0.714363,
		0.967608, -0.184648, 0.172161,
		0.019495, 0.734557, 0.678267,
		25.141617, 38.875099, 22.092777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548471, 38.054897, 22.259306>,  <25.127972, 38.360909, 21.617990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.548471, 38.054897, 22.259306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.319239, 38.365448, 22.364239>,  <25.181700, 38.551777, 22.427198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.319239, 38.365448, 22.364239>,  <25.548471, 38.054897, 22.259306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.319239, 38.365448, 22.364239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346675, -0.519731, 0.780830,
		0.742560, 0.356535, 0.566998,
		-0.573080, 0.776378, 0.262330,
		25.147314, 38.598362, 22.442938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741930, 38.271976, 22.847855>,  <25.548471, 38.054897, 22.259306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741930, 38.271976, 22.847855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.365095, 38.403557, 22.821739>,  <25.138994, 38.482506, 22.806070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.365095, 38.403557, 22.821739>,  <25.741930, 38.271976, 22.847855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.365095, 38.403557, 22.821739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241037, -0.528791, 0.813807,
		0.233176, 0.782415, 0.577457,
		-0.942088, 0.328948, -0.065289,
		25.082468, 38.502243, 22.802153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457109, 38.043388, 23.557629>,  <25.741930, 38.271976, 22.847855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457109, 38.043388, 23.557629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.133455, 38.166603, 23.357464>,  <24.939262, 38.240532, 23.237364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.133455, 38.166603, 23.357464>,  <25.457109, 38.043388, 23.557629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133455, 38.166603, 23.357464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586938, -0.464840, 0.662894,
		-0.028414, 0.830081, 0.556918,
		-0.809133, 0.308041, -0.500414,
		24.890715, 38.259014, 23.207340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.032906, 38.444180, 23.966681>,  <25.457109, 38.043388, 23.557629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.032906, 38.444180, 23.966681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.823452, 38.253899, 23.683975>,  <24.697779, 38.139729, 23.514353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.823452, 38.253899, 23.683975>,  <25.032906, 38.444180, 23.966681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.823452, 38.253899, 23.683975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458293, -0.542045, 0.704382,
		-0.718173, 0.692744, 0.065823,
		-0.523636, -0.475702, -0.706762,
		24.666361, 38.111187, 23.471947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.370014, 38.515839, 24.186853>,  <25.032906, 38.444180, 23.966681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.370014, 38.515839, 24.186853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.383749, 38.214066, 23.924664>,  <24.391991, 38.033001, 23.767349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.383749, 38.214066, 23.924664>,  <24.370014, 38.515839, 24.186853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.383749, 38.214066, 23.924664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510639, -0.577034, 0.637401,
		-0.859109, 0.312826, -0.405057,
		0.034336, -0.754434, -0.655477,
		24.394051, 37.987736, 23.728020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.804363, 38.139996, 24.422882>,  <24.370014, 38.515839, 24.186853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.804363, 38.139996, 24.422882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.962925, 37.877377, 24.166191>,  <24.058062, 37.719807, 24.012177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.962925, 37.877377, 24.166191>,  <23.804363, 38.139996, 24.422882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.962925, 37.877377, 24.166191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202214, -0.744264, 0.636538,
		-0.895530, -0.122560, -0.427792,
		0.396404, -0.656544, -0.641727,
		24.081846, 37.680412, 23.973673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.307682, 37.660412, 24.316702>,  <23.804363, 38.139996, 24.422882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.307682, 37.660412, 24.316702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.665319, 37.499039, 24.238892>,  <23.879902, 37.402214, 24.192205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.665319, 37.499039, 24.238892>,  <23.307682, 37.660412, 24.316702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.665319, 37.499039, 24.238892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144891, -0.671503, 0.726698,
		-0.423801, -0.621549, -0.658839,
		0.894091, -0.403435, -0.194527,
		23.933546, 37.378010, 24.180534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.215425, 36.955227, 24.346663>,  <23.307682, 37.660412, 24.316702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.215425, 36.955227, 24.346663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.613848, 36.971756, 24.378071>,  <23.852901, 36.981674, 24.396915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.613848, 36.971756, 24.378071>,  <23.215425, 36.955227, 24.346663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.613848, 36.971756, 24.378071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045563, -0.521152, 0.852247,
		0.076142, -0.852463, -0.517213,
		0.996055, 0.041326, 0.078523,
		23.912664, 36.984154, 24.401628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.578560, 37.153278, 24.196405>,  <23.215425, 36.955227, 24.346663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.578560, 37.153278, 24.196405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.248367, 37.011364, 24.020813>,  <22.050251, 36.926216, 23.915459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.248367, 37.011364, 24.020813>,  <22.578560, 37.153278, 24.196405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.248367, 37.011364, 24.020813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249753, 0.467858, -0.847781,
		0.506164, -0.809465, -0.297599,
		-0.825483, -0.354790, -0.438979,
		22.000723, 36.904926, 23.889120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.758631, 37.022053, 23.441093>,  <22.578560, 37.153278, 24.196405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.758631, 37.022053, 23.441093> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.367760, 37.086327, 23.496666>,  <22.133236, 37.124889, 23.530010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.367760, 37.086327, 23.496666>,  <22.758631, 37.022053, 23.441093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.367760, 37.086327, 23.496666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005944, 0.633117, -0.774033,
		-0.212332, -0.757195, -0.617714,
		-0.977180, 0.160681, 0.138932,
		22.074606, 37.134529, 23.538345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.536169, 36.876968, 22.881516>,  <22.758631, 37.022053, 23.441093>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.536169, 36.876968, 22.881516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.233425, 37.084335, 23.040718>,  <22.051779, 37.208755, 23.136240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.233425, 37.084335, 23.040718>,  <22.536169, 36.876968, 22.881516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.233425, 37.084335, 23.040718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036978, 0.641954, -0.765851,
		-0.652532, -0.564923, -0.505038,
		-0.756858, 0.518418, 0.398006,
		22.006367, 37.239861, 23.160120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.965248, 36.906357, 22.339163>,  <22.536169, 36.876968, 22.881516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.965248, 36.906357, 22.339163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.916906, 37.212635, 22.591862>,  <21.887901, 37.396400, 22.743481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.916906, 37.212635, 22.591862>,  <21.965248, 36.906357, 22.339163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.916906, 37.212635, 22.591862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142174, 0.616501, -0.774412,
		-0.982436, -0.183408, 0.034356,
		-0.120852, 0.765695, 0.631749,
		21.880651, 37.442345, 22.781385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.473625, 37.393230, 21.943041>,  <21.965248, 36.906357, 22.339163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.473625, 37.393230, 21.943041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.617542, 37.614201, 22.243809>,  <21.703892, 37.746780, 22.424269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.617542, 37.614201, 22.243809>,  <21.473625, 37.393230, 21.943041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.617542, 37.614201, 22.243809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025752, 0.799699, -0.599849,
		-0.932677, 0.235184, 0.273499,
		0.359791, 0.552422, 0.751917,
		21.725479, 37.779926, 22.469383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.122458, 37.942677, 21.825230>,  <21.473625, 37.393230, 21.943041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.122458, 37.942677, 21.825230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.405216, 38.060211, 22.082588>,  <21.574871, 38.130730, 22.237003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.405216, 38.060211, 22.082588>,  <21.122458, 37.942677, 21.825230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.405216, 38.060211, 22.082588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152083, 0.825212, -0.543962,
		-0.690773, 0.482375, 0.538653,
		0.706897, 0.293835, 0.643395,
		21.617285, 38.148361, 22.275606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.028652, 38.737072, 21.898355>,  <21.122458, 37.942677, 21.825230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.028652, 38.737072, 21.898355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.395170, 38.618977, 22.006603>,  <21.615082, 38.548119, 22.071552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.395170, 38.618977, 22.006603>,  <21.028652, 38.737072, 21.898355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.395170, 38.618977, 22.006603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374504, 0.871095, -0.317712,
		-0.141938, 0.392467, 0.908748,
		0.916297, -0.295234, 0.270622,
		21.670059, 38.530407, 22.087790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.236706, 39.327732, 22.131069>,  <21.028652, 38.737072, 21.898355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.236706, 39.327732, 22.131069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.565054, 39.119007, 22.038219>,  <21.762064, 38.993774, 21.982510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.565054, 39.119007, 22.038219>,  <21.236706, 39.327732, 22.131069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.565054, 39.119007, 22.038219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465779, 0.846879, -0.256604,
		0.330481, 0.102520, 0.938228,
		0.820872, -0.521810, -0.232126,
		21.811316, 38.962463, 21.968582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.796173, 39.686451, 22.398056>,  <21.236706, 39.327732, 22.131069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.796173, 39.686451, 22.398056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.963264, 39.456905, 22.116295>,  <22.063519, 39.319180, 21.947237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.963264, 39.456905, 22.116295>,  <21.796173, 39.686451, 22.398056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.963264, 39.456905, 22.116295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482439, 0.797058, -0.363251,
		0.769907, -0.188092, 0.609807,
		0.417727, -0.573864, -0.704404,
		22.088583, 39.284748, 21.904974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.431992, 40.035496, 22.311321>,  <21.796173, 39.686451, 22.398056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.431992, 40.035496, 22.311321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.418617, 39.812031, 21.979832>,  <22.410593, 39.677952, 21.780939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.418617, 39.812031, 21.979832>,  <22.431992, 40.035496, 22.311321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.418617, 39.812031, 21.979832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612735, 0.643617, -0.458599,
		0.789581, -0.523120, 0.320792,
		-0.033436, -0.558661, -0.828722,
		22.408587, 39.644432, 21.731215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.040361, 40.106483, 22.113239>,  <22.431992, 40.035496, 22.311321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.040361, 40.106483, 22.113239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.834915, 39.995018, 21.788635>,  <22.711647, 39.928139, 21.593874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.834915, 39.995018, 21.788635>,  <23.040361, 40.106483, 22.113239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.834915, 39.995018, 21.788635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525736, 0.645240, -0.554317,
		0.678088, -0.711343, -0.184898,
		-0.513613, -0.278668, -0.811508,
		22.680832, 39.911419, 21.545183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.523914, 40.058414, 21.604687>,  <23.040361, 40.106483, 22.113239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.523914, 40.058414, 21.604687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.177757, 40.091503, 21.406998>,  <22.970062, 40.111355, 21.288385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.177757, 40.091503, 21.406998>,  <23.523914, 40.058414, 21.604687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.177757, 40.091503, 21.406998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381025, 0.749190, -0.541789,
		0.325448, -0.657170, -0.679861,
		-0.865392, 0.082720, -0.494221,
		22.918140, 40.116318, 21.258732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.734299, 40.127438, 20.986801>,  <23.523914, 40.058414, 21.604687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.734299, 40.127438, 20.986801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.367785, 40.287624, 20.989529>,  <23.147877, 40.383736, 20.991165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.367785, 40.287624, 20.989529>,  <23.734299, 40.127438, 20.986801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.367785, 40.287624, 20.989529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361572, 0.834366, -0.416051,
		-0.172306, -0.378756, -0.909316,
		-0.916284, 0.400471, 0.006819,
		23.092899, 40.407764, 20.991573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.499708, 40.344559, 20.217251>,  <23.734299, 40.127438, 20.986801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.499708, 40.344559, 20.217251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.295839, 40.561790, 20.484173>,  <23.173517, 40.692131, 20.644325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.295839, 40.561790, 20.484173>,  <23.499708, 40.344559, 20.217251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.295839, 40.561790, 20.484173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140458, 0.817720, -0.558217,
		-0.848826, -0.190779, -0.493050,
		-0.509672, 0.543082, 0.667305,
		23.142937, 40.724716, 20.684364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.230555, 40.836136, 19.824106>,  <23.499708, 40.344559, 20.217251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.230555, 40.836136, 19.824106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.181177, 41.010067, 20.180912>,  <23.151550, 41.114426, 20.394995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.181177, 41.010067, 20.180912>,  <23.230555, 40.836136, 19.824106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.181177, 41.010067, 20.180912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110644, 0.887252, -0.447820,
		-0.986164, -0.153975, -0.061413,
		-0.123442, 0.434829, 0.892012,
		23.144144, 41.140514, 20.448515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.817656, 41.350281, 19.660906>,  <23.230555, 40.836136, 19.824106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.817656, 41.350281, 19.660906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.962681, 41.482643, 20.009399>,  <23.049696, 41.562061, 20.218496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.962681, 41.482643, 20.009399>,  <22.817656, 41.350281, 19.660906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.962681, 41.482643, 20.009399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146442, 0.903000, -0.403913,
		-0.920383, 0.274028, 0.278934,
		0.362561, 0.330907, 0.871235,
		23.071449, 41.581917, 20.270769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.495346, 42.018448, 19.833918>,  <22.817656, 41.350281, 19.660906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.495346, 42.018448, 19.833918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.851072, 41.992424, 20.014977>,  <23.064508, 41.976810, 20.123611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.851072, 41.992424, 20.014977>,  <22.495346, 42.018448, 19.833918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.851072, 41.992424, 20.014977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207520, 0.939457, -0.272683,
		-0.407500, 0.336434, 0.848973,
		0.889314, -0.065060, 0.452645,
		23.117867, 41.972904, 20.150770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.496746, 42.666145, 19.969551>,  <22.495346, 42.018448, 19.833918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.496746, 42.666145, 19.969551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.872103, 42.557625, 20.055168>,  <23.097317, 42.492512, 20.106539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.872103, 42.557625, 20.055168>,  <22.496746, 42.666145, 19.969551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.872103, 42.557625, 20.055168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327158, 0.896946, -0.297415,
		-0.111297, 0.349119, 0.930446,
		0.938393, -0.271301, 0.214045,
		23.153620, 42.476234, 20.119381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.795610, 43.209866, 20.350750>,  <22.496746, 42.666145, 19.969551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.795610, 43.209866, 20.350750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.104685, 43.004463, 20.201477>,  <23.290129, 42.881222, 20.111914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.104685, 43.004463, 20.201477>,  <22.795610, 43.209866, 20.350750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.104685, 43.004463, 20.201477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480273, 0.857326, -0.185284,
		0.415084, -0.036063, 0.909068,
		0.772686, -0.513509, -0.373182,
		23.336491, 42.850410, 20.089521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.387907, 43.529194, 20.584015>,  <22.795610, 43.209866, 20.350750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.387907, 43.529194, 20.584015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.523026, 43.350376, 20.252705>,  <23.604097, 43.243084, 20.053919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.523026, 43.350376, 20.252705>,  <23.387907, 43.529194, 20.584015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.523026, 43.350376, 20.252705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504753, 0.828802, -0.241478,
		0.794429, -0.336504, 0.505617,
		0.337798, -0.447048, -0.828275,
		23.624365, 43.216263, 20.004223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.054745, 43.959892, 20.347597>,  <23.387907, 43.529194, 20.584015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.054745, 43.959892, 20.347597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.988899, 43.738853, 20.020786>,  <23.949392, 43.606228, 19.824699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.988899, 43.738853, 20.020786>,  <24.054745, 43.959892, 20.347597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.988899, 43.738853, 20.020786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447911, 0.696119, -0.561066,
		0.878794, -0.458314, 0.132927,
		-0.164612, -0.552601, -0.817028,
		23.939516, 43.573074, 19.775679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.602570, 31.342489, 24.607914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968307, 31.486294, 24.682449>,  <27.187752, 31.572577, 24.727171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968307, 31.486294, 24.682449>,  <26.602570, 31.342489, 24.607914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.968307, 31.486294, 24.682449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214008, 0.819688, -0.531330,
		-0.343758, 0.445942, 0.826418,
		0.914347, 0.359509, 0.186339,
		27.242611, 31.594147, 24.738352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574259, 32.106647, 24.898830>,  <26.602570, 31.342489, 24.607914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574259, 32.106647, 24.898830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935011, 32.034092, 24.742008>,  <27.151463, 31.990559, 24.647915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935011, 32.034092, 24.742008>,  <26.574259, 32.106647, 24.898830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935011, 32.034092, 24.742008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103163, 0.790877, -0.603218,
		0.419485, 0.584477, 0.694564,
		0.901881, -0.181387, -0.392057,
		27.205576, 31.979675, 24.624392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750187, 32.762028, 24.687283>,  <26.574259, 32.106647, 24.898830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750187, 32.762028, 24.687283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028683, 32.529240, 24.519207>,  <27.195780, 32.389568, 24.418362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.028683, 32.529240, 24.519207>,  <26.750187, 32.762028, 24.687283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028683, 32.529240, 24.519207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163947, 0.698834, -0.696241,
		0.698834, 0.415863, 0.581970,
		0.696241, -0.581970, -0.420190,
		27.237555, 32.354649, 24.393150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374960, 33.231636, 24.666513>,  <26.750187, 32.762028, 24.687283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374960, 33.231636, 24.666513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432447, 32.958500, 24.379997>,  <27.466940, 32.794617, 24.208088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432447, 32.958500, 24.379997>,  <27.374960, 33.231636, 24.666513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432447, 32.958500, 24.379997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229542, 0.727064, -0.647061,
		0.962630, -0.071425, 0.261233,
		0.143717, -0.682845, -0.716288,
		27.475563, 32.753647, 24.165112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069530, 33.282177, 24.251171>,  <27.374960, 33.231636, 24.666513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069530, 33.282177, 24.251171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834108, 33.078053, 24.000355>,  <27.692854, 32.955578, 23.849865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834108, 33.078053, 24.000355>,  <28.069530, 33.282177, 24.251171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834108, 33.078053, 24.000355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204197, 0.656622, -0.726052,
		0.782244, -0.555362, -0.282254,
		-0.588556, -0.510314, -0.627042,
		27.657541, 32.924957, 23.812243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496548, 32.973419, 23.637016>,  <28.069530, 33.282177, 24.251171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496548, 32.973419, 23.637016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107866, 33.009567, 23.549725>,  <27.874657, 33.031254, 23.497349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107866, 33.009567, 23.549725>,  <28.496548, 32.973419, 23.637016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107866, 33.009567, 23.549725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229005, 0.586732, -0.776726,
		0.057851, -0.804723, -0.590824,
		-0.971705, 0.090367, -0.218228,
		27.816355, 33.036678, 23.484257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451097, 33.045376, 22.955276>,  <28.496548, 32.973419, 23.637016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451097, 33.045376, 22.955276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087563, 33.186108, 23.044922>,  <27.869442, 33.270546, 23.098709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087563, 33.186108, 23.044922>,  <28.451097, 33.045376, 22.955276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087563, 33.186108, 23.044922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098659, 0.703297, -0.704017,
		-0.405314, -0.617727, -0.673895,
		-0.908838, 0.351833, 0.224112,
		27.814911, 33.291656, 23.112156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419344, 33.431759, 22.413286>,  <28.451097, 33.045376, 22.955276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419344, 33.431759, 22.413286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095837, 33.535416, 22.624470>,  <27.901733, 33.597610, 22.751181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095837, 33.535416, 22.624470>,  <28.419344, 33.431759, 22.413286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095837, 33.535416, 22.624470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109719, 0.815451, -0.568332,
		-0.577805, -0.517575, -0.631076,
		-0.808767, 0.259143, 0.527959,
		27.853207, 33.613159, 22.782858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955173, 33.633152, 21.926191>,  <28.419344, 33.431759, 22.413286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955173, 33.633152, 21.926191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858969, 33.813541, 22.270000>,  <27.801247, 33.921776, 22.476286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858969, 33.813541, 22.270000>,  <27.955173, 33.633152, 21.926191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858969, 33.813541, 22.270000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048706, 0.890006, -0.453339,
		-0.969424, -0.067169, -0.236021,
		-0.240510, 0.450973, 0.859522,
		27.786816, 33.948833, 22.527857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546547, 34.112579, 21.723286>,  <27.955173, 33.633152, 21.926191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546547, 34.112579, 21.723286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645990, 34.254253, 22.083897>,  <27.705656, 34.339256, 22.300262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.645990, 34.254253, 22.083897>,  <27.546547, 34.112579, 21.723286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645990, 34.254253, 22.083897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166032, 0.901388, -0.399915,
		-0.954267, 0.249105, 0.165289,
		0.248611, 0.354182, 0.901525,
		27.720573, 34.360508, 22.354355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251207, 34.753895, 21.810013>,  <27.546547, 34.112579, 21.723286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251207, 34.753895, 21.810013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553549, 34.768543, 22.071499>,  <27.734955, 34.777332, 22.228390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553549, 34.768543, 22.071499>,  <27.251207, 34.753895, 21.810013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553549, 34.768543, 22.071499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137149, 0.967430, -0.212768,
		-0.640213, 0.250478, 0.726215,
		0.755856, 0.036617, 0.653713,
		27.780306, 34.779530, 22.267612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081676, 35.343349, 22.289562>,  <27.251207, 34.753895, 21.810013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081676, 35.343349, 22.289562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470877, 35.251186, 22.295044>,  <27.704397, 35.195889, 22.298332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470877, 35.251186, 22.295044>,  <27.081676, 35.343349, 22.289562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470877, 35.251186, 22.295044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230577, 0.967607, -0.102818,
		0.010431, 0.103201, 0.994606,
		0.972998, -0.230405, 0.013703,
		27.762775, 35.182064, 22.299154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370731, 35.710838, 22.828024>,  <27.081676, 35.343349, 22.289562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370731, 35.710838, 22.828024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622763, 35.634060, 22.527050>,  <27.773981, 35.587994, 22.346466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622763, 35.634060, 22.527050>,  <27.370731, 35.710838, 22.828024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622763, 35.634060, 22.527050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142085, 0.981108, -0.131298,
		0.763421, -0.024181, 0.645449,
		0.630080, -0.191944, -0.752434,
		27.811787, 35.576477, 22.301319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021557, 36.107109, 22.860670>,  <27.370731, 35.710838, 22.828024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021557, 36.107109, 22.860670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873812, 36.018158, 22.499756>,  <27.785164, 35.964787, 22.283207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.873812, 36.018158, 22.499756>,  <28.021557, 36.107109, 22.860670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873812, 36.018158, 22.499756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102081, 0.955360, -0.277249,
		0.923661, -0.194512, -0.330175,
		-0.369364, -0.222380, -0.902285,
		27.763002, 35.951443, 22.229071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450377, 35.612312, 23.135855>,  <28.021557, 36.107109, 22.860670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450377, 35.612312, 23.135855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344233, 35.857574, 23.433479>,  <28.280546, 36.004730, 23.612055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344233, 35.857574, 23.433479>,  <28.450377, 35.612312, 23.135855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344233, 35.857574, 23.433479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811130, -0.275210, 0.516069,
		0.521202, 0.740475, -0.424316,
		-0.265360, 0.613152, 0.744062,
		28.264624, 36.041519, 23.656698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109837, 35.891960, 23.291904>,  <28.450377, 35.612312, 23.135855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109837, 35.891960, 23.291904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882574, 35.979111, 23.609325>,  <28.746216, 36.031403, 23.799778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882574, 35.979111, 23.609325>,  <29.109837, 35.891960, 23.291904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882574, 35.979111, 23.609325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719594, -0.336284, 0.607534,
		0.399227, 0.916211, 0.034279,
		-0.568156, 0.217877, 0.793554,
		28.712128, 36.044476, 23.847391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457842, 36.356773, 23.803526>,  <29.109837, 35.891960, 23.291904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457842, 36.356773, 23.803526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169571, 36.153267, 23.991901>,  <28.996609, 36.031162, 24.104927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169571, 36.153267, 23.991901>,  <29.457842, 36.356773, 23.803526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169571, 36.153267, 23.991901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668825, -0.331422, 0.665456,
		-0.182481, 0.794555, 0.579123,
		-0.720676, -0.508765, 0.470940,
		28.953369, 36.000637, 24.133184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573870, 36.505672, 24.465858>,  <29.457842, 36.356773, 23.803526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573870, 36.505672, 24.465858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351324, 36.173489, 24.477196>,  <29.217796, 35.974178, 24.483999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351324, 36.173489, 24.477196>,  <29.573870, 36.505672, 24.465858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351324, 36.173489, 24.477196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435196, -0.262161, 0.861322,
		-0.707860, 0.491542, 0.507268,
		-0.556362, -0.830456, 0.028344,
		29.184416, 35.924351, 24.485699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468622, 36.511848, 25.200378>,  <29.573870, 36.505672, 24.465858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468622, 36.511848, 25.200378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383797, 36.143856, 25.068520>,  <29.332901, 35.923061, 24.989405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383797, 36.143856, 25.068520>,  <29.468622, 36.511848, 25.200378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383797, 36.143856, 25.068520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514061, -0.391891, 0.762996,
		-0.831126, -0.007653, 0.556032,
		-0.212065, -0.919980, -0.329645,
		29.320177, 35.867863, 24.969625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216528, 36.180519, 25.814329>,  <29.468622, 36.511848, 25.200378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216528, 36.180519, 25.814329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293602, 35.879372, 25.562595>,  <29.339846, 35.698685, 25.411554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293602, 35.879372, 25.562595>,  <29.216528, 36.180519, 25.814329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.293602, 35.879372, 25.562595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506730, -0.472877, 0.720842,
		-0.840297, -0.457798, 0.290384,
		0.192684, -0.752867, -0.629337,
		29.351408, 35.653511, 25.373795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032988, 35.572281, 26.153708>,  <29.216528, 36.180519, 25.814329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032988, 35.572281, 26.153708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297140, 35.443459, 25.882362>,  <29.455631, 35.366165, 25.719555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297140, 35.443459, 25.882362>,  <29.032988, 35.572281, 26.153708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297140, 35.443459, 25.882362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514316, -0.464241, 0.721082,
		-0.547153, -0.825082, -0.140937,
		0.660380, -0.322056, -0.678364,
		29.495255, 35.346844, 25.678854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003805, 34.850471, 26.241781>,  <29.032988, 35.572281, 26.153708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003805, 34.850471, 26.241781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358206, 34.926239, 26.072491>,  <29.570847, 34.971699, 25.970917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358206, 34.926239, 26.072491>,  <29.003805, 34.850471, 26.241781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358206, 34.926239, 26.072491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454157, -0.538579, 0.709700,
		-0.093507, -0.821006, -0.563210,
		0.886001, 0.189424, -0.423227,
		29.624006, 34.983067, 25.945522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375090, 34.261272, 26.412601>,  <29.003805, 34.850471, 26.241781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375090, 34.261272, 26.412601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657825, 34.521946, 26.302551>,  <29.827467, 34.678349, 26.236521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657825, 34.521946, 26.302551>,  <29.375090, 34.261272, 26.412601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657825, 34.521946, 26.302551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634092, -0.411328, 0.654780,
		0.313541, -0.637277, -0.703968,
		0.706837, 0.651681, -0.275124,
		29.869877, 34.717449, 26.220015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882286, 33.806026, 26.120872>,  <29.375090, 34.261272, 26.412601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882286, 33.806026, 26.120872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061375, 34.152306, 26.210423>,  <30.168827, 34.360073, 26.264153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061375, 34.152306, 26.210423>,  <29.882286, 33.806026, 26.120872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061375, 34.152306, 26.210423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678144, -0.491927, 0.546012,
		0.582809, -0.092642, -0.807311,
		0.447722, 0.865694, 0.223875,
		30.195692, 34.412014, 26.277586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588274, 33.904812, 25.899591>,  <29.882286, 33.806026, 26.120872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588274, 33.904812, 25.899591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540838, 34.125484, 26.229824>,  <30.512377, 34.257889, 26.427963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540838, 34.125484, 26.229824>,  <30.588274, 33.904812, 25.899591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540838, 34.125484, 26.229824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564572, -0.646507, 0.513115,
		0.816820, 0.526950, -0.234794,
		-0.118590, 0.551681, 0.825581,
		30.505260, 34.290989, 26.477499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205740, 33.620121, 26.330326>,  <30.588274, 33.904812, 25.899591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205740, 33.620121, 26.330326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979321, 33.836678, 26.578999>,  <30.843470, 33.966610, 26.728203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979321, 33.836678, 26.578999>,  <31.205740, 33.620121, 26.330326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979321, 33.836678, 26.578999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257661, -0.600157, 0.757247,
		0.783072, 0.588821, 0.200222,
		-0.566047, 0.541389, 0.621682,
		30.809505, 33.999096, 26.765503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659958, 33.628391, 26.938887>,  <31.205740, 33.620121, 26.330326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659958, 33.628391, 26.938887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283154, 33.700195, 27.052303>,  <31.057072, 33.743279, 27.120354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283154, 33.700195, 27.052303>,  <31.659958, 33.628391, 26.938887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283154, 33.700195, 27.052303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111273, -0.630034, 0.768554,
		0.316600, 0.755536, 0.573524,
		-0.942010, 0.179506, 0.283539,
		31.000551, 33.754047, 27.137365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733173, 33.814262, 27.587646>,  <31.659958, 33.628391, 26.938887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733173, 33.814262, 27.587646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343048, 33.730080, 27.560902>,  <31.108973, 33.679569, 27.544855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343048, 33.730080, 27.560902>,  <31.733173, 33.814262, 27.587646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343048, 33.730080, 27.560902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082227, -0.627137, 0.774556,
		-0.204944, 0.749937, 0.628961,
		-0.975314, -0.210458, -0.066862,
		31.050453, 33.666943, 27.540842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821016, 34.515751, 27.880800>,  <31.733173, 33.814262, 27.587646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821016, 34.515751, 27.880800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179195, 34.645260, 28.003014>,  <32.394104, 34.722965, 28.076342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179195, 34.645260, 28.003014>,  <31.821016, 34.515751, 27.880800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179195, 34.645260, 28.003014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156038, 0.414517, -0.896565,
		-0.416929, 0.850500, 0.320657,
		0.895445, 0.323769, 0.305534,
		32.447830, 34.742390, 28.094673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804766, 35.255611, 27.612938>,  <31.821016, 34.515751, 27.880800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804766, 35.255611, 27.612938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186417, 35.146088, 27.661381>,  <32.415409, 35.080376, 27.690447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186417, 35.146088, 27.661381>,  <31.804766, 35.255611, 27.612938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186417, 35.146088, 27.661381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229937, 0.411076, -0.882126,
		0.191747, 0.869509, 0.455178,
		0.954129, -0.273807, 0.121109,
		32.472656, 35.063946, 27.697714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194508, 35.777988, 27.333958>,  <31.804766, 35.255611, 27.612938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194508, 35.777988, 27.333958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459354, 35.478371, 27.343174>,  <32.618263, 35.298599, 27.348703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459354, 35.478371, 27.343174>,  <32.194508, 35.777988, 27.333958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459354, 35.478371, 27.343174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381452, 0.310396, -0.870717,
		0.645057, 0.585304, 0.491244,
		0.662114, -0.749049, 0.023042,
		32.657990, 35.253654, 27.350086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726151, 36.063263, 27.140043>,  <32.194508, 35.777988, 27.333958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726151, 36.063263, 27.140043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806801, 35.677094, 27.073952>,  <32.855190, 35.445393, 27.034296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806801, 35.677094, 27.073952>,  <32.726151, 36.063263, 27.140043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806801, 35.677094, 27.073952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387166, 0.233511, -0.891950,
		0.899695, 0.115865, 0.420861,
		0.201622, -0.965426, -0.165229,
		32.867287, 35.387466, 27.024384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472424, 36.013580, 26.881445>,  <32.726151, 36.063263, 27.140043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472424, 36.013580, 26.881445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277401, 35.681461, 26.773445>,  <33.160385, 35.482189, 26.708645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277401, 35.681461, 26.773445>,  <33.472424, 36.013580, 26.881445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277401, 35.681461, 26.773445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320197, 0.117656, -0.940017,
		0.812256, -0.544766, 0.208493,
		-0.487559, -0.830293, -0.269999,
		33.131134, 35.432373, 26.692446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988892, 35.677181, 26.553356>,  <33.472424, 36.013580, 26.881445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988892, 35.677181, 26.553356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653816, 35.506588, 26.416889>,  <33.452770, 35.404232, 26.335009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653816, 35.506588, 26.416889>,  <33.988892, 35.677181, 26.553356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653816, 35.506588, 26.416889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279078, 0.202709, -0.938629,
		0.469468, -0.881488, -0.050784,
		-0.837685, -0.426484, -0.341169,
		33.402512, 35.378643, 26.314539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178944, 35.093258, 26.141012>,  <33.988892, 35.677181, 26.553356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178944, 35.093258, 26.141012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822525, 35.207733, 26.000084>,  <33.608673, 35.276421, 25.915527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822525, 35.207733, 26.000084>,  <34.178944, 35.093258, 26.141012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822525, 35.207733, 26.000084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386891, 0.072922, -0.919237,
		-0.237385, -0.955394, -0.175702,
		-0.891046, 0.286191, -0.352323,
		33.555210, 35.293591, 25.894386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241814, 35.014481, 25.500397>,  <34.178944, 35.093258, 26.141012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241814, 35.014481, 25.500397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891930, 35.208107, 25.509911>,  <33.681999, 35.324284, 25.515619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891930, 35.208107, 25.509911>,  <34.241814, 35.014481, 25.500397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891930, 35.208107, 25.509911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209908, 0.422623, -0.881663,
		-0.436838, -0.766203, -0.471281,
		-0.874707, 0.484069, 0.023786,
		33.629517, 35.353329, 25.517046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865677, 34.903790, 24.851585>,  <34.241814, 35.014481, 25.500397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865677, 34.903790, 24.851585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742771, 35.251858, 25.005669>,  <33.669025, 35.460701, 25.098118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742771, 35.251858, 25.005669>,  <33.865677, 34.903790, 24.851585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742771, 35.251858, 25.005669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283014, 0.470036, -0.836044,
		-0.908565, -0.147870, -0.390698,
		-0.307268, 0.870173, 0.385209,
		33.650589, 35.512909, 25.121231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562729, 35.200798, 24.302505>,  <33.865677, 34.903790, 24.851585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562729, 35.200798, 24.302505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567230, 35.529980, 24.529701>,  <33.569931, 35.727489, 24.666019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567230, 35.529980, 24.529701>,  <33.562729, 35.200798, 24.302505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567230, 35.529980, 24.529701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293468, 0.540295, -0.788643,
		-0.955903, 0.175559, -0.235433,
		0.011250, 0.822959, 0.567990,
		33.570606, 35.776867, 24.700098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204445, 35.794968, 23.927942>,  <33.562729, 35.200798, 24.302505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204445, 35.794968, 23.927942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455914, 35.974285, 24.182125>,  <33.606792, 36.081875, 24.334635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455914, 35.974285, 24.182125>,  <33.204445, 35.794968, 23.927942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455914, 35.974285, 24.182125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311708, 0.603357, -0.734029,
		-0.712470, 0.659538, 0.239574,
		0.628669, 0.448297, 0.635457,
		33.644516, 36.108772, 24.372763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171581, 36.535656, 23.723951>,  <33.204445, 35.794968, 23.927942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171581, 36.535656, 23.723951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501495, 36.483952, 23.944141>,  <33.699444, 36.452930, 24.076256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501495, 36.483952, 23.944141>,  <33.171581, 36.535656, 23.723951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501495, 36.483952, 23.944141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509405, 0.592414, -0.624141,
		-0.245430, 0.795196, 0.554461,
		0.824785, -0.129263, 0.550473,
		33.748932, 36.445171, 24.109283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.301897, 33.446991, 31.382721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.679962, 33.316486, 31.388718>,  <31.906801, 33.238186, 31.392317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.679962, 33.316486, 31.388718>,  <31.301897, 33.446991, 31.382721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679962, 33.316486, 31.388718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265104, 0.739566, -0.618678,
		0.190760, 0.588726, 0.785502,
		0.945162, -0.326259, 0.014994,
		31.963511, 33.218609, 31.393215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686865, 34.048248, 31.522289>,  <31.301897, 33.446991, 31.382721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686865, 34.048248, 31.522289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.932993, 33.796364, 31.332619>,  <32.080669, 33.645233, 31.218817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.932993, 33.796364, 31.332619>,  <31.686865, 34.048248, 31.522289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932993, 33.796364, 31.332619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158297, 0.687991, -0.708244,
		0.772219, 0.360737, 0.523017,
		0.615322, -0.629711, -0.474176,
		32.117588, 33.607449, 31.190365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237583, 34.448986, 31.321993>,  <31.686865, 34.048248, 31.522289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237583, 34.448986, 31.321993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.279400, 34.136406, 31.075932>,  <32.304489, 33.948860, 30.928295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.279400, 34.136406, 31.075932>,  <32.237583, 34.448986, 31.321993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279400, 34.136406, 31.075932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225470, 0.621059, -0.750633,
		0.968625, -0.060224, 0.241121,
		0.104544, -0.781447, -0.615152,
		32.310764, 33.901974, 30.891386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000031, 34.435783, 31.099754>,  <32.237583, 34.448986, 31.321993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000031, 34.435783, 31.099754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.789276, 34.237568, 30.823544>,  <32.662823, 34.118637, 30.657818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.789276, 34.237568, 30.823544>,  <33.000031, 34.435783, 31.099754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789276, 34.237568, 30.823544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334940, 0.625644, -0.704546,
		0.781157, -0.602500, -0.163666,
		-0.526886, -0.495543, -0.690528,
		32.631210, 34.088905, 30.616385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467339, 34.360123, 30.473455>,  <33.000031, 34.435783, 31.099754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467339, 34.360123, 30.473455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.102394, 34.303146, 30.319931>,  <32.883427, 34.268959, 30.227816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.102394, 34.303146, 30.319931>,  <33.467339, 34.360123, 30.473455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102394, 34.303146, 30.319931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226800, 0.604634, -0.763530,
		0.340826, -0.783662, -0.519337,
		-0.912359, -0.142445, -0.383810,
		32.828686, 34.260414, 30.204788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548000, 34.055981, 29.753527>,  <33.467339, 34.360123, 30.473455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548000, 34.055981, 29.753527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.180759, 34.214401, 29.759701>,  <32.960415, 34.309452, 29.763405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.180759, 34.214401, 29.759701>,  <33.548000, 34.055981, 29.753527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180759, 34.214401, 29.759701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154784, 0.394125, -0.905929,
		-0.364875, -0.829344, -0.423148,
		-0.918100, 0.396048, 0.015437,
		32.905331, 34.333214, 29.764332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314468, 33.878895, 29.078346>,  <33.548000, 34.055981, 29.753527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314468, 33.878895, 29.078346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.054985, 34.158180, 29.199455>,  <32.899296, 34.325752, 29.272121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.054985, 34.158180, 29.199455>,  <33.314468, 33.878895, 29.078346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054985, 34.158180, 29.199455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008993, 0.390784, -0.920439,
		-0.760986, -0.599817, -0.247225,
		-0.648706, 0.698218, 0.302775,
		32.860374, 34.367645, 29.290287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702560, 33.742592, 28.632439>,  <33.314468, 33.878895, 29.078346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702560, 33.742592, 28.632439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.654896, 34.122398, 28.748516>,  <32.626297, 34.350285, 28.818163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.654896, 34.122398, 28.748516>,  <32.702560, 33.742592, 28.632439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654896, 34.122398, 28.748516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237218, 0.256584, -0.936959,
		-0.964121, -0.180486, 0.194669,
		-0.119159, 0.949521, 0.290192,
		32.619148, 34.407253, 28.835573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095383, 33.888123, 28.264172>,  <32.702560, 33.742592, 28.632439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095383, 33.888123, 28.264172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.290749, 34.220791, 28.369823>,  <32.407970, 34.420391, 28.433214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.290749, 34.220791, 28.369823>,  <32.095383, 33.888123, 28.264172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290749, 34.220791, 28.369823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047367, 0.276974, -0.959709,
		-0.871323, 0.481251, 0.095885,
		0.488418, 0.831675, 0.264129,
		32.437275, 34.470295, 28.449062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424274, 33.933525, 28.374832>,  <32.095383, 33.888123, 28.264172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424274, 33.933525, 28.374832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.162056, 33.709480, 28.172237>,  <31.004725, 33.575054, 28.050680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.162056, 33.709480, 28.172237>,  <31.424274, 33.933525, 28.374832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162056, 33.709480, 28.172237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113771, -0.589796, 0.799498,
		-0.746537, 0.581731, 0.322912,
		-0.655545, -0.560117, -0.506488,
		30.965393, 33.541447, 28.020290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839643, 33.946079, 28.780504>,  <31.424274, 33.933525, 28.374832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839643, 33.946079, 28.780504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.827080, 33.630264, 28.535343>,  <30.819542, 33.440777, 28.388247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.827080, 33.630264, 28.535343>,  <30.839643, 33.946079, 28.780504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827080, 33.630264, 28.535343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150138, -0.602521, 0.783855,
		-0.988166, 0.116639, -0.099615,
		-0.031407, -0.789534, -0.612902,
		30.817657, 33.393402, 28.351473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230049, 33.654358, 28.913189>,  <30.839643, 33.946079, 28.780504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230049, 33.654358, 28.913189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.446318, 33.360016, 28.750122>,  <30.576078, 33.183411, 28.652281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.446318, 33.360016, 28.750122>,  <30.230049, 33.654358, 28.913189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446318, 33.360016, 28.750122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457934, -0.663966, 0.591139,
		-0.705670, -0.132926, -0.695960,
		0.540672, -0.735853, -0.407669,
		30.608519, 33.139259, 28.627821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753979, 33.134956, 28.754065>,  <30.230049, 33.654358, 28.913189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753979, 33.134956, 28.754065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.113531, 32.962147, 28.783352>,  <30.329264, 32.858459, 28.800924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.113531, 32.962147, 28.783352>,  <29.753979, 33.134956, 28.754065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113531, 32.962147, 28.783352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361930, -0.637817, 0.679851,
		-0.247014, -0.637606, -0.729686,
		0.898883, -0.432028, 0.073219,
		30.383196, 32.832539, 28.805317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570629, 32.443447, 28.740911>,  <29.753979, 33.134956, 28.754065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570629, 32.443447, 28.740911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.950802, 32.456326, 28.864616>,  <30.178905, 32.464054, 28.938839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.950802, 32.456326, 28.864616>,  <29.570629, 32.443447, 28.740911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950802, 32.456326, 28.864616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192890, -0.719044, 0.667660,
		0.243872, -0.694219, -0.677190,
		0.950431, 0.032200, 0.309262,
		30.235931, 32.465984, 28.957396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733706, 31.809340, 28.602749>,  <29.570629, 32.443447, 28.740911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733706, 31.809340, 28.602749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.999382, 31.934181, 28.874466>,  <30.158789, 32.009087, 29.037497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.999382, 31.934181, 28.874466>,  <29.733706, 31.809340, 28.602749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999382, 31.934181, 28.874466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292259, -0.727950, 0.620220,
		0.688065, -0.610475, -0.392284,
		0.664192, 0.312104, 0.679294,
		30.198639, 32.027813, 29.078255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007895, 31.203796, 28.878788>,  <29.733706, 31.809340, 28.602749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007895, 31.203796, 28.878788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.098639, 31.482605, 29.150875>,  <30.153084, 31.649891, 29.314127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.098639, 31.482605, 29.150875>,  <30.007895, 31.203796, 28.878788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098639, 31.482605, 29.150875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281374, -0.621738, 0.730938,
		0.932397, -0.357215, 0.055077,
		0.226858, 0.697022, 0.680218,
		30.166697, 31.691711, 29.354940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271917, 30.819487, 29.382271>,  <30.007895, 31.203796, 28.878788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271917, 30.819487, 29.382271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.185514, 31.152489, 29.586338>,  <30.133673, 31.352291, 29.708778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.185514, 31.152489, 29.586338>,  <30.271917, 30.819487, 29.382271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185514, 31.152489, 29.586338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184546, -0.547899, 0.815935,
		0.958792, 0.082100, 0.271987,
		-0.216009, 0.832506, 0.510170,
		30.120712, 31.402241, 29.739389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635509, 30.803877, 30.080694>,  <30.271917, 30.819487, 29.382271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635509, 30.803877, 30.080694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.335012, 31.060192, 30.143970>,  <30.154715, 31.213982, 30.181936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.335012, 31.060192, 30.143970>,  <30.635509, 30.803877, 30.080694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335012, 31.060192, 30.143970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169069, -0.418502, 0.892340,
		0.638003, 0.643620, 0.422735,
		-0.751244, 0.640787, 0.158190,
		30.109640, 31.252428, 30.191427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.701086, 31.012789, 30.731155>,  <30.635509, 30.803877, 30.080694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.701086, 31.012789, 30.731155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.322226, 31.105873, 30.642841>,  <30.094910, 31.161724, 30.589853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.322226, 31.105873, 30.642841>,  <30.701086, 31.012789, 30.731155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322226, 31.105873, 30.642841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274948, -0.234388, 0.932451,
		0.165242, 0.943879, 0.285985,
		-0.947153, 0.232711, -0.220786,
		30.038080, 31.175686, 30.576605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385950, 31.351702, 31.371893>,  <30.701086, 31.012789, 30.731155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385950, 31.351702, 31.371893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.072266, 31.239666, 31.150421>,  <29.884054, 31.172443, 31.017538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.072266, 31.239666, 31.150421>,  <30.385950, 31.351702, 31.371893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072266, 31.239666, 31.150421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457149, -0.342548, 0.820778,
		-0.419553, 0.896778, 0.140587,
		-0.784213, -0.280090, -0.553678,
		29.837002, 31.155640, 30.984318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746204, 31.588757, 31.677670>,  <30.385950, 31.351702, 31.371893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746204, 31.588757, 31.677670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.639343, 31.281101, 31.445442>,  <29.575228, 31.096508, 31.306107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.639343, 31.281101, 31.445442>,  <29.746204, 31.588757, 31.677670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639343, 31.281101, 31.445442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437888, -0.439781, 0.784121,
		-0.858420, 0.463701, -0.219308,
		-0.267151, -0.769138, -0.580566,
		29.559198, 31.050360, 31.271273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088078, 31.427408, 31.881958>,  <29.746204, 31.588757, 31.677670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088078, 31.427408, 31.881958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.193565, 31.090714, 31.693520>,  <29.256859, 30.888697, 31.580458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.193565, 31.090714, 31.693520>,  <29.088078, 31.427408, 31.881958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193565, 31.090714, 31.693520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301799, -0.535867, 0.788520,
		-0.916171, -0.065773, -0.395355,
		0.263721, -0.841737, -0.471095,
		29.272682, 30.838192, 31.552191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663080, 30.871141, 32.112606>,  <29.088078, 31.427408, 31.881958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663080, 30.871141, 32.112606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.973286, 30.670082, 31.959808>,  <29.159409, 30.549446, 31.868130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.973286, 30.670082, 31.959808>,  <28.663080, 30.871141, 32.112606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973286, 30.670082, 31.959808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092619, -0.689102, 0.718721,
		-0.624499, -0.521998, -0.580963,
		0.775515, -0.502649, -0.381997,
		29.205940, 30.519287, 31.845209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.097713, 27.254129, 28.655970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.072113, 27.609928, 28.836945>,  <34.056751, 27.823408, 28.945530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.072113, 27.609928, 28.836945>,  <34.097713, 27.254129, 28.655970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072113, 27.609928, 28.836945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093946, 0.456724, -0.884634,
		-0.993518, -0.014114, -0.112796,
		-0.064002, 0.889496, 0.452438,
		34.052914, 27.876778, 28.972675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625259, 27.610062, 28.303263>,  <34.097713, 27.254129, 28.655970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625259, 27.610062, 28.303263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.827457, 27.899044, 28.491955>,  <33.948776, 28.072433, 28.605171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.827457, 27.899044, 28.491955>,  <33.625259, 27.610062, 28.303263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827457, 27.899044, 28.491955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029350, 0.532012, -0.846228,
		-0.862330, 0.441609, 0.247725,
		0.505495, 0.722457, 0.471731,
		33.979107, 28.115782, 28.633474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288361, 28.202957, 28.220375>,  <33.625259, 27.610062, 28.303263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288361, 28.202957, 28.220375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.649055, 28.345684, 28.317993>,  <33.865471, 28.431320, 28.376564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.649055, 28.345684, 28.317993>,  <33.288361, 28.202957, 28.220375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649055, 28.345684, 28.317993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006044, 0.574885, -0.818212,
		-0.432249, 0.736335, 0.520550,
		0.901734, 0.356817, 0.244043,
		33.919575, 28.452728, 28.391207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202618, 28.973316, 28.280771>,  <33.288361, 28.202957, 28.220375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202618, 28.973316, 28.280771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.593964, 28.916584, 28.220516>,  <33.828770, 28.882545, 28.184364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.593964, 28.916584, 28.220516>,  <33.202618, 28.973316, 28.280771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593964, 28.916584, 28.220516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007305, 0.703939, -0.710223,
		0.206769, 0.695956, 0.687671,
		0.978362, -0.141828, -0.150636,
		33.887474, 28.874035, 28.175325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568501, 29.647812, 28.405602>,  <33.202618, 28.973316, 28.280771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568501, 29.647812, 28.405602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.821396, 29.439598, 28.176056>,  <33.973133, 29.314669, 28.038328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.821396, 29.439598, 28.176056>,  <33.568501, 29.647812, 28.405602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821396, 29.439598, 28.176056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038916, 0.718413, -0.694528,
		0.773797, 0.461439, 0.433950,
		0.632237, -0.520536, -0.573863,
		34.011066, 29.283438, 28.003897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998375, 30.132914, 28.129211>,  <33.568501, 29.647812, 28.405602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998375, 30.132914, 28.129211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.043468, 29.825897, 27.876808>,  <34.070522, 29.641687, 27.725367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.043468, 29.825897, 27.876808>,  <33.998375, 30.132914, 28.129211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043468, 29.825897, 27.876808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024744, 0.632693, -0.774007,
		0.993317, 0.102869, 0.052333,
		0.112732, -0.767540, -0.631010,
		34.077290, 29.595634, 27.687506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562702, 30.374380, 27.624966>,  <33.998375, 30.132914, 28.129211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562702, 30.374380, 27.624966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.331173, 30.084824, 27.474792>,  <34.192257, 29.911089, 27.384689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.331173, 30.084824, 27.474792>,  <34.562702, 30.374380, 27.624966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331173, 30.084824, 27.474792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022583, 0.474450, -0.879993,
		0.815144, -0.500878, -0.290968,
		-0.578819, -0.723891, -0.375434,
		34.157528, 29.867657, 27.362162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797401, 30.277546, 26.969357>,  <34.562702, 30.374380, 27.624966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797401, 30.277546, 26.969357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.439739, 30.103001, 26.929222>,  <34.225140, 29.998274, 26.905142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.439739, 30.103001, 26.929222>,  <34.797401, 30.277546, 26.969357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439739, 30.103001, 26.929222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091392, 0.397243, -0.913152,
		0.438333, -0.807328, -0.395077,
		-0.894154, -0.436371, -0.100341,
		34.171494, 29.972092, 26.899120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855053, 30.169964, 26.308413>,  <34.797401, 30.277546, 26.969357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855053, 30.169964, 26.308413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.464764, 30.113621, 26.375492>,  <34.230591, 30.079815, 26.415741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.464764, 30.113621, 26.375492>,  <34.855053, 30.169964, 26.308413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464764, 30.113621, 26.375492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214223, 0.454682, -0.864507,
		0.045520, -0.879445, -0.473819,
		-0.975723, -0.140856, 0.167700,
		34.172047, 30.071363, 26.425802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497364, 29.816015, 25.686630>,  <34.855053, 30.169964, 26.308413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497364, 29.816015, 25.686630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.217793, 30.015442, 25.891739>,  <34.050049, 30.135098, 26.014805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.217793, 30.015442, 25.891739>,  <34.497364, 29.816015, 25.686630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217793, 30.015442, 25.891739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304025, 0.441848, -0.844002,
		-0.647358, -0.745790, -0.157242,
		-0.698925, 0.498566, 0.512772,
		34.008114, 30.165012, 26.045570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858971, 29.739374, 25.332376>,  <34.497364, 29.816015, 25.686630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858971, 29.739374, 25.332376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.793171, 30.040092, 25.587795>,  <33.753693, 30.220524, 25.741047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.793171, 30.040092, 25.587795>,  <33.858971, 29.739374, 25.332376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793171, 30.040092, 25.587795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462322, 0.513091, -0.723185,
		-0.871321, -0.414176, 0.263170,
		-0.164495, 0.751795, 0.638549,
		33.743824, 30.265631, 25.779360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142757, 30.036667, 25.130274>,  <33.858971, 29.739374, 25.332376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142757, 30.036667, 25.130274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.342113, 30.315094, 25.336998>,  <33.461727, 30.482151, 25.461033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.342113, 30.315094, 25.336998>,  <33.142757, 30.036667, 25.130274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342113, 30.315094, 25.336998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199461, 0.672199, -0.712996,
		-0.843694, 0.252269, 0.473858,
		0.498393, 0.696067, 0.516812,
		33.491631, 30.523914, 25.492043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682720, 30.615282, 25.045599>,  <33.142757, 30.036667, 25.130274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682720, 30.615282, 25.045599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.024853, 30.773655, 25.179249>,  <33.230133, 30.868679, 25.259439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.024853, 30.773655, 25.179249>,  <32.682720, 30.615282, 25.045599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024853, 30.773655, 25.179249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181026, 0.832693, -0.523308,
		-0.485419, 0.387118, 0.783906,
		0.855335, 0.395931, 0.334126,
		33.281452, 30.892435, 25.279488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617081, 31.377281, 25.003441>,  <32.682720, 30.615282, 25.045599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617081, 31.377281, 25.003441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.013931, 31.330559, 25.021553>,  <33.252041, 31.302526, 25.032421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.013931, 31.330559, 25.021553>,  <32.617081, 31.377281, 25.003441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013931, 31.330559, 25.021553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120781, 0.795934, -0.593212,
		0.033248, 0.594008, 0.803772,
		0.992122, -0.116804, 0.045282,
		33.311569, 31.295517, 25.035137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197914, 31.851639, 25.413383>,  <32.617081, 31.377281, 25.003441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197914, 31.851639, 25.413383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.902918, 31.664387, 25.218666>,  <31.725922, 31.552036, 25.101835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.902918, 31.664387, 25.218666>,  <32.197914, 31.851639, 25.413383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902918, 31.664387, 25.218666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080635, -0.654601, 0.751661,
		-0.670531, 0.593593, 0.445012,
		-0.737486, -0.468129, -0.486795,
		31.681671, 31.523949, 25.072628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773678, 31.676977, 25.923563>,  <32.197914, 31.851639, 25.413383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773678, 31.676977, 25.923563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.662006, 31.437698, 25.623104>,  <31.595003, 31.294132, 25.442829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.662006, 31.437698, 25.623104>,  <31.773678, 31.676977, 25.923563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662006, 31.437698, 25.623104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280793, -0.697201, 0.659596,
		-0.918267, 0.395062, 0.026675,
		-0.279179, -0.598195, -0.751147,
		31.578253, 31.258240, 25.397760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123804, 31.339413, 26.099819>,  <31.773678, 31.676977, 25.923563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123804, 31.339413, 26.099819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241665, 31.096004, 25.805096>,  <31.312382, 30.949961, 25.628262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241665, 31.096004, 25.805096>,  <31.123804, 31.339413, 26.099819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241665, 31.096004, 25.805096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335248, -0.787858, 0.516613,
		-0.894868, 0.094792, -0.436149,
		0.294652, -0.608519, -0.736808,
		31.330061, 30.913448, 25.584053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577076, 31.016350, 25.869295>,  <31.123804, 31.339413, 26.099819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577076, 31.016350, 25.869295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.909666, 30.806248, 25.796898>,  <31.109221, 30.680187, 25.753460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.909666, 30.806248, 25.796898>,  <30.577076, 31.016350, 25.869295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909666, 30.806248, 25.796898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411666, -0.801270, 0.434163,
		-0.373071, -0.286486, -0.882465,
		0.831474, -0.525254, -0.180994,
		31.159109, 30.648672, 25.742599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270290, 30.499580, 25.665102>,  <30.577076, 31.016350, 25.869295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270290, 30.499580, 25.665102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638931, 30.392231, 25.777260>,  <30.860117, 30.327822, 25.844555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638931, 30.392231, 25.777260>,  <30.270290, 30.499580, 25.665102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638931, 30.392231, 25.777260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361148, -0.857599, 0.366192,
		0.142190, -0.438748, -0.887289,
		0.921604, -0.268374, 0.280395,
		30.915413, 30.311718, 25.861378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331804, 29.762529, 25.635605>,  <30.270290, 30.499580, 25.665102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331804, 29.762529, 25.635605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.643719, 29.843868, 25.872444>,  <30.830868, 29.892672, 26.014547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.643719, 29.843868, 25.872444>,  <30.331804, 29.762529, 25.635605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643719, 29.843868, 25.872444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293818, -0.716275, 0.632947,
		0.552814, -0.667533, -0.498794,
		0.779786, 0.203347, 0.592100,
		30.877655, 29.904873, 26.050074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533344, 29.085873, 25.839325>,  <30.331804, 29.762529, 25.635605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533344, 29.085873, 25.839325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.706814, 29.321621, 26.111961>,  <30.810896, 29.463070, 26.275543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.706814, 29.321621, 26.111961>,  <30.533344, 29.085873, 25.839325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706814, 29.321621, 26.111961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134470, -0.705623, 0.695711,
		0.890979, -0.393366, -0.226759,
		0.433675, 0.589372, 0.681592,
		30.836916, 29.498432, 26.316439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105560, 28.706568, 26.135626>,  <30.533344, 29.085873, 25.839325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105560, 28.706568, 26.135626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.999098, 28.993286, 26.393421>,  <30.935221, 29.165318, 26.548100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.999098, 28.993286, 26.393421>,  <31.105560, 28.706568, 26.135626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999098, 28.993286, 26.393421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046747, -0.658222, 0.751371,
		0.962796, 0.230110, 0.141682,
		-0.266156, 0.716794, 0.644491,
		30.919250, 29.208324, 26.586769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539196, 28.647938, 26.706186>,  <31.105560, 28.706568, 26.135626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539196, 28.647938, 26.706186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.242769, 28.871990, 26.854279>,  <31.064913, 29.006422, 26.943134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.242769, 28.871990, 26.854279>,  <31.539196, 28.647938, 26.706186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242769, 28.871990, 26.854279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062298, -0.606388, 0.792725,
		0.668533, 0.564399, 0.484271,
		-0.741069, 0.560132, 0.370229,
		31.020449, 29.040030, 26.965347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709709, 28.968748, 27.386631>,  <31.539196, 28.647938, 26.706186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709709, 28.968748, 27.386631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.309786, 28.963211, 27.392193>,  <31.069832, 28.959888, 27.395531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.309786, 28.963211, 27.392193>,  <31.709709, 28.968748, 27.386631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309786, 28.963211, 27.392193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017999, -0.364890, 0.930877,
		-0.007811, 0.930948, 0.365069,
		-0.999808, -0.013842, 0.013906,
		31.009844, 28.959059, 27.396364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587713, 29.107559, 28.084736>,  <31.709709, 28.968748, 27.386631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587713, 29.107559, 28.084736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.255144, 28.945896, 27.932213>,  <31.055603, 28.848898, 27.840700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.255144, 28.945896, 27.932213>,  <31.587713, 29.107559, 28.084736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255144, 28.945896, 27.932213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284413, -0.279977, 0.916909,
		-0.477334, 0.870786, 0.117830,
		-0.831421, -0.404160, -0.381306,
		31.005718, 28.824648, 27.817822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068609, 29.309515, 28.549850>,  <31.587713, 29.107559, 28.084736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068609, 29.309515, 28.549850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.892223, 29.015591, 28.343704>,  <30.786392, 28.839235, 28.220016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.892223, 29.015591, 28.343704>,  <31.068609, 29.309515, 28.549850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892223, 29.015591, 28.343704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275353, -0.435758, 0.856910,
		-0.854243, 0.519774, -0.010178,
		-0.440965, -0.734812, -0.515365,
		30.759933, 28.795147, 28.189095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498713, 29.126907, 28.995558>,  <31.068609, 29.309515, 28.549850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498713, 29.126907, 28.995558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.555464, 28.816196, 28.750122>,  <30.589514, 28.629770, 28.602861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.555464, 28.816196, 28.750122>,  <30.498713, 29.126907, 28.995558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555464, 28.816196, 28.750122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042535, -0.624069, 0.780210,
		-0.988970, -0.084595, -0.121582,
		0.141877, -0.776776, -0.613588,
		30.598026, 28.583164, 28.566046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925034, 28.682484, 29.045500>,  <30.498713, 29.126907, 28.995558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925034, 28.682484, 29.045500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.230652, 28.465141, 28.906361>,  <30.414022, 28.334736, 28.822878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.230652, 28.465141, 28.906361>,  <29.925034, 28.682484, 29.045500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230652, 28.465141, 28.906361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114582, -0.644878, 0.755648,
		-0.634895, -0.537500, -0.554980,
		0.764055, -0.543348, -0.347842,
		30.459866, 28.302135, 28.802006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257589, 28.532726, 28.965319>,  <29.925034, 28.682484, 29.045500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257589, 28.532726, 28.965319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.867184, 28.497608, 29.045006>,  <28.632940, 28.476538, 29.092817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.867184, 28.497608, 29.045006>,  <29.257589, 28.532726, 28.965319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867184, 28.497608, 29.045006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202198, 0.026384, -0.978989,
		0.080693, -0.995789, -0.043503,
		-0.976014, -0.087794, 0.199218,
		28.574379, 28.471270, 29.104771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977005, 28.117264, 28.380560>,  <29.257589, 28.532726, 28.965319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977005, 28.117264, 28.380560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.693302, 28.337234, 28.556984>,  <28.523081, 28.469217, 28.662838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.693302, 28.337234, 28.556984>,  <28.977005, 28.117264, 28.380560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693302, 28.337234, 28.556984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320064, 0.306255, -0.896530,
		-0.628106, -0.777036, -0.041200,
		-0.709254, 0.549929, 0.441062,
		28.480526, 28.502213, 28.689302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410667, 28.112316, 27.897131>,  <28.977005, 28.117264, 28.380560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410667, 28.112316, 27.897131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.318001, 28.414608, 28.142147>,  <28.262402, 28.595984, 28.289156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.318001, 28.414608, 28.142147>,  <28.410667, 28.112316, 27.897131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318001, 28.414608, 28.142147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489603, 0.453526, -0.744717,
		-0.840607, -0.472427, 0.264940,
		-0.231667, 0.755730, 0.612539,
		28.248501, 28.641327, 28.325909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.687105, 28.271530, 27.761517>,  <28.410667, 28.112316, 27.897131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.687105, 28.271530, 27.761517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.855932, 28.592987, 27.929337>,  <27.957228, 28.785860, 28.030027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.855932, 28.592987, 27.929337>,  <27.687105, 28.271530, 27.761517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855932, 28.592987, 27.929337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497357, 0.592190, -0.633993,
		-0.757955, 0.058922, 0.649640,
		0.422067, 0.803641, 0.419548,
		27.982552, 28.834080, 28.055201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210182, 28.777855, 27.977152>,  <27.687105, 28.271530, 27.761517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210182, 28.777855, 27.977152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.538826, 28.992935, 27.901432>,  <27.736013, 29.121983, 27.856001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.538826, 28.992935, 27.901432>,  <27.210182, 28.777855, 27.977152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538826, 28.992935, 27.901432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544297, 0.641297, -0.540812,
		-0.169397, 0.547373, 0.819565,
		0.821611, 0.537699, -0.189300,
		27.785309, 29.154245, 27.844643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886002, 29.441145, 27.702318>,  <27.210182, 28.777855, 27.977152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886002, 29.441145, 27.702318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.278330, 29.449375, 27.624786>,  <27.513727, 29.454313, 27.578268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.278330, 29.449375, 27.624786>,  <26.886002, 29.441145, 27.702318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278330, 29.449375, 27.624786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154250, 0.689874, -0.707305,
		0.119162, 0.723637, 0.679816,
		0.980820, 0.020577, -0.193828,
		27.572577, 29.455549, 27.566637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079021, 30.157444, 27.652498>,  <26.886002, 29.441145, 27.702318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079021, 30.157444, 27.652498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.337931, 29.933777, 27.445282>,  <27.493277, 29.799578, 27.320951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.337931, 29.933777, 27.445282>,  <27.079021, 30.157444, 27.652498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337931, 29.933777, 27.445282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002192, 0.678249, -0.734829,
		0.762253, 0.476773, 0.437788,
		0.647275, -0.559166, -0.518042,
		27.532114, 29.766027, 27.289869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617422, 30.628574, 27.482283>,  <27.079021, 30.157444, 27.652498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617422, 30.628574, 27.482283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.650488, 30.313786, 27.237713>,  <27.670326, 30.124912, 27.090971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.650488, 30.313786, 27.237713>,  <27.617422, 30.628574, 27.482283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650488, 30.313786, 27.237713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147924, 0.616419, -0.773399,
		0.985538, -0.026514, 0.167367,
		0.082663, -0.786972, -0.611427,
		27.675287, 30.077694, 27.054285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264339, 30.644403, 27.042654>,  <27.617422, 30.628574, 27.482283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264339, 30.644403, 27.042654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.010283, 30.428524, 26.821632>,  <27.857847, 30.298996, 26.689018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.010283, 30.428524, 26.821632>,  <28.264339, 30.644403, 27.042654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010283, 30.428524, 26.821632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114166, 0.641925, -0.758220,
		0.763910, -0.544662, -0.346099,
		-0.635144, -0.539699, -0.552555,
		27.819740, 30.266615, 26.655867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502401, 30.710329, 26.383017>,  <28.264339, 30.644403, 27.042654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502401, 30.710329, 26.383017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.127930, 30.587864, 26.313931>,  <27.903246, 30.514385, 26.272478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.127930, 30.587864, 26.313931>,  <28.502401, 30.710329, 26.383017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.127930, 30.587864, 26.313931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049458, 0.601170, -0.797589,
		0.348024, -0.738145, -0.577945,
		-0.936180, -0.306165, -0.172714,
		27.847076, 30.496014, 26.262115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498362, 30.366285, 25.729855>,  <28.502401, 30.710329, 26.383017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498362, 30.366285, 25.729855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.114912, 30.467941, 25.781158>,  <27.884842, 30.528934, 25.811941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.114912, 30.467941, 25.781158>,  <28.498362, 30.366285, 25.729855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114912, 30.467941, 25.781158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030786, 0.540468, -0.840801,
		-0.283002, -0.802064, -0.525930,
		-0.958625, 0.254140, 0.128261,
		27.827324, 30.544184, 25.819637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170691, 30.273642, 25.069023>,  <28.498362, 30.366285, 25.729855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.170691, 30.273642, 25.069023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.917824, 30.515003, 25.263454>,  <27.766104, 30.659821, 25.380114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.917824, 30.515003, 25.263454>,  <28.170691, 30.273642, 25.069023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917824, 30.515003, 25.263454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109919, 0.551149, -0.827135,
		-0.766998, -0.576315, -0.282092,
		-0.632165, 0.603404, 0.486078,
		27.728174, 30.696024, 25.409277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557756, 30.421423, 24.624775>,  <28.170691, 30.273642, 25.069023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557756, 30.421423, 24.624775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.580122, 30.728878, 24.879669>,  <27.593542, 30.913351, 25.032606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.580122, 30.728878, 24.879669>,  <27.557756, 30.421423, 24.624775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580122, 30.728878, 24.879669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102892, 0.639274, -0.762065,
		-0.993120, -0.022955, 0.114832,
		0.055916, 0.768637, 0.637237,
		27.596897, 30.959469, 25.070841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117876, 30.851561, 24.393158>,  <27.557756, 30.421423, 24.624775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117876, 30.851561, 24.393158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.303156, 31.094749, 24.651093>,  <27.414324, 31.240664, 24.805853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.303156, 31.094749, 24.651093>,  <27.117876, 30.851561, 24.393158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303156, 31.094749, 24.651093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246866, 0.787313, -0.564974,
		-0.851177, 0.102508, 0.514771,
		0.463200, 0.607972, 0.644838,
		27.442116, 31.277142, 24.844543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.664383, 36.775768, 14.393138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.922951, 36.475548, 14.338262>,  <43.078091, 36.295418, 14.305336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.922951, 36.475548, 14.338262>,  <42.664383, 36.775768, 14.393138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922951, 36.475548, 14.338262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049008, -0.138593, 0.989136,
		-0.761407, -0.646120, -0.052806,
		0.646419, -0.750547, -0.137191,
		43.116875, 36.250385, 14.297104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368008, 36.134804, 14.502029>,  <42.664383, 36.775768, 14.393138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368008, 36.134804, 14.502029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.759369, 36.132236, 14.584664>,  <42.994186, 36.130695, 14.634246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.759369, 36.132236, 14.584664>,  <42.368008, 36.134804, 14.502029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759369, 36.132236, 14.584664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199004, -0.299234, 0.933197,
		0.055830, -0.954158, -0.294049,
		0.978407, -0.006417, 0.206588,
		43.052891, 36.130310, 14.646641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482307, 35.580112, 14.911979>,  <42.368008, 36.134804, 14.502029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482307, 35.580112, 14.911979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.794083, 35.821495, 14.979287>,  <42.981148, 35.966324, 15.019672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.794083, 35.821495, 14.979287>,  <42.482307, 35.580112, 14.911979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794083, 35.821495, 14.979287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139345, -0.094875, 0.985689,
		0.610788, -0.791729, 0.010140,
		0.779436, 0.603460, 0.168272,
		43.027912, 36.002533, 15.029769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829979, 35.107674, 15.337374>,  <42.482307, 35.580112, 14.911979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829979, 35.107674, 15.337374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.960991, 35.480103, 15.401654>,  <43.039597, 35.703560, 15.440223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.960991, 35.480103, 15.401654>,  <42.829979, 35.107674, 15.337374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960991, 35.480103, 15.401654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035459, -0.157851, 0.986826,
		0.944177, -0.328910, -0.018685,
		0.327526, 0.931076, 0.160702,
		43.059250, 35.759426, 15.449865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037777, 35.051804, 16.054829>,  <42.829979, 35.107674, 15.337374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037777, 35.051804, 16.054829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.065319, 35.448692, 16.013344>,  <43.081844, 35.686825, 15.988453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.065319, 35.448692, 16.013344>,  <43.037777, 35.051804, 16.054829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065319, 35.448692, 16.013344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064351, 0.099325, 0.992972,
		0.995549, -0.075044, -0.057012,
		0.068854, 0.992221, -0.103712,
		43.085976, 35.746357, 15.982230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.564365, 35.288277, 16.496588>,  <43.037777, 35.051804, 16.054829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.564365, 35.288277, 16.496588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.301487, 35.582745, 16.431908>,  <43.143761, 35.759426, 16.393099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.301487, 35.582745, 16.431908>,  <43.564365, 35.288277, 16.496588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301487, 35.582745, 16.431908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245980, -0.006693, 0.969252,
		0.712450, 0.676766, 0.185481,
		-0.657198, 0.736168, -0.161702,
		43.104328, 35.803596, 16.383396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691605, 35.762398, 17.038366>,  <43.564365, 35.288277, 16.496588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691605, 35.762398, 17.038366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.325779, 35.853889, 16.904949>,  <43.106281, 35.908783, 16.824900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.325779, 35.853889, 16.904949>,  <43.691605, 35.762398, 17.038366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325779, 35.853889, 16.904949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293636, 0.191581, 0.936523,
		0.278110, 0.954453, -0.108051,
		-0.914567, 0.228728, -0.333542,
		43.051411, 35.922508, 16.804886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459824, 36.431633, 17.263319>,  <43.691605, 35.762398, 17.038366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459824, 36.431633, 17.263319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.118774, 36.229805, 17.209007>,  <42.914143, 36.108707, 17.176420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.118774, 36.229805, 17.209007>,  <43.459824, 36.431633, 17.263319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118774, 36.229805, 17.209007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322296, 0.303306, 0.896733,
		-0.411280, 0.808342, -0.421228,
		-0.852628, -0.504568, -0.135782,
		42.862988, 36.078434, 17.168272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.948608, 36.783390, 17.652405>,  <43.459824, 36.431633, 17.263319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.948608, 36.783390, 17.652405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.735516, 36.453690, 17.575668>,  <42.607658, 36.255871, 17.529627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.735516, 36.453690, 17.575668>,  <42.948608, 36.783390, 17.652405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735516, 36.453690, 17.575668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512641, 0.133941, 0.848091,
		-0.673344, 0.550155, -0.493900,
		-0.532735, -0.824251, -0.191843,
		42.575695, 36.206413, 17.518116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265457, 36.996346, 17.719069>,  <42.948608, 36.783390, 17.652405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265457, 36.996346, 17.719069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.285763, 36.599060, 17.760937>,  <42.297947, 36.360691, 17.786058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.285763, 36.599060, 17.760937>,  <42.265457, 36.996346, 17.719069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285763, 36.599060, 17.760937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669872, 0.043873, 0.741180,
		-0.740740, -0.107739, -0.663097,
		0.050762, -0.993211, 0.104670,
		42.300991, 36.301098, 17.792337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528820, 36.832245, 17.818935>,  <42.265457, 36.996346, 17.719069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528820, 36.832245, 17.818935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.738403, 36.520199, 17.955688>,  <41.864155, 36.332970, 18.037741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.738403, 36.520199, 17.955688>,  <41.528820, 36.832245, 17.818935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738403, 36.520199, 17.955688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749275, -0.231288, 0.620558,
		-0.405035, -0.581311, -0.705709,
		0.523959, -0.780118, 0.341882,
		41.895592, 36.286163, 18.058254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979393, 36.399452, 17.957449>,  <41.528820, 36.832245, 17.818935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979393, 36.399452, 17.957449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.296120, 36.231308, 18.134682>,  <41.486156, 36.130421, 18.241022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.296120, 36.231308, 18.134682>,  <40.979393, 36.399452, 17.957449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296120, 36.231308, 18.134682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574863, -0.267915, 0.773145,
		-0.206294, -0.866901, -0.453791,
		0.791818, -0.420363, 0.443080,
		41.533665, 36.105198, 18.267607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888466, 35.590782, 18.070162>,  <40.979393, 36.399452, 17.957449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888466, 35.590782, 18.070162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.160362, 35.725292, 18.330891>,  <41.323502, 35.806000, 18.487328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.160362, 35.725292, 18.330891>,  <40.888466, 35.590782, 18.070162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160362, 35.725292, 18.330891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519646, -0.406368, 0.751554,
		0.517610, -0.849577, -0.101479,
		0.679740, 0.336279, 0.651820,
		41.364285, 35.826176, 18.526436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131176, 34.962585, 18.530642>,  <40.888466, 35.590782, 18.070162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131176, 34.962585, 18.530642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.217701, 35.305286, 18.717907>,  <41.269615, 35.510906, 18.830267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.217701, 35.305286, 18.717907>,  <41.131176, 34.962585, 18.530642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217701, 35.305286, 18.717907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362109, -0.374913, 0.853415,
		0.906690, -0.354130, 0.229142,
		0.216311, 0.856756, 0.468164,
		41.282593, 35.562313, 18.858356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178978, 34.721882, 19.076511>,  <41.131176, 34.962585, 18.530642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178978, 34.721882, 19.076511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.148502, 35.111229, 19.162998>,  <41.130219, 35.344837, 19.214891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.148502, 35.111229, 19.162998>,  <41.178978, 34.721882, 19.076511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148502, 35.111229, 19.162998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519963, -0.223816, 0.824345,
		0.850784, -0.049618, 0.523168,
		-0.076191, 0.973368, 0.216219,
		41.125645, 35.403240, 19.227863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386681, 34.822998, 19.826712>,  <41.178978, 34.721882, 19.076511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386681, 34.822998, 19.826712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.153446, 35.128365, 19.715565>,  <41.013508, 35.311584, 19.648876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.153446, 35.128365, 19.715565>,  <41.386681, 34.822998, 19.826712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153446, 35.128365, 19.715565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529815, -0.098039, 0.842428,
		0.615882, 0.638422, 0.461634,
		-0.583083, 0.763417, -0.277865,
		40.978523, 35.357391, 19.632206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287739, 35.326756, 20.501284>,  <41.386681, 34.822998, 19.826712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287739, 35.326756, 20.501284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.992664, 35.401321, 20.241726>,  <40.815620, 35.446060, 20.085991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.992664, 35.401321, 20.241726>,  <41.287739, 35.326756, 20.501284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992664, 35.401321, 20.241726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637141, 0.125681, 0.760432,
		0.223308, 0.974400, 0.026058,
		-0.737689, 0.186413, -0.648895,
		40.771358, 35.457245, 20.047058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791126, 35.673470, 20.909435>,  <41.287739, 35.326756, 20.501284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791126, 35.673470, 20.909435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.574532, 35.611866, 20.578842>,  <40.444576, 35.574902, 20.380486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.574532, 35.611866, 20.578842>,  <40.791126, 35.673470, 20.909435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574532, 35.611866, 20.578842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822259, -0.107814, 0.558807,
		-0.175169, 0.982169, -0.068257,
		-0.541484, -0.154011, -0.826484,
		40.412086, 35.565662, 20.330896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095486, 36.135231, 21.068274>,  <40.791126, 35.673470, 20.909435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095486, 36.135231, 21.068274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.032970, 35.830364, 20.816982>,  <39.995461, 35.647442, 20.666208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.032970, 35.830364, 20.816982>,  <40.095486, 36.135231, 21.068274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032970, 35.830364, 20.816982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844315, -0.226972, 0.485403,
		-0.512550, 0.606283, -0.608040,
		-0.156284, -0.762170, -0.628229,
		39.986084, 35.601711, 20.628513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488190, 36.216068, 20.911858>,  <40.095486, 36.135231, 21.068274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488190, 36.216068, 20.911858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.540829, 35.832367, 20.811840>,  <39.572411, 35.602146, 20.751829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.540829, 35.832367, 20.811840>,  <39.488190, 36.216068, 20.911858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540829, 35.832367, 20.811840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784618, -0.254946, 0.565134,
		-0.605853, 0.121819, -0.786195,
		0.131593, -0.959251, -0.250042,
		39.580307, 35.544590, 20.736828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797981, 35.893562, 20.674824>,  <39.488190, 36.216068, 20.911858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797981, 35.893562, 20.674824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.033157, 35.588543, 20.782780>,  <39.174263, 35.405529, 20.847553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.033157, 35.588543, 20.782780>,  <38.797981, 35.893562, 20.674824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033157, 35.588543, 20.782780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777758, -0.441221, 0.447679,
		-0.222298, -0.473116, -0.852493,
		0.587942, -0.762552, 0.269888,
		39.209541, 35.359776, 20.863747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203762, 35.640347, 20.380419>,  <38.797981, 35.893562, 20.674824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203762, 35.640347, 20.380419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.038555, 35.956871, 20.200089>,  <37.939430, 36.146786, 20.091890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.038555, 35.956871, 20.200089>,  <38.203762, 35.640347, 20.380419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038555, 35.956871, 20.200089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836486, 0.133855, -0.531388,
		-0.360148, -0.596582, -0.717206,
		-0.413018, 0.791311, -0.450825,
		37.914650, 36.194263, 20.064840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399036, 35.454910, 19.708099>,  <38.203762, 35.640347, 20.380419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399036, 35.454910, 19.708099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.259300, 35.828541, 19.678558>,  <38.175457, 36.052719, 19.660833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.259300, 35.828541, 19.678558>,  <38.399036, 35.454910, 19.708099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259300, 35.828541, 19.678558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662523, 0.190506, -0.724410,
		-0.662588, -0.301995, -0.685402,
		-0.349342, 0.934081, -0.073852,
		38.154499, 36.108765, 19.656403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062599, 35.589436, 19.041729>,  <38.399036, 35.454910, 19.708099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062599, 35.589436, 19.041729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.204281, 35.938721, 19.175613>,  <38.289291, 36.148293, 19.255943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.204281, 35.938721, 19.175613>,  <38.062599, 35.589436, 19.041729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204281, 35.938721, 19.175613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575094, 0.078842, -0.814279,
		-0.737431, 0.480914, -0.474255,
		0.354207, 0.873215, 0.334712,
		38.310543, 36.200684, 19.276028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981739, 35.900368, 18.367603>,  <38.062599, 35.589436, 19.041729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981739, 35.900368, 18.367603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.186932, 36.148026, 18.605431>,  <38.310047, 36.296619, 18.748127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.186932, 36.148026, 18.605431>,  <37.981739, 35.900368, 18.367603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186932, 36.148026, 18.605431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459116, 0.387355, -0.799481,
		-0.725299, 0.683098, -0.085550,
		0.512985, 0.619140, 0.594569,
		38.340828, 36.333767, 18.783802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912891, 36.614948, 18.133692>,  <37.981739, 35.900368, 18.367603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912891, 36.614948, 18.133692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.243855, 36.627258, 18.357994>,  <38.442432, 36.634644, 18.492577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.243855, 36.627258, 18.357994>,  <37.912891, 36.614948, 18.133692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243855, 36.627258, 18.357994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505543, 0.394047, -0.767563,
		-0.244585, 0.918575, 0.310480,
		0.827408, 0.030773, 0.560757,
		38.492077, 36.636490, 18.526222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056114, 37.434448, 18.324854>,  <37.912891, 36.614948, 18.133692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056114, 37.434448, 18.324854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.370625, 37.189117, 18.354771>,  <38.559330, 37.041920, 18.372721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.370625, 37.189117, 18.354771>,  <38.056114, 37.434448, 18.324854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370625, 37.189117, 18.354771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487673, 0.541706, -0.684639,
		0.379392, 0.574792, 0.725035,
		0.786280, -0.613326, 0.074791,
		38.606510, 37.005119, 18.377209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640244, 37.865978, 18.427269>,  <38.056114, 37.434448, 18.324854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640244, 37.865978, 18.427269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.772861, 37.505001, 18.317234>,  <38.852432, 37.288414, 18.251213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.772861, 37.505001, 18.317234>,  <38.640244, 37.865978, 18.427269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772861, 37.505001, 18.317234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543339, 0.421013, -0.726313,
		0.771273, 0.091338, 0.629917,
		0.331543, -0.902444, -0.275089,
		38.872326, 37.234268, 18.234707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320053, 37.940212, 18.280855>,  <38.640244, 37.865978, 18.427269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320053, 37.940212, 18.280855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.236206, 37.600773, 18.086563>,  <39.185898, 37.397110, 17.969988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.236206, 37.600773, 18.086563>,  <39.320053, 37.940212, 18.280855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236206, 37.600773, 18.086563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570726, 0.297177, -0.765479,
		0.793936, -0.437675, 0.422027,
		-0.209615, -0.848603, -0.485732,
		39.173321, 37.346191, 17.940844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846611, 37.906654, 17.866888>,  <39.320053, 37.940212, 18.280855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846611, 37.906654, 17.866888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.608345, 37.631477, 17.701035>,  <39.465385, 37.466370, 17.601522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.608345, 37.631477, 17.701035>,  <39.846611, 37.906654, 17.866888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608345, 37.631477, 17.701035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497598, 0.089180, -0.862811,
		0.630542, -0.720265, 0.289198,
		-0.595662, -0.687943, -0.414634,
		39.429646, 37.425095, 17.576645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221409, 37.406082, 17.549311>,  <39.846611, 37.906654, 17.866888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221409, 37.406082, 17.549311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.873146, 37.356815, 17.358826>,  <39.664188, 37.327255, 17.244535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.873146, 37.356815, 17.358826>,  <40.221409, 37.406082, 17.549311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873146, 37.356815, 17.358826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457044, 0.155303, -0.875781,
		0.181833, -0.980157, -0.078919,
		-0.870660, -0.123176, -0.476214,
		39.611946, 37.319866, 17.215961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399620, 36.935307, 17.023523>,  <40.221409, 37.406082, 17.549311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399620, 36.935307, 17.023523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.042030, 37.056129, 16.891117>,  <39.827477, 37.128624, 16.811674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.042030, 37.056129, 16.891117>,  <40.399620, 36.935307, 17.023523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042030, 37.056129, 16.891117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370417, 0.082399, -0.925204,
		-0.252185, -0.949723, -0.185549,
		-0.893977, 0.302053, -0.331014,
		39.773838, 37.146744, 16.791813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099934, 36.482185, 16.532942>,  <40.399620, 36.935307, 17.023523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099934, 36.482185, 16.532942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.916691, 36.829296, 16.455898>,  <39.806747, 37.037563, 16.409672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.916691, 36.829296, 16.455898>,  <40.099934, 36.482185, 16.532942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916691, 36.829296, 16.455898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320962, -0.040582, -0.946222,
		-0.828930, -0.495288, -0.259934,
		-0.458104, 0.867780, -0.192608,
		39.779259, 37.089630, 16.398115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692062, 36.415821, 15.977535>,  <40.099934, 36.482185, 16.532942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692062, 36.415821, 15.977535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.750099, 36.810818, 16.002197>,  <39.784924, 37.047817, 16.016994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.750099, 36.810818, 16.002197>,  <39.692062, 36.415821, 15.977535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750099, 36.810818, 16.002197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214510, 0.029436, -0.976278,
		-0.965885, 0.154878, -0.207557,
		0.145095, 0.987495, 0.061655,
		39.793629, 37.107067, 16.020693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329830, 36.668476, 15.393183>,  <39.692062, 36.415821, 15.977535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329830, 36.668476, 15.393183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.563892, 36.982719, 15.473592>,  <39.704330, 37.171265, 15.521837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.563892, 36.982719, 15.473592>,  <39.329830, 36.668476, 15.393183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563892, 36.982719, 15.473592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097736, 0.177762, -0.979208,
		-0.805010, 0.592635, 0.027236,
		0.585155, 0.785611, 0.201022,
		39.739437, 37.218403, 15.533898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.067406, 37.162167, 14.947473>,  <39.329830, 36.668476, 15.393183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.067406, 37.162167, 14.947473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.439163, 37.283543, 15.031531>,  <39.662216, 37.356369, 15.081966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.439163, 37.283543, 15.031531>,  <39.067406, 37.162167, 14.947473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439163, 37.283543, 15.031531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113517, 0.306769, -0.944990,
		-0.351210, 0.902119, 0.250663,
		0.929390, 0.303436, 0.210146,
		39.717979, 37.374573, 15.094575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137146, 37.839531, 14.638364>,  <39.067406, 37.162167, 14.947473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137146, 37.839531, 14.638364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.512951, 37.722492, 14.709592>,  <39.738434, 37.652267, 14.752329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.512951, 37.722492, 14.709592>,  <39.137146, 37.839531, 14.638364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512951, 37.722492, 14.709592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277104, 0.343693, -0.897267,
		0.201338, 0.892334, 0.403983,
		0.939508, -0.292600, 0.178071,
		39.794804, 37.634712, 14.763013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512890, 38.242939, 14.227086>,  <39.137146, 37.839531, 14.638364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512890, 38.242939, 14.227086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.793884, 37.970531, 14.309775>,  <39.962479, 37.807087, 14.359389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.793884, 37.970531, 14.309775>,  <39.512890, 38.242939, 14.227086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793884, 37.970531, 14.309775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350556, 0.078312, -0.933262,
		0.619378, 0.728068, 0.293747,
		0.702483, -0.681017, 0.206724,
		40.004627, 37.766228, 14.371793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148270, 38.486797, 13.915573>,  <39.512890, 38.242939, 14.227086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148270, 38.486797, 13.915573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.210865, 38.094749, 13.964375>,  <40.248421, 37.859520, 13.993657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.210865, 38.094749, 13.964375>,  <40.148270, 38.486797, 13.915573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210865, 38.094749, 13.964375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537864, -0.019039, -0.842817,
		0.828381, 0.197510, 0.524189,
		0.156485, -0.980116, 0.122005,
		40.257809, 37.800716, 14.000978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904552, 38.275089, 13.865102>,  <40.148270, 38.486797, 13.915573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904552, 38.275089, 13.865102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.745949, 37.911839, 13.811313>,  <40.650787, 37.693886, 13.779039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.745949, 37.911839, 13.811313>,  <40.904552, 38.275089, 13.865102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745949, 37.911839, 13.811313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631175, -0.163306, -0.758254,
		0.666632, -0.385531, 0.637941,
		-0.396510, -0.908128, -0.134473,
		40.626995, 37.639400, 13.770971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376637, 37.828815, 13.910660>,  <40.904552, 38.275089, 13.865102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376637, 37.828815, 13.910660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.108028, 37.623329, 13.697059>,  <40.946865, 37.500038, 13.568898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.108028, 37.623329, 13.697059>,  <41.376637, 37.828815, 13.910660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108028, 37.623329, 13.697059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669525, -0.111878, -0.734315,
		0.317484, -0.850636, 0.419073,
		-0.671520, -0.513714, -0.534003,
		40.906570, 37.469215, 13.536858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724327, 37.250854, 13.688462>,  <41.376637, 37.828815, 13.910660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724327, 37.250854, 13.688462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.398777, 37.268169, 13.456693>,  <41.203445, 37.278557, 13.317631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.398777, 37.268169, 13.456693>,  <41.724327, 37.250854, 13.688462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398777, 37.268169, 13.456693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557843, -0.220739, -0.800054,
		-0.162535, -0.974372, 0.155506,
		-0.813876, 0.043289, -0.579424,
		41.154613, 37.281155, 13.282866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.567936, 30.040430, 32.179237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.960882, 30.059383, 32.106892>,  <29.196650, 30.070755, 32.063484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.960882, 30.059383, 32.106892>,  <28.567936, 30.040430, 32.179237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960882, 30.059383, 32.106892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160761, -0.707960, 0.687712,
		-0.095460, -0.704661, -0.703093,
		0.982366, 0.047381, -0.180864,
		29.255592, 30.073597, 32.052631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832733, 29.278595, 32.183014>,  <28.567936, 30.040430, 32.179237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832733, 29.278595, 32.183014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.156105, 29.513027, 32.204739>,  <29.350128, 29.653687, 32.217773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.156105, 29.513027, 32.204739>,  <28.832733, 29.278595, 32.183014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156105, 29.513027, 32.204739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487620, -0.718569, 0.495869,
		0.329648, -0.374390, -0.866697,
		0.808430, 0.586081, 0.054314,
		29.398634, 29.688852, 32.221031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425085, 28.919962, 31.949661>,  <28.832733, 29.278595, 32.183014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425085, 28.919962, 31.949661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.565531, 29.173183, 32.225620>,  <29.649799, 29.325117, 32.391197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.565531, 29.173183, 32.225620>,  <29.425085, 28.919962, 31.949661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565531, 29.173183, 32.225620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371254, -0.770543, 0.518107,
		0.859586, 0.074213, -0.505573,
		0.351115, 0.633053, 0.689900,
		29.670866, 29.363100, 32.432590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085674, 28.645815, 32.162315>,  <29.425085, 28.919962, 31.949661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085674, 28.645815, 32.162315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.986931, 28.900330, 32.454674>,  <29.927685, 29.053038, 32.630089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.986931, 28.900330, 32.454674>,  <30.085674, 28.645815, 32.162315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986931, 28.900330, 32.454674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181150, -0.710638, 0.679837,
		0.951969, 0.300224, 0.060164,
		-0.246859, 0.636285, 0.730891,
		29.912872, 29.091215, 32.673943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624334, 28.741076, 32.546188>,  <30.085674, 28.645815, 32.162315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624334, 28.741076, 32.546188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.349810, 28.874249, 32.804840>,  <30.185095, 28.954151, 32.960030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.349810, 28.874249, 32.804840>,  <30.624334, 28.741076, 32.546188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349810, 28.874249, 32.804840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443993, -0.512402, 0.735061,
		0.576060, 0.791581, 0.203849,
		-0.686313, 0.332932, 0.646631,
		30.143915, 28.974129, 32.998829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972389, 28.667456, 33.100594>,  <30.624334, 28.741076, 32.546188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972389, 28.667456, 33.100594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.604282, 28.713062, 33.250320>,  <30.383419, 28.740427, 33.340157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.604282, 28.713062, 33.250320>,  <30.972389, 28.667456, 33.100594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604282, 28.713062, 33.250320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262444, -0.529678, 0.806575,
		0.290229, 0.840500, 0.457522,
		-0.920266, 0.114018, 0.374312,
		30.328203, 28.747267, 33.362614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058287, 28.992651, 33.739716>,  <30.972389, 28.667456, 33.100594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058287, 28.992651, 33.739716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.703121, 28.808651, 33.741131>,  <30.490023, 28.698252, 33.741982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.703121, 28.808651, 33.741131>,  <31.058287, 28.992651, 33.739716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703121, 28.808651, 33.741131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271511, -0.517843, 0.811246,
		-0.371338, 0.721277, 0.584694,
		-0.887913, -0.459998, 0.003540,
		30.436747, 28.670652, 33.742191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516258, 29.152063, 34.331867>,  <31.058287, 28.992651, 33.739716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516258, 29.152063, 34.331867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.443007, 28.780369, 34.203503>,  <30.399055, 28.557352, 34.126484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.443007, 28.780369, 34.203503>,  <30.516258, 29.152063, 34.331867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443007, 28.780369, 34.203503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167615, -0.351162, 0.921190,
		-0.968694, 0.114910, 0.220062,
		-0.183131, -0.929237, -0.320908,
		30.388067, 28.501598, 34.107231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192030, 28.958689, 34.898655>,  <30.516258, 29.152063, 34.331867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192030, 28.958689, 34.898655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273716, 28.642593, 34.667545>,  <30.322727, 28.452936, 34.528881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273716, 28.642593, 34.667545>,  <30.192030, 28.958689, 34.898655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273716, 28.642593, 34.667545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064527, -0.599791, 0.797550,
		-0.976797, -0.125589, -0.173477,
		0.204214, -0.790239, -0.577771,
		30.334980, 28.405521, 34.494213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606838, 28.513603, 35.061352>,  <30.192030, 28.958689, 34.898655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606838, 28.513603, 35.061352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.877214, 28.257481, 34.915413>,  <30.039440, 28.103807, 34.827850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.877214, 28.257481, 34.915413>,  <29.606838, 28.513603, 35.061352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877214, 28.257481, 34.915413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028042, -0.472371, 0.880954,
		-0.736424, -0.605702, -0.301338,
		0.675939, -0.640306, -0.364850,
		30.079996, 28.065390, 34.805958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261448, 27.923319, 35.143909>,  <29.606838, 28.513603, 35.061352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261448, 27.923319, 35.143909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.656874, 27.865570, 35.126480>,  <29.894129, 27.830921, 35.116024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.656874, 27.865570, 35.126480>,  <29.261448, 27.923319, 35.143909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656874, 27.865570, 35.126480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033821, -0.493810, 0.868912,
		-0.146962, -0.857501, -0.493046,
		0.988564, -0.144372, -0.043569,
		29.953444, 27.822258, 35.113411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422705, 27.193335, 35.155910>,  <29.261448, 27.923319, 35.143909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422705, 27.193335, 35.155910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.736889, 27.398327, 35.294716>,  <29.925400, 27.521322, 35.377998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.736889, 27.398327, 35.294716>,  <29.422705, 27.193335, 35.155910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736889, 27.398327, 35.294716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004621, -0.565520, 0.824721,
		0.618898, -0.646181, -0.446561,
		0.785458, 0.512482, 0.347013,
		29.972527, 27.552071, 35.398819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807425, 26.666796, 35.370491>,  <29.422705, 27.193335, 35.155910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807425, 26.666796, 35.370491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.634815, 26.556511, 35.026917>,  <28.531250, 26.490339, 34.820770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.634815, 26.556511, 35.026917>,  <28.807425, 26.666796, 35.370491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634815, 26.556511, 35.026917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821577, -0.273109, 0.500422,
		-0.372556, 0.921625, -0.108667,
		-0.431524, -0.275714, -0.858935,
		28.505358, 26.473797, 34.769238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101686, 26.967852, 35.103981>,  <28.807425, 26.666796, 35.370491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101686, 26.967852, 35.103981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.153107, 26.588688, 34.987400>,  <28.183958, 26.361191, 34.917450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.153107, 26.588688, 34.987400>,  <28.101686, 26.967852, 35.103981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153107, 26.588688, 34.987400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854973, -0.254846, 0.451745,
		-0.502489, 0.191116, -0.843196,
		0.128549, -0.947907, -0.291456,
		28.191671, 26.304316, 34.899963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595013, 26.536182, 34.628887>,  <28.101686, 26.967852, 35.103981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595013, 26.536182, 34.628887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.747288, 26.215492, 34.444576>,  <27.838652, 26.023079, 34.333988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.747288, 26.215492, 34.444576>,  <27.595013, 26.536182, 34.628887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747288, 26.215492, 34.444576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010153, 0.494644, -0.869036,
		0.924649, 0.335508, 0.180164,
		0.380686, -0.801724, -0.460778,
		27.861494, 25.974976, 34.306343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154211, 26.805309, 34.266376>,  <27.595013, 26.536182, 34.628887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154211, 26.805309, 34.266376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.081324, 26.455441, 34.086712>,  <28.037592, 26.245520, 33.978912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.081324, 26.455441, 34.086712>,  <28.154211, 26.805309, 34.266376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081324, 26.455441, 34.086712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182159, 0.418876, -0.889585,
		0.966238, -0.243916, 0.083003,
		-0.182216, -0.874670, -0.449166,
		28.026659, 26.193039, 33.951962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684273, 26.708494, 33.811684>,  <28.154211, 26.805309, 34.266376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684273, 26.708494, 33.811684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.427843, 26.443096, 33.657387>,  <28.273985, 26.283857, 33.564808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.427843, 26.443096, 33.657387>,  <28.684273, 26.708494, 33.811684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427843, 26.443096, 33.657387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156524, 0.379020, -0.912055,
		0.751350, -0.645071, -0.139126,
		-0.641072, -0.663496, -0.385746,
		28.235521, 26.244047, 33.541664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011497, 26.309164, 33.236088>,  <28.684273, 26.708494, 33.811684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011497, 26.309164, 33.236088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.618216, 26.274174, 33.172012>,  <28.382246, 26.253180, 33.133568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.618216, 26.274174, 33.172012>,  <29.011497, 26.309164, 33.236088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618216, 26.274174, 33.172012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142609, 0.179544, -0.973358,
		0.113902, -0.979853, -0.164054,
		-0.983203, -0.087472, -0.160187,
		28.323256, 26.247932, 33.123955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992325, 25.940128, 32.531136>,  <29.011497, 26.309164, 33.236088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992325, 25.940128, 32.531136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.637676, 26.108803, 32.607121>,  <28.424887, 26.210009, 32.652710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.637676, 26.108803, 32.607121>,  <28.992325, 25.940128, 32.531136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637676, 26.108803, 32.607121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086959, 0.251413, -0.963966,
		-0.454252, -0.871189, -0.186238,
		-0.886619, 0.421688, 0.189962,
		28.371691, 26.235310, 32.664108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518223, 25.688576, 32.099743>,  <28.992325, 25.940128, 32.531136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518223, 25.688576, 32.099743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.371950, 26.047207, 32.199680>,  <28.284187, 26.262386, 32.259644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.371950, 26.047207, 32.199680>,  <28.518223, 25.688576, 32.099743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371950, 26.047207, 32.199680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135304, 0.214380, -0.967333,
		-0.920853, -0.387541, 0.042915,
		-0.365682, 0.896578, 0.249848,
		28.262245, 26.316181, 32.274635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128561, 25.868271, 31.472359>,  <28.518223, 25.688576, 32.099743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128561, 25.868271, 31.472359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.149679, 26.209419, 31.680138>,  <28.162350, 26.414108, 31.804804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.149679, 26.209419, 31.680138>,  <28.128561, 25.868271, 31.472359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149679, 26.209419, 31.680138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082629, 0.522118, -0.848861,
		-0.995181, 0.001895, 0.098038,
		0.052796, 0.852871, 0.519446,
		28.165518, 26.465281, 31.835972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635254, 26.252918, 31.116943>,  <28.128561, 25.868271, 31.472359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635254, 26.252918, 31.116943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.878540, 26.503384, 31.312080>,  <28.024511, 26.653664, 31.429163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.878540, 26.503384, 31.312080>,  <27.635254, 26.252918, 31.116943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878540, 26.503384, 31.312080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096726, 0.668476, -0.737417,
		-0.787855, 0.401323, 0.467145,
		0.608217, 0.626163, 0.487843,
		28.061005, 26.691233, 31.458433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321148, 26.865967, 30.980692>,  <27.635254, 26.252918, 31.116943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321148, 26.865967, 30.980692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.700222, 26.946114, 31.080086>,  <27.927666, 26.994202, 31.139723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.700222, 26.946114, 31.080086>,  <27.321148, 26.865967, 30.980692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700222, 26.946114, 31.080086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041631, 0.849383, -0.526133,
		-0.316481, 0.488264, 0.813289,
		0.947685, 0.200369, 0.248486,
		27.984528, 27.006224, 31.154633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341095, 27.577835, 31.193039>,  <27.321148, 26.865967, 30.980692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341095, 27.577835, 31.193039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.706411, 27.474030, 31.067467>,  <27.925602, 27.411745, 30.992123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.706411, 27.474030, 31.067467>,  <27.341095, 27.577835, 31.193039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706411, 27.474030, 31.067467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004083, 0.764872, -0.644169,
		0.407289, 0.589595, 0.697491,
		0.913290, -0.259515, -0.313931,
		27.980398, 27.396175, 30.973288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732370, 28.162539, 31.058998>,  <27.341095, 27.577835, 31.193039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732370, 28.162539, 31.058998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.938730, 27.890179, 30.851067>,  <28.062546, 27.726763, 30.726307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.938730, 27.890179, 30.851067>,  <27.732370, 28.162539, 31.058998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938730, 27.890179, 30.851067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155066, 0.671020, -0.725043,
		0.842498, 0.293441, 0.451763,
		0.515899, -0.680900, -0.519830,
		28.093500, 27.685909, 30.695118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346865, 28.581472, 30.775438>,  <27.732370, 28.162539, 31.058998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346865, 28.581472, 30.775438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.344736, 28.251316, 30.549625>,  <28.343458, 28.053223, 30.414137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.344736, 28.251316, 30.549625>,  <28.346865, 28.581472, 30.775438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344736, 28.251316, 30.549625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005852, 0.564557, -0.825373,
		0.999969, -0.001089, -0.007835,
		-0.005322, -0.825393, -0.564534,
		28.343140, 28.003698, 30.380266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.658672, 28.798840, 30.284632>,  <28.346865, 28.581472, 30.775438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.658672, 28.798840, 30.284632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.518837, 28.457348, 30.130264>,  <28.434935, 28.252453, 30.037643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.518837, 28.457348, 30.130264>,  <28.658672, 28.798840, 30.284632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518837, 28.457348, 30.130264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013266, 0.407359, -0.913172,
		0.936809, -0.324355, -0.131084,
		-0.349590, -0.853728, -0.385920,
		28.413960, 28.201229, 30.014488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174467, 28.598330, 29.772573>,  <28.658672, 28.798840, 30.284632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174467, 28.598330, 29.772573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.813835, 28.461887, 29.666142>,  <28.597456, 28.380022, 29.602282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.813835, 28.461887, 29.666142>,  <29.174467, 28.598330, 29.772573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813835, 28.461887, 29.666142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090954, 0.451853, -0.887444,
		0.422937, -0.824305, -0.376358,
		-0.901583, -0.341101, -0.266079,
		28.543362, 28.359556, 29.586317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657969, 28.039671, 29.379053>,  <29.174467, 28.598330, 29.772573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657969, 28.039671, 29.379053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.039013, 27.996063, 29.265461>,  <30.267639, 27.969898, 29.197306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.039013, 27.996063, 29.265461>,  <29.657969, 28.039671, 29.379053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039013, 27.996063, 29.265461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130060, -0.697955, 0.704232,
		-0.274982, -0.707794, -0.650701,
		0.952612, -0.109021, -0.283981,
		30.324797, 27.963358, 29.180267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734091, 27.389116, 29.457336>,  <29.657969, 28.039671, 29.379053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734091, 27.389116, 29.457336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.100918, 27.547844, 29.472946>,  <30.321014, 27.643080, 29.482311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.100918, 27.547844, 29.472946>,  <29.734091, 27.389116, 29.457336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100918, 27.547844, 29.472946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242591, -0.632942, 0.735210,
		0.316445, -0.664770, -0.676715,
		0.917067, 0.396818, 0.039024,
		30.376038, 27.666889, 29.484653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162451, 26.815481, 29.411476>,  <29.734091, 27.389116, 29.457336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162451, 26.815481, 29.411476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.365768, 27.119724, 29.573025>,  <30.487759, 27.302271, 29.669954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.365768, 27.119724, 29.573025>,  <30.162451, 26.815481, 29.411476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365768, 27.119724, 29.573025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268765, -0.585656, 0.764704,
		0.818169, -0.280150, -0.502111,
		0.508296, 0.760607, 0.403871,
		30.518257, 27.347906, 29.694185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706226, 26.491917, 29.680510>,  <30.162451, 26.815481, 29.411476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706226, 26.491917, 29.680510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.726479, 26.848354, 29.860905>,  <30.738630, 27.062216, 29.969141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.726479, 26.848354, 29.860905>,  <30.706226, 26.491917, 29.680510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726479, 26.848354, 29.860905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340477, -0.439917, 0.830993,
		0.938889, 0.111476, -0.325670,
		0.050632, 0.891093, 0.450988,
		30.741669, 27.115683, 29.996201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399261, 26.589579, 29.966307>,  <30.706226, 26.491917, 29.680510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399261, 26.589579, 29.966307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.179743, 26.850582, 30.175323>,  <31.048031, 27.007185, 30.300734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.179743, 26.850582, 30.175323>,  <31.399261, 26.589579, 29.966307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179743, 26.850582, 30.175323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384494, -0.358016, 0.850875,
		0.742284, 0.667873, -0.054408,
		-0.548797, 0.652511, 0.522543,
		31.015104, 27.046335, 30.332087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787764, 26.838079, 30.582548>,  <31.399261, 26.589579, 29.966307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787764, 26.838079, 30.582548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.420498, 26.927704, 30.713249>,  <31.200138, 26.981478, 30.791670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.420498, 26.927704, 30.713249>,  <31.787764, 26.838079, 30.582548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420498, 26.927704, 30.713249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244613, -0.328181, 0.912393,
		0.311665, 0.917657, 0.246517,
		-0.918167, 0.224060, 0.326753,
		31.145048, 26.994923, 30.811275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881208, 27.217134, 31.119415>,  <31.787764, 26.838079, 30.582548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881208, 27.217134, 31.119415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.523413, 27.041286, 31.151978>,  <31.308735, 26.935778, 31.171515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.523413, 27.041286, 31.151978>,  <31.881208, 27.217134, 31.119415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523413, 27.041286, 31.151978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236541, -0.310822, 0.920564,
		-0.379395, 0.842689, 0.382015,
		-0.894487, -0.439619, 0.081406,
		31.255066, 26.909401, 31.176399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489597, 27.263426, 31.438425>,  <31.881208, 27.217134, 31.119415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489597, 27.263426, 31.438425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.872715, 27.190620, 31.527420>,  <33.102585, 27.146936, 31.580816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.872715, 27.190620, 31.527420>,  <32.489597, 27.263426, 31.438425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872715, 27.190620, 31.527420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268832, 0.293151, -0.917492,
		0.101774, 0.938580, 0.329710,
		0.957795, -0.182014, 0.222486,
		33.160053, 27.136017, 31.594166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871643, 27.907379, 31.485741>,  <32.489597, 27.263426, 31.438425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871643, 27.907379, 31.485741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.153873, 27.632126, 31.418053>,  <33.323212, 27.466974, 31.377439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.153873, 27.632126, 31.418053>,  <32.871643, 27.907379, 31.485741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153873, 27.632126, 31.418053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219971, 0.439684, -0.870799,
		0.673630, 0.577190, 0.461600,
		0.705575, -0.688135, -0.169219,
		33.365547, 27.425686, 31.367287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478878, 28.275663, 31.265612>,  <32.871643, 27.907379, 31.485741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478878, 28.275663, 31.265612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.515808, 27.900558, 31.131699>,  <33.537964, 27.675495, 31.051352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.515808, 27.900558, 31.131699>,  <33.478878, 28.275663, 31.265612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515808, 27.900558, 31.131699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372545, 0.344328, -0.861770,
		0.923410, -0.045161, 0.381148,
		0.092321, -0.937763, -0.334780,
		33.543503, 27.619230, 31.031265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052311, 28.285528, 30.958443>,  <33.478878, 28.275663, 31.265612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052311, 28.285528, 30.958443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901371, 27.948872, 30.803913>,  <33.810806, 27.746878, 30.711195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901371, 27.948872, 30.803913>,  <34.052311, 28.285528, 30.958443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901371, 27.948872, 30.803913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426437, 0.212385, -0.879229,
		0.822045, -0.496521, 0.278763,
		-0.377351, -0.841641, -0.386325,
		33.788166, 27.696379, 30.688015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601761, 27.970839, 30.455542>,  <34.052311, 28.285528, 30.958443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601761, 27.970839, 30.455542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.250710, 27.813454, 30.346031>,  <34.040077, 27.719023, 30.280325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.250710, 27.813454, 30.346031>,  <34.601761, 27.970839, 30.455542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250710, 27.813454, 30.346031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266156, 0.075010, -0.961007,
		0.398655, -0.916276, 0.038891,
		-0.877630, -0.393461, -0.273776,
		33.987419, 27.695415, 30.263899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744900, 27.408119, 30.011318>,  <34.601761, 27.970839, 30.455542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744900, 27.408119, 30.011318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.369476, 27.503464, 29.911480>,  <34.144222, 27.560671, 29.851578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.369476, 27.503464, 29.911480>,  <34.744900, 27.408119, 30.011318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369476, 27.503464, 29.911480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274528, 0.077330, -0.958465,
		-0.209162, -0.968092, -0.138015,
		-0.938555, 0.238364, -0.249594,
		34.087910, 27.574972, 29.836601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618053, 27.190020, 29.382471>,  <34.744900, 27.408119, 30.011318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618053, 27.190020, 29.382471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.355064, 27.488342, 29.425358>,  <34.197269, 27.667336, 29.451090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.355064, 27.488342, 29.425358>,  <34.618053, 27.190020, 29.382471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355064, 27.488342, 29.425358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299555, 0.389297, -0.871042,
		-0.691370, -0.540571, -0.479364,
		-0.657475, 0.745809, 0.107218,
		34.157822, 27.712086, 29.457523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.886284, 29.406898, 37.363205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.680376, 29.258789, 37.053905>,  <31.556831, 29.169924, 36.868328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.680376, 29.258789, 37.053905>,  <31.886284, 29.406898, 37.363205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680376, 29.258789, 37.053905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407237, 0.688072, -0.600596,
		0.754435, -0.624062, -0.203408,
		-0.514768, -0.370275, -0.773247,
		31.525946, 29.147707, 36.821930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355015, 29.283945, 36.758682>,  <31.886284, 29.406898, 37.363205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355015, 29.283945, 36.758682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.995893, 29.283360, 36.582527>,  <31.780420, 29.283009, 36.476833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.995893, 29.283360, 36.582527>,  <32.355015, 29.283945, 36.758682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995893, 29.283360, 36.582527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375146, 0.521243, -0.766532,
		0.230670, -0.853407, -0.467427,
		-0.897807, -0.001463, -0.440387,
		31.726551, 29.282921, 36.450413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466049, 29.096933, 36.025894>,  <32.355015, 29.283945, 36.758682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466049, 29.096933, 36.025894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.121456, 29.298218, 36.053093>,  <31.914700, 29.418987, 36.069412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.121456, 29.298218, 36.053093>,  <32.466049, 29.096933, 36.025894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121456, 29.298218, 36.053093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255046, 0.544595, -0.798979,
		-0.439085, -0.670966, -0.597502,
		-0.861485, 0.503210, 0.067997,
		31.863010, 29.449181, 36.073490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187145, 29.070364, 35.363071>,  <32.466049, 29.096933, 36.025894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187145, 29.070364, 35.363071> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.038834, 29.387749, 35.556129>,  <31.949846, 29.578178, 35.671963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.038834, 29.387749, 35.556129>,  <32.187145, 29.070364, 35.363071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038834, 29.387749, 35.556129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003995, 0.521043, -0.853521,
		-0.928712, -0.314541, -0.196363,
		-0.370781, 0.793460, 0.482642,
		31.927599, 29.625786, 35.700924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720860, 29.259302, 34.889866>,  <32.187145, 29.070364, 35.363071>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720860, 29.259302, 34.889866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.775293, 29.577522, 35.126030>,  <31.807955, 29.768454, 35.267727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.775293, 29.577522, 35.126030>,  <31.720860, 29.259302, 34.889866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775293, 29.577522, 35.126030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071049, 0.586580, -0.806769,
		-0.988146, 0.151737, 0.023302,
		0.136086, 0.795550, 0.590408,
		31.816118, 29.816187, 35.303154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209679, 29.688601, 34.611652>,  <31.720860, 29.259302, 34.889866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209679, 29.688601, 34.611652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.467571, 29.915302, 34.816830>,  <31.622307, 30.051323, 34.939938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.467571, 29.915302, 34.816830>,  <31.209679, 29.688601, 34.611652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467571, 29.915302, 34.816830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026069, 0.654339, -0.755752,
		-0.763964, 0.500629, 0.407098,
		0.644732, 0.566755, 0.512943,
		31.660992, 30.085329, 34.970711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003838, 30.372145, 34.637405>,  <31.209679, 29.688601, 34.611652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003838, 30.372145, 34.637405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.394064, 30.439823, 34.693470>,  <31.628201, 30.480431, 34.727108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.394064, 30.439823, 34.693470>,  <31.003838, 30.372145, 34.637405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394064, 30.439823, 34.693470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025272, 0.547280, -0.836568,
		-0.218252, 0.819669, 0.529631,
		0.975565, 0.169198, 0.140160,
		31.686733, 30.490583, 34.735519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124485, 31.047306, 34.514439>,  <31.003838, 30.372145, 34.637405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124485, 31.047306, 34.514439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.500441, 30.910824, 34.508888>,  <31.726013, 30.828936, 34.505558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.500441, 30.910824, 34.508888>,  <31.124485, 31.047306, 34.514439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500441, 30.910824, 34.508888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196678, 0.574086, -0.794823,
		0.279160, 0.744316, 0.606683,
		0.939887, -0.341204, -0.013871,
		31.782406, 30.808462, 34.504726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556900, 31.658300, 34.430305>,  <31.124485, 31.047306, 34.514439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556900, 31.658300, 34.430305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.800055, 31.361805, 34.316437>,  <31.945948, 31.183908, 34.248116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.800055, 31.361805, 34.316437>,  <31.556900, 31.658300, 34.430305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800055, 31.361805, 34.316437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212664, 0.497412, -0.841044,
		0.765015, 0.450720, 0.460004,
		0.607887, -0.741238, -0.284676,
		31.982420, 31.139433, 34.231033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199364, 31.983204, 34.211384>,  <31.556900, 31.658300, 34.430305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199364, 31.983204, 34.211384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.213196, 31.617577, 34.049747>,  <32.221497, 31.398201, 33.952766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.213196, 31.617577, 34.049747>,  <32.199364, 31.983204, 34.211384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213196, 31.617577, 34.049747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255347, 0.398992, -0.880684,
		0.966231, -0.072726, 0.247202,
		0.034582, -0.914066, -0.404089,
		32.223572, 31.343357, 33.928520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782055, 31.924376, 33.843105>,  <32.199364, 31.983204, 34.211384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782055, 31.924376, 33.843105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.540390, 31.657505, 33.668816>,  <32.395390, 31.497383, 33.564240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.540390, 31.657505, 33.668816>,  <32.782055, 31.924376, 33.843105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540390, 31.657505, 33.668816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292317, 0.323125, -0.900078,
		0.741306, -0.671167, -0.000194,
		-0.604166, -0.667176, -0.435728,
		32.359138, 31.457352, 33.538097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124565, 31.662956, 33.293282>,  <32.782055, 31.924376, 33.843105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124565, 31.662956, 33.293282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.742390, 31.585941, 33.203777>,  <32.513084, 31.539732, 33.150074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.742390, 31.585941, 33.203777>,  <33.124565, 31.662956, 33.293282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742390, 31.585941, 33.203777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133766, 0.393333, -0.909613,
		0.263144, -0.899011, -0.350051,
		-0.955438, -0.192535, -0.223761,
		32.455757, 31.528181, 33.136650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488262, 31.101686, 32.852795>,  <33.124565, 31.662956, 33.293282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488262, 31.101686, 32.852795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.864880, 30.979504, 32.795948>,  <34.090851, 30.906195, 32.761841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.864880, 30.979504, 32.795948>,  <33.488262, 31.101686, 32.852795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864880, 30.979504, 32.795948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158209, -0.773311, 0.613970,
		-0.297439, -0.555595, -0.776431,
		0.941541, -0.305457, -0.142112,
		34.147343, 30.887867, 32.753315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443794, 30.351900, 32.765144>,  <33.488262, 31.101686, 32.852795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443794, 30.351900, 32.765144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.812752, 30.433826, 32.896141>,  <34.034126, 30.482983, 32.974739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.812752, 30.433826, 32.896141>,  <33.443794, 30.351900, 32.765144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812752, 30.433826, 32.896141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075266, -0.736282, 0.672476,
		0.378858, -0.644934, -0.663722,
		0.922389, 0.204817, 0.327488,
		34.089470, 30.495272, 32.994389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862438, 29.642883, 32.869034>,  <33.443794, 30.351900, 32.765144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862438, 29.642883, 32.869034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.043262, 29.931324, 33.079044>,  <34.151756, 30.104389, 33.205051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.043262, 29.931324, 33.079044>,  <33.862438, 29.642883, 32.869034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043262, 29.931324, 33.079044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196732, -0.654710, 0.729829,
		0.870022, -0.226637, -0.437833,
		0.452060, 0.721103, 0.525026,
		34.178879, 30.147655, 33.236553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527145, 29.477686, 32.918545>,  <33.862438, 29.642883, 32.869034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527145, 29.477686, 32.918545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.425232, 29.707802, 33.229446>,  <34.364082, 29.845871, 33.415989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.425232, 29.707802, 33.229446>,  <34.527145, 29.477686, 32.918545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425232, 29.707802, 33.229446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506917, -0.605030, 0.613982,
		0.823481, 0.550436, -0.137473,
		-0.254783, 0.575290, 0.777256,
		34.348797, 29.880388, 33.462624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037914, 29.372660, 33.361614>,  <34.527145, 29.477686, 32.918545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037914, 29.372660, 33.361614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.777279, 29.553566, 33.605221>,  <34.620899, 29.662109, 33.751385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.777279, 29.553566, 33.605221>,  <35.037914, 29.372660, 33.361614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777279, 29.553566, 33.605221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281332, -0.601508, 0.747690,
		0.704479, 0.658518, 0.264697,
		-0.651584, 0.452264, 0.609012,
		34.581802, 29.689245, 33.787926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362553, 29.264589, 34.010880>,  <35.037914, 29.372660, 33.361614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362553, 29.264589, 34.010880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.973434, 29.348915, 34.049294>,  <34.739964, 29.399511, 34.072342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.973434, 29.348915, 34.049294>,  <35.362553, 29.264589, 34.010880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973434, 29.348915, 34.049294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064241, -0.643795, 0.762497,
		0.222575, 0.735585, 0.639825,
		-0.972797, 0.210816, 0.096038,
		34.681595, 29.412159, 34.078106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259480, 29.250414, 34.717407>,  <35.362553, 29.264589, 34.010880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259480, 29.250414, 34.717407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.888577, 29.208000, 34.573769>,  <34.666035, 29.182552, 34.487587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.888577, 29.208000, 34.573769>,  <35.259480, 29.250414, 34.717407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888577, 29.208000, 34.573769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215051, -0.634268, 0.742601,
		-0.306502, 0.765807, 0.565328,
		-0.927259, -0.106034, -0.359092,
		34.610397, 29.176189, 34.466042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864513, 29.400087, 35.246948>,  <35.259480, 29.250414, 34.717407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864513, 29.400087, 35.246948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.627399, 29.188393, 35.004128>,  <34.485130, 29.061377, 34.858437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.627399, 29.188393, 35.004128>,  <34.864513, 29.400087, 35.246948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627399, 29.188393, 35.004128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343975, -0.515178, 0.785031,
		-0.728205, 0.674168, 0.123348,
		-0.592789, -0.529235, -0.607052,
		34.449562, 29.029621, 34.822014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302486, 29.204123, 35.688423>,  <34.864513, 29.400087, 35.246948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302486, 29.204123, 35.688423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.262821, 28.955296, 35.377758>,  <34.239021, 28.806000, 35.191360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.262821, 28.955296, 35.377758>,  <34.302486, 29.204123, 35.688423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262821, 28.955296, 35.377758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473133, -0.657157, 0.586762,
		-0.875392, 0.425651, -0.229152,
		-0.099167, -0.622066, -0.776660,
		34.233070, 28.768677, 35.144760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593185, 29.053711, 35.537006>,  <34.302486, 29.204123, 35.688423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593185, 29.053711, 35.537006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.790771, 28.750046, 35.367455>,  <33.909321, 28.567846, 35.265724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.790771, 28.750046, 35.367455>,  <33.593185, 29.053711, 35.537006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790771, 28.750046, 35.367455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524853, -0.649008, 0.550743,
		-0.693203, -0.049575, -0.719036,
		0.493963, -0.759164, -0.423875,
		33.938961, 28.522297, 35.240292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058640, 28.552107, 35.378094>,  <33.593185, 29.053711, 35.537006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058640, 28.552107, 35.378094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.411171, 28.364109, 35.397541>,  <33.622688, 28.251310, 35.409210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.411171, 28.364109, 35.397541>,  <33.058640, 28.552107, 35.378094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411171, 28.364109, 35.397541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401612, -0.690915, 0.601119,
		-0.248927, -0.549312, -0.797679,
		0.881330, -0.469993, 0.048623,
		33.675571, 28.223110, 35.412128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878021, 27.859686, 35.315392>,  <33.058640, 28.552107, 35.378094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878021, 27.859686, 35.315392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.248810, 27.851521, 35.465225>,  <33.471283, 27.846621, 35.555126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.248810, 27.851521, 35.465225>,  <32.878021, 27.859686, 35.315392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248810, 27.851521, 35.465225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224763, -0.829678, 0.510996,
		0.300353, -0.557869, -0.773673,
		0.926968, -0.020414, 0.374584,
		33.526901, 27.845396, 35.577599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109032, 27.127226, 35.197090>,  <32.878021, 27.859686, 35.315392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109032, 27.127226, 35.197090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.354374, 27.263279, 35.482216>,  <33.501579, 27.344912, 35.653294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.354374, 27.263279, 35.482216>,  <33.109032, 27.127226, 35.197090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354374, 27.263279, 35.482216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155589, -0.832798, 0.531263,
		0.774333, -0.436757, -0.457877,
		0.613352, 0.340134, 0.712817,
		33.538380, 27.365318, 35.696060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575272, 26.591911, 35.327702>,  <33.109032, 27.127226, 35.197090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575272, 26.591911, 35.327702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.574646, 26.823566, 35.653793>,  <33.574272, 26.962561, 35.849449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.574646, 26.823566, 35.653793>,  <33.575272, 26.591911, 35.327702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574646, 26.823566, 35.653793> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138454, -0.807501, 0.573387,
		0.990368, -0.111975, 0.081447,
		-0.001564, 0.579140, 0.815226,
		33.574177, 26.997309, 35.898361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465668, 26.557653, 34.617878>,  <33.575272, 26.591911, 35.327702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465668, 26.557653, 34.617878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.215992, 26.287552, 34.460693>,  <33.066185, 26.125492, 34.366383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.215992, 26.287552, 34.460693>,  <33.465668, 26.557653, 34.617878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215992, 26.287552, 34.460693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243089, 0.310154, -0.919082,
		0.742491, -0.669208, -0.029449,
		-0.624191, -0.675252, -0.392964,
		33.028736, 26.084976, 34.342804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852322, 26.297941, 34.157898>,  <33.465668, 26.557653, 34.617878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852322, 26.297941, 34.157898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.473824, 26.227776, 34.049194>,  <33.246723, 26.185677, 33.983974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.473824, 26.227776, 34.049194>,  <33.852322, 26.297941, 34.157898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473824, 26.227776, 34.049194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259687, 0.088886, -0.961594,
		0.192835, -0.980473, -0.038555,
		-0.946244, -0.175417, -0.271756,
		33.189949, 26.175150, 33.967667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868599, 25.772518, 33.586689>,  <33.852322, 26.297941, 34.157898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868599, 25.772518, 33.586689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.509037, 25.936157, 33.523949>,  <33.293301, 26.034340, 33.486305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.509037, 25.936157, 33.523949>,  <33.868599, 25.772518, 33.586689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509037, 25.936157, 33.523949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273710, 0.244799, -0.930138,
		-0.342119, -0.879041, -0.332026,
		-0.898909, 0.409097, -0.156852,
		33.239365, 26.058886, 33.476894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553001, 25.419361, 33.030830>,  <33.868599, 25.772518, 33.586689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553001, 25.419361, 33.030830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.361649, 25.768444, 33.069893>,  <33.246838, 25.977894, 33.093330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.361649, 25.768444, 33.069893>,  <33.553001, 25.419361, 33.030830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361649, 25.768444, 33.069893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270999, 0.252488, -0.928875,
		-0.835292, -0.417890, -0.357288,
		-0.478379, 0.872707, 0.097654,
		33.218136, 26.030256, 33.099190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372864, 25.587088, 32.346504>,  <33.553001, 25.419361, 33.030830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372864, 25.587088, 32.346504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.295731, 25.949802, 32.496464>,  <33.249451, 26.167431, 32.586441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.295731, 25.949802, 32.496464>,  <33.372864, 25.587088, 32.346504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295731, 25.949802, 32.496464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180497, 0.408332, -0.894811,
		-0.964488, -0.104879, -0.242411,
		-0.192832, 0.906789, 0.374901,
		33.237881, 26.221840, 32.608932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800831, 25.951574, 31.960400>,  <33.372864, 25.587088, 32.346504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800831, 25.951574, 31.960400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.986256, 26.262459, 32.130600>,  <33.097511, 26.448990, 32.232719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.986256, 26.262459, 32.130600>,  <32.800831, 25.951574, 31.960400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986256, 26.262459, 32.130600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091273, 0.519544, -0.849555,
		-0.881349, 0.354988, 0.311782,
		0.463566, 0.777211, 0.425499,
		33.125324, 26.495623, 32.258251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417118, 26.686480, 31.889114>,  <32.800831, 25.951574, 31.960400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417118, 26.686480, 31.889114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.812527, 26.738087, 31.920540>,  <33.049774, 26.769051, 31.939396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.812527, 26.738087, 31.920540>,  <32.417118, 26.686480, 31.889114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812527, 26.738087, 31.920540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004692, 0.493614, -0.869668,
		-0.150985, 0.860058, 0.487344,
		0.988525, 0.129020, 0.078564,
		33.109085, 26.776793, 31.944109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841621, 27.097778, 31.816978>,  <32.417118, 26.686480, 31.889114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841621, 27.097778, 31.816978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.499037, 26.917934, 31.715527>,  <31.293486, 26.810028, 31.654655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.499037, 26.917934, 31.715527>,  <31.841621, 27.097778, 31.816978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499037, 26.917934, 31.715527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059613, -0.401893, 0.913744,
		-0.512759, 0.797705, 0.317402,
		-0.856460, -0.449609, -0.253628,
		31.242098, 26.783052, 31.639439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353508, 27.278959, 32.308701>,  <31.841621, 27.097778, 31.816978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353508, 27.278959, 32.308701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.241936, 26.924736, 32.160118>,  <31.174992, 26.712202, 32.070969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.241936, 26.924736, 32.160118>,  <31.353508, 27.278959, 32.308701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241936, 26.924736, 32.160118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289238, -0.291375, 0.911835,
		-0.915718, 0.361779, -0.174863,
		-0.278932, -0.885560, -0.371458,
		31.158257, 26.659067, 32.048679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674915, 27.117212, 32.554184>,  <31.353508, 27.278959, 32.308701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674915, 27.117212, 32.554184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.750793, 26.744274, 32.431061>,  <30.796320, 26.520512, 32.357185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.750793, 26.744274, 32.431061>,  <30.674915, 27.117212, 32.554184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750793, 26.744274, 32.431061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575309, -0.359595, 0.734650,
		-0.795636, 0.037728, -0.604599,
		0.189694, -0.932345, -0.307812,
		30.807701, 26.464571, 32.338718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080088, 26.836283, 32.704533>,  <30.674915, 27.117212, 32.554184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080088, 26.836283, 32.704533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.332952, 26.528008, 32.672520>,  <30.484673, 26.343042, 32.653313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.332952, 26.528008, 32.672520>,  <30.080088, 26.836283, 32.704533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332952, 26.528008, 32.672520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449355, -0.448801, 0.772436,
		-0.631229, -0.452342, -0.630029,
		0.632163, -0.770691, -0.080034,
		30.522602, 26.296801, 32.648510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613363, 26.281826, 32.710999>,  <30.080088, 26.836283, 32.704533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613363, 26.281826, 32.710999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.974865, 26.135590, 32.800056>,  <30.191767, 26.047848, 32.853489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.974865, 26.135590, 32.800056>,  <29.613363, 26.281826, 32.710999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974865, 26.135590, 32.800056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410761, -0.594388, 0.691360,
		-0.120418, -0.716273, -0.687352,
		0.903756, -0.365589, 0.222641,
		30.245993, 26.025913, 32.866848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564877, 25.554499, 32.744698>,  <29.613363, 26.281826, 32.710999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564877, 25.554499, 32.744698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.872086, 25.654575, 32.980511>,  <30.056412, 25.714621, 33.121998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.872086, 25.654575, 32.980511>,  <29.564877, 25.554499, 32.744698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872086, 25.654575, 32.980511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365564, -0.584560, 0.724328,
		0.525836, -0.771812, -0.357495,
		0.768023, 0.250191, 0.589530,
		30.102493, 25.729633, 33.157372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669468, 24.928020, 33.077217>,  <29.564877, 25.554499, 32.744698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669468, 24.928020, 33.077217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.904840, 25.168510, 33.293468>,  <30.046064, 25.312803, 33.423218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.904840, 25.168510, 33.293468>,  <29.669468, 24.928020, 33.077217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904840, 25.168510, 33.293468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166000, -0.564567, 0.808522,
		0.791324, -0.565504, -0.232405,
		0.588431, 0.601223, 0.540629,
		30.081369, 25.348877, 33.455658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215260, 24.510286, 33.349087>,  <29.669468, 24.928020, 33.077217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215260, 24.510286, 33.349087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.151997, 24.828831, 33.582600>,  <30.114038, 25.019957, 33.722706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.151997, 24.828831, 33.582600>,  <30.215260, 24.510286, 33.349087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151997, 24.828831, 33.582600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287254, -0.602757, 0.744425,
		0.944707, -0.049956, 0.324088,
		-0.158158, 0.796359, 0.583779,
		30.104549, 25.067738, 33.757732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542408, 24.427938, 34.077690>,  <30.215260, 24.510286, 33.349087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542408, 24.427938, 34.077690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.270649, 24.716862, 34.129364>,  <30.107594, 24.890215, 34.160370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.270649, 24.716862, 34.129364>,  <30.542408, 24.427938, 34.077690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270649, 24.716862, 34.129364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354072, -0.476918, 0.804476,
		0.642689, 0.500821, 0.579767,
		-0.679400, 0.722307, 0.129184,
		30.066830, 24.933554, 34.168118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.558031, 35.418411, 21.858891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215481, 35.372940, 22.060364>,  <31.009951, 35.345657, 22.181248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215481, 35.372940, 22.060364>,  <31.558031, 35.418411, 21.858891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215481, 35.372940, 22.060364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311978, -0.891196, 0.329303,
		0.411449, 0.439145, 0.798662,
		-0.856376, -0.113674, 0.503685,
		30.958569, 35.338837, 22.211470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692209, 35.283478, 22.551859>,  <31.558031, 35.418411, 21.858891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692209, 35.283478, 22.551859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321215, 35.146149, 22.492664>,  <31.098618, 35.063751, 22.457148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321215, 35.146149, 22.492664>,  <31.692209, 35.283478, 22.551859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321215, 35.146149, 22.492664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231901, -0.838806, 0.492572,
		-0.293240, 0.422536, 0.857598,
		-0.927487, -0.343320, -0.147984,
		31.042969, 35.043152, 22.448269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456427, 35.122375, 23.224382>,  <31.692209, 35.283478, 22.551859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456427, 35.122375, 23.224382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235455, 34.903442, 22.972908>,  <31.102871, 34.772083, 22.822023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.235455, 34.903442, 22.972908>,  <31.456427, 35.122375, 23.224382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.235455, 34.903442, 22.972908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116921, -0.797644, 0.591687,
		-0.825317, 0.253360, 0.504639,
		-0.552432, -0.547332, -0.628686,
		31.069725, 34.739243, 22.784302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961809, 34.729977, 23.602354>,  <31.456427, 35.122375, 23.224382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961809, 34.729977, 23.602354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970612, 34.528698, 23.256798>,  <30.975893, 34.407932, 23.049463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970612, 34.528698, 23.256798>,  <30.961809, 34.729977, 23.602354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970612, 34.528698, 23.256798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175529, -0.852623, 0.492161,
		-0.984228, 0.140808, -0.107088,
		0.022005, -0.503196, -0.863892,
		30.977213, 34.377739, 22.997631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470253, 34.243492, 23.568665>,  <30.961809, 34.729977, 23.602354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470253, 34.243492, 23.568665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727100, 34.086857, 23.305046>,  <30.881208, 33.992874, 23.146875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727100, 34.086857, 23.305046>,  <30.470253, 34.243492, 23.568665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727100, 34.086857, 23.305046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179549, -0.912603, 0.367313,
		-0.745283, -0.117527, -0.656308,
		0.642118, -0.391591, -0.659046,
		30.919735, 33.969379, 23.107332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116165, 33.683338, 23.226881>,  <30.470253, 34.243492, 23.568665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116165, 33.683338, 23.226881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508236, 33.608521, 23.200756>,  <30.743479, 33.563629, 23.185081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508236, 33.608521, 23.200756>,  <30.116165, 33.683338, 23.226881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508236, 33.608521, 23.200756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133153, -0.866039, 0.481920,
		-0.146704, -0.463671, -0.873778,
		0.980178, -0.187046, -0.065312,
		30.802290, 33.552406, 23.181162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051208, 32.995396, 23.327778>,  <30.116165, 33.683338, 23.226881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051208, 32.995396, 23.327778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439529, 33.087505, 23.354660>,  <30.672522, 33.142773, 23.370789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439529, 33.087505, 23.354660>,  <30.051208, 32.995396, 23.327778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439529, 33.087505, 23.354660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153609, -0.811938, 0.563170,
		0.184251, -0.536403, -0.823604,
		0.970802, 0.230278, 0.067204,
		30.730770, 33.156590, 23.374821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400389, 32.316547, 23.097639>,  <30.051208, 32.995396, 23.327778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400389, 32.316547, 23.097639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661045, 32.542336, 23.300316>,  <30.817438, 32.677807, 23.421923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661045, 32.542336, 23.300316>,  <30.400389, 32.316547, 23.097639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661045, 32.542336, 23.300316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273746, -0.797984, 0.536922,
		0.707410, -0.211173, -0.674519,
		0.651639, 0.564471, 0.506694,
		30.856537, 32.711678, 23.452324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979540, 31.998657, 23.176355>,  <30.400389, 32.316547, 23.097639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979540, 31.998657, 23.176355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020144, 32.246517, 23.487671>,  <31.044506, 32.395233, 23.674459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020144, 32.246517, 23.487671>,  <30.979540, 31.998657, 23.176355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020144, 32.246517, 23.487671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227478, -0.776059, 0.588207,
		0.968478, 0.117334, -0.219734,
		0.101509, 0.619650, 0.778287,
		31.050596, 32.432411, 23.721157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472874, 31.692873, 23.544188>,  <30.979540, 31.998657, 23.176355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472874, 31.692873, 23.544188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329077, 31.946678, 23.817875>,  <31.242798, 32.098961, 23.982088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329077, 31.946678, 23.817875>,  <31.472874, 31.692873, 23.544188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329077, 31.946678, 23.817875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405462, -0.554190, 0.726962,
		0.840455, 0.538764, -0.058043,
		-0.359494, 0.634513, 0.684220,
		31.221230, 32.137032, 24.023140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046459, 31.871836, 23.958509>,  <31.472874, 31.692873, 23.544188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046459, 31.871836, 23.958509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715525, 31.952164, 24.168343>,  <31.516964, 32.000359, 24.294243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715525, 31.952164, 24.168343>,  <32.046459, 31.871836, 23.958509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715525, 31.952164, 24.168343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368118, -0.511557, 0.776401,
		0.424271, 0.835452, 0.349304,
		-0.827335, 0.200819, 0.524585,
		31.467325, 32.012409, 24.325718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238857, 32.070827, 24.739145>,  <32.046459, 31.871836, 23.958509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238857, 32.070827, 24.739145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861742, 31.937679, 24.731724>,  <31.635471, 31.857790, 24.727270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861742, 31.937679, 24.731724>,  <32.238857, 32.070827, 24.739145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861742, 31.937679, 24.731724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208251, -0.631469, 0.746912,
		-0.260340, 0.700318, 0.664664,
		-0.942791, -0.332868, -0.018555,
		31.578905, 31.837818, 24.726158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896656, 32.046524, 25.239965>,  <32.238857, 32.070827, 24.739145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896656, 32.046524, 25.239965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181065, 31.839340, 25.049736>,  <33.351707, 31.715031, 24.935598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181065, 31.839340, 25.049736>,  <32.896656, 32.046524, 25.239965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181065, 31.839340, 25.049736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403648, 0.854441, -0.327107,
		0.575777, 0.040615, 0.816597,
		0.711020, -0.517958, -0.475573,
		33.394371, 31.683952, 24.907064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534508, 32.438107, 25.321333>,  <32.896656, 32.046524, 25.239965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534508, 32.438107, 25.321333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630283, 32.223648, 24.997551>,  <33.687748, 32.094975, 24.803282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630283, 32.223648, 24.997551>,  <33.534508, 32.438107, 25.321333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630283, 32.223648, 24.997551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461951, 0.796202, -0.390721,
		0.853973, -0.280374, 0.438316,
		0.239440, -0.536145, -0.809454,
		33.702114, 32.062805, 24.754715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262882, 32.703426, 25.107405>,  <33.534508, 32.438107, 25.321333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262882, 32.703426, 25.107405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099079, 32.508793, 24.798721>,  <34.000797, 32.392014, 24.613512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099079, 32.508793, 24.798721>,  <34.262882, 32.703426, 25.107405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099079, 32.508793, 24.798721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291127, 0.731963, -0.616016,
		0.864607, -0.476930, -0.158088,
		-0.409511, -0.486588, -0.771708,
		33.976227, 32.362816, 24.567209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804699, 32.473419, 24.649155>,  <34.262882, 32.703426, 25.107405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804699, 32.473419, 24.649155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474293, 32.498550, 24.425102>,  <34.276047, 32.513630, 24.290670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474293, 32.498550, 24.425102>,  <34.804699, 32.473419, 24.649155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474293, 32.498550, 24.425102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408365, 0.751679, -0.517896,
		0.388499, -0.656529, -0.646558,
		-0.826019, 0.062829, -0.560130,
		34.226486, 32.517399, 24.257063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059414, 32.551056, 24.028313>,  <34.804699, 32.473419, 24.649155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059414, 32.551056, 24.028313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688782, 32.677773, 23.947227>,  <34.466404, 32.753803, 23.898577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688782, 32.677773, 23.947227>,  <35.059414, 32.551056, 24.028313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688782, 32.677773, 23.947227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358800, 0.582996, -0.728957,
		-0.112748, -0.748170, -0.653858,
		-0.926580, 0.316792, -0.202712,
		34.410809, 32.772812, 23.886414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955368, 32.595272, 23.330688>,  <35.059414, 32.551056, 24.028313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955368, 32.595272, 23.330688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647087, 32.833027, 23.422527>,  <34.462116, 32.975681, 23.477631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647087, 32.833027, 23.422527>,  <34.955368, 32.595272, 23.330688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647087, 32.833027, 23.422527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261043, 0.623233, -0.737182,
		-0.581267, -0.508214, -0.635489,
		-0.770704, 0.594390, 0.229599,
		34.415874, 33.011345, 23.491407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621052, 32.854820, 22.675537>,  <34.955368, 32.595272, 23.330688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621052, 32.854820, 22.675537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490707, 33.112705, 22.952133>,  <34.412502, 33.267437, 23.118092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490707, 33.112705, 22.952133>,  <34.621052, 32.854820, 22.675537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490707, 33.112705, 22.952133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271764, 0.764419, -0.584644,
		-0.905517, -0.002588, -0.424302,
		-0.325857, 0.644715, 0.691491,
		34.392952, 33.306118, 23.159580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290939, 33.318802, 22.346148>,  <34.621052, 32.854820, 22.675537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290939, 33.318802, 22.346148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344681, 33.531273, 22.680763>,  <34.376926, 33.658756, 22.881533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344681, 33.531273, 22.680763>,  <34.290939, 33.318802, 22.346148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344681, 33.531273, 22.680763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231620, 0.803974, -0.547702,
		-0.963484, 0.267345, -0.015015,
		0.134354, 0.531180, 0.836538,
		34.384987, 33.690628, 22.931725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909317, 33.898479, 22.341967>,  <34.290939, 33.318802, 22.346148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909317, 33.898479, 22.341967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207405, 34.005413, 22.586319>,  <34.386257, 34.069572, 22.732931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207405, 34.005413, 22.586319>,  <33.909317, 33.898479, 22.341967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207405, 34.005413, 22.586319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137714, 0.834665, -0.533263,
		-0.652440, 0.481527, 0.585196,
		0.745222, 0.267332, 0.610882,
		34.430973, 34.085613, 22.769583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821198, 34.708138, 22.480797>,  <33.909317, 33.898479, 22.341967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821198, 34.708138, 22.480797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196182, 34.606606, 22.576073>,  <34.421173, 34.545689, 22.633238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196182, 34.606606, 22.576073>,  <33.821198, 34.708138, 22.480797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196182, 34.606606, 22.576073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335887, 0.839215, -0.427667,
		-0.091341, 0.480927, 0.871990,
		0.937463, -0.253826, 0.238192,
		34.477421, 34.530457, 22.647530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179832, 35.240677, 22.398481>,  <33.821198, 34.708138, 22.480797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179832, 35.240677, 22.398481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497025, 35.001141, 22.443329>,  <34.687340, 34.857418, 22.470238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497025, 35.001141, 22.443329>,  <34.179832, 35.240677, 22.398481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497025, 35.001141, 22.443329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571623, 0.667651, -0.476958,
		0.210765, 0.442309, 0.871746,
		0.792985, -0.598837, 0.112116,
		34.734921, 34.821491, 22.476963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645550, 35.628910, 22.727966>,  <34.179832, 35.240677, 22.398481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645550, 35.628910, 22.727966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846848, 35.329361, 22.555485>,  <34.967628, 35.149632, 22.451996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846848, 35.329361, 22.555485>,  <34.645550, 35.628910, 22.727966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846848, 35.329361, 22.555485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586188, 0.662470, -0.466387,
		0.634922, -0.018058, 0.772365,
		0.503247, -0.748871, -0.431202,
		34.997822, 35.104698, 22.426125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343910, 35.714092, 22.882099>,  <34.645550, 35.628910, 22.727966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343910, 35.714092, 22.882099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303745, 35.519234, 22.535088>,  <35.279648, 35.402317, 22.326881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303745, 35.519234, 22.535088>,  <35.343910, 35.714092, 22.882099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303745, 35.519234, 22.535088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575068, 0.683122, -0.450156,
		0.811920, -0.544089, 0.211548,
		-0.100412, -0.487145, -0.867529,
		35.273621, 35.373089, 22.274828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980812, 35.769230, 22.573954>,  <35.343910, 35.714092, 22.882099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980812, 35.769230, 22.573954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713531, 35.701004, 22.284286>,  <35.553165, 35.660069, 22.110487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713531, 35.701004, 22.284286>,  <35.980812, 35.769230, 22.573954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713531, 35.701004, 22.284286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419894, 0.717065, -0.556334,
		0.614167, -0.675815, -0.407522,
		-0.668198, -0.170566, -0.724167,
		35.513073, 35.649834, 22.067036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627785, 35.673847, 23.021219>,  <35.980812, 35.769230, 22.573954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627785, 35.673847, 23.021219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670536, 36.057880, 23.124619>,  <36.696186, 36.288300, 23.186657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670536, 36.057880, 23.124619>,  <36.627785, 35.673847, 23.021219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670536, 36.057880, 23.124619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264549, -0.223156, 0.938198,
		0.958432, -0.168656, 0.230138,
		0.106876, 0.960082, 0.258497,
		36.702599, 36.345905, 23.202168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123909, 35.669090, 23.579025>,  <36.627785, 35.673847, 23.021219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123909, 35.669090, 23.579025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863018, 35.969944, 23.616737>,  <36.706482, 36.150455, 23.639364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863018, 35.969944, 23.616737>,  <37.123909, 35.669090, 23.579025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863018, 35.969944, 23.616737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189278, -0.282037, 0.940547,
		0.734010, 0.595607, 0.326315,
		-0.652229, 0.752135, 0.094283,
		36.667351, 36.195583, 23.645021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323612, 35.899197, 24.175476>,  <37.123909, 35.669090, 23.579025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323612, 35.899197, 24.175476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945282, 36.019127, 24.125656>,  <36.718285, 36.091087, 24.095764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945282, 36.019127, 24.125656>,  <37.323612, 35.899197, 24.175476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945282, 36.019127, 24.125656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199425, -0.233800, 0.951613,
		0.256202, 0.924900, 0.280928,
		-0.945828, 0.299829, -0.124549,
		36.661533, 36.109077, 24.088291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154850, 36.427135, 24.654306>,  <37.323612, 35.899197, 24.175476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154850, 36.427135, 24.654306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807152, 36.256054, 24.555122>,  <36.598534, 36.153404, 24.495613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807152, 36.256054, 24.555122>,  <37.154850, 36.427135, 24.654306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807152, 36.256054, 24.555122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177705, -0.197722, 0.964016,
		-0.461342, 0.882028, 0.095863,
		-0.869244, -0.427706, -0.247958,
		36.546379, 36.127743, 24.480736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666672, 36.737282, 25.085768>,  <37.154850, 36.427135, 24.654306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666672, 36.737282, 25.085768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522736, 36.379364, 24.980038>,  <36.436375, 36.164616, 24.916599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522736, 36.379364, 24.980038>,  <36.666672, 36.737282, 25.085768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522736, 36.379364, 24.980038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273476, -0.169707, 0.946789,
		-0.892035, 0.412977, -0.183636,
		-0.359838, -0.894790, -0.264324,
		36.414783, 36.110928, 24.900740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408340, 36.445015, 25.684797>,  <36.666672, 36.737282, 25.085768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408340, 36.445015, 25.684797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299999, 36.135902, 25.455204>,  <36.234997, 35.950436, 25.317448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299999, 36.135902, 25.455204>,  <36.408340, 36.445015, 25.684797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299999, 36.135902, 25.455204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252016, -0.518548, 0.817066,
		-0.929047, 0.365956, -0.054303,
		-0.270851, -0.772777, -0.573982,
		36.218742, 35.904068, 25.283009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873775, 36.277008, 25.980797>,  <36.408340, 36.445015, 25.684797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873775, 36.277008, 25.980797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007771, 35.951588, 25.790672>,  <36.088169, 35.756336, 25.676598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007771, 35.951588, 25.790672>,  <35.873775, 36.277008, 25.980797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007771, 35.951588, 25.790672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064779, -0.523153, 0.849774,
		-0.939992, -0.253876, -0.227952,
		0.334990, -0.813547, -0.475314,
		36.108269, 35.707523, 25.648079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342464, 35.770424, 25.995184>,  <35.873775, 36.277008, 25.980797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342464, 35.770424, 25.995184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699413, 35.593971, 25.957062>,  <35.913582, 35.488102, 25.934189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.699413, 35.593971, 25.957062>,  <35.342464, 35.770424, 25.995184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699413, 35.593971, 25.957062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188164, -0.555612, 0.809870,
		-0.410209, -0.704771, -0.578815,
		0.892369, -0.441128, -0.095304,
		35.967125, 35.461632, 25.928471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217728, 35.127476, 26.203611>,  <35.342464, 35.770424, 25.995184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217728, 35.127476, 26.203611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616764, 35.102413, 26.215538>,  <35.856186, 35.087376, 26.222694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616764, 35.102413, 26.215538>,  <35.217728, 35.127476, 26.203611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616764, 35.102413, 26.215538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062457, -0.623634, 0.779217,
		-0.030228, -0.779201, -0.626045,
		0.997590, -0.062655, 0.029815,
		35.916042, 35.083618, 26.224483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381134, 34.472271, 26.235062>,  <35.217728, 35.127476, 26.203611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381134, 34.472271, 26.235062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715897, 34.639053, 26.376900>,  <35.916752, 34.739124, 26.462002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715897, 34.639053, 26.376900>,  <35.381134, 34.472271, 26.235062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715897, 34.639053, 26.376900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125941, -0.483762, 0.866091,
		0.532664, -0.769493, -0.352350,
		0.836904, 0.416960, 0.354594,
		35.966969, 34.764141, 26.483278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753899, 33.924564, 26.720881>,  <35.381134, 34.472271, 26.235062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753899, 33.924564, 26.720881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891560, 34.289429, 26.809895>,  <35.974155, 34.508347, 26.863302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891560, 34.289429, 26.809895>,  <35.753899, 33.924564, 26.720881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891560, 34.289429, 26.809895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167031, -0.173753, 0.970521,
		0.923935, -0.371182, 0.092561,
		0.344157, 0.912159, 0.222535,
		35.994808, 34.563076, 26.876656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192966, 33.748234, 27.246828>,  <35.753899, 33.924564, 26.720881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192966, 33.748234, 27.246828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124332, 34.137077, 27.310776>,  <36.083153, 34.370384, 27.349144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124332, 34.137077, 27.310776>,  <36.192966, 33.748234, 27.246828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124332, 34.137077, 27.310776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065405, -0.173160, 0.982720,
		0.982996, 0.158164, 0.093293,
		-0.171585, 0.972111, 0.159871,
		36.072857, 34.428711, 27.358736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718998, 33.940990, 27.734898>,  <36.192966, 33.748234, 27.246828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718998, 33.940990, 27.734898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426594, 34.213257, 27.754162>,  <36.251152, 34.376617, 27.765720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426594, 34.213257, 27.754162>,  <36.718998, 33.940990, 27.734898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426594, 34.213257, 27.754162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041659, -0.114967, 0.992495,
		0.681096, 0.723516, 0.112398,
		-0.731008, 0.680667, 0.048162,
		36.207291, 34.417458, 27.768610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926292, 34.416798, 28.277225>,  <36.718998, 33.940990, 27.734898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926292, 34.416798, 28.277225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530472, 34.443783, 28.226242>,  <36.292980, 34.459972, 28.195652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530472, 34.443783, 28.226242>,  <36.926292, 34.416798, 28.277225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530472, 34.443783, 28.226242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135505, -0.132523, 0.981874,
		0.049348, 0.988882, 0.140279,
		-0.989547, 0.067463, -0.127459,
		36.233608, 34.464020, 28.188004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666584, 34.933998, 28.893623>,  <36.926292, 34.416798, 28.277225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666584, 34.933998, 28.893623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348965, 34.731384, 28.759216>,  <36.158394, 34.609818, 28.678572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348965, 34.731384, 28.759216>,  <36.666584, 34.933998, 28.893623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348965, 34.731384, 28.759216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297309, -0.158511, 0.941531,
		-0.530180, 0.847525, -0.024731,
		-0.794051, -0.506533, -0.336017,
		36.110748, 34.579426, 28.658411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126049, 35.130085, 29.294891>,  <36.666584, 34.933998, 28.893623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126049, 35.130085, 29.294891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039883, 34.764423, 29.157539>,  <35.988182, 34.545025, 29.075129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039883, 34.764423, 29.157539>,  <36.126049, 35.130085, 29.294891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039883, 34.764423, 29.157539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231793, -0.293720, 0.927362,
		-0.948613, 0.279365, -0.148622,
		-0.215419, -0.914157, -0.343381,
		35.975258, 34.490177, 29.054525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548485, 35.060352, 29.541332>,  <36.126049, 35.130085, 29.294891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548485, 35.060352, 29.541332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681538, 34.690887, 29.465225>,  <35.761372, 34.469208, 29.419561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681538, 34.690887, 29.465225>,  <35.548485, 35.060352, 29.541332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681538, 34.690887, 29.465225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377920, -0.315405, 0.870458,
		-0.864020, -0.217638, -0.453985,
		0.332634, -0.923663, -0.190266,
		35.781326, 34.413788, 29.408146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007095, 34.620800, 29.748480>,  <35.548485, 35.060352, 29.541332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007095, 34.620800, 29.748480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298035, 34.348648, 29.712601>,  <35.472599, 34.185356, 29.691074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298035, 34.348648, 29.712601>,  <35.007095, 34.620800, 29.748480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298035, 34.348648, 29.712601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436444, -0.559465, 0.704639,
		-0.529602, -0.473373, -0.703875,
		0.727350, -0.680380, -0.089693,
		35.516239, 34.144531, 29.685692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561409, 34.053757, 29.813835>,  <35.007095, 34.620800, 29.748480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561409, 34.053757, 29.813835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941151, 33.948376, 29.882320>,  <35.168995, 33.885147, 29.923412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941151, 33.948376, 29.882320>,  <34.561409, 34.053757, 29.813835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941151, 33.948376, 29.882320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311023, -0.710700, 0.631007,
		-0.044556, -0.652303, -0.756648,
		0.949357, -0.263450, 0.171216,
		35.225960, 33.869339, 29.933685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614452, 33.345005, 29.733372>,  <34.561409, 34.053757, 29.813835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614452, 33.345005, 29.733372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948662, 33.407337, 29.944130>,  <35.149189, 33.444736, 30.070585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948662, 33.407337, 29.944130>,  <34.614452, 33.345005, 29.733372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948662, 33.407337, 29.944130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212992, -0.792106, 0.572017,
		0.506492, -0.590158, -0.628633,
		0.835524, 0.155828, 0.526894,
		35.199318, 33.454086, 30.102198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976723, 32.735558, 29.754730>,  <34.614452, 33.345005, 29.733372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976723, 32.735558, 29.754730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122231, 32.924416, 30.075916>,  <35.209538, 33.037731, 30.268627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122231, 32.924416, 30.075916>,  <34.976723, 32.735558, 29.754730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122231, 32.924416, 30.075916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241599, -0.784699, 0.570856,
		0.899610, -0.401657, -0.171384,
		0.363773, 0.472142, 0.802963,
		35.231361, 33.066059, 30.316805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363468, 32.185429, 30.199097>,  <34.976723, 32.735558, 29.754730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363468, 32.185429, 30.199097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274406, 32.487648, 30.445534>,  <35.220970, 32.668980, 30.593395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274406, 32.487648, 30.445534>,  <35.363468, 32.185429, 30.199097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274406, 32.487648, 30.445534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206724, -0.654176, 0.727543,
		0.952727, 0.034630, 0.301846,
		-0.222655, 0.755549, 0.616092,
		35.207611, 32.714314, 30.630362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754189, 31.974453, 30.792885>,  <35.363468, 32.185429, 30.199097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754189, 31.974453, 30.792885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471409, 32.229057, 30.916222>,  <35.301739, 32.381821, 30.990223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471409, 32.229057, 30.916222>,  <35.754189, 31.974453, 30.792885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471409, 32.229057, 30.916222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246858, -0.630613, 0.735791,
		0.662782, 0.444053, 0.602940,
		-0.706952, 0.636510, 0.308341,
		35.259323, 32.420010, 31.008724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821419, 31.883757, 31.512794>,  <35.754189, 31.974453, 30.792885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821419, 31.883757, 31.512794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465191, 32.057381, 31.458424>,  <35.251453, 32.161556, 31.425800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465191, 32.057381, 31.458424>,  <35.821419, 31.883757, 31.512794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465191, 32.057381, 31.458424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366185, -0.506951, 0.780326,
		0.269799, 0.744710, 0.610422,
		-0.890571, 0.434059, -0.135927,
		35.198021, 32.187599, 31.417646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621593, 32.113842, 32.203178>,  <35.821419, 31.883757, 31.512794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621593, 32.113842, 32.203178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297405, 32.106262, 31.968990>,  <35.102890, 32.101715, 31.828478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297405, 32.106262, 31.968990>,  <35.621593, 32.113842, 32.203178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297405, 32.106262, 31.968990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567325, -0.223475, 0.792591,
		-0.145854, 0.974526, 0.170372,
		-0.810474, -0.018947, -0.585468,
		35.054264, 32.100578, 31.793350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057079, 32.373322, 32.630928>,  <35.621593, 32.113842, 32.203178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057079, 32.373322, 32.630928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923553, 32.126019, 32.346302>,  <34.843437, 31.977638, 32.175526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923553, 32.126019, 32.346302>,  <35.057079, 32.373322, 32.630928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923553, 32.126019, 32.346302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443018, -0.563411, 0.697354,
		-0.832049, 0.548022, -0.085825,
		-0.333810, -0.618255, -0.711569,
		34.823410, 31.940542, 32.132832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399044, 32.263813, 32.824459>,  <35.057079, 32.373322, 32.630928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399044, 32.263813, 32.824459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485180, 31.964813, 32.573105>,  <34.536861, 31.785414, 32.422291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485180, 31.964813, 32.573105>,  <34.399044, 32.263813, 32.824459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485180, 31.964813, 32.573105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422275, -0.651494, 0.630270,
		-0.880517, 0.129628, -0.455945,
		0.215345, -0.747497, -0.628390,
		34.549782, 31.740564, 32.384586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826088, 31.818567, 32.921055>,  <34.399044, 32.263813, 32.824459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826088, 31.818567, 32.921055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077137, 31.569054, 32.734726>,  <34.227764, 31.419346, 32.622929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077137, 31.569054, 32.734726>,  <33.826088, 31.818567, 32.921055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077137, 31.569054, 32.734726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277709, -0.738359, 0.614577,
		-0.727292, -0.256370, -0.636648,
		0.627634, -0.623780, -0.465806,
		34.265423, 31.381918, 32.594982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130508, 31.681099, 32.473301>,  <33.826088, 31.818567, 32.921055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130508, 31.681099, 32.473301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744827, 31.639038, 32.570675>,  <32.513420, 31.613802, 32.629101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744827, 31.639038, 32.570675>,  <33.130508, 31.681099, 32.473301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744827, 31.639038, 32.570675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252464, 0.644843, -0.721414,
		-0.081123, -0.757047, -0.648304,
		-0.964199, -0.105150, 0.243439,
		32.455566, 31.607492, 32.643707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771763, 31.425163, 31.865063>,  <33.130508, 31.681099, 32.473301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771763, 31.425163, 31.865063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529560, 31.619381, 32.117287>,  <32.384239, 31.735910, 32.268620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529560, 31.619381, 32.117287>,  <32.771763, 31.425163, 31.865063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529560, 31.619381, 32.117287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270585, 0.619515, -0.736875,
		-0.748425, -0.616805, -0.243742,
		-0.605510, 0.485543, 0.630559,
		32.347908, 31.765043, 32.306454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083931, 31.583536, 31.494278>,  <32.771763, 31.425163, 31.865063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083931, 31.583536, 31.494278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113949, 31.847855, 31.792999>,  <32.131958, 32.006447, 31.972233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113949, 31.847855, 31.792999>,  <32.083931, 31.583536, 31.494278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113949, 31.847855, 31.792999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357213, 0.717028, -0.598556,
		-0.931003, -0.221848, 0.289855,
		0.075045, 0.660798, 0.746803,
		32.136463, 32.046093, 32.017040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589809, 32.059704, 31.386497>,  <32.083931, 31.583536, 31.494278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589809, 32.059704, 31.386497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807314, 32.275272, 31.643833>,  <31.937817, 32.404613, 31.798235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807314, 32.275272, 31.643833>,  <31.589809, 32.059704, 31.386497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807314, 32.275272, 31.643833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137484, 0.813421, -0.565195,
		-0.827902, 0.218883, 0.516400,
		0.543762, 0.538923, 0.643340,
		31.970442, 32.436951, 31.836836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242989, 32.719967, 31.267330>,  <31.589809, 32.059704, 31.386497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242989, 32.719967, 31.267330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606262, 32.781101, 31.423199>,  <31.824226, 32.817783, 31.516720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606262, 32.781101, 31.423199>,  <31.242989, 32.719967, 31.267330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606262, 32.781101, 31.423199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166767, 0.721753, -0.671760,
		-0.383917, 0.675065, 0.629996,
		0.908183, 0.152838, 0.389672,
		31.878717, 32.826954, 31.540100>
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
