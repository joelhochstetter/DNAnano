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
	<5.937000, 1.268918, 3.641427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.610958, 1.058098, 3.545240>,  <5.415333, 0.931606, 3.487528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.610958, 1.058098, 3.545240>,  <5.937000, 1.268918, 3.641427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.610958, 1.058098, 3.545240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230218, -0.086209, 0.969313,
		-0.531606, 0.845451, -0.051067,
		-0.815104, -0.527049, -0.240467,
		5.366427, 0.899983, 3.473100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.194928, 1.472287, 3.914179>,  <5.937000, 1.268918, 3.641427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.194928, 1.472287, 3.914179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.203995, 1.074974, 3.868788>,  <5.209435, 0.836586, 3.841553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.203995, 1.074974, 3.868788>,  <5.194928, 1.472287, 3.914179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.203995, 1.074974, 3.868788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316680, -0.114796, 0.941560,
		-0.948262, 0.014594, -0.317154,
		0.022667, -0.993282, -0.113479,
		5.210795, 0.776989, 3.834744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.731818, 1.261902, 4.261505>,  <5.194928, 1.472287, 3.914179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.731818, 1.261902, 4.261505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.932949, 0.918957, 4.217514>,  <5.053627, 0.713190, 4.191119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.932949, 0.918957, 4.217514>,  <4.731818, 1.261902, 4.261505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.932949, 0.918957, 4.217514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501524, -0.393000, 0.770730,
		-0.704017, -0.332387, -0.627598,
		0.502827, -0.857362, -0.109978,
		5.083797, 0.661748, 4.184521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.296881, 0.582031, 4.164292>,  <4.731818, 1.261902, 4.261505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.296881, 0.582031, 4.164292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.652096, 0.506130, 4.331808>,  <4.865225, 0.460590, 4.432317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.652096, 0.506130, 4.331808>,  <4.296881, 0.582031, 4.164292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.652096, 0.506130, 4.331808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442213, -0.601826, 0.665021,
		0.125849, -0.775757, -0.618355,
		0.888037, -0.189753, 0.418789,
		4.918507, 0.449204, 4.457445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.265426, -0.103252, 4.283289>,  <4.296881, 0.582031, 4.164292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.265426, -0.103252, 4.283289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.535908, 0.057598, 4.530205>,  <4.698196, 0.154108, 4.678354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.535908, 0.057598, 4.530205>,  <4.265426, -0.103252, 4.283289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.535908, 0.057598, 4.530205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377485, -0.530422, 0.759050,
		0.632656, -0.746289, -0.206877,
		0.676203, 0.402125, 0.617288,
		4.738769, 0.178236, 4.715391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.478909, -0.652657, 4.664402>,  <4.265426, -0.103252, 4.283289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.478909, -0.652657, 4.664402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.587654, -0.335857, 4.883062>,  <4.652901, -0.145777, 5.014259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.587654, -0.335857, 4.883062>,  <4.478909, -0.652657, 4.664402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.587654, -0.335857, 4.883062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260753, -0.486172, 0.834053,
		0.926336, -0.369288, 0.074345,
		0.271862, 0.792000, 0.546651,
		4.669212, -0.098257, 5.047058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.974991, -0.839433, 5.198967>,  <4.478909, -0.652657, 4.664402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.974991, -0.839433, 5.198967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.788185, -0.501839, 5.304483>,  <4.676102, -0.299282, 5.367793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.788185, -0.501839, 5.304483>,  <4.974991, -0.839433, 5.198967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.788185, -0.501839, 5.304483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239589, -0.407939, 0.881013,
		0.851173, 0.348244, 0.392723,
		-0.467014, 0.843986, 0.263791,
		4.648081, -0.248643, 5.383621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.117468, -0.786847, 5.866012>,  <4.974991, -0.839433, 5.198967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.117468, -0.786847, 5.866012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.814610, -0.525631, 5.859459>,  <4.632895, -0.368901, 5.855527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.814610, -0.525631, 5.859459>,  <5.117468, -0.786847, 5.866012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.814610, -0.525631, 5.859459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332482, -0.363655, 0.870178,
		0.562304, 0.664299, 0.492465,
		-0.757146, 0.653040, -0.016383,
		4.587466, -0.329719, 5.854544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.767200, -1.385899, 1.189227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.675690, -1.041828, 1.371548>,  <3.620783, -0.835386, 1.480940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.675690, -1.041828, 1.371548>,  <3.767200, -1.385899, 1.189227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.675690, -1.041828, 1.371548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710653, 0.467569, -0.525691,
		-0.665307, 0.203652, -0.718257,
		-0.228776, 0.860177, 0.455803,
		3.607057, -0.783775, 1.508289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.495300, -0.798915, 0.854069>,  <3.767200, -1.385899, 1.189227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.495300, -0.798915, 0.854069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.698174, -0.639500, 1.159731>,  <3.819897, -0.543850, 1.343128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.698174, -0.639500, 1.159731>,  <3.495300, -0.798915, 0.854069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.698174, -0.639500, 1.159731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470823, 0.614526, -0.632995,
		-0.721866, 0.680826, 0.124036,
		0.507183, 0.398539, 0.764154,
		3.850328, -0.519938, 1.388977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.542231, -0.282472, 0.574203>,  <3.495300, -0.798915, 0.854069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.542231, -0.282472, 0.574203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.830406, -0.303623, 0.850803>,  <4.003311, -0.316314, 1.016764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.830406, -0.303623, 0.850803>,  <3.542231, -0.282472, 0.574203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.830406, -0.303623, 0.850803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641067, 0.431171, -0.634922,
		-0.264582, 0.900720, 0.344530,
		0.720437, -0.052878, 0.691501,
		4.046537, -0.319487, 1.058254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.634332, 0.463942, 0.615243>,  <3.542231, -0.282472, 0.574203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.634332, 0.463942, 0.615243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.941574, 0.227905, 0.714685>,  <4.125919, 0.086283, 0.774351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.941574, 0.227905, 0.714685>,  <3.634332, 0.463942, 0.615243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.941574, 0.227905, 0.714685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579948, 0.476532, -0.660740,
		0.271429, 0.651697, 0.708250,
		0.768106, -0.590092, 0.248606,
		4.172006, 0.050878, 0.789267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.258983, 0.945049, 0.726776>,  <3.634332, 0.463942, 0.615243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.258983, 0.945049, 0.726776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.379829, 0.571796, 0.648809>,  <4.452337, 0.347845, 0.602030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.379829, 0.571796, 0.648809>,  <4.258983, 0.945049, 0.726776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.379829, 0.571796, 0.648809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637591, 0.349804, -0.686378,
		0.708663, 0.083090, 0.700638,
		0.302117, -0.933131, -0.194915,
		4.470465, 0.291857, 0.590335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.977699, 1.004836, 0.591250>,  <4.258983, 0.945049, 0.726776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.977699, 1.004836, 0.591250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.899734, 0.637215, 0.454224>,  <4.852955, 0.416642, 0.372008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.899734, 0.637215, 0.454224>,  <4.977699, 1.004836, 0.591250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.899734, 0.637215, 0.454224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683534, 0.123202, -0.719446,
		0.703413, -0.374385, 0.604190,
		-0.194912, -0.919052, -0.342567,
		4.841261, 0.361499, 0.351454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.631418, 0.717062, 0.447557>,  <4.977699, 1.004836, 0.591250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.631418, 0.717062, 0.447557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.353699, 0.534393, 0.225061>,  <5.187068, 0.424792, 0.091564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.353699, 0.534393, 0.225061>,  <5.631418, 0.717062, 0.447557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.353699, 0.534393, 0.225061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628432, -0.008021, -0.777823,
		0.350749, -0.889599, 0.292557,
		-0.694297, -0.456672, -0.556239,
		5.145410, 0.397392, 0.058190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.943796, 0.060935, 0.124489>,  <5.631418, 0.717062, 0.447557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.943796, 0.060935, 0.124489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.655075, 0.247684, -0.079876>,  <5.481843, 0.359734, -0.202495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.655075, 0.247684, -0.079876>,  <5.943796, 0.060935, 0.124489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.655075, 0.247684, -0.079876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589703, 0.028447, -0.807119,
		-0.362288, -0.883867, -0.295850,
		-0.721802, 0.466873, -0.510913,
		5.438535, 0.387746, -0.233150>
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
