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
	<24.575037, 34.740112, 34.413296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.199442, 34.842781, 34.504883>,  <23.974085, 34.904381, 34.559834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.199442, 34.842781, 34.504883>,  <24.575037, 34.740112, 34.413296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.199442, 34.842781, 34.504883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343901, 0.712155, 0.612018,
		-0.005973, 0.653419, -0.756973,
		-0.938987, 0.256669, 0.228965,
		23.917746, 34.919781, 34.573574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046972, 34.130852, 34.390499>,  <24.575037, 34.740112, 34.413296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046972, 34.130852, 34.390499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320322, 33.887581, 34.228947>,  <25.484331, 33.741619, 34.132015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320322, 33.887581, 34.228947>,  <25.046972, 34.130852, 34.390499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.320322, 33.887581, 34.228947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287621, 0.732740, -0.616739,
		0.671026, 0.305299, 0.675660,
		0.683372, -0.608182, -0.403878,
		25.525333, 33.705128, 34.107784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.445335, 34.537395, 34.003387>,  <25.046972, 34.130852, 34.390499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.445335, 34.537395, 34.003387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590952, 34.184582, 33.883724>,  <25.678322, 33.972893, 33.811928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590952, 34.184582, 33.883724>,  <25.445335, 34.537395, 34.003387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590952, 34.184582, 33.883724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331855, 0.422952, -0.843198,
		0.870256, 0.207682, 0.446679,
		0.364041, -0.882031, -0.299156,
		25.700165, 33.919971, 33.793976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236977, 34.563465, 33.860134>,  <25.445335, 34.537395, 34.003387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236977, 34.563465, 33.860134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002083, 34.307278, 33.662163>,  <25.861147, 34.153564, 33.543381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.002083, 34.307278, 33.662163>,  <26.236977, 34.563465, 33.860134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.002083, 34.307278, 33.662163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258647, 0.430927, -0.864525,
		0.766978, -0.635693, -0.087401,
		-0.587236, -0.640466, -0.494931,
		25.825912, 34.115139, 33.513683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575279, 34.433022, 33.343285>,  <26.236977, 34.563465, 33.860134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575279, 34.433022, 33.343285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257204, 34.241680, 33.194233>,  <26.066359, 34.126877, 33.104801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257204, 34.241680, 33.194233>,  <26.575279, 34.433022, 33.343285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257204, 34.241680, 33.194233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312746, 0.202939, -0.927904,
		0.519489, -0.854396, -0.011771,
		-0.795187, -0.478354, -0.372633,
		26.018648, 34.098175, 33.082443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.850784, 33.933582, 32.749409>,  <26.575279, 34.433022, 33.343285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.850784, 33.933582, 32.749409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470387, 34.051826, 32.713127>,  <26.242147, 34.122772, 32.691360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470387, 34.051826, 32.713127>,  <26.850784, 33.933582, 32.749409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470387, 34.051826, 32.713127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231158, 0.484826, -0.843510,
		-0.205378, -0.823138, -0.529399,
		-0.950992, 0.295614, -0.090702,
		26.185089, 34.140511, 32.685917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739687, 34.696724, 32.677002>,  <26.850784, 33.933582, 32.749409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739687, 34.696724, 32.677002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555576, 34.928043, 32.407566>,  <26.445110, 35.066833, 32.245907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555576, 34.928043, 32.407566>,  <26.739687, 34.696724, 32.677002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555576, 34.928043, 32.407566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886265, 0.255074, -0.386614,
		-0.051764, -0.774925, -0.629930,
		-0.460276, 0.578298, -0.673586,
		26.417494, 35.101532, 32.205490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836422, 34.595646, 31.884682>,  <26.739687, 34.696724, 32.677002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836422, 34.595646, 31.884682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797539, 34.964668, 32.034046>,  <26.774208, 35.186081, 32.123665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797539, 34.964668, 32.034046>,  <26.836422, 34.595646, 31.884682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797539, 34.964668, 32.034046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950097, 0.197761, -0.241258,
		-0.296421, 0.331322, -0.895745,
		-0.097210, 0.922559, 0.373409,
		26.768375, 35.241436, 32.146069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947172, 35.179779, 31.335857>,  <26.836422, 34.595646, 31.884682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947172, 35.179779, 31.335857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049400, 35.295338, 31.704905>,  <27.110737, 35.364674, 31.926332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049400, 35.295338, 31.704905>,  <26.947172, 35.179779, 31.335857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049400, 35.295338, 31.704905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892285, 0.296883, -0.340131,
		-0.372171, 0.910165, -0.181902,
		0.255572, 0.288895, 0.922617,
		27.126072, 35.382008, 31.981689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139139, 35.827656, 31.211847>,  <26.947172, 35.179779, 31.335857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139139, 35.827656, 31.211847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302469, 35.700432, 31.554100>,  <27.400467, 35.624096, 31.759453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302469, 35.700432, 31.554100>,  <27.139139, 35.827656, 31.211847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302469, 35.700432, 31.554100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893295, 0.332142, -0.302831,
		-0.187873, 0.887986, 0.419742,
		0.408324, -0.318060, 0.855634,
		27.424967, 35.605015, 31.810791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589355, 36.370892, 31.468431>,  <27.139139, 35.827656, 31.211847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589355, 36.370892, 31.468431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713690, 36.022518, 31.620674>,  <27.788290, 35.813496, 31.712021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.713690, 36.022518, 31.620674>,  <27.589355, 36.370892, 31.468431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713690, 36.022518, 31.620674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934493, 0.206939, -0.289654,
		0.173506, 0.445710, 0.878202,
		0.310836, -0.870930, 0.380608,
		27.806940, 35.761238, 31.734856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288849, 36.472267, 31.656477>,  <27.589355, 36.370892, 31.468431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288849, 36.472267, 31.656477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.233389, 36.082653, 31.584888>,  <28.200113, 35.848885, 31.541935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.233389, 36.082653, 31.584888>,  <28.288849, 36.472267, 31.656477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233389, 36.082653, 31.584888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962330, -0.089832, -0.256615,
		0.233875, -0.207808, 0.949799,
		-0.138649, -0.974036, -0.178971,
		28.191793, 35.790443, 31.531197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695143, 36.020916, 32.033806>,  <28.288849, 36.472267, 31.656477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695143, 36.020916, 32.033806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632416, 35.847771, 31.678719>,  <28.594780, 35.743885, 31.465668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632416, 35.847771, 31.678719>,  <28.695143, 36.020916, 32.033806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632416, 35.847771, 31.678719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987548, -0.057283, -0.146519,
		0.012571, -0.899638, 0.436456,
		-0.156815, -0.432863, -0.887715,
		28.585371, 35.717911, 31.412403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893507, 35.297985, 31.924427>,  <28.695143, 36.020916, 32.033806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893507, 35.297985, 31.924427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936583, 35.467175, 31.564539>,  <28.962429, 35.568687, 31.348606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936583, 35.467175, 31.564539>,  <28.893507, 35.297985, 31.924427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936583, 35.467175, 31.564539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994184, -0.046169, 0.097293,
		-0.000387, -0.904966, -0.425483,
		0.107691, 0.422971, -0.899721,
		28.968889, 35.594067, 31.294622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480734, 34.792919, 31.775219>,  <28.893507, 35.297985, 31.924427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480734, 34.792919, 31.775219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445223, 35.167767, 31.910231>,  <28.423916, 35.392673, 31.991238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.445223, 35.167767, 31.910231>,  <28.480734, 34.792919, 31.775219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445223, 35.167767, 31.910231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992409, -0.112175, 0.050422,
		0.085114, -0.330492, 0.939963,
		-0.088776, 0.937119, 0.337530,
		28.418591, 35.448902, 32.011490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076912, 34.774715, 32.417049>,  <28.480734, 34.792919, 31.775219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076912, 34.774715, 32.417049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024067, 35.125134, 32.231541>,  <27.992359, 35.335384, 32.120235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024067, 35.125134, 32.231541>,  <28.076912, 34.774715, 32.417049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024067, 35.125134, 32.231541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934272, 0.046271, 0.353545,
		0.331182, 0.479998, 0.812355,
		-0.132112, 0.876049, -0.463773,
		27.984434, 35.387947, 32.092407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930586, 35.235756, 32.984585>,  <28.076912, 34.774715, 32.417049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930586, 35.235756, 32.984585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778713, 35.361507, 32.636559>,  <27.687590, 35.436958, 32.427742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778713, 35.361507, 32.636559>,  <27.930586, 35.235756, 32.984585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778713, 35.361507, 32.636559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917598, -0.008316, 0.397422,
		0.117704, 0.949263, 0.291627,
		-0.379683, 0.314374, -0.870063,
		27.664808, 35.455818, 32.375538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453691, 35.697937, 33.184937>,  <27.930586, 35.235756, 32.984585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453691, 35.697937, 33.184937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362019, 35.594578, 32.809551>,  <27.307014, 35.532562, 32.584320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362019, 35.594578, 32.809551>,  <27.453691, 35.697937, 33.184937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362019, 35.594578, 32.809551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956551, -0.118735, 0.266293,
		-0.180237, 0.958714, -0.219956,
		-0.229182, -0.258395, -0.938460,
		27.293264, 35.517059, 32.528011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117939, 36.160671, 32.706169>,  <27.453691, 35.697937, 33.184937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117939, 36.160671, 32.706169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001740, 35.789654, 32.612133>,  <26.932020, 35.567043, 32.555710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001740, 35.789654, 32.612133>,  <27.117939, 36.160671, 32.706169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001740, 35.789654, 32.612133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888004, 0.169804, 0.427336,
		-0.356455, 0.332901, -0.872993,
		-0.290498, -0.927547, -0.235090,
		26.914591, 35.511391, 32.541607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.398405, 36.196877, 32.699265>,  <27.117939, 36.160671, 32.706169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.398405, 36.196877, 32.699265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455004, 35.801441, 32.719967>,  <26.488962, 35.564182, 32.732388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455004, 35.801441, 32.719967>,  <26.398405, 36.196877, 32.699265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455004, 35.801441, 32.719967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928388, -0.114368, 0.353577,
		-0.343621, -0.098082, -0.933972,
		0.141496, -0.988585, 0.051759,
		26.497452, 35.504868, 32.735497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793793, 35.900417, 32.395004>,  <26.398405, 36.196877, 32.699265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793793, 35.900417, 32.395004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000341, 35.679939, 32.657162>,  <26.124269, 35.547653, 32.814457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000341, 35.679939, 32.657162>,  <25.793793, 35.900417, 32.395004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000341, 35.679939, 32.657162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812779, -0.074394, 0.577803,
		-0.269727, -0.831051, -0.486418,
		0.516370, -0.551199, 0.655394,
		26.155252, 35.514580, 32.853779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.254810, 35.532497, 32.571419>,  <25.793793, 35.900417, 32.395004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.254810, 35.532497, 32.571419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.539154, 35.513889, 32.852139>,  <25.709761, 35.502724, 33.020569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.539154, 35.513889, 32.852139>,  <25.254810, 35.532497, 32.571419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.539154, 35.513889, 32.852139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696215, -0.188162, 0.692733,
		0.099825, -0.981036, -0.166145,
		0.710858, -0.046520, 0.701795,
		25.752411, 35.499931, 33.062675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.271803, 34.828270, 32.381123>,  <25.254810, 35.532497, 32.571419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.271803, 34.828270, 32.381123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512724, 34.518173, 32.304985>,  <25.657276, 34.332115, 32.259304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512724, 34.518173, 32.304985>,  <25.271803, 34.828270, 32.381123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.512724, 34.518173, 32.304985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335415, -0.462152, 0.820922,
		-0.724380, -0.430600, -0.538383,
		0.602304, -0.775241, -0.190344,
		25.693415, 34.285603, 32.247883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948029, 34.246738, 32.558735>,  <25.271803, 34.828270, 32.381123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948029, 34.246738, 32.558735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328760, 34.125031, 32.573936>,  <25.557199, 34.052006, 32.583057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328760, 34.125031, 32.573936>,  <24.948029, 34.246738, 32.558735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328760, 34.125031, 32.573936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197817, -0.514609, 0.834294,
		-0.234292, -0.801622, -0.550008,
		0.951827, -0.304269, 0.038006,
		25.614307, 34.033749, 32.585339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.954054, 33.502163, 32.712585>,  <24.948029, 34.246738, 32.558735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.954054, 33.502163, 32.712585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300369, 33.677605, 32.808945>,  <25.508160, 33.782871, 32.866760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300369, 33.677605, 32.808945>,  <24.954054, 33.502163, 32.712585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.300369, 33.677605, 32.808945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014110, -0.502607, 0.864400,
		0.500210, -0.744989, -0.441341,
		0.865789, 0.438608, 0.240897,
		25.560106, 33.809189, 32.881214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.424448, 32.976021, 32.923321>,  <24.954054, 33.502163, 32.712585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.424448, 32.976021, 32.923321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562777, 33.307922, 33.098557>,  <25.645773, 33.507061, 33.203697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562777, 33.307922, 33.098557>,  <25.424448, 32.976021, 32.923321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.562777, 33.307922, 33.098557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099340, -0.496646, 0.862249,
		0.933027, -0.254665, -0.254179,
		0.345822, 0.829752, 0.438085,
		25.666523, 33.556847, 33.229980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995771, 32.738220, 33.362408>,  <25.424448, 32.976021, 32.923321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995771, 32.738220, 33.362408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901953, 33.106194, 33.488087>,  <25.845661, 33.326977, 33.563492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901953, 33.106194, 33.488087>,  <25.995771, 32.738220, 33.362408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901953, 33.106194, 33.488087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166527, -0.280410, 0.945325,
		0.957735, 0.274044, -0.087424,
		-0.234546, 0.919930, 0.314194,
		25.831589, 33.382172, 33.582344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520296, 33.025639, 33.920925>,  <25.995771, 32.738220, 33.362408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520296, 33.025639, 33.920925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152084, 33.169247, 33.982548>,  <25.931158, 33.255409, 34.019520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152084, 33.169247, 33.982548>,  <26.520296, 33.025639, 33.920925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152084, 33.169247, 33.982548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024635, -0.340207, 0.940028,
		0.389896, 0.869119, 0.304326,
		-0.920529, 0.359016, 0.154056,
		25.875925, 33.276951, 34.028763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.909256, 33.616272, 34.262566>,  <26.520296, 33.025639, 33.920925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.909256, 33.616272, 34.262566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519377, 33.689827, 34.313393>,  <26.285448, 33.733959, 34.343887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519377, 33.689827, 34.313393>,  <26.909256, 33.616272, 34.262566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519377, 33.689827, 34.313393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117110, 0.064085, -0.991049,
		-0.190388, -0.980855, -0.040928,
		-0.974699, 0.183891, 0.127069,
		26.226967, 33.744995, 34.351513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525549, 33.841469, 34.436844>,  <26.909256, 33.616272, 34.262566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525549, 33.841469, 34.436844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869783, 33.954247, 34.606503>,  <28.076324, 34.021912, 34.708298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869783, 33.954247, 34.606503>,  <27.525549, 33.841469, 34.436844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869783, 33.954247, 34.606503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482705, 0.185921, 0.855821,
		0.162429, -0.941247, 0.296094,
		0.860589, 0.281936, 0.424146,
		28.127960, 34.038830, 34.733746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758755, 33.326077, 35.104355>,  <27.525549, 33.841469, 34.436844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758755, 33.326077, 35.104355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902500, 33.698112, 35.134796>,  <27.988747, 33.921333, 35.153061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902500, 33.698112, 35.134796>,  <27.758755, 33.326077, 35.104355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902500, 33.698112, 35.134796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314922, 0.044099, 0.948092,
		0.878455, -0.364676, 0.308753,
		0.359362, 0.930090, 0.076106,
		28.010309, 33.977139, 35.157627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956633, 33.458729, 35.798409>,  <27.758755, 33.326077, 35.104355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956633, 33.458729, 35.798409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918837, 33.823944, 35.639702>,  <27.896158, 34.043076, 35.544476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918837, 33.823944, 35.639702>,  <27.956633, 33.458729, 35.798409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918837, 33.823944, 35.639702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410909, 0.327249, 0.850918,
		0.906766, 0.243441, 0.344255,
		-0.094491, 0.913041, -0.396771,
		27.890490, 34.097855, 35.520672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118267, 33.945232, 36.352291>,  <27.956633, 33.458729, 35.798409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118267, 33.945232, 36.352291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958366, 34.215340, 36.104351>,  <27.862427, 34.377403, 35.955589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958366, 34.215340, 36.104351>,  <28.118267, 33.945232, 36.352291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958366, 34.215340, 36.104351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279891, 0.554009, 0.784050,
		0.872846, 0.486915, -0.032465,
		-0.399752, 0.675268, -0.619848,
		27.838440, 34.417919, 35.918396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302338, 34.643089, 36.625725>,  <28.118267, 33.945232, 36.352291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302338, 34.643089, 36.625725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987085, 34.693222, 36.384682>,  <27.797934, 34.723301, 36.240055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987085, 34.693222, 36.384682>,  <28.302338, 34.643089, 36.625725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987085, 34.693222, 36.384682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467698, 0.514524, 0.718696,
		0.400134, 0.848267, -0.346894,
		-0.788132, 0.125333, -0.602611,
		27.750647, 34.730824, 36.203899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150820, 35.381035, 36.641182>,  <28.302338, 34.643089, 36.625725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150820, 35.381035, 36.641182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797495, 35.238991, 36.518772>,  <27.585499, 35.153763, 36.445324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797495, 35.238991, 36.518772>,  <28.150820, 35.381035, 36.641182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797495, 35.238991, 36.518772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468769, 0.674061, 0.570874,
		0.003557, 0.647717, -0.761873,
		-0.883313, -0.355112, -0.306027,
		27.532501, 35.132458, 36.426964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746578, 35.845367, 36.229012>,  <28.150820, 35.381035, 36.641182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746578, 35.845367, 36.229012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437895, 35.609932, 36.132652>,  <27.252686, 35.468670, 36.074837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437895, 35.609932, 36.132652>,  <27.746578, 35.845367, 36.229012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437895, 35.609932, 36.132652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607022, 0.568688, 0.555084,
		-0.189720, 0.574592, -0.796147,
		-0.771706, -0.588589, -0.240898,
		27.206383, 35.433353, 36.060383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070644, 36.203609, 35.935703>,  <27.746578, 35.845367, 36.229012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070644, 36.203609, 35.935703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948460, 35.853733, 36.086227>,  <26.875149, 35.643806, 36.176540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948460, 35.853733, 36.086227>,  <27.070644, 36.203609, 35.935703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948460, 35.853733, 36.086227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729579, 0.468948, 0.497797,
		-0.611888, -0.122489, -0.781403,
		-0.305462, -0.874691, 0.376309,
		26.856821, 35.591324, 36.199120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327465, 36.173607, 35.916191>,  <27.070644, 36.203609, 35.935703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.327465, 36.173607, 35.916191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450382, 35.925419, 36.204796>,  <26.524134, 35.776505, 36.377960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450382, 35.925419, 36.204796>,  <26.327465, 36.173607, 35.916191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450382, 35.925419, 36.204796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647210, 0.419570, 0.636459,
		-0.697632, -0.662552, -0.272644,
		0.307294, -0.620472, 0.721515,
		26.542570, 35.739277, 36.421249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819452, 35.784641, 36.184288>,  <26.327465, 36.173607, 35.916191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819452, 35.784641, 36.184288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086355, 35.876785, 36.467613>,  <26.246498, 35.932072, 36.637608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086355, 35.876785, 36.467613>,  <25.819452, 35.784641, 36.184288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.086355, 35.876785, 36.467613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731783, 0.379944, 0.565806,
		-0.138779, -0.895867, 0.422094,
		0.667259, 0.230359, 0.708308,
		26.286533, 35.945892, 36.680107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595928, 35.542500, 36.887604>,  <25.819452, 35.784641, 36.184288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595928, 35.542500, 36.887604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817202, 35.873985, 36.921604>,  <25.949966, 36.072876, 36.942005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817202, 35.873985, 36.921604>,  <25.595928, 35.542500, 36.887604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817202, 35.873985, 36.921604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735171, 0.437649, 0.517674,
		0.391803, -0.348857, 0.851346,
		0.553185, 0.828711, 0.084997,
		25.983156, 36.122597, 36.947105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722031, 35.873741, 37.566406>,  <25.595928, 35.542500, 36.887604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722031, 35.873741, 37.566406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741364, 36.184441, 37.315224>,  <25.752964, 36.370861, 37.164516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741364, 36.184441, 37.315224>,  <25.722031, 35.873741, 37.566406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741364, 36.184441, 37.315224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697693, 0.476143, 0.535268,
		0.714764, 0.412247, 0.564947,
		0.048333, 0.776750, -0.627952,
		25.755863, 36.417465, 37.126839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.129696, 35.279881, 37.532261>,  <25.722031, 35.873741, 37.566406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.129696, 35.279881, 37.532261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184752, 35.012676, 37.239738>,  <26.217785, 34.852352, 37.064224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184752, 35.012676, 37.239738>,  <26.129696, 35.279881, 37.532261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184752, 35.012676, 37.239738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292788, 0.732781, -0.614253,
		0.946220, -0.129574, 0.296445,
		0.137638, -0.668014, -0.731310,
		26.226044, 34.812271, 37.020344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868612, 35.492626, 37.655327>,  <26.129696, 35.279881, 37.532261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868612, 35.492626, 37.655327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629095, 35.493614, 37.334969>,  <26.485384, 35.494205, 37.142754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629095, 35.493614, 37.334969>,  <26.868612, 35.492626, 37.655327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629095, 35.493614, 37.334969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702722, -0.478118, -0.526863,
		-0.384223, -0.878292, 0.284562,
		-0.598794, 0.002465, -0.800899,
		26.449457, 35.494354, 37.094700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878128, 34.820961, 37.280396>,  <26.868612, 35.492626, 37.655327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878128, 34.820961, 37.280396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748981, 35.075546, 37.000206>,  <26.671494, 35.228298, 36.832092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.748981, 35.075546, 37.000206>,  <26.878128, 34.820961, 37.280396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.748981, 35.075546, 37.000206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573417, -0.457266, -0.679780,
		-0.752960, -0.621146, -0.217323,
		-0.322868, 0.636464, -0.700478,
		26.652121, 35.266487, 36.790062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.616184, 34.369865, 36.682198>,  <26.878128, 34.820961, 37.280396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.616184, 34.369865, 36.682198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677444, 34.736446, 36.534328>,  <26.714201, 34.956394, 36.445606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677444, 34.736446, 36.534328>,  <26.616184, 34.369865, 36.682198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677444, 34.736446, 36.534328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603725, -0.382929, -0.699201,
		-0.782343, -0.116097, -0.611931,
		0.153151, 0.916453, -0.369673,
		26.723391, 35.011383, 36.423428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543394, 34.376862, 35.985104>,  <26.616184, 34.369865, 36.682198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543394, 34.376862, 35.985104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799509, 34.679543, 36.037922>,  <26.953178, 34.861153, 36.069611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.799509, 34.679543, 36.037922>,  <26.543394, 34.376862, 35.985104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.799509, 34.679543, 36.037922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496445, -0.276481, -0.822861,
		-0.586153, 0.592418, -0.552689,
		0.640286, 0.756702, 0.132043,
		26.991594, 34.906555, 36.077534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777346, 34.817177, 35.294998>,  <26.543394, 34.376862, 35.985104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777346, 34.817177, 35.294998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053141, 34.822296, 35.584671>,  <27.218618, 34.825367, 35.758476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053141, 34.822296, 35.584671>,  <26.777346, 34.817177, 35.294998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053141, 34.822296, 35.584671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693471, -0.300251, -0.654940,
		0.209057, 0.953774, -0.215893,
		0.689488, 0.012796, 0.724184,
		27.259987, 34.826134, 35.801926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.320402, 35.258076, 35.051655>,  <26.777346, 34.817177, 35.294998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.320402, 35.258076, 35.051655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462509, 34.997498, 35.319805>,  <27.547773, 34.841152, 35.480698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462509, 34.997498, 35.319805>,  <27.320402, 35.258076, 35.051655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462509, 34.997498, 35.319805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720339, -0.266262, -0.640481,
		0.595733, 0.710442, 0.374665,
		0.355266, -0.651442, 0.670380,
		27.569090, 34.802067, 35.520920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116520, 35.327370, 35.032574>,  <27.320402, 35.258076, 35.051655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116520, 35.327370, 35.032574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025766, 34.965282, 35.176300>,  <27.971313, 34.748032, 35.262535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025766, 34.965282, 35.176300>,  <28.116520, 35.327370, 35.032574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025766, 34.965282, 35.176300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688069, -0.410085, -0.598659,
		0.689265, 0.111405, 0.715893,
		-0.226883, -0.905218, 0.359311,
		27.957701, 34.693718, 35.284092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791441, 35.029339, 35.247589>,  <28.116520, 35.327370, 35.032574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791441, 35.029339, 35.247589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553089, 34.709183, 35.221333>,  <28.410078, 34.517090, 35.205578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.553089, 34.709183, 35.221333>,  <28.791441, 35.029339, 35.247589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553089, 34.709183, 35.221333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687435, -0.466117, -0.556928,
		0.415163, -0.376983, 0.827963,
		-0.595880, -0.800387, -0.065637,
		28.374325, 34.469067, 35.201641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240486, 34.473736, 35.304104>,  <28.791441, 35.029339, 35.247589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240486, 34.473736, 35.304104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907415, 34.335312, 35.131180>,  <28.707573, 34.252258, 35.027424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.907415, 34.335312, 35.131180>,  <29.240486, 34.473736, 35.304104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907415, 34.335312, 35.131180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553759, -0.521683, -0.648997,
		-0.000940, -0.779802, 0.626025,
		-0.832676, -0.346057, -0.432313,
		28.657612, 34.231495, 35.001488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178078, 33.659134, 35.347767>,  <29.240486, 34.473736, 35.304104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178078, 33.659134, 35.347767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039730, 33.861763, 35.031853>,  <28.956720, 33.983341, 34.842304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039730, 33.861763, 35.031853>,  <29.178078, 33.659134, 35.347767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039730, 33.861763, 35.031853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489138, -0.620963, -0.612494,
		-0.800698, -0.598159, -0.033009,
		-0.345871, 0.506568, -0.789786,
		28.935968, 34.013733, 34.794918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760128, 33.284401, 34.855568>,  <29.178078, 33.659134, 35.347767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760128, 33.284401, 34.855568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960417, 33.559673, 34.645546>,  <29.080591, 33.724838, 34.519535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960417, 33.559673, 34.645546>,  <28.760128, 33.284401, 34.855568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960417, 33.559673, 34.645546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385008, -0.720332, -0.576966,
		-0.775270, 0.086752, -0.625643,
		0.500724, 0.688183, -0.525052,
		29.110634, 33.766129, 34.488029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639938, 33.163002, 34.143528>,  <28.760128, 33.284401, 34.855568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639938, 33.163002, 34.143528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004560, 33.324699, 34.173603>,  <29.223333, 33.421719, 34.191647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004560, 33.324699, 34.173603>,  <28.639938, 33.163002, 34.143528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004560, 33.324699, 34.173603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338034, -0.632652, -0.696767,
		-0.234098, 0.660557, -0.713346,
		0.911554, 0.404247, 0.075188,
		29.278027, 33.445972, 34.196159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934069, 33.478836, 33.430923>,  <28.639938, 33.163002, 34.143528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934069, 33.478836, 33.430923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223146, 33.368973, 33.684624>,  <29.396593, 33.303055, 33.836845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223146, 33.368973, 33.684624>,  <28.934069, 33.478836, 33.430923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223146, 33.368973, 33.684624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442547, -0.521005, -0.729867,
		0.530913, 0.808157, -0.254979,
		0.722692, -0.274656, 0.634256,
		29.439955, 33.286575, 33.874901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514700, 33.516243, 33.019394>,  <28.934069, 33.478836, 33.430923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514700, 33.516243, 33.019394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633511, 33.305729, 33.338093>,  <29.704798, 33.179420, 33.529312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633511, 33.305729, 33.338093>,  <29.514700, 33.516243, 33.019394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633511, 33.305729, 33.338093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433553, -0.669103, -0.603601,
		0.850768, 0.524717, 0.029429,
		0.297029, -0.526283, 0.796744,
		29.722620, 33.147842, 33.577114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280073, 33.474789, 33.109196>,  <29.514700, 33.516243, 33.019394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280073, 33.474789, 33.109196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112869, 33.140686, 33.252087>,  <30.012547, 32.940224, 33.337822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112869, 33.140686, 33.252087>,  <30.280073, 33.474789, 33.109196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112869, 33.140686, 33.252087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482030, -0.537244, -0.692110,
		0.770009, -0.117113, 0.627193,
		-0.418011, -0.835256, 0.357231,
		29.987467, 32.890110, 33.359257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786623, 33.058804, 33.260319>,  <30.280073, 33.474789, 33.109196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786623, 33.058804, 33.260319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438452, 32.892159, 33.155411>,  <30.229549, 32.792171, 33.092464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438452, 32.892159, 33.155411>,  <30.786623, 33.058804, 33.260319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438452, 32.892159, 33.155411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409122, -0.315845, -0.856073,
		0.273814, -0.852453, 0.445365,
		-0.870428, -0.416613, -0.262274,
		30.177322, 32.767174, 33.076729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008757, 32.710861, 32.762203>,  <30.786623, 33.058804, 33.260319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008757, 32.710861, 32.762203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613827, 32.650532, 32.742455>,  <30.376869, 32.614334, 32.730606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613827, 32.650532, 32.742455>,  <31.008757, 32.710861, 32.762203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613827, 32.650532, 32.742455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086547, -0.250966, -0.964119,
		0.133024, -0.956173, 0.260839,
		-0.987327, -0.150826, -0.049369,
		30.317629, 32.605286, 32.727642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863836, 31.984709, 32.545105>,  <31.008757, 32.710861, 32.762203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863836, 31.984709, 32.545105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555983, 32.226627, 32.463242>,  <30.371271, 32.371780, 32.414124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555983, 32.226627, 32.463242>,  <30.863836, 31.984709, 32.545105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555983, 32.226627, 32.463242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032098, -0.283480, -0.958441,
		-0.637678, -0.744217, 0.198763,
		-0.769634, 0.604797, -0.204657,
		30.325092, 32.408066, 32.401844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370325, 31.495508, 32.543972>,  <30.863836, 31.984709, 32.545105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370325, 31.495508, 32.543972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525599, 31.491556, 32.912582>,  <30.618763, 31.489185, 33.133751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525599, 31.491556, 32.912582>,  <30.370325, 31.495508, 32.543972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525599, 31.491556, 32.912582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567974, 0.784899, 0.247668,
		-0.725754, -0.619545, 0.299073,
		0.388184, -0.009881, 0.921529,
		30.642054, 31.488592, 33.189041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762989, 31.878080, 32.934849>,  <30.370325, 31.495508, 32.543972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762989, 31.878080, 32.934849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090445, 31.895878, 33.163883>,  <30.286917, 31.906555, 33.301304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090445, 31.895878, 33.163883>,  <29.762989, 31.878080, 32.934849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090445, 31.895878, 33.163883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440794, 0.687776, 0.576771,
		-0.368148, -0.724558, 0.582651,
		0.818637, 0.044492, 0.572585,
		30.336037, 31.909225, 33.335659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582819, 31.976858, 33.588306>,  <29.762989, 31.878080, 32.934849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582819, 31.976858, 33.588306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958128, 32.114307, 33.604122>,  <30.183313, 32.196777, 33.613613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958128, 32.114307, 33.604122>,  <29.582819, 31.976858, 33.588306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958128, 32.114307, 33.604122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313375, 0.796102, 0.517705,
		0.146417, -0.498140, 0.854645,
		0.938274, 0.343625, 0.039542,
		30.239611, 32.217396, 33.615986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820787, 32.039577, 34.241211>,  <29.582819, 31.976858, 33.588306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820787, 32.039577, 34.241211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963766, 32.321514, 33.996120>,  <30.049553, 32.490677, 33.849068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963766, 32.321514, 33.996120>,  <29.820787, 32.039577, 34.241211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963766, 32.321514, 33.996120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397488, 0.708494, 0.583129,
		0.845125, 0.035113, 0.533415,
		0.357445, 0.704843, -0.612723,
		30.070999, 32.532967, 33.812305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098238, 32.559273, 34.668209>,  <29.820787, 32.039577, 34.241211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098238, 32.559273, 34.668209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023081, 32.728966, 34.313869>,  <29.977987, 32.830780, 34.101265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023081, 32.728966, 34.313869>,  <30.098238, 32.559273, 34.668209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023081, 32.728966, 34.313869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283092, 0.840245, 0.462436,
		0.940508, 0.337664, -0.037778,
		-0.187891, 0.424230, -0.885848,
		29.966713, 32.856236, 34.048115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488297, 33.221428, 34.641678>,  <30.098238, 32.559273, 34.668209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488297, 33.221428, 34.641678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162996, 33.202747, 34.409664>,  <29.967815, 33.191540, 34.270454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162996, 33.202747, 34.409664>,  <30.488297, 33.221428, 34.641678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162996, 33.202747, 34.409664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387677, 0.786838, 0.480201,
		0.433967, 0.615390, -0.658002,
		-0.813252, -0.046701, -0.580035,
		29.919022, 33.188736, 34.235653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365971, 33.928017, 34.248615>,  <30.488297, 33.221428, 34.641678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365971, 33.928017, 34.248615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026930, 33.722195, 34.300472>,  <29.823505, 33.598701, 34.331585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026930, 33.722195, 34.300472>,  <30.365971, 33.928017, 34.248615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026930, 33.722195, 34.300472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365784, 0.743568, 0.559739,
		-0.384414, 0.427014, -0.818465,
		-0.847601, -0.514553, 0.129643,
		29.772650, 33.567829, 34.339367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655197, 34.180428, 34.331913>,  <30.365971, 33.928017, 34.248615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655197, 34.180428, 34.331913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781389, 34.554897, 34.269878>,  <29.857103, 34.779579, 34.232658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781389, 34.554897, 34.269878>,  <29.655197, 34.180428, 34.331913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781389, 34.554897, 34.269878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921580, -0.341223, -0.185089,
		-0.226196, -0.084537, -0.970407,
		0.315478, 0.936173, -0.155091,
		29.876032, 34.835751, 34.223351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936239, 34.243393, 33.694565>,  <29.655197, 34.180428, 34.331913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936239, 34.243393, 33.694565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114006, 34.569096, 33.843956>,  <30.220665, 34.764515, 33.933590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.114006, 34.569096, 33.843956>,  <29.936239, 34.243393, 33.694565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114006, 34.569096, 33.843956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884643, -0.333252, -0.326113,
		-0.141077, 0.475325, -0.868426,
		0.444415, 0.814254, 0.373479,
		30.247330, 34.813374, 33.956001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332798, 34.657215, 33.137085>,  <29.936239, 34.243393, 33.694565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332798, 34.657215, 33.137085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485888, 34.734154, 33.498531>,  <30.577742, 34.780315, 33.715401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485888, 34.734154, 33.498531>,  <30.332798, 34.657215, 33.137085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485888, 34.734154, 33.498531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921807, -0.144703, -0.359628,
		0.061584, 0.970600, -0.232684,
		0.382726, 0.192343, 0.903618,
		30.600706, 34.791855, 33.769615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848347, 35.149475, 32.944817>,  <30.332798, 34.657215, 33.137085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848347, 35.149475, 32.944817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942137, 35.024826, 33.313145>,  <30.998411, 34.950039, 33.534142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942137, 35.024826, 33.313145>,  <30.848347, 35.149475, 32.944817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942137, 35.024826, 33.313145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964211, -0.046051, -0.261106,
		0.123771, 0.949090, 0.289670,
		0.234474, -0.311621, 0.920823,
		31.012478, 34.931339, 33.589390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442461, 35.476860, 33.011093>,  <30.848347, 35.149475, 32.944817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442461, 35.476860, 33.011093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406860, 35.168797, 33.263737>,  <31.385500, 34.983959, 33.415321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406860, 35.168797, 33.263737>,  <31.442461, 35.476860, 33.011093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406860, 35.168797, 33.263737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820881, -0.415867, -0.391419,
		0.564122, 0.483640, 0.669223,
		-0.089002, -0.770161, 0.631610,
		31.380159, 34.937748, 33.453220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083691, 35.311222, 33.288818>,  <31.442461, 35.476860, 33.011093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083691, 35.311222, 33.288818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905210, 34.959076, 33.353138>,  <31.798120, 34.747787, 33.391727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905210, 34.959076, 33.353138>,  <32.083691, 35.311222, 33.288818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905210, 34.959076, 33.353138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679981, -0.450328, -0.578646,
		0.581831, -0.148856, 0.799571,
		-0.446204, -0.880367, 0.160796,
		31.771349, 34.694965, 33.401375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624126, 34.841228, 33.486973>,  <32.083691, 35.311222, 33.288818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624126, 34.841228, 33.486973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319191, 34.602936, 33.385822>,  <32.136230, 34.459961, 33.325130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319191, 34.602936, 33.385822>,  <32.624126, 34.841228, 33.486973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319191, 34.602936, 33.385822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635149, -0.613693, -0.469006,
		0.124210, -0.518157, 0.846218,
		-0.762337, -0.595730, -0.252881,
		32.090488, 34.424217, 33.309959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867321, 34.157063, 33.619423>,  <32.624126, 34.841228, 33.486973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867321, 34.157063, 33.619423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579445, 34.153103, 33.341732>,  <32.406719, 34.150726, 33.175117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579445, 34.153103, 33.341732>,  <32.867321, 34.157063, 33.619423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579445, 34.153103, 33.341732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592300, -0.530459, -0.606460,
		-0.362252, -0.847653, 0.387631,
		-0.719690, -0.009902, -0.694225,
		32.363537, 34.150131, 33.133465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968945, 33.488682, 33.378204>,  <32.867321, 34.157063, 33.619423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968945, 33.488682, 33.378204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753239, 33.649399, 33.082161>,  <32.623814, 33.745827, 32.904537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753239, 33.649399, 33.082161>,  <32.968945, 33.488682, 33.378204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753239, 33.649399, 33.082161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497894, -0.556675, -0.664993,
		-0.679184, -0.727103, 0.100149,
		-0.539268, 0.401789, -0.740105,
		32.591457, 33.769936, 32.860130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768074, 32.939514, 32.888412>,  <32.968945, 33.488682, 33.378204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768074, 32.939514, 32.888412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746536, 33.277351, 32.675335>,  <32.733612, 33.480053, 32.547489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746536, 33.277351, 32.675335>,  <32.768074, 32.939514, 32.888412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746536, 33.277351, 32.675335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480597, -0.445692, -0.755238,
		-0.875287, -0.296677, -0.381911,
		-0.053847, 0.844595, -0.532691,
		32.730381, 33.530731, 32.515526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419823, 32.749954, 32.303120>,  <32.768074, 32.939514, 32.888412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419823, 32.749954, 32.303120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602131, 33.093330, 32.209003>,  <32.711514, 33.299355, 32.152534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602131, 33.093330, 32.209003>,  <32.419823, 32.749954, 32.303120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602131, 33.093330, 32.209003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471781, -0.457131, -0.753959,
		-0.754785, 0.232625, -0.613340,
		0.455766, 0.858439, -0.235288,
		32.738861, 33.350861, 32.138416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420906, 32.711132, 31.583986>,  <32.419823, 32.749954, 32.303120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420906, 32.711132, 31.583986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685726, 32.991634, 31.689764>,  <32.844620, 33.159935, 31.753231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685726, 32.991634, 31.689764>,  <32.420906, 32.711132, 31.583986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685726, 32.991634, 31.689764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514761, -0.169024, -0.840507,
		-0.544711, 0.692585, -0.472881,
		0.662051, 0.701254, 0.264446,
		32.884342, 33.202011, 31.769098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506138, 33.159382, 30.955978>,  <32.420906, 32.711132, 31.583986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506138, 33.159382, 30.955978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805759, 33.233128, 31.210512>,  <32.985535, 33.277374, 31.363234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805759, 33.233128, 31.210512>,  <32.506138, 33.159382, 30.955978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805759, 33.233128, 31.210512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655468, -0.066594, -0.752282,
		-0.096317, 0.980599, -0.170728,
		0.749056, 0.184364, 0.636337,
		33.030476, 33.288437, 31.401413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845104, 33.676128, 30.779644>,  <32.506138, 33.159382, 30.955978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845104, 33.676128, 30.779644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117775, 33.490719, 31.006081>,  <33.281376, 33.379475, 31.141943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117775, 33.490719, 31.006081>,  <32.845104, 33.676128, 30.779644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117775, 33.490719, 31.006081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668625, 0.080505, -0.739229,
		0.297078, 0.882419, 0.364803,
		0.681678, -0.463525, 0.566091,
		33.322277, 33.351662, 31.175907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414944, 34.093895, 30.719946>,  <32.845104, 33.676128, 30.779644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414944, 34.093895, 30.719946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552742, 33.742188, 30.851526>,  <33.635422, 33.531162, 30.930475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552742, 33.742188, 30.851526>,  <33.414944, 34.093895, 30.719946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552742, 33.742188, 30.851526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626806, -0.045426, -0.777850,
		0.698881, 0.474157, 0.535481,
		0.344498, -0.879267, 0.328952,
		33.656090, 33.478409, 30.950212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089569, 34.161259, 30.642990>,  <33.414944, 34.093895, 30.719946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089569, 34.161259, 30.642990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015354, 33.769211, 30.671087>,  <33.970825, 33.533981, 30.687946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015354, 33.769211, 30.671087>,  <34.089569, 34.161259, 30.642990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015354, 33.769211, 30.671087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511535, -0.157376, -0.844727,
		0.838991, -0.120798, 0.530567,
		-0.185541, -0.980123, 0.070245,
		33.959690, 33.475174, 30.692162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635330, 33.923519, 30.371981>,  <34.089569, 34.161259, 30.642990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635330, 33.923519, 30.371981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397644, 33.602299, 30.354053>,  <34.255032, 33.409565, 30.343298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397644, 33.602299, 30.354053>,  <34.635330, 33.923519, 30.371981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397644, 33.602299, 30.354053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341183, -0.201212, -0.918209,
		0.728355, -0.560906, 0.393552,
		-0.594216, -0.803056, -0.044818,
		34.219379, 33.361382, 30.340609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119614, 33.338707, 30.214962>,  <34.635330, 33.923519, 30.371981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119614, 33.338707, 30.214962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747406, 33.223320, 30.124697>,  <34.524082, 33.154087, 30.070538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747406, 33.223320, 30.124697>,  <35.119614, 33.338707, 30.214962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747406, 33.223320, 30.124697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281949, -0.170963, -0.944075,
		0.233758, -0.942102, 0.240418,
		-0.930517, -0.288471, -0.225661,
		34.468250, 33.136780, 30.056999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142647, 32.672821, 29.884863>,  <35.119614, 33.338707, 30.214962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142647, 32.672821, 29.884863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806557, 32.853752, 29.765253>,  <34.604900, 32.962311, 29.693487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.806557, 32.853752, 29.765253>,  <35.142647, 32.672821, 29.884863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806557, 32.853752, 29.765253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153107, -0.331119, -0.931085,
		-0.520166, -0.828108, 0.208962,
		-0.840230, 0.452325, -0.299026,
		34.554489, 32.989449, 29.675545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854443, 32.171444, 29.514902>,  <35.142647, 32.672821, 29.884863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854443, 32.171444, 29.514902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677830, 32.502403, 29.376072>,  <34.571861, 32.700977, 29.292774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677830, 32.502403, 29.376072>,  <34.854443, 32.171444, 29.514902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677830, 32.502403, 29.376072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238349, -0.264766, -0.934392,
		-0.865008, -0.495289, -0.080307,
		-0.441531, 0.827398, -0.347077,
		34.545372, 32.750622, 29.271948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416386, 31.953093, 28.960327>,  <34.854443, 32.171444, 29.514902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416386, 31.953093, 28.960327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502911, 32.340900, 28.914291>,  <34.554825, 32.573586, 28.886669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.502911, 32.340900, 28.914291>,  <34.416386, 31.953093, 28.960327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502911, 32.340900, 28.914291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060704, -0.131007, -0.989521,
		-0.974435, 0.207059, -0.087192,
		0.216312, 0.969517, -0.115089,
		34.567802, 32.631756, 28.879765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003147, 32.185879, 28.463409>,  <34.416386, 31.953093, 28.960327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003147, 32.185879, 28.463409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304924, 32.448257, 28.472715>,  <34.485992, 32.605686, 28.478300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304924, 32.448257, 28.472715>,  <34.003147, 32.185879, 28.463409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304924, 32.448257, 28.472715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002345, 0.032753, -0.999461,
		-0.656357, 0.754094, 0.023173,
		0.754447, 0.655949, 0.023266,
		34.531258, 32.645042, 28.479694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849049, 32.545681, 27.935799>,  <34.003147, 32.185879, 28.463409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849049, 32.545681, 27.935799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217567, 32.673538, 28.024380>,  <34.438679, 32.750252, 28.077528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217567, 32.673538, 28.024380>,  <33.849049, 32.545681, 27.935799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217567, 32.673538, 28.024380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123678, 0.299056, -0.946187,
		-0.368664, 0.899109, 0.235988,
		0.921298, 0.319639, 0.221451,
		34.493958, 32.769428, 28.090815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884914, 33.143425, 27.552778>,  <33.849049, 32.545681, 27.935799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884914, 33.143425, 27.552778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269608, 33.058182, 27.621666>,  <34.500423, 33.007034, 27.662998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269608, 33.058182, 27.621666>,  <33.884914, 33.143425, 27.552778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269608, 33.058182, 27.621666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235490, 0.321572, -0.917135,
		0.140068, 0.922592, 0.359451,
		0.961730, -0.213108, 0.172219,
		34.558128, 32.994247, 27.673332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270508, 33.639183, 27.294001>,  <33.884914, 33.143425, 27.552778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270508, 33.639183, 27.294001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560349, 33.365959, 27.330633>,  <34.734253, 33.202026, 27.352613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560349, 33.365959, 27.330633>,  <34.270508, 33.639183, 27.294001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560349, 33.365959, 27.330633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473572, 0.396963, -0.786225,
		0.500681, 0.613071, 0.611116,
		0.724602, -0.683055, 0.091582,
		34.777729, 33.161041, 27.358109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858852, 34.023350, 27.202827>,  <34.270508, 33.639183, 27.294001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858852, 34.023350, 27.202827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967693, 33.642773, 27.145264>,  <35.032997, 33.414425, 27.110725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967693, 33.642773, 27.145264>,  <34.858852, 34.023350, 27.202827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967693, 33.642773, 27.145264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568649, 0.279634, -0.773591,
		0.776273, 0.128658, 0.617128,
		0.272099, -0.951447, -0.143911,
		35.049324, 33.357338, 27.102091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578171, 34.042122, 27.157085>,  <34.858852, 34.023350, 27.202827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578171, 34.042122, 27.157085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456932, 33.721973, 26.950190>,  <35.384190, 33.529884, 26.826052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456932, 33.721973, 26.950190>,  <35.578171, 34.042122, 27.157085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456932, 33.721973, 26.950190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534575, 0.306530, -0.787572,
		0.788901, -0.515212, 0.334951,
		-0.303094, -0.800372, -0.517241,
		35.366005, 33.481861, 26.795017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209072, 33.757092, 26.757915>,  <35.578171, 34.042122, 27.157085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209072, 33.757092, 26.757915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887440, 33.606155, 26.574144>,  <35.694462, 33.515594, 26.463881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887440, 33.606155, 26.574144>,  <36.209072, 33.757092, 26.757915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887440, 33.606155, 26.574144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447857, 0.123788, -0.885495,
		0.391001, -0.917766, 0.069457,
		-0.804079, -0.377336, -0.459429,
		35.646217, 33.492954, 26.436316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534363, 33.320988, 26.355009>,  <36.209072, 33.757092, 26.757915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534363, 33.320988, 26.355009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178371, 33.368568, 26.178926>,  <35.964775, 33.397118, 26.073277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178371, 33.368568, 26.178926>,  <36.534363, 33.320988, 26.355009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178371, 33.368568, 26.178926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455934, 0.216044, -0.863394,
		-0.007599, -0.969111, -0.246510,
		-0.889981, 0.118953, -0.440208,
		35.911377, 33.404255, 26.046864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721115, 33.185783, 25.760544>,  <36.534363, 33.320988, 26.355009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721115, 33.185783, 25.760544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362110, 33.344460, 25.683489>,  <36.146706, 33.439663, 25.637257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362110, 33.344460, 25.683489>,  <36.721115, 33.185783, 25.760544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362110, 33.344460, 25.683489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347508, 0.367285, -0.862752,
		-0.271489, -0.841274, -0.467495,
		-0.897514, 0.396686, -0.192636,
		36.092857, 33.463467, 25.625698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482761, 32.930923, 25.115473>,  <36.721115, 33.185783, 25.760544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482761, 32.930923, 25.115473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326313, 33.286373, 25.211285>,  <36.232445, 33.499641, 25.268772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326313, 33.286373, 25.211285>,  <36.482761, 32.930923, 25.115473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326313, 33.286373, 25.211285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433960, 0.407580, -0.803466,
		-0.811605, -0.210305, -0.545040,
		-0.391120, 0.888623, 0.239530,
		36.208977, 33.552959, 25.283144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373051, 33.173248, 24.438042>,  <36.482761, 32.930923, 25.115473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373051, 33.173248, 24.438042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365307, 33.482628, 24.691467>,  <36.360661, 33.668255, 24.843523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365307, 33.482628, 24.691467>,  <36.373051, 33.173248, 24.438042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365307, 33.482628, 24.691467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382668, 0.591166, -0.709991,
		-0.923683, 0.228700, -0.307418,
		-0.019360, 0.773446, 0.633566,
		36.359497, 33.714661, 24.881536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310898, 33.831429, 24.047522>,  <36.373051, 33.173248, 24.438042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310898, 33.831429, 24.047522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410870, 33.998802, 24.396795>,  <36.470852, 34.099224, 24.606359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410870, 33.998802, 24.396795>,  <36.310898, 33.831429, 24.047522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410870, 33.998802, 24.396795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433462, 0.758041, -0.487323,
		-0.865821, 0.500289, 0.008084,
		0.249931, 0.418431, 0.873184,
		36.485847, 34.124332, 24.658751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139679, 34.561710, 23.993290>,  <36.310898, 33.831429, 24.047522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139679, 34.561710, 23.993290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421150, 34.509655, 24.272692>,  <36.590031, 34.478420, 24.440332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421150, 34.509655, 24.272692>,  <36.139679, 34.561710, 23.993290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421150, 34.509655, 24.272692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540218, 0.736567, -0.406982,
		-0.461529, 0.663726, 0.588607,
		0.703673, -0.130142, 0.698503,
		36.632252, 34.470612, 24.482243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311729, 35.223465, 24.050982>,  <36.139679, 34.561710, 23.993290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311729, 35.223465, 24.050982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608925, 35.020588, 24.225668>,  <36.787243, 34.898861, 24.330481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608925, 35.020588, 24.225668>,  <36.311729, 35.223465, 24.050982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608925, 35.020588, 24.225668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652025, 0.695805, -0.301194,
		-0.151104, 0.508533, 0.847680,
		0.742988, -0.507197, 0.436716,
		36.831821, 34.868427, 24.356682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611736, 35.570255, 24.619011>,  <36.311729, 35.223465, 24.050982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611736, 35.570255, 24.619011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891499, 35.314922, 24.490406>,  <37.059357, 35.161724, 24.413242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891499, 35.314922, 24.490406>,  <36.611736, 35.570255, 24.619011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891499, 35.314922, 24.490406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617373, 0.766214, -0.178232,
		0.360119, -0.073838, 0.929980,
		0.699403, -0.638329, -0.321514,
		37.101318, 35.123425, 24.393951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219063, 35.755726, 24.913671>,  <36.611736, 35.570255, 24.619011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219063, 35.755726, 24.913671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349110, 35.546436, 24.598574>,  <37.427139, 35.420864, 24.409515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349110, 35.546436, 24.598574>,  <37.219063, 35.755726, 24.913671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349110, 35.546436, 24.598574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495590, 0.803716, -0.329290,
		0.805412, -0.283339, 0.520605,
		0.325118, -0.523221, -0.787742,
		37.446644, 35.389469, 24.362251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012772, 36.000210, 24.793869>,  <37.219063, 35.755726, 24.913671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012772, 36.000210, 24.793869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912098, 35.820747, 24.450855>,  <37.851696, 35.713070, 24.245047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912098, 35.820747, 24.450855>,  <38.012772, 36.000210, 24.793869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912098, 35.820747, 24.450855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613101, 0.611670, -0.499966,
		0.748841, -0.651587, 0.121126,
		-0.251682, -0.448658, -0.857533,
		37.836594, 35.686150, 24.193596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612583, 35.888584, 24.465616>,  <38.012772, 36.000210, 24.793869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612583, 35.888584, 24.465616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336971, 35.868122, 24.176445>,  <38.171604, 35.855846, 24.002943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336971, 35.868122, 24.176445>,  <38.612583, 35.888584, 24.465616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336971, 35.868122, 24.176445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406837, 0.798206, -0.444242,
		0.599769, -0.600209, -0.529176,
		-0.689029, -0.051154, -0.722926,
		38.130264, 35.852776, 23.959566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980057, 35.890511, 23.911743>,  <38.612583, 35.888584, 24.465616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980057, 35.890511, 23.911743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629200, 36.031578, 23.781359>,  <38.418686, 36.116219, 23.703127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629200, 36.031578, 23.781359>,  <38.980057, 35.890511, 23.911743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629200, 36.031578, 23.781359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471234, 0.762885, -0.442657,
		0.092559, -0.541875, -0.835347,
		-0.877138, 0.352672, -0.325962,
		38.366058, 36.137379, 23.683571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176987, 36.107368, 23.279943>,  <38.980057, 35.890511, 23.911743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176987, 36.107368, 23.279943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839291, 36.301460, 23.370989>,  <38.636673, 36.417915, 23.425615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839291, 36.301460, 23.370989>,  <39.176987, 36.107368, 23.279943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839291, 36.301460, 23.370989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359775, 0.827845, -0.430389,
		-0.397267, -0.281463, -0.873475,
		-0.844240, 0.485234, 0.227612,
		38.586018, 36.447029, 23.439272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113686, 36.558727, 22.785360>,  <39.176987, 36.107368, 23.279943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113686, 36.558727, 22.785360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855343, 36.700294, 23.055950>,  <38.700336, 36.785233, 23.218304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855343, 36.700294, 23.055950>,  <39.113686, 36.558727, 22.785360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855343, 36.700294, 23.055950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216094, 0.934570, -0.282634,
		-0.732240, -0.036358, -0.680075,
		-0.645854, 0.353916, 0.676473,
		38.661587, 36.806469, 23.258892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759041, 36.989670, 22.433998>,  <39.113686, 36.558727, 22.785360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759041, 36.989670, 22.433998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714657, 37.097191, 22.816711>,  <38.688026, 37.161701, 23.046339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714657, 37.097191, 22.816711>,  <38.759041, 36.989670, 22.433998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714657, 37.097191, 22.816711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124118, 0.958939, -0.255011,
		-0.986044, 0.090459, -0.139763,
		-0.110956, 0.268799, 0.956784,
		38.681370, 37.177830, 23.103746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306442, 37.471127, 22.570969>,  <38.759041, 36.989670, 22.433998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306442, 37.471127, 22.570969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585815, 37.756863, 22.553448>,  <39.753437, 37.928303, 22.542934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585815, 37.756863, 22.553448>,  <39.306442, 37.471127, 22.570969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585815, 37.756863, 22.553448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362778, -0.406129, -0.838720,
		-0.616918, 0.569897, -0.542798,
		0.698430, 0.714337, -0.043802,
		39.795345, 37.971165, 22.540308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270119, 37.819130, 21.921381>,  <39.306442, 37.471127, 22.570969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270119, 37.819130, 21.921381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644920, 37.896744, 22.037565>,  <39.869801, 37.943310, 22.107277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644920, 37.896744, 22.037565>,  <39.270119, 37.819130, 21.921381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644920, 37.896744, 22.037565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334309, -0.257068, -0.906727,
		-0.101266, 0.946714, -0.305742,
		0.937007, 0.194033, 0.290462,
		39.926022, 37.954952, 22.124704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542171, 38.196835, 21.297663>,  <39.270119, 37.819130, 21.921381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542171, 38.196835, 21.297663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804394, 38.047607, 21.560284>,  <39.961727, 37.958069, 21.717857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804394, 38.047607, 21.560284>,  <39.542171, 38.196835, 21.297663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804394, 38.047607, 21.560284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585813, -0.297393, -0.753910,
		0.476516, 0.878849, 0.023591,
		0.655557, -0.373070, 0.656554,
		40.001060, 37.935688, 21.757250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242931, 38.413269, 21.100164>,  <39.542171, 38.196835, 21.297663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242931, 38.413269, 21.100164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271160, 38.062153, 21.289690>,  <40.288097, 37.851482, 21.403404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271160, 38.062153, 21.289690>,  <40.242931, 38.413269, 21.100164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271160, 38.062153, 21.289690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611773, -0.337087, -0.715616,
		0.787879, 0.340370, 0.513221,
		0.070574, -0.877793, 0.473813,
		40.292332, 37.798817, 21.431833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942966, 38.134975, 21.176071>,  <40.242931, 38.413269, 21.100164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942966, 38.134975, 21.176071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694759, 37.821423, 21.167255>,  <40.545837, 37.633289, 21.161966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694759, 37.821423, 21.167255>,  <40.942966, 38.134975, 21.176071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694759, 37.821423, 21.167255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428344, -0.315262, -0.846836,
		0.656873, -0.534915, 0.531398,
		-0.620515, -0.783885, -0.022040,
		40.508606, 37.586258, 21.160643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216011, 37.498981, 21.003546>,  <40.942966, 38.134975, 21.176071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216011, 37.498981, 21.003546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835785, 37.526077, 20.882330>,  <40.607647, 37.542336, 20.809601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835785, 37.526077, 20.882330>,  <41.216011, 37.498981, 21.003546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835785, 37.526077, 20.882330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261181, -0.353416, -0.898266,
		-0.167946, -0.933010, 0.318254,
		-0.950568, 0.067738, -0.303039,
		40.550613, 37.546398, 20.791418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317799, 36.800568, 21.295967>,  <41.216011, 37.498981, 21.003546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317799, 36.800568, 21.295967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123936, 36.638973, 21.606297>,  <41.007618, 36.542015, 21.792494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123936, 36.638973, 21.606297>,  <41.317799, 36.800568, 21.295967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123936, 36.638973, 21.606297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872969, -0.167566, 0.458090,
		-0.055063, 0.899285, 0.433883,
		-0.484657, -0.403991, 0.775821,
		40.978539, 36.517776, 21.839043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907524, 37.168327, 21.889956>,  <41.317799, 36.800568, 21.295967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907524, 37.168327, 21.889956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762127, 37.500568, 21.721205>,  <40.674889, 37.699913, 21.619953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762127, 37.500568, 21.721205>,  <40.907524, 37.168327, 21.889956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762127, 37.500568, 21.721205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005928, 0.450782, 0.892614,
		0.931579, 0.326957, -0.158931,
		-0.363490, 0.830599, -0.421878,
		40.653080, 37.749748, 21.594641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296219, 37.741413, 22.168930>,  <40.907524, 37.168327, 21.889956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296219, 37.741413, 22.168930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929359, 37.839077, 22.042934>,  <40.709244, 37.897675, 21.967337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929359, 37.839077, 22.042934>,  <41.296219, 37.741413, 22.168930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929359, 37.839077, 22.042934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191961, 0.421997, 0.886042,
		0.349262, 0.873100, -0.340165,
		-0.917152, 0.244163, -0.314988,
		40.654213, 37.912327, 21.948439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122482, 38.222755, 22.548521>,  <41.296219, 37.741413, 22.168930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122482, 38.222755, 22.548521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751194, 38.178719, 22.406374>,  <40.528419, 38.152298, 22.321087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751194, 38.178719, 22.406374>,  <41.122482, 38.222755, 22.548521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751194, 38.178719, 22.406374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363988, 0.466270, 0.806291,
		0.076930, 0.877766, -0.472874,
		-0.928221, -0.110093, -0.355366,
		40.472729, 38.145691, 22.299765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738888, 38.929691, 22.611883>,  <41.122482, 38.222755, 22.548521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738888, 38.929691, 22.611883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454624, 38.650192, 22.579100>,  <40.284065, 38.482494, 22.559429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454624, 38.650192, 22.579100>,  <40.738888, 38.929691, 22.611883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454624, 38.650192, 22.579100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574902, 0.509616, 0.640140,
		-0.405530, 0.502037, -0.763874,
		-0.710657, -0.698749, -0.081957,
		40.241428, 38.440567, 22.554512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014587, 39.233128, 22.443409>,  <40.738888, 38.929691, 22.611883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014587, 39.233128, 22.443409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920162, 38.877914, 22.601227>,  <39.863506, 38.664787, 22.695917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920162, 38.877914, 22.601227>,  <40.014587, 39.233128, 22.443409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920162, 38.877914, 22.601227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721417, 0.432173, 0.541095,
		-0.651023, -0.156897, -0.742665,
		-0.236064, -0.888037, 0.394543,
		39.849342, 38.611504, 22.719589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331970, 39.331608, 22.696150>,  <40.014587, 39.233128, 22.443409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331970, 39.331608, 22.696150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436932, 38.986488, 22.868994>,  <39.499908, 38.779415, 22.972700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436932, 38.986488, 22.868994>,  <39.331970, 39.331608, 22.696150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436932, 38.986488, 22.868994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754683, 0.095556, 0.649093,
		-0.601330, -0.496429, -0.626068,
		0.262403, -0.862802, 0.432107,
		39.515652, 38.727646, 22.998627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692726, 39.057930, 22.862236>,  <39.331970, 39.331608, 22.696150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692726, 39.057930, 22.862236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969913, 38.900852, 23.104090>,  <39.136227, 38.806606, 23.249201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969913, 38.900852, 23.104090>,  <38.692726, 39.057930, 22.862236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969913, 38.900852, 23.104090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619261, 0.105256, 0.778098,
		-0.369198, -0.913625, -0.170243,
		0.692970, -0.392697, 0.604633,
		39.177803, 38.783043, 23.285480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354733, 38.552662, 23.275017>,  <38.692726, 39.057930, 22.862236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354733, 38.552662, 23.275017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678680, 38.697403, 23.459698>,  <38.873051, 38.784248, 23.570507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678680, 38.697403, 23.459698>,  <38.354733, 38.552662, 23.275017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678680, 38.697403, 23.459698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502695, 0.022463, 0.864172,
		0.302331, -0.931965, 0.200093,
		0.809872, 0.361852, 0.461703,
		38.921642, 38.805958, 23.598209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377880, 38.249741, 23.978455>,  <38.354733, 38.552662, 23.275017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377880, 38.249741, 23.978455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632103, 38.558338, 23.990202>,  <38.784637, 38.743496, 23.997252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.632103, 38.558338, 23.990202>,  <38.377880, 38.249741, 23.978455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632103, 38.558338, 23.990202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404091, 0.299992, 0.864127,
		0.657860, -0.561069, 0.502416,
		0.635556, 0.771496, 0.029370,
		38.822769, 38.789787, 23.999014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562523, 38.235485, 24.698450>,  <38.377880, 38.249741, 23.978455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562523, 38.235485, 24.698450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722218, 38.583252, 24.582024>,  <38.818035, 38.791912, 24.512169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722218, 38.583252, 24.582024>,  <38.562523, 38.235485, 24.698450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722218, 38.583252, 24.582024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003271, 0.318810, 0.947813,
		0.916843, -0.377448, 0.130124,
		0.399235, 0.869421, -0.291064,
		38.841988, 38.844078, 24.494705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200207, 38.309326, 25.197107>,  <38.562523, 38.235485, 24.698450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200207, 38.309326, 25.197107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028656, 38.638783, 25.048685>,  <38.925728, 38.836456, 24.959631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028656, 38.638783, 25.048685>,  <39.200207, 38.309326, 25.197107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028656, 38.638783, 25.048685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209558, 0.308837, 0.927742,
		0.878721, 0.475643, 0.040148,
		-0.428875, 0.823640, -0.371057,
		38.899994, 38.885876, 24.937368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322979, 38.733494, 25.716911>,  <39.200207, 38.309326, 25.197107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322979, 38.733494, 25.716911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048321, 38.915638, 25.490225>,  <38.883526, 39.024925, 25.354212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048321, 38.915638, 25.490225>,  <39.322979, 38.733494, 25.716911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048321, 38.915638, 25.490225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376657, 0.443924, 0.813057,
		0.621812, 0.771739, -0.133304,
		-0.686644, 0.455358, -0.566718,
		38.842327, 39.052246, 25.320210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432720, 39.435253, 25.749350>,  <39.322979, 38.733494, 25.716911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432720, 39.435253, 25.749350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048435, 39.373245, 25.657267>,  <38.817863, 39.336040, 25.602016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048435, 39.373245, 25.657267>,  <39.432720, 39.435253, 25.749350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048435, 39.373245, 25.657267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277138, 0.491374, 0.825679,
		-0.014876, 0.857042, -0.515031,
		-0.960715, -0.155017, -0.230209,
		38.760220, 39.326740, 25.588203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071156, 39.905098, 26.154989>,  <39.432720, 39.435253, 25.749350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071156, 39.905098, 26.154989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772625, 39.671005, 26.028183>,  <38.593506, 39.530548, 25.952099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772625, 39.671005, 26.028183>,  <39.071156, 39.905098, 26.154989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772625, 39.671005, 26.028183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591098, 0.363857, 0.719869,
		-0.305944, 0.724643, -0.617487,
		-0.746326, -0.585235, -0.317015,
		38.548729, 39.495434, 25.933079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377945, 40.384258, 26.092289>,  <39.071156, 39.905098, 26.154989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377945, 40.384258, 26.092289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252331, 40.005283, 26.116781>,  <38.176964, 39.777897, 26.131477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252331, 40.005283, 26.116781>,  <38.377945, 40.384258, 26.092289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252331, 40.005283, 26.116781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717621, 0.279095, 0.638065,
		-0.621615, 0.156432, -0.767544,
		-0.314032, -0.947436, 0.061231,
		38.158123, 39.721054, 26.135151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678619, 40.400906, 26.200466>,  <38.377945, 40.384258, 26.092289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678619, 40.400906, 26.200466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735222, 40.026134, 26.328300>,  <37.769184, 39.801270, 26.405001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735222, 40.026134, 26.328300>,  <37.678619, 40.400906, 26.200466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735222, 40.026134, 26.328300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569380, 0.187058, 0.800510,
		-0.809803, -0.295247, -0.506999,
		0.141510, -0.936930, 0.319587,
		37.777676, 39.745056, 26.424177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992985, 40.208797, 26.496931>,  <37.678619, 40.400906, 26.200466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992985, 40.208797, 26.496931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271999, 39.956261, 26.632484>,  <37.439407, 39.804737, 26.713816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271999, 39.956261, 26.632484>,  <36.992985, 40.208797, 26.496931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271999, 39.956261, 26.632484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550363, -0.169208, 0.817600,
		-0.458847, -0.756816, -0.465499,
		0.697539, -0.631346, 0.338882,
		37.481262, 39.766857, 26.734150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599667, 39.649990, 26.613520>,  <36.992985, 40.208797, 26.496931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599667, 39.649990, 26.613520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914223, 39.600788, 26.855663>,  <37.102959, 39.571266, 27.000950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.914223, 39.600788, 26.855663>,  <36.599667, 39.649990, 26.613520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914223, 39.600788, 26.855663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614782, -0.060253, 0.786392,
		-0.060253, -0.990576, -0.123001,
		-0.786392, 0.123001, -0.605358,
		37.150139, 39.563889, 27.037271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424778, 39.182003, 26.973516>,  <36.599667, 39.649990, 26.613520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424778, 39.182003, 26.973516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712353, 39.328983, 27.209520>,  <36.884899, 39.417171, 27.351122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712353, 39.328983, 27.209520>,  <36.424778, 39.182003, 26.973516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712353, 39.328983, 27.209520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596185, -0.110402, 0.795220,
		0.357342, -0.923467, 0.139696,
		0.718937, 0.367450, 0.590009,
		36.928032, 39.439217, 27.386522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609913, 38.694736, 27.498434>,  <36.424778, 39.182003, 26.973516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609913, 38.694736, 27.498434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722603, 39.044426, 27.656607>,  <36.790215, 39.254238, 27.751511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722603, 39.044426, 27.656607>,  <36.609913, 38.694736, 27.498434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722603, 39.044426, 27.656607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606821, -0.156900, 0.779199,
		0.743237, -0.459472, 0.486296,
		0.281720, 0.874224, 0.395432,
		36.807117, 39.306694, 27.775236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666531, 38.542175, 28.255136>,  <36.609913, 38.694736, 27.498434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666531, 38.542175, 28.255136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679630, 38.941769, 28.242783>,  <36.687492, 39.181526, 28.235371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679630, 38.941769, 28.242783>,  <36.666531, 38.542175, 28.255136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679630, 38.941769, 28.242783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501962, 0.043164, 0.863812,
		0.864269, -0.012789, 0.502867,
		0.032753, 0.998986, -0.030886,
		36.689457, 39.241463, 28.233517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879494, 38.830341, 28.963680>,  <36.666531, 38.542175, 28.255136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879494, 38.830341, 28.963680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676350, 39.101952, 28.751640>,  <36.554462, 39.264915, 28.624416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676350, 39.101952, 28.751640>,  <36.879494, 38.830341, 28.963680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676350, 39.101952, 28.751640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602118, 0.160275, 0.782154,
		0.616063, 0.716407, 0.327456,
		-0.507858, 0.679024, -0.530101,
		36.523991, 39.305660, 28.592609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870716, 39.392914, 29.367756>,  <36.879494, 38.830341, 28.963680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870716, 39.392914, 29.367756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567730, 39.454311, 29.113924>,  <36.385941, 39.491150, 28.961624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567730, 39.454311, 29.113924>,  <36.870716, 39.392914, 29.367756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567730, 39.454311, 29.113924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638041, 0.032006, 0.769337,
		0.138397, 0.987632, 0.073691,
		-0.757463, 0.153492, -0.634579,
		36.340492, 39.500359, 28.923550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420284, 39.895081, 29.717838>,  <36.870716, 39.392914, 29.367756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420284, 39.895081, 29.717838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159084, 39.760811, 29.446278>,  <36.002365, 39.680248, 29.283340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159084, 39.760811, 29.446278>,  <36.420284, 39.895081, 29.717838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159084, 39.760811, 29.446278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732501, 0.052168, 0.678764,
		-0.192429, 0.940531, -0.279950,
		-0.653003, -0.335678, -0.678902,
		35.963184, 39.660107, 29.242607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790718, 40.300121, 29.804985>,  <36.420284, 39.895081, 29.717838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790718, 40.300121, 29.804985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695648, 39.946964, 29.642990>,  <35.638607, 39.735069, 29.545794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695648, 39.946964, 29.642990>,  <35.790718, 40.300121, 29.804985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695648, 39.946964, 29.642990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806041, -0.053395, 0.589447,
		-0.542041, 0.466535, -0.698955,
		-0.237676, -0.882890, -0.404988,
		35.624344, 39.682098, 29.521494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120598, 40.380814, 29.759495>,  <35.790718, 40.300121, 29.804985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120598, 40.380814, 29.759495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189484, 39.988434, 29.723549>,  <35.230816, 39.753006, 29.701981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189484, 39.988434, 29.723549>,  <35.120598, 40.380814, 29.759495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189484, 39.988434, 29.723549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827177, -0.193551, 0.527557,
		-0.534901, -0.016519, -0.844753,
		0.172218, -0.980951, -0.089866,
		35.241150, 39.694149, 29.696589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434921, 40.089634, 29.694777>,  <35.120598, 40.380814, 29.759495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434921, 40.089634, 29.694777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655254, 39.774570, 29.805180>,  <34.787453, 39.585533, 29.871422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655254, 39.774570, 29.805180>,  <34.434921, 40.089634, 29.694777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655254, 39.774570, 29.805180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706686, -0.264214, 0.656343,
		-0.444046, -0.556588, -0.702163,
		0.550834, -0.787655, 0.276010,
		34.820503, 39.538273, 29.887983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014320, 39.550488, 29.674458>,  <34.434921, 40.089634, 29.694777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014320, 39.550488, 29.674458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305618, 39.435577, 29.923338>,  <34.480396, 39.366631, 30.072666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305618, 39.435577, 29.923338>,  <34.014320, 39.550488, 29.674458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305618, 39.435577, 29.923338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683737, -0.366227, 0.631175,
		0.046544, -0.885070, -0.463125,
		0.728243, -0.287278, 0.622201,
		34.524090, 39.349396, 30.109999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745686, 38.877613, 29.812132>,  <34.014320, 39.550488, 29.674458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745686, 38.877613, 29.812132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007420, 38.987911, 30.093788>,  <34.164459, 39.054089, 30.262781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007420, 38.987911, 30.093788>,  <33.745686, 38.877613, 29.812132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007420, 38.987911, 30.093788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638625, -0.297165, 0.709825,
		0.404975, -0.914144, -0.018348,
		0.654334, 0.275744, 0.704139,
		34.203720, 39.070633, 30.305031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855492, 38.305923, 30.148935>,  <33.745686, 38.877613, 29.812132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855492, 38.305923, 30.148935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949276, 38.608521, 30.393148>,  <34.005547, 38.790077, 30.539677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949276, 38.608521, 30.393148>,  <33.855492, 38.305923, 30.148935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949276, 38.608521, 30.393148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565477, -0.404720, 0.718636,
		0.790736, -0.513734, 0.332888,
		0.234461, 0.756491, 0.610532,
		34.019615, 38.835468, 30.576307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879330, 37.955143, 30.762142>,  <33.855492, 38.305923, 30.148935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879330, 37.955143, 30.762142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879261, 38.334904, 30.887762>,  <33.879219, 38.562759, 30.963135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879261, 38.334904, 30.887762>,  <33.879330, 37.955143, 30.762142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879261, 38.334904, 30.887762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555346, -0.261262, 0.789514,
		0.831619, -0.174268, 0.527295,
		-0.000175, 0.949407, 0.314050,
		33.879208, 38.619724, 30.981977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192879, 37.970135, 31.388271>,  <33.879330, 37.955143, 30.762142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192879, 37.970135, 31.388271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929550, 38.267624, 31.341801>,  <33.771553, 38.446117, 31.313919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929550, 38.267624, 31.341801>,  <34.192879, 37.970135, 31.388271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929550, 38.267624, 31.341801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432288, -0.247183, 0.867195,
		0.616234, 0.621112, 0.484227,
		-0.658318, 0.743720, -0.116177,
		33.732056, 38.490742, 31.306948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201118, 38.296074, 32.075676>,  <34.192879, 37.970135, 31.388271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201118, 38.296074, 32.075676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873196, 38.436668, 31.894842>,  <33.676441, 38.521027, 31.786343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873196, 38.436668, 31.894842>,  <34.201118, 38.296074, 32.075676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873196, 38.436668, 31.894842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552541, -0.278181, 0.785693,
		0.150401, 0.893908, 0.422265,
		-0.819804, 0.351488, -0.452082,
		33.627254, 38.542114, 31.759218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877220, 38.710648, 32.538139>,  <34.201118, 38.296074, 32.075676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877220, 38.710648, 32.538139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606491, 38.577858, 32.275322>,  <33.444054, 38.498184, 32.117634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606491, 38.577858, 32.275322>,  <33.877220, 38.710648, 32.538139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606491, 38.577858, 32.275322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561635, -0.344133, 0.752422,
		-0.475892, 0.878275, 0.046470,
		-0.676825, -0.331973, -0.657040,
		33.403442, 38.478268, 32.078209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249088, 38.825600, 32.848835>,  <33.877220, 38.710648, 32.538139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249088, 38.825600, 32.848835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128574, 38.579388, 32.557533>,  <33.056267, 38.431660, 32.382751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128574, 38.579388, 32.557533>,  <33.249088, 38.825600, 32.848835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128574, 38.579388, 32.557533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720007, -0.353864, 0.596968,
		-0.625153, 0.704205, -0.336570,
		-0.301288, -0.615529, -0.728251,
		33.038189, 38.394730, 32.339058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521835, 39.020748, 32.681396>,  <33.249088, 38.825600, 32.848835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521835, 39.020748, 32.681396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587376, 38.637321, 32.588192>,  <32.626701, 38.407265, 32.532269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587376, 38.637321, 32.588192>,  <32.521835, 39.020748, 32.681396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587376, 38.637321, 32.588192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802352, -0.266914, 0.533842,
		-0.573920, 0.099487, -0.812846,
		0.163850, -0.958571, -0.233011,
		32.636532, 38.349751, 32.518288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829668, 38.705147, 32.581921>,  <32.521835, 39.020748, 32.681396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829668, 38.705147, 32.581921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075584, 38.391571, 32.616512>,  <32.223133, 38.203426, 32.637268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075584, 38.391571, 32.616512>,  <31.829668, 38.705147, 32.581921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075584, 38.391571, 32.616512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666591, -0.457874, 0.588224,
		-0.421528, -0.419287, -0.804060,
		0.614793, -0.783932, 0.086486,
		32.260021, 38.156391, 32.642456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465496, 38.136478, 32.438728>,  <31.829668, 38.705147, 32.581921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465496, 38.136478, 32.438728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761471, 38.014942, 32.678783>,  <31.939056, 37.942020, 32.822819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761471, 38.014942, 32.678783>,  <31.465496, 38.136478, 32.438728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761471, 38.014942, 32.678783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671899, -0.376684, 0.637700,
		0.032302, -0.875093, -0.482875,
		0.739938, -0.303844, 0.600142,
		31.983452, 37.923790, 32.858826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217991, 37.561745, 32.707470>,  <31.465496, 38.136478, 32.438728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217991, 37.561745, 32.707470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524328, 37.639854, 32.952534>,  <31.708130, 37.686722, 33.099571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524328, 37.639854, 32.952534>,  <31.217991, 37.561745, 32.707470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524328, 37.639854, 32.952534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504907, -0.407378, 0.760994,
		0.398191, -0.892138, -0.213389,
		0.765842, 0.195279, 0.612661,
		31.754080, 37.698437, 33.136333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413065, 36.929359, 33.036880>,  <31.217991, 37.561745, 32.707470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413065, 36.929359, 33.036880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527378, 37.231567, 33.272682>,  <31.595966, 37.412891, 33.414162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527378, 37.231567, 33.272682>,  <31.413065, 36.929359, 33.036880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527378, 37.231567, 33.272682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456753, -0.433398, 0.776881,
		0.842441, -0.491275, 0.221230,
		0.285781, 0.755523, 0.589503,
		31.613111, 37.458225, 33.449532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773729, 36.623230, 33.661552>,  <31.413065, 36.929359, 33.036880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773729, 36.623230, 33.661552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681448, 36.992104, 33.785713>,  <31.626080, 37.213428, 33.860210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681448, 36.992104, 33.785713>,  <31.773729, 36.623230, 33.661552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681448, 36.992104, 33.785713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360186, -0.377287, 0.853183,
		0.903903, 0.085031, 0.419200,
		-0.230705, 0.922185, 0.310404,
		31.612236, 37.268761, 33.878834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121346, 36.679817, 34.256664>,  <31.773729, 36.623230, 33.661552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121346, 36.679817, 34.256664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821451, 36.944122, 34.271004>,  <31.641514, 37.102707, 34.279606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821451, 36.944122, 34.271004>,  <32.121346, 36.679817, 34.256664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821451, 36.944122, 34.271004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221952, -0.302135, 0.927066,
		0.623400, 0.687102, 0.373180,
		-0.749740, 0.660761, 0.035848,
		31.596529, 37.142349, 34.281757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707813, 36.951477, 34.375675>,  <32.121346, 36.679817, 34.256664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707813, 36.951477, 34.375675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965073, 36.873360, 34.671841>,  <33.119431, 36.826488, 34.849541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965073, 36.873360, 34.671841>,  <32.707813, 36.951477, 34.375675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965073, 36.873360, 34.671841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744113, 0.387566, -0.544140,
		-0.180696, 0.900919, 0.394581,
		0.643152, -0.195289, 0.740417,
		33.158020, 36.814774, 34.893967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967926, 37.667534, 34.695110>,  <32.707813, 36.951477, 34.375675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967926, 37.667534, 34.695110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224579, 37.369064, 34.766136>,  <33.378571, 37.189983, 34.808750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224579, 37.369064, 34.766136>,  <32.967926, 37.667534, 34.695110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224579, 37.369064, 34.766136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722933, 0.510973, -0.465053,
		0.256281, 0.426760, 0.867292,
		0.641630, -0.746178, 0.177566,
		33.417068, 37.145210, 34.819405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604572, 37.974655, 34.956894>,  <32.967926, 37.667534, 34.695110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604572, 37.974655, 34.956894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697758, 37.608570, 34.825367>,  <33.753670, 37.388920, 34.746452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697758, 37.608570, 34.825367>,  <33.604572, 37.974655, 34.956894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697758, 37.608570, 34.825367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711106, 0.390957, -0.584364,
		0.663368, -0.097688, 0.741889,
		0.232961, -0.915210, -0.328815,
		33.767647, 37.334007, 34.726723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419209, 37.923588, 34.930233>,  <33.604572, 37.974655, 34.956894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419209, 37.923588, 34.930233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323456, 37.607395, 34.704727>,  <34.266006, 37.417679, 34.569424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323456, 37.607395, 34.704727>,  <34.419209, 37.923588, 34.930233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323456, 37.607395, 34.704727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811187, 0.156254, -0.563524,
		0.533548, -0.592215, 0.603827,
		-0.239377, -0.790484, -0.563767,
		34.251644, 37.370251, 34.535599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028069, 37.672729, 34.839207>,  <34.419209, 37.923588, 34.930233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028069, 37.672729, 34.839207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800972, 37.491825, 34.564068>,  <34.664715, 37.383282, 34.398987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800972, 37.491825, 34.564068>,  <35.028069, 37.672729, 34.839207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800972, 37.491825, 34.564068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747288, 0.067336, -0.661079,
		0.345299, -0.889339, 0.299742,
		-0.567740, -0.452264, -0.687843,
		34.630650, 37.356148, 34.357716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424065, 37.089050, 34.587215>,  <35.028069, 37.672729, 34.839207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424065, 37.089050, 34.587215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163136, 37.219990, 34.313774>,  <35.006577, 37.298553, 34.149708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163136, 37.219990, 34.313774>,  <35.424065, 37.089050, 34.587215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163136, 37.219990, 34.313774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715421, -0.031908, -0.697964,
		-0.250287, -0.944366, -0.213374,
		-0.652326, 0.327344, -0.683606,
		34.967438, 37.318192, 34.108692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490673, 36.729668, 33.965714>,  <35.424065, 37.089050, 34.587215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490673, 36.729668, 33.965714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278465, 37.032845, 33.813885>,  <35.151138, 37.214748, 33.722786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278465, 37.032845, 33.813885>,  <35.490673, 36.729668, 33.965714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278465, 37.032845, 33.813885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501258, -0.080595, -0.861536,
		-0.683584, -0.647327, -0.337166,
		-0.530522, 0.757939, -0.379571,
		35.119308, 37.260227, 33.700012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491123, 36.673676, 33.221291>,  <35.490673, 36.729668, 33.965714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491123, 36.673676, 33.221291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360256, 37.048904, 33.266872>,  <35.281734, 37.274040, 33.294224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360256, 37.048904, 33.266872>,  <35.491123, 36.673676, 33.221291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360256, 37.048904, 33.266872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416954, 0.251526, -0.873432,
		-0.848003, -0.238245, -0.473424,
		-0.327169, 0.938069, 0.113958,
		35.262104, 37.330326, 33.301060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080639, 36.864689, 32.571606>,  <35.491123, 36.673676, 33.221291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080639, 36.864689, 32.571606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264557, 37.161098, 32.767345>,  <35.374908, 37.338943, 32.884789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264557, 37.161098, 32.767345>,  <35.080639, 36.864689, 32.571606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264557, 37.161098, 32.767345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387632, 0.328303, -0.861370,
		-0.798955, 0.585743, -0.136294,
		0.459796, 0.741028, 0.489352,
		35.402496, 37.383408, 32.914150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027073, 37.382122, 32.069061>,  <35.080639, 36.864689, 32.571606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027073, 37.382122, 32.069061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305298, 37.514153, 32.324326>,  <35.472233, 37.593369, 32.477482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305298, 37.514153, 32.324326>,  <35.027073, 37.382122, 32.069061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305298, 37.514153, 32.324326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537455, 0.350414, -0.767042,
		-0.476798, 0.876506, 0.066336,
		0.695562, 0.330072, 0.638159,
		35.513966, 37.613174, 32.515774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127979, 38.085423, 31.872334>,  <35.027073, 37.382122, 32.069061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127979, 38.085423, 31.872334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454128, 37.975376, 32.076092>,  <35.649818, 37.909348, 32.198349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454128, 37.975376, 32.076092>,  <35.127979, 38.085423, 31.872334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454128, 37.975376, 32.076092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578937, 0.391534, -0.715216,
		-0.002680, 0.878073, 0.478519,
		0.815368, -0.275115, 0.509398,
		35.698738, 37.892841, 32.228912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576790, 38.652134, 31.870310>,  <35.127979, 38.085423, 31.872334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576790, 38.652134, 31.870310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832504, 38.360420, 31.967840>,  <35.985935, 38.185390, 32.026360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832504, 38.360420, 31.967840>,  <35.576790, 38.652134, 31.870310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832504, 38.360420, 31.967840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692706, 0.408506, -0.594374,
		0.333865, 0.548876, 0.766335,
		0.639290, -0.729286, 0.243824,
		36.024292, 38.141636, 32.040989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264408, 38.940910, 31.978142>,  <35.576790, 38.652134, 31.870310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264408, 38.940910, 31.978142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341263, 38.557312, 31.894812>,  <36.387375, 38.327152, 31.844812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341263, 38.557312, 31.894812>,  <36.264408, 38.940910, 31.978142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341263, 38.557312, 31.894812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652370, 0.283403, -0.702920,
		0.733141, -0.000847, 0.680076,
		0.192141, -0.959000, -0.208327,
		36.398907, 38.269611, 31.832314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947163, 38.930904, 31.958418>,  <36.264408, 38.940910, 31.978142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947163, 38.930904, 31.958418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831398, 38.599640, 31.766420>,  <36.761940, 38.400883, 31.651222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831398, 38.599640, 31.766420>,  <36.947163, 38.930904, 31.958418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831398, 38.599640, 31.766420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650806, 0.197475, -0.733113,
		0.701922, -0.524550, 0.481821,
		-0.289407, -0.828161, -0.479993,
		36.744576, 38.351192, 31.622423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646221, 38.634083, 31.791008>,  <36.947163, 38.930904, 31.958418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646221, 38.634083, 31.791008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372990, 38.467377, 31.551105>,  <37.209049, 38.367355, 31.407164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372990, 38.467377, 31.551105>,  <37.646221, 38.634083, 31.791008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372990, 38.467377, 31.551105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679540, -0.061757, -0.731034,
		0.267627, -0.906916, 0.325391,
		-0.683082, -0.416761, -0.599758,
		37.168064, 38.342350, 31.371178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985069, 37.987370, 31.500525>,  <37.646221, 38.634083, 31.791008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985069, 37.987370, 31.500525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691566, 38.085789, 31.247206>,  <37.515465, 38.144840, 31.095215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691566, 38.085789, 31.247206>,  <37.985069, 37.987370, 31.500525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691566, 38.085789, 31.247206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629500, -0.104482, -0.769944,
		-0.255609, -0.963611, -0.078221,
		-0.733754, 0.246045, -0.633299,
		37.471439, 38.159603, 31.057217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155895, 37.661598, 30.928032>,  <37.985069, 37.987370, 31.500525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155895, 37.661598, 30.928032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881500, 37.922928, 30.799915>,  <37.716862, 38.079727, 30.723045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881500, 37.922928, 30.799915>,  <38.155895, 37.661598, 30.928032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881500, 37.922928, 30.799915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360509, -0.077183, -0.929557,
		-0.632023, -0.753134, -0.182582,
		-0.685988, 0.653324, -0.320293,
		37.675705, 38.118923, 30.703827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810658, 37.337280, 30.443842>,  <38.155895, 37.661598, 30.928032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810658, 37.337280, 30.443842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763138, 37.726189, 30.363258>,  <37.734627, 37.959534, 30.314909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763138, 37.726189, 30.363258>,  <37.810658, 37.337280, 30.443842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763138, 37.726189, 30.363258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297710, -0.158680, -0.941376,
		-0.947236, -0.171808, -0.270603,
		-0.118797, 0.972267, -0.201457,
		37.727497, 38.017868, 30.302822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423325, 37.380852, 29.785923>,  <37.810658, 37.337280, 30.443842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423325, 37.380852, 29.785923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605625, 37.735680, 29.815323>,  <37.715004, 37.948574, 29.832962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.605625, 37.735680, 29.815323>,  <37.423325, 37.380852, 29.785923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605625, 37.735680, 29.815323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177683, -0.009756, -0.984039,
		-0.872192, 0.461537, -0.162063,
		0.455752, 0.887067, 0.073498,
		37.742352, 38.001801, 29.837372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280903, 37.826626, 29.099194>,  <37.423325, 37.380852, 29.785923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280903, 37.826626, 29.099194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608620, 37.965416, 29.281786>,  <37.805248, 38.048691, 29.391340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608620, 37.965416, 29.281786>,  <37.280903, 37.826626, 29.099194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608620, 37.965416, 29.281786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507167, -0.067141, -0.859228,
		-0.267482, 0.935468, -0.230982,
		0.819289, 0.346975, 0.456480,
		37.854408, 38.069508, 29.418730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625378, 38.238708, 28.565651>,  <37.280903, 37.826626, 29.099194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625378, 38.238708, 28.565651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928246, 38.219036, 28.826197>,  <38.109966, 38.207233, 28.982525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928246, 38.219036, 28.826197>,  <37.625378, 38.238708, 28.565651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928246, 38.219036, 28.826197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652831, 0.022550, -0.757168,
		0.022550, 0.998535, 0.049181,
		0.757168, -0.049181, 0.651366,
		38.155396, 38.204281, 29.021606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220287, 38.780025, 28.491110>,  <37.625378, 38.238708, 28.565651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220287, 38.780025, 28.491110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355289, 38.447594, 28.667921>,  <38.436291, 38.248135, 28.774008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355289, 38.447594, 28.667921>,  <38.220287, 38.780025, 28.491110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355289, 38.447594, 28.667921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674100, -0.114369, -0.729732,
		0.657022, 0.544262, 0.521633,
		0.337507, -0.831083, 0.442030,
		38.456543, 38.198269, 28.800529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935402, 38.844955, 28.411238>,  <38.220287, 38.780025, 28.491110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935402, 38.844955, 28.411238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900002, 38.461777, 28.520426>,  <38.878761, 38.231869, 28.585939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900002, 38.461777, 28.520426>,  <38.935402, 38.844955, 28.411238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900002, 38.461777, 28.520426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746757, -0.245170, -0.618260,
		0.659182, 0.149126, 0.737048,
		-0.088503, -0.957942, 0.272973,
		38.873451, 38.174393, 28.602318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645462, 38.532436, 28.389002>,  <38.935402, 38.844955, 28.411238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645462, 38.532436, 28.389002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402721, 38.214512, 28.390430>,  <39.257076, 38.023758, 28.391289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402721, 38.214512, 28.390430>,  <39.645462, 38.532436, 28.389002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402721, 38.214512, 28.390430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593134, -0.455852, -0.663619,
		0.529079, -0.400598, 0.748062,
		-0.606850, -0.794808, 0.003573,
		39.220665, 37.976070, 28.391502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111214, 37.971951, 28.250250>,  <39.645462, 38.532436, 28.389002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111214, 37.971951, 28.250250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760223, 37.805645, 28.154608>,  <39.549629, 37.705860, 28.097221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760223, 37.805645, 28.154608>,  <40.111214, 37.971951, 28.250250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760223, 37.805645, 28.154608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431190, -0.465542, -0.772882,
		0.210025, -0.781286, 0.587777,
		-0.877476, -0.415768, -0.239107,
		39.496979, 37.680916, 28.082876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264778, 37.261009, 27.981380>,  <40.111214, 37.971951, 28.250250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264778, 37.261009, 27.981380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919102, 37.393978, 27.830296>,  <39.711697, 37.473759, 27.739645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919102, 37.393978, 27.830296>,  <40.264778, 37.261009, 27.981380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919102, 37.393978, 27.830296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226869, -0.412610, -0.882204,
		-0.449112, -0.848085, 0.281158,
		-0.864192, 0.332422, -0.377712,
		39.659843, 37.493706, 27.716982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058338, 36.729984, 27.533535>,  <40.264778, 37.261009, 27.981380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058338, 36.729984, 27.533535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827457, 37.036503, 27.420654>,  <39.688931, 37.220413, 27.352926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827457, 37.036503, 27.420654>,  <40.058338, 36.729984, 27.533535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827457, 37.036503, 27.420654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090045, -0.283746, -0.954662,
		-0.811625, -0.576440, 0.094776,
		-0.577198, 0.766293, -0.282201,
		39.654297, 37.266392, 27.335995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484341, 36.472115, 27.257317>,  <40.058338, 36.729984, 27.533535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484341, 36.472115, 27.257317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538284, 36.841534, 27.113726>,  <39.570652, 37.063187, 27.027571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538284, 36.841534, 27.113726>,  <39.484341, 36.472115, 27.257317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538284, 36.841534, 27.113726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017404, -0.360025, -0.932780,
		-0.990712, 0.132043, -0.032480,
		0.134861, 0.923551, -0.358979,
		39.578743, 37.118599, 27.006033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126831, 36.524464, 26.607748>,  <39.484341, 36.472115, 27.257317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126831, 36.524464, 26.607748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371845, 36.839844, 26.585316>,  <39.518856, 37.029072, 26.571857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371845, 36.839844, 26.585316>,  <39.126831, 36.524464, 26.607748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371845, 36.839844, 26.585316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295042, -0.293881, -0.909167,
		-0.733312, 0.540354, -0.412639,
		0.612538, 0.788449, -0.056079,
		39.555607, 37.076378, 26.568493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022675, 36.706024, 25.882938>,  <39.126831, 36.524464, 26.607748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022675, 36.706024, 25.882938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336475, 36.940819, 25.962940>,  <39.524757, 37.081696, 26.010941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336475, 36.940819, 25.962940>,  <39.022675, 36.706024, 25.882938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336475, 36.940819, 25.962940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374727, -0.191747, -0.907090,
		-0.494099, 0.786563, -0.370386,
		0.784504, 0.586986, 0.200004,
		39.571827, 37.116913, 26.022942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153877, 37.025200, 25.262051>,  <39.022675, 36.706024, 25.882938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153877, 37.025200, 25.262051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491993, 37.053711, 25.473862>,  <39.694862, 37.070816, 25.600948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491993, 37.053711, 25.473862>,  <39.153877, 37.025200, 25.262051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491993, 37.053711, 25.473862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529447, -0.245049, -0.812181,
		0.071871, 0.966887, -0.244875,
		0.845293, 0.071276, 0.529527,
		39.745583, 37.075092, 25.632719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562515, 37.415810, 24.870033>,  <39.153877, 37.025200, 25.262051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562515, 37.415810, 24.870033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821739, 37.217289, 25.101101>,  <39.977272, 37.098175, 25.239742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821739, 37.217289, 25.101101>,  <39.562515, 37.415810, 24.870033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821739, 37.217289, 25.101101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598192, -0.137748, -0.789425,
		0.471368, 0.857151, 0.207616,
		0.648058, -0.496304, 0.577671,
		40.016155, 37.068398, 25.274403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308926, 37.735161, 24.808588>,  <39.562515, 37.415810, 24.870033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308926, 37.735161, 24.808588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362946, 37.360210, 24.937019>,  <40.395359, 37.135242, 25.014078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362946, 37.360210, 24.937019>,  <40.308926, 37.735161, 24.808588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362946, 37.360210, 24.937019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766574, -0.106467, -0.633269,
		0.627794, 0.331654, 0.704188,
		0.135053, -0.937374, 0.321076,
		40.403461, 37.078999, 25.033342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019405, 37.597939, 24.844263>,  <40.308926, 37.735161, 24.808588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019405, 37.597939, 24.844263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858356, 37.232372, 24.823648>,  <40.761726, 37.013035, 24.811279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858356, 37.232372, 24.823648>,  <41.019405, 37.597939, 24.844263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858356, 37.232372, 24.823648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653105, -0.247366, -0.715726,
		0.641364, -0.321825, 0.696477,
		-0.402623, -0.913914, -0.051534,
		40.737568, 36.958199, 24.808187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584671, 37.204132, 24.686661>,  <41.019405, 37.597939, 24.844263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584671, 37.204132, 24.686661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253510, 37.001961, 24.589407>,  <41.054813, 36.880657, 24.531055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.253510, 37.001961, 24.589407>,  <41.584671, 37.204132, 24.686661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253510, 37.001961, 24.589407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375299, -0.177077, -0.909832,
		0.416804, -0.844502, 0.336290,
		-0.827904, -0.505431, -0.243134,
		41.005138, 36.850330, 24.516466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775265, 36.548031, 24.455233>,  <41.584671, 37.204132, 24.686661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775265, 36.548031, 24.455233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404999, 36.580299, 24.307371>,  <41.182838, 36.599659, 24.218655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404999, 36.580299, 24.307371>,  <41.775265, 36.548031, 24.455233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404999, 36.580299, 24.307371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337413, -0.266038, -0.902982,
		-0.171184, -0.960581, 0.219043,
		-0.925661, 0.080668, -0.369654,
		41.127300, 36.604500, 24.196474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629608, 35.902294, 24.166798>,  <41.775265, 36.548031, 24.455233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629608, 35.902294, 24.166798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386742, 36.166183, 23.989658>,  <41.241024, 36.324516, 23.883375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386742, 36.166183, 23.989658>,  <41.629608, 35.902294, 24.166798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386742, 36.166183, 23.989658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337999, -0.289957, -0.895367,
		-0.719103, -0.693316, -0.046935,
		-0.607163, 0.659725, -0.442849,
		41.204594, 36.364101, 23.856804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247799, 35.576786, 23.643167>,  <41.629608, 35.902294, 24.166798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247799, 35.576786, 23.643167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212471, 35.960529, 23.535969>,  <41.191273, 36.190777, 23.471649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.212471, 35.960529, 23.535969>,  <41.247799, 35.576786, 23.643167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212471, 35.960529, 23.535969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312993, -0.228693, -0.921811,
		-0.945640, -0.165297, -0.280075,
		-0.088321, 0.959362, -0.267998,
		41.185974, 36.248337, 23.455570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959801, 35.253544, 23.514446>,  <41.247799, 35.576786, 23.643167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959801, 35.253544, 23.514446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183010, 34.977356, 23.698563>,  <42.316936, 34.811646, 23.809032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183010, 34.977356, 23.698563>,  <41.959801, 35.253544, 23.514446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183010, 34.977356, 23.698563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801922, -0.306057, 0.513080,
		-0.213386, -0.655430, -0.724484,
		0.558021, -0.690464, 0.460295,
		42.350418, 34.770218, 23.836651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555065, 34.621063, 23.581129>,  <41.959801, 35.253544, 23.514446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555065, 34.621063, 23.581129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856430, 34.550377, 23.834471>,  <42.037251, 34.507965, 23.986475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856430, 34.550377, 23.834471>,  <41.555065, 34.621063, 23.581129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856430, 34.550377, 23.834471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653733, -0.304893, 0.692585,
		0.070712, -0.935848, -0.345237,
		0.753414, -0.176719, 0.633354,
		42.082455, 34.497360, 24.024477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438240, 33.971947, 23.860102>,  <41.555065, 34.621063, 23.581129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438240, 33.971947, 23.860102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666351, 34.162212, 24.127993>,  <41.803219, 34.276371, 24.288727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666351, 34.162212, 24.127993>,  <41.438240, 33.971947, 23.860102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666351, 34.162212, 24.127993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593943, -0.324452, 0.736181,
		0.567468, -0.817604, 0.097490,
		0.570274, 0.475663, 0.669726,
		41.837433, 34.304913, 24.328911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513065, 33.478508, 24.411131>,  <41.438240, 33.971947, 23.860102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513065, 33.478508, 24.411131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603195, 33.830971, 24.577406>,  <41.657272, 34.042450, 24.677170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.603195, 33.830971, 24.577406>,  <41.513065, 33.478508, 24.411131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603195, 33.830971, 24.577406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674471, -0.166818, 0.719209,
		0.703079, -0.442421, 0.556726,
		0.225321, 0.881156, 0.415686,
		41.670792, 34.095318, 24.702112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616695, 33.354500, 25.039572>,  <41.513065, 33.478508, 24.411131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616695, 33.354500, 25.039572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532604, 33.745552, 25.042351>,  <41.482151, 33.980183, 25.044018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532604, 33.745552, 25.042351>,  <41.616695, 33.354500, 25.039572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532604, 33.745552, 25.042351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593563, -0.133278, 0.793675,
		0.776846, 0.162726, 0.608302,
		-0.210225, 0.977628, 0.006949,
		41.469536, 34.038841, 25.044436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397232, 33.544544, 25.676207>,  <41.616695, 33.354500, 25.039572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397232, 33.544544, 25.676207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302219, 33.883701, 25.486618>,  <41.245213, 34.087196, 25.372866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.302219, 33.883701, 25.486618>,  <41.397232, 33.544544, 25.676207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.302219, 33.883701, 25.486618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549388, 0.285133, 0.785412,
		0.801092, 0.446958, 0.398095,
		-0.237536, 0.847896, -0.473971,
		41.230957, 34.138069, 25.344427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528305, 34.272022, 26.129417>,  <41.397232, 33.544544, 25.676207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528305, 34.272022, 26.129417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235554, 34.332359, 25.863605>,  <41.059902, 34.368561, 25.704119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235554, 34.332359, 25.863605>,  <41.528305, 34.272022, 26.129417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235554, 34.332359, 25.863605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588245, 0.352408, 0.727857,
		0.343974, 0.923611, -0.169190,
		-0.731880, 0.150839, -0.664529,
		41.015991, 34.377609, 25.664248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.095871, 34.976044, 26.391558>,  <41.528305, 34.272022, 26.129417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.095871, 34.976044, 26.391558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869396, 34.761089, 26.141548>,  <40.733513, 34.632118, 25.991543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869396, 34.761089, 26.141548>,  <41.095871, 34.976044, 26.391558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869396, 34.761089, 26.141548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791426, 0.142471, 0.594430,
		-0.230389, 0.831218, -0.505963,
		-0.566185, -0.537382, -0.625024,
		40.699539, 34.599876, 25.954041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554409, 35.373192, 26.191893>,  <41.095871, 34.976044, 26.391558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554409, 35.373192, 26.191893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418724, 35.005371, 26.112547>,  <40.337311, 34.784676, 26.064939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418724, 35.005371, 26.112547>,  <40.554409, 35.373192, 26.191893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418724, 35.005371, 26.112547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803144, 0.173308, 0.570021,
		-0.489788, 0.352676, -0.797325,
		-0.339215, -0.919556, -0.198365,
		40.316959, 34.729504, 26.053038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831680, 35.413696, 26.222109>,  <40.554409, 35.373192, 26.191893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831680, 35.413696, 26.222109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883011, 35.017002, 26.221992>,  <39.913811, 34.778988, 26.221922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883011, 35.017002, 26.221992>,  <39.831680, 35.413696, 26.222109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883011, 35.017002, 26.221992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847661, -0.109841, 0.519044,
		-0.514784, -0.066361, -0.854748,
		0.128330, -0.991731, -0.000293,
		39.921509, 34.719482, 26.221905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130142, 35.138268, 26.148479>,  <39.831680, 35.413696, 26.222109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130142, 35.138268, 26.148479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333775, 34.826996, 26.295599>,  <39.455956, 34.640232, 26.383871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333775, 34.826996, 26.295599>,  <39.130142, 35.138268, 26.148479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333775, 34.826996, 26.295599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772772, -0.225062, 0.593439,
		-0.379023, -0.586334, -0.715928,
		0.509083, -0.778177, 0.367799,
		39.486500, 34.593544, 26.405939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676289, 34.551254, 26.087971>,  <39.130142, 35.138268, 26.148479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676289, 34.551254, 26.087971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938751, 34.488190, 26.383158>,  <39.096230, 34.450352, 26.560270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938751, 34.488190, 26.383158>,  <38.676289, 34.551254, 26.087971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938751, 34.488190, 26.383158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754322, -0.109466, 0.647314,
		-0.021274, -0.981407, -0.190755,
		0.656160, -0.157662, 0.737968,
		39.135597, 34.440891, 26.604548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412727, 33.998234, 26.545038>,  <38.676289, 34.551254, 26.087971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412727, 33.998234, 26.545038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646885, 34.215866, 26.785467>,  <38.787380, 34.346447, 26.929724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646885, 34.215866, 26.785467>,  <38.412727, 33.998234, 26.545038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646885, 34.215866, 26.785467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735520, 0.044525, 0.676039,
		0.341058, -0.837850, 0.426248,
		0.585398, 0.544082, 0.601070,
		38.822506, 34.379089, 26.965788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206287, 33.834194, 27.201977>,  <38.412727, 33.998234, 26.545038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206287, 33.834194, 27.201977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418121, 34.161648, 27.290861>,  <38.545219, 34.358120, 27.344193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418121, 34.161648, 27.290861>,  <38.206287, 33.834194, 27.201977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418121, 34.161648, 27.290861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536909, 0.120686, 0.834963,
		0.656714, -0.561487, 0.503447,
		0.529580, 0.818637, 0.222212,
		38.576996, 34.407238, 27.357525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219807, 33.806232, 27.860540>,  <38.206287, 33.834194, 27.201977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219807, 33.806232, 27.860540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304081, 34.193535, 27.806730>,  <38.354645, 34.425915, 27.774445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.304081, 34.193535, 27.806730>,  <38.219807, 33.806232, 27.860540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304081, 34.193535, 27.806730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299242, 0.194888, 0.934063,
		0.930627, -0.156537, 0.330802,
		0.210684, 0.968254, -0.134525,
		38.367287, 34.484013, 27.766373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608055, 33.998074, 28.487598>,  <38.219807, 33.806232, 27.860540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608055, 33.998074, 28.487598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465691, 34.342289, 28.341831>,  <38.380272, 34.548817, 28.254370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465691, 34.342289, 28.341831>,  <38.608055, 33.998074, 28.487598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465691, 34.342289, 28.341831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213516, 0.304760, 0.928188,
		0.909799, 0.408166, 0.075270,
		-0.355916, 0.860536, -0.364420,
		38.358917, 34.600449, 28.232506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904190, 34.485821, 28.892986>,  <38.608055, 33.998074, 28.487598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904190, 34.485821, 28.892986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594368, 34.684700, 28.736599>,  <38.408474, 34.804028, 28.642767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594368, 34.684700, 28.736599>,  <38.904190, 34.485821, 28.892986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594368, 34.684700, 28.736599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261251, 0.311454, 0.913644,
		0.576028, 0.809811, -0.111347,
		-0.774558, 0.497195, -0.390970,
		38.362000, 34.833858, 28.619308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888893, 35.215961, 29.213511>,  <38.904190, 34.485821, 28.892986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888893, 35.215961, 29.213511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518566, 35.144894, 29.080069>,  <38.296368, 35.102253, 29.000004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518566, 35.144894, 29.080069>,  <38.888893, 35.215961, 29.213511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518566, 35.144894, 29.080069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377293, 0.381756, 0.843749,
		-0.022553, 0.907026, -0.420471,
		-0.925819, -0.177670, -0.333605,
		38.240822, 35.091591, 28.979986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555817, 35.840092, 29.362217>,  <38.888893, 35.215961, 29.213511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555817, 35.840092, 29.362217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269505, 35.563309, 29.324583>,  <38.097717, 35.397240, 29.302002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269505, 35.563309, 29.324583>,  <38.555817, 35.840092, 29.362217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269505, 35.563309, 29.324583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471982, 0.380075, 0.795472,
		-0.514673, 0.613791, -0.598642,
		-0.715783, -0.691956, -0.094085,
		38.054771, 35.355721, 29.296358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974609, 36.142357, 29.567251>,  <38.555817, 35.840092, 29.362217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974609, 36.142357, 29.567251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823372, 35.772945, 29.592968>,  <37.732628, 35.551296, 29.608398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823372, 35.772945, 29.592968>,  <37.974609, 36.142357, 29.567251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823372, 35.772945, 29.592968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293632, 0.185495, 0.937748,
		-0.877966, 0.335679, -0.341313,
		-0.378094, -0.923532, 0.064293,
		37.709942, 35.495888, 29.612255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215107, 36.206680, 29.814926>,  <37.974609, 36.142357, 29.567251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215107, 36.206680, 29.814926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389309, 35.854454, 29.889696>,  <37.493832, 35.643120, 29.934557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389309, 35.854454, 29.889696>,  <37.215107, 36.206680, 29.814926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389309, 35.854454, 29.889696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463067, -0.041079, 0.885371,
		-0.771947, -0.472143, -0.425650,
		0.435507, -0.880564, 0.186923,
		37.519962, 35.590286, 29.945772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762344, 35.858833, 30.259342>,  <37.215107, 36.206680, 29.814926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762344, 35.858833, 30.259342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084774, 35.631367, 30.324902>,  <37.278233, 35.494884, 30.364237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084774, 35.631367, 30.324902>,  <36.762344, 35.858833, 30.259342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084774, 35.631367, 30.324902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258068, -0.088525, 0.962062,
		-0.532589, -0.817787, -0.218113,
		0.806071, -0.568672, 0.163897,
		37.326595, 35.460766, 30.374071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581963, 35.199200, 30.663490>,  <36.762344, 35.858833, 30.259342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581963, 35.199200, 30.663490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966831, 35.288391, 30.726103>,  <37.197754, 35.341908, 30.763670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966831, 35.288391, 30.726103>,  <36.581963, 35.199200, 30.663490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966831, 35.288391, 30.726103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144153, -0.070847, 0.987016,
		0.231175, -0.972245, -0.036024,
		0.962173, 0.222981, 0.156530,
		37.255482, 35.355286, 30.773062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669277, 35.051598, 31.364996>,  <36.581963, 35.199200, 30.663490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669277, 35.051598, 31.364996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019470, 35.228409, 31.286873>,  <37.229584, 35.334496, 31.240000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019470, 35.228409, 31.286873>,  <36.669277, 35.051598, 31.364996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019470, 35.228409, 31.286873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148877, 0.137786, 0.979209,
		0.459751, -0.886354, 0.054820,
		0.875479, 0.442031, -0.195305,
		37.282112, 35.361019, 31.228281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278118, 34.704384, 31.678982>,  <36.669277, 35.051598, 31.364996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278118, 34.704384, 31.678982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411488, 35.079857, 31.643869>,  <37.491508, 35.305141, 31.622803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411488, 35.079857, 31.643869>,  <37.278118, 34.704384, 31.678982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411488, 35.079857, 31.643869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318307, -0.024444, 0.947672,
		0.887417, -0.343917, -0.306939,
		0.333423, 0.938682, -0.087779,
		37.511513, 35.361462, 31.617535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017200, 34.836246, 31.899689>,  <37.278118, 34.704384, 31.678982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017200, 34.836246, 31.899689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869213, 35.206829, 31.927383>,  <37.780422, 35.429180, 31.944000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869213, 35.206829, 31.927383>,  <38.017200, 34.836246, 31.899689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869213, 35.206829, 31.927383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244170, 0.025059, 0.969409,
		0.896384, 0.375556, -0.235485,
		-0.369969, 0.926461, 0.069237,
		37.758221, 35.484768, 31.948154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596180, 35.265045, 32.092644>,  <38.017200, 34.836246, 31.899689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596180, 35.265045, 32.092644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248268, 35.446419, 32.170506>,  <38.039520, 35.555244, 32.217220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248268, 35.446419, 32.170506>,  <38.596180, 35.265045, 32.092644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248268, 35.446419, 32.170506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291863, 0.154663, 0.943873,
		0.397878, 0.877769, -0.266862,
		-0.869775, 0.453433, 0.194652,
		37.987335, 35.582447, 32.228901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847664, 35.754055, 32.561951>,  <38.596180, 35.265045, 32.092644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847664, 35.754055, 32.561951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450294, 35.763000, 32.606873>,  <38.211872, 35.768368, 32.633827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450294, 35.763000, 32.606873>,  <38.847664, 35.754055, 32.561951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450294, 35.763000, 32.606873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113667, 0.073733, 0.990779,
		0.013881, 0.997027, -0.075791,
		-0.993422, 0.022368, 0.112306,
		38.152267, 35.769711, 32.640564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716858, 36.254284, 33.023552>,  <38.847664, 35.754055, 32.561951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716858, 36.254284, 33.023552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392529, 36.021854, 33.051594>,  <38.197929, 35.882397, 33.068420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392529, 36.021854, 33.051594>,  <38.716858, 36.254284, 33.023552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392529, 36.021854, 33.051594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123755, -0.053135, 0.990889,
		-0.572053, 0.812116, 0.114994,
		-0.810827, -0.581072, 0.070107,
		38.149281, 35.847534, 33.072624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275417, 36.565723, 33.528824>,  <38.716858, 36.254284, 33.023552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275417, 36.565723, 33.528824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169643, 36.180542, 33.507652>,  <38.106178, 35.949432, 33.494949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169643, 36.180542, 33.507652>,  <38.275417, 36.565723, 33.528824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169643, 36.180542, 33.507652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102246, -0.026579, 0.994404,
		-0.958969, 0.268364, -0.091430,
		-0.264432, -0.962951, -0.052928,
		38.090313, 35.891655, 33.491776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767731, 36.591427, 33.971886>,  <38.275417, 36.565723, 33.528824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767731, 36.591427, 33.971886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910862, 36.222279, 33.914936>,  <37.996738, 36.000790, 33.880768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910862, 36.222279, 33.914936>,  <37.767731, 36.591427, 33.971886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910862, 36.222279, 33.914936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035359, -0.138964, 0.989666,
		-0.933119, -0.359161, -0.017093,
		0.357825, -0.922872, -0.142370,
		38.018208, 35.945415, 33.872227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381977, 36.125679, 34.461132>,  <37.767731, 36.591427, 33.971886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381977, 36.125679, 34.461132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710445, 35.911182, 34.383041>,  <37.907528, 35.782482, 34.336185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710445, 35.911182, 34.383041>,  <37.381977, 36.125679, 34.461132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710445, 35.911182, 34.383041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004023, -0.336652, 0.941621,
		-0.570665, -0.774019, -0.274292,
		0.821173, -0.536246, -0.195229,
		37.956799, 35.750309, 34.324474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275230, 35.527313, 34.807533>,  <37.381977, 36.125679, 34.461132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275230, 35.527313, 34.807533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670513, 35.523731, 34.746387>,  <37.907684, 35.521584, 34.709698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670513, 35.523731, 34.746387>,  <37.275230, 35.527313, 34.807533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670513, 35.523731, 34.746387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140851, -0.338518, 0.930358,
		-0.060078, -0.940917, -0.333264,
		0.988206, -0.008954, -0.152867,
		37.966976, 35.521046, 34.700527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546753, 35.060471, 35.313591>,  <37.275230, 35.527313, 34.807533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546753, 35.060471, 35.313591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877003, 35.253101, 35.195995>,  <38.075153, 35.368679, 35.125439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877003, 35.253101, 35.195995>,  <37.546753, 35.060471, 35.313591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877003, 35.253101, 35.195995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429173, -0.197768, 0.881305,
		0.366278, -0.853796, -0.369963,
		0.825621, 0.481580, -0.293988,
		38.124691, 35.397575, 35.107800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138695, 34.540852, 35.410389>,  <37.546753, 35.060471, 35.313591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138695, 34.540852, 35.410389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280773, 34.914749, 35.414230>,  <38.366020, 35.139088, 35.416534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280773, 34.914749, 35.414230>,  <38.138695, 34.540852, 35.410389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280773, 34.914749, 35.414230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392499, -0.158455, 0.906000,
		0.848398, -0.318040, -0.423168,
		0.355197, 0.934742, 0.009602,
		38.387333, 35.195171, 35.417110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780582, 34.429951, 35.704899>,  <38.138695, 34.540852, 35.410389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780582, 34.429951, 35.704899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744625, 34.827740, 35.726616>,  <38.723049, 35.066414, 35.739647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744625, 34.827740, 35.726616>,  <38.780582, 34.429951, 35.704899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744625, 34.827740, 35.726616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486595, -0.003708, 0.873620,
		0.868991, 0.104950, -0.483571,
		-0.089893, 0.994471, 0.054290,
		38.717659, 35.126080, 35.742905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446884, 34.676262, 35.943176>,  <38.780582, 34.429951, 35.704899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446884, 34.676262, 35.943176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187828, 34.969147, 36.027477>,  <39.032394, 35.144878, 36.078060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187828, 34.969147, 36.027477>,  <39.446884, 34.676262, 35.943176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187828, 34.969147, 36.027477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492513, 0.191248, 0.849032,
		0.581367, 0.653671, -0.484486,
		-0.647644, 0.732215, 0.210756,
		38.993534, 35.188812, 36.090706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845123, 35.331894, 36.251125>,  <39.446884, 34.676262, 35.943176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845123, 35.331894, 36.251125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462715, 35.291470, 36.361259>,  <39.233269, 35.267216, 36.427338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462715, 35.291470, 36.361259>,  <39.845123, 35.331894, 36.251125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462715, 35.291470, 36.361259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271124, 0.053511, 0.961056,
		-0.111860, 0.993440, -0.023757,
		-0.956023, -0.101063, 0.275331,
		39.175907, 35.261150, 36.443859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944225, 35.756477, 36.788479>,  <39.845123, 35.331894, 36.251125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944225, 35.756477, 36.788479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587646, 35.580349, 36.831280>,  <39.373699, 35.474674, 36.856960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587646, 35.580349, 36.831280>,  <39.944225, 35.756477, 36.788479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587646, 35.580349, 36.831280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087014, 0.065413, 0.994057,
		-0.444700, 0.895457, -0.019998,
		-0.891443, -0.440317, 0.107006,
		39.320213, 35.448254, 36.863380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573284, 36.184292, 37.200695>,  <39.944225, 35.756477, 36.788479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573284, 36.184292, 37.200695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410564, 35.819946, 37.228554>,  <39.312935, 35.601341, 37.245270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.410564, 35.819946, 37.228554>,  <39.573284, 36.184292, 37.200695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410564, 35.819946, 37.228554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029757, 0.062984, 0.997571,
		-0.913034, 0.407880, 0.001483,
		-0.406796, -0.910860, 0.069644,
		39.288525, 35.546688, 37.249447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044270, 36.278046, 37.622398>,  <39.573284, 36.184292, 37.200695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044270, 36.278046, 37.622398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128468, 35.888142, 37.652142>,  <39.178986, 35.654198, 37.669987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128468, 35.888142, 37.652142>,  <39.044270, 36.278046, 37.622398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128468, 35.888142, 37.652142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002388, 0.075545, 0.997139,
		-0.977592, -0.210070, 0.013574,
		0.210494, -0.974763, 0.074354,
		39.191616, 35.595711, 37.674446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600815, 35.995567, 38.088211>,  <39.044270, 36.278046, 37.622398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600815, 35.995567, 38.088211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899620, 35.729641, 38.087860>,  <39.078903, 35.570087, 38.087650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899620, 35.729641, 38.087860>,  <38.600815, 35.995567, 38.088211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899620, 35.729641, 38.087860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017270, 0.018092, 0.999687,
		-0.664590, -0.746790, 0.024996,
		0.747009, -0.664814, -0.000873,
		39.123722, 35.530197, 38.087597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457558, 35.811306, 38.780312>,  <38.600815, 35.995567, 38.088211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457558, 35.811306, 38.780312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822826, 35.673622, 38.693016>,  <39.041988, 35.591011, 38.640640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822826, 35.673622, 38.693016>,  <38.457558, 35.811306, 38.780312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822826, 35.673622, 38.693016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265446, 0.095985, 0.959336,
		-0.309270, -0.933972, 0.179021,
		0.913176, -0.344215, -0.218234,
		39.096779, 35.570358, 38.627544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704163, 35.347878, 39.393471>,  <38.457558, 35.811306, 38.780312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704163, 35.347878, 39.393471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033878, 35.390488, 39.171051>,  <39.231709, 35.416054, 39.037598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033878, 35.390488, 39.171051>,  <38.704163, 35.347878, 39.393471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033878, 35.390488, 39.171051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554326, 0.047954, 0.830917,
		0.115178, -0.993153, -0.019521,
		0.824292, 0.106524, -0.556053,
		39.281166, 35.422443, 39.004234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019260, 34.762569, 39.619595>,  <38.704163, 35.347878, 39.393471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019260, 34.762569, 39.619595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234161, 35.068611, 39.477627>,  <39.363102, 35.252235, 39.392448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234161, 35.068611, 39.477627>,  <39.019260, 34.762569, 39.619595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234161, 35.068611, 39.477627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387115, 0.150169, 0.909720,
		0.749331, -0.626147, -0.215505,
		0.537257, 0.765107, -0.354917,
		39.395340, 35.298141, 39.371151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670601, 34.744732, 40.024906>,  <39.019260, 34.762569, 39.619595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670601, 34.744732, 40.024906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632801, 35.112190, 39.871464>,  <39.610123, 35.332664, 39.779396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.632801, 35.112190, 39.871464>,  <39.670601, 34.744732, 40.024906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632801, 35.112190, 39.871464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376752, 0.389675, 0.840364,
		0.921481, -0.065111, -0.382926,
		-0.094499, 0.918648, -0.383609,
		39.604450, 35.387783, 39.756382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300236, 35.032135, 40.117378>,  <39.670601, 34.744732, 40.024906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300236, 35.032135, 40.117378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037472, 35.332676, 40.092247>,  <39.879814, 35.513000, 40.077168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037472, 35.332676, 40.092247>,  <40.300236, 35.032135, 40.117378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037472, 35.332676, 40.092247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377549, 0.399930, 0.835172,
		0.652632, 0.524911, -0.546388,
		-0.656908, 0.751348, -0.062827,
		39.840401, 35.558079, 40.073399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632053, 35.528805, 40.440231>,  <40.300236, 35.032135, 40.117378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632053, 35.528805, 40.440231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258358, 35.671463, 40.440327>,  <40.034142, 35.757057, 40.440384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258358, 35.671463, 40.440327>,  <40.632053, 35.528805, 40.440231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258358, 35.671463, 40.440327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194919, 0.510034, 0.837778,
		0.298668, 0.782732, -0.546011,
		-0.934240, 0.356645, 0.000239,
		39.978085, 35.778458, 40.440399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648281, 36.264690, 40.492340>,  <40.632053, 35.528805, 40.440231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648281, 36.264690, 40.492340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322441, 36.115757, 40.670235>,  <40.126938, 36.026398, 40.776974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322441, 36.115757, 40.670235>,  <40.648281, 36.264690, 40.492340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322441, 36.115757, 40.670235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196544, 0.544208, 0.815603,
		-0.545707, 0.751802, -0.370132,
		-0.814601, -0.372333, 0.444740,
		40.078060, 36.004059, 40.803658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165661, 36.823898, 40.679321>,  <40.648281, 36.264690, 40.492340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165661, 36.823898, 40.679321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096027, 36.513859, 40.922276>,  <40.054245, 36.327835, 41.068047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096027, 36.513859, 40.922276>,  <40.165661, 36.823898, 40.679321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096027, 36.513859, 40.922276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065556, 0.606313, 0.792520,
		-0.982546, 0.177786, -0.054739,
		-0.174087, -0.775098, 0.607385,
		40.043800, 36.281330, 41.104492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604641, 37.181133, 41.098358>,  <40.165661, 36.823898, 40.679321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604641, 37.181133, 41.098358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888580, 36.942390, 41.247963>,  <40.058945, 36.799145, 41.337727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.888580, 36.942390, 41.247963>,  <39.604641, 37.181133, 41.098358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888580, 36.942390, 41.247963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319239, 0.745946, 0.584508,
		-0.627859, -0.295512, 0.720046,
		0.709845, -0.596856, 0.374010,
		40.101532, 36.763332, 41.360165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201359, 36.967564, 41.663410>,  <39.604641, 37.181133, 41.098358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201359, 36.967564, 41.663410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394268, 36.636215, 41.777409>,  <39.510014, 36.437408, 41.845810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394268, 36.636215, 41.777409>,  <39.201359, 36.967564, 41.663410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394268, 36.636215, 41.777409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398566, 0.497192, 0.770678,
		-0.780103, -0.258084, 0.569940,
		0.482269, -0.828367, 0.284998,
		39.538948, 36.387707, 41.862907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068512, 36.776096, 42.355286>,  <39.201359, 36.967564, 41.663410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068512, 36.776096, 42.355286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427597, 36.657967, 42.224510>,  <39.643047, 36.587090, 42.146046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427597, 36.657967, 42.224510>,  <39.068512, 36.776096, 42.355286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427597, 36.657967, 42.224510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429062, 0.417499, 0.801000,
		-0.100055, -0.859349, 0.501506,
		0.897717, -0.295321, -0.326941,
		39.696911, 36.569370, 42.126427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388302, 36.342152, 42.874729>,  <39.068512, 36.776096, 42.355286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388302, 36.342152, 42.874729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674553, 36.495167, 42.640965>,  <39.846306, 36.586975, 42.500706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674553, 36.495167, 42.640965>,  <39.388302, 36.342152, 42.874729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674553, 36.495167, 42.640965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500925, 0.302011, 0.811088,
		0.486770, -0.873186, 0.024506,
		0.715632, 0.382538, -0.584411,
		39.889244, 36.609928, 42.465641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051369, 35.999977, 43.034824>,  <39.388302, 36.342152, 42.874729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051369, 35.999977, 43.034824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075436, 36.382172, 42.919285>,  <40.089874, 36.611488, 42.849960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.075436, 36.382172, 42.919285>,  <40.051369, 35.999977, 43.034824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075436, 36.382172, 42.919285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512652, 0.218717, 0.830272,
		0.856486, -0.198032, -0.476671,
		0.060165, 0.955482, -0.288850,
		40.093487, 36.668816, 42.832630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766247, 36.272709, 43.129150>,  <40.051369, 35.999977, 43.034824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766247, 36.272709, 43.129150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516224, 36.584888, 43.123619>,  <40.366211, 36.772198, 43.120300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516224, 36.584888, 43.123619>,  <40.766247, 36.272709, 43.129150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516224, 36.584888, 43.123619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544433, 0.448594, 0.708771,
		0.559366, 0.435496, -0.705303,
		-0.625062, 0.780453, -0.013830,
		40.328705, 36.819023, 43.119469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269142, 36.769581, 43.247639>,  <40.766247, 36.272709, 43.129150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269142, 36.769581, 43.247639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929749, 36.975483, 43.296799>,  <40.726112, 37.099026, 43.326294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929749, 36.975483, 43.296799>,  <41.269142, 36.769581, 43.247639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929749, 36.975483, 43.296799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413424, 0.499719, 0.761158,
		0.330398, 0.696637, -0.636815,
		-0.848480, 0.514760, 0.122900,
		40.675205, 37.129910, 43.333668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552929, 37.331875, 43.502033>,  <41.269142, 36.769581, 43.247639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552929, 37.331875, 43.502033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162571, 37.337673, 43.589138>,  <40.928356, 37.341152, 43.641399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162571, 37.337673, 43.589138>,  <41.552929, 37.331875, 43.502033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162571, 37.337673, 43.589138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187943, 0.562998, 0.804805,
		-0.110935, 0.826331, -0.552150,
		-0.975895, 0.014492, 0.217760,
		40.869804, 37.342022, 43.654465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363842, 38.065247, 43.456284>,  <41.552929, 37.331875, 43.502033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363842, 38.065247, 43.456284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101868, 37.857956, 43.676285>,  <40.944683, 37.733582, 43.808285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101868, 37.857956, 43.676285>,  <41.363842, 38.065247, 43.456284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101868, 37.857956, 43.676285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349419, 0.437669, 0.828464,
		-0.670050, 0.734771, -0.105567,
		-0.654935, -0.518225, 0.550003,
		40.905388, 37.702488, 43.841286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953838, 38.436329, 44.016388>,  <41.363842, 38.065247, 43.456284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953838, 38.436329, 44.016388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029633, 38.061546, 44.133831>,  <41.075108, 37.836678, 44.204296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029633, 38.061546, 44.133831>,  <40.953838, 38.436329, 44.016388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029633, 38.061546, 44.133831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395690, 0.346539, 0.850494,
		-0.898624, -0.044976, 0.436408,
		0.189484, -0.936957, 0.293612,
		41.086479, 37.780460, 44.221916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973518, 38.464195, 44.803505>,  <40.953838, 38.436329, 44.016388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973518, 38.464195, 44.803505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180206, 38.134861, 44.709606>,  <41.304218, 37.937260, 44.653267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180206, 38.134861, 44.709606>,  <40.973518, 38.464195, 44.803505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180206, 38.134861, 44.709606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632169, 0.182008, 0.753150,
		-0.577373, -0.537572, 0.614538,
		0.516723, -0.823340, -0.234750,
		41.335224, 37.887859, 44.639183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107502, 38.271301, 45.424042>,  <40.973518, 38.464195, 44.803505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107502, 38.271301, 45.424042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350372, 38.087555, 45.164715>,  <41.496094, 37.977306, 45.009117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350372, 38.087555, 45.164715>,  <41.107502, 38.271301, 45.424042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350372, 38.087555, 45.164715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746641, 0.050764, 0.663288,
		-0.271780, -0.886796, 0.373804,
		0.607176, -0.459365, -0.648321,
		41.532524, 37.949745, 44.970219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471138, 37.654213, 45.749790>,  <41.107502, 38.271301, 45.424042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471138, 37.654213, 45.749790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226482, 37.346226, 45.677063>,  <41.079689, 37.161434, 45.633427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226482, 37.346226, 45.677063>,  <41.471138, 37.654213, 45.749790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226482, 37.346226, 45.677063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256435, 0.410355, -0.875129,
		0.748427, -0.488636, -0.448433,
		-0.611636, -0.769964, -0.181817,
		41.042992, 37.115238, 45.622517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643997, 37.335175, 45.149498>,  <41.471138, 37.654213, 45.749790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643997, 37.335175, 45.149498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248863, 37.282993, 45.183350>,  <41.011784, 37.251686, 45.203659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248863, 37.282993, 45.183350>,  <41.643997, 37.335175, 45.149498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248863, 37.282993, 45.183350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126111, 0.353743, -0.926802,
		0.090964, -0.926201, -0.365891,
		-0.987837, -0.130449, 0.084627,
		40.952511, 37.243858, 45.208736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347263, 36.959553, 44.548008>,  <41.643997, 37.335175, 45.149498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347263, 36.959553, 44.548008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065784, 37.194855, 44.707390>,  <40.896896, 37.336037, 44.803020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.065784, 37.194855, 44.707390>,  <41.347263, 36.959553, 44.548008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065784, 37.194855, 44.707390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322736, 0.234966, -0.916860,
		-0.632970, -0.773789, 0.024506,
		-0.703698, 0.588253, 0.398456,
		40.854675, 37.371330, 44.826927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646908, 36.734089, 44.531178>,  <41.347263, 36.959553, 44.548008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646908, 36.734089, 44.531178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650078, 37.133259, 44.505623>,  <40.651981, 37.372761, 44.490288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650078, 37.133259, 44.505623>,  <40.646908, 36.734089, 44.531178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650078, 37.133259, 44.505623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410497, -0.055011, -0.910201,
		-0.911828, 0.033444, 0.409209,
		0.007930, 0.997926, -0.063889,
		40.652458, 37.432636, 44.486458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967297, 37.038582, 44.577389>,  <40.646908, 36.734089, 44.531178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967297, 37.038582, 44.577389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239258, 37.230045, 44.355175>,  <40.402435, 37.344925, 44.221848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239258, 37.230045, 44.355175>,  <39.967297, 37.038582, 44.577389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239258, 37.230045, 44.355175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587801, -0.097193, -0.803146,
		-0.438425, 0.872606, 0.215274,
		0.679907, 0.478657, -0.555531,
		40.443230, 37.373642, 44.188515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635452, 37.360817, 44.014393>,  <39.967297, 37.038582, 44.577389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635452, 37.360817, 44.014393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014175, 37.392445, 43.889622>,  <40.241409, 37.411423, 43.814758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014175, 37.392445, 43.889622>,  <39.635452, 37.360817, 44.014393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014175, 37.392445, 43.889622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316783, 0.058632, -0.946684,
		-0.056567, 0.995143, 0.080562,
		0.946810, 0.079071, -0.311928,
		40.298218, 37.416164, 43.796043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515198, 37.735638, 43.503197>,  <39.635452, 37.360817, 44.014393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515198, 37.735638, 43.503197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871914, 37.565849, 43.440556>,  <40.085945, 37.463974, 43.402973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871914, 37.565849, 43.440556>,  <39.515198, 37.735638, 43.503197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871914, 37.565849, 43.440556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289937, -0.270451, -0.918037,
		0.347330, 0.864105, -0.364257,
		0.891795, -0.424474, -0.156600,
		40.139454, 37.438507, 43.393574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878616, 38.004982, 42.880657>,  <39.515198, 37.735638, 43.503197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878616, 38.004982, 42.880657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006569, 37.631798, 42.946709>,  <40.083340, 37.407887, 42.986340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006569, 37.631798, 42.946709>,  <39.878616, 38.004982, 42.880657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006569, 37.631798, 42.946709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103140, -0.207538, -0.972775,
		0.941826, 0.294145, -0.162613,
		0.319885, -0.932956, 0.165126,
		40.102535, 37.351910, 42.996246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271080, 37.882332, 42.346184>,  <39.878616, 38.004982, 42.880657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271080, 37.882332, 42.346184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215076, 37.500431, 42.451141>,  <40.181473, 37.271290, 42.514114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215076, 37.500431, 42.451141>,  <40.271080, 37.882332, 42.346184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215076, 37.500431, 42.451141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128776, -0.245191, -0.960884,
		0.981741, -0.168322, -0.088620,
		-0.140009, -0.954751, 0.262390,
		40.173073, 37.214005, 42.529858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670460, 37.404793, 41.848965>,  <40.271080, 37.882332, 42.346184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670460, 37.404793, 41.848965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406277, 37.171947, 42.038673>,  <40.247765, 37.032242, 42.152500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406277, 37.171947, 42.038673>,  <40.670460, 37.404793, 41.848965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406277, 37.171947, 42.038673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340681, -0.330563, -0.880150,
		0.669124, -0.742881, 0.020009,
		-0.660461, -0.582114, 0.474273,
		40.208138, 36.997314, 42.180954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053082, 36.686874, 41.952816>,  <40.670460, 37.404793, 41.848965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053082, 36.686874, 41.952816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707703, 36.617798, 42.142395>,  <40.500473, 36.576351, 42.256142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.707703, 36.617798, 42.142395>,  <41.053082, 36.686874, 41.952816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707703, 36.617798, 42.142395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331064, -0.514897, -0.790745,
		0.380589, -0.839678, 0.387417,
		-0.863451, -0.172689, 0.473951,
		40.448666, 36.565990, 42.284580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842072, 36.059055, 41.798458>,  <41.053082, 36.686874, 41.952816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842072, 36.059055, 41.798458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490715, 36.218075, 41.904572>,  <40.279900, 36.313488, 41.968239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490715, 36.218075, 41.904572>,  <40.842072, 36.059055, 41.798458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490715, 36.218075, 41.904572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456852, -0.535384, -0.710387,
		-0.140386, -0.745197, 0.651900,
		-0.878395, 0.397551, 0.265285,
		40.227196, 36.337341, 41.984158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230282, 35.643147, 41.906643>,  <40.842072, 36.059055, 41.798458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230282, 35.643147, 41.906643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055130, 35.956032, 41.729374>,  <39.950039, 36.143764, 41.623013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055130, 35.956032, 41.729374>,  <40.230282, 35.643147, 41.906643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055130, 35.956032, 41.729374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426676, -0.614706, -0.663388,
		-0.791333, -0.101391, 0.602919,
		-0.437879, 0.782212, -0.443176,
		39.923767, 36.190697, 41.596420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464451, 35.396286, 41.784111>,  <40.230282, 35.643147, 41.906643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464451, 35.396286, 41.784111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626617, 35.681877, 41.555767>,  <39.723915, 35.853230, 41.418762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626617, 35.681877, 41.555767>,  <39.464451, 35.396286, 41.784111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626617, 35.681877, 41.555767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251393, -0.513326, -0.820547,
		-0.878887, 0.476170, -0.028621,
		0.405412, 0.713974, -0.570861,
		39.748241, 35.896069, 41.384510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952801, 35.500294, 41.267303>,  <39.464451, 35.396286, 41.784111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952801, 35.500294, 41.267303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299667, 35.632954, 41.118694>,  <39.507786, 35.712551, 41.029530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299667, 35.632954, 41.118694>,  <38.952801, 35.500294, 41.267303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299667, 35.632954, 41.118694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177041, -0.491987, -0.852412,
		-0.465488, 0.804958, -0.367918,
		0.867166, 0.331651, -0.371525,
		39.559818, 35.732449, 41.007236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003052, 36.232449, 41.152615>,  <38.952801, 35.500294, 41.267303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003052, 36.232449, 41.152615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365925, 36.266354, 40.987774>,  <39.583649, 36.286697, 40.888870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365925, 36.266354, 40.987774>,  <39.003052, 36.232449, 41.152615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365925, 36.266354, 40.987774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348682, -0.396666, -0.849163,
		-0.235447, 0.914041, -0.330293,
		0.907186, 0.084766, -0.412104,
		39.638081, 36.291782, 40.864143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877335, 36.495945, 40.469551>,  <39.003052, 36.232449, 41.152615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877335, 36.495945, 40.469551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231564, 36.310699, 40.455177>,  <39.444099, 36.199551, 40.446552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231564, 36.310699, 40.455177>,  <38.877335, 36.495945, 40.469551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231564, 36.310699, 40.455177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177917, -0.266710, -0.947213,
		0.429083, 0.845217, -0.318586,
		0.885570, -0.463115, -0.035938,
		39.497234, 36.171764, 40.444397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046879, 36.597080, 39.856411>,  <38.877335, 36.495945, 40.469551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046879, 36.597080, 39.856411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303154, 36.298454, 39.928146>,  <39.456917, 36.119278, 39.971188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303154, 36.298454, 39.928146>,  <39.046879, 36.597080, 39.856411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303154, 36.298454, 39.928146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133306, -0.338181, -0.931592,
		0.756143, 0.572951, -0.316189,
		0.640685, -0.746566, 0.179335,
		39.495361, 36.074486, 39.981945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365696, 36.530293, 39.246445>,  <39.046879, 36.597080, 39.856411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365696, 36.530293, 39.246445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490044, 36.188789, 39.413517>,  <39.564651, 35.983887, 39.513760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.490044, 36.188789, 39.413517>,  <39.365696, 36.530293, 39.246445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490044, 36.188789, 39.413517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051405, -0.453917, -0.889560,
		0.949061, 0.255066, -0.184996,
		0.310870, -0.853756, 0.417684,
		39.583305, 35.932663, 39.538822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994926, 36.349121, 38.999428>,  <39.365696, 36.530293, 39.246445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994926, 36.349121, 38.999428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788219, 36.020260, 39.094936>,  <39.664196, 35.822941, 39.152241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788219, 36.020260, 39.094936>,  <39.994926, 36.349121, 38.999428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788219, 36.020260, 39.094936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025674, -0.263886, -0.964212,
		0.855740, -0.504406, 0.115261,
		-0.516770, -0.822155, 0.238767,
		39.633190, 35.773613, 39.166565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294418, 35.917225, 38.497021>,  <39.994926, 36.349121, 38.999428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294418, 35.917225, 38.497021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004662, 35.732769, 38.702000>,  <39.830807, 35.622093, 38.824989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004662, 35.732769, 38.702000>,  <40.294418, 35.917225, 38.497021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004662, 35.732769, 38.702000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338040, -0.410239, -0.847014,
		0.600820, -0.786799, 0.141289,
		-0.724392, -0.461142, 0.512449,
		39.787342, 35.594425, 38.855736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331432, 35.243931, 38.426109>,  <40.294418, 35.917225, 38.497021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331432, 35.243931, 38.426109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944729, 35.328465, 38.483692>,  <39.712708, 35.379185, 38.518242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.944729, 35.328465, 38.483692>,  <40.331432, 35.243931, 38.426109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944729, 35.328465, 38.483692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213629, -0.358111, -0.908911,
		-0.140528, -0.909448, 0.391352,
		-0.966755, 0.211332, 0.143960,
		39.654701, 35.391865, 38.526878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070011, 34.680786, 38.038761>,  <40.331432, 35.243931, 38.426109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070011, 34.680786, 38.038761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779499, 34.953587, 38.073135>,  <39.605190, 35.117268, 38.093761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779499, 34.953587, 38.073135>,  <40.070011, 34.680786, 38.038761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779499, 34.953587, 38.073135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414874, -0.335223, -0.845875,
		-0.548082, -0.649997, 0.526413,
		-0.726282, 0.682004, 0.085937,
		39.561615, 35.158188, 38.098915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532963, 34.340519, 37.676376>,  <40.070011, 34.680786, 38.038761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532963, 34.340519, 37.676376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399868, 34.717453, 37.690731>,  <39.320011, 34.943615, 37.699345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399868, 34.717453, 37.690731>,  <39.532963, 34.340519, 37.676376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399868, 34.717453, 37.690731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484391, -0.138144, -0.863876,
		-0.809104, -0.304826, 0.502425,
		-0.332739, 0.942336, 0.035883,
		39.300045, 35.000153, 37.701496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615791, 33.575462, 37.424828>,  <39.532963, 34.340519, 37.676376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615791, 33.575462, 37.424828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722809, 33.670067, 37.051201>,  <39.787018, 33.726830, 36.827026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722809, 33.670067, 37.051201>,  <39.615791, 33.575462, 37.424828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722809, 33.670067, 37.051201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887356, -0.438291, 0.143181,
		-0.375530, -0.867157, -0.327133,
		0.267540, 0.236514, -0.934068,
		39.803070, 33.741020, 36.770981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832081, 33.006775, 36.958054>,  <39.615791, 33.575462, 37.424828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832081, 33.006775, 36.958054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016319, 33.344318, 36.847961>,  <40.126862, 33.546844, 36.781906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.016319, 33.344318, 36.847961>,  <39.832081, 33.006775, 36.958054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016319, 33.344318, 36.847961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887106, -0.427165, 0.174852,
		0.029983, -0.324691, -0.945345,
		0.460591, 0.843863, -0.275228,
		40.154495, 33.597477, 36.765392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328701, 32.915302, 36.373943>,  <39.832081, 33.006775, 36.958054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328701, 32.915302, 36.373943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424183, 33.283989, 36.496223>,  <40.481472, 33.505203, 36.569592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424183, 33.283989, 36.496223>,  <40.328701, 32.915302, 36.373943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424183, 33.283989, 36.496223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958177, -0.274728, 0.080137,
		0.157848, 0.273785, -0.948750,
		0.238708, 0.921719, 0.305700,
		40.495796, 33.560505, 36.587933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980648, 33.055882, 36.080193>,  <40.328701, 32.915302, 36.373943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980648, 33.055882, 36.080193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934238, 33.305614, 36.389191>,  <40.906395, 33.455456, 36.574589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934238, 33.305614, 36.389191>,  <40.980648, 33.055882, 36.080193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934238, 33.305614, 36.389191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988500, -0.003371, 0.151185,
		0.096994, 0.781150, -0.616763,
		-0.116019, 0.624334, 0.772494,
		40.899433, 33.492916, 36.620937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309601, 33.672283, 35.986679>,  <40.980648, 33.055882, 36.080193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309601, 33.672283, 35.986679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282646, 33.563583, 36.370682>,  <41.266472, 33.498363, 36.601082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.282646, 33.563583, 36.370682>,  <41.309601, 33.672283, 35.986679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282646, 33.563583, 36.370682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984190, -0.176067, 0.019244,
		0.163796, 0.946126, 0.279315,
		-0.067386, -0.271747, 0.960007,
		41.262432, 33.482059, 36.658684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693497, 34.141193, 36.261646>,  <41.309601, 33.672283, 35.986679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693497, 34.141193, 36.261646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680256, 33.789997, 36.452660>,  <41.672310, 33.579281, 36.567268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.680256, 33.789997, 36.452660>,  <41.693497, 34.141193, 36.261646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680256, 33.789997, 36.452660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998258, -0.005696, 0.058729,
		-0.048843, 0.478647, 0.876648,
		-0.033104, -0.877989, 0.477534,
		41.670326, 33.526600, 36.595921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102844, 34.149849, 37.038536>,  <41.693497, 34.141193, 36.261646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102844, 34.149849, 37.038536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119560, 33.793804, 36.857006>,  <42.129589, 33.580177, 36.748089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.119560, 33.793804, 36.857006>,  <42.102844, 34.149849, 37.038536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119560, 33.793804, 36.857006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988509, -0.029209, 0.148310,
		-0.145268, -0.454806, 0.878663,
		0.041787, -0.890111, -0.453823,
		42.132095, 33.526772, 36.720860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613903, 33.929222, 37.381943>,  <42.102844, 34.149849, 37.038536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613903, 33.929222, 37.381943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554825, 33.678516, 37.075909>,  <42.519379, 33.528091, 36.892288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554825, 33.678516, 37.075909>,  <42.613903, 33.929222, 37.381943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554825, 33.678516, 37.075909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955513, -0.290109, 0.053208,
		-0.255306, -0.723187, 0.641732,
		-0.147693, -0.626767, -0.765082,
		42.510517, 33.490486, 36.846386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699211, 33.174828, 37.541039>,  <42.613903, 33.929222, 37.381943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699211, 33.174828, 37.541039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770088, 33.243874, 37.153469>,  <42.812614, 33.285301, 36.920929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770088, 33.243874, 37.153469>,  <42.699211, 33.174828, 37.541039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770088, 33.243874, 37.153469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874556, -0.479157, 0.074569,
		-0.451393, -0.860588, -0.235864,
		0.177189, 0.172616, -0.968921,
		42.823246, 33.295658, 36.862793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508614, 33.268108, 37.666595>,  <42.699211, 33.174828, 37.541039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508614, 33.268108, 37.666595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779995, 33.551685, 37.743641>,  <43.942825, 33.721832, 37.789867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779995, 33.551685, 37.743641>,  <43.508614, 33.268108, 37.666595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779995, 33.551685, 37.743641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316250, -0.045195, -0.947599,
		-0.663086, 0.703819, -0.254865,
		0.678456, 0.708941, 0.192615,
		43.983532, 33.764366, 37.801426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485905, 33.923912, 37.374943>,  <43.508614, 33.268108, 37.666595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485905, 33.923912, 37.374943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871994, 33.827755, 37.416039>,  <44.103649, 33.770061, 37.440697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871994, 33.827755, 37.416039>,  <43.485905, 33.923912, 37.374943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871994, 33.827755, 37.416039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039725, -0.253560, -0.966504,
		0.258395, 0.936972, -0.235192,
		0.965222, -0.240397, 0.102740,
		44.161560, 33.755634, 37.446861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952065, 34.325085, 36.973568>,  <43.485905, 33.923912, 37.374943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952065, 34.325085, 36.973568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056713, 33.940033, 37.001541>,  <44.119503, 33.709000, 37.018326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056713, 33.940033, 37.001541>,  <43.952065, 34.325085, 36.973568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056713, 33.940033, 37.001541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058581, -0.056482, -0.996683,
		0.963390, 0.264854, 0.041615,
		0.261625, -0.962633, 0.069930,
		44.135201, 33.651241, 37.022518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543438, 34.108185, 36.664261>,  <43.952065, 34.325085, 36.973568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.543438, 34.108185, 36.664261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311646, 33.782253, 36.657860>,  <44.172569, 33.586693, 36.654018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311646, 33.782253, 36.657860>,  <44.543438, 34.108185, 36.664261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311646, 33.782253, 36.657860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108739, -0.057843, -0.992386,
		0.807700, -0.576808, 0.122123,
		-0.579480, -0.814830, -0.016001,
		44.137802, 33.537804, 36.653061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027210, 34.174770, 36.135502>,  <44.543438, 34.108185, 36.664261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.027210, 34.174770, 36.135502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037327, 34.444534, 35.840332>,  <45.043396, 34.606392, 35.663231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.037327, 34.444534, 35.840332>,  <45.027210, 34.174770, 36.135502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.037327, 34.444534, 35.840332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930279, 0.254361, 0.264350,
		0.365979, -0.693165, -0.620952,
		0.025293, 0.674405, -0.737928,
		45.044914, 34.646854, 35.618954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726982, 34.237701, 35.946594>,  <45.027210, 34.174770, 36.135502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726982, 34.237701, 35.946594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585442, 34.544411, 35.732365>,  <45.500519, 34.728436, 35.603825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585442, 34.544411, 35.732365>,  <45.726982, 34.237701, 35.946594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585442, 34.544411, 35.732365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927390, 0.213313, -0.307320,
		-0.121401, -0.605433, -0.786583,
		-0.353850, 0.766778, -0.535576,
		45.479286, 34.774445, 35.571693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.091209, 34.237373, 35.310696>,  <45.726982, 34.237701, 35.946594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.091209, 34.237373, 35.310696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960533, 34.603458, 35.405071>,  <45.882130, 34.823109, 35.461697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.960533, 34.603458, 35.405071>,  <46.091209, 34.237373, 35.310696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960533, 34.603458, 35.405071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934828, 0.349657, -0.061936,
		-0.139184, 0.200333, -0.969791,
		-0.326686, 0.915209, 0.235943,
		45.862526, 34.878021, 35.475853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114239, 34.743004, 34.783234>,  <46.091209, 34.237373, 35.310696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.114239, 34.743004, 34.783234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206306, 34.899525, 35.139641>,  <46.261547, 34.993435, 35.353485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206306, 34.899525, 35.139641>,  <46.114239, 34.743004, 34.783234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.206306, 34.899525, 35.139641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967640, 0.005288, -0.252280,
		-0.103428, 0.920248, -0.377419,
		0.230165, 0.391299, 0.891016,
		46.275356, 35.016914, 35.406944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.323277, 35.468483, 34.708740>,  <46.114239, 34.743004, 34.783234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.323277, 35.468483, 34.708740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.466492, 35.238964, 35.003376>,  <46.552422, 35.101254, 35.180157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.466492, 35.238964, 35.003376>,  <46.323277, 35.468483, 34.708740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.466492, 35.238964, 35.003376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920911, 0.086857, -0.379972,
		0.154047, 0.814382, 0.559510,
		0.358040, -0.573793, 0.736593,
		46.573902, 35.066826, 35.224354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.933197, 35.738041, 35.111256>,  <46.323277, 35.468483, 34.708740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.933197, 35.738041, 35.111256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.938038, 35.338070, 35.110607>,  <46.940941, 35.098087, 35.110218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.938038, 35.338070, 35.110607>,  <46.933197, 35.738041, 35.111256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.938038, 35.338070, 35.110607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918914, 0.011760, -0.394281,
		0.394271, 0.003281, 0.918988,
		0.012101, -0.999925, -0.001622,
		46.941669, 35.038094, 35.110119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.445560, 35.329506, 35.600159>,  <46.933197, 35.738041, 35.111256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.445560, 35.329506, 35.600159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.340603, 35.206814, 35.234196>,  <47.277630, 35.133198, 35.014618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.340603, 35.206814, 35.234196>,  <47.445560, 35.329506, 35.600159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.340603, 35.206814, 35.234196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903644, 0.254480, -0.344481,
		0.338491, -0.917144, 0.210404,
		-0.262395, -0.306734, -0.914911,
		47.261883, 35.114792, 34.959721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.762791, 34.679680, 35.360741>,  <47.445560, 35.329506, 35.600159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.762791, 34.679680, 35.360741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.671089, 34.926979, 35.060017>,  <47.616070, 35.075359, 34.879581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.671089, 34.926979, 35.060017>,  <47.762791, 34.679680, 35.360741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.671089, 34.926979, 35.060017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964976, 0.043152, -0.258765,
		-0.127539, -0.784798, -0.606487,
		-0.229249, 0.618248, -0.751808,
		47.602314, 35.112453, 34.834473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.644821, 30.777266, 28.452471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295261, 30.898752, 28.300655>,  <37.085526, 30.971645, 28.209566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295261, 30.898752, 28.300655>,  <37.644821, 30.777266, 28.452471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295261, 30.898752, 28.300655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425259, -0.099454, 0.899591,
		0.235475, 0.947557, 0.216072,
		-0.873903, 0.303718, -0.379539,
		37.033089, 30.989868, 28.186794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387505, 31.418957, 28.883537>,  <37.644821, 30.777266, 28.452471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387505, 31.418957, 28.883537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.070393, 31.256599, 28.701658>,  <36.880127, 31.159185, 28.592531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.070393, 31.256599, 28.701658>,  <37.387505, 31.418957, 28.883537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070393, 31.256599, 28.701658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474539, -0.057136, 0.878378,
		-0.382505, 0.912134, -0.147315,
		-0.792781, -0.405891, -0.454698,
		36.832558, 31.134832, 28.565248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791851, 31.933725, 29.096315>,  <37.387505, 31.418957, 28.883537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791851, 31.933725, 29.096315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.610641, 31.599388, 28.972294>,  <36.501915, 31.398785, 28.897881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.610641, 31.599388, 28.972294>,  <36.791851, 31.933725, 29.096315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610641, 31.599388, 28.972294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521921, -0.033295, 0.852344,
		-0.722751, 0.547955, -0.421161,
		-0.453023, -0.835845, -0.310053,
		36.474735, 31.348635, 28.879278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027027, 32.093754, 29.129585>,  <36.791851, 31.933725, 29.096315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027027, 32.093754, 29.129585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107655, 31.702085, 29.139336>,  <36.156029, 31.467085, 29.145185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.107655, 31.702085, 29.139336>,  <36.027027, 32.093754, 29.129585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107655, 31.702085, 29.139336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544200, -0.091265, 0.833977,
		-0.814382, -0.181365, -0.551261,
		0.201565, -0.979172, 0.024375,
		36.168125, 31.408335, 29.146648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425011, 31.792738, 29.219856>,  <36.027027, 32.093754, 29.129585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425011, 31.792738, 29.219856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.663170, 31.494631, 29.339905>,  <35.806065, 31.315765, 29.411934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.663170, 31.494631, 29.339905>,  <35.425011, 31.792738, 29.219856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663170, 31.494631, 29.339905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598598, -0.162337, 0.784428,
		-0.535889, -0.646701, -0.542771,
		0.595402, -0.745268, 0.300119,
		35.841789, 31.271049, 29.429941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927528, 31.462833, 29.616343>,  <35.425011, 31.792738, 29.219856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927528, 31.462833, 29.616343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.270580, 31.286573, 29.722401>,  <35.476410, 31.180817, 29.786036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.270580, 31.286573, 29.722401>,  <34.927528, 31.462833, 29.616343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270580, 31.286573, 29.722401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320593, -0.054968, 0.945621,
		-0.402116, -0.895993, -0.188412,
		0.857626, -0.440653, 0.265146,
		35.527870, 31.154377, 29.801945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844639, 30.805948, 30.029676>,  <34.927528, 31.462833, 29.616343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844639, 30.805948, 30.029676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.185516, 30.992416, 30.124714>,  <35.390041, 31.104298, 30.181736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.185516, 30.992416, 30.124714>,  <34.844639, 30.805948, 30.029676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185516, 30.992416, 30.124714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287060, 0.036911, 0.957201,
		0.437451, -0.883923, 0.165274,
		0.852193, 0.466172, 0.237592,
		35.441174, 31.132269, 30.195992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887272, 30.577833, 30.794962>,  <34.844639, 30.805948, 30.029676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887272, 30.577833, 30.794962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.180920, 30.845903, 30.751261>,  <35.357109, 31.006744, 30.725040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.180920, 30.845903, 30.751261>,  <34.887272, 30.577833, 30.794962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180920, 30.845903, 30.751261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047672, 0.109629, 0.992829,
		0.677346, -0.734062, 0.048532,
		0.734119, 0.670175, -0.109251,
		35.401154, 31.046955, 30.718485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475452, 30.515862, 31.453180>,  <34.887272, 30.577833, 30.794962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475452, 30.515862, 31.453180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.515091, 30.870562, 31.272579>,  <35.538876, 31.083382, 31.164219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.515091, 30.870562, 31.272579>,  <35.475452, 30.515862, 31.453180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515091, 30.870562, 31.272579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137495, 0.437181, 0.888801,
		0.985533, -0.150158, -0.078600,
		0.099098, 0.886750, -0.451502,
		35.544819, 31.136587, 31.137129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171448, 30.775387, 31.581882>,  <35.475452, 30.515862, 31.453180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171448, 30.775387, 31.581882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.918518, 31.081821, 31.535784>,  <35.766762, 31.265682, 31.508125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.918518, 31.081821, 31.535784>,  <36.171448, 30.775387, 31.581882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918518, 31.081821, 31.535784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212409, 0.314503, 0.925187,
		0.745017, 0.560537, -0.361591,
		-0.632322, 0.766085, -0.115247,
		35.728821, 31.311647, 31.501209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474781, 31.277697, 31.889681>,  <36.171448, 30.775387, 31.581882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474781, 31.277697, 31.889681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.098557, 31.413288, 31.881350>,  <35.872822, 31.494642, 31.876350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.098557, 31.413288, 31.881350>,  <36.474781, 31.277697, 31.889681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098557, 31.413288, 31.881350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104670, 0.347680, 0.931753,
		0.323084, 0.874193, -0.362496,
		-0.940564, 0.338976, -0.020828,
		35.816387, 31.514980, 31.875101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476646, 31.906403, 32.072159>,  <36.474781, 31.277697, 31.889681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476646, 31.906403, 32.072159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.097313, 31.830341, 32.173756>,  <35.869713, 31.784704, 32.234715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.097313, 31.830341, 32.173756>,  <36.476646, 31.906403, 32.072159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097313, 31.830341, 32.173756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210964, 0.220022, 0.952410,
		-0.236985, 0.956783, -0.168539,
		-0.948331, -0.190151, 0.253988,
		35.812813, 31.773296, 32.249950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359856, 32.383579, 32.565445>,  <36.476646, 31.906403, 32.072159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359856, 32.383579, 32.565445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.060112, 32.136204, 32.660095>,  <35.880264, 31.987778, 32.716885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.060112, 32.136204, 32.660095>,  <36.359856, 32.383579, 32.565445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060112, 32.136204, 32.660095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162098, 0.175148, 0.971106,
		-0.642014, 0.766066, -0.031002,
		-0.749362, -0.618438, 0.236625,
		35.835304, 31.950672, 32.731083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055325, 32.705776, 33.068039>,  <36.359856, 32.383579, 32.565445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055325, 32.705776, 33.068039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898281, 32.344067, 33.135155>,  <35.804054, 32.127041, 33.175423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898281, 32.344067, 33.135155>,  <36.055325, 32.705776, 33.068039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898281, 32.344067, 33.135155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007913, 0.185750, 0.982565,
		-0.919672, 0.384436, -0.080083,
		-0.392609, -0.904271, 0.167787,
		35.780499, 32.072784, 33.185490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446518, 32.747765, 33.630638>,  <36.055325, 32.705776, 33.068039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446518, 32.747765, 33.630638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.528675, 32.356930, 33.652935>,  <35.577969, 32.122429, 33.666313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.528675, 32.356930, 33.652935>,  <35.446518, 32.747765, 33.630638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528675, 32.356930, 33.652935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125718, 0.082827, 0.988602,
		-0.970572, -0.196043, 0.139850,
		0.205392, -0.977091, 0.055743,
		35.590294, 32.063801, 33.669659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938381, 32.470791, 34.163185>,  <35.446518, 32.747765, 33.630638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938381, 32.470791, 34.163185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.241840, 32.213898, 34.119400>,  <35.423916, 32.059761, 34.093128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.241840, 32.213898, 34.119400>,  <34.938381, 32.470791, 34.163185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241840, 32.213898, 34.119400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082904, -0.071480, 0.993991,
		-0.646200, -0.763167, -0.000984,
		0.758651, -0.642236, -0.109460,
		35.469437, 32.021229, 34.086563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793072, 31.922277, 34.631981>,  <34.938381, 32.470791, 34.163185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793072, 31.922277, 34.631981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181839, 31.887281, 34.544601>,  <35.415100, 31.866283, 34.492172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181839, 31.887281, 34.544601>,  <34.793072, 31.922277, 34.631981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181839, 31.887281, 34.544601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214506, -0.052302, 0.975321,
		-0.096763, -0.994791, -0.032065,
		0.971918, -0.087497, -0.218449,
		35.473415, 31.861034, 34.479065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021084, 31.516991, 35.133316>,  <34.793072, 31.922277, 34.631981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021084, 31.516991, 35.133316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.373745, 31.655144, 35.004692>,  <35.585342, 31.738035, 34.927517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.373745, 31.655144, 35.004692>,  <35.021084, 31.516991, 35.133316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373745, 31.655144, 35.004692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383795, -0.128321, 0.914459,
		0.274577, -0.929647, -0.245691,
		0.881652, 0.345384, -0.321560,
		35.638241, 31.758759, 34.908222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537365, 31.043304, 35.428501>,  <35.021084, 31.516991, 35.133316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537365, 31.043304, 35.428501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.674736, 31.411554, 35.354198>,  <35.757160, 31.632505, 35.309616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.674736, 31.411554, 35.354198>,  <35.537365, 31.043304, 35.428501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674736, 31.411554, 35.354198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418222, 0.027182, 0.907938,
		0.840921, -0.389497, -0.375691,
		0.343427, 0.920627, -0.185755,
		35.777763, 31.687742, 35.298473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178963, 31.040903, 35.586834>,  <35.537365, 31.043304, 35.428501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178963, 31.040903, 35.586834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.098877, 31.432152, 35.609413>,  <36.050823, 31.666901, 35.622963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.098877, 31.432152, 35.609413>,  <36.178963, 31.040903, 35.586834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098877, 31.432152, 35.609413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401881, 0.029442, 0.915219,
		0.893535, 0.205929, -0.398984,
		-0.200217, 0.978124, 0.056452,
		36.038811, 31.725590, 35.626350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794273, 31.325565, 35.672970>,  <36.178963, 31.040903, 35.586834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794273, 31.325565, 35.672970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.534714, 31.594555, 35.815353>,  <36.378979, 31.755949, 35.900784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.534714, 31.594555, 35.815353>,  <36.794273, 31.325565, 35.672970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534714, 31.594555, 35.815353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583284, 0.139251, 0.800243,
		0.488574, 0.726904, -0.482603,
		-0.648902, 0.672473, 0.355957,
		36.340042, 31.796297, 35.922142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199924, 31.906351, 35.814629>,  <36.794273, 31.325565, 35.672970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199924, 31.906351, 35.814629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.870647, 31.910719, 36.041695>,  <36.673080, 31.913340, 36.177933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.870647, 31.910719, 36.041695>,  <37.199924, 31.906351, 35.814629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870647, 31.910719, 36.041695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546953, 0.283476, 0.787708,
		-0.152316, 0.958917, -0.239327,
		-0.823190, 0.010920, 0.567661,
		36.623692, 31.913996, 36.211994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731251, 32.444427, 35.895657>,  <37.199924, 31.906351, 35.814629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731251, 32.444427, 35.895657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.974396, 32.548992, 36.195564>,  <37.120285, 32.611732, 36.375511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.974396, 32.548992, 36.195564>,  <36.731251, 32.444427, 35.895657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974396, 32.548992, 36.195564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786430, -0.067795, -0.613948,
		-0.109665, 0.962842, -0.246796,
		0.607866, 0.261416, 0.749773,
		37.156757, 32.627419, 36.420498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131996, 33.069302, 35.736313>,  <36.731251, 32.444427, 35.895657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131996, 33.069302, 35.736313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320389, 32.861313, 36.021355>,  <37.433426, 32.736519, 36.192379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.320389, 32.861313, 36.021355>,  <37.131996, 33.069302, 35.736313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320389, 32.861313, 36.021355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811067, -0.062433, -0.581612,
		0.346912, 0.851899, 0.392327,
		0.470980, -0.519972, 0.712606,
		37.461681, 32.705322, 36.235138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865807, 33.347015, 35.857838>,  <37.131996, 33.069302, 35.736313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865807, 33.347015, 35.857838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.876133, 32.969910, 35.990822>,  <37.882328, 32.743645, 36.070614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.876133, 32.969910, 35.990822>,  <37.865807, 33.347015, 35.857838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.876133, 32.969910, 35.990822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803740, -0.178178, -0.567675,
		0.594420, 0.281870, 0.753136,
		0.025818, -0.942763, 0.332463,
		37.883877, 32.687080, 36.090561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567543, 33.210281, 35.978043>,  <37.865807, 33.347015, 35.857838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567543, 33.210281, 35.978043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396152, 32.850555, 35.943066>,  <38.293320, 32.634720, 35.922081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396152, 32.850555, 35.943066>,  <38.567543, 33.210281, 35.978043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396152, 32.850555, 35.943066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740210, -0.293869, -0.604757,
		0.518171, -0.323844, 0.791596,
		-0.428472, -0.899314, -0.087438,
		38.267612, 32.580761, 35.916836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163761, 32.665092, 36.071320>,  <38.567543, 33.210281, 35.978043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163761, 32.665092, 36.071320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.858639, 32.482185, 35.888439>,  <38.675564, 32.372440, 35.778709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.858639, 32.482185, 35.888439>,  <39.163761, 32.665092, 36.071320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858639, 32.482185, 35.888439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646608, -0.545092, -0.533641,
		-0.005196, -0.702693, 0.711474,
		-0.762805, -0.457272, -0.457200,
		38.629799, 32.345005, 35.751278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486324, 32.076630, 36.008453>,  <39.163761, 32.665092, 36.071320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486324, 32.076630, 36.008453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.192528, 32.072670, 35.737034>,  <39.016251, 32.070293, 35.574181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.192528, 32.072670, 35.737034>,  <39.486324, 32.076630, 36.008453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192528, 32.072670, 35.737034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617564, -0.424259, -0.662283,
		-0.281324, -0.905487, 0.317727,
		-0.734487, -0.009901, -0.678551,
		38.972183, 32.069698, 35.533470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667969, 31.506216, 35.647816>,  <39.486324, 32.076630, 36.008453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667969, 31.506216, 35.647816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.402878, 31.696363, 35.416363>,  <39.243824, 31.810452, 35.277493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.402878, 31.696363, 35.416363>,  <39.667969, 31.506216, 35.647816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402878, 31.696363, 35.416363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467821, -0.340545, -0.815581,
		-0.584754, -0.811204, 0.003301,
		-0.662727, 0.475370, -0.578634,
		39.204060, 31.838974, 35.242771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503765, 30.982069, 35.168579>,  <39.667969, 31.506216, 35.647816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503765, 30.982069, 35.168579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.390965, 31.328896, 35.004303>,  <39.323284, 31.536991, 34.905739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.390965, 31.328896, 35.004303>,  <39.503765, 30.982069, 35.168579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390965, 31.328896, 35.004303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321343, -0.317976, -0.891981,
		-0.903998, -0.383516, -0.188955,
		-0.282006, 0.867068, -0.410690,
		39.306362, 31.589016, 34.881096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255196, 30.780781, 34.482197>,  <39.503765, 30.982069, 35.168579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255196, 30.780781, 34.482197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.321331, 31.173647, 34.446396>,  <39.361012, 31.409367, 34.424915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.321331, 31.173647, 34.446396>,  <39.255196, 30.780781, 34.482197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321331, 31.173647, 34.446396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266344, -0.131845, -0.954818,
		-0.949591, 0.134032, -0.283394,
		0.165340, 0.982167, -0.089500,
		39.370934, 31.468298, 34.419544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943531, 31.043249, 33.813118>,  <39.255196, 30.780781, 34.482197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943531, 31.043249, 33.813118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.208130, 31.326904, 33.910717>,  <39.366890, 31.497097, 33.969276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.208130, 31.326904, 33.910717>,  <38.943531, 31.043249, 33.813118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208130, 31.326904, 33.910717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295622, 0.052443, -0.953864,
		-0.689219, 0.703115, -0.174947,
		0.661502, 0.709140, 0.244001,
		39.406582, 31.539646, 33.983917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808994, 31.609901, 33.441002>,  <38.943531, 31.043249, 33.813118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808994, 31.609901, 33.441002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.197632, 31.637148, 33.531662>,  <39.430813, 31.653496, 33.586060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.197632, 31.637148, 33.531662>,  <38.808994, 31.609901, 33.441002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197632, 31.637148, 33.531662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213192, 0.163948, -0.963156,
		-0.102765, 0.984114, 0.144769,
		0.971591, 0.068116, 0.226653,
		39.489109, 31.657583, 33.599659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967308, 32.034409, 32.924149>,  <38.808994, 31.609901, 33.441002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967308, 32.034409, 32.924149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.311794, 31.892551, 33.069771>,  <39.518486, 31.807438, 33.157143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.311794, 31.892551, 33.069771>,  <38.967308, 32.034409, 32.924149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311794, 31.892551, 33.069771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379300, -0.028297, -0.924841,
		0.338287, 0.934575, 0.110145,
		0.861216, -0.354640, 0.364057,
		39.570160, 31.786160, 33.178989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484024, 32.354244, 32.616302>,  <38.967308, 32.034409, 32.924149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484024, 32.354244, 32.616302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.635227, 32.002621, 32.732491>,  <39.725948, 31.791647, 32.802204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.635227, 32.002621, 32.732491>,  <39.484024, 32.354244, 32.616302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635227, 32.002621, 32.732491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449018, -0.100300, -0.887875,
		0.809625, 0.466051, 0.356797,
		0.378008, -0.879054, 0.290471,
		39.748631, 31.738905, 32.819633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122612, 32.328690, 32.310390>,  <39.484024, 32.354244, 32.616302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122612, 32.328690, 32.310390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.034992, 31.944857, 32.381058>,  <39.982422, 31.714556, 32.423458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.034992, 31.944857, 32.381058>,  <40.122612, 32.328690, 32.310390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034992, 31.944857, 32.381058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354877, -0.247017, -0.901690,
		0.908889, -0.134820, 0.394644,
		-0.219050, -0.959587, 0.176666,
		39.969276, 31.656981, 32.434059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705582, 31.891943, 31.984579>,  <40.122612, 32.328690, 32.310390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705582, 31.891943, 31.984579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.415462, 31.621832, 32.038151>,  <40.241390, 31.459766, 32.070293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.415462, 31.621832, 32.038151>,  <40.705582, 31.891943, 31.984579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415462, 31.621832, 32.038151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158668, -0.353278, -0.921965,
		0.669896, -0.647453, 0.363379,
		-0.725303, -0.675277, 0.133930,
		40.197872, 31.419249, 32.078331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917912, 31.197109, 31.701237>,  <40.705582, 31.891943, 31.984579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917912, 31.197109, 31.701237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.518333, 31.206644, 31.685535>,  <40.278587, 31.212366, 31.676115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.518333, 31.206644, 31.685535>,  <40.917912, 31.197109, 31.701237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518333, 31.206644, 31.685535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027794, -0.366609, -0.929960,
		-0.036559, -0.930069, 0.365560,
		-0.998945, 0.023838, -0.039253,
		40.218651, 31.213795, 31.673759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793720, 30.698202, 31.261074>,  <40.917912, 31.197109, 31.701237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793720, 30.698202, 31.261074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.437618, 30.879580, 31.278194>,  <40.223957, 30.988405, 31.288465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.437618, 30.879580, 31.278194>,  <40.793720, 30.698202, 31.261074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437618, 30.879580, 31.278194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219452, -0.344710, -0.912697,
		-0.399103, -0.821927, 0.406390,
		-0.890257, 0.453443, 0.042799,
		40.170540, 31.015612, 31.291035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160732, 30.187824, 31.017555>,  <40.793720, 30.698202, 31.261074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160732, 30.187824, 31.017555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.054096, 30.567699, 30.951809>,  <39.990112, 30.795626, 30.912361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.054096, 30.567699, 30.951809>,  <40.160732, 30.187824, 31.017555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054096, 30.567699, 30.951809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270896, -0.237498, -0.932850,
		-0.924956, -0.204165, 0.320583,
		-0.266593, 0.949690, -0.164367,
		39.974117, 30.852606, 30.902498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.552536, 29.984219, 30.719437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.638626, 30.362190, 30.620819>,  <39.690281, 30.588974, 30.561649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.638626, 30.362190, 30.620819>,  <39.552536, 29.984219, 30.719437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638626, 30.362190, 30.620819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419906, -0.138386, -0.896955,
		-0.881679, 0.296573, 0.366998,
		0.215225, 0.944931, -0.246544,
		39.703194, 30.645670, 30.546856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915920, 30.209484, 30.306406>,  <39.552536, 29.984219, 30.719437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915920, 30.209484, 30.306406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.234623, 30.430937, 30.209515>,  <39.425842, 30.563808, 30.151381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.234623, 30.430937, 30.209515>,  <38.915920, 30.209484, 30.306406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234623, 30.430937, 30.209515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241788, -0.075295, -0.967403,
		-0.553824, 0.829350, 0.073870,
		0.796754, 0.553633, -0.242227,
		39.473648, 30.597027, 30.136847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669411, 30.740826, 29.877972>,  <38.915920, 30.209484, 30.306406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669411, 30.740826, 29.877972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.057766, 30.771210, 29.787104>,  <39.290779, 30.789440, 29.732582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.057766, 30.771210, 29.787104>,  <38.669411, 30.740826, 29.877972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057766, 30.771210, 29.787104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233110, 0.081486, -0.969030,
		-0.055097, 0.993775, 0.096820,
		0.970888, 0.075960, -0.227169,
		39.349033, 30.793999, 29.718952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756611, 31.394943, 29.396425>,  <38.669411, 30.740826, 29.877972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756611, 31.394943, 29.396425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084251, 31.175419, 29.329634>,  <39.280834, 31.043703, 29.289558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084251, 31.175419, 29.329634>,  <38.756611, 31.394943, 29.396425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084251, 31.175419, 29.329634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197954, 0.002791, -0.980207,
		0.538417, 0.835940, -0.106354,
		0.819098, -0.548813, -0.166980,
		39.329979, 31.010775, 29.279539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118237, 31.789968, 29.081207>,  <38.756611, 31.394943, 29.396425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118237, 31.789968, 29.081207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.272240, 31.432220, 28.990103>,  <39.364639, 31.217571, 28.935440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.272240, 31.432220, 28.990103>,  <39.118237, 31.789968, 29.081207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272240, 31.432220, 28.990103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008119, 0.250057, -0.968197,
		0.922879, 0.370910, 0.103534,
		0.385004, -0.894370, -0.227761,
		39.387741, 31.163910, 28.921774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665825, 31.980738, 28.571659>,  <39.118237, 31.789968, 29.081207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665825, 31.980738, 28.571659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.615517, 31.586748, 28.524319>,  <39.585331, 31.350355, 28.495914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.615517, 31.586748, 28.524319>,  <39.665825, 31.980738, 28.571659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615517, 31.586748, 28.524319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123363, 0.102845, -0.987018,
		0.984359, -0.138738, 0.108574,
		-0.125770, -0.984974, -0.118352,
		39.577785, 31.291256, 28.488813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174770, 31.769897, 28.189257>,  <39.665825, 31.980738, 28.571659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174770, 31.769897, 28.189257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890385, 31.496887, 28.121508>,  <39.719753, 31.333082, 28.080858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.890385, 31.496887, 28.121508>,  <40.174770, 31.769897, 28.189257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890385, 31.496887, 28.121508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193970, 0.041173, -0.980143,
		0.675944, -0.729703, 0.103117,
		-0.710968, -0.682524, -0.169371,
		39.677094, 31.292130, 28.070696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466946, 31.070097, 27.827869>,  <40.174770, 31.769897, 28.189257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466946, 31.070097, 27.827869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.081573, 31.049952, 27.722595>,  <39.850349, 31.037865, 27.659430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.081573, 31.049952, 27.722595>,  <40.466946, 31.070097, 27.827869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081573, 31.049952, 27.722595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267942, -0.193043, -0.943897,
		-0.003269, -0.979897, 0.199478,
		-0.963429, -0.050363, -0.263187,
		39.792545, 31.034843, 27.643639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237499, 30.381729, 27.655128>,  <40.466946, 31.070097, 27.827869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237499, 30.381729, 27.655128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.980900, 30.631407, 27.476755>,  <39.826939, 30.781214, 27.369730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.980900, 30.631407, 27.476755>,  <40.237499, 30.381729, 27.655128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980900, 30.631407, 27.476755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227664, -0.400208, -0.887695,
		-0.732563, -0.670979, 0.114626,
		-0.641499, 0.624196, -0.445935,
		39.788448, 30.818666, 27.342976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894539, 30.097046, 27.029636>,  <40.237499, 30.381729, 27.655128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894539, 30.097046, 27.029636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.841160, 30.491421, 26.989403>,  <39.809132, 30.728046, 26.965263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.841160, 30.491421, 26.989403>,  <39.894539, 30.097046, 27.029636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841160, 30.491421, 26.989403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392511, -0.040614, -0.918850,
		-0.910016, -0.162094, -0.381572,
		-0.133444, 0.985939, -0.100583,
		39.801128, 30.787203, 26.959229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815170, 30.249584, 26.283499>,  <39.894539, 30.097046, 27.029636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815170, 30.249584, 26.283499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.941151, 30.596491, 26.437723>,  <40.016739, 30.804634, 26.530258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.941151, 30.596491, 26.437723>,  <39.815170, 30.249584, 26.283499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941151, 30.596491, 26.437723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386144, 0.254006, -0.886777,
		-0.867006, 0.428172, -0.254890,
		0.314950, 0.867266, 0.385560,
		40.035637, 30.856670, 26.553391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857731, 30.627714, 25.720613>,  <39.815170, 30.249584, 26.283499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857731, 30.627714, 25.720613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.069386, 30.882769, 25.944553>,  <40.196381, 31.035801, 26.078917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.069386, 30.882769, 25.944553>,  <39.857731, 30.627714, 25.720613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069386, 30.882769, 25.944553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461484, 0.337422, -0.820475,
		-0.712070, 0.692507, -0.115716,
		0.529140, 0.637636, 0.559849,
		40.228127, 31.074060, 26.112509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885620, 31.286255, 25.307442>,  <39.857731, 30.627714, 25.720613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885620, 31.286255, 25.307442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.199497, 31.299437, 25.555046>,  <40.387821, 31.307344, 25.703609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.199497, 31.299437, 25.555046>,  <39.885620, 31.286255, 25.307442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199497, 31.299437, 25.555046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575647, 0.331748, -0.747378,
		-0.229984, 0.942792, 0.241350,
		0.784690, 0.032953, 0.619012,
		40.434906, 31.309322, 25.740749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274002, 31.883577, 25.133099>,  <39.885620, 31.286255, 25.307442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274002, 31.883577, 25.133099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535641, 31.685202, 25.361555>,  <40.692623, 31.566177, 25.498629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535641, 31.685202, 25.361555>,  <40.274002, 31.883577, 25.133099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535641, 31.685202, 25.361555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735790, 0.242073, -0.632466,
		0.175407, 0.833934, 0.523246,
		0.654099, -0.495938, 0.571140,
		40.731869, 31.536421, 25.532896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783134, 32.388355, 25.230453>,  <40.274002, 31.883577, 25.133099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783134, 32.388355, 25.230453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.938637, 32.025528, 25.295073>,  <41.031940, 31.807833, 25.333845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.938637, 32.025528, 25.295073>,  <40.783134, 32.388355, 25.230453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938637, 32.025528, 25.295073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735413, 0.199877, -0.647470,
		0.555007, 0.370516, 0.744772,
		0.388760, -0.907065, 0.161549,
		41.055264, 31.753408, 25.343536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556126, 32.515255, 25.442616>,  <40.783134, 32.388355, 25.230453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556126, 32.515255, 25.442616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.503777, 32.149418, 25.289576>,  <41.472366, 31.929914, 25.197752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.503777, 32.149418, 25.289576>,  <41.556126, 32.515255, 25.442616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503777, 32.149418, 25.289576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684534, 0.195795, -0.702195,
		0.717137, -0.353802, 0.600449,
		-0.130873, -0.914598, -0.382601,
		41.464516, 31.875038, 25.174795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178104, 32.345081, 25.279730>,  <41.556126, 32.515255, 25.442616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178104, 32.345081, 25.279730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.985043, 32.067127, 25.066494>,  <41.869205, 31.900356, 24.938553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.985043, 32.067127, 25.066494>,  <42.178104, 32.345081, 25.279730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985043, 32.067127, 25.066494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646422, 0.128036, -0.752161,
		0.590918, -0.707633, 0.387391,
		-0.482654, -0.694883, -0.533088,
		41.840248, 31.858662, 24.906567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.623314, 32.016254, 24.865242>,  <42.178104, 32.345081, 25.279730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.623314, 32.016254, 24.865242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.292358, 31.912968, 24.665741>,  <42.093784, 31.850996, 24.546041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.292358, 31.912968, 24.665741>,  <42.623314, 32.016254, 24.865242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292358, 31.912968, 24.665741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520969, -0.021119, -0.853314,
		0.209806, -0.965857, 0.151996,
		-0.827389, -0.258215, -0.498751,
		42.044140, 31.835503, 24.516115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888020, 31.627365, 24.312485>,  <42.623314, 32.016254, 24.865242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888020, 31.627365, 24.312485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.524498, 31.770765, 24.227110>,  <42.306385, 31.856806, 24.175884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.524498, 31.770765, 24.227110>,  <42.888020, 31.627365, 24.312485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524498, 31.770765, 24.227110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282427, 0.152045, -0.947163,
		-0.307107, -0.921064, -0.239429,
		-0.908802, 0.358501, -0.213439,
		42.251858, 31.878315, 24.163078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753410, 31.430983, 23.534777>,  <42.888020, 31.627365, 24.312485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753410, 31.430983, 23.534777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.493740, 31.729160, 23.595278>,  <42.337936, 31.908068, 23.631578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.493740, 31.729160, 23.595278>,  <42.753410, 31.430983, 23.534777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493740, 31.729160, 23.595278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225806, 0.378755, -0.897528,
		-0.726345, -0.548504, -0.414206,
		-0.649180, 0.745445, 0.151252,
		42.298985, 31.952793, 23.640654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577610, 31.623724, 22.849949>,  <42.753410, 31.430983, 23.534777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577610, 31.623724, 22.849949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.479912, 31.939243, 23.075565>,  <42.421295, 32.128555, 23.210936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.479912, 31.939243, 23.075565>,  <42.577610, 31.623724, 22.849949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479912, 31.939243, 23.075565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300523, 0.614591, -0.729359,
		-0.921972, -0.008632, -0.387161,
		-0.244242, 0.788799, 0.564041,
		42.406639, 32.175884, 23.244778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155689, 32.045658, 22.385620>,  <42.577610, 31.623724, 22.849949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155689, 32.045658, 22.385620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.284927, 32.292419, 22.672684>,  <42.362469, 32.440475, 22.844923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.284927, 32.292419, 22.672684>,  <42.155689, 32.045658, 22.385620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284927, 32.292419, 22.672684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193026, 0.699433, -0.688139,
		-0.926473, 0.360858, 0.106901,
		0.323091, 0.616908, 0.717661,
		42.381855, 32.477493, 22.887981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536606, 32.743530, 22.073370>,  <42.155689, 32.045658, 22.385620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536606, 32.743530, 22.073370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.248135, 32.711483, 22.348610>,  <42.075050, 32.692253, 22.513754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.248135, 32.711483, 22.348610>,  <42.536606, 32.743530, 22.073370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248135, 32.711483, 22.348610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449651, -0.809752, 0.376982,
		0.526984, 0.581276, 0.620004,
		-0.721181, -0.080122, 0.688098,
		42.031780, 32.687447, 22.555038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.804672, 33.076691, 22.054234>,  <42.536606, 32.743530, 22.073370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.804672, 33.076691, 22.054234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.693874, 33.459469, 22.019514>,  <41.627396, 33.689137, 21.998682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.693874, 33.459469, 22.019514>,  <41.804672, 33.076691, 22.054234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693874, 33.459469, 22.019514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730340, -0.150977, 0.666190,
		0.624401, 0.247925, 0.740713,
		-0.276996, 0.956942, -0.086799,
		41.610775, 33.746552, 21.993475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631310, 33.277927, 22.675978>,  <41.804672, 33.076691, 22.054234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631310, 33.277927, 22.675978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.452957, 33.579208, 22.482534>,  <41.345947, 33.759975, 22.366468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.452957, 33.579208, 22.482534>,  <41.631310, 33.277927, 22.675978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452957, 33.579208, 22.482534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801782, -0.095897, 0.589873,
		0.397918, 0.650760, 0.646663,
		-0.445879, 0.753204, -0.483608,
		41.319195, 33.805168, 22.337452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361576, 33.698925, 23.173893>,  <41.631310, 33.277927, 22.675978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361576, 33.698925, 23.173893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.152405, 33.752426, 22.837166>,  <41.026901, 33.784527, 22.635130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.152405, 33.752426, 22.837166>,  <41.361576, 33.698925, 23.173893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152405, 33.752426, 22.837166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848180, 0.016232, 0.529460,
		0.084482, 0.990882, 0.104959,
		-0.522928, 0.133754, -0.841817,
		40.995525, 33.792553, 22.584621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872982, 34.381527, 23.122122>,  <41.361576, 33.698925, 23.173893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872982, 34.381527, 23.122122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.729889, 34.080643, 22.900778>,  <40.644032, 33.900112, 22.767971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.729889, 34.080643, 22.900778>,  <40.872982, 34.381527, 23.122122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729889, 34.080643, 22.900778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828992, -0.016980, 0.559003,
		-0.429883, 0.658706, -0.617501,
		-0.357734, -0.752208, -0.553361,
		40.622570, 33.854980, 22.734770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128265, 34.529446, 23.145731>,  <40.872982, 34.381527, 23.122122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128265, 34.529446, 23.145731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.165062, 34.161026, 22.994366>,  <40.187141, 33.939972, 22.903545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.165062, 34.161026, 22.994366>,  <40.128265, 34.529446, 23.145731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165062, 34.161026, 22.994366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893714, -0.243952, 0.376515,
		-0.439106, 0.303559, -0.845599,
		0.091991, -0.921053, -0.378416,
		40.192657, 33.884708, 22.880840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451214, 34.311367, 22.756895>,  <40.128265, 34.529446, 23.145731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451214, 34.311367, 22.756895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.649628, 33.991676, 22.892653>,  <39.768677, 33.799862, 22.974108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.649628, 33.991676, 22.892653>,  <39.451214, 34.311367, 22.756895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649628, 33.991676, 22.892653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816294, -0.295989, 0.496039,
		-0.295989, -0.523100, -0.799223,
		-0.496039, 0.799223, -0.339394,
		39.798439, 33.751911, 22.994471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990208, 33.776905, 22.556034>,  <39.451214, 34.311367, 22.756895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990208, 33.776905, 22.556034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.212914, 33.637791, 22.857779>,  <39.346535, 33.554321, 23.038824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.212914, 33.637791, 22.857779>,  <38.990208, 33.776905, 22.556034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212914, 33.637791, 22.857779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825683, -0.331092, 0.456755,
		0.090909, -0.877167, -0.471502,
		0.556760, -0.347788, 0.754361,
		39.379940, 33.533455, 23.084087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716904, 33.112289, 22.661325>,  <38.990208, 33.776905, 22.556034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716904, 33.112289, 22.661325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.932617, 33.206585, 22.984707>,  <39.062046, 33.263165, 23.178736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.932617, 33.206585, 22.984707>,  <38.716904, 33.112289, 22.661325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932617, 33.206585, 22.984707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676065, -0.451199, 0.582542,
		0.502104, -0.860723, -0.083948,
		0.539284, 0.235742, 0.808454,
		39.094402, 33.277309, 23.227243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669319, 32.559044, 23.069292>,  <38.716904, 33.112289, 22.661325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669319, 32.559044, 23.069292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.795033, 32.815506, 23.349333>,  <38.870461, 32.969383, 23.517357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.795033, 32.815506, 23.349333>,  <38.669319, 32.559044, 23.069292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795033, 32.815506, 23.349333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550181, -0.477976, 0.684718,
		0.773644, -0.600380, 0.202532,
		0.314286, 0.641157, 0.700101,
		38.889317, 33.007854, 23.559362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848026, 32.177425, 23.617048>,  <38.669319, 32.559044, 23.069292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848026, 32.177425, 23.617048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.817696, 32.528324, 23.806652>,  <38.799496, 32.738865, 23.920414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.817696, 32.528324, 23.806652>,  <38.848026, 32.177425, 23.617048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817696, 32.528324, 23.806652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514295, -0.441676, 0.735135,
		0.854255, -0.188039, 0.484655,
		-0.075826, 0.877248, 0.474011,
		38.794949, 32.791500, 23.948854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156807, 32.084751, 24.356522>,  <38.848026, 32.177425, 23.617048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156807, 32.084751, 24.356522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.898075, 32.386982, 24.315115>,  <38.742836, 32.568321, 24.290272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.898075, 32.386982, 24.315115>,  <39.156807, 32.084751, 24.356522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898075, 32.386982, 24.315115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519547, -0.337216, 0.785084,
		0.558280, 0.561601, 0.610678,
		-0.646834, 0.755572, -0.103517,
		38.704025, 32.613655, 24.284060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141689, 32.436642, 24.947643>,  <39.156807, 32.084751, 24.356522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141689, 32.436642, 24.947643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.792137, 32.546867, 24.787449>,  <38.582405, 32.613003, 24.691332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.792137, 32.546867, 24.787449>,  <39.141689, 32.436642, 24.947643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792137, 32.546867, 24.787449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456847, -0.183899, 0.870329,
		0.166181, 0.943528, 0.286597,
		-0.873885, 0.275563, -0.400487,
		38.529972, 32.629536, 24.667303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776649, 32.688690, 25.499504>,  <39.141689, 32.436642, 24.947643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776649, 32.688690, 25.499504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.445034, 32.629871, 25.283701>,  <38.246063, 32.594578, 25.154219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.445034, 32.629871, 25.283701>,  <38.776649, 32.688690, 25.499504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445034, 32.629871, 25.283701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489797, -0.274532, 0.827485,
		-0.269794, 0.950267, 0.155573,
		-0.829041, -0.147051, -0.539505,
		38.196323, 32.585754, 25.121849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164513, 32.903072, 25.879381>,  <38.776649, 32.688690, 25.499504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164513, 32.903072, 25.879381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985207, 32.647854, 25.628958>,  <37.877621, 32.494720, 25.478704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985207, 32.647854, 25.628958>,  <38.164513, 32.903072, 25.879381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985207, 32.647854, 25.628958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431450, -0.458951, 0.776669,
		-0.782884, 0.618268, -0.069553,
		-0.448268, -0.638050, -0.626057,
		37.850727, 32.456440, 25.441141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470905, 32.820316, 26.113609>,  <38.164513, 32.903072, 25.879381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470905, 32.820316, 26.113609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.485645, 32.484203, 25.897249>,  <37.494488, 32.282536, 25.767433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.485645, 32.484203, 25.897249>,  <37.470905, 32.820316, 26.113609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485645, 32.484203, 25.897249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420368, -0.504085, 0.754446,
		-0.906605, 0.199575, -0.371802,
		0.036851, -0.840278, -0.540901,
		37.496700, 32.232121, 25.734980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803734, 32.513638, 26.182629>,  <37.470905, 32.820316, 26.113609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803734, 32.513638, 26.182629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051540, 32.216064, 26.082411>,  <37.200222, 32.037521, 26.022280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.051540, 32.216064, 26.082411>,  <36.803734, 32.513638, 26.182629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051540, 32.216064, 26.082411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295028, -0.516428, 0.803903,
		-0.727435, -0.424111, -0.539414,
		0.619513, -0.743930, -0.250544,
		37.237396, 31.992886, 26.007248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441544, 31.841187, 26.093128>,  <36.803734, 32.513638, 26.182629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441544, 31.841187, 26.093128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.820770, 31.766207, 26.195913>,  <37.048306, 31.721218, 26.257584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.820770, 31.766207, 26.195913>,  <36.441544, 31.841187, 26.093128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820770, 31.766207, 26.195913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318009, -0.543127, 0.777099,
		-0.006103, -0.818459, -0.574532,
		0.948068, -0.187450, 0.256963,
		37.105190, 31.709972, 26.273003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425545, 31.158413, 26.276274>,  <36.441544, 31.841187, 26.093128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425545, 31.158413, 26.276274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770294, 31.276222, 26.441406>,  <36.977142, 31.346907, 26.540485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770294, 31.276222, 26.441406>,  <36.425545, 31.158413, 26.276274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770294, 31.276222, 26.441406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193875, -0.560863, 0.804888,
		0.468598, -0.773750, -0.426293,
		0.861875, 0.294522, 0.412830,
		37.028858, 31.364578, 26.565256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731689, 30.549713, 26.600130>,  <36.425545, 31.158413, 26.276274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731689, 30.549713, 26.600130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.909252, 30.857222, 26.784277>,  <37.015789, 31.041727, 26.894766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.909252, 30.857222, 26.784277>,  <36.731689, 30.549713, 26.600130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909252, 30.857222, 26.784277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038416, -0.496961, 0.866922,
		0.895248, -0.402520, -0.191073,
		0.443909, 0.768770, 0.460367,
		37.042423, 31.087852, 26.922386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221134, 30.249207, 27.010492>,  <36.731689, 30.549713, 26.600130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221134, 30.249207, 27.010492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.120644, 30.614573, 27.138592>,  <37.060349, 30.833792, 27.215450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.120644, 30.614573, 27.138592>,  <37.221134, 30.249207, 27.010492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120644, 30.614573, 27.138592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062929, -0.345571, 0.936280,
		0.965882, 0.215061, 0.144295,
		-0.251222, 0.913416, 0.320247,
		37.045277, 30.888597, 27.234665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330910, 30.200476, 27.723763>,  <37.221134, 30.249207, 27.010492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330910, 30.200476, 27.723763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126484, 30.543455, 27.699793>,  <37.003826, 30.749243, 27.685411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.126484, 30.543455, 27.699793>,  <37.330910, 30.200476, 27.723763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126484, 30.543455, 27.699793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248109, -0.080413, 0.965389,
		0.822954, 0.508245, 0.253837,
		-0.511066, 0.857450, -0.059923,
		36.973164, 30.800690, 27.681816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.705433, 31.243902, 33.578846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.388203, 31.445005, 33.441284>,  <40.197865, 31.565666, 33.358746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.388203, 31.445005, 33.441284>,  <40.705433, 31.243902, 33.578846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388203, 31.445005, 33.441284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212585, 0.300641, 0.929744,
		0.570826, 0.810464, -0.131551,
		-0.793073, 0.502756, -0.343906,
		40.150280, 31.595833, 33.338112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758751, 31.951160, 33.712467>,  <40.705433, 31.243902, 33.578846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758751, 31.951160, 33.712467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.378304, 31.827637, 33.711468>,  <40.150036, 31.753523, 33.710869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.378304, 31.827637, 33.711468>,  <40.758751, 31.951160, 33.712467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378304, 31.827637, 33.711468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139378, 0.422042, 0.895798,
		-0.275576, 0.852360, -0.444454,
		-0.951121, -0.308808, -0.002496,
		40.092968, 31.734995, 33.710720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375969, 32.257507, 34.277901>,  <40.758751, 31.951160, 33.712467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375969, 32.257507, 34.277901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.038433, 32.075916, 34.163467>,  <39.835911, 31.966961, 34.094807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.038433, 32.075916, 34.163467>,  <40.375969, 32.257507, 34.277901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038433, 32.075916, 34.163467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446535, 0.298445, 0.843526,
		-0.297565, 0.839543, -0.454558,
		-0.843837, -0.453980, -0.286079,
		39.785282, 31.939722, 34.077644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765991, 32.670467, 34.416302>,  <40.375969, 32.257507, 34.277901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765991, 32.670467, 34.416302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.618519, 32.298988, 34.400356>,  <39.530033, 32.076099, 34.390789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.618519, 32.298988, 34.400356>,  <39.765991, 32.670467, 34.416302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618519, 32.298988, 34.400356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515012, 0.168378, 0.840483,
		-0.773844, 0.330403, -0.540370,
		-0.368684, -0.928700, -0.039863,
		39.507915, 32.020378, 34.388397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057194, 32.792194, 34.421803>,  <39.765991, 32.670467, 34.416302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057194, 32.792194, 34.421803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.131989, 32.421597, 34.552429>,  <39.176865, 32.199238, 34.630806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.131989, 32.421597, 34.552429>,  <39.057194, 32.792194, 34.421803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131989, 32.421597, 34.552429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644871, 0.135012, 0.752272,
		-0.741065, -0.351258, -0.572224,
		0.186984, -0.926493, 0.326569,
		39.188084, 32.143650, 34.650398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395756, 32.443001, 34.397804>,  <39.057194, 32.792194, 34.421803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395756, 32.443001, 34.397804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.654907, 32.291447, 34.662136>,  <38.810398, 32.200512, 34.820736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.654907, 32.291447, 34.662136>,  <38.395756, 32.443001, 34.397804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654907, 32.291447, 34.662136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700273, 0.045157, 0.712445,
		-0.299779, -0.924339, -0.236070,
		0.647881, -0.378890, 0.660827,
		38.849270, 32.177780, 34.860386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875141, 32.172134, 34.821770>,  <38.395756, 32.443001, 34.397804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875141, 32.172134, 34.821770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.205982, 32.111294, 35.038204>,  <38.404488, 32.074791, 35.168064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.205982, 32.111294, 35.038204>,  <37.875141, 32.172134, 34.821770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205982, 32.111294, 35.038204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515169, 0.179778, 0.838022,
		-0.224738, -0.971877, 0.070337,
		0.827100, -0.152100, 0.541084,
		38.454113, 32.065662, 35.200531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698574, 31.653057, 35.268356>,  <37.875141, 32.172134, 34.821770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698574, 31.653057, 35.268356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.009674, 31.843386, 35.432648>,  <38.196335, 31.957582, 35.531223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.009674, 31.843386, 35.432648>,  <37.698574, 31.653057, 35.268356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009674, 31.843386, 35.432648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527849, 0.139605, 0.837786,
		0.341298, -0.868391, 0.359740,
		0.777748, 0.475823, 0.410732,
		38.243000, 31.986132, 35.555866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833950, 31.375656, 35.902763>,  <37.698574, 31.653057, 35.268356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833950, 31.375656, 35.902763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.981457, 31.746840, 35.924320>,  <38.069962, 31.969549, 35.937256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.981457, 31.746840, 35.924320>,  <37.833950, 31.375656, 35.902763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981457, 31.746840, 35.924320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479716, 0.140334, 0.866129,
		0.796168, -0.345253, 0.496907,
		0.368766, 0.927958, 0.053894,
		38.092087, 32.025227, 35.940487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837746, 31.513350, 36.647766>,  <37.833950, 31.375656, 35.902763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837746, 31.513350, 36.647766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.871571, 31.868166, 36.466217>,  <37.891865, 32.081055, 36.357288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.871571, 31.868166, 36.466217>,  <37.837746, 31.513350, 36.647766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871571, 31.868166, 36.466217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435715, 0.442569, 0.783763,
		0.896103, 0.131483, 0.423923,
		0.084563, 0.887043, -0.453877,
		37.896938, 32.134277, 36.330055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105762, 31.984570, 37.111099>,  <37.837746, 31.513350, 36.647766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105762, 31.984570, 37.111099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.881958, 32.181866, 36.844669>,  <37.747673, 32.300243, 36.684811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.881958, 32.181866, 36.844669>,  <38.105762, 31.984570, 37.111099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881958, 32.181866, 36.844669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551876, 0.377868, 0.743403,
		0.618364, 0.783537, 0.060784,
		-0.559516, 0.493240, -0.666076,
		37.714104, 32.329838, 36.644848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092266, 32.589302, 37.338203>,  <38.105762, 31.984570, 37.111099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092266, 32.589302, 37.338203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.794338, 32.601540, 37.071575>,  <37.615582, 32.608883, 36.911598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.794338, 32.601540, 37.071575>,  <38.092266, 32.589302, 37.338203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794338, 32.601540, 37.071575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622093, 0.329485, 0.710240,
		0.241353, 0.943665, -0.226373,
		-0.744815, 0.030593, -0.666569,
		37.570892, 32.610718, 36.871605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846722, 33.242886, 37.390762>,  <38.092266, 32.589302, 37.338203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846722, 33.242886, 37.390762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.579456, 32.979057, 37.253052>,  <37.419098, 32.820759, 37.170425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.579456, 32.979057, 37.253052>,  <37.846722, 33.242886, 37.390762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579456, 32.979057, 37.253052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675685, 0.344216, 0.651894,
		-0.311466, 0.668192, -0.675655,
		-0.668161, -0.659572, -0.344275,
		37.379009, 32.781185, 37.149769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468182, 33.687412, 37.486420>,  <37.846722, 33.242886, 37.390762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468182, 33.687412, 37.486420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.440266, 33.332493, 37.668777>,  <38.423515, 33.119541, 37.778191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.440266, 33.332493, 37.668777>,  <38.468182, 33.687412, 37.486420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440266, 33.332493, 37.668777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444295, 0.381527, 0.810580,
		-0.893158, 0.259124, 0.367592,
		-0.069794, -0.887295, 0.455891,
		38.419327, 33.066303, 37.805546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729534, 34.412399, 37.429565>,  <38.468182, 33.687412, 37.486420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729534, 34.412399, 37.429565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905689, 34.763863, 37.355782>,  <39.011383, 34.974739, 37.311512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.905689, 34.763863, 37.355782>,  <38.729534, 34.412399, 37.429565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905689, 34.763863, 37.355782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568455, 0.113854, -0.814798,
		-0.694925, 0.463683, 0.549615,
		0.440384, 0.878655, -0.184463,
		39.037804, 35.027458, 37.300442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186195, 34.900688, 37.228100>,  <38.729534, 34.412399, 37.429565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186195, 34.900688, 37.228100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.527699, 35.071236, 37.108559>,  <38.732601, 35.173565, 37.036835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.527699, 35.071236, 37.108559>,  <38.186195, 34.900688, 37.228100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527699, 35.071236, 37.108559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406459, 0.187040, -0.894320,
		-0.325414, 0.885000, 0.332988,
		0.853755, 0.426370, -0.298851,
		38.783825, 35.199146, 37.018902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958038, 35.491772, 36.838776>,  <38.186195, 34.900688, 37.228100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958038, 35.491772, 36.838776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.331230, 35.418606, 36.714775>,  <38.555145, 35.374706, 36.640377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.331230, 35.418606, 36.714775>,  <37.958038, 35.491772, 36.838776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331230, 35.418606, 36.714775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255344, 0.270664, -0.928192,
		0.253685, 0.945137, 0.205816,
		0.932975, -0.182914, -0.309998,
		38.611122, 35.363731, 36.621777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183868, 36.119308, 36.548370>,  <37.958038, 35.491772, 36.838776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183868, 36.119308, 36.548370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.420658, 35.826416, 36.413662>,  <38.562733, 35.650681, 36.332836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.420658, 35.826416, 36.413662>,  <38.183868, 36.119308, 36.548370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420658, 35.826416, 36.413662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189637, 0.279571, -0.941211,
		0.783331, 0.621034, 0.026641,
		0.591972, -0.732227, -0.336768,
		38.598251, 35.606747, 36.312634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506126, 36.428677, 35.937508>,  <38.183868, 36.119308, 36.548370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506126, 36.428677, 35.937508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.579231, 36.040443, 35.874805>,  <38.623093, 35.807503, 35.837185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.579231, 36.040443, 35.874805>,  <38.506126, 36.428677, 35.937508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579231, 36.040443, 35.874805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178503, 0.124036, -0.976090,
		0.966817, 0.206374, -0.150582,
		0.182762, -0.970580, -0.156759,
		38.634060, 35.749271, 35.827778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816708, 36.421028, 35.323071>,  <38.506126, 36.428677, 35.937508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816708, 36.421028, 35.323071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.689575, 36.042873, 35.351986>,  <38.613297, 35.815979, 35.369335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.689575, 36.042873, 35.351986>,  <38.816708, 36.421028, 35.323071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689575, 36.042873, 35.351986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202868, -0.006675, -0.979183,
		0.926191, -0.325878, -0.189668,
		-0.317828, -0.945388, 0.072292,
		38.594227, 35.759258, 35.373672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071838, 36.188656, 34.762379>,  <38.816708, 36.421028, 35.323071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071838, 36.188656, 34.762379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.803848, 35.910950, 34.867546>,  <38.643055, 35.744328, 34.930649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.803848, 35.910950, 34.867546>,  <39.071838, 36.188656, 34.762379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803848, 35.910950, 34.867546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151740, -0.218617, -0.963941,
		0.726709, -0.685714, 0.041121,
		-0.669977, -0.694265, 0.262921,
		38.602856, 35.702671, 34.946423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236973, 35.482914, 34.493355>,  <39.071838, 36.188656, 34.762379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236973, 35.482914, 34.493355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.841076, 35.498711, 34.548279>,  <38.603539, 35.508190, 34.581234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.841076, 35.498711, 34.548279>,  <39.236973, 35.482914, 34.493355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841076, 35.498711, 34.548279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140441, -0.092121, -0.985794,
		-0.026275, -0.994965, 0.096721,
		-0.989740, 0.039485, 0.137313,
		38.544155, 35.510559, 34.589474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017597, 35.025654, 33.991375>,  <39.236973, 35.482914, 34.493355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017597, 35.025654, 33.991375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.695892, 35.238232, 34.097755>,  <38.502869, 35.365780, 34.161583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.695892, 35.238232, 34.097755>,  <39.017597, 35.025654, 33.991375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695892, 35.238232, 34.097755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339720, -0.043954, -0.939499,
		-0.487605, -0.845950, 0.215894,
		-0.804258, 0.531448, 0.265954,
		38.454617, 35.397667, 34.177540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389034, 34.682865, 33.688286>,  <39.017597, 35.025654, 33.991375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389034, 34.682865, 33.688286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.293736, 35.066750, 33.747868>,  <38.236557, 35.297081, 33.783615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.293736, 35.066750, 33.747868>,  <38.389034, 34.682865, 33.688286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293736, 35.066750, 33.747868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464867, 0.021972, -0.885108,
		-0.852723, -0.280119, 0.440904,
		-0.238248, 0.959714, 0.148954,
		38.222260, 35.354664, 33.792553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648903, 34.715855, 33.502182>,  <38.389034, 34.682865, 33.688286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648903, 34.715855, 33.502182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.798630, 35.086559, 33.489510>,  <37.888466, 35.308983, 33.481907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.798630, 35.086559, 33.489510>,  <37.648903, 34.715855, 33.502182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798630, 35.086559, 33.489510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380899, 0.122518, -0.916464,
		-0.845461, 0.355111, 0.398863,
		0.374314, 0.926761, -0.031677,
		37.910923, 35.364586, 33.480007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064240, 35.121971, 33.141426>,  <37.648903, 34.715855, 33.502182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064240, 35.121971, 33.141426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.380932, 35.365143, 33.117489>,  <37.570946, 35.511047, 33.103127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.380932, 35.365143, 33.117489>,  <37.064240, 35.121971, 33.141426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380932, 35.365143, 33.117489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259298, 0.245750, -0.934008,
		-0.553108, 0.754999, 0.352204,
		0.791730, 0.607933, -0.059843,
		37.618450, 35.547523, 33.099537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842987, 35.823929, 32.909340>,  <37.064240, 35.121971, 33.141426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842987, 35.823929, 32.909340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.234112, 35.798584, 32.829468>,  <37.468784, 35.783379, 32.781544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.234112, 35.798584, 32.829468>,  <36.842987, 35.823929, 32.909340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234112, 35.798584, 32.829468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161142, 0.381594, -0.910175,
		0.133868, 0.922156, 0.362916,
		0.977810, -0.063362, -0.199681,
		37.527454, 35.779575, 32.769562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961491, 36.371471, 32.537479>,  <36.842987, 35.823929, 32.909340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961491, 36.371471, 32.537479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.259769, 36.119961, 32.449310>,  <37.438736, 35.969055, 32.396408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.259769, 36.119961, 32.449310>,  <36.961491, 36.371471, 32.537479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259769, 36.119961, 32.449310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069157, 0.255992, -0.964202,
		0.662690, 0.734243, 0.147408,
		0.745694, -0.628773, -0.220422,
		37.483479, 35.931328, 32.383183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802895, 37.090389, 32.325451>,  <36.961491, 36.371471, 32.537479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802895, 37.090389, 32.325451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.556755, 37.389584, 32.225964>,  <36.409073, 37.569099, 32.166271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.556755, 37.389584, 32.225964>,  <36.802895, 37.090389, 32.325451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556755, 37.389584, 32.225964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557133, -0.189495, 0.808514,
		0.557627, 0.636087, 0.533334,
		-0.615349, 0.747988, -0.248717,
		36.372150, 37.613979, 32.151348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677521, 37.418797, 32.972710>,  <36.802895, 37.090389, 32.325451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677521, 37.418797, 32.972710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.403954, 37.598816, 32.743031>,  <36.239815, 37.706829, 32.605221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.403954, 37.598816, 32.743031>,  <36.677521, 37.418797, 32.972710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403954, 37.598816, 32.743031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600848, 0.098955, 0.793215,
		0.413809, 0.887502, 0.202736,
		-0.683918, 0.450053, -0.574202,
		36.198776, 37.733833, 32.570770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443951, 38.113518, 33.240768>,  <36.677521, 37.418797, 32.972710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443951, 38.113518, 33.240768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.124413, 37.993420, 33.032269>,  <35.932690, 37.921360, 32.907169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.124413, 37.993420, 33.032269>,  <36.443951, 38.113518, 33.240768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124413, 37.993420, 33.032269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568582, 0.093978, 0.817241,
		-0.196386, 0.949221, -0.245787,
		-0.798841, -0.300245, -0.521254,
		35.884762, 37.903347, 32.875893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749088, 38.523129, 33.389629>,  <36.443951, 38.113518, 33.240768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749088, 38.523129, 33.389629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.651150, 38.157227, 33.261086>,  <35.592388, 37.937687, 33.183960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.651150, 38.157227, 33.261086>,  <35.749088, 38.523129, 33.389629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651150, 38.157227, 33.261086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587321, -0.123782, 0.799833,
		-0.771430, 0.384579, -0.506947,
		-0.244848, -0.914755, -0.321361,
		35.577694, 37.882801, 33.164677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116096, 38.587997, 33.440716>,  <35.749088, 38.523129, 33.389629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116096, 38.587997, 33.440716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.164505, 38.193172, 33.398647>,  <35.193550, 37.956276, 33.373405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.164505, 38.193172, 33.398647>,  <35.116096, 38.587997, 33.440716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164505, 38.193172, 33.398647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659416, -0.159138, 0.734742,
		-0.741973, -0.019566, -0.670144,
		0.121021, -0.987063, -0.105174,
		35.200813, 37.897053, 33.367096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420986, 38.302879, 33.321743>,  <35.116096, 38.587997, 33.440716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420986, 38.302879, 33.321743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.645855, 37.994274, 33.440891>,  <34.780777, 37.809113, 33.512379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.645855, 37.994274, 33.440891>,  <34.420986, 38.302879, 33.321743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645855, 37.994274, 33.440891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760691, -0.341057, 0.552295,
		-0.324502, -0.537088, -0.778611,
		0.562181, -0.771503, 0.297885,
		34.814507, 37.762821, 33.530251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983902, 37.731049, 33.322800>,  <34.420986, 38.302879, 33.321743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983902, 37.731049, 33.322800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.286175, 37.587601, 33.542015>,  <34.467537, 37.501534, 33.673542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.286175, 37.587601, 33.542015>,  <33.983902, 37.731049, 33.322800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286175, 37.587601, 33.542015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650880, -0.504269, 0.567511,
		0.072838, -0.785561, -0.614482,
		0.755679, -0.358618, 0.548036,
		34.512878, 37.480015, 33.706425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735630, 37.015308, 33.456215>,  <33.983902, 37.731049, 33.322800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735630, 37.015308, 33.456215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.023685, 37.106167, 33.718452>,  <34.196518, 37.160683, 33.875797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.023685, 37.106167, 33.718452>,  <33.735630, 37.015308, 33.456215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023685, 37.106167, 33.718452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423840, -0.604087, 0.674861,
		0.549330, -0.763861, -0.338752,
		0.720136, 0.227144, 0.655598,
		34.239727, 37.174309, 33.915131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920609, 36.352173, 33.770893>,  <33.735630, 37.015308, 33.456215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920609, 36.352173, 33.770893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.027077, 36.655556, 34.008850>,  <34.090958, 36.837585, 34.151627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.027077, 36.655556, 34.008850>,  <33.920609, 36.352173, 33.770893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027077, 36.655556, 34.008850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480011, -0.430904, 0.764141,
		0.835909, -0.488947, 0.249373,
		0.266168, 0.758454, 0.594897,
		34.106926, 36.883091, 34.187321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146358, 36.081707, 34.414055>,  <33.920609, 36.352173, 33.770893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146358, 36.081707, 34.414055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.066906, 36.456497, 34.529030>,  <34.019234, 36.681374, 34.598015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.066906, 36.456497, 34.529030>,  <34.146358, 36.081707, 34.414055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066906, 36.456497, 34.529030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644747, -0.345805, 0.681704,
		0.738138, -0.049916, 0.672801,
		-0.198630, 0.936978, 0.287435,
		34.007317, 36.737591, 34.615261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207607, 36.124565, 35.165073>,  <34.146358, 36.081707, 34.414055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207607, 36.124565, 35.165073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.982868, 36.440594, 35.067001>,  <33.848022, 36.630211, 35.008156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.982868, 36.440594, 35.067001>,  <34.207607, 36.124565, 35.165073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982868, 36.440594, 35.067001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630168, -0.216759, 0.745589,
		0.535922, 0.573416, 0.619663,
		-0.561850, 0.790070, -0.245182,
		33.814312, 36.677616, 34.993446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997246, 36.489529, 35.814449>,  <34.207607, 36.124565, 35.165073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997246, 36.489529, 35.814449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.743198, 36.588749, 35.521851>,  <33.590771, 36.648281, 35.346291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.743198, 36.588749, 35.521851>,  <33.997246, 36.489529, 35.814449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743198, 36.588749, 35.521851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763269, -0.056261, 0.643626,
		0.118496, 0.967112, 0.225061,
		-0.635121, 0.248050, -0.731500,
		33.552662, 36.663162, 35.302399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.039749, 37.828285, 29.864227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760712, 37.953049, 29.606213>,  <38.593288, 38.027908, 29.451405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760712, 37.953049, 29.606213>,  <39.039749, 37.828285, 29.864227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760712, 37.953049, 29.606213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516868, 0.404389, 0.754531,
		0.496193, 0.859756, -0.120883,
		-0.697596, 0.311913, -0.645035,
		38.551434, 38.046623, 29.412703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893749, 38.546192, 30.009588>,  <39.039749, 37.828285, 29.864227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893749, 38.546192, 30.009588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576210, 38.397755, 29.816883>,  <38.385685, 38.308693, 29.701260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576210, 38.397755, 29.816883>,  <38.893749, 38.546192, 30.009588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576210, 38.397755, 29.816883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602981, 0.377626, 0.702718,
		-0.078846, 0.848346, -0.523539,
		-0.793850, -0.371090, -0.481762,
		38.338055, 38.286427, 29.672354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.353912, 39.097054, 30.066120>,  <38.893749, 38.546192, 30.009588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.353912, 39.097054, 30.066120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160522, 38.758648, 29.976213>,  <38.044487, 38.555607, 29.922270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160522, 38.758648, 29.976213>,  <38.353912, 39.097054, 30.066120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160522, 38.758648, 29.976213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622655, 0.151893, 0.767613,
		-0.615267, 0.511073, -0.600209,
		-0.483473, -0.846010, -0.224768,
		38.015480, 38.504845, 29.908783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636982, 39.352737, 30.166080>,  <38.353912, 39.097054, 30.066120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636982, 39.352737, 30.166080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679317, 38.956131, 30.196268>,  <37.704720, 38.718166, 30.214380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679317, 38.956131, 30.196268>,  <37.636982, 39.352737, 30.166080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679317, 38.956131, 30.196268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656833, -0.012732, 0.753928,
		-0.746570, -0.129367, -0.652608,
		0.105842, -0.991515, 0.075467,
		37.711071, 38.658676, 30.218908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965267, 39.142399, 30.401567>,  <37.636982, 39.352737, 30.166080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965267, 39.142399, 30.401567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176991, 38.806934, 30.452932>,  <37.304024, 38.605656, 30.483751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176991, 38.806934, 30.452932>,  <36.965267, 39.142399, 30.401567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176991, 38.806934, 30.452932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622098, -0.280715, 0.730885,
		-0.576914, -0.466747, -0.670311,
		0.529305, -0.838657, 0.128414,
		37.335781, 38.555336, 30.491457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602116, 38.538624, 30.191099>,  <36.965267, 39.142399, 30.401567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602116, 38.538624, 30.191099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861900, 38.415756, 30.469336>,  <37.017773, 38.342037, 30.636278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861900, 38.415756, 30.469336>,  <36.602116, 38.538624, 30.191099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861900, 38.415756, 30.469336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749988, -0.409581, 0.519386,
		0.125364, -0.859007, -0.496377,
		0.649463, -0.307164, 0.695592,
		37.056740, 38.323608, 30.678013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299717, 37.922977, 30.493254>,  <36.602116, 38.538624, 30.191099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299717, 37.922977, 30.493254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564590, 38.056595, 30.761560>,  <36.723515, 38.136765, 30.922544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564590, 38.056595, 30.761560>,  <36.299717, 37.922977, 30.493254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564590, 38.056595, 30.761560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594783, -0.310175, 0.741636,
		0.455792, -0.890061, -0.006711,
		0.662183, 0.334040, 0.670768,
		36.763245, 38.156807, 30.962791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271629, 37.373466, 30.983664>,  <36.299717, 37.922977, 30.493254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271629, 37.373466, 30.983664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434418, 37.680969, 31.181000>,  <36.532093, 37.865471, 31.299402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434418, 37.680969, 31.181000>,  <36.271629, 37.373466, 30.983664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434418, 37.680969, 31.181000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520062, -0.249001, 0.817028,
		0.750939, -0.589075, 0.298465,
		0.406972, 0.768758, 0.493340,
		36.556511, 37.911598, 31.329002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730637, 37.122738, 31.478533>,  <36.271629, 37.373466, 30.983664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730637, 37.122738, 31.478533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586983, 37.479340, 31.588978>,  <36.500790, 37.693302, 31.655245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586983, 37.479340, 31.588978>,  <36.730637, 37.122738, 31.478533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586983, 37.479340, 31.588978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506175, -0.434622, 0.744910,
		0.784096, 0.127765, 0.607347,
		-0.359139, 0.891505, 0.276114,
		36.479240, 37.746792, 31.671812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216923, 36.674381, 31.931286>,  <36.730637, 37.122738, 31.478533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216923, 36.674381, 31.931286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381012, 36.310055, 31.949734>,  <37.479465, 36.091457, 31.960802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381012, 36.310055, 31.949734>,  <37.216923, 36.674381, 31.931286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381012, 36.310055, 31.949734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152778, -0.118488, -0.981132,
		0.899098, 0.395436, -0.187760,
		0.410222, -0.910819, 0.046119,
		37.504078, 36.036808, 31.963570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808880, 36.574688, 31.347305>,  <37.216923, 36.674381, 31.931286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808880, 36.574688, 31.347305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714306, 36.199902, 31.450220>,  <37.657562, 35.975029, 31.511969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714306, 36.199902, 31.450220>,  <37.808880, 36.574688, 31.347305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714306, 36.199902, 31.450220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143768, -0.295614, -0.944427,
		0.960952, -0.186309, 0.204599,
		-0.236438, -0.936964, 0.257286,
		37.643375, 35.918812, 31.527407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301731, 36.138844, 31.126028>,  <37.808880, 36.574688, 31.347305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301731, 36.138844, 31.126028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992294, 35.886292, 31.147600>,  <37.806633, 35.734760, 31.160543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992294, 35.886292, 31.147600>,  <38.301731, 36.138844, 31.126028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992294, 35.886292, 31.147600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253069, -0.385848, -0.887174,
		0.580957, -0.672663, 0.458273,
		-0.773592, -0.631384, 0.053931,
		37.760216, 35.696877, 31.163780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490036, 35.483814, 30.941357>,  <38.301731, 36.138844, 31.126028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490036, 35.483814, 30.941357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094986, 35.456928, 30.884674>,  <37.857956, 35.440796, 30.850664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094986, 35.456928, 30.884674>,  <38.490036, 35.483814, 30.941357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094986, 35.456928, 30.884674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156840, -0.423850, -0.892049,
		-0.000105, -0.903235, 0.429146,
		-0.987624, -0.067214, -0.141708,
		37.798698, 35.436764, 30.842161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481075, 34.739990, 30.533068>,  <38.490036, 35.483814, 30.941357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481075, 34.739990, 30.533068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153389, 34.963230, 30.480293>,  <37.956776, 35.097176, 30.448629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153389, 34.963230, 30.480293>,  <38.481075, 34.739990, 30.533068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153389, 34.963230, 30.480293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012319, -0.247132, -0.968903,
		-0.573354, -0.792115, 0.209330,
		-0.819215, 0.558104, -0.131937,
		37.907623, 35.130661, 30.440712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919659, 34.318069, 30.153612>,  <38.481075, 34.739990, 30.533068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919659, 34.318069, 30.153612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781902, 34.687233, 30.084742>,  <37.699249, 34.908730, 30.043419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781902, 34.687233, 30.084742>,  <37.919659, 34.318069, 30.153612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781902, 34.687233, 30.084742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051843, -0.201808, -0.978052,
		-0.937394, -0.327905, 0.117347,
		-0.344389, 0.922904, -0.172174,
		37.678585, 34.964104, 30.033089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367050, 34.263809, 29.705393>,  <37.919659, 34.318069, 30.153612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367050, 34.263809, 29.705393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502506, 34.638573, 29.670708>,  <37.583778, 34.863430, 29.649897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502506, 34.638573, 29.670708>,  <37.367050, 34.263809, 29.705393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502506, 34.638573, 29.670708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167952, -0.150867, -0.974182,
		-0.925805, 0.315334, -0.208446,
		0.338640, 0.936912, -0.086712,
		37.604099, 34.919647, 29.644693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993179, 34.543907, 29.157932>,  <37.367050, 34.263809, 29.705393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993179, 34.543907, 29.157932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303150, 34.793579, 29.197720>,  <37.489132, 34.943382, 29.221592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303150, 34.793579, 29.197720>,  <36.993179, 34.543907, 29.157932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303150, 34.793579, 29.197720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129331, -0.002542, -0.991598,
		-0.618683, 0.781277, -0.082696,
		0.774923, 0.624180, 0.099470,
		37.535625, 34.980831, 29.227560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074085, 34.809021, 28.477819>,  <36.993179, 34.543907, 29.157932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074085, 34.809021, 28.477819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417645, 34.922558, 28.648338>,  <37.623779, 34.990681, 28.750650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417645, 34.922558, 28.648338>,  <37.074085, 34.809021, 28.477819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417645, 34.922558, 28.648338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436565, 0.029451, -0.899190,
		-0.267782, 0.958419, -0.098620,
		0.858896, 0.283842, 0.426299,
		37.675312, 35.007710, 28.776228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296345, 35.319447, 28.087318>,  <37.074085, 34.809021, 28.477819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296345, 35.319447, 28.087318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638252, 35.194870, 28.253391>,  <37.843395, 35.120125, 28.353035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638252, 35.194870, 28.253391>,  <37.296345, 35.319447, 28.087318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638252, 35.194870, 28.253391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387145, -0.150181, -0.909706,
		0.345672, 0.938323, -0.007797,
		0.854769, -0.311441, 0.415180,
		37.894684, 35.101437, 28.377945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912086, 35.765572, 27.799801>,  <37.296345, 35.319447, 28.087318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912086, 35.765572, 27.799801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065907, 35.423676, 27.939247>,  <38.158199, 35.218536, 28.022915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065907, 35.423676, 27.939247>,  <37.912086, 35.765572, 27.799801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065907, 35.423676, 27.939247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551639, -0.090018, -0.829211,
		0.740144, 0.511187, 0.436893,
		0.384553, -0.854743, 0.348617,
		38.181274, 35.167252, 28.043833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624523, 35.756264, 27.638021>,  <37.912086, 35.765572, 27.799801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624523, 35.756264, 27.638021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554470, 35.364662, 27.679735>,  <38.512436, 35.129700, 27.704763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554470, 35.364662, 27.679735>,  <38.624523, 35.756264, 27.638021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554470, 35.364662, 27.679735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665694, -0.195790, -0.720082,
		0.725382, -0.056689, 0.686008,
		-0.175135, -0.979006, 0.104285,
		38.501930, 35.070961, 27.711021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205723, 35.499809, 27.537834>,  <38.624523, 35.756264, 27.638021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205723, 35.499809, 27.537834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999603, 35.161808, 27.480642>,  <38.875931, 34.959007, 27.446327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999603, 35.161808, 27.480642>,  <39.205723, 35.499809, 27.537834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999603, 35.161808, 27.480642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659328, -0.284296, -0.696034,
		0.547500, -0.452935, 0.703629,
		-0.515297, -0.845001, -0.142981,
		38.845013, 34.908306, 27.437748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603127, 34.884281, 27.808086>,  <39.205723, 35.499809, 27.537834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603127, 34.884281, 27.808086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370762, 34.726147, 27.523481>,  <39.231342, 34.631268, 27.352718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370762, 34.726147, 27.523481>,  <39.603127, 34.884281, 27.808086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370762, 34.726147, 27.523481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810253, -0.364262, -0.459133,
		-0.077665, -0.843221, 0.531928,
		-0.580911, -0.395337, -0.711513,
		39.196487, 34.607544, 27.310028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.687191, 32.874432, 25.843161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.972729, 33.085770, 26.027025>,  <35.144051, 33.212570, 26.137344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.972729, 33.085770, 26.027025>,  <34.687191, 32.874432, 25.843161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.972729, 33.085770, 26.027025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314796, -0.344233, 0.884538,
		0.625568, -0.776118, -0.079408,
		0.713840, 0.528341, 0.459660,
		35.186882, 33.244270, 26.164923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051975, 32.336891, 26.253942>,  <34.687191, 32.874432, 25.843161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051975, 32.336891, 26.253942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.131981, 32.692642, 26.418381>,  <35.179985, 32.906094, 26.517044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.131981, 32.692642, 26.418381>,  <35.051975, 32.336891, 26.253942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131981, 32.692642, 26.418381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204324, -0.372488, 0.905265,
		0.958252, -0.265061, 0.107219,
		0.200013, 0.889379, 0.411096,
		35.191986, 32.959457, 26.541710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597534, 32.249039, 26.793892>,  <35.051975, 32.336891, 26.253942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597534, 32.249039, 26.793892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.383045, 32.572067, 26.892111>,  <35.254353, 32.765884, 26.951042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.383045, 32.572067, 26.892111>,  <35.597534, 32.249039, 26.793892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383045, 32.572067, 26.892111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133943, -0.368634, 0.919874,
		0.833380, 0.460369, 0.305839,
		-0.536224, 0.807570, 0.245549,
		35.222179, 32.814339, 26.965775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531765, 32.089714, 27.527075>,  <35.597534, 32.249039, 26.793892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531765, 32.089714, 27.527075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.323162, 32.424126, 27.458858>,  <35.198002, 32.624775, 27.417929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.323162, 32.424126, 27.458858>,  <35.531765, 32.089714, 27.527075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323162, 32.424126, 27.458858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197064, 0.076455, 0.977405,
		0.830181, 0.543328, 0.124880,
		-0.521503, 0.836032, -0.170542,
		35.166710, 32.674934, 27.407696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827557, 32.673100, 27.880560>,  <35.531765, 32.089714, 27.527075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827557, 32.673100, 27.880560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.444153, 32.759453, 27.806091>,  <35.214111, 32.811264, 27.761410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.444153, 32.759453, 27.806091>,  <35.827557, 32.673100, 27.880560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444153, 32.759453, 27.806091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145051, 0.192865, 0.970445,
		0.245405, 0.957183, -0.153549,
		-0.958508, 0.215880, -0.186170,
		35.156601, 32.824215, 27.750240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707302, 33.144150, 28.353247>,  <35.827557, 32.673100, 27.880560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707302, 33.144150, 28.353247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.334366, 33.051128, 28.242496>,  <35.110603, 32.995316, 28.176046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.334366, 33.051128, 28.242496>,  <35.707302, 33.144150, 28.353247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334366, 33.051128, 28.242496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341995, 0.318559, 0.884059,
		-0.117387, 0.918934, -0.376537,
		-0.932341, -0.232551, -0.276876,
		35.054665, 32.981361, 28.159433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254047, 33.713951, 28.456200>,  <35.707302, 33.144150, 28.353247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254047, 33.713951, 28.456200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.022129, 33.388184, 28.465679>,  <34.882977, 33.192722, 28.471367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.022129, 33.388184, 28.465679>,  <35.254047, 33.713951, 28.456200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022129, 33.388184, 28.465679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377549, 0.294333, 0.877967,
		-0.722005, 0.500095, -0.478135,
		-0.579798, -0.814416, 0.023699,
		34.848190, 33.143860, 28.472790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682274, 33.958286, 28.840143>,  <35.254047, 33.713951, 28.456200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682274, 33.958286, 28.840143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.660049, 33.558926, 28.844137>,  <34.646713, 33.319309, 28.846533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.660049, 33.558926, 28.844137>,  <34.682274, 33.958286, 28.840143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660049, 33.558926, 28.844137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584266, 0.040622, 0.810545,
		-0.809658, 0.039202, -0.585591,
		-0.055563, -0.998405, 0.009985,
		34.643379, 33.259403, 28.847134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006954, 33.864185, 28.994663>,  <34.682274, 33.958286, 28.840143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006954, 33.864185, 28.994663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.183449, 33.515232, 29.078819>,  <34.289345, 33.305862, 29.129313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.183449, 33.515232, 29.078819>,  <34.006954, 33.864185, 28.994663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183449, 33.515232, 29.078819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395510, 0.021401, 0.918212,
		-0.805533, -0.488359, -0.335593,
		0.441235, -0.872380, 0.210390,
		34.315819, 33.253517, 29.141937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465263, 33.554802, 29.251623>,  <34.006954, 33.864185, 28.994663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465263, 33.554802, 29.251623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.790405, 33.362007, 29.382439>,  <33.985493, 33.246330, 29.460928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.790405, 33.362007, 29.382439>,  <33.465263, 33.554802, 29.251623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790405, 33.362007, 29.382439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373420, -0.000324, 0.927662,
		-0.447013, -0.876180, -0.180246,
		0.812857, -0.481985, 0.327038,
		34.034264, 33.217411, 29.480551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212925, 32.947010, 29.692608>,  <33.465263, 33.554802, 29.251623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212925, 32.947010, 29.692608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.598560, 32.980412, 29.793449>,  <33.829941, 33.000454, 29.853954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.598560, 32.980412, 29.793449>,  <33.212925, 32.947010, 29.692608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598560, 32.980412, 29.793449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248838, -0.047598, 0.967375,
		0.092782, -0.995370, -0.025109,
		0.964091, 0.083507, 0.252102,
		33.887787, 33.005463, 29.869080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383453, 32.384682, 30.179213>,  <33.212925, 32.947010, 29.692608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383453, 32.384682, 30.179213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.623501, 32.699333, 30.237284>,  <33.767529, 32.888123, 30.272127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.623501, 32.699333, 30.237284>,  <33.383453, 32.384682, 30.179213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623501, 32.699333, 30.237284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176904, -0.046484, 0.983130,
		0.780105, -0.615675, 0.111262,
		0.600117, 0.786627, 0.145178,
		33.803535, 32.935322, 30.280838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728008, 32.217907, 30.743450>,  <33.383453, 32.384682, 30.179213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728008, 32.217907, 30.743450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.815868, 32.607052, 30.714331>,  <33.868584, 32.840538, 30.696859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.815868, 32.607052, 30.714331>,  <33.728008, 32.217907, 30.743450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815868, 32.607052, 30.714331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146842, 0.106742, 0.983384,
		0.964464, -0.205312, 0.166303,
		0.219651, 0.972858, -0.072800,
		33.881763, 32.898911, 30.692492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174095, 32.344685, 31.254978>,  <33.728008, 32.217907, 30.743450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174095, 32.344685, 31.254978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.998417, 32.693020, 31.166656>,  <33.893009, 32.902020, 31.113665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.998417, 32.693020, 31.166656>,  <34.174095, 32.344685, 31.254978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998417, 32.693020, 31.166656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288223, 0.096203, 0.952718,
		0.850903, 0.482068, 0.208743,
		-0.439194, 0.870836, -0.220802,
		33.866657, 32.954269, 31.100416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908428, 32.302517, 31.296513>,  <34.174095, 32.344685, 31.254978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908428, 32.302517, 31.296513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.152489, 31.997473, 31.382435>,  <35.298923, 31.814445, 31.433989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.152489, 31.997473, 31.382435>,  <34.908428, 32.302517, 31.296513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152489, 31.997473, 31.382435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177031, -0.133037, -0.975173,
		0.772256, 0.633027, 0.053834,
		0.610149, -0.762613, 0.214804,
		35.335533, 31.768688, 31.446877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469101, 32.345634, 30.882271>,  <34.908428, 32.302517, 31.296513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469101, 32.345634, 30.882271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.477154, 31.952560, 30.955948>,  <35.481987, 31.716717, 31.000154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.477154, 31.952560, 30.955948>,  <35.469101, 32.345634, 30.882271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477154, 31.952560, 30.955948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172265, -0.178064, -0.968823,
		0.984845, 0.051237, 0.165697,
		0.020135, -0.982684, 0.184191,
		35.483192, 31.657755, 31.011206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187424, 32.089832, 30.601351>,  <35.469101, 32.345634, 30.882271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187424, 32.089832, 30.601351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.955776, 31.766537, 30.643991>,  <35.816788, 31.572559, 30.669577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.955776, 31.766537, 30.643991>,  <36.187424, 32.089832, 30.601351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955776, 31.766537, 30.643991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348040, -0.363362, -0.864197,
		0.737214, -0.463374, 0.491731,
		-0.579123, -0.808241, 0.106603,
		35.782040, 31.524065, 30.675972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646717, 31.607536, 30.413843>,  <36.187424, 32.089832, 30.601351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646717, 31.607536, 30.413843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.287853, 31.436188, 30.370762>,  <36.072533, 31.333378, 30.344913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.287853, 31.436188, 30.370762>,  <36.646717, 31.607536, 30.413843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287853, 31.436188, 30.370762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224987, -0.233355, -0.946005,
		0.380109, -0.872951, 0.305735,
		-0.897161, -0.428371, -0.107702,
		36.018703, 31.307676, 30.338451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833023, 31.061237, 30.118046>,  <36.646717, 31.607536, 30.413843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833023, 31.061237, 30.118046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.443077, 31.072435, 30.029633>,  <36.209110, 31.079153, 29.976583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.443077, 31.072435, 30.029633>,  <36.833023, 31.061237, 30.118046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443077, 31.072435, 30.029633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194887, -0.373650, -0.906865,
		-0.107975, -0.927147, 0.358803,
		-0.974865, 0.027993, -0.221034,
		36.150620, 31.080833, 29.963322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642838, 30.348705, 29.835787>,  <36.833023, 31.061237, 30.118046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642838, 30.348705, 29.835787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.379242, 30.619520, 29.704727>,  <36.221085, 30.782009, 29.626091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.379242, 30.619520, 29.704727>,  <36.642838, 30.348705, 29.835787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379242, 30.619520, 29.704727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329931, -0.131274, -0.934833,
		-0.675931, -0.724144, -0.136868,
		-0.658987, 0.677040, -0.327650,
		36.181545, 30.822632, 29.606432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296482, 30.115528, 29.178221>,  <36.642838, 30.348705, 29.835787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296482, 30.115528, 29.178221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.276001, 30.514923, 29.170252>,  <36.263714, 30.754560, 29.165470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.276001, 30.514923, 29.170252>,  <36.296482, 30.115528, 29.178221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276001, 30.514923, 29.170252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315136, -0.002774, -0.949043,
		-0.947664, -0.054871, -0.314518,
		-0.051202, 0.998490, -0.019920,
		36.260639, 30.814470, 29.164276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989971, 30.191395, 28.579128>,  <36.296482, 30.115528, 29.178221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989971, 30.191395, 28.579128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.136272, 30.552675, 28.668976>,  <36.224052, 30.769444, 28.722885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.136272, 30.552675, 28.668976>,  <35.989971, 30.191395, 28.579128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136272, 30.552675, 28.668976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227174, 0.147406, -0.962634,
		-0.902560, 0.403116, -0.151269,
		0.365755, 0.903199, 0.224620,
		36.245998, 30.823635, 28.736362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685322, 30.724073, 28.131058>,  <35.989971, 30.191395, 28.579128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685322, 30.724073, 28.131058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.051342, 30.820681, 28.260275>,  <36.270954, 30.878645, 28.337805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.051342, 30.820681, 28.260275>,  <35.685322, 30.724073, 28.131058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051342, 30.820681, 28.260275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256865, 0.268560, -0.928384,
		-0.310978, 0.932494, 0.183708,
		0.915048, 0.241518, 0.323041,
		36.325855, 30.893137, 28.357187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855202, 31.395184, 27.855066>,  <35.685322, 30.724073, 28.131058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855202, 31.395184, 27.855066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.229031, 31.284376, 27.944366>,  <36.453327, 31.217892, 27.997948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.229031, 31.284376, 27.944366>,  <35.855202, 31.395184, 27.855066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229031, 31.284376, 27.944366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304716, 0.299317, -0.904189,
		0.183652, 0.913056, 0.364144,
		0.934569, -0.277017, 0.223252,
		36.509403, 31.201271, 28.011343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230614, 31.895935, 27.581068>,  <35.855202, 31.395184, 27.855066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230614, 31.895935, 27.581068> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.479534, 31.588812, 27.642010>,  <36.628887, 31.404539, 27.678576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.479534, 31.588812, 27.642010>,  <36.230614, 31.895935, 27.581068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479534, 31.588812, 27.642010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417250, 0.160691, -0.894473,
		0.662300, 0.620203, 0.420365,
		0.622304, -0.767806, 0.152354,
		36.666225, 31.358471, 27.687716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980209, 32.159790, 27.628561>,  <36.230614, 31.895935, 27.581068>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980209, 32.159790, 27.628561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.989861, 31.774374, 27.521965>,  <36.995651, 31.543125, 27.458008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.989861, 31.774374, 27.521965>,  <36.980209, 32.159790, 27.628561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989861, 31.774374, 27.521965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517463, 0.240114, -0.821327,
		0.855366, -0.118083, 0.504387,
		0.024125, -0.963536, -0.266489,
		36.997097, 31.485313, 27.442019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730175, 31.947903, 27.579849>,  <36.980209, 32.159790, 27.628561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730175, 31.947903, 27.579849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.510197, 31.696642, 27.359674>,  <37.378208, 31.545885, 27.227570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.510197, 31.696642, 27.359674>,  <37.730175, 31.947903, 27.579849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510197, 31.696642, 27.359674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446633, 0.335710, -0.829348,
		0.705744, -0.701943, 0.095930,
		-0.549950, -0.628152, -0.550436,
		37.345211, 31.508196, 27.194544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187721, 31.648478, 27.018101>,  <37.730175, 31.947903, 27.579849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187721, 31.648478, 27.018101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.816700, 31.594866, 26.878571>,  <37.594086, 31.562698, 26.794853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.816700, 31.594866, 26.878571>,  <38.187721, 31.648478, 27.018101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816700, 31.594866, 26.878571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291229, 0.325635, -0.899526,
		0.234149, -0.935948, -0.263012,
		-0.927556, -0.134026, -0.348823,
		37.538433, 31.554657, 26.773924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549179, 31.174599, 27.543495>,  <38.187721, 31.648478, 27.018101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549179, 31.174599, 27.543495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.941853, 31.100145, 27.559740>,  <39.177456, 31.055473, 27.569487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.941853, 31.100145, 27.559740>,  <38.549179, 31.174599, 27.543495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941853, 31.100145, 27.559740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087836, -0.253048, 0.963458,
		-0.169054, -0.949380, -0.264762,
		0.981685, -0.186132, 0.040611,
		39.236359, 31.044306, 27.571922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646275, 30.524010, 28.013958>,  <38.549179, 31.174599, 27.543495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646275, 30.524010, 28.013958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.985741, 30.735535, 28.018360>,  <39.189423, 30.862450, 28.021002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.985741, 30.735535, 28.018360>,  <38.646275, 30.524010, 28.013958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985741, 30.735535, 28.018360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167994, -0.289223, 0.942406,
		0.501537, -0.797941, -0.334291,
		0.848669, 0.528811, 0.011006,
		39.240341, 30.894178, 28.021662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228794, 30.053070, 28.340902>,  <38.646275, 30.524010, 28.013958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228794, 30.053070, 28.340902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.329834, 30.439085, 28.368904>,  <39.390457, 30.670694, 28.385706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.329834, 30.439085, 28.368904>,  <39.228794, 30.053070, 28.340902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329834, 30.439085, 28.368904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317050, -0.150911, 0.936325,
		0.914151, -0.214320, -0.344084,
		0.252600, 0.965035, 0.070005,
		39.405613, 30.728596, 28.389906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895496, 30.043232, 28.566147>,  <39.228794, 30.053070, 28.340902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895496, 30.043232, 28.566147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.721813, 30.385202, 28.679680>,  <39.617603, 30.590385, 28.747801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.721813, 30.385202, 28.679680>,  <39.895496, 30.043232, 28.566147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721813, 30.385202, 28.679680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391119, -0.104913, 0.914341,
		0.811472, 0.508031, -0.288823,
		-0.434212, 0.854926, 0.283834,
		39.591549, 30.641680, 28.764830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362061, 30.332357, 28.998516>,  <39.895496, 30.043232, 28.566147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362061, 30.332357, 28.998516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.043056, 30.561268, 29.074903>,  <39.851654, 30.698614, 29.120737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.043056, 30.561268, 29.074903>,  <40.362061, 30.332357, 28.998516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043056, 30.561268, 29.074903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345971, 0.174504, 0.921875,
		0.494244, 0.801278, -0.337161,
		-0.797513, 0.572278, 0.190971,
		39.803802, 30.732952, 29.132195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629036, 30.844667, 29.539318>,  <40.362061, 30.332357, 28.998516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629036, 30.844667, 29.539318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.231495, 30.835575, 29.582645>,  <39.992970, 30.830120, 29.608643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.231495, 30.835575, 29.582645>,  <40.629036, 30.844667, 29.539318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231495, 30.835575, 29.582645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109588, -0.065046, 0.991847,
		-0.015499, 0.997624, 0.067137,
		-0.993856, -0.022730, 0.108319,
		39.933338, 30.828756, 29.615141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547066, 31.339142, 29.943872>,  <40.629036, 30.844667, 29.539318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547066, 31.339142, 29.943872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.207630, 31.133621, 29.994329>,  <40.003971, 31.010309, 30.024603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.207630, 31.133621, 29.994329>,  <40.547066, 31.339142, 29.943872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207630, 31.133621, 29.994329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062811, 0.138900, 0.988313,
		-0.525319, 0.846590, -0.085596,
		-0.848584, -0.513802, 0.126142,
		39.953056, 30.979481, 30.032171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169388, 31.886414, 30.332279>,  <40.547066, 31.339142, 29.943872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169388, 31.886414, 30.332279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.006767, 31.523756, 30.377377>,  <39.909195, 31.306162, 30.404436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.006767, 31.523756, 30.377377>,  <40.169388, 31.886414, 30.332279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006767, 31.523756, 30.377377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174301, 0.198104, 0.964559,
		-0.896848, 0.372489, -0.238569,
		-0.406549, -0.906646, 0.112744,
		39.884804, 31.251762, 30.411200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605247, 32.072544, 30.773317>,  <40.169388, 31.886414, 30.332279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605247, 32.072544, 30.773317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.691677, 31.683783, 30.810650>,  <39.743534, 31.450525, 30.833050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.691677, 31.683783, 30.810650>,  <39.605247, 32.072544, 30.773317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691677, 31.683783, 30.810650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134469, 0.065056, 0.988780,
		-0.967072, -0.226204, -0.116634,
		0.216078, -0.971905, 0.093331,
		39.756500, 31.392212, 30.838650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124043, 31.748127, 31.242594>,  <39.605247, 32.072544, 30.773317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124043, 31.748127, 31.242594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.437878, 31.500254, 31.250719>,  <39.626179, 31.351530, 31.255594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.437878, 31.500254, 31.250719>,  <39.124043, 31.748127, 31.242594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437878, 31.500254, 31.250719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022471, 0.004318, 0.999738,
		-0.619607, -0.784842, -0.010537,
		0.784591, -0.619682, 0.020311,
		39.673256, 31.314350, 31.256813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935127, 31.066107, 31.590439>,  <39.124043, 31.748127, 31.242594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935127, 31.066107, 31.590439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.328278, 31.125387, 31.634249>,  <39.564167, 31.160955, 31.660534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.328278, 31.125387, 31.634249>,  <38.935127, 31.066107, 31.590439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328278, 31.125387, 31.634249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100064, -0.069865, 0.992525,
		0.154743, -0.986486, -0.053840,
		0.982874, 0.148199, 0.109523,
		39.623138, 31.169847, 31.667105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192791, 30.626339, 32.147964>,  <38.935127, 31.066107, 31.590439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192791, 30.626339, 32.147964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.490921, 30.892611, 32.133205>,  <39.669800, 31.052374, 32.124352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.490921, 30.892611, 32.133205>,  <39.192791, 30.626339, 32.147964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490921, 30.892611, 32.133205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064271, -0.016656, 0.997794,
		0.663594, -0.746054, -0.055198,
		0.745327, 0.665677, -0.036897,
		39.714520, 31.092314, 32.122135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711575, 30.385763, 32.697086>,  <39.192791, 30.626339, 32.147964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711575, 30.385763, 32.697086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.794651, 30.770943, 32.628281>,  <39.844498, 31.002050, 32.586998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.794651, 30.770943, 32.628281>,  <39.711575, 30.385763, 32.697086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794651, 30.770943, 32.628281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089250, 0.156462, 0.983643,
		0.974113, -0.219650, -0.053447,
		0.207695, 0.962950, -0.172016,
		39.856960, 31.059828, 32.576675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160660, 30.560255, 33.223457>,  <39.711575, 30.385763, 32.697086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160660, 30.560255, 33.223457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.011581, 30.912285, 33.105770>,  <39.922134, 31.123503, 33.035160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.011581, 30.912285, 33.105770>,  <40.160660, 30.560255, 33.223457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011581, 30.912285, 33.105770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156665, 0.252831, 0.954742,
		0.914633, 0.401923, 0.043648,
		-0.372697, 0.880076, -0.294215,
		39.899773, 31.176308, 33.017506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.990742, 34.246807, 27.573511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.730675, 34.301861, 27.274622>,  <39.574635, 34.334892, 27.095289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.730675, 34.301861, 27.274622>,  <39.990742, 34.246807, 27.573511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730675, 34.301861, 27.274622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735166, -0.134390, -0.664432,
		-0.191868, -0.981323, -0.013808,
		-0.650167, 0.137635, -0.747221,
		39.535625, 34.343151, 27.050455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159149, 33.673954, 26.984114>,  <39.990742, 34.246807, 27.573511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159149, 33.673954, 26.984114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.950935, 33.960995, 26.799032>,  <39.826008, 34.133221, 26.687983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.950935, 33.960995, 26.799032>,  <40.159149, 33.673954, 26.984114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950935, 33.960995, 26.799032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665781, 0.001834, -0.746145,
		-0.534585, -0.696453, -0.478720,
		-0.520532, 0.717600, -0.462704,
		39.794777, 34.176273, 26.660221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137802, 33.461872, 26.372717>,  <40.159149, 33.673954, 26.984114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137802, 33.461872, 26.372717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.059311, 33.848335, 26.305752>,  <40.012215, 34.080215, 26.265574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.059311, 33.848335, 26.305752>,  <40.137802, 33.461872, 26.372717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059311, 33.848335, 26.305752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788383, 0.053935, -0.612816,
		-0.583050, -0.252235, -0.772289,
		-0.196227, 0.966162, -0.167411,
		40.000443, 34.138184, 26.255527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054504, 33.496738, 25.606733>,  <40.137802, 33.461872, 26.372717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054504, 33.496738, 25.606733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.134850, 33.859863, 25.753996>,  <40.183056, 34.077736, 25.842354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.134850, 33.859863, 25.753996>,  <40.054504, 33.496738, 25.606733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134850, 33.859863, 25.753996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707194, 0.125687, -0.695759,
		-0.677888, 0.400106, -0.616752,
		0.200860, 0.907809, 0.368154,
		40.195107, 34.132206, 25.864443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966465, 33.930019, 25.065546>,  <40.054504, 33.496738, 25.606733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966465, 33.930019, 25.065546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.190834, 34.115479, 25.339886>,  <40.325455, 34.226753, 25.504490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.190834, 34.115479, 25.339886>,  <39.966465, 33.930019, 25.065546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190834, 34.115479, 25.339886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591560, 0.355089, -0.723857,
		-0.579154, 0.811752, -0.075097,
		0.560926, 0.463649, 0.685851,
		40.359112, 34.254574, 25.545641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227360, 34.497601, 24.696312>,  <39.966465, 33.930019, 25.065546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227360, 34.497601, 24.696312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.458900, 34.452942, 25.019413>,  <40.597824, 34.426147, 25.213274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.458900, 34.452942, 25.019413>,  <40.227360, 34.497601, 24.696312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458900, 34.452942, 25.019413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814721, 0.120506, -0.567193,
		-0.034015, 0.986414, 0.160715,
		0.578855, -0.111645, 0.807752,
		40.632557, 34.419449, 25.261738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626205, 35.173298, 24.768757>,  <40.227360, 34.497601, 24.696312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626205, 35.173298, 24.768757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.812435, 34.862892, 24.938955>,  <40.924175, 34.676651, 25.041075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.812435, 34.862892, 24.938955>,  <40.626205, 35.173298, 24.768757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812435, 34.862892, 24.938955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793347, 0.152878, -0.589262,
		0.392224, 0.611913, 0.686821,
		0.465577, -0.776010, 0.425497,
		40.952106, 34.630089, 25.066605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260822, 35.338753, 25.110588>,  <40.626205, 35.173298, 24.768757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260822, 35.338753, 25.110588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.332531, 34.945930, 25.087172>,  <41.375557, 34.710236, 25.073122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.332531, 34.945930, 25.087172>,  <41.260822, 35.338753, 25.110588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332531, 34.945930, 25.087172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810391, 0.181150, -0.557182,
		0.557789, 0.052445, 0.828325,
		0.179273, -0.982056, -0.058542,
		41.386314, 34.651314, 25.069609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020653, 35.291107, 25.204821>,  <41.260822, 35.338753, 25.110588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020653, 35.291107, 25.204821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.910915, 34.939583, 25.048656>,  <41.845074, 34.728668, 24.954958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.910915, 34.939583, 25.048656>,  <42.020653, 35.291107, 25.204821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910915, 34.939583, 25.048656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863933, -0.046946, -0.501414,
		0.422322, -0.474848, 0.772116,
		-0.274343, -0.878815, -0.390410,
		41.828613, 34.675938, 24.931534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633057, 34.761837, 25.264776>,  <42.020653, 35.291107, 25.204821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633057, 34.761837, 25.264776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.384209, 34.641609, 24.975605>,  <42.234901, 34.569473, 24.802101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.384209, 34.641609, 24.975605>,  <42.633057, 34.761837, 25.264776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384209, 34.641609, 24.975605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782157, -0.197768, -0.590863,
		0.034621, -0.933032, 0.358125,
		-0.622119, -0.300566, -0.722930,
		42.197575, 34.551441, 24.758726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097603, 34.355968, 24.924088>,  <42.633057, 34.761837, 25.264776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097603, 34.355968, 24.924088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.796734, 34.387192, 24.662357>,  <42.616211, 34.405926, 24.505320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.796734, 34.387192, 24.662357>,  <43.097603, 34.355968, 24.924088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796734, 34.387192, 24.662357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638467, -0.159397, -0.752962,
		-0.163103, -0.984120, 0.070030,
		-0.752168, 0.078099, -0.654327,
		42.571083, 34.410610, 24.466061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300297, 34.089615, 24.343401>,  <43.097603, 34.355968, 24.924088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300297, 34.089615, 24.343401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.996269, 34.282726, 24.169399>,  <42.813854, 34.398594, 24.064999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.996269, 34.282726, 24.169399>,  <43.300297, 34.089615, 24.343401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996269, 34.282726, 24.169399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595812, 0.250458, -0.763072,
		-0.259444, -0.839165, -0.478008,
		-0.760064, 0.482777, -0.435004,
		42.768250, 34.427559, 24.038898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.420654, 33.421700, 24.572540>,  <43.300297, 34.089615, 24.343401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.420654, 33.421700, 24.572540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.740570, 33.517021, 24.792921>,  <43.932518, 33.574215, 24.925150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.740570, 33.517021, 24.792921>,  <43.420654, 33.421700, 24.572540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740570, 33.517021, 24.792921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585249, -0.105432, -0.803970,
		-0.133502, 0.965450, -0.223791,
		0.799788, 0.238305, 0.550953,
		43.980507, 33.588512, 24.958206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277519, 32.803825, 24.107376>,  <43.420654, 33.421700, 24.572540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277519, 32.803825, 24.107376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.151535, 32.750969, 23.731432>,  <43.075943, 32.719257, 23.505865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.151535, 32.750969, 23.731432>,  <43.277519, 32.803825, 24.107376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151535, 32.750969, 23.731432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239898, 0.947022, -0.213538,
		0.918286, -0.292728, -0.266576,
		-0.314961, -0.132138, -0.939861,
		43.057045, 32.711327, 23.449474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693241, 33.281300, 23.864853>,  <43.277519, 32.803825, 24.107376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693241, 33.281300, 23.864853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.581852, 33.050995, 23.557360>,  <42.515018, 32.912811, 23.372864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.581852, 33.050995, 23.557360>,  <42.693241, 33.281300, 23.864853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581852, 33.050995, 23.557360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413392, -0.650605, 0.637040,
		-0.866926, 0.495186, -0.056841,
		-0.278472, -0.575764, -0.768732,
		42.498310, 32.878265, 23.326740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928162, 33.156219, 23.926910>,  <42.693241, 33.281300, 23.864853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928162, 33.156219, 23.926910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.085770, 32.854664, 23.716618>,  <42.180336, 32.673729, 23.590443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.085770, 32.854664, 23.716618>,  <41.928162, 33.156219, 23.926910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085770, 32.854664, 23.716618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527757, -0.653889, 0.542127,
		-0.752475, 0.063848, -0.655519,
		0.394023, -0.753892, -0.525731,
		42.203976, 32.628498, 23.558899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392540, 32.825172, 23.871969>,  <41.928162, 33.156219, 23.926910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392540, 32.825172, 23.871969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.687931, 32.560963, 23.817778>,  <41.865166, 32.402435, 23.785263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.687931, 32.560963, 23.817778>,  <41.392540, 32.825172, 23.871969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687931, 32.560963, 23.817778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340552, -0.538784, 0.770543,
		-0.581964, -0.522886, -0.622823,
		0.738473, -0.660532, -0.135483,
		41.909473, 32.362804, 23.777134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053143, 32.287937, 23.842737>,  <41.392540, 32.825172, 23.871969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053143, 32.287937, 23.842737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.426281, 32.188118, 23.946684>,  <41.650162, 32.128227, 24.009052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.426281, 32.188118, 23.946684>,  <41.053143, 32.287937, 23.842737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426281, 32.188118, 23.946684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358959, -0.581895, 0.729758,
		-0.030897, -0.774030, -0.632394,
		0.932842, -0.249551, 0.259867,
		41.706135, 32.113251, 24.024643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931644, 31.620388, 23.898603>,  <41.053143, 32.287937, 23.842737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931644, 31.620388, 23.898603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.277168, 31.692167, 24.086912>,  <41.484482, 31.735235, 24.199898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.277168, 31.692167, 24.086912>,  <40.931644, 31.620388, 23.898603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277168, 31.692167, 24.086912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370280, -0.407522, 0.834756,
		0.341645, -0.895391, -0.285577,
		0.863812, 0.179447, 0.470773,
		41.536312, 31.746000, 24.228144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977482, 31.085588, 24.229221>,  <40.931644, 31.620388, 23.898603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977482, 31.085588, 24.229221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.249218, 31.317064, 24.409716>,  <41.412258, 31.455950, 24.518013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.249218, 31.317064, 24.409716>,  <40.977482, 31.085588, 24.229221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249218, 31.317064, 24.409716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388207, -0.238411, 0.890200,
		0.622729, -0.779922, 0.062689,
		0.679340, 0.578689, 0.451237,
		41.453022, 31.490671, 24.545086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332378, 30.644793, 24.730997>,  <40.977482, 31.085588, 24.229221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332378, 30.644793, 24.730997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.360271, 31.013363, 24.883896>,  <41.377007, 31.234505, 24.975636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.360271, 31.013363, 24.883896>,  <41.332378, 30.644793, 24.730997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360271, 31.013363, 24.883896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425109, -0.319198, 0.846992,
		0.902452, -0.221559, 0.369449,
		0.069731, 0.921425, 0.382247,
		41.381191, 31.289791, 24.998569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505814, 30.562780, 25.460600>,  <41.332378, 30.644793, 24.730997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505814, 30.562780, 25.460600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.375309, 30.939705, 25.430660>,  <41.297005, 31.165859, 25.412697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.375309, 30.939705, 25.430660>,  <41.505814, 30.562780, 25.460600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.375309, 30.939705, 25.430660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425713, -0.075774, 0.901680,
		0.843992, 0.326047, 0.425877,
		-0.326260, 0.942312, -0.074849,
		41.277431, 31.222399, 25.408205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572159, 30.822134, 26.164572>,  <41.505814, 30.562780, 25.460600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572159, 30.822134, 26.164572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.324490, 31.075434, 25.978832>,  <41.175888, 31.227413, 25.867390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.324490, 31.075434, 25.978832>,  <41.572159, 30.822134, 26.164572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324490, 31.075434, 25.978832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630870, -0.049043, 0.774337,
		0.467576, 0.772391, 0.429865,
		-0.619173, 0.633251, -0.464347,
		41.138737, 31.265409, 25.839527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378513, 31.374949, 26.620058>,  <41.572159, 30.822134, 26.164572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378513, 31.374949, 26.620058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.071949, 31.354635, 26.363920>,  <40.888012, 31.342447, 26.210238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.071949, 31.354635, 26.363920>,  <41.378513, 31.374949, 26.620058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071949, 31.354635, 26.363920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640162, -0.021878, 0.767928,
		-0.053006, 0.998470, -0.015741,
		-0.766409, -0.050782, -0.640343,
		40.842026, 31.339401, 26.171818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975567, 31.679037, 26.972166>,  <41.378513, 31.374949, 26.620058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975567, 31.679037, 26.972166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.732021, 31.513550, 26.701426>,  <40.585896, 31.414257, 26.538980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.732021, 31.513550, 26.701426>,  <40.975567, 31.679037, 26.972166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732021, 31.513550, 26.701426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729169, -0.044148, 0.682908,
		-0.312411, 0.909335, -0.274789,
		-0.608861, -0.413716, -0.676851,
		40.549362, 31.389435, 26.498371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293079, 32.046059, 26.922007>,  <40.975567, 31.679037, 26.972166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293079, 32.046059, 26.922007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.220829, 31.670855, 26.803680>,  <40.177479, 31.445732, 26.732685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.220829, 31.670855, 26.803680>,  <40.293079, 32.046059, 26.922007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220829, 31.670855, 26.803680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777320, -0.048134, 0.627262,
		-0.602618, 0.343241, -0.720442,
		-0.180624, -0.938013, -0.295815,
		40.166641, 31.389450, 26.714935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627148, 32.052029, 26.993982>,  <40.293079, 32.046059, 26.922007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627148, 32.052029, 26.993982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.699097, 31.660191, 26.958113>,  <39.742268, 31.425089, 26.936590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.699097, 31.660191, 26.958113>,  <39.627148, 32.052029, 26.993982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699097, 31.660191, 26.958113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701613, -0.191660, 0.686299,
		-0.689481, -0.060531, -0.721770,
		0.179877, -0.979593, -0.089676,
		39.753059, 31.366312, 26.931210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916477, 31.726250, 26.878607>,  <39.627148, 32.052029, 26.993982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916477, 31.726250, 26.878607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.188087, 31.464159, 27.011036>,  <39.351051, 31.306904, 27.090492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.188087, 31.464159, 27.011036>,  <38.916477, 31.726250, 26.878607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188087, 31.464159, 27.011036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634518, -0.297015, 0.713561,
		-0.369212, -0.694592, -0.617433,
		0.679021, -0.655228, 0.331070,
		39.391792, 31.267591, 27.110357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383419, 31.358486, 26.372908>,  <38.916477, 31.726250, 26.878607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383419, 31.358486, 26.372908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.998947, 31.460524, 26.330837>,  <37.768265, 31.521746, 26.305595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.998947, 31.460524, 26.330837>,  <38.383419, 31.358486, 26.372908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998947, 31.460524, 26.330837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194012, 0.353769, -0.914990,
		-0.196199, -0.899875, -0.389527,
		-0.961179, 0.255093, -0.105177,
		37.710594, 31.537052, 26.299284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167648, 31.103014, 25.787987>,  <38.383419, 31.358486, 26.372908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167648, 31.103014, 25.787987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.868252, 31.362244, 25.844221>,  <37.688614, 31.517782, 25.877962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.868252, 31.362244, 25.844221>,  <38.167648, 31.103014, 25.787987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868252, 31.362244, 25.844221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100361, 0.320258, -0.941999,
		-0.655510, -0.690966, -0.304750,
		-0.748489, 0.648075, 0.140586,
		37.643703, 31.556665, 25.886396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636692, 31.158350, 25.128609>,  <38.167648, 31.103014, 25.787987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636692, 31.158350, 25.128609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.586300, 31.509411, 25.313589>,  <37.556065, 31.720047, 25.424578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.586300, 31.509411, 25.313589>,  <37.636692, 31.158350, 25.128609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586300, 31.509411, 25.313589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162339, 0.478118, -0.863162,
		-0.978660, -0.033670, -0.202711,
		-0.125982, 0.877650, 0.462449,
		37.548504, 31.772705, 25.452324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257462, 31.636612, 24.695501>,  <37.636692, 31.158350, 25.128609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257462, 31.636612, 24.695501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.464237, 31.876091, 24.940235>,  <37.588303, 32.019779, 25.087074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.464237, 31.876091, 24.940235>,  <37.257462, 31.636612, 24.695501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464237, 31.876091, 24.940235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398975, 0.463852, -0.790987,
		-0.757362, 0.652995, 0.000916,
		0.516935, 0.598698, 0.611832,
		37.619316, 32.055702, 25.123785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405621, 32.139206, 24.188610>,  <37.257462, 31.636612, 24.695501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405621, 32.139206, 24.188610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.628838, 32.301983, 24.477882>,  <37.762768, 32.399651, 24.651445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.628838, 32.301983, 24.477882>,  <37.405621, 32.139206, 24.188610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628838, 32.301983, 24.477882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330057, 0.690745, -0.643377,
		-0.761351, 0.597720, 0.251147,
		0.558038, 0.406943, 0.723181,
		37.796249, 32.424065, 24.694838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374142, 32.961563, 24.212389>,  <37.405621, 32.139206, 24.188610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374142, 32.961563, 24.212389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.734386, 32.876568, 24.364048>,  <37.950531, 32.825569, 24.455044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.734386, 32.876568, 24.364048>,  <37.374142, 32.961563, 24.212389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734386, 32.876568, 24.364048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421947, 0.636661, -0.645465,
		-0.104236, 0.741292, 0.663040,
		0.900609, -0.212487, 0.379149,
		38.004570, 32.812820, 24.477793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746166, 33.572521, 24.145733>,  <37.374142, 32.961563, 24.212389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746166, 33.572521, 24.145733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.009178, 33.271931, 24.167406>,  <38.166985, 33.091576, 24.180410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.009178, 33.271931, 24.167406>,  <37.746166, 33.572521, 24.145733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009178, 33.271931, 24.167406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583538, 0.462450, -0.667550,
		0.476593, 0.470551, 0.742591,
		0.657527, -0.751480, 0.054184,
		38.206436, 33.046486, 24.183661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805573, 34.044472, 24.800629>,  <37.746166, 33.572521, 24.145733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805573, 34.044472, 24.800629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.522274, 34.302887, 24.686777>,  <37.352295, 34.457935, 24.618465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.522274, 34.302887, 24.686777>,  <37.805573, 34.044472, 24.800629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522274, 34.302887, 24.686777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670699, -0.489919, 0.556904,
		0.220338, 0.585328, 0.780283,
		-0.708247, 0.646042, -0.284631,
		37.309799, 34.496700, 24.601387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586113, 34.464779, 25.359371>,  <37.805573, 34.044472, 24.800629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586113, 34.464779, 25.359371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.279682, 34.462120, 25.102283>,  <37.095825, 34.460526, 24.948030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.279682, 34.462120, 25.102283>,  <37.586113, 34.464779, 25.359371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279682, 34.462120, 25.102283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540474, -0.534535, 0.649738,
		-0.347877, 0.845120, 0.405899,
		-0.766074, -0.006651, -0.642717,
		37.049858, 34.460125, 24.909468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928616, 34.571548, 25.774469>,  <37.586113, 34.464779, 25.359371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928616, 34.571548, 25.774469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.782631, 34.461586, 25.418665>,  <36.695042, 34.395607, 25.205183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.782631, 34.461586, 25.418665>,  <36.928616, 34.571548, 25.774469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782631, 34.461586, 25.418665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721570, -0.520229, 0.456835,
		-0.588336, 0.808572, -0.008500,
		-0.364962, -0.274906, -0.889511,
		36.673141, 34.379116, 25.151812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337948, 34.767944, 25.770901>,  <36.928616, 34.571548, 25.774469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337948, 34.767944, 25.770901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.338440, 34.468967, 25.505169>,  <36.338734, 34.289581, 25.345730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.338440, 34.468967, 25.505169>,  <36.337948, 34.767944, 25.770901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338440, 34.468967, 25.505169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756698, -0.435012, 0.488029,
		-0.653763, 0.502097, -0.566120,
		0.001231, -0.747437, -0.664331,
		36.338810, 34.244736, 25.305870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657936, 34.682178, 25.475649>,  <36.337948, 34.767944, 25.770901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657936, 34.682178, 25.475649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.860466, 34.339397, 25.437145>,  <35.981983, 34.133728, 25.414043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.860466, 34.339397, 25.437145>,  <35.657936, 34.682178, 25.475649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860466, 34.339397, 25.437145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716328, -0.480113, 0.506326,
		-0.480113, -0.187411, -0.856953,
		-0.506326, 0.856953, 0.096261,
		36.012363, 34.082310, 25.408266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066265, 34.258373, 25.525906>,  <35.657936, 34.682178, 25.475649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066265, 34.258373, 25.525906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.361588, 33.990559, 25.558479>,  <35.538780, 33.829872, 25.578024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.361588, 33.990559, 25.558479>,  <35.066265, 34.258373, 25.525906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361588, 33.990559, 25.558479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554432, -0.533714, 0.638556,
		-0.384072, -0.516599, -0.765254,
		0.738305, -0.669533, 0.081435,
		35.583080, 33.789700, 25.582909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727104, 33.651230, 25.507849>,  <35.066265, 34.258373, 25.525906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727104, 33.651230, 25.507849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.077023, 33.587055, 25.690714>,  <35.286972, 33.548550, 25.800432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.077023, 33.587055, 25.690714>,  <34.727104, 33.651230, 25.507849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077023, 33.587055, 25.690714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454467, -0.598768, 0.659497,
		0.167924, -0.784688, -0.596713,
		0.874793, -0.160440, 0.457162,
		35.339458, 33.538921, 25.827862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.948391, 37.470303, 23.041451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.012733, 37.093151, 23.158144>,  <41.051338, 36.866859, 23.228161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.012733, 37.093151, 23.158144>,  <40.948391, 37.470303, 23.041451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012733, 37.093151, 23.158144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553561, 0.158526, 0.817582,
		-0.817126, -0.293008, -0.496439,
		0.160860, -0.942876, 0.291734,
		41.060993, 36.810287, 23.245665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317036, 37.183357, 23.290312>,  <40.948391, 37.470303, 23.041451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317036, 37.183357, 23.290312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.593895, 36.959435, 23.472544>,  <40.760010, 36.825081, 23.581882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.593895, 36.959435, 23.472544>,  <40.317036, 37.183357, 23.290312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593895, 36.959435, 23.472544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499158, 0.084646, 0.862367,
		-0.521319, -0.824291, -0.220843,
		0.692148, -0.559804, 0.455579,
		40.801540, 36.791492, 23.609217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912853, 36.870071, 23.793346>,  <40.317036, 37.183357, 23.290312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912853, 36.870071, 23.793346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.284859, 36.760754, 23.891644>,  <40.508060, 36.695164, 23.950623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.284859, 36.760754, 23.891644>,  <39.912853, 36.870071, 23.793346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284859, 36.760754, 23.891644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255781, -0.001135, 0.966734,
		-0.263920, -0.961931, -0.070958,
		0.930012, -0.273291, 0.245744,
		40.563862, 36.678768, 23.965366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829250, 36.315163, 24.221962>,  <39.912853, 36.870071, 23.793346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829250, 36.315163, 24.221962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.173218, 36.489056, 24.328953>,  <40.379601, 36.593391, 24.393147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.173218, 36.489056, 24.328953>,  <39.829250, 36.315163, 24.221962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173218, 36.489056, 24.328953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235801, -0.126408, 0.963545,
		0.452694, -0.891644, -0.006191,
		0.859922, 0.434731, 0.267475,
		40.431194, 36.619476, 24.409195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011009, 35.863224, 24.794270>,  <39.829250, 36.315163, 24.221962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011009, 35.863224, 24.794270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.216099, 36.206642, 24.795319>,  <40.339153, 36.412693, 24.795948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.216099, 36.206642, 24.795319>,  <40.011009, 35.863224, 24.794270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216099, 36.206642, 24.795319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103785, 0.058946, 0.992851,
		0.852258, -0.509330, 0.119328,
		0.512723, 0.858550, 0.002623,
		40.369915, 36.464207, 24.796106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411243, 35.844193, 25.382858>,  <40.011009, 35.863224, 24.794270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411243, 35.844193, 25.382858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.401211, 36.235142, 25.298851>,  <40.395191, 36.469711, 25.248447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.401211, 36.235142, 25.298851>,  <40.411243, 35.844193, 25.382858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401211, 36.235142, 25.298851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344938, 0.188718, 0.919458,
		0.938290, 0.095507, 0.332400,
		-0.025085, 0.977376, -0.210016,
		40.393684, 36.528355, 25.235846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694111, 36.220882, 26.029205>,  <40.411243, 35.844193, 25.382858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694111, 36.220882, 26.029205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.492840, 36.475300, 25.795195>,  <40.372078, 36.627949, 25.654787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.492840, 36.475300, 25.795195>,  <40.694111, 36.220882, 26.029205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492840, 36.475300, 25.795195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471836, 0.364957, 0.802606,
		0.724003, 0.679893, 0.116469,
		-0.503181, 0.636043, -0.585028,
		40.341885, 36.666111, 25.619686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777443, 36.886715, 26.347504>,  <40.694111, 36.220882, 26.029205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777443, 36.886715, 26.347504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.455772, 36.939884, 26.115770>,  <40.262768, 36.971786, 25.976730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.455772, 36.939884, 26.115770>,  <40.777443, 36.886715, 26.347504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455772, 36.939884, 26.115770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449979, 0.500667, 0.739494,
		0.388347, 0.855374, -0.342815,
		-0.804180, 0.132920, -0.579333,
		40.214520, 36.979759, 25.941971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690819, 37.640652, 26.367723>,  <40.777443, 36.886715, 26.347504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690819, 37.640652, 26.367723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.353218, 37.443218, 26.283792>,  <40.150658, 37.324757, 26.233435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.353218, 37.443218, 26.283792>,  <40.690819, 37.640652, 26.367723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.353218, 37.443218, 26.283792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462480, 0.471661, 0.750765,
		-0.271601, 0.730690, -0.626358,
		-0.844006, -0.493587, -0.209826,
		40.100018, 37.295143, 26.220844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242222, 38.124229, 26.300270>,  <40.690819, 37.640652, 26.367723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242222, 38.124229, 26.300270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.032879, 37.796028, 26.392246>,  <39.907272, 37.599106, 26.447432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.032879, 37.796028, 26.392246>,  <40.242222, 38.124229, 26.300270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032879, 37.796028, 26.392246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288474, 0.424516, 0.858236,
		-0.801799, 0.382832, -0.458867,
		-0.523356, -0.820504, 0.229939,
		39.875874, 37.549877, 26.461227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571457, 38.355480, 26.575871>,  <40.242222, 38.124229, 26.300270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571457, 38.355480, 26.575871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.576180, 37.978516, 26.709570>,  <39.579014, 37.752338, 26.789789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.576180, 37.978516, 26.709570>,  <39.571457, 38.355480, 26.575871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576180, 37.978516, 26.709570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471899, 0.289453, 0.832783,
		-0.881573, -0.167564, -0.441306,
		0.011807, -0.942411, 0.334248,
		39.579723, 37.695793, 26.809845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963360, 38.320168, 26.939558>,  <39.571457, 38.355480, 26.575871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963360, 38.320168, 26.939558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.181671, 38.010208, 27.067093>,  <39.312660, 37.824234, 27.143614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.181671, 38.010208, 27.067093>,  <38.963360, 38.320168, 26.939558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181671, 38.010208, 27.067093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181103, 0.262428, 0.947804,
		-0.818122, -0.575038, 0.002893,
		0.545783, -0.774895, 0.318839,
		39.345406, 37.777740, 27.162745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210541, 38.561913, 26.665545>,  <38.963360, 38.320168, 26.939558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210541, 38.561913, 26.665545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.092529, 38.943272, 26.640293>,  <38.021725, 39.172089, 26.625143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.092529, 38.943272, 26.640293>,  <38.210541, 38.561913, 26.665545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092529, 38.943272, 26.640293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357768, 0.048965, -0.932526,
		-0.885981, -0.297704, -0.355543,
		-0.295026, 0.953402, -0.063127,
		38.004021, 39.229294, 26.621355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633488, 38.494713, 26.295898>,  <38.210541, 38.561913, 26.665545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633488, 38.494713, 26.295898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.848694, 38.830933, 26.270550>,  <37.977818, 39.032665, 26.255341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.848694, 38.830933, 26.270550>,  <37.633488, 38.494713, 26.295898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848694, 38.830933, 26.270550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230884, -0.219254, -0.947956,
		-0.810695, 0.495388, -0.312032,
		0.538020, 0.840546, -0.063371,
		38.010101, 39.083096, 26.251539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553024, 38.692051, 25.610514>,  <37.633488, 38.494713, 26.295898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553024, 38.692051, 25.610514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.862156, 38.923225, 25.715382>,  <38.047634, 39.061928, 25.778303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.862156, 38.923225, 25.715382>,  <37.553024, 38.692051, 25.610514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862156, 38.923225, 25.715382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390746, -0.107818, -0.914162,
		-0.500058, 0.808930, -0.309150,
		0.772825, 0.577933, 0.262171,
		38.094002, 39.096607, 25.794033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564468, 39.199703, 25.132715>,  <37.553024, 38.692051, 25.610514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564468, 39.199703, 25.132715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.932518, 39.205700, 25.289248>,  <38.153347, 39.209297, 25.383167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.932518, 39.205700, 25.289248>,  <37.564468, 39.199703, 25.132715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932518, 39.205700, 25.289248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391309, 0.004559, -0.920248,
		-0.015576, 0.999877, -0.001670,
		0.920127, 0.014987, 0.391332,
		38.208557, 39.210197, 25.406647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875206, 39.588799, 24.625807>,  <37.564468, 39.199703, 25.132715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875206, 39.588799, 24.625807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.168953, 39.439617, 24.852648>,  <38.345203, 39.350109, 24.988752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.168953, 39.439617, 24.852648>,  <37.875206, 39.588799, 24.625807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168953, 39.439617, 24.852648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625051, 0.045891, -0.779234,
		0.264594, 0.926714, 0.266817,
		0.734371, -0.372955, 0.567101,
		38.389263, 39.327732, 25.022778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396011, 40.025517, 24.479673>,  <37.875206, 39.588799, 24.625807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396011, 40.025517, 24.479673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.564644, 39.682724, 24.598234>,  <38.665825, 39.477051, 24.669371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.564644, 39.682724, 24.598234>,  <38.396011, 40.025517, 24.479673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564644, 39.682724, 24.598234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544652, -0.022031, -0.838373,
		0.724997, 0.514882, 0.457467,
		0.421584, -0.856978, 0.296404,
		38.691120, 39.425629, 24.687155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034576, 40.075699, 24.206871>,  <38.396011, 40.025517, 24.479673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034576, 40.075699, 24.206871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.985107, 39.689163, 24.297117>,  <38.955425, 39.457241, 24.351265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.985107, 39.689163, 24.297117>,  <39.034576, 40.075699, 24.206871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985107, 39.689163, 24.297117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398638, -0.256588, -0.880483,
		0.908731, -0.018953, 0.416951,
		-0.123672, -0.966335, 0.225614,
		38.948006, 39.399261, 24.364801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620846, 39.807407, 23.945068>,  <39.034576, 40.075699, 24.206871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620846, 39.807407, 23.945068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.411350, 39.474106, 24.015934>,  <39.285652, 39.274124, 24.058455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.411350, 39.474106, 24.015934>,  <39.620846, 39.807407, 23.945068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411350, 39.474106, 24.015934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484836, -0.462564, -0.742273,
		0.700451, -0.302860, 0.646253,
		-0.523738, -0.833253, 0.177166,
		39.254230, 39.224129, 24.069084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100132, 39.188641, 24.140186>,  <39.620846, 39.807407, 23.945068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100132, 39.188641, 24.140186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.747303, 39.085186, 23.982676>,  <39.535606, 39.023113, 23.888168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.747303, 39.085186, 23.982676>,  <40.100132, 39.188641, 24.140186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747303, 39.085186, 23.982676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470821, -0.513702, -0.717244,
		-0.016781, -0.818058, 0.574892,
		-0.882070, -0.258635, -0.393779,
		39.482681, 39.007595, 23.864542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113422, 38.413719, 24.167786>,  <40.100132, 39.188641, 24.140186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113422, 38.413719, 24.167786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.859779, 38.551788, 23.891016>,  <39.707592, 38.634632, 23.724955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.859779, 38.551788, 23.891016>,  <40.113422, 38.413719, 24.167786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859779, 38.551788, 23.891016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267248, -0.741856, -0.615003,
		-0.725588, -0.574897, 0.378174,
		-0.634114, 0.345173, -0.691921,
		39.669548, 38.655342, 23.683439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975712, 37.831898, 23.791216>,  <40.113422, 38.413719, 24.167786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975712, 37.831898, 23.791216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.843895, 38.105999, 23.531422>,  <39.764805, 38.270458, 23.375546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.843895, 38.105999, 23.531422>,  <39.975712, 37.831898, 23.791216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843895, 38.105999, 23.531422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268751, -0.591370, -0.760298,
		-0.905083, -0.425099, 0.010718,
		-0.329541, 0.685253, -0.649485,
		39.745033, 38.311573, 23.336576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476921, 37.554508, 23.343819>,  <39.975712, 37.831898, 23.791216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476921, 37.554508, 23.343819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.608238, 37.874870, 23.143509>,  <39.687027, 38.067089, 23.023323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.608238, 37.874870, 23.143509>,  <39.476921, 37.554508, 23.343819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608238, 37.874870, 23.143509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069201, -0.549125, -0.832870,
		-0.942037, 0.238773, -0.235698,
		0.328294, 0.800905, -0.500773,
		39.706726, 38.115143, 22.993277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196732, 37.580460, 23.985611>,  <39.476921, 37.554508, 23.343819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196732, 37.580460, 23.985611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.902008, 37.649193, 23.724049>,  <38.725174, 37.690434, 23.567112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.902008, 37.649193, 23.724049>,  <39.196732, 37.580460, 23.985611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902008, 37.649193, 23.724049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421750, -0.872737, 0.245882,
		-0.528438, 0.456952, 0.715506,
		-0.736804, 0.171831, -0.653906,
		38.680965, 37.700741, 23.527876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504200, 37.606060, 24.302555>,  <39.196732, 37.580460, 23.985611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504200, 37.606060, 24.302555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.529045, 37.460068, 23.930979>,  <38.543953, 37.372475, 23.708033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.529045, 37.460068, 23.930979>,  <38.504200, 37.606060, 24.302555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529045, 37.460068, 23.930979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321534, -0.888436, 0.327562,
		-0.944859, 0.278340, -0.172537,
		0.062114, -0.364977, -0.928942,
		38.547680, 37.350574, 23.652296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883652, 37.274979, 24.168600>,  <38.504200, 37.606060, 24.302555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883652, 37.274979, 24.168600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.124859, 37.124828, 23.887045>,  <38.269585, 37.034740, 23.718111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.124859, 37.124828, 23.887045>,  <37.883652, 37.274979, 24.168600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124859, 37.124828, 23.887045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480044, -0.875479, 0.055626,
		-0.637120, 0.304354, -0.708129,
		0.603022, -0.375374, -0.703889,
		38.305767, 37.012215, 23.675879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436195, 36.933651, 23.723312>,  <37.883652, 37.274979, 24.168600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436195, 36.933651, 23.723312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.800999, 36.785892, 23.651999>,  <38.019882, 36.697239, 23.609209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.800999, 36.785892, 23.651999>,  <37.436195, 36.933651, 23.723312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800999, 36.785892, 23.651999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390772, -0.914596, -0.103977,
		-0.124651, 0.164497, -0.978470,
		0.912009, -0.369397, -0.178286,
		38.074600, 36.675072, 23.598513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234734, 36.500725, 23.222582>,  <37.436195, 36.933651, 23.723312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234734, 36.500725, 23.222582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.582817, 36.393028, 23.387623>,  <37.791668, 36.328411, 23.486647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.582817, 36.393028, 23.387623>,  <37.234734, 36.500725, 23.222582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582817, 36.393028, 23.387623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342500, -0.932602, 0.113792,
		0.354156, -0.240339, -0.903776,
		0.870211, -0.269243, 0.412602,
		37.843880, 36.312256, 23.511404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215782, 35.860786, 23.011030>,  <37.234734, 36.500725, 23.222582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215782, 35.860786, 23.011030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.484020, 35.870857, 23.307589>,  <37.644962, 35.876900, 23.485523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.484020, 35.870857, 23.307589>,  <37.215782, 35.860786, 23.011030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484020, 35.870857, 23.307589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271183, -0.921929, 0.276597,
		0.690482, -0.386538, -0.611411,
		0.670592, 0.025181, 0.741398,
		37.685200, 35.878410, 23.530008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525856, 35.214699, 23.016777>,  <37.215782, 35.860786, 23.011030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525856, 35.214699, 23.016777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.616688, 35.356300, 23.379681>,  <37.671185, 35.441261, 23.597422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.616688, 35.356300, 23.379681>,  <37.525856, 35.214699, 23.016777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616688, 35.356300, 23.379681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049236, -0.926229, 0.373731,
		0.972632, -0.129535, -0.192894,
		0.227076, 0.354005, 0.907258,
		37.684811, 35.462502, 23.651857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636318, 34.605366, 23.355263>,  <37.525856, 35.214699, 23.016777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636318, 34.605366, 23.355263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.641716, 34.859554, 23.664064>,  <37.644955, 35.012070, 23.849346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.641716, 34.859554, 23.664064>,  <37.636318, 34.605366, 23.355263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641716, 34.859554, 23.664064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309764, -0.731435, 0.607494,
		0.950718, -0.247335, 0.186979,
		0.013491, 0.635475, 0.772004,
		37.645763, 35.050198, 23.895666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035622, 34.310699, 23.993979>,  <37.636318, 34.605366, 23.355263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035622, 34.310699, 23.993979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.747868, 34.563286, 24.109732>,  <37.575214, 34.714836, 24.179184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.747868, 34.563286, 24.109732>,  <38.035622, 34.310699, 23.993979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747868, 34.563286, 24.109732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444998, -0.738857, 0.506031,
		0.533351, 0.235256, 0.812521,
		-0.719384, 0.631462, 0.289382,
		37.532051, 34.752724, 24.196547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539005, 33.984200, 24.338160>,  <38.035622, 34.310699, 23.993979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539005, 33.984200, 24.338160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.627529, 33.606026, 24.242519>,  <38.680645, 33.379120, 24.185135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.627529, 33.606026, 24.242519>,  <38.539005, 33.984200, 24.338160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627529, 33.606026, 24.242519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740005, 0.322492, -0.590247,
		0.635150, -0.046308, 0.770999,
		0.221308, -0.945439, -0.239099,
		38.693920, 33.322395, 24.170790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340958, 33.913021, 24.322157>,  <38.539005, 33.984200, 24.338160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340958, 33.913021, 24.322157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.194717, 33.611954, 24.103128>,  <39.106972, 33.431313, 23.971712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.194717, 33.611954, 24.103128>,  <39.340958, 33.913021, 24.322157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194717, 33.611954, 24.103128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720110, 0.144010, -0.678751,
		0.589727, -0.642462, 0.489351,
		-0.365601, -0.752665, -0.547570,
		39.085037, 33.386154, 23.938858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855335, 33.474308, 24.275518>,  <39.340958, 33.913021, 24.322157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855335, 33.474308, 24.275518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.611347, 33.405396, 23.966129>,  <39.464954, 33.364048, 23.780497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.611347, 33.405396, 23.966129>,  <39.855335, 33.474308, 24.275518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611347, 33.405396, 23.966129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783411, 0.015714, -0.621306,
		0.119195, -0.984922, 0.125383,
		-0.609967, -0.172283, -0.773471,
		39.428356, 33.353710, 23.734087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182377, 32.941200, 23.913523>,  <39.855335, 33.474308, 24.275518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182377, 32.941200, 23.913523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.924885, 33.138748, 23.679703>,  <39.770390, 33.257278, 23.539412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.924885, 33.138748, 23.679703>,  <40.182377, 32.941200, 23.913523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924885, 33.138748, 23.679703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690505, 0.045598, -0.721889,
		-0.329868, -0.868337, -0.370374,
		-0.643731, 0.493873, -0.584550,
		39.731766, 33.286911, 23.504337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260944, 32.630447, 23.290642>,  <40.182377, 32.941200, 23.913523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260944, 32.630447, 23.290642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.123367, 32.996273, 23.205536>,  <40.040821, 33.215771, 23.154472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.123367, 32.996273, 23.205536>,  <40.260944, 32.630447, 23.290642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123367, 32.996273, 23.205536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693382, 0.094582, -0.714336,
		-0.633184, -0.393221, -0.666675,
		-0.343947, 0.914566, -0.212765,
		40.020184, 33.270641, 23.141706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363659, 32.627773, 22.617748>,  <40.260944, 32.630447, 23.290642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363659, 32.627773, 22.617748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.311604, 33.017216, 22.692739>,  <40.280369, 33.250881, 22.737734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.311604, 33.017216, 22.692739>,  <40.363659, 32.627773, 22.617748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311604, 33.017216, 22.692739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635816, 0.227037, -0.737694,
		-0.760790, 0.023197, -0.648584,
		-0.130140, 0.973610, 0.187476,
		40.272560, 33.309299, 22.748981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209072, 32.943951, 21.958437>,  <40.363659, 32.627773, 22.617748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209072, 32.943951, 21.958437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.328140, 33.244457, 22.194059>,  <40.399582, 33.424763, 22.335432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.328140, 33.244457, 22.194059>,  <40.209072, 32.943951, 21.958437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328140, 33.244457, 22.194059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695280, 0.252221, -0.673031,
		-0.654200, 0.609900, -0.447263,
		0.297672, 0.751270, 0.589054,
		40.417442, 33.469837, 22.370775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277924, 33.590771, 21.605991>,  <40.209072, 32.943951, 21.958437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277924, 33.590771, 21.605991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.530361, 33.635269, 21.913067>,  <40.681824, 33.661968, 22.097311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.530361, 33.635269, 21.913067>,  <40.277924, 33.590771, 21.605991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530361, 33.635269, 21.913067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719056, 0.287357, -0.632759,
		-0.290994, 0.951341, 0.101355,
		0.631095, 0.111249, 0.767687,
		40.719688, 33.668644, 22.143373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410828, 34.253853, 21.782974>,  <40.277924, 33.590771, 21.605991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410828, 34.253853, 21.782974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.707054, 33.994476, 21.853500>,  <40.884789, 33.838852, 21.895817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.707054, 33.994476, 21.853500>,  <40.410828, 34.253853, 21.782974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707054, 33.994476, 21.853500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537702, 0.414446, -0.734242,
		0.403038, 0.638560, 0.655593,
		0.740565, -0.648441, 0.176317,
		40.929222, 33.799946, 21.906395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.532398, 32.308903, 36.881573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863274, 32.188457, 36.691799>,  <36.061798, 32.116192, 36.577934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863274, 32.188457, 36.691799>,  <35.532398, 32.308903, 36.881573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863274, 32.188457, 36.691799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368473, 0.346771, -0.862541,
		0.424240, 0.888303, 0.175895,
		0.827193, -0.301112, -0.474429,
		36.111431, 32.098125, 36.549469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670433, 32.841370, 36.359268>,  <35.532398, 32.308903, 36.881573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670433, 32.841370, 36.359268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.854572, 32.509544, 36.232838>,  <35.965057, 32.310448, 36.156979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.854572, 32.509544, 36.232838>,  <35.670433, 32.841370, 36.359268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854572, 32.509544, 36.232838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358804, 0.151803, -0.920986,
		0.811997, 0.537385, -0.227768,
		0.460348, -0.829562, -0.316080,
		35.992676, 32.260677, 36.138012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828625, 32.989941, 35.691498>,  <35.670433, 32.841370, 36.359268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828625, 32.989941, 35.691498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.892292, 32.595604, 35.670380>,  <35.930492, 32.359001, 35.657711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.892292, 32.595604, 35.670380>,  <35.828625, 32.989941, 35.691498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892292, 32.595604, 35.670380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170706, 0.025187, -0.985000,
		0.972381, 0.165794, -0.164279,
		0.159169, -0.985839, -0.052793,
		35.940044, 32.299850, 35.654541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162155, 32.930012, 35.085941>,  <35.828625, 32.989941, 35.691498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162155, 32.930012, 35.085941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.062439, 32.547203, 35.145210>,  <36.002609, 32.317516, 35.180771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.062439, 32.547203, 35.145210>,  <36.162155, 32.930012, 35.085941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062439, 32.547203, 35.145210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029455, -0.160425, -0.986609,
		0.967981, -0.241588, 0.068182,
		-0.249291, -0.957026, 0.148172,
		35.987652, 32.260094, 35.189663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586246, 32.513630, 34.678997>,  <36.162155, 32.930012, 35.085941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586246, 32.513630, 34.678997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297638, 32.247604, 34.756031>,  <36.124474, 32.087990, 34.802254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297638, 32.247604, 34.756031>,  <36.586246, 32.513630, 34.678997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297638, 32.247604, 34.756031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024578, -0.253374, -0.967056,
		0.691953, -0.702488, 0.166470,
		-0.721525, -0.665066, 0.192589,
		36.081181, 32.048084, 34.813808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749348, 31.907619, 34.340561>,  <36.586246, 32.513630, 34.678997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749348, 31.907619, 34.340561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.351986, 31.903301, 34.386223>,  <36.113567, 31.900709, 34.413620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.351986, 31.903301, 34.386223>,  <36.749348, 31.907619, 34.340561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351986, 31.903301, 34.386223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105345, -0.307108, -0.945826,
		0.045269, -0.951614, 0.303945,
		-0.993405, -0.010798, 0.114151,
		36.053963, 31.900063, 34.420467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546196, 31.241898, 34.000378>,  <36.749348, 31.907619, 34.340561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546196, 31.241898, 34.000378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222633, 31.476370, 34.018562>,  <36.028496, 31.617052, 34.029472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.222633, 31.476370, 34.018562>,  <36.546196, 31.241898, 34.000378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222633, 31.476370, 34.018562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351206, -0.419740, -0.836942,
		-0.471512, -0.692976, 0.545400,
		-0.808907, 0.586176, 0.045465,
		35.979961, 31.652224, 34.032200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055721, 30.839005, 33.678532>,  <36.546196, 31.241898, 34.000378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055721, 30.839005, 33.678532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.906719, 31.210112, 33.669682>,  <35.817318, 31.432775, 33.664371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.906719, 31.210112, 33.669682>,  <36.055721, 30.839005, 33.678532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906719, 31.210112, 33.669682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391941, -0.178890, -0.902431,
		-0.841204, -0.327486, 0.430267,
		-0.372504, 0.927767, -0.022127,
		35.794968, 31.488441, 33.663044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398758, 30.790859, 33.360764>,  <36.055721, 30.839005, 33.678532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398758, 30.790859, 33.360764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534710, 31.160513, 33.290955>,  <35.616280, 31.382305, 33.249069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.534710, 31.160513, 33.290955>,  <35.398758, 30.790859, 33.360764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534710, 31.160513, 33.290955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419115, -0.017291, -0.907769,
		-0.841918, 0.381676, 0.381442,
		0.339878, 0.924134, -0.174524,
		35.636673, 31.437754, 33.238598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793198, 31.220034, 33.086479>,  <35.398758, 30.790859, 33.360764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793198, 31.220034, 33.086479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.112488, 31.425997, 32.961445>,  <35.304062, 31.549576, 32.886425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.112488, 31.425997, 32.961445>,  <34.793198, 31.220034, 33.086479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112488, 31.425997, 32.961445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415228, 0.094411, -0.904805,
		-0.436381, 0.852029, 0.289166,
		0.798221, 0.514910, -0.312587,
		35.351955, 31.580469, 32.867668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549725, 31.450573, 32.384995>,  <34.793198, 31.220034, 33.086479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549725, 31.450573, 32.384995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.935017, 31.553185, 32.353035>,  <35.166191, 31.614752, 32.333858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.935017, 31.553185, 32.353035>,  <34.549725, 31.450573, 32.384995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935017, 31.553185, 32.353035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115542, 0.127002, -0.985150,
		-0.242573, 0.958156, 0.151972,
		0.963228, 0.256530, -0.079900,
		35.223984, 31.630144, 32.329063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584988, 31.999720, 31.919775>,  <34.549725, 31.450573, 32.384995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584988, 31.999720, 31.919775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945538, 31.827679, 31.899603>,  <35.161865, 31.724455, 31.887499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.945538, 31.827679, 31.899603>,  <34.584988, 31.999720, 31.919775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945538, 31.827679, 31.899603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032670, 0.048585, -0.998285,
		0.431813, 0.901473, 0.029741,
		0.901371, -0.430100, -0.050431,
		35.215950, 31.698648, 31.884474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119682, 32.676975, 31.916172>,  <34.584988, 31.999720, 31.919775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119682, 32.676975, 31.916172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.876904, 32.898491, 31.688162>,  <33.731236, 33.031403, 31.551355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.876904, 32.898491, 31.688162>,  <34.119682, 32.676975, 31.916172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876904, 32.898491, 31.688162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490878, 0.302851, 0.816897,
		0.625024, 0.775626, 0.088029,
		-0.606947, 0.553791, -0.570027,
		33.694820, 33.064629, 31.517155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977669, 33.321064, 32.317577>,  <34.119682, 32.676975, 31.916172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977669, 33.321064, 32.317577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.713741, 33.324017, 32.017025>,  <33.555386, 33.325787, 31.836693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.713741, 33.324017, 32.017025>,  <33.977669, 33.321064, 32.317577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713741, 33.324017, 32.017025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616976, 0.565468, 0.547345,
		0.428922, 0.824737, -0.368558,
		-0.659823, 0.007377, -0.751385,
		33.515793, 33.326229, 31.791609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842438, 34.044842, 32.151051>,  <33.977669, 33.321064, 32.317577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842438, 34.044842, 32.151051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553970, 33.794971, 32.031246>,  <33.380890, 33.645050, 31.959364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553970, 33.794971, 32.031246>,  <33.842438, 34.044842, 32.151051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553970, 33.794971, 32.031246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677597, 0.546078, 0.492606,
		-0.144163, 0.558195, -0.817089,
		-0.721165, -0.624673, -0.299507,
		33.337620, 33.607571, 31.941395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369865, 34.456272, 31.884613>,  <33.842438, 34.044842, 32.151051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369865, 34.456272, 31.884613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185650, 34.113358, 31.976673>,  <33.075123, 33.907608, 32.031910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.185650, 34.113358, 31.976673>,  <33.369865, 34.456272, 31.884613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185650, 34.113358, 31.976673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724882, 0.512874, 0.459897,
		-0.512302, 0.044966, -0.857627,
		-0.460535, -0.857285, 0.230151,
		33.047489, 33.856171, 32.045719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536747, 34.568260, 31.804560>,  <33.369865, 34.456272, 31.884613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536747, 34.568260, 31.804560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.573353, 34.232319, 32.018578>,  <32.595318, 34.030754, 32.146988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.573353, 34.232319, 32.018578>,  <32.536747, 34.568260, 31.804560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573353, 34.232319, 32.018578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786775, 0.268378, 0.555840,
		-0.610417, -0.471828, -0.636214,
		0.091515, -0.839852, 0.535045,
		32.600807, 33.980362, 32.179092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850965, 34.370201, 31.925646>,  <32.536747, 34.568260, 31.804560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850965, 34.370201, 31.925646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.094097, 34.206196, 32.197655>,  <32.239975, 34.107792, 32.360859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.094097, 34.206196, 32.197655>,  <31.850965, 34.370201, 31.925646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094097, 34.206196, 32.197655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684685, 0.163126, 0.710350,
		-0.402184, -0.897373, -0.181578,
		0.607828, -0.410015, 0.680024,
		32.276447, 34.083191, 32.401661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412170, 33.996010, 32.252823>,  <31.850965, 34.370201, 31.925646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412170, 33.996010, 32.252823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708754, 34.009087, 32.520905>,  <31.886703, 34.016933, 32.681755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.708754, 34.009087, 32.520905>,  <31.412170, 33.996010, 32.252823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708754, 34.009087, 32.520905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664673, 0.172624, 0.726918,
		-0.091929, -0.984445, 0.149723,
		0.741457, 0.032692, 0.670203,
		31.931190, 34.018894, 32.721966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028269, 33.823952, 32.914185>,  <31.412170, 33.996010, 32.252823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028269, 33.823952, 32.914185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.370508, 33.973621, 33.057262>,  <31.575851, 34.063423, 33.143108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.370508, 33.973621, 33.057262>,  <31.028269, 33.823952, 32.914185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370508, 33.973621, 33.057262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465694, 0.254702, 0.847500,
		0.226007, -0.891696, 0.392173,
		0.855599, 0.374174, 0.357693,
		31.627188, 34.085873, 33.164570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177055, 33.577702, 33.629639>,  <31.028269, 33.823952, 32.914185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177055, 33.577702, 33.629639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.391584, 33.913273, 33.592625>,  <31.520302, 34.114616, 33.570415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.391584, 33.913273, 33.592625>,  <31.177055, 33.577702, 33.629639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391584, 33.913273, 33.592625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495948, 0.401963, 0.769715,
		0.682929, -0.366923, 0.631645,
		0.536324, 0.838924, -0.092537,
		31.552483, 34.164951, 33.564865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485432, 33.845932, 34.305180>,  <31.177055, 33.577702, 33.629639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485432, 33.845932, 34.305180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.433014, 34.147346, 34.047493>,  <31.401564, 34.328194, 33.892883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.433014, 34.147346, 34.047493>,  <31.485432, 33.845932, 34.305180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433014, 34.147346, 34.047493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568556, 0.475211, 0.671505,
		0.812141, 0.454267, 0.366154,
		-0.131042, 0.753536, -0.644214,
		31.393702, 34.373405, 33.854229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477816, 34.492615, 34.732533>,  <31.485432, 33.845932, 34.305180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477816, 34.492615, 34.732533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.335772, 34.628845, 34.384300>,  <31.250546, 34.710583, 34.175362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.335772, 34.628845, 34.384300>,  <31.477816, 34.492615, 34.732533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335772, 34.628845, 34.384300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735336, 0.473259, 0.485084,
		0.577216, 0.812426, 0.082378,
		-0.355109, 0.340574, -0.870579,
		31.229239, 34.731018, 34.123127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161005, 35.111355, 34.882465>,  <31.477816, 34.492615, 34.732533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161005, 35.111355, 34.882465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.990780, 35.026745, 34.530521>,  <30.888645, 34.975979, 34.319355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.990780, 35.026745, 34.530521>,  <31.161005, 35.111355, 34.882465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990780, 35.026745, 34.530521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872587, 0.353540, 0.337048,
		0.239771, 0.911189, -0.335028,
		-0.425560, -0.211527, -0.879860,
		30.863111, 34.963287, 34.266563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732016, 35.718277, 34.709332>,  <31.161005, 35.111355, 34.882465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732016, 35.718277, 34.709332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.577753, 35.471054, 34.435314>,  <30.485195, 35.322720, 34.270905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.577753, 35.471054, 34.435314>,  <30.732016, 35.718277, 34.709332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577753, 35.471054, 34.435314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922349, 0.239554, 0.303127,
		-0.023245, 0.748748, -0.662447,
		-0.385658, -0.618054, -0.685039,
		30.462055, 35.285637, 34.229801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376780, 36.018745, 34.268356>,  <30.732016, 35.718277, 34.709332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376780, 36.018745, 34.268356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.215775, 35.652588, 34.265865>,  <30.119171, 35.432892, 34.264370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.215775, 35.652588, 34.265865>,  <30.376780, 36.018745, 34.268356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215775, 35.652588, 34.265865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854958, 0.373491, 0.359932,
		-0.327152, 0.150205, -0.932958,
		-0.402515, -0.915392, -0.006231,
		30.095020, 35.377972, 34.263996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536880, 36.694984, 34.474808>,  <30.376780, 36.018745, 34.268356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536880, 36.694984, 34.474808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.564528, 37.012089, 34.717049>,  <30.581116, 37.202351, 34.862392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.564528, 37.012089, 34.717049>,  <30.536880, 36.694984, 34.474808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.564528, 37.012089, 34.717049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583506, 0.460258, -0.669091,
		-0.809162, 0.399621, -0.430767,
		0.069119, 0.792758, 0.605605,
		30.585264, 37.249916, 34.898731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308619, 37.357830, 34.155563>,  <30.536880, 36.694984, 34.474808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308619, 37.357830, 34.155563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.608831, 37.427071, 34.410667>,  <30.788960, 37.468613, 34.563728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.608831, 37.427071, 34.410667>,  <30.308619, 37.357830, 34.155563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608831, 37.427071, 34.410667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536928, 0.402869, -0.741219,
		-0.385236, 0.898740, 0.209426,
		0.750534, 0.173098, 0.637758,
		30.833992, 37.479000, 34.601994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698292, 38.068794, 34.434719>,  <30.308619, 37.357830, 34.155563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698292, 38.068794, 34.434719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.978674, 37.786503, 34.393524>,  <31.146902, 37.617126, 34.368805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.978674, 37.786503, 34.393524>,  <30.698292, 38.068794, 34.434719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978674, 37.786503, 34.393524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449013, 0.548867, -0.705076,
		0.554122, 0.447982, 0.701613,
		0.700953, -0.705732, -0.102989,
		31.188959, 37.574783, 34.362629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345158, 38.422817, 34.432652>,  <30.698292, 38.068794, 34.434719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345158, 38.422817, 34.432652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.416668, 38.074947, 34.248604>,  <31.459574, 37.866226, 34.138176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.416668, 38.074947, 34.248604>,  <31.345158, 38.422817, 34.432652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416668, 38.074947, 34.248604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546469, 0.476653, -0.688603,
		0.818175, -0.128331, 0.560465,
		0.178778, -0.869674, -0.460115,
		31.470301, 37.814045, 34.110569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077179, 38.469646, 34.149982>,  <31.345158, 38.422817, 34.432652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077179, 38.469646, 34.149982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.939690, 38.158516, 33.939522>,  <31.857197, 37.971836, 33.813244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.939690, 38.158516, 33.939522>,  <32.077179, 38.469646, 34.149982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939690, 38.158516, 33.939522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470010, 0.342566, -0.813473,
		0.812985, -0.526907, 0.247839,
		-0.343723, -0.777828, -0.526153,
		31.836573, 37.925167, 33.781677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675732, 38.162216, 33.917686>,  <32.077179, 38.469646, 34.149982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675732, 38.162216, 33.917686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.388592, 38.004177, 33.688396>,  <32.216309, 37.909351, 33.550823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.388592, 38.004177, 33.688396>,  <32.675732, 38.162216, 33.917686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388592, 38.004177, 33.688396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516626, 0.249616, -0.819018,
		0.466681, -0.884074, 0.024933,
		-0.717849, -0.395101, -0.573227,
		32.173237, 37.885647, 33.516430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960667, 37.533772, 33.545883>,  <32.675732, 38.162216, 33.917686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960667, 37.533772, 33.545883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647335, 37.682037, 33.346283>,  <32.459335, 37.770996, 33.226524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647335, 37.682037, 33.346283>,  <32.960667, 37.533772, 33.545883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647335, 37.682037, 33.346283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593214, 0.205927, -0.778262,
		-0.185719, -0.905648, -0.381194,
		-0.783330, 0.370668, -0.498998,
		32.412334, 37.793236, 33.196583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019760, 37.114189, 32.842766>,  <32.960667, 37.533772, 33.545883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019760, 37.114189, 32.842766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.778103, 37.427128, 32.782181>,  <32.633106, 37.614891, 32.745831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.778103, 37.427128, 32.782181>,  <33.019760, 37.114189, 32.842766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778103, 37.427128, 32.782181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433605, 0.163276, -0.886187,
		-0.668576, -0.601061, -0.437872,
		-0.604146, 0.782347, -0.151460,
		32.596859, 37.661831, 32.736744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819698, 37.118397, 32.135868>,  <33.019760, 37.114189, 32.842766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819698, 37.118397, 32.135868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.738991, 37.492607, 32.251862>,  <32.690567, 37.717133, 32.321457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.738991, 37.492607, 32.251862>,  <32.819698, 37.118397, 32.135868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738991, 37.492607, 32.251862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435322, 0.350877, -0.829084,
		-0.877374, -0.041045, -0.478049,
		-0.201767, 0.935521, 0.289983,
		32.678459, 37.773262, 32.338856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594723, 37.566303, 31.469635>,  <32.819698, 37.118397, 32.135868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594723, 37.566303, 31.469635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754326, 37.818558, 31.735897>,  <32.850086, 37.969910, 31.895655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754326, 37.818558, 31.735897>,  <32.594723, 37.566303, 31.469635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754326, 37.818558, 31.735897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329238, 0.579006, -0.745892,
		-0.855802, 0.516774, 0.023398,
		0.399005, 0.630632, 0.665656,
		32.874027, 38.007748, 31.935595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530296, 38.229420, 31.166124>,  <32.594723, 37.566303, 31.469635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530296, 38.229420, 31.166124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.790844, 38.323494, 31.454679>,  <32.947174, 38.379936, 31.627813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.790844, 38.323494, 31.454679>,  <32.530296, 38.229420, 31.166124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790844, 38.323494, 31.454679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514420, 0.561999, -0.647711,
		-0.557750, 0.792998, 0.245089,
		0.651373, 0.235182, 0.721389,
		32.986256, 38.394047, 31.671097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549229, 39.014923, 31.198997>,  <32.530296, 38.229420, 31.166124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549229, 39.014923, 31.198997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.887653, 38.859142, 31.344604>,  <33.090706, 38.765675, 31.431969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.887653, 38.859142, 31.344604>,  <32.549229, 39.014923, 31.198997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887653, 38.859142, 31.344604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532622, 0.588983, -0.607793,
		0.022306, 0.708114, 0.705746,
		0.846059, -0.389453, 0.364019,
		33.141472, 38.742306, 31.453810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029736, 39.588535, 31.160706>,  <32.549229, 39.014923, 31.198997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029736, 39.588535, 31.160706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.251759, 39.262299, 31.226082>,  <33.384972, 39.066555, 31.265308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.251759, 39.262299, 31.226082>,  <33.029736, 39.588535, 31.160706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251759, 39.262299, 31.226082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747776, 0.403197, -0.527507,
		0.364333, 0.415016, 0.833680,
		0.555061, -0.815594, 0.163441,
		33.418278, 39.017620, 31.275114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633514, 39.814804, 31.322950>,  <33.029736, 39.588535, 31.160706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633514, 39.814804, 31.322950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716537, 39.444252, 31.197260>,  <33.766354, 39.221920, 31.121845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716537, 39.444252, 31.197260>,  <33.633514, 39.814804, 31.322950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716537, 39.444252, 31.197260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825414, 0.338247, -0.451973,
		0.524985, -0.165554, 0.834855,
		0.207562, -0.926380, -0.314225,
		33.778805, 39.166336, 31.102993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408783, 39.800320, 31.358873>,  <33.633514, 39.814804, 31.322950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408783, 39.800320, 31.358873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315075, 39.487385, 31.128025>,  <34.258850, 39.299625, 30.989517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.315075, 39.487385, 31.128025>,  <34.408783, 39.800320, 31.358873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315075, 39.487385, 31.128025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830246, 0.147838, -0.537434,
		0.505774, -0.605057, 0.614897,
		-0.234273, -0.782336, -0.577119,
		34.244793, 39.252686, 30.954889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977486, 39.391506, 31.299818>,  <34.408783, 39.800320, 31.358873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977486, 39.391506, 31.299818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749371, 39.289997, 30.987314>,  <34.612499, 39.229092, 30.799812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749371, 39.289997, 30.987314>,  <34.977486, 39.391506, 31.299818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749371, 39.289997, 30.987314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803360, 0.026159, -0.594919,
		0.171409, -0.966911, 0.188950,
		-0.570291, -0.253769, -0.781261,
		34.578281, 39.213867, 30.752935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395485, 38.890167, 30.991985>,  <34.977486, 39.391506, 31.299818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395485, 38.890167, 30.991985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.134598, 39.012245, 30.714436>,  <34.978065, 39.085491, 30.547905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.134598, 39.012245, 30.714436>,  <35.395485, 38.890167, 30.991985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134598, 39.012245, 30.714436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716363, -0.051139, -0.695852,
		-0.247855, -0.950916, -0.185277,
		-0.652221, 0.305195, -0.693875,
		34.938931, 39.103802, 30.506273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570454, 38.549397, 30.334387>,  <35.395485, 38.890167, 30.991985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570454, 38.549397, 30.334387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338753, 38.835152, 30.177355>,  <35.199730, 39.006603, 30.083136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.338753, 38.835152, 30.177355>,  <35.570454, 38.549397, 30.334387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338753, 38.835152, 30.177355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650229, 0.114502, -0.751060,
		-0.491596, -0.690320, -0.530841,
		-0.579254, 0.714386, -0.392578,
		35.164978, 39.049469, 30.059582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375813, 38.401649, 29.638597>,  <35.570454, 38.549397, 30.334387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375813, 38.401649, 29.638597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.359573, 38.800667, 29.661449>,  <35.349831, 39.040077, 29.675161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.359573, 38.800667, 29.661449>,  <35.375813, 38.401649, 29.638597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359573, 38.800667, 29.661449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571240, 0.070082, -0.817786,
		-0.819778, -0.000562, -0.572681,
		-0.040594, 0.997541, 0.057130,
		35.347397, 39.099930, 29.678589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255028, 38.616222, 28.947151>,  <35.375813, 38.401649, 29.638597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255028, 38.616222, 28.947151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.392235, 38.938133, 29.140923>,  <35.474560, 39.131279, 29.257185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.392235, 38.938133, 29.140923>,  <35.255028, 38.616222, 28.947151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392235, 38.938133, 29.140923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634930, 0.181412, -0.750969,
		-0.692245, 0.565172, -0.448751,
		0.343018, 0.804779, 0.484426,
		35.495140, 39.179565, 29.286251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266090, 39.024780, 28.389118>,  <35.255028, 38.616222, 28.947151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266090, 39.024780, 28.389118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.493034, 39.216820, 28.656733>,  <35.629200, 39.332043, 28.817301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.493034, 39.216820, 28.656733>,  <35.266090, 39.024780, 28.389118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493034, 39.216820, 28.656733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551276, 0.382098, -0.741684,
		-0.611719, 0.789625, -0.047880,
		0.567358, 0.480097, 0.669038,
		35.663242, 39.360847, 28.857445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334309, 39.787434, 28.177523>,  <35.266090, 39.024780, 28.389118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334309, 39.787434, 28.177523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646278, 39.673832, 28.400612>,  <35.833462, 39.605671, 28.534466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646278, 39.673832, 28.400612>,  <35.334309, 39.787434, 28.177523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646278, 39.673832, 28.400612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625650, 0.377568, -0.682645,
		-0.016704, 0.881353, 0.472163,
		0.779925, -0.284005, 0.557725,
		35.880257, 39.588631, 28.567930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867298, 40.269356, 28.025173>,  <35.334309, 39.787434, 28.177523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867298, 40.269356, 28.025173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095642, 39.999268, 28.212021>,  <36.232647, 39.837215, 28.324129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095642, 39.999268, 28.212021>,  <35.867298, 40.269356, 28.025173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095642, 39.999268, 28.212021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724490, 0.146568, -0.673522,
		0.386311, 0.722908, 0.572860,
		0.570858, -0.675220, 0.467119,
		36.266899, 39.796703, 28.352156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553387, 40.540871, 27.967754>,  <35.867298, 40.269356, 28.025173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553387, 40.540871, 27.967754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.609600, 40.157223, 28.066010>,  <36.643326, 39.927032, 28.124962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.609600, 40.157223, 28.066010>,  <36.553387, 40.540871, 27.967754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609600, 40.157223, 28.066010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758201, -0.055293, -0.649673,
		0.636697, 0.277541, 0.719436,
		0.140531, -0.959121, 0.245636,
		36.651760, 39.869488, 28.139700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233974, 40.410522, 28.239035>,  <36.553387, 40.540871, 27.967754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233974, 40.410522, 28.239035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.110104, 40.063183, 28.084082>,  <37.035782, 39.854778, 27.991110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.110104, 40.063183, 28.084082>,  <37.233974, 40.410522, 28.239035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110104, 40.063183, 28.084082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774471, 0.006008, -0.632580,
		0.551631, -0.495911, 0.670654,
		-0.309674, -0.868353, -0.387383,
		37.017200, 39.802677, 27.967867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830120, 40.046188, 28.105904>,  <37.233974, 40.410522, 28.239035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830120, 40.046188, 28.105904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.549946, 39.849670, 27.898825>,  <37.381840, 39.731758, 27.774576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.549946, 39.849670, 27.898825>,  <37.830120, 40.046188, 28.105904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549946, 39.849670, 27.898825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651374, -0.143571, -0.745050,
		0.291714, -0.859078, 0.420581,
		-0.700439, -0.491297, -0.517699,
		37.339813, 39.702282, 27.743515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202091, 39.430099, 27.803658>,  <37.830120, 40.046188, 28.105904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202091, 39.430099, 27.803658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.878155, 39.485497, 27.575630>,  <37.683792, 39.518734, 27.438814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.878155, 39.485497, 27.575630>,  <38.202091, 39.430099, 27.803658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878155, 39.485497, 27.575630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518682, -0.284977, -0.806075,
		-0.274091, -0.948476, 0.158954,
		-0.809842, 0.138492, -0.570067,
		37.635201, 39.527042, 27.404610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152538, 38.777878, 27.342760>,  <38.202091, 39.430099, 27.803658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152538, 38.777878, 27.342760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.962872, 39.070560, 27.146893>,  <37.849072, 39.246170, 27.029373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.962872, 39.070560, 27.146893>,  <38.152538, 38.777878, 27.342760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962872, 39.070560, 27.146893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464664, -0.264427, -0.845083,
		-0.747835, -0.628238, -0.214617,
		-0.474163, 0.731707, -0.489667,
		37.820621, 39.290073, 26.999992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483837, 38.042931, 27.392384>,  <38.152538, 38.777878, 27.342760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483837, 38.042931, 27.392384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.819260, 37.843254, 27.479685>,  <39.020512, 37.723446, 27.532064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.819260, 37.843254, 27.479685>,  <38.483837, 38.042931, 27.392384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819260, 37.843254, 27.479685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296593, -0.082239, 0.951456,
		-0.457012, -0.862579, -0.217019,
		0.838554, -0.499193, 0.218251,
		39.070827, 37.693497, 27.545160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299129, 37.442627, 27.710342>,  <38.483837, 38.042931, 27.392384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299129, 37.442627, 27.710342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673145, 37.518280, 27.830288>,  <38.897556, 37.563671, 27.902256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673145, 37.518280, 27.830288>,  <38.299129, 37.442627, 27.710342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673145, 37.518280, 27.830288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287259, -0.091539, 0.953469,
		0.207786, -0.977675, -0.031262,
		0.935044, 0.189137, 0.299866,
		38.953659, 37.575020, 27.920248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325420, 37.016296, 28.272282>,  <38.299129, 37.442627, 27.710342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325420, 37.016296, 28.272282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.594097, 37.310513, 28.307638>,  <38.755302, 37.487041, 28.328852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.594097, 37.310513, 28.307638>,  <38.325420, 37.016296, 28.272282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594097, 37.310513, 28.307638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336462, 0.196585, 0.920949,
		0.660020, -0.648331, 0.379526,
		0.671689, 0.735541, 0.088389,
		38.795605, 37.531174, 28.334154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733601, 36.925602, 28.936323>,  <38.325420, 37.016296, 28.272282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733601, 36.925602, 28.936323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.774357, 37.307159, 28.823395>,  <38.798809, 37.536095, 28.755638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.774357, 37.307159, 28.823395>,  <38.733601, 36.925602, 28.936323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774357, 37.307159, 28.823395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385819, 0.299476, 0.872616,
		0.916931, 0.020014, 0.398544,
		0.101889, 0.953894, -0.282320,
		38.804924, 37.593327, 28.738699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046066, 37.156204, 29.438480>,  <38.733601, 36.925602, 28.936323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046066, 37.156204, 29.438480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.845062, 37.451782, 29.258947>,  <38.724461, 37.629128, 29.151228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.845062, 37.451782, 29.258947>,  <39.046066, 37.156204, 29.438480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845062, 37.451782, 29.258947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409954, 0.253414, 0.876196,
		0.761200, 0.624293, 0.175591,
		-0.502506, 0.738945, -0.448830,
		38.694309, 37.673466, 29.124298>
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
