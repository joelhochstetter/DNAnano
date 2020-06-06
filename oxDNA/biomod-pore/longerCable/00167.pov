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
	<24.424503, 35.089825, 34.867535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254694, 34.754696, 35.004841>,  <24.152807, 34.553619, 35.087223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254694, 34.754696, 35.004841>,  <24.424503, 35.089825, 34.867535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.254694, 34.754696, 35.004841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736473, -0.099000, 0.669184,
		-0.526675, 0.536890, 0.659062,
		-0.424525, -0.837824, 0.343264,
		24.127337, 34.503349, 35.107819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.293011, 35.110714, 35.610535>,  <24.424503, 35.089825, 34.867535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.293011, 35.110714, 35.610535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.362103, 34.737961, 35.482941>,  <24.403557, 34.514309, 35.406384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.362103, 34.737961, 35.482941>,  <24.293011, 35.110714, 35.610535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.362103, 34.737961, 35.482941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844707, -0.026419, 0.534576,
		-0.506592, -0.361788, 0.782608,
		0.172728, -0.931886, -0.318988,
		24.413921, 34.458397, 35.387245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.569061, 34.745594, 36.156216>,  <24.293011, 35.110714, 35.610535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.569061, 34.745594, 36.156216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681005, 34.590660, 35.804840>,  <24.748173, 34.497700, 35.594017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.681005, 34.590660, 35.804840>,  <24.569061, 34.745594, 36.156216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.681005, 34.590660, 35.804840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925728, -0.133562, 0.353821,
		-0.254373, -0.912213, 0.321188,
		0.279861, -0.387335, -0.878436,
		24.764963, 34.474461, 35.541309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.657719, 34.711517, 36.803490>,  <24.569061, 34.745594, 36.156216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.657719, 34.711517, 36.803490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.346563, 34.488392, 36.919243>,  <24.159870, 34.354519, 36.988693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.346563, 34.488392, 36.919243>,  <24.657719, 34.711517, 36.803490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.346563, 34.488392, 36.919243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446364, -0.166331, 0.879258,
		-0.442326, 0.813131, 0.378373,
		-0.777886, -0.557810, 0.289380,
		24.113197, 34.321049, 37.006058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.509075, 34.947872, 37.529572>,  <24.657719, 34.711517, 36.803490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.509075, 34.947872, 37.529572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.434671, 34.567650, 37.430092>,  <24.390028, 34.339516, 37.370403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.434671, 34.567650, 37.430092>,  <24.509075, 34.947872, 37.529572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.434671, 34.567650, 37.430092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412870, -0.305299, 0.858097,
		-0.891593, 0.056937, 0.449244,
		-0.186011, -0.950553, -0.248695,
		24.378868, 34.282482, 37.355484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.015263, 34.594051, 38.012943>,  <24.509075, 34.947872, 37.529572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.015263, 34.594051, 38.012943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.286121, 34.339672, 37.864868>,  <24.448637, 34.187046, 37.776024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.286121, 34.339672, 37.864868>,  <24.015263, 34.594051, 38.012943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.286121, 34.339672, 37.864868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282257, -0.240120, 0.928802,
		-0.679559, -0.733426, 0.016903,
		0.677149, -0.635947, -0.370190,
		24.489265, 34.148888, 37.753811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.060963, 34.036575, 38.494793>,  <24.015263, 34.594051, 38.012943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.060963, 34.036575, 38.494793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.415855, 34.087357, 38.317387>,  <24.628792, 34.117825, 38.210945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.415855, 34.087357, 38.317387>,  <24.060963, 34.036575, 38.494793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.415855, 34.087357, 38.317387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448455, -0.011834, 0.893727,
		0.108209, -0.991838, -0.067431,
		0.887231, 0.126949, -0.443514,
		24.682024, 34.125443, 38.184334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.573587, 33.473198, 38.703545>,  <24.060963, 34.036575, 38.494793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.573587, 33.473198, 38.703545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.740486, 33.827129, 38.620613>,  <24.840626, 34.039490, 38.570854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.740486, 33.827129, 38.620613>,  <24.573587, 33.473198, 38.703545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.740486, 33.827129, 38.620613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410951, 0.019779, 0.911443,
		0.810570, -0.465499, -0.355368,
		0.417247, 0.884827, -0.207330,
		24.865660, 34.092579, 38.558414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.263247, 33.536533, 38.968349>,  <24.573587, 33.473198, 38.703545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.263247, 33.536533, 38.968349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151499, 33.917881, 38.922680>,  <25.084450, 34.146690, 38.895279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151499, 33.917881, 38.922680>,  <25.263247, 33.536533, 38.968349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151499, 33.917881, 38.922680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251254, 0.187353, 0.949616,
		0.926727, 0.236607, -0.291879,
		-0.279371, 0.953371, -0.114176,
		25.067688, 34.203892, 38.888428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793142, 33.957722, 39.348034>,  <25.263247, 33.536533, 38.968349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793142, 33.957722, 39.348034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489508, 34.217388, 39.328545>,  <25.307327, 34.373188, 39.316853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489508, 34.217388, 39.328545>,  <25.793142, 33.957722, 39.348034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489508, 34.217388, 39.328545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148020, 0.244998, 0.958158,
		0.633939, 0.720112, -0.282064,
		-0.759086, 0.649165, -0.048722,
		25.261782, 34.412136, 39.313927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025669, 34.603100, 39.468857>,  <25.793142, 33.957722, 39.348034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025669, 34.603100, 39.468857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.640549, 34.666050, 39.556721>,  <25.409477, 34.703819, 39.609440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.640549, 34.666050, 39.556721>,  <26.025669, 34.603100, 39.468857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.640549, 34.666050, 39.556721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249744, 0.207886, 0.945733,
		0.103170, 0.965410, -0.239456,
		-0.962800, 0.157374, 0.219658,
		25.351709, 34.713261, 39.622620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918110, 35.278011, 39.850784>,  <26.025669, 34.603100, 39.468857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918110, 35.278011, 39.850784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616297, 35.032135, 39.942730>,  <25.435209, 34.884609, 39.997898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616297, 35.032135, 39.942730>,  <25.918110, 35.278011, 39.850784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616297, 35.032135, 39.942730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336652, -0.061875, 0.939594,
		-0.563336, 0.786338, 0.253623,
		-0.754531, -0.614690, 0.229866,
		25.389938, 34.847729, 40.011688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503241, 35.493237, 40.490120>,  <25.918110, 35.278011, 39.850784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503241, 35.493237, 40.490120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568953, 35.101986, 40.439075>,  <25.608379, 34.867237, 40.408451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568953, 35.101986, 40.439075>,  <25.503241, 35.493237, 40.490120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.568953, 35.101986, 40.439075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564922, -0.012758, 0.825046,
		-0.808626, -0.207627, 0.550468,
		0.164279, -0.978125, -0.127609,
		25.618237, 34.808548, 40.400791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674118, 34.823524, 40.920124>,  <25.503241, 35.493237, 40.490120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.674118, 34.823524, 40.920124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302452, 34.968063, 40.888920>,  <25.079453, 35.054787, 40.870197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302452, 34.968063, 40.888920>,  <25.674118, 34.823524, 40.920124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302452, 34.968063, 40.888920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026752, -0.276197, -0.960728,
		-0.368704, -0.890585, 0.266299,
		-0.929162, 0.361348, -0.078010,
		25.023703, 35.076466, 40.865517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108114, 34.369038, 40.659386>,  <25.674118, 34.823524, 40.920124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108114, 34.369038, 40.659386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980822, 34.735405, 40.561546>,  <24.904446, 34.955223, 40.502842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.980822, 34.735405, 40.561546>,  <25.108114, 34.369038, 40.659386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.980822, 34.735405, 40.561546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181924, -0.312213, -0.932430,
		-0.930394, -0.252231, 0.265983,
		-0.318231, 0.915916, -0.244595,
		24.885353, 35.010181, 40.488167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.435129, 34.313755, 40.314251>,  <25.108114, 34.369038, 40.659386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.435129, 34.313755, 40.314251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650507, 34.628975, 40.194881>,  <24.779734, 34.818108, 40.123260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.650507, 34.628975, 40.194881>,  <24.435129, 34.313755, 40.314251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.650507, 34.628975, 40.194881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143402, -0.263283, -0.954001,
		-0.830369, 0.556472, -0.028755,
		0.538445, 0.788049, -0.298421,
		24.812040, 34.865391, 40.105354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.118107, 34.834541, 39.925644>,  <24.435129, 34.313755, 40.314251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.118107, 34.834541, 39.925644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.500925, 34.823742, 39.810173>,  <24.730616, 34.817261, 39.740891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.500925, 34.823742, 39.810173>,  <24.118107, 34.834541, 39.925644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.500925, 34.823742, 39.810173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283812, -0.290876, -0.913697,
		-0.059300, 0.956380, -0.286044,
		0.957044, -0.027001, -0.288681,
		24.788038, 34.815643, 39.723568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.201387, 35.131382, 39.190887>,  <24.118107, 34.834541, 39.925644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.201387, 35.131382, 39.190887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.526539, 34.903015, 39.236980>,  <24.721630, 34.765995, 39.264637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.526539, 34.903015, 39.236980>,  <24.201387, 35.131382, 39.190887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.526539, 34.903015, 39.236980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029623, -0.238121, -0.970784,
		0.581679, 0.785715, -0.210475,
		0.812878, -0.570920, 0.115235,
		24.770403, 34.731739, 39.271549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.708752, 35.424606, 38.778873>,  <24.201387, 35.131382, 39.190887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.708752, 35.424606, 38.778873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810095, 35.038692, 38.807140>,  <24.870901, 34.807144, 38.824100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810095, 35.038692, 38.807140>,  <24.708752, 35.424606, 38.778873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810095, 35.038692, 38.807140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016983, -0.068606, -0.997499,
		0.967224, 0.253924, -0.000997,
		0.253358, -0.964788, 0.070669,
		24.886103, 34.749256, 38.828342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075703, 35.322945, 38.194778>,  <24.708752, 35.424606, 38.778873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075703, 35.322945, 38.194778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.029215, 34.942871, 38.310463>,  <25.001322, 34.714828, 38.379875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.029215, 34.942871, 38.310463>,  <25.075703, 35.322945, 38.194778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.029215, 34.942871, 38.310463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091662, -0.279685, -0.955706,
		0.988985, -0.137582, -0.054591,
		-0.116220, -0.950183, 0.289216,
		24.994349, 34.657818, 38.397228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618341, 34.801064, 37.893867>,  <25.075703, 35.322945, 38.194778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618341, 34.801064, 37.893867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247097, 34.672997, 37.969868>,  <25.024349, 34.596157, 38.015469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247097, 34.672997, 37.969868>,  <25.618341, 34.801064, 37.893867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247097, 34.672997, 37.969868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035132, -0.432755, -0.900827,
		0.370640, -0.842743, 0.390397,
		-0.928112, -0.320167, 0.190003,
		24.968664, 34.576946, 38.026867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214546, 34.186924, 37.807697>,  <25.618341, 34.801064, 37.893867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214546, 34.186924, 37.807697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522802, 34.150631, 38.060009>,  <26.707756, 34.128857, 38.211395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522802, 34.150631, 38.060009>,  <26.214546, 34.186924, 37.807697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522802, 34.150631, 38.060009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496750, 0.705552, -0.505406,
		-0.399192, 0.702826, 0.588796,
		0.770639, -0.090730, 0.630780,
		26.753994, 34.123413, 38.249245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521614, 34.858433, 37.822418>,  <26.214546, 34.186924, 37.807697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521614, 34.858433, 37.822418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801336, 34.652946, 38.021244>,  <26.969170, 34.529655, 38.140537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.801336, 34.652946, 38.021244>,  <26.521614, 34.858433, 37.822418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.801336, 34.652946, 38.021244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706901, 0.600221, -0.374201,
		-0.106116, 0.613055, 0.782881,
		0.699307, -0.513711, 0.497062,
		27.011127, 34.498833, 38.170364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924957, 35.434521, 38.171173>,  <26.521614, 34.858433, 37.822418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.924957, 35.434521, 38.171173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138008, 35.096088, 38.162590>,  <27.265839, 34.893028, 38.157440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138008, 35.096088, 38.162590>,  <26.924957, 35.434521, 38.171173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138008, 35.096088, 38.162590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822206, 0.523281, -0.223949,
		0.200709, 0.101636, 0.974364,
		0.532628, -0.846077, -0.021461,
		27.297796, 34.842266, 38.156151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621239, 35.614643, 38.337746>,  <26.924957, 35.434521, 38.171173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621239, 35.614643, 38.337746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708569, 35.248333, 38.202877>,  <27.760965, 35.028545, 38.121956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708569, 35.248333, 38.202877>,  <27.621239, 35.614643, 38.337746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708569, 35.248333, 38.202877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941185, 0.288899, -0.175235,
		0.257886, -0.279085, 0.924990,
		0.218323, -0.915778, -0.337174,
		27.774065, 34.973598, 38.101727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131929, 35.334846, 38.853252>,  <27.621239, 35.614643, 38.337746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131929, 35.334846, 38.853252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171055, 35.217045, 38.473000>,  <28.194530, 35.146362, 38.244846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171055, 35.217045, 38.473000>,  <28.131929, 35.334846, 38.853252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171055, 35.217045, 38.473000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936221, 0.351190, -0.012467,
		0.337523, -0.888781, 0.310074,
		0.097814, -0.294506, -0.950631,
		28.200399, 35.128693, 38.187809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766266, 35.043846, 38.766983>,  <28.131929, 35.334846, 38.853252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766266, 35.043846, 38.766983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668703, 35.114697, 38.385590>,  <28.610165, 35.157207, 38.156754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.668703, 35.114697, 38.385590>,  <28.766266, 35.043846, 38.766983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668703, 35.114697, 38.385590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966512, -0.036482, -0.254016,
		-0.079777, -0.983513, -0.162292,
		-0.243907, 0.177122, -0.953487,
		28.595531, 35.167831, 38.099545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090317, 34.518387, 38.239162>,  <28.766266, 35.043846, 38.766983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090317, 34.518387, 38.239162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008265, 34.849262, 38.029903>,  <28.959032, 35.047787, 37.904350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008265, 34.849262, 38.029903>,  <29.090317, 34.518387, 38.239162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008265, 34.849262, 38.029903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962061, 0.072175, -0.263114,
		-0.179887, -0.557270, -0.810611,
		-0.205132, 0.827188, -0.523145,
		28.946726, 35.097420, 37.872959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910660, 33.764973, 38.428619>,  <29.090317, 34.518387, 38.239162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910660, 33.764973, 38.428619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203779, 33.770725, 38.700737>,  <29.379650, 33.774178, 38.864010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203779, 33.770725, 38.700737>,  <28.910660, 33.764973, 38.428619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203779, 33.770725, 38.700737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476403, -0.703013, 0.528028,
		0.485850, -0.711032, -0.508314,
		0.732796, 0.014380, 0.680296,
		29.423618, 33.775040, 38.904827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894110, 33.055897, 38.680019>,  <28.910660, 33.764973, 38.428619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894110, 33.055897, 38.680019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137999, 33.207088, 38.958694>,  <29.284332, 33.297802, 39.125900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.137999, 33.207088, 38.958694>,  <28.894110, 33.055897, 38.680019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137999, 33.207088, 38.958694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414880, -0.596750, 0.686851,
		0.675363, -0.707829, -0.207035,
		0.609721, 0.377979, 0.696686,
		29.320915, 33.320480, 39.167702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503958, 32.589581, 38.929684>,  <28.894110, 33.055897, 38.680019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503958, 32.589581, 38.929684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319633, 32.831951, 39.189072>,  <29.209040, 32.977371, 39.344704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319633, 32.831951, 39.189072>,  <29.503958, 32.589581, 38.929684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319633, 32.831951, 39.189072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334914, -0.795371, 0.505191,
		0.821880, 0.015616, 0.569447,
		-0.460811, 0.605922, 0.648469,
		29.181391, 33.013729, 39.383614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687567, 32.433743, 39.551380>,  <29.503958, 32.589581, 38.929684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687567, 32.433743, 39.551380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330519, 32.610748, 39.585812>,  <29.116289, 32.716953, 39.606468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330519, 32.610748, 39.585812>,  <29.687567, 32.433743, 39.551380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330519, 32.610748, 39.585812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401427, -0.867106, 0.294930,
		0.205149, 0.228707, 0.951634,
		-0.892620, 0.442516, 0.086077,
		29.062733, 32.743504, 39.611633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399511, 32.415424, 40.277531>,  <29.687567, 32.433743, 39.551380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399511, 32.415424, 40.277531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118505, 32.418251, 39.992878>,  <28.949902, 32.419949, 39.822086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118505, 32.418251, 39.992878>,  <29.399511, 32.415424, 40.277531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118505, 32.418251, 39.992878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322876, -0.894282, 0.309856,
		-0.634213, 0.447448, 0.630527,
		-0.702513, 0.007068, -0.711635,
		28.907751, 32.420372, 39.779388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760948, 32.373699, 40.492432>,  <29.399511, 32.415424, 40.277531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760948, 32.373699, 40.492432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733263, 32.201035, 40.132679>,  <28.716652, 32.097435, 39.916828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.733263, 32.201035, 40.132679>,  <28.760948, 32.373699, 40.492432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733263, 32.201035, 40.132679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274277, -0.858562, 0.433178,
		-0.959157, 0.276660, -0.058972,
		-0.069212, -0.431660, -0.899377,
		28.712500, 32.071537, 39.862865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.253323, 31.997005, 40.627785>,  <28.760948, 32.373699, 40.492432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.253323, 31.997005, 40.627785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432833, 31.833914, 40.309700>,  <28.540539, 31.736059, 40.118851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432833, 31.833914, 40.309700>,  <28.253323, 31.997005, 40.627785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432833, 31.833914, 40.309700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330998, -0.902399, 0.275891,
		-0.830084, 0.139399, -0.539933,
		0.448777, -0.407730, -0.795208,
		28.567465, 31.711596, 40.071136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731941, 31.655071, 40.084431>,  <28.253323, 31.997005, 40.627785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731941, 31.655071, 40.084431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095831, 31.492491, 40.118370>,  <28.314165, 31.394943, 40.138733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095831, 31.492491, 40.118370>,  <27.731941, 31.655071, 40.084431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095831, 31.492491, 40.118370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414079, -0.873013, 0.257657,
		-0.030655, -0.269530, -0.962504,
		0.909725, -0.406451, 0.084844,
		28.368748, 31.370556, 40.143822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524483, 32.493568, 40.144913>,  <27.731941, 31.655071, 40.084431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524483, 32.493568, 40.144913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396883, 32.572922, 39.774208>,  <27.320324, 32.620533, 39.551785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396883, 32.572922, 39.774208>,  <27.524483, 32.493568, 40.144913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396883, 32.572922, 39.774208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396286, 0.916183, 0.059711,
		0.860928, -0.348214, -0.370877,
		-0.318999, 0.198380, -0.926760,
		27.301184, 32.632435, 39.496181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012678, 32.981052, 39.841568>,  <27.524483, 32.493568, 40.144913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012678, 32.981052, 39.841568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672302, 33.047268, 39.642170>,  <27.468077, 33.086998, 39.522530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672302, 33.047268, 39.642170>,  <28.012678, 32.981052, 39.841568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672302, 33.047268, 39.642170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169973, 0.984759, 0.036868,
		0.497003, -0.053358, -0.866107,
		-0.850939, 0.165539, -0.498497,
		27.417021, 33.096928, 39.492622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238260, 33.380024, 39.204861>,  <28.012678, 32.981052, 39.841568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238260, 33.380024, 39.204861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891884, 33.516365, 39.351265>,  <27.684057, 33.598171, 39.439106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.891884, 33.516365, 39.351265>,  <28.238260, 33.380024, 39.204861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891884, 33.516365, 39.351265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234215, 0.922967, -0.305410,
		-0.441917, -0.178742, -0.879068,
		-0.865940, 0.340857, 0.366010,
		27.632101, 33.618622, 39.461067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319370, 33.603840, 40.004784>,  <28.238260, 33.380024, 39.204861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319370, 33.603840, 40.004784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645269, 33.373852, 39.974869>,  <28.840809, 33.235859, 39.956921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.645269, 33.373852, 39.974869>,  <28.319370, 33.603840, 40.004784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.645269, 33.373852, 39.974869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455341, 0.714356, -0.531376,
		0.358952, 0.398883, 0.843828,
		0.814750, -0.574968, -0.074791,
		28.889694, 33.201363, 39.952431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925947, 33.993649, 40.208153>,  <28.319370, 33.603840, 40.004784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925947, 33.993649, 40.208153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041862, 33.683739, 39.983391>,  <29.111412, 33.497791, 39.848534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041862, 33.683739, 39.983391>,  <28.925947, 33.993649, 40.208153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041862, 33.683739, 39.983391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554863, 0.614371, -0.560959,
		0.779839, -0.149221, 0.607935,
		0.289790, -0.774778, -0.561908,
		29.128799, 33.451305, 39.814819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747232, 33.961185, 40.184025>,  <28.925947, 33.993649, 40.208153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747232, 33.961185, 40.184025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623486, 33.747665, 39.869232>,  <29.549238, 33.619553, 39.680355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623486, 33.747665, 39.869232>,  <29.747232, 33.961185, 40.184025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623486, 33.747665, 39.869232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626137, 0.508525, -0.591062,
		0.715714, -0.675615, 0.176915,
		-0.309365, -0.533804, -0.786986,
		29.530676, 33.587524, 39.633137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360275, 33.583115, 39.934784>,  <29.747232, 33.961185, 40.184025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360275, 33.583115, 39.934784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080526, 33.644192, 39.655479>,  <29.912678, 33.680840, 39.487896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080526, 33.644192, 39.655479>,  <30.360275, 33.583115, 39.934784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080526, 33.644192, 39.655479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707585, 0.285962, -0.646180,
		0.101007, -0.945997, -0.308038,
		-0.699372, 0.152695, -0.698258,
		29.870714, 33.689999, 39.446003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807093, 33.932869, 39.434616>,  <30.360275, 33.583115, 39.934784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807093, 33.932869, 39.434616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696768, 33.694416, 39.133007>,  <30.630573, 33.551342, 38.952042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696768, 33.694416, 39.133007>,  <30.807093, 33.932869, 39.434616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696768, 33.694416, 39.133007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699177, -0.662733, 0.268212,
		-0.659606, -0.453220, 0.599592,
		-0.275810, -0.596135, -0.754024,
		30.614025, 33.515575, 38.906799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845640, 33.187893, 39.500481>,  <30.807093, 33.932869, 39.434616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845640, 33.187893, 39.500481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877928, 33.238487, 39.105011>,  <30.897301, 33.268845, 38.867729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877928, 33.238487, 39.105011>,  <30.845640, 33.187893, 39.500481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877928, 33.238487, 39.105011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820713, -0.571309, -0.006085,
		-0.565611, -0.810930, -0.149924,
		0.080719, 0.126486, -0.988679,
		30.902143, 33.276432, 38.808407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964640, 32.556973, 39.142803>,  <30.845640, 33.187893, 39.500481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964640, 32.556973, 39.142803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131227, 32.857521, 38.938065>,  <31.231180, 33.037849, 38.815220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131227, 32.857521, 38.938065>,  <30.964640, 32.556973, 39.142803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131227, 32.857521, 38.938065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864935, -0.500893, -0.031531,
		-0.280074, -0.429585, -0.858496,
		0.416470, 0.751374, -0.511850,
		31.256168, 33.082932, 38.784508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055750, 32.637577, 38.338627>,  <30.964640, 32.556973, 39.142803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055750, 32.637577, 38.338627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354300, 32.851383, 38.497227>,  <31.533430, 32.979668, 38.592388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354300, 32.851383, 38.497227>,  <31.055750, 32.637577, 38.338627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354300, 32.851383, 38.497227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664717, -0.628067, -0.404577,
		0.032777, 0.565529, -0.824077,
		0.746375, 0.534517, 0.396503,
		31.578213, 33.011738, 38.616177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418301, 32.996395, 37.849396>,  <31.055750, 32.637577, 38.338627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418301, 32.996395, 37.849396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672037, 32.891304, 38.140209>,  <31.824280, 32.828251, 38.314697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672037, 32.891304, 38.140209>,  <31.418301, 32.996395, 37.849396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672037, 32.891304, 38.140209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563231, -0.487116, -0.667450,
		0.529509, 0.832882, -0.161022,
		0.634343, -0.262728, 0.727037,
		31.862341, 32.812485, 38.358322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865274, 33.602470, 37.534992>,  <31.418301, 32.996395, 37.849396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865274, 33.602470, 37.534992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258923, 33.609638, 37.605637>,  <32.495110, 33.613941, 37.648022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258923, 33.609638, 37.605637>,  <31.865274, 33.602470, 37.534992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258923, 33.609638, 37.605637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177199, -0.040007, -0.983362,
		-0.010558, 0.999039, -0.042547,
		0.984118, 0.017921, 0.176606,
		32.554157, 33.615013, 37.658619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135715, 33.828873, 36.939468>,  <31.865274, 33.602470, 37.534992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135715, 33.828873, 36.939468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444462, 33.664597, 37.133606>,  <32.629707, 33.566029, 37.250088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.444462, 33.664597, 37.133606>,  <32.135715, 33.828873, 36.939468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444462, 33.664597, 37.133606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463963, -0.158094, -0.871633,
		0.434703, 0.897963, 0.068519,
		0.771862, -0.410692, 0.485346,
		32.676022, 33.541389, 37.279209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819981, 34.052410, 36.610168>,  <32.135715, 33.828873, 36.939468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819981, 34.052410, 36.610168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876701, 33.701103, 36.792831>,  <32.910736, 33.490318, 36.902428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876701, 33.701103, 36.792831>,  <32.819981, 34.052410, 36.610168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876701, 33.701103, 36.792831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417936, -0.365063, -0.831901,
		0.897341, 0.308819, 0.315293,
		0.141805, -0.878271, 0.456653,
		32.919243, 33.437622, 36.929829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149483, 33.667751, 35.967152>,  <32.819981, 34.052410, 36.610168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149483, 33.667751, 35.967152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827320, 33.610313, 36.197174>,  <32.634022, 33.575851, 36.335190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827320, 33.610313, 36.197174>,  <33.149483, 33.667751, 35.967152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827320, 33.610313, 36.197174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590564, -0.111787, 0.799211,
		-0.050477, 0.983303, 0.174835,
		-0.805411, -0.143593, 0.575061,
		32.585697, 33.567234, 36.369694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733208, 33.266548, 36.079700>,  <33.149483, 33.667751, 35.967152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733208, 33.266548, 36.079700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801487, 33.228485, 36.471989>,  <33.842453, 33.205647, 36.707359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801487, 33.228485, 36.471989>,  <33.733208, 33.266548, 36.079700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801487, 33.228485, 36.471989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818656, -0.540198, -0.194905,
		0.548329, 0.836140, -0.014307,
		0.170696, -0.095160, 0.980718,
		33.852695, 33.199936, 36.766205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411785, 33.611061, 36.349033>,  <33.733208, 33.266548, 36.079700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411785, 33.611061, 36.349033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284512, 33.300133, 36.566116>,  <34.208149, 33.113575, 36.696365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284512, 33.300133, 36.566116>,  <34.411785, 33.611061, 36.349033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284512, 33.300133, 36.566116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822872, -0.510728, -0.249076,
		0.470787, 0.367325, 0.802143,
		-0.318185, -0.777322, 0.542705,
		34.189056, 33.066936, 36.728928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083359, 34.019043, 36.211823>,  <34.411785, 33.611061, 36.349033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083359, 34.019043, 36.211823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335007, 34.285439, 36.051491>,  <35.485996, 34.445278, 35.955292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335007, 34.285439, 36.051491>,  <35.083359, 34.019043, 36.211823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335007, 34.285439, 36.051491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775244, 0.500050, -0.385936,
		-0.056598, 0.553538, 0.830899,
		0.629121, 0.665993, -0.400825,
		35.523743, 34.485237, 35.931244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902721, 34.342739, 36.917305>,  <35.083359, 34.019043, 36.211823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902721, 34.342739, 36.917305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812077, 34.485516, 37.279793>,  <34.757690, 34.571182, 37.497288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812077, 34.485516, 37.279793>,  <34.902721, 34.342739, 36.917305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812077, 34.485516, 37.279793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645517, 0.751776, -0.134687,
		-0.729352, 0.554460, -0.400774,
		-0.226614, 0.356940, 0.906223,
		34.744091, 34.592598, 37.551659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665459, 34.978714, 36.888153>,  <34.902721, 34.342739, 36.917305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665459, 34.978714, 36.888153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811779, 34.963551, 37.260120>,  <34.899570, 34.954453, 37.483303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811779, 34.963551, 37.260120>,  <34.665459, 34.978714, 36.888153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811779, 34.963551, 37.260120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651788, 0.723665, -0.226896,
		-0.664350, 0.689110, 0.289425,
		0.365803, -0.037905, 0.929920,
		34.921520, 34.952179, 37.539097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549747, 35.610222, 37.260899>,  <34.665459, 34.978714, 36.888153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549747, 35.610222, 37.260899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865314, 35.410538, 37.404232>,  <35.054653, 35.290726, 37.490231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865314, 35.410538, 37.404232>,  <34.549747, 35.610222, 37.260899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865314, 35.410538, 37.404232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601370, 0.747110, -0.283162,
		-0.126355, 0.438880, 0.889618,
		0.788916, -0.499210, 0.358330,
		35.101990, 35.260777, 37.511730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913643, 35.978428, 37.799435>,  <34.549747, 35.610222, 37.260899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913643, 35.978428, 37.799435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152111, 35.746395, 37.577412>,  <35.295193, 35.607178, 37.444199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152111, 35.746395, 37.577412>,  <34.913643, 35.978428, 37.799435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152111, 35.746395, 37.577412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492076, 0.810282, -0.318282,
		0.634382, -0.083380, 0.768510,
		0.596171, -0.580078, -0.555058,
		35.330963, 35.572372, 37.410892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675980, 36.117817, 37.839230>,  <34.913643, 35.978428, 37.799435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675980, 36.117817, 37.839230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575603, 35.946743, 37.491871>,  <35.515377, 35.844097, 37.283455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575603, 35.946743, 37.491871>,  <35.675980, 36.117817, 37.839230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575603, 35.946743, 37.491871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431017, 0.753896, -0.495848,
		0.866748, -0.498723, -0.004843,
		-0.250942, -0.427688, -0.868396,
		35.500320, 35.818436, 37.231354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309261, 35.941395, 37.507343>,  <35.675980, 36.117817, 37.839230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309261, 35.941395, 37.507343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004742, 36.002457, 37.255272>,  <35.822029, 36.039093, 37.104031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004742, 36.002457, 37.255272>,  <36.309261, 35.941395, 37.507343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004742, 36.002457, 37.255272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539213, 0.688809, -0.484552,
		0.360101, -0.708688, -0.606703,
		-0.761299, 0.152655, -0.630175,
		35.776352, 36.048252, 37.066219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870293, 35.434490, 37.298470>,  <36.309261, 35.941395, 37.507343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870293, 35.434490, 37.298470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141506, 35.728485, 37.301636>,  <37.304234, 35.904884, 37.303535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141506, 35.728485, 37.301636>,  <36.870293, 35.434490, 37.298470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141506, 35.728485, 37.301636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461312, -0.417129, -0.783068,
		-0.572246, 0.534595, -0.621886,
		0.678031, 0.734991, 0.007915,
		37.344917, 35.948982, 37.304008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991497, 35.345573, 36.535133>,  <36.870293, 35.434490, 37.298470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991497, 35.345573, 36.535133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753025, 35.663860, 36.577843>,  <36.609940, 35.854832, 36.603470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753025, 35.663860, 36.577843>,  <36.991497, 35.345573, 36.535133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753025, 35.663860, 36.577843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664191, -0.563547, 0.491187,
		0.451019, 0.221918, 0.864485,
		-0.596182, 0.795718, 0.106774,
		36.574169, 35.902576, 36.609875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556053, 34.825325, 36.617538>,  <36.991497, 35.345573, 36.535133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556053, 34.825325, 36.617538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786156, 34.798244, 36.291473>,  <37.924217, 34.781998, 36.095833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786156, 34.798244, 36.291473>,  <37.556053, 34.825325, 36.617538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786156, 34.798244, 36.291473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468403, -0.844258, -0.260437,
		-0.670578, 0.531644, -0.517377,
		0.575259, -0.067697, -0.815165,
		37.958733, 34.777935, 36.046925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319439, 34.265358, 36.212879>,  <37.556053, 34.825325, 36.617538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319439, 34.265358, 36.212879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614552, 34.375179, 35.966206>,  <37.791618, 34.441074, 35.818199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614552, 34.375179, 35.966206>,  <37.319439, 34.265358, 36.212879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614552, 34.375179, 35.966206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227142, -0.759311, -0.609798,
		-0.635681, 0.589971, -0.497840,
		0.737778, 0.274557, -0.616686,
		37.835884, 34.457546, 35.781200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714859, 33.908218, 36.236237>,  <37.319439, 34.265358, 36.212879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714859, 33.908218, 36.236237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838055, 33.532883, 36.173409>,  <36.911972, 33.307682, 36.135712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838055, 33.532883, 36.173409>,  <36.714859, 33.908218, 36.236237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838055, 33.532883, 36.173409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631163, -0.325050, 0.704256,
		-0.711883, -0.117768, -0.692354,
		0.307988, -0.938335, -0.157067,
		36.930450, 33.251381, 36.126289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257000, 33.281391, 36.389469>,  <36.714859, 33.908218, 36.236237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257000, 33.281391, 36.389469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917728, 33.412125, 36.222725>,  <35.714165, 33.490566, 36.122677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917728, 33.412125, 36.222725>,  <36.257000, 33.281391, 36.389469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917728, 33.412125, 36.222725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311424, -0.328913, -0.891533,
		-0.428498, -0.885998, 0.177191,
		-0.848177, 0.326839, -0.416859,
		35.663277, 33.510178, 36.097668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977337, 32.686466, 36.101364>,  <36.257000, 33.281391, 36.389469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977337, 32.686466, 36.101364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849155, 33.017651, 35.917286>,  <35.772247, 33.216362, 35.806839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849155, 33.017651, 35.917286>,  <35.977337, 32.686466, 36.101364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849155, 33.017651, 35.917286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072287, -0.463028, -0.883391,
		-0.944502, -0.316351, 0.088527,
		-0.320452, 0.827965, -0.460199,
		35.753021, 33.266041, 35.779224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481796, 32.499626, 35.637596>,  <35.977337, 32.686466, 36.101364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481796, 32.499626, 35.637596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658714, 32.841640, 35.529316>,  <35.764866, 33.046848, 35.464348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658714, 32.841640, 35.529316>,  <35.481796, 32.499626, 35.637596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658714, 32.841640, 35.529316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098981, -0.346524, -0.932804,
		-0.891390, 0.385782, -0.237900,
		0.442297, 0.855040, -0.270703,
		35.791405, 33.098152, 35.448105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113449, 32.709930, 35.064121>,  <35.481796, 32.499626, 35.637596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113449, 32.709930, 35.064121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476776, 32.876495, 35.048302>,  <35.694771, 32.976433, 35.038811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476776, 32.876495, 35.048302>,  <35.113449, 32.709930, 35.064121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476776, 32.876495, 35.048302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152032, -0.416741, -0.896222,
		-0.389677, 0.808040, -0.441840,
		0.908316, 0.416411, -0.039546,
		35.749271, 33.001419, 35.036438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146782, 33.079605, 34.486652>,  <35.113449, 32.709930, 35.064121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146782, 33.079605, 34.486652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518772, 32.973999, 34.588978>,  <35.741966, 32.910637, 34.650372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518772, 32.973999, 34.588978>,  <35.146782, 33.079605, 34.486652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518772, 32.973999, 34.588978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160046, -0.335683, -0.928279,
		0.330951, 0.904220, -0.269922,
		0.929977, -0.264015, 0.255811,
		35.797764, 32.894794, 34.665722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459782, 33.285175, 33.903313>,  <35.146782, 33.079605, 34.486652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459782, 33.285175, 33.903313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711834, 33.048916, 34.104935>,  <35.863064, 32.907162, 34.225910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711834, 33.048916, 34.104935>,  <35.459782, 33.285175, 33.903313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711834, 33.048916, 34.104935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295833, -0.417576, -0.859135,
		0.717928, 0.690482, -0.088393,
		0.630128, -0.590648, 0.504057,
		35.900871, 32.871723, 34.256153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094795, 33.287949, 33.447632>,  <35.459782, 33.285175, 33.903313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094795, 33.287949, 33.447632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144463, 32.984436, 33.703392>,  <36.174263, 32.802330, 33.856850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144463, 32.984436, 33.703392>,  <36.094795, 33.287949, 33.447632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144463, 32.984436, 33.703392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322766, -0.578462, -0.749136,
		0.938299, 0.299396, 0.173082,
		0.124167, -0.758778, 0.639405,
		36.181713, 32.756802, 33.895214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764374, 33.085052, 33.337631>,  <36.094795, 33.287949, 33.447632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764374, 33.085052, 33.337631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602192, 32.767117, 33.518223>,  <36.504883, 32.576355, 33.626579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602192, 32.767117, 33.518223>,  <36.764374, 33.085052, 33.337631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602192, 32.767117, 33.518223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487394, -0.605809, -0.628843,
		0.773341, -0.034919, 0.633029,
		-0.405453, -0.794844, 0.451478,
		36.480556, 32.528664, 33.653667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370480, 32.604645, 33.352535>,  <36.764374, 33.085052, 33.337631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370480, 32.604645, 33.352535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032890, 32.390354, 33.363216>,  <36.830338, 32.261780, 33.369625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032890, 32.390354, 33.363216>,  <37.370480, 32.604645, 33.352535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032890, 32.390354, 33.363216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308280, -0.525193, -0.793181,
		0.438950, -0.661189, 0.608401,
		-0.843970, -0.535724, 0.026702,
		36.779697, 32.229637, 33.371227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617390, 31.944017, 33.182705>,  <37.370480, 32.604645, 33.352535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617390, 31.944017, 33.182705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227314, 31.895130, 33.108871>,  <36.993267, 31.865797, 33.064571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227314, 31.895130, 33.108871>,  <37.617390, 31.944017, 33.182705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227314, 31.895130, 33.108871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218943, -0.409107, -0.885830,
		0.032752, -0.904264, 0.425716,
		-0.975188, -0.122220, -0.184583,
		36.934757, 31.858463, 33.053497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579994, 31.333483, 32.802872>,  <37.617390, 31.944017, 33.182705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579994, 31.333483, 32.802872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246864, 31.525862, 32.693268>,  <37.046986, 31.641289, 32.627506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246864, 31.525862, 32.693268>,  <37.579994, 31.333483, 32.802872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246864, 31.525862, 32.693268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152180, -0.277011, -0.948739,
		-0.532201, -0.831837, 0.157512,
		-0.832829, 0.480950, -0.274014,
		36.997017, 31.670147, 32.611065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352627, 30.859600, 32.302013>,  <37.579994, 31.333483, 32.802872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352627, 30.859600, 32.302013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147919, 31.200830, 32.261318>,  <37.025093, 31.405569, 32.236900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147919, 31.200830, 32.261318>,  <37.352627, 30.859600, 32.302013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147919, 31.200830, 32.261318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037524, -0.096111, -0.994663,
		-0.858302, -0.512858, 0.017175,
		-0.511772, 0.853076, -0.101737,
		36.994389, 31.456753, 32.230797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730656, 30.738808, 31.962482>,  <37.352627, 30.859600, 32.302013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730656, 30.738808, 31.962482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818520, 31.118063, 31.870583>,  <36.871239, 31.345615, 31.815443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818520, 31.118063, 31.870583>,  <36.730656, 30.738808, 31.962482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818520, 31.118063, 31.870583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302318, -0.157754, -0.940062,
		-0.927552, 0.275951, 0.251987,
		0.219659, 0.948137, -0.229750,
		36.884418, 31.402504, 31.801657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240707, 30.971262, 31.338802>,  <36.730656, 30.738808, 31.962482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240707, 30.971262, 31.338802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525513, 31.251650, 31.322384>,  <36.696396, 31.419882, 31.312532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525513, 31.251650, 31.322384>,  <36.240707, 30.971262, 31.338802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525513, 31.251650, 31.322384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113139, 0.056838, -0.991952,
		-0.692996, 0.710922, 0.119776,
		0.712008, 0.700970, -0.041044,
		36.739117, 31.461941, 31.310070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959099, 31.466393, 30.809301>,  <36.240707, 30.971262, 31.338802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959099, 31.466393, 30.809301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353329, 31.533308, 30.819510>,  <36.589867, 31.573458, 30.825634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353329, 31.533308, 30.819510>,  <35.959099, 31.466393, 30.809301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353329, 31.533308, 30.819510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003203, 0.169219, -0.985573,
		-0.169193, 0.971277, 0.167315,
		0.985578, 0.167288, 0.025519,
		36.649002, 31.583494, 30.827166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103352, 32.005661, 30.321564>,  <35.959099, 31.466393, 30.809301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103352, 32.005661, 30.321564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442623, 31.795761, 30.350471>,  <36.646187, 31.669821, 30.367817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442623, 31.795761, 30.350471>,  <36.103352, 32.005661, 30.321564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442623, 31.795761, 30.350471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174973, 0.148774, -0.973268,
		0.499972, 0.838154, 0.218005,
		0.848182, -0.524751, 0.072271,
		36.697079, 31.638336, 30.372152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574604, 32.265503, 29.852476>,  <36.103352, 32.005661, 30.321564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574604, 32.265503, 29.852476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728893, 31.901155, 29.911184>,  <36.821465, 31.682547, 29.946409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728893, 31.901155, 29.911184>,  <36.574604, 32.265503, 29.852476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728893, 31.901155, 29.911184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249918, -0.049982, -0.966976,
		0.888122, 0.409663, 0.208363,
		0.385720, -0.910866, 0.146772,
		36.844608, 31.627895, 29.955215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994091, 32.276253, 29.361996>,  <36.574604, 32.265503, 29.852476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994091, 32.276253, 29.361996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029850, 31.888838, 29.454899>,  <37.051304, 31.656389, 29.510641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029850, 31.888838, 29.454899>,  <36.994091, 32.276253, 29.361996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029850, 31.888838, 29.454899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022884, -0.235128, -0.971695,
		0.995733, 0.081550, -0.043183,
		0.089396, -0.968537, 0.232258,
		37.056667, 31.598276, 29.524576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515625, 32.025578, 28.943403>,  <36.994091, 32.276253, 29.361996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515625, 32.025578, 28.943403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291332, 31.710278, 29.044783>,  <37.156757, 31.521097, 29.105610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291332, 31.710278, 29.044783>,  <37.515625, 32.025578, 28.943403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291332, 31.710278, 29.044783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009915, -0.299684, -0.953987,
		0.827939, -0.537442, 0.160226,
		-0.560730, -0.788254, 0.253449,
		37.123112, 31.473801, 29.120817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923962, 31.533588, 28.748056>,  <37.515625, 32.025578, 28.943403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923962, 31.533588, 28.748056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541950, 31.415005, 28.750412>,  <37.312744, 31.343855, 28.751825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541950, 31.415005, 28.750412>,  <37.923962, 31.533588, 28.748056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541950, 31.415005, 28.750412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003994, -0.032728, -0.999456,
		0.296492, -0.954484, 0.032440,
		-0.955027, -0.296460, 0.005891,
		37.255444, 31.326067, 28.752180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950264, 31.046358, 28.282581>,  <37.923962, 31.533588, 28.748056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950264, 31.046358, 28.282581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560009, 31.123814, 28.323824>,  <37.325855, 31.170288, 28.348570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560009, 31.123814, 28.323824>,  <37.950264, 31.046358, 28.282581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560009, 31.123814, 28.323824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108714, -0.018519, -0.993901,
		-0.190551, -0.980898, 0.039120,
		-0.975639, 0.193642, 0.103108,
		37.267319, 31.181906, 28.354757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655804, 30.688820, 27.723288>,  <37.950264, 31.046358, 28.282581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655804, 30.688820, 27.723288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352791, 30.926460, 27.831505>,  <37.170982, 31.069044, 27.896435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352791, 30.926460, 27.831505>,  <37.655804, 30.688820, 27.723288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352791, 30.926460, 27.831505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281424, 0.076741, -0.956510,
		-0.589026, -0.800721, 0.109061,
		-0.757528, 0.594102, 0.270544,
		37.125534, 31.104691, 27.912668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109863, 30.419867, 27.376196>,  <37.655804, 30.688820, 27.723288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109863, 30.419867, 27.376196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015747, 30.798120, 27.466005>,  <36.959278, 31.025074, 27.519890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015747, 30.798120, 27.466005>,  <37.109863, 30.419867, 27.376196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015747, 30.798120, 27.466005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261053, 0.161030, -0.951799,
		-0.936210, -0.282564, 0.208972,
		-0.235293, 0.945636, 0.224522,
		36.945160, 31.081812, 27.533361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487240, 30.525736, 27.011641>,  <37.109863, 30.419867, 27.376196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487240, 30.525736, 27.011641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628147, 30.892523, 27.086563>,  <36.712692, 31.112595, 27.131517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628147, 30.892523, 27.086563>,  <36.487240, 30.525736, 27.011641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628147, 30.892523, 27.086563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232567, 0.279624, -0.931517,
		-0.906544, 0.284578, 0.311757,
		0.352264, 0.916966, 0.187308,
		36.733826, 31.167612, 27.142756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073711, 31.019941, 26.609772>,  <36.487240, 30.525736, 27.011641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073711, 31.019941, 26.609772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382721, 31.257223, 26.700388>,  <36.568127, 31.399593, 26.754759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382721, 31.257223, 26.700388>,  <36.073711, 31.019941, 26.609772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382721, 31.257223, 26.700388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157077, 0.524198, -0.836984,
		-0.615257, 0.611002, 0.498132,
		0.772519, 0.593206, 0.226542,
		36.614475, 31.435184, 26.768351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799137, 31.701307, 26.330667>,  <36.073711, 31.019941, 26.609772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799137, 31.701307, 26.330667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197338, 31.697708, 26.368397>,  <36.436260, 31.695549, 26.391035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197338, 31.697708, 26.368397>,  <35.799137, 31.701307, 26.330667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197338, 31.697708, 26.368397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078672, 0.633290, -0.769906,
		-0.052807, 0.773862, 0.631148,
		0.995501, -0.008998, 0.094324,
		36.495987, 31.695009, 26.396694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878410, 32.364292, 26.196012>,  <35.799137, 31.701307, 26.330667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878410, 32.364292, 26.196012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196373, 32.134808, 26.117046>,  <36.387150, 31.997116, 26.069666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196373, 32.134808, 26.117046>,  <35.878410, 32.364292, 26.196012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196373, 32.134808, 26.117046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053682, 0.390608, -0.918991,
		0.604350, 0.719915, 0.341296,
		0.794908, -0.573714, -0.197417,
		36.434845, 31.962694, 26.057821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482235, 32.842484, 25.850140>,  <35.878410, 32.364292, 26.196012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482235, 32.842484, 25.850140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575253, 32.464127, 25.759617>,  <36.631062, 32.237114, 25.705303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575253, 32.464127, 25.759617>,  <36.482235, 32.842484, 25.850140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575253, 32.464127, 25.759617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120465, 0.258906, -0.958361,
		0.965096, 0.195600, 0.174154,
		0.232544, -0.945890, -0.226307,
		36.645016, 32.180359, 25.691725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170158, 32.867611, 25.533493>,  <36.482235, 32.842484, 25.850140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170158, 32.867611, 25.533493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038681, 32.507812, 25.418341>,  <36.959797, 32.291935, 25.349249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038681, 32.507812, 25.418341>,  <37.170158, 32.867611, 25.533493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038681, 32.507812, 25.418341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229650, 0.219548, -0.948187,
		0.916092, -0.377772, 0.134405,
		-0.328690, -0.899493, -0.287882,
		36.940075, 32.237965, 25.331976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749249, 32.600536, 25.052494>,  <37.170158, 32.867611, 25.533493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749249, 32.600536, 25.052494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421028, 32.378735, 24.997036>,  <37.224094, 32.245655, 24.963760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421028, 32.378735, 24.997036>,  <37.749249, 32.600536, 25.052494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421028, 32.378735, 24.997036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218991, -0.080937, -0.972364,
		0.527956, -0.828237, 0.187844,
		-0.820552, -0.554502, -0.138645,
		37.174862, 32.212383, 24.955442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985435, 32.028313, 24.705841>,  <37.749249, 32.600536, 25.052494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985435, 32.028313, 24.705841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592567, 32.053841, 24.635109>,  <37.356846, 32.069157, 24.592670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592567, 32.053841, 24.635109>,  <37.985435, 32.028313, 24.705841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592567, 32.053841, 24.635109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173603, -0.053031, -0.983387,
		-0.072148, -0.996551, 0.041004,
		-0.982169, 0.063831, -0.176830,
		37.297916, 32.072987, 24.582060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795242, 31.494688, 24.220943>,  <37.985435, 32.028313, 24.705841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795242, 31.494688, 24.220943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532902, 31.796116, 24.203079>,  <37.375496, 31.976973, 24.192360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532902, 31.796116, 24.203079>,  <37.795242, 31.494688, 24.220943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532902, 31.796116, 24.203079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071781, 0.003358, -0.997415,
		-0.751470, -0.657361, -0.056294,
		-0.655851, 0.753568, -0.044662,
		37.336147, 32.022186, 24.189680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468094, 31.311260, 23.703743>,  <37.795242, 31.494688, 24.220943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468094, 31.311260, 23.703743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357464, 31.694937, 23.727257>,  <37.291084, 31.925142, 23.741365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357464, 31.694937, 23.727257>,  <37.468094, 31.311260, 23.703743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357464, 31.694937, 23.727257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112985, 0.028291, -0.993194,
		-0.954327, -0.281335, 0.100549,
		-0.276575, 0.959193, 0.058786,
		37.274490, 31.982695, 23.744892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863667, 31.326029, 23.281769>,  <37.468094, 31.311260, 23.703743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863667, 31.326029, 23.281769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016331, 31.694815, 23.308031>,  <37.107929, 31.916086, 23.323790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016331, 31.694815, 23.308031>,  <36.863667, 31.326029, 23.281769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016331, 31.694815, 23.308031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085163, 0.105809, -0.990733,
		-0.920370, 0.372534, 0.118901,
		0.381663, 0.921967, 0.065658,
		37.130829, 31.971405, 23.327728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585304, 31.729750, 22.741814>,  <36.863667, 31.326029, 23.281769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585304, 31.729750, 22.741814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876225, 31.982098, 22.849913>,  <37.050777, 32.133507, 22.914772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876225, 31.982098, 22.849913>,  <36.585304, 31.729750, 22.741814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876225, 31.982098, 22.849913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136168, 0.253296, -0.957758,
		-0.672673, 0.733378, 0.098318,
		0.727302, 0.630870, 0.270248,
		37.094414, 32.171360, 22.930986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342495, 32.395496, 22.672548>,  <36.585304, 31.729750, 22.741814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342495, 32.395496, 22.672548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740429, 32.388847, 22.632496>,  <36.979191, 32.384857, 22.608465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740429, 32.388847, 22.632496>,  <36.342495, 32.395496, 22.672548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740429, 32.388847, 22.632496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073718, 0.559771, -0.825362,
		0.069772, 0.828480, 0.555654,
		0.994835, -0.016626, -0.100130,
		37.038879, 32.383858, 22.602457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457005, 33.027721, 22.367056>,  <36.342495, 32.395496, 22.672548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457005, 33.027721, 22.367056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811146, 32.853020, 22.303310>,  <37.023628, 32.748199, 22.265062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811146, 32.853020, 22.303310>,  <36.457005, 33.027721, 22.367056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811146, 32.853020, 22.303310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021197, 0.380339, -0.924604,
		0.464441, 0.815221, 0.345992,
		0.885351, -0.436758, -0.159365,
		37.076752, 32.721992, 22.255501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887875, 33.534607, 22.064901>,  <36.457005, 33.027721, 22.367056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887875, 33.534607, 22.064901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063385, 33.190449, 21.961212>,  <37.168694, 32.983955, 21.898998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063385, 33.190449, 21.961212>,  <36.887875, 33.534607, 22.064901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063385, 33.190449, 21.961212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070477, 0.254639, -0.964464,
		0.895828, 0.441455, 0.051092,
		0.438778, -0.860393, -0.259225,
		37.195019, 32.932331, 21.883444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608109, 33.700703, 21.816158>,  <36.887875, 33.534607, 22.064901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608109, 33.700703, 21.816158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496838, 33.345539, 21.669603>,  <37.430077, 33.132442, 21.581671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496838, 33.345539, 21.669603>,  <37.608109, 33.700703, 21.816158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496838, 33.345539, 21.669603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317346, 0.275066, -0.907541,
		0.906592, -0.368729, 0.205256,
		-0.278178, -0.887906, -0.366387,
		37.413383, 33.079166, 21.559687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099319, 33.391518, 21.382248>,  <37.608109, 33.700703, 21.816158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099319, 33.391518, 21.382248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758327, 33.214886, 21.270334>,  <37.553730, 33.108906, 21.203186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758327, 33.214886, 21.270334>,  <38.099319, 33.391518, 21.382248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758327, 33.214886, 21.270334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224595, 0.173907, -0.958808,
		0.472050, -0.880205, -0.049075,
		-0.852482, -0.441583, -0.279782,
		37.502583, 33.082413, 21.186399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324600, 33.109436, 20.769453>,  <38.099319, 33.391518, 21.382248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324600, 33.109436, 20.769453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931740, 33.043560, 20.733112>,  <37.696022, 33.004036, 20.711308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931740, 33.043560, 20.733112>,  <38.324600, 33.109436, 20.769453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931740, 33.043560, 20.733112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069604, 0.130501, -0.989002,
		0.174742, -0.977673, -0.116708,
		-0.982151, -0.164697, -0.090854,
		37.637093, 32.994152, 20.705856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232346, 32.576298, 20.333424>,  <38.324600, 33.109436, 20.769453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232346, 32.576298, 20.333424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870800, 32.745296, 20.306509>,  <37.653873, 32.846695, 20.290359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870800, 32.745296, 20.306509>,  <38.232346, 32.576298, 20.333424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870800, 32.745296, 20.306509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165683, 0.200678, -0.965545,
		-0.394437, -0.883869, -0.251386,
		-0.903863, 0.422497, -0.067288,
		37.599640, 32.872044, 20.286324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876457, 32.267879, 19.752537>,  <38.232346, 32.576298, 20.333424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876457, 32.267879, 19.752537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631298, 32.579853, 19.803217>,  <37.484203, 32.767036, 19.833626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631298, 32.579853, 19.803217>,  <37.876457, 32.267879, 19.752537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631298, 32.579853, 19.803217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010281, 0.168205, -0.985699,
		-0.790096, -0.602830, -0.111111,
		-0.612898, 0.779938, 0.126700,
		37.447430, 32.813835, 19.841227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305012, 32.166279, 19.299871>,  <37.876457, 32.267879, 19.752537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305012, 32.166279, 19.299871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281662, 32.557152, 19.381559>,  <37.267651, 32.791676, 19.430573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281662, 32.557152, 19.381559>,  <37.305012, 32.166279, 19.299871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281662, 32.557152, 19.381559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183087, 0.190618, -0.964440,
		-0.981362, -0.093691, 0.167782,
		-0.058377, 0.977183, 0.204219,
		37.264149, 32.850307, 19.442825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612415, 32.408867, 19.081043>,  <37.305012, 32.166279, 19.299871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612415, 32.408867, 19.081043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864323, 32.719425, 19.071270>,  <37.015469, 32.905762, 19.065405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864323, 32.719425, 19.071270>,  <36.612415, 32.408867, 19.081043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864323, 32.719425, 19.071270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273461, 0.192153, -0.942495,
		-0.727057, 0.600234, 0.333327,
		0.629767, 0.776399, -0.024434,
		37.053253, 32.952347, 19.063940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138714, 32.319889, 18.530420>,  <36.612415, 32.408867, 19.081043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138714, 32.319889, 18.530420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843582, 32.406021, 18.274534>,  <36.666504, 32.457703, 18.121002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843582, 32.406021, 18.274534>,  <37.138714, 32.319889, 18.530420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843582, 32.406021, 18.274534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615212, 0.604462, -0.506103,
		0.277705, -0.766980, -0.578465,
		-0.737831, 0.215332, -0.639718,
		36.622234, 32.470619, 18.082619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413395, 32.030922, 17.941681>,  <37.138714, 32.319889, 18.530420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413395, 32.030922, 17.941681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163624, 32.333626, 17.864323>,  <37.013760, 32.515247, 17.817907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163624, 32.333626, 17.864323>,  <37.413395, 32.030922, 17.941681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163624, 32.333626, 17.864323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737407, 0.489521, -0.465404,
		-0.257530, -0.433221, -0.863712,
		-0.624428, 0.756762, -0.193394,
		36.976295, 32.560654, 17.806305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458614, 32.021412, 17.261782>,  <37.413395, 32.030922, 17.941681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458614, 32.021412, 17.261782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374077, 32.356800, 17.462702>,  <37.323357, 32.558033, 17.583254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374077, 32.356800, 17.462702>,  <37.458614, 32.021412, 17.261782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374077, 32.356800, 17.462702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777798, 0.455492, -0.433079,
		-0.591917, 0.299162, -0.748423,
		-0.211340, 0.838468, 0.502301,
		37.310677, 32.608341, 17.613392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486309, 32.647549, 16.780237>,  <37.458614, 32.021412, 17.261782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486309, 32.647549, 16.780237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557728, 32.739975, 17.162804>,  <37.600578, 32.795429, 17.392344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557728, 32.739975, 17.162804>,  <37.486309, 32.647549, 16.780237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557728, 32.739975, 17.162804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919711, 0.306224, -0.245680,
		-0.349645, 0.923492, -0.157834,
		0.178550, 0.231062, 0.956415,
		37.611294, 32.809292, 17.449728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575027, 33.411427, 16.894056>,  <37.486309, 32.647549, 16.780237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575027, 33.411427, 16.894056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768883, 33.144737, 17.120543>,  <37.885197, 32.984722, 17.256433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.768883, 33.144737, 17.120543>,  <37.575027, 33.411427, 16.894056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768883, 33.144737, 17.120543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859262, 0.241749, -0.450806,
		0.163682, 0.705007, 0.690053,
		0.484641, -0.666725, 0.566216,
		37.914276, 32.944721, 17.290407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106586, 33.755619, 17.220608>,  <37.575027, 33.411427, 16.894056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106586, 33.755619, 17.220608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195507, 33.366161, 17.200176>,  <38.248859, 33.132488, 17.187918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195507, 33.366161, 17.200176>,  <38.106586, 33.755619, 17.220608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195507, 33.366161, 17.200176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698683, 0.195623, -0.688167,
		0.680018, 0.117292, 0.723752,
		0.222299, -0.973640, -0.051077,
		38.262196, 33.074070, 17.184853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799450, 34.153725, 17.857395>,  <38.106586, 33.755619, 17.220608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799450, 34.153725, 17.857395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637135, 34.448727, 17.641462>,  <37.539745, 34.625729, 17.511904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637135, 34.448727, 17.641462>,  <37.799450, 34.153725, 17.857395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637135, 34.448727, 17.641462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095032, 0.553398, 0.827478,
		0.909012, 0.387084, -0.154477,
		-0.405791, 0.737507, -0.539830,
		37.515396, 34.669979, 17.479513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182201, 34.925758, 17.797930>,  <37.799450, 34.153725, 17.857395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182201, 34.925758, 17.797930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785645, 34.878983, 17.821514>,  <37.547710, 34.850918, 17.835665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785645, 34.878983, 17.821514>,  <38.182201, 34.925758, 17.797930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785645, 34.878983, 17.821514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005235, 0.485232, 0.874370,
		-0.130856, 0.866531, -0.481665,
		-0.991388, -0.116938, 0.058959,
		37.488228, 34.843903, 17.839201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926723, 35.664795, 17.914362>,  <38.182201, 34.925758, 17.797930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926723, 35.664795, 17.914362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653751, 35.397461, 18.032761>,  <37.489967, 35.237061, 18.103800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653751, 35.397461, 18.032761>,  <37.926723, 35.664795, 17.914362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653751, 35.397461, 18.032761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172390, 0.540688, 0.823370,
		-0.710328, 0.510869, -0.484197,
		-0.682434, -0.668333, 0.295997,
		37.449020, 35.196960, 18.121559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254967, 35.956188, 18.048504>,  <37.926723, 35.664795, 17.914362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254967, 35.956188, 18.048504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338116, 35.641796, 18.281410>,  <37.388004, 35.453163, 18.421154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338116, 35.641796, 18.281410>,  <37.254967, 35.956188, 18.048504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338116, 35.641796, 18.281410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175923, 0.555520, 0.812680,
		-0.962207, -0.271364, -0.022797,
		0.207868, -0.785976, 0.582265,
		37.400475, 35.406002, 18.456089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635605, 35.865360, 18.517490>,  <37.254967, 35.956188, 18.048504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635605, 35.865360, 18.517490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955158, 35.692287, 18.684620>,  <37.146889, 35.588444, 18.784897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955158, 35.692287, 18.684620>,  <36.635605, 35.865360, 18.517490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955158, 35.692287, 18.684620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262101, 0.374808, 0.889282,
		-0.541383, -0.819940, 0.186019,
		0.798879, -0.432686, 0.417822,
		37.194820, 35.562481, 18.809967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366253, 35.578972, 19.160933>,  <36.635605, 35.865360, 18.517490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366253, 35.578972, 19.160933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762207, 35.604931, 19.211405>,  <36.999779, 35.620506, 19.241688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762207, 35.604931, 19.211405>,  <36.366253, 35.578972, 19.160933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762207, 35.604931, 19.211405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138974, 0.264028, 0.954450,
		0.028621, -0.962330, 0.270375,
		0.989882, 0.064893, 0.126182,
		37.059174, 35.624397, 19.249260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478535, 35.182095, 19.733633>,  <36.366253, 35.578972, 19.160933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478535, 35.182095, 19.733633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778725, 35.443260, 19.692680>,  <36.958839, 35.599960, 19.668108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778725, 35.443260, 19.692680>,  <36.478535, 35.182095, 19.733633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778725, 35.443260, 19.692680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149188, 0.318282, 0.936183,
		0.643837, -0.687310, 0.336271,
		0.750478, 0.652918, -0.102384,
		37.003868, 35.639137, 19.661964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995327, 34.926540, 20.158535>,  <36.478535, 35.182095, 19.733633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995327, 34.926540, 20.158535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076920, 35.313408, 20.097916>,  <37.125877, 35.545528, 20.061544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076920, 35.313408, 20.097916>,  <36.995327, 34.926540, 20.158535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076920, 35.313408, 20.097916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058206, 0.142549, 0.988075,
		0.977242, -0.210374, -0.027218,
		0.203985, 0.967173, -0.151550,
		37.138115, 35.603561, 20.052450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387997, 35.072556, 20.709463>,  <36.995327, 34.926540, 20.158535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387997, 35.072556, 20.709463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316578, 35.441856, 20.573387>,  <37.273727, 35.663437, 20.491741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316578, 35.441856, 20.573387>,  <37.387997, 35.072556, 20.709463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316578, 35.441856, 20.573387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078634, 0.358030, 0.930393,
		0.980784, 0.139372, -0.136525,
		-0.178551, 0.923250, -0.340190,
		37.263012, 35.718830, 20.471331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933224, 35.531525, 21.138090>,  <37.387997, 35.072556, 20.709463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933224, 35.531525, 21.138090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665016, 35.793289, 20.998293>,  <37.504093, 35.950348, 20.914413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665016, 35.793289, 20.998293>,  <37.933224, 35.531525, 21.138090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665016, 35.793289, 20.998293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121968, 0.367441, 0.922015,
		0.731797, 0.660856, -0.166559,
		-0.670519, 0.654413, -0.349495,
		37.463860, 35.989613, 20.893444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142731, 36.323803, 21.341612>,  <37.933224, 35.531525, 21.138090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142731, 36.323803, 21.341612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749851, 36.264999, 21.294825>,  <37.514126, 36.229717, 21.266752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749851, 36.264999, 21.294825>,  <38.142731, 36.323803, 21.341612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749851, 36.264999, 21.294825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142798, 0.179622, 0.973316,
		-0.122080, 0.972689, -0.197417,
		-0.982194, -0.147013, -0.116969,
		37.455193, 36.220894, 21.259733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850521, 36.808174, 21.922312>,  <38.142731, 36.323803, 21.341612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850521, 36.808174, 21.922312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515316, 36.621563, 21.809114>,  <37.314194, 36.509594, 21.741196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.515316, 36.621563, 21.809114>,  <37.850521, 36.808174, 21.922312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515316, 36.621563, 21.809114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337109, 0.034839, 0.940821,
		-0.429064, 0.883818, -0.186468,
		-0.838011, -0.466532, -0.282995,
		37.263912, 36.481602, 21.724216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235233, 37.062328, 22.253056>,  <37.850521, 36.808174, 21.922312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235233, 37.062328, 22.253056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147781, 36.684334, 22.155731>,  <37.095310, 36.457535, 22.097338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147781, 36.684334, 22.155731>,  <37.235233, 37.062328, 22.253056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147781, 36.684334, 22.155731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276619, -0.179094, 0.944144,
		-0.935780, 0.273721, -0.222246,
		-0.218629, -0.944988, -0.243309,
		37.082191, 36.400837, 22.082739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513401, 36.995705, 22.469854>,  <37.235233, 37.062328, 22.253056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513401, 36.995705, 22.469854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700733, 36.642521, 22.482786>,  <36.813133, 36.430611, 22.490545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700733, 36.642521, 22.482786>,  <36.513401, 36.995705, 22.469854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700733, 36.642521, 22.482786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314405, -0.132341, 0.940019,
		-0.825724, -0.450400, -0.339587,
		0.468326, -0.882964, 0.032331,
		36.841232, 36.377632, 22.492485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167641, 36.679707, 22.950802>,  <36.513401, 36.995705, 22.469854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167641, 36.679707, 22.950802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472630, 36.421139, 22.939650>,  <36.655624, 36.265999, 22.932959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472630, 36.421139, 22.939650>,  <36.167641, 36.679707, 22.950802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472630, 36.421139, 22.939650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064469, -0.118782, 0.990825,
		-0.643797, -0.753683, -0.132242,
		0.762476, -0.646415, -0.027882,
		36.701374, 36.227215, 22.931284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887360, 36.031639, 23.273258>,  <36.167641, 36.679707, 22.950802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887360, 36.031639, 23.273258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285652, 36.023605, 23.309292>,  <36.524628, 36.018784, 23.330912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285652, 36.023605, 23.309292>,  <35.887360, 36.031639, 23.273258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285652, 36.023605, 23.309292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092001, -0.294121, 0.951330,
		0.007391, -0.955557, -0.294714,
		0.995731, -0.020082, 0.090086,
		36.584373, 36.017582, 23.336317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018467, 35.309177, 23.393114>,  <35.887360, 36.031639, 23.273258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018467, 35.309177, 23.393114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304604, 35.545124, 23.542963>,  <36.476284, 35.686691, 23.632874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.304604, 35.545124, 23.542963>,  <36.018467, 35.309177, 23.393114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304604, 35.545124, 23.542963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158565, -0.385105, 0.909149,
		0.680549, -0.709752, -0.181948,
		0.715339, 0.589870, 0.374625,
		36.519207, 35.722084, 23.655350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615166, 34.885479, 23.777718>,  <36.018467, 35.309177, 23.393114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615166, 34.885479, 23.777718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612431, 35.256676, 23.926737>,  <36.610790, 35.479393, 24.016148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612431, 35.256676, 23.926737>,  <36.615166, 34.885479, 23.777718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612431, 35.256676, 23.926737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044541, -0.372469, 0.926975,
		0.998984, -0.010258, 0.043879,
		-0.006834, 0.927988, 0.372548,
		36.610382, 35.535072, 24.038502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902668, 34.782478, 24.453928>,  <36.615166, 34.885479, 23.777718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902668, 34.782478, 24.453928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715363, 35.133801, 24.492533>,  <36.602982, 35.344593, 24.515696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715363, 35.133801, 24.492533>,  <36.902668, 34.782478, 24.453928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715363, 35.133801, 24.492533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126482, -0.174729, 0.976459,
		0.874491, 0.445031, 0.192908,
		-0.468261, 0.878303, 0.096511,
		36.574883, 35.397293, 24.521486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067978, 35.040001, 25.087460>,  <36.902668, 34.782478, 24.453928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067978, 35.040001, 25.087460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758114, 35.284878, 25.024065>,  <36.572197, 35.431805, 24.986029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758114, 35.284878, 25.024065>,  <37.067978, 35.040001, 25.087460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758114, 35.284878, 25.024065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267451, -0.090071, 0.959352,
		0.573036, 0.785560, 0.233507,
		-0.774661, 0.612195, -0.158485,
		36.525715, 35.468536, 24.976519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150669, 35.463787, 25.601549>,  <37.067978, 35.040001, 25.087460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150669, 35.463787, 25.601549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762699, 35.494331, 25.509106>,  <36.529919, 35.512657, 25.453640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762699, 35.494331, 25.509106>,  <37.150669, 35.463787, 25.601549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762699, 35.494331, 25.509106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228235, 0.044573, 0.972585,
		0.084567, 0.996083, -0.025805,
		-0.969926, 0.076359, -0.231111,
		36.471722, 35.517239, 25.439772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895790, 36.000916, 25.998909>,  <37.150669, 35.463787, 25.601549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895790, 36.000916, 25.998909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561337, 35.801819, 25.906698>,  <36.360664, 35.682362, 25.851372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561337, 35.801819, 25.906698>,  <36.895790, 36.000916, 25.998909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561337, 35.801819, 25.906698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271205, 0.009822, 0.962471,
		-0.476797, 0.867270, -0.143202,
		-0.836129, -0.497741, -0.230525,
		36.310497, 35.652496, 25.837542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337563, 36.292011, 26.458990>,  <36.895790, 36.000916, 25.998909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337563, 36.292011, 26.458990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180489, 35.941208, 26.348249>,  <36.086243, 35.730724, 26.281805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180489, 35.941208, 26.348249>,  <36.337563, 36.292011, 26.458990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180489, 35.941208, 26.348249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328183, -0.147586, 0.933013,
		-0.859122, 0.457243, -0.229864,
		-0.392690, -0.877010, -0.276853,
		36.062683, 35.678104, 26.265194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799042, 36.268803, 26.828262>,  <36.337563, 36.292011, 26.458990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799042, 36.268803, 26.828262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838787, 35.886608, 26.717138>,  <35.862633, 35.657291, 26.650463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838787, 35.886608, 26.717138>,  <35.799042, 36.268803, 26.828262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838787, 35.886608, 26.717138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410973, -0.293673, 0.863051,
		-0.906217, 0.028420, -0.421857,
		0.099360, -0.955483, -0.277811,
		35.868595, 35.599964, 26.633795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122761, 36.040234, 26.955408>,  <35.799042, 36.268803, 26.828262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122761, 36.040234, 26.955408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386093, 35.739140, 26.954832>,  <35.544090, 35.558483, 26.954487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386093, 35.739140, 26.954832>,  <35.122761, 36.040234, 26.955408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386093, 35.739140, 26.954832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321984, -0.283332, 0.903355,
		-0.680392, -0.594238, -0.428892,
		0.658326, -0.752731, -0.001442,
		35.583591, 35.513321, 26.954399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762669, 35.465221, 27.186930>,  <35.122761, 36.040234, 26.955408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762669, 35.465221, 27.186930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132809, 35.317673, 27.221949>,  <35.354893, 35.229145, 27.242960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132809, 35.317673, 27.221949>,  <34.762669, 35.465221, 27.186930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132809, 35.317673, 27.221949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254704, -0.433832, 0.864243,
		-0.280810, -0.822026, -0.495399,
		0.925350, -0.368868, 0.087549,
		35.410412, 35.207012, 27.248213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732140, 34.689037, 27.296755>,  <34.762669, 35.465221, 27.186930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732140, 34.689037, 27.296755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087204, 34.789650, 27.451048>,  <35.300243, 34.850018, 27.543625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087204, 34.789650, 27.451048>,  <34.732140, 34.689037, 27.296755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087204, 34.789650, 27.451048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225264, -0.493401, 0.840126,
		0.401641, -0.832638, -0.381311,
		0.887660, 0.251533, 0.385734,
		35.353500, 34.865108, 27.566769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060898, 34.045818, 27.501648>,  <34.732140, 34.689037, 27.296755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060898, 34.045818, 27.501648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204174, 34.354015, 27.712564>,  <35.290142, 34.538933, 27.839115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204174, 34.354015, 27.712564>,  <35.060898, 34.045818, 27.501648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204174, 34.354015, 27.712564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219910, -0.479250, 0.849682,
		0.907380, -0.420306, -0.002224,
		0.358192, 0.770495, 0.527291,
		35.311630, 34.585163, 27.870752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417431, 33.789440, 28.096628>,  <35.060898, 34.045818, 27.501648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417431, 33.789440, 28.096628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336693, 34.162144, 28.217352>,  <35.288250, 34.385765, 28.289785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336693, 34.162144, 28.217352>,  <35.417431, 33.789440, 28.096628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336693, 34.162144, 28.217352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077860, -0.322440, 0.943382,
		0.976318, 0.166916, 0.137629,
		-0.201843, 0.931757, 0.301808,
		35.276138, 34.441669, 28.307894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602413, 33.779984, 28.737505>,  <35.417431, 33.789440, 28.096628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602413, 33.779984, 28.737505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391781, 34.119827, 28.749409>,  <35.265404, 34.323734, 28.756552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391781, 34.119827, 28.749409>,  <35.602413, 33.779984, 28.737505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391781, 34.119827, 28.749409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095345, -0.093809, 0.991014,
		0.844764, 0.519008, 0.130404,
		-0.526577, 0.849606, 0.029761,
		35.233807, 34.374710, 28.758337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994099, 34.196499, 29.263224>,  <35.602413, 33.779984, 28.737505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994099, 34.196499, 29.263224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626373, 34.351498, 29.235765>,  <35.405739, 34.444496, 29.219292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626373, 34.351498, 29.235765>,  <35.994099, 34.196499, 29.263224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626373, 34.351498, 29.235765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059280, 0.036081, 0.997589,
		0.389035, 0.921166, -0.010199,
		-0.919314, 0.387493, -0.068644,
		35.350578, 34.467747, 29.215172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935013, 34.706177, 29.777992>,  <35.994099, 34.196499, 29.263224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935013, 34.706177, 29.777992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551365, 34.610321, 29.717785>,  <35.321175, 34.552807, 29.681662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551365, 34.610321, 29.717785>,  <35.935013, 34.706177, 29.777992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551365, 34.610321, 29.717785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202150, 0.207973, 0.957018,
		-0.198039, 0.948324, -0.247915,
		-0.959122, -0.239643, -0.150517,
		35.263630, 34.538429, 29.672630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555222, 35.263702, 30.025911>,  <35.935013, 34.706177, 29.777992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555222, 35.263702, 30.025911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313774, 34.944820, 30.030100>,  <35.168907, 34.753490, 30.032614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313774, 34.944820, 30.030100>,  <35.555222, 35.263702, 30.025911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313774, 34.944820, 30.030100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107937, 0.094727, 0.989634,
		-0.789933, 0.596231, -0.143227,
		-0.603618, -0.797205, 0.010473,
		35.132690, 34.705658, 30.033241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116535, 35.397457, 30.516886>,  <35.555222, 35.263702, 30.025911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116535, 35.397457, 30.516886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029217, 35.009193, 30.476547>,  <34.976826, 34.776234, 30.452345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029217, 35.009193, 30.476547>,  <35.116535, 35.397457, 30.516886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029217, 35.009193, 30.476547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050466, -0.091970, 0.994482,
		-0.974578, 0.222178, -0.028909,
		-0.218293, -0.970659, -0.100845,
		34.963730, 34.717995, 30.446295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504230, 35.292904, 30.834904>,  <35.116535, 35.397457, 30.516886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504230, 35.292904, 30.834904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681721, 34.934715, 30.820801>,  <34.788216, 34.719803, 30.812338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681721, 34.934715, 30.820801>,  <34.504230, 35.292904, 30.834904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681721, 34.934715, 30.820801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170488, -0.122978, 0.977656,
		-0.879795, -0.427802, -0.207235,
		0.443729, -0.895468, -0.035260,
		34.814838, 34.666077, 30.810223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037312, 34.873383, 31.217754>,  <34.504230, 35.292904, 30.834904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037312, 34.873383, 31.217754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382130, 34.671741, 31.196724>,  <34.589020, 34.550758, 31.184105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382130, 34.671741, 31.196724>,  <34.037312, 34.873383, 31.217754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382130, 34.671741, 31.196724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016220, -0.076245, 0.996957,
		-0.506574, -0.860274, -0.057550,
		0.862044, -0.504099, -0.052577,
		34.640743, 34.520512, 31.180950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906921, 34.228374, 31.646608>,  <34.037312, 34.873383, 31.217754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906921, 34.228374, 31.646608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290218, 34.335270, 31.605896>,  <34.520195, 34.399406, 31.581469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290218, 34.335270, 31.605896>,  <33.906921, 34.228374, 31.646608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290218, 34.335270, 31.605896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131332, -0.095085, 0.986768,
		0.254028, -0.958927, -0.126211,
		0.958239, 0.267242, -0.101783,
		34.577690, 34.415443, 31.575361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179596, 33.732533, 32.053589>,  <33.906921, 34.228374, 31.646608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179596, 33.732533, 32.053589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421440, 34.047981, 32.008831>,  <34.566547, 34.237251, 31.981976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421440, 34.047981, 32.008831>,  <34.179596, 33.732533, 32.053589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421440, 34.047981, 32.008831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269452, -0.070300, 0.960445,
		0.749565, -0.610842, -0.255000,
		0.604606, 0.788625, -0.111898,
		34.602821, 34.284569, 31.975262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690224, 33.642757, 32.536167>,  <34.179596, 33.732533, 32.053589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690224, 33.642757, 32.536167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788700, 34.022999, 32.460548>,  <34.847786, 34.251144, 32.415176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788700, 34.022999, 32.460548>,  <34.690224, 33.642757, 32.536167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788700, 34.022999, 32.460548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197978, 0.141611, 0.969923,
		0.948786, -0.276212, -0.153336,
		0.246190, 0.950607, -0.189043,
		34.862556, 34.308182, 32.403835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505234, 33.765179, 32.457001>,  <34.690224, 33.642757, 32.536167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505234, 33.765179, 32.457001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290726, 34.083542, 32.569389>,  <35.162022, 34.274559, 32.636822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290726, 34.083542, 32.569389>,  <35.505234, 33.765179, 32.457001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290726, 34.083542, 32.569389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522134, 0.051267, 0.851321,
		0.663168, 0.603243, -0.443063,
		-0.536268, 0.795908, 0.280976,
		35.129845, 34.322315, 32.653683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009056, 34.233418, 32.725693>,  <35.505234, 33.765179, 32.457001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009056, 34.233418, 32.725693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667046, 34.403736, 32.844097>,  <35.461838, 34.505928, 32.915142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667046, 34.403736, 32.844097>,  <36.009056, 34.233418, 32.725693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667046, 34.403736, 32.844097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466214, 0.381174, 0.798343,
		0.227102, 0.820610, -0.524428,
		-0.855026, 0.425801, 0.296015,
		35.410538, 34.531475, 32.932903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288197, 34.796711, 33.087406>,  <36.009056, 34.233418, 32.725693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288197, 34.796711, 33.087406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916183, 34.739544, 33.222828>,  <35.692978, 34.705246, 33.304081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916183, 34.739544, 33.222828>,  <36.288197, 34.796711, 33.087406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916183, 34.739544, 33.222828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308668, 0.196147, 0.930726,
		-0.199422, 0.970104, -0.138309,
		-0.930030, -0.142915, 0.338556,
		35.637173, 34.696671, 33.324394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101532, 34.921696, 33.245098>,  <36.288197, 34.796711, 33.087406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101532, 34.921696, 33.245098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494343, 34.995571, 33.260632>,  <37.730030, 35.039898, 33.269951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494343, 34.995571, 33.260632>,  <37.101532, 34.921696, 33.245098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494343, 34.995571, 33.260632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071162, 0.552922, -0.830189,
		-0.174801, 0.812506, 0.556128,
		0.982029, 0.184693, 0.038832,
		37.788952, 35.050980, 33.272282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214798, 35.565254, 32.886269>,  <37.101532, 34.921696, 33.245098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214798, 35.565254, 32.886269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579239, 35.401428, 32.904800>,  <37.797905, 35.303131, 32.915920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579239, 35.401428, 32.904800>,  <37.214798, 35.565254, 32.886269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579239, 35.401428, 32.904800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253338, 0.467789, -0.846755,
		0.325132, 0.783217, 0.529962,
		0.911103, -0.409567, 0.046326,
		37.852570, 35.278557, 32.918697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703739, 36.129032, 32.825909>,  <37.214798, 35.565254, 32.886269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703739, 36.129032, 32.825909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919693, 35.806870, 32.728050>,  <38.049263, 35.613571, 32.669334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919693, 35.806870, 32.728050>,  <37.703739, 36.129032, 32.825909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919693, 35.806870, 32.728050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446683, 0.520473, -0.727724,
		0.713445, 0.283603, 0.640754,
		0.539880, -0.805405, -0.244648,
		38.081657, 35.565247, 32.654655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370670, 36.367264, 32.722382>,  <37.703739, 36.129032, 32.825909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370670, 36.367264, 32.722382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372261, 36.013359, 32.535973>,  <38.373215, 35.801014, 32.424129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372261, 36.013359, 32.535973>,  <38.370670, 36.367264, 32.722382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372261, 36.013359, 32.535973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559751, 0.388141, -0.732137,
		0.828651, -0.257947, 0.496790,
		0.003972, -0.884766, -0.466020,
		38.373451, 35.747929, 32.396168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038597, 36.341465, 32.575760>,  <38.370670, 36.367264, 32.722382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038597, 36.341465, 32.575760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882526, 36.067974, 32.329094>,  <38.788883, 35.903877, 32.181095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882526, 36.067974, 32.329094>,  <39.038597, 36.341465, 32.575760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882526, 36.067974, 32.329094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485699, 0.416147, -0.768712,
		0.782216, -0.599444, 0.169719,
		-0.390172, -0.683731, -0.616666,
		38.765476, 35.862854, 32.144093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503391, 36.120255, 32.045456>,  <39.038597, 36.341465, 32.575760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503391, 36.120255, 32.045456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152782, 36.024113, 31.878628>,  <38.942417, 35.966427, 31.778532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152782, 36.024113, 31.878628>,  <39.503391, 36.120255, 32.045456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152782, 36.024113, 31.878628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281673, 0.446510, -0.849288,
		0.390352, -0.861894, -0.323674,
		-0.876519, -0.240351, -0.417068,
		38.889828, 35.952007, 31.753508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690636, 35.803879, 31.332979>,  <39.503391, 36.120255, 32.045456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690636, 35.803879, 31.332979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311153, 35.926975, 31.303986>,  <39.083466, 36.000832, 31.286591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311153, 35.926975, 31.303986>,  <39.690636, 35.803879, 31.332979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311153, 35.926975, 31.303986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168494, 0.298146, -0.939531,
		-0.267521, -0.903551, -0.334705,
		-0.948705, 0.307739, -0.072482,
		39.026543, 36.019299, 31.282240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452747, 35.621346, 30.623495>,  <39.690636, 35.803879, 31.332979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452747, 35.621346, 30.623495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217594, 35.905384, 30.778498>,  <39.076504, 36.075806, 30.871498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217594, 35.905384, 30.778498>,  <39.452747, 35.621346, 30.623495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217594, 35.905384, 30.778498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122567, 0.395304, -0.910336,
		-0.799608, -0.582665, -0.145358,
		-0.587881, 0.710096, 0.387504,
		39.041229, 36.118412, 30.894749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827911, 35.482891, 30.312601>,  <39.452747, 35.621346, 30.623495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827911, 35.482891, 30.312601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854187, 35.863720, 30.432096>,  <38.869953, 36.092216, 30.503794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854187, 35.863720, 30.432096>,  <38.827911, 35.482891, 30.312601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854187, 35.863720, 30.432096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134498, 0.305101, -0.942774,
		-0.988734, 0.021748, 0.148093,
		0.065686, 0.952072, 0.298738,
		38.873894, 36.149342, 30.521717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313366, 35.853710, 29.971048>,  <38.827911, 35.482891, 30.312601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313366, 35.853710, 29.971048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599899, 36.113514, 30.073034>,  <38.771820, 36.269398, 30.134226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599899, 36.113514, 30.073034>,  <38.313366, 35.853710, 29.971048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599899, 36.113514, 30.073034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063747, 0.302961, -0.950869,
		-0.694843, 0.697390, 0.175616,
		0.716331, 0.649509, 0.254967,
		38.814800, 36.308365, 30.149525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100662, 36.446419, 29.607954>,  <38.313366, 35.853710, 29.971048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100662, 36.446419, 29.607954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472157, 36.553925, 29.710110>,  <38.695053, 36.618427, 29.771402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472157, 36.553925, 29.710110>,  <38.100662, 36.446419, 29.607954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472157, 36.553925, 29.710110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107966, 0.462930, -0.879795,
		-0.354682, 0.844667, 0.400921,
		0.928733, 0.268761, 0.255388,
		38.750778, 36.634552, 29.786726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220375, 37.111969, 29.526165>,  <38.100662, 36.446419, 29.607954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220375, 37.111969, 29.526165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588215, 36.959137, 29.489609>,  <38.808918, 36.867439, 29.467674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588215, 36.959137, 29.489609>,  <38.220375, 37.111969, 29.526165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588215, 36.959137, 29.489609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084168, 0.418850, -0.904146,
		0.383734, 0.823761, 0.417333,
		0.919600, -0.382078, -0.091393,
		38.864094, 36.844513, 29.462191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629391, 37.701965, 29.307650>,  <38.220375, 37.111969, 29.526165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629391, 37.701965, 29.307650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855869, 37.384014, 29.220390>,  <38.991756, 37.193245, 29.168036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855869, 37.384014, 29.220390>,  <38.629391, 37.701965, 29.307650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855869, 37.384014, 29.220390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189077, 0.382846, -0.904256,
		0.802290, 0.470742, 0.367060,
		0.566198, -0.794878, -0.218147,
		39.025730, 37.145550, 29.154945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265289, 37.835712, 29.024836>,  <38.629391, 37.701965, 29.307650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265289, 37.835712, 29.024836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185432, 37.461113, 28.909519>,  <39.137520, 37.236355, 28.840330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185432, 37.461113, 28.909519>,  <39.265289, 37.835712, 29.024836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185432, 37.461113, 28.909519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176568, 0.255016, -0.950679,
		0.963829, -0.240700, 0.114443,
		-0.199643, -0.936499, -0.288291,
		39.125538, 37.180164, 28.823032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798664, 37.650841, 28.675356>,  <39.265289, 37.835712, 29.024836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798664, 37.650841, 28.675356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509418, 37.400654, 28.558128>,  <39.335869, 37.250542, 28.487793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.509418, 37.400654, 28.558128>,  <39.798664, 37.650841, 28.675356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.509418, 37.400654, 28.558128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277298, 0.125722, -0.952523,
		0.632621, -0.770051, 0.082531,
		-0.723116, -0.625472, -0.293068,
		39.292484, 37.213013, 28.470207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128742, 37.101067, 28.118317>,  <39.798664, 37.650841, 28.675356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128742, 37.101067, 28.118317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732643, 37.095634, 28.062859>,  <39.494984, 37.092373, 28.029583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.732643, 37.095634, 28.062859>,  <40.128742, 37.101067, 28.118317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732643, 37.095634, 28.062859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139159, -0.050215, -0.988996,
		0.006476, -0.998646, 0.051616,
		-0.990249, -0.013588, -0.138646,
		39.435570, 37.091560, 28.021265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060783, 36.751213, 27.514784>,  <40.128742, 37.101067, 28.118317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060783, 36.751213, 27.514784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696083, 36.904198, 27.574697>,  <39.477264, 36.995987, 27.610645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696083, 36.904198, 27.574697>,  <40.060783, 36.751213, 27.514784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696083, 36.904198, 27.574697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249132, -0.225006, -0.941969,
		-0.326564, -0.896157, 0.300432,
		-0.911751, 0.382460, 0.149782,
		39.422558, 37.018936, 27.619633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501831, 36.332546, 27.478773>,  <40.060783, 36.751213, 27.514784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501831, 36.332546, 27.478773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316074, 36.678375, 27.401981>,  <39.204620, 36.885872, 27.355906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316074, 36.678375, 27.401981>,  <39.501831, 36.332546, 27.478773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316074, 36.678375, 27.401981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279484, -0.348761, -0.894570,
		-0.840375, -0.361775, 0.403595,
		-0.464391, 0.864572, -0.191979,
		39.176758, 36.937748, 27.344387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864922, 36.244541, 27.093037>,  <39.501831, 36.332546, 27.478773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864922, 36.244541, 27.093037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910923, 36.631439, 27.002510>,  <38.938522, 36.863579, 26.948195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910923, 36.631439, 27.002510>,  <38.864922, 36.244541, 27.093037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910923, 36.631439, 27.002510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265896, -0.189541, -0.945185,
		-0.957117, 0.168877, 0.235387,
		0.115005, 0.967241, -0.226316,
		38.945423, 36.921612, 26.934616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292377, 36.416935, 26.593302>,  <38.864922, 36.244541, 27.093037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292377, 36.416935, 26.593302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583157, 36.686127, 26.538679>,  <38.757622, 36.847641, 26.505905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583157, 36.686127, 26.538679>,  <38.292377, 36.416935, 26.593302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583157, 36.686127, 26.538679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020251, -0.219784, -0.975338,
		-0.686398, 0.706251, -0.173399,
		0.726944, 0.672982, -0.136557,
		38.801239, 36.888020, 26.497711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010715, 36.924660, 26.037243>,  <38.292377, 36.416935, 26.593302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010715, 36.924660, 26.037243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408810, 36.941040, 26.072643>,  <38.647667, 36.950867, 26.093884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408810, 36.941040, 26.072643>,  <38.010715, 36.924660, 26.037243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408810, 36.941040, 26.072643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095747, -0.238386, -0.966439,
		-0.018475, 0.970307, -0.241171,
		0.995234, 0.040946, 0.088499,
		38.707378, 36.953323, 26.099194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190258, 37.297024, 25.442976>,  <38.010715, 36.924660, 26.037243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190258, 37.297024, 25.442976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538803, 37.148697, 25.571487>,  <38.747929, 37.059700, 25.648594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538803, 37.148697, 25.571487>,  <38.190258, 37.297024, 25.442976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538803, 37.148697, 25.571487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256668, -0.213557, -0.942611,
		0.418148, 0.903818, -0.090909,
		0.871363, -0.370818, 0.321280,
		38.800213, 37.037453, 25.667871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607319, 37.441780, 24.913885>,  <38.190258, 37.297024, 25.442976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607319, 37.441780, 24.913885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833954, 37.169254, 25.099270>,  <38.969933, 37.005741, 25.210501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833954, 37.169254, 25.099270>,  <38.607319, 37.441780, 24.913885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833954, 37.169254, 25.099270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393289, -0.270656, -0.878675,
		0.724091, 0.680117, 0.114604,
		0.566583, -0.681312, 0.463462,
		39.003929, 36.964859, 25.238308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355984, 37.462578, 24.703529>,  <38.607319, 37.441780, 24.913885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355984, 37.462578, 24.703529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286427, 37.097248, 24.850826>,  <39.244694, 36.878052, 24.939203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286427, 37.097248, 24.850826>,  <39.355984, 37.462578, 24.703529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286427, 37.097248, 24.850826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406103, -0.407169, -0.818104,
		0.897130, 0.007282, 0.441707,
		-0.173892, -0.913324, 0.368241,
		39.234261, 36.823250, 24.961298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027779, 37.063972, 24.546833>,  <39.355984, 37.462578, 24.703529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.027779, 37.063972, 24.546833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719757, 36.811893, 24.586575>,  <39.534946, 36.660645, 24.610420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719757, 36.811893, 24.586575>,  <40.027779, 37.063972, 24.546833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719757, 36.811893, 24.586575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266581, -0.459325, -0.847322,
		0.579620, -0.625993, 0.521702,
		-0.770049, -0.630201, 0.099356,
		39.488743, 36.622833, 24.616381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274132, 36.380177, 24.271929>,  <40.027779, 37.063972, 24.546833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274132, 36.380177, 24.271929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876469, 36.337025, 24.273481>,  <39.637871, 36.311134, 24.274412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876469, 36.337025, 24.273481>,  <40.274132, 36.380177, 24.271929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876469, 36.337025, 24.273481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052175, -0.511692, -0.857583,
		0.094498, -0.852370, 0.514330,
		-0.994157, -0.107875, 0.003882,
		39.578220, 36.304661, 24.274647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104176, 35.642174, 24.208519>,  <40.274132, 36.380177, 24.271929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104176, 35.642174, 24.208519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760998, 35.805679, 24.084036>,  <39.555092, 35.903782, 24.009346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760998, 35.805679, 24.084036>,  <40.104176, 35.642174, 24.208519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760998, 35.805679, 24.084036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039015, -0.552170, -0.832818,
		-0.512262, -0.726652, 0.457782,
		-0.857942, 0.408761, -0.311206,
		39.503616, 35.928307, 23.990673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539810, 35.096939, 24.063797>,  <40.104176, 35.642174, 24.208519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539810, 35.096939, 24.063797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470448, 35.426540, 23.848038>,  <39.428829, 35.624302, 23.718582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470448, 35.426540, 23.848038>,  <39.539810, 35.096939, 24.063797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470448, 35.426540, 23.848038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037975, -0.541696, -0.839716,
		-0.984119, -0.166093, 0.062640,
		-0.173402, 0.824002, -0.539400,
		39.418427, 35.673740, 23.686218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952564, 34.829094, 23.552126>,  <39.539810, 35.096939, 24.063797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952564, 34.829094, 23.552126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081017, 35.185452, 23.423641>,  <39.158089, 35.399265, 23.346550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081017, 35.185452, 23.423641>,  <38.952564, 34.829094, 23.552126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081017, 35.185452, 23.423641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016990, -0.344542, -0.938617,
		-0.946882, 0.295963, -0.125780,
		0.321133, 0.890897, -0.321212,
		39.177357, 35.452721, 23.327278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746590, 34.980831, 22.962635>,  <38.952564, 34.829094, 23.552126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746590, 34.980831, 22.962635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056202, 35.229889, 22.916702>,  <39.241970, 35.379322, 22.889143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056202, 35.229889, 22.916702>,  <38.746590, 34.980831, 22.962635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056202, 35.229889, 22.916702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195739, -0.407809, -0.891840,
		-0.602127, 0.667838, -0.437533,
		0.774035, 0.622643, -0.114831,
		39.288414, 35.416683, 22.882254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704521, 35.198032, 22.338074>,  <38.746590, 34.980831, 22.962635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704521, 35.198032, 22.338074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086517, 35.289845, 22.413240>,  <39.315716, 35.344933, 22.458340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086517, 35.289845, 22.413240>,  <38.704521, 35.198032, 22.338074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086517, 35.289845, 22.413240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189833, 0.013908, -0.981718,
		-0.227946, 0.973203, -0.030290,
		0.954989, 0.229528, 0.187916,
		39.373013, 35.358704, 22.469616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912701, 35.671867, 21.778570>,  <38.704521, 35.198032, 22.338074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912701, 35.671867, 21.778570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251278, 35.517464, 21.925283>,  <39.454426, 35.424820, 22.013311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251278, 35.517464, 21.925283>,  <38.912701, 35.671867, 21.778570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251278, 35.517464, 21.925283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347324, -0.121870, -0.929792,
		0.403609, 0.914409, 0.030915,
		0.846443, -0.386010, 0.366784,
		39.505211, 35.401661, 22.035318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379269, 35.975685, 21.339638>,  <38.912701, 35.671867, 21.778570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379269, 35.975685, 21.339638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580898, 35.682724, 21.522722>,  <39.701874, 35.506947, 21.632572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580898, 35.682724, 21.522722>,  <39.379269, 35.975685, 21.339638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580898, 35.682724, 21.522722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304535, -0.345198, -0.887748,
		0.808190, 0.586876, 0.049038,
		0.504071, -0.732403, 0.457710,
		39.732121, 35.463001, 21.660036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114014, 36.027328, 21.088984>,  <39.379269, 35.975685, 21.339638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114014, 36.027328, 21.088984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035957, 35.656773, 21.217806>,  <39.989124, 35.434437, 21.295099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035957, 35.656773, 21.217806>,  <40.114014, 36.027328, 21.088984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035957, 35.656773, 21.217806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333565, -0.371480, -0.866451,
		0.922309, -0.061654, 0.381503,
		-0.195141, -0.926391, 0.322054,
		39.977413, 35.378857, 21.314423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765442, 35.558117, 20.870090>,  <40.114014, 36.027328, 21.088984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765442, 35.558117, 20.870090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462952, 35.299622, 20.911074>,  <40.281456, 35.144524, 20.935663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462952, 35.299622, 20.911074>,  <40.765442, 35.558117, 20.870090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462952, 35.299622, 20.911074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347546, -0.529397, -0.773919,
		0.554378, -0.549649, 0.624942,
		-0.756226, -0.646239, 0.102457,
		40.236084, 35.105751, 20.941811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084045, 34.853920, 20.830963>,  <40.765442, 35.558117, 20.870090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084045, 34.853920, 20.830963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696884, 34.873684, 20.732389>,  <40.464588, 34.885544, 20.673244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696884, 34.873684, 20.732389>,  <41.084045, 34.853920, 20.830963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696884, 34.873684, 20.732389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196220, -0.464157, -0.863745,
		-0.157065, -0.884374, 0.439561,
		-0.967899, 0.049414, -0.246435,
		40.406513, 34.888508, 20.658459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845230, 34.127403, 20.633991>,  <41.084045, 34.853920, 20.830963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845230, 34.127403, 20.633991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579262, 34.376301, 20.468731>,  <40.419682, 34.525639, 20.369576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.579262, 34.376301, 20.468731>,  <40.845230, 34.127403, 20.633991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579262, 34.376301, 20.468731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029898, -0.574874, -0.817696,
		-0.746313, -0.531353, 0.400850,
		-0.664923, 0.622242, -0.413149,
		40.379784, 34.562973, 20.344786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584129, 33.671452, 20.184753>,  <40.845230, 34.127403, 20.633991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584129, 33.671452, 20.184753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442108, 34.033195, 20.090031>,  <40.356895, 34.250240, 20.033197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442108, 34.033195, 20.090031>,  <40.584129, 33.671452, 20.184753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442108, 34.033195, 20.090031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206184, -0.322827, -0.923727,
		-0.911825, -0.279147, 0.301085,
		-0.355054, 0.904356, -0.236806,
		40.335590, 34.304501, 20.018990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132042, 33.455700, 19.637848>,  <40.584129, 33.671452, 20.184753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132042, 33.455700, 19.637848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391399, 33.151249, 19.631163>,  <41.547012, 32.968578, 19.627151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391399, 33.151249, 19.631163>,  <41.132042, 33.455700, 19.637848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391399, 33.151249, 19.631163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114378, -0.119095, 0.986273,
		-0.752666, -0.637579, -0.164276,
		0.648392, -0.761124, -0.016713,
		41.585918, 32.922913, 19.626148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857494, 32.779907, 19.972219>,  <41.132042, 33.455700, 19.637848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857494, 32.779907, 19.972219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256432, 32.799744, 19.993578>,  <41.495792, 32.811646, 20.006393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256432, 32.799744, 19.993578>,  <40.857494, 32.779907, 19.972219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256432, 32.799744, 19.993578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049218, -0.081960, 0.995420,
		0.053741, -0.995401, -0.079301,
		0.997341, 0.049592, 0.053396,
		41.555634, 32.814621, 20.009596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965065, 32.498402, 20.633236>,  <40.857494, 32.779907, 19.972219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965065, 32.498402, 20.633236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299484, 32.701454, 20.549969>,  <41.500134, 32.823288, 20.500008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299484, 32.701454, 20.549969>,  <40.965065, 32.498402, 20.633236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299484, 32.701454, 20.549969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133020, 0.180553, 0.974529,
		0.532290, -0.842442, 0.083425,
		0.836046, 0.507634, -0.208168,
		41.550297, 32.853745, 20.487518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323780, 32.341850, 21.185589>,  <40.965065, 32.498402, 20.633236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323780, 32.341850, 21.185589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541862, 32.643631, 21.039413>,  <41.672710, 32.824699, 20.951708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541862, 32.643631, 21.039413>,  <41.323780, 32.341850, 21.185589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541862, 32.643631, 21.039413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262229, 0.260565, 0.929162,
		0.796233, -0.602413, -0.055779,
		0.545206, 0.754456, -0.365440,
		41.705425, 32.869968, 20.929781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919861, 32.348915, 21.556032>,  <41.323780, 32.341850, 21.185589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919861, 32.348915, 21.556032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925816, 32.724480, 21.418501>,  <41.929386, 32.949818, 21.335981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.925816, 32.724480, 21.418501>,  <41.919861, 32.348915, 21.556032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.925816, 32.724480, 21.418501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204776, 0.333717, 0.920163,
		0.978696, -0.084102, -0.187300,
		0.014882, 0.938914, -0.343830,
		41.930279, 33.006153, 21.315351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647224, 32.635086, 21.806955>,  <41.919861, 32.348915, 21.556032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647224, 32.635086, 21.806955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375317, 32.914955, 21.718981>,  <42.212170, 33.082874, 21.666195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.375317, 32.914955, 21.718981>,  <42.647224, 32.635086, 21.806955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375317, 32.914955, 21.718981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179881, 0.449769, 0.874843,
		0.711023, 0.555130, -0.431598,
		-0.679771, 0.699670, -0.219939,
		42.171387, 33.124855, 21.653000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.994015, 33.299641, 21.885090>,  <42.647224, 32.635086, 21.806955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.994015, 33.299641, 21.885090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607422, 33.400280, 21.905514>,  <42.375465, 33.460663, 21.917768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607422, 33.400280, 21.905514>,  <42.994015, 33.299641, 21.885090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607422, 33.400280, 21.905514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187401, 0.555473, 0.810143,
		0.175464, 0.792560, -0.584005,
		-0.966485, 0.251594, 0.051061,
		42.317478, 33.475758, 21.920832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.024452, 34.046917, 22.120714>,  <42.994015, 33.299641, 21.885090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.024452, 34.046917, 22.120714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654949, 33.928619, 22.218044>,  <42.433247, 33.857643, 22.276443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654949, 33.928619, 22.218044>,  <43.024452, 34.046917, 22.120714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654949, 33.928619, 22.218044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016459, 0.665428, 0.746281,
		-0.382622, 0.685378, -0.619562,
		-0.923759, -0.295741, 0.243326,
		42.377823, 33.839897, 22.291042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733517, 34.675854, 22.344360>,  <43.024452, 34.046917, 22.120714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733517, 34.675854, 22.344360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496597, 34.392723, 22.498331>,  <42.354446, 34.222847, 22.590714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496597, 34.392723, 22.498331>,  <42.733517, 34.675854, 22.344360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496597, 34.392723, 22.498331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129661, 0.555252, 0.821513,
		-0.795219, 0.436669, -0.420652,
		-0.592297, -0.707824, 0.384928,
		42.318909, 34.180374, 22.613810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183056, 35.089886, 22.567696>,  <42.733517, 34.675854, 22.344360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183056, 35.089886, 22.567696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176651, 34.739361, 22.760283>,  <42.172810, 34.529045, 22.875835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176651, 34.739361, 22.760283>,  <42.183056, 35.089886, 22.567696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176651, 34.739361, 22.760283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165925, 0.477183, 0.862998,
		-0.986008, -0.066071, -0.153042,
		-0.016010, -0.876316, 0.481469,
		42.171848, 34.476467, 22.904724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658752, 35.137783, 23.019169>,  <42.183056, 35.089886, 22.567696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658752, 35.137783, 23.019169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851833, 34.821419, 23.169609>,  <41.967682, 34.631599, 23.259874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851833, 34.821419, 23.169609>,  <41.658752, 35.137783, 23.019169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851833, 34.821419, 23.169609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286797, 0.263013, 0.921179,
		-0.827493, -0.552522, -0.099874,
		0.482703, -0.790914, 0.376103,
		41.996643, 34.584145, 23.282440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125023, 34.791653, 23.419664>,  <41.658752, 35.137783, 23.019169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125023, 34.791653, 23.419664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491222, 34.685955, 23.541018>,  <41.710941, 34.622536, 23.613829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491222, 34.685955, 23.541018>,  <41.125023, 34.791653, 23.419664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491222, 34.685955, 23.541018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241256, 0.242886, 0.939575,
		-0.321962, -0.933372, 0.158611,
		0.915498, -0.264242, 0.303382,
		41.765873, 34.606682, 23.632032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061550, 34.349022, 24.006744>,  <41.125023, 34.791653, 23.419664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061550, 34.349022, 24.006744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428108, 34.509060, 24.011551>,  <41.648045, 34.605083, 24.014435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428108, 34.509060, 24.011551>,  <41.061550, 34.349022, 24.006744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428108, 34.509060, 24.011551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062924, 0.114348, 0.991446,
		0.395298, -0.909312, 0.129964,
		0.916395, 0.400094, 0.012016,
		41.703026, 34.629089, 24.015156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323933, 33.995953, 24.626692>,  <41.061550, 34.349022, 24.006744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323933, 33.995953, 24.626692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544373, 34.317390, 24.536776>,  <41.676636, 34.510254, 24.482826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544373, 34.317390, 24.536776>,  <41.323933, 33.995953, 24.626692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544373, 34.317390, 24.536776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182020, 0.147133, 0.972224,
		0.814347, -0.576706, -0.065185,
		0.551097, 0.803593, -0.224790,
		41.709702, 34.558468, 24.469339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925018, 33.957340, 24.995510>,  <41.323933, 33.995953, 24.626692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925018, 33.957340, 24.995510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853157, 34.343361, 24.919188>,  <41.810040, 34.574974, 24.873394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853157, 34.343361, 24.919188>,  <41.925018, 33.957340, 24.995510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853157, 34.343361, 24.919188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239907, 0.231084, 0.942891,
		0.954028, 0.123618, -0.273037,
		-0.179653, 0.965048, -0.190804,
		41.799263, 34.632877, 24.861946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458191, 34.287174, 25.376894>,  <41.925018, 33.957340, 24.995510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458191, 34.287174, 25.376894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182842, 34.569351, 25.309368>,  <42.017635, 34.738659, 25.268852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182842, 34.569351, 25.309368>,  <42.458191, 34.287174, 25.376894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182842, 34.569351, 25.309368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116483, 0.337219, 0.934192,
		0.715949, 0.623403, -0.314303,
		-0.688367, 0.705444, -0.168816,
		41.976334, 34.780983, 25.258724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709133, 34.854351, 25.714272>,  <42.458191, 34.287174, 25.376894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709133, 34.854351, 25.714272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320084, 34.930683, 25.661217>,  <42.086655, 34.976482, 25.629383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320084, 34.930683, 25.661217>,  <42.709133, 34.854351, 25.714272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320084, 34.930683, 25.661217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076776, 0.274840, 0.958420,
		0.219354, 0.942361, -0.252664,
		-0.972620, 0.190835, -0.132638,
		42.028297, 34.987934, 25.621426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729427, 35.409042, 26.090549>,  <42.709133, 34.854351, 25.714272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729427, 35.409042, 26.090549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346779, 35.301704, 26.045181>,  <42.117188, 35.237301, 26.017960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.346779, 35.301704, 26.045181>,  <42.729427, 35.409042, 26.090549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346779, 35.301704, 26.045181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174611, 0.216479, 0.960546,
		-0.233202, 0.938685, -0.253944,
		-0.956623, -0.268343, -0.113421,
		42.059792, 35.221203, 26.011154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186737, 35.948498, 26.365917>,  <42.729427, 35.409042, 26.090549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186737, 35.948498, 26.365917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980244, 35.606216, 26.351641>,  <41.856346, 35.400848, 26.343075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980244, 35.606216, 26.351641>,  <42.186737, 35.948498, 26.365917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980244, 35.606216, 26.351641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440397, 0.229481, 0.867980,
		-0.734542, 0.463801, -0.495315,
		-0.516236, -0.855703, -0.035693,
		41.825375, 35.349506, 26.340933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441853, 36.133865, 26.367653>,  <42.186737, 35.948498, 26.365917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441853, 36.133865, 26.367653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503166, 35.765560, 26.511152>,  <41.539955, 35.544579, 26.597252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503166, 35.765560, 26.511152>,  <41.441853, 36.133865, 26.367653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503166, 35.765560, 26.511152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504866, 0.239112, 0.829419,
		-0.849478, -0.308259, -0.428209,
		0.153286, -0.920762, 0.358750,
		41.549152, 35.489330, 26.618778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775532, 35.895161, 26.680719>,  <41.441853, 36.133865, 26.367653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775532, 35.895161, 26.680719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054035, 35.651985, 26.833366>,  <41.221138, 35.506081, 26.924953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054035, 35.651985, 26.833366>,  <40.775532, 35.895161, 26.680719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054035, 35.651985, 26.833366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426979, 0.076571, 0.901013,
		-0.576981, -0.790284, -0.206263,
		0.696263, -0.607937, 0.381615,
		41.262913, 35.469604, 26.947851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393417, 35.561314, 27.133108>,  <40.775532, 35.895161, 26.680719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393417, 35.561314, 27.133108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767879, 35.470726, 27.240681>,  <40.992558, 35.416374, 27.305223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767879, 35.470726, 27.240681>,  <40.393417, 35.561314, 27.133108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767879, 35.470726, 27.240681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311343, -0.178655, 0.933353,
		-0.163315, -0.957497, -0.237755,
		0.936159, -0.226454, 0.268933,
		41.048725, 35.402786, 27.321360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347004, 34.910007, 27.516541>,  <40.393417, 35.561314, 27.133108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347004, 34.910007, 27.516541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688087, 35.068409, 27.652819>,  <40.892738, 35.163448, 27.734585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688087, 35.068409, 27.652819>,  <40.347004, 34.910007, 27.516541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688087, 35.068409, 27.652819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284324, -0.195301, 0.938625,
		0.438234, -0.897241, -0.053942,
		0.852708, 0.396001, 0.340695,
		40.943901, 35.187210, 27.755028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583099, 34.478565, 28.058630>,  <40.347004, 34.910007, 27.516541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583099, 34.478565, 28.058630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742008, 34.841461, 28.113901>,  <40.837353, 35.059200, 28.147064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742008, 34.841461, 28.113901>,  <40.583099, 34.478565, 28.058630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742008, 34.841461, 28.113901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217815, -0.053051, 0.974547,
		0.891479, -0.417254, 0.176535,
		0.397268, 0.907240, 0.138179,
		40.861187, 35.113632, 28.155355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105412, 34.493694, 28.790798>,  <40.583099, 34.478565, 28.058630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105412, 34.493694, 28.790798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003906, 34.867588, 28.691303>,  <40.943005, 35.091927, 28.631605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003906, 34.867588, 28.691303>,  <41.105412, 34.493694, 28.790798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003906, 34.867588, 28.691303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320189, 0.323836, 0.890286,
		0.912733, 0.146279, -0.381471,
		-0.253764, 0.934737, -0.248739,
		40.927776, 35.148010, 28.616682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579212, 34.815441, 29.083778>,  <41.105412, 34.493694, 28.790798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579212, 34.815441, 29.083778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279617, 35.079227, 29.058102>,  <41.099861, 35.237499, 29.042696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279617, 35.079227, 29.058102>,  <41.579212, 34.815441, 29.083778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279617, 35.079227, 29.058102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266508, 0.388541, 0.882048,
		0.606623, 0.643535, -0.466766,
		-0.748987, 0.659468, -0.064191,
		41.054920, 35.277069, 29.038845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873211, 35.284817, 29.440435>,  <41.579212, 34.815441, 29.083778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873211, 35.284817, 29.440435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500469, 35.420757, 29.389605>,  <41.276825, 35.502323, 29.359106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500469, 35.420757, 29.389605>,  <41.873211, 35.284817, 29.440435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500469, 35.420757, 29.389605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041262, 0.447226, 0.893469,
		0.360480, 0.827339, -0.430772,
		-0.931854, 0.339852, -0.127079,
		41.220913, 35.522713, 29.351480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854790, 36.003208, 29.513746>,  <41.873211, 35.284817, 29.440435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854790, 36.003208, 29.513746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483120, 35.883080, 29.599949>,  <41.260117, 35.811001, 29.651670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483120, 35.883080, 29.599949>,  <41.854790, 36.003208, 29.513746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483120, 35.883080, 29.599949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058784, 0.455535, 0.888275,
		-0.364941, 0.838029, -0.405617,
		-0.929173, -0.300325, 0.215506,
		41.204369, 35.792984, 29.664600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558094, 36.579689, 29.720367>,  <41.854790, 36.003208, 29.513746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558094, 36.579689, 29.720367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356388, 36.262306, 29.856686>,  <41.235367, 36.071877, 29.938477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356388, 36.262306, 29.856686>,  <41.558094, 36.579689, 29.720367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356388, 36.262306, 29.856686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131105, 0.460414, 0.877970,
		-0.853540, 0.398047, -0.336196,
		-0.504263, -0.793459, 0.340796,
		41.205109, 36.024269, 29.958925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164135, 36.877567, 30.137802>,  <41.558094, 36.579689, 29.720367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164135, 36.877567, 30.137802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125031, 36.501064, 30.267097>,  <41.101566, 36.275162, 30.344675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125031, 36.501064, 30.267097>,  <41.164135, 36.877567, 30.137802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125031, 36.501064, 30.267097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013519, 0.326019, 0.945267,
		-0.995118, 0.088040, -0.044597,
		-0.097761, -0.941255, 0.323237,
		41.095703, 36.218689, 30.364069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590813, 36.924362, 30.646456>,  <41.164135, 36.877567, 30.137802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590813, 36.924362, 30.646456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791706, 36.587200, 30.723675>,  <40.912243, 36.384903, 30.770006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791706, 36.587200, 30.723675>,  <40.590813, 36.924362, 30.646456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791706, 36.587200, 30.723675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020051, 0.234535, 0.971901,
		-0.864498, -0.484253, 0.134693,
		0.502236, -0.842907, 0.193045,
		40.942375, 36.334328, 30.781588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193295, 36.541096, 31.155878>,  <40.590813, 36.924362, 30.646456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193295, 36.541096, 31.155878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580265, 36.439835, 31.155752>,  <40.812447, 36.379078, 31.155678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580265, 36.439835, 31.155752>,  <40.193295, 36.541096, 31.155878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580265, 36.439835, 31.155752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104726, 0.399091, 0.910911,
		-0.230472, -0.881273, 0.412603,
		0.967427, -0.253149, -0.000313,
		40.870495, 36.363892, 31.155659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391617, 36.424870, 31.808208>,  <40.193295, 36.541096, 31.155878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391617, 36.424870, 31.808208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779644, 36.430916, 31.711271>,  <41.012463, 36.434544, 31.653109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779644, 36.430916, 31.711271>,  <40.391617, 36.424870, 31.808208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779644, 36.430916, 31.711271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224725, 0.322113, 0.919642,
		0.091966, -0.946581, 0.309076,
		0.970073, 0.015119, -0.242344,
		41.070667, 36.435452, 31.638569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773884, 35.866581, 32.296085>,  <40.391617, 36.424870, 31.808208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773884, 35.866581, 32.296085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033329, 36.135151, 32.152706>,  <41.188995, 36.296295, 32.066681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033329, 36.135151, 32.152706>,  <40.773884, 35.866581, 32.296085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033329, 36.135151, 32.152706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403645, 0.095816, 0.909884,
		0.645266, -0.734850, -0.208870,
		0.648615, 0.671427, -0.358446,
		41.227913, 36.336578, 32.045174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415291, 35.652512, 32.613472>,  <40.773884, 35.866581, 32.296085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415291, 35.652512, 32.613472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485146, 36.026459, 32.489841>,  <41.527058, 36.250828, 32.415665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485146, 36.026459, 32.489841>,  <41.415291, 35.652512, 32.613472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485146, 36.026459, 32.489841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348162, 0.234991, 0.907503,
		0.921024, -0.266089, -0.284448,
		0.174634, 0.934867, -0.309075,
		41.537537, 36.306919, 32.397118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122147, 35.891418, 32.853149>,  <41.415291, 35.652512, 32.613472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122147, 35.891418, 32.853149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908154, 36.223999, 32.793186>,  <41.779758, 36.423550, 32.757210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908154, 36.223999, 32.793186>,  <42.122147, 35.891418, 32.853149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908154, 36.223999, 32.793186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168429, 0.278836, 0.945453,
		0.827902, 0.480556, -0.289214,
		-0.534987, 0.831454, -0.149909,
		41.747658, 36.473434, 32.748215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469685, 36.285648, 33.254162>,  <42.122147, 35.891418, 32.853149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469685, 36.285648, 33.254162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138775, 36.504620, 33.203651>,  <41.940231, 36.636002, 33.173344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.138775, 36.504620, 33.203651>,  <42.469685, 36.285648, 33.254162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.138775, 36.504620, 33.203651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069091, 0.322199, 0.944147,
		0.557540, 0.772340, -0.304368,
		-0.827270, 0.547429, -0.126277,
		41.890594, 36.668850, 33.165768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579021, 37.018772, 33.518486>,  <42.469685, 36.285648, 33.254162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579021, 37.018772, 33.518486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183315, 36.962509, 33.534317>,  <41.945892, 36.928753, 33.543816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.183315, 36.962509, 33.534317>,  <42.579021, 37.018772, 33.518486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183315, 36.962509, 33.534317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005917, 0.232050, 0.972686,
		-0.145995, 0.962481, -0.228727,
		-0.989268, -0.140654, 0.039573,
		41.886536, 36.920311, 33.546188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332169, 37.587025, 33.873718>,  <42.579021, 37.018772, 33.518486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332169, 37.587025, 33.873718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031029, 37.323887, 33.882336>,  <41.850346, 37.166004, 33.887508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031029, 37.323887, 33.882336>,  <42.332169, 37.587025, 33.873718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031029, 37.323887, 33.882336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233216, 0.297226, 0.925887,
		-0.615490, 0.692028, -0.377185,
		-0.752849, -0.657840, 0.021548,
		41.805176, 37.126534, 33.888802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630104, 37.982647, 33.944038>,  <42.332169, 37.587025, 33.873718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630104, 37.982647, 33.944038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595745, 37.604370, 34.069439>,  <41.575130, 37.377403, 34.144680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595745, 37.604370, 34.069439>,  <41.630104, 37.982647, 33.944038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595745, 37.604370, 34.069439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119387, 0.322169, 0.939124,
		-0.989125, 0.043238, -0.140576,
		-0.085895, -0.945694, 0.313503,
		41.569977, 37.320663, 34.163490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992214, 37.918056, 34.412567>,  <41.630104, 37.982647, 33.944038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992214, 37.918056, 34.412567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283619, 37.655327, 34.490383>,  <41.458462, 37.497688, 34.537071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283619, 37.655327, 34.490383>,  <40.992214, 37.918056, 34.412567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283619, 37.655327, 34.490383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019786, 0.304043, 0.952453,
		-0.684747, -0.690025, 0.234495,
		0.728512, -0.656829, 0.194540,
		41.502174, 37.458279, 34.548744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814449, 37.723854, 35.034615>,  <40.992214, 37.918056, 34.412567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814449, 37.723854, 35.034615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151138, 37.507931, 35.038670>,  <41.353153, 37.378376, 35.041103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151138, 37.507931, 35.038670>,  <40.814449, 37.723854, 35.034615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151138, 37.507931, 35.038670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078343, -0.103536, 0.991536,
		-0.534194, -0.835394, -0.129439,
		0.841724, -0.539813, 0.010139,
		41.403656, 37.345985, 35.041710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742950, 37.021370, 35.294876>,  <40.814449, 37.723854, 35.034615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742950, 37.021370, 35.294876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109009, 37.167824, 35.362350>,  <41.328644, 37.255695, 35.402836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109009, 37.167824, 35.362350>,  <40.742950, 37.021370, 35.294876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109009, 37.167824, 35.362350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156683, -0.062500, 0.985669,
		0.371429, -0.928461, 0.000170,
		0.915146, 0.366133, 0.168689,
		41.383553, 37.277664, 35.412956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207474, 36.507130, 35.729961>,  <40.742950, 37.021370, 35.294876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.207474, 36.507130, 35.729961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271324, 36.900814, 35.760574>,  <41.309635, 37.137024, 35.778942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271324, 36.900814, 35.760574>,  <41.207474, 36.507130, 35.729961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271324, 36.900814, 35.760574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209050, -0.042069, 0.977000,
		0.964789, -0.171952, 0.199033,
		0.159624, 0.984207, 0.076534,
		41.319210, 37.196075, 35.783535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633171, 36.505569, 36.243469>,  <41.207474, 36.507130, 35.729961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633171, 36.505569, 36.243469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554550, 36.894444, 36.192516>,  <41.507378, 37.127766, 36.161945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554550, 36.894444, 36.192516>,  <41.633171, 36.505569, 36.243469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554550, 36.894444, 36.192516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099080, 0.148945, 0.983869,
		0.975473, 0.180765, -0.125600,
		-0.196557, 0.972183, -0.127382,
		41.495583, 37.186100, 36.154301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.912594, 36.755962, 36.828209>,  <41.633171, 36.505569, 36.243469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.912594, 36.755962, 36.828209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759197, 37.093212, 36.677441>,  <41.667160, 37.295563, 36.586979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759197, 37.093212, 36.677441>,  <41.912594, 36.755962, 36.828209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759197, 37.093212, 36.677441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162497, 0.340160, 0.926222,
		0.909136, 0.416448, 0.006556,
		-0.383493, 0.843127, -0.376923,
		41.644150, 37.346149, 36.564365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311962, 37.271336, 37.127232>,  <41.912594, 36.755962, 36.828209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311962, 37.271336, 37.127232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945187, 37.394020, 37.025135>,  <41.725121, 37.467628, 36.963879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945187, 37.394020, 37.025135>,  <42.311962, 37.271336, 37.127232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945187, 37.394020, 37.025135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156298, 0.312482, 0.936977,
		0.367136, 0.899047, -0.238591,
		-0.916942, 0.306707, -0.255242,
		41.670105, 37.486031, 36.948563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152050, 37.965668, 37.415981>,  <42.311962, 37.271336, 37.127232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152050, 37.965668, 37.415981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787758, 37.839947, 37.308811>,  <41.569183, 37.764515, 37.244507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787758, 37.839947, 37.308811>,  <42.152050, 37.965668, 37.415981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787758, 37.839947, 37.308811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323507, 0.139615, 0.935869,
		-0.256737, 0.939001, -0.228830,
		-0.910730, -0.314300, -0.267929,
		41.514538, 37.745655, 37.228432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643421, 38.505260, 37.669037>,  <42.152050, 37.965668, 37.415981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643421, 38.505260, 37.669037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460499, 38.150890, 37.638046>,  <41.350746, 37.938267, 37.619453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.460499, 38.150890, 37.638046>,  <41.643421, 38.505260, 37.669037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460499, 38.150890, 37.638046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513127, 0.191710, 0.836629,
		-0.726339, 0.422354, -0.542264,
		-0.457311, -0.885926, -0.077475,
		41.323307, 37.885113, 37.614803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901268, 38.482487, 37.757641>,  <41.643421, 38.505260, 37.669037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901268, 38.482487, 37.757641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980656, 38.108215, 37.874336>,  <41.028290, 37.883652, 37.944355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980656, 38.108215, 37.874336>,  <40.901268, 38.482487, 37.757641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980656, 38.108215, 37.874336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418735, 0.188178, 0.888397,
		-0.886154, -0.298484, -0.354454,
		0.198472, -0.935680, 0.291741,
		41.040199, 37.827511, 37.961857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327950, 38.398262, 38.054295>,  <40.901268, 38.482487, 37.757641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327950, 38.398262, 38.054295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567402, 38.101185, 38.174328>,  <40.711075, 37.922939, 38.246349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567402, 38.101185, 38.174328>,  <40.327950, 38.398262, 38.054295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567402, 38.101185, 38.174328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480154, -0.032843, 0.876569,
		-0.641166, -0.668826, -0.376268,
		0.598630, -0.742693, 0.300082,
		40.746990, 37.878376, 38.264351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888046, 38.050686, 38.350334>,  <40.327950, 38.398262, 38.054295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888046, 38.050686, 38.350334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245117, 37.930099, 38.484348>,  <40.459358, 37.857746, 38.564758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245117, 37.930099, 38.484348>,  <39.888046, 38.050686, 38.350334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245117, 37.930099, 38.484348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375741, -0.087258, 0.922608,
		-0.248901, -0.949475, -0.191167,
		0.892674, -0.301467, 0.335038,
		40.512920, 37.839661, 38.584858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784763, 37.484974, 38.702076>,  <39.888046, 38.050686, 38.350334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784763, 37.484974, 38.702076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140842, 37.594467, 38.847740>,  <40.354492, 37.660164, 38.935139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140842, 37.594467, 38.847740>,  <39.784763, 37.484974, 38.702076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140842, 37.594467, 38.847740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372812, -0.021683, 0.927653,
		0.261823, -0.961562, 0.082748,
		0.890202, 0.273731, 0.364159,
		40.407902, 37.676586, 38.956989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096798, 37.003815, 39.209351>,  <39.784763, 37.484974, 38.702076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096798, 37.003815, 39.209351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213150, 37.377949, 39.289886>,  <40.282963, 37.602428, 39.338207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213150, 37.377949, 39.289886>,  <40.096798, 37.003815, 39.209351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213150, 37.377949, 39.289886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381707, -0.079513, 0.920857,
		0.877319, -0.344710, 0.333896,
		0.290879, 0.935336, 0.201336,
		40.300415, 37.658550, 39.350288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115471, 37.071228, 39.911068>,  <40.096798, 37.003815, 39.209351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115471, 37.071228, 39.911068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168896, 37.465668, 39.871521>,  <40.200951, 37.702332, 39.847794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168896, 37.465668, 39.871521>,  <40.115471, 37.071228, 39.911068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168896, 37.465668, 39.871521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433740, 0.147863, 0.888823,
		0.891084, -0.075829, 0.447458,
		0.133561, 0.986096, -0.098868,
		40.208965, 37.761497, 39.841862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274235, 37.346333, 40.530556>,  <40.115471, 37.071228, 39.911068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274235, 37.346333, 40.530556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119030, 37.657772, 40.333282>,  <40.025906, 37.844635, 40.214920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119030, 37.657772, 40.333282>,  <40.274235, 37.346333, 40.530556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119030, 37.657772, 40.333282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524029, 0.253825, 0.812999,
		0.758182, 0.573897, 0.309520,
		-0.388013, 0.778598, -0.493184,
		40.002625, 37.891350, 40.185326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308510, 37.898079, 40.944191>,  <40.274235, 37.346333, 40.530556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308510, 37.898079, 40.944191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039185, 38.014015, 40.672123>,  <39.877590, 38.083576, 40.508881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.039185, 38.014015, 40.672123>,  <40.308510, 37.898079, 40.944191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039185, 38.014015, 40.672123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561717, 0.397645, 0.725502,
		0.480749, 0.870557, -0.104931,
		-0.673316, 0.289843, -0.680174,
		39.837189, 38.100967, 40.468071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136395, 38.629566, 41.058456>,  <40.308510, 37.898079, 40.944191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136395, 38.629566, 41.058456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832436, 38.471878, 40.851707>,  <39.650063, 38.377266, 40.727657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832436, 38.471878, 40.851707>,  <40.136395, 38.629566, 41.058456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832436, 38.471878, 40.851707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630265, 0.252136, 0.734298,
		-0.159151, 0.883754, -0.440057,
		-0.759893, -0.394217, -0.516871,
		39.604469, 38.353615, 40.696648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576729, 39.112148, 41.081593>,  <40.136395, 38.629566, 41.058456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576729, 39.112148, 41.081593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394634, 38.763428, 41.009232>,  <39.285378, 38.554195, 40.965816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394634, 38.763428, 41.009232>,  <39.576729, 39.112148, 41.081593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394634, 38.763428, 41.009232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566493, 0.126851, 0.814245,
		-0.686912, 0.473151, -0.551616,
		-0.455233, -0.871801, -0.180901,
		39.258064, 38.501888, 40.954960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003342, 39.253586, 41.208523>,  <39.576729, 39.112148, 41.081593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003342, 39.253586, 41.208523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028751, 38.854717, 41.224598>,  <39.043999, 38.615395, 41.234241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028751, 38.854717, 41.224598>,  <39.003342, 39.253586, 41.208523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028751, 38.854717, 41.224598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560154, -0.002302, 0.828385,
		-0.825949, -0.075136, -0.558715,
		0.063528, -0.997171, 0.040187,
		39.047810, 38.555565, 41.236652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312214, 39.921238, 41.340950>,  <39.003342, 39.253586, 41.208523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312214, 39.921238, 41.340950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626091, 39.703930, 41.460358>,  <39.814419, 39.573547, 41.532001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626091, 39.703930, 41.460358>,  <39.312214, 39.921238, 41.340950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626091, 39.703930, 41.460358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538483, -0.358860, 0.762401,
		-0.307056, -0.759004, -0.574134,
		0.784699, -0.543261, 0.298521,
		39.861500, 39.540951, 41.549911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997547, 39.576088, 41.944534>,  <39.312214, 39.921238, 41.340950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997547, 39.576088, 41.944534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376369, 39.447723, 41.940422>,  <39.603661, 39.370705, 41.937954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376369, 39.447723, 41.940422>,  <38.997547, 39.576088, 41.944534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376369, 39.447723, 41.940422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077268, -0.258861, 0.962819,
		-0.311640, -0.911047, -0.269952,
		0.947053, -0.320912, -0.010277,
		39.660484, 39.351448, 41.937340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523022, 39.102551, 42.387947>,  <38.997547, 39.576088, 41.944534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523022, 39.102551, 42.387947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417130, 38.716896, 42.380390>,  <38.353596, 38.485504, 42.375858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417130, 38.716896, 42.380390>,  <38.523022, 39.102551, 42.387947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417130, 38.716896, 42.380390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277247, -0.057337, -0.959086,
		0.923608, -0.259136, 0.282483,
		-0.264730, -0.964137, -0.018888,
		38.337711, 38.427654, 42.374725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118286, 38.657345, 42.036671>,  <38.523022, 39.102551, 42.387947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118286, 38.657345, 42.036671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772114, 38.459579, 42.004192>,  <38.564411, 38.340919, 41.984707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772114, 38.459579, 42.004192>,  <39.118286, 38.657345, 42.036671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772114, 38.459579, 42.004192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236896, -0.260986, -0.935824,
		0.441491, -0.829123, 0.342988,
		-0.865428, -0.494410, -0.081193,
		38.512486, 38.311256, 41.979836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173649, 37.902946, 41.870708>,  <39.118286, 38.657345, 42.036671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173649, 37.902946, 41.870708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834099, 38.033524, 41.704411>,  <38.630367, 38.111870, 41.604630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834099, 38.033524, 41.704411>,  <39.173649, 37.902946, 41.870708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834099, 38.033524, 41.704411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375783, -0.180461, -0.908967,
		-0.371751, -0.927831, 0.030518,
		-0.848875, 0.326441, -0.415749,
		38.579437, 38.131454, 41.579685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822388, 37.399647, 41.402882>,  <39.173649, 37.902946, 41.870708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822388, 37.399647, 41.402882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801579, 37.788368, 41.310890>,  <38.789093, 38.021603, 41.255695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801579, 37.788368, 41.310890>,  <38.822388, 37.399647, 41.402882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801579, 37.788368, 41.310890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355524, -0.197182, -0.913631,
		-0.933218, -0.129293, -0.335242,
		-0.052023, 0.971804, -0.229981,
		38.785973, 38.079910, 41.241898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645435, 37.433090, 40.687305>,  <38.822388, 37.399647, 41.402882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645435, 37.433090, 40.687305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825684, 37.781925, 40.763618>,  <38.933834, 37.991226, 40.809406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825684, 37.781925, 40.763618>,  <38.645435, 37.433090, 40.687305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825684, 37.781925, 40.763618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507391, -0.074366, -0.858501,
		-0.734503, 0.483661, -0.476002,
		0.450622, 0.872090, 0.190784,
		38.960869, 38.043552, 40.820854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616913, 37.793839, 40.015884>,  <38.645435, 37.433090, 40.687305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616913, 37.793839, 40.015884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907352, 37.969986, 40.227112>,  <39.081615, 38.075676, 40.353848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907352, 37.969986, 40.227112>,  <38.616913, 37.793839, 40.015884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907352, 37.969986, 40.227112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579057, 0.022507, -0.814976,
		-0.370775, 0.897535, -0.238656,
		0.726098, 0.440369, 0.528069,
		39.125183, 38.102097, 40.385532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881847, 38.478340, 39.606743>,  <38.616913, 37.793839, 40.015884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881847, 38.478340, 39.606743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179722, 38.381977, 39.855709>,  <39.358448, 38.324158, 40.005089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.179722, 38.381977, 39.855709>,  <38.881847, 38.478340, 39.606743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179722, 38.381977, 39.855709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621758, -0.088578, -0.778184,
		0.242606, 0.966497, 0.083826,
		0.744687, -0.240912, 0.622417,
		39.403130, 38.309704, 40.042435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503986, 38.679375, 39.345726>,  <38.881847, 38.478340, 39.606743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503986, 38.679375, 39.345726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653263, 38.437500, 39.627174>,  <39.742828, 38.292377, 39.796043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653263, 38.437500, 39.627174>,  <39.503986, 38.679375, 39.345726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653263, 38.437500, 39.627174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829740, -0.121742, -0.544711,
		0.415038, 0.787106, 0.456297,
		0.373195, -0.604684, 0.703621,
		39.765221, 38.256096, 39.838261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216618, 38.990707, 39.568645>,  <39.503986, 38.679375, 39.345726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216618, 38.990707, 39.568645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228508, 38.601086, 39.658382>,  <40.235641, 38.367313, 39.712223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.228508, 38.601086, 39.658382>,  <40.216618, 38.990707, 39.568645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228508, 38.601086, 39.658382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781239, -0.117364, -0.613100,
		0.623524, 0.193488, 0.757483,
		0.029726, -0.974058, 0.224340,
		40.237427, 38.308868, 39.725685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907757, 38.852280, 39.536762>,  <40.216618, 38.990707, 39.568645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907757, 38.852280, 39.536762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697933, 38.519398, 39.464909>,  <40.572037, 38.319668, 39.421795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697933, 38.519398, 39.464909>,  <40.907757, 38.852280, 39.536762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697933, 38.519398, 39.464909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500221, -0.130533, -0.856002,
		0.688922, -0.538883, 0.484759,
		-0.524562, -0.832206, -0.179633,
		40.540565, 38.269737, 39.411018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296093, 38.294365, 39.419735>,  <40.907757, 38.852280, 39.536762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296093, 38.294365, 39.419735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984673, 38.045090, 39.449375>,  <40.797821, 37.895523, 39.467159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.984673, 38.045090, 39.449375>,  <41.296093, 38.294365, 39.419735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984673, 38.045090, 39.449375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341971, -0.520278, -0.782539,
		0.526224, -0.583907, 0.618176,
		-0.778553, -0.623189, 0.074103,
		40.751106, 37.858131, 39.471607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594913, 37.708714, 39.399132>,  <41.296093, 38.294365, 39.419735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594913, 37.708714, 39.399132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222141, 37.677158, 39.257549>,  <40.998478, 37.658226, 39.172600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222141, 37.677158, 39.257549>,  <41.594913, 37.708714, 39.399132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222141, 37.677158, 39.257549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358410, -0.349123, -0.865827,
		-0.055269, -0.933750, 0.353633,
		-0.931927, -0.078892, -0.353960,
		40.942562, 37.653492, 39.151360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576248, 37.027679, 39.021454>,  <41.594913, 37.708714, 39.399132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576248, 37.027679, 39.021454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289978, 37.273689, 38.889057>,  <41.118217, 37.421295, 38.809620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289978, 37.273689, 38.889057>,  <41.576248, 37.027679, 39.021454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289978, 37.273689, 38.889057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200478, -0.273075, -0.940871,
		-0.669047, -0.739712, 0.072133,
		-0.715671, 0.615026, -0.330996,
		41.075275, 37.458199, 38.789757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269283, 36.687180, 38.459538>,  <41.576248, 37.027679, 39.021454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269283, 36.687180, 38.459538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140461, 37.062103, 38.406261>,  <41.063168, 37.287056, 38.374294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140461, 37.062103, 38.406261>,  <41.269283, 36.687180, 38.459538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140461, 37.062103, 38.406261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132739, -0.094590, -0.986627,
		-0.937370, -0.335426, -0.093954,
		-0.322053, 0.937306, -0.133190,
		41.043846, 37.343296, 38.366306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020008, 36.622280, 37.789944>,  <41.269283, 36.687180, 38.459538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020008, 36.622280, 37.789944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011063, 37.013664, 37.872025>,  <41.005695, 37.248497, 37.921272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011063, 37.013664, 37.872025>,  <41.020008, 36.622280, 37.789944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011063, 37.013664, 37.872025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152599, 0.206188, -0.966540,
		-0.988035, 0.009698, -0.153924,
		-0.022363, 0.978464, 0.205201,
		41.004353, 37.307205, 37.933586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553806, 36.941143, 37.373856>,  <41.020008, 36.622280, 37.789944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553806, 36.941143, 37.373856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765270, 37.272221, 37.449162>,  <40.892147, 37.470867, 37.494343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765270, 37.272221, 37.449162>,  <40.553806, 36.941143, 37.373856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765270, 37.272221, 37.449162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033711, 0.242086, -0.969669,
		-0.848166, 0.506276, 0.155883,
		0.528657, 0.827695, 0.188262,
		40.923866, 37.520531, 37.505642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291821, 37.446571, 36.887836>,  <40.553806, 36.941143, 37.373856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291821, 37.446571, 36.887836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664349, 37.550446, 36.989971>,  <40.887867, 37.612770, 37.051254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664349, 37.550446, 36.989971>,  <40.291821, 37.446571, 36.887836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664349, 37.550446, 36.989971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210513, 0.188268, -0.959291,
		-0.297186, 0.947164, 0.120672,
		0.931324, 0.259685, 0.255341,
		40.943745, 37.628349, 37.066574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490044, 37.907318, 36.416809>,  <40.291821, 37.446571, 36.887836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490044, 37.907318, 36.416809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830399, 37.789131, 36.590565>,  <41.034611, 37.718220, 36.694817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830399, 37.789131, 36.590565>,  <40.490044, 37.907318, 36.416809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830399, 37.789131, 36.590565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438472, -0.056024, -0.896997,
		0.289372, 0.953708, 0.081886,
		0.850886, -0.295470, 0.434386,
		41.085663, 37.700489, 36.720879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032200, 38.400871, 36.285053>,  <40.490044, 37.907318, 36.416809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032200, 38.400871, 36.285053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186581, 38.039379, 36.359146>,  <41.279209, 37.822483, 36.403603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186581, 38.039379, 36.359146>,  <41.032200, 38.400871, 36.285053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186581, 38.039379, 36.359146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401490, -0.016229, -0.915719,
		0.830570, 0.427793, 0.356576,
		0.385951, -0.903731, 0.185234,
		41.302364, 37.768261, 36.414715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533665, 38.426418, 35.940498>,  <41.032200, 38.400871, 36.285053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533665, 38.426418, 35.940498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489479, 38.033169, 35.998821>,  <41.462967, 37.797218, 36.033813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489479, 38.033169, 35.998821>,  <41.533665, 38.426418, 35.940498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489479, 38.033169, 35.998821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377198, -0.177199, -0.909023,
		0.919522, -0.045414, 0.390407,
		-0.110462, -0.983127, 0.145808,
		41.456341, 37.738232, 36.042564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113121, 38.302666, 35.656345>,  <41.533665, 38.426418, 35.940498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113121, 38.302666, 35.656345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917789, 37.956738, 35.703030>,  <41.800591, 37.749180, 35.731041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917789, 37.956738, 35.703030>,  <42.113121, 38.302666, 35.656345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917789, 37.956738, 35.703030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333576, -0.308572, -0.890792,
		0.806391, -0.396063, 0.439167,
		-0.488324, -0.864823, 0.116712,
		41.771294, 37.697292, 35.738045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589218, 37.744270, 35.342022>,  <42.113121, 38.302666, 35.656345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589218, 37.744270, 35.342022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215054, 37.603390, 35.354465>,  <41.990555, 37.518864, 35.361931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215054, 37.603390, 35.354465>,  <42.589218, 37.744270, 35.342022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215054, 37.603390, 35.354465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171356, -0.528548, -0.831429,
		0.309269, -0.772395, 0.554760,
		-0.935409, -0.352197, 0.031109,
		41.934429, 37.497730, 35.363800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632278, 36.960945, 35.103882>,  <42.589218, 37.744270, 35.342022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632278, 36.960945, 35.103882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247078, 37.066051, 35.079926>,  <42.015957, 37.129116, 35.065552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.247078, 37.066051, 35.079926>,  <42.632278, 36.960945, 35.103882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.247078, 37.066051, 35.079926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070460, -0.459978, -0.885130,
		-0.260128, -0.848160, 0.461473,
		-0.963000, 0.262763, -0.059892,
		41.958179, 37.144882, 35.061958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090919, 36.315765, 34.883453>,  <42.632278, 36.960945, 35.103882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090919, 36.315765, 34.883453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924347, 36.666950, 34.788994>,  <41.824406, 36.877663, 34.732319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.924347, 36.666950, 34.788994>,  <42.090919, 36.315765, 34.883453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924347, 36.666950, 34.788994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200953, -0.342204, -0.917886,
		-0.886683, -0.334777, 0.318933,
		-0.416427, 0.877964, -0.236152,
		41.799419, 36.930340, 34.718147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646015, 35.806435, 35.141991>,  <42.090919, 36.315765, 34.883453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646015, 35.806435, 35.141991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267784, 35.738850, 35.030754>,  <42.040844, 35.698299, 34.964012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267784, 35.738850, 35.030754>,  <42.646015, 35.806435, 35.141991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267784, 35.738850, 35.030754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324845, -0.539975, -0.776468,
		-0.018969, -0.824547, 0.565474,
		-0.945577, -0.168963, -0.278093,
		41.984112, 35.688160, 34.947327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.368706, 35.947876, 35.425175>,  <42.646015, 35.806435, 35.141991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.368706, 35.947876, 35.425175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317013, 36.334190, 35.335239>,  <43.285999, 36.565979, 35.281277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317013, 36.334190, 35.335239>,  <43.368706, 35.947876, 35.425175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317013, 36.334190, 35.335239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567149, 0.257981, 0.782168,
		0.813413, -0.026437, -0.581085,
		-0.129231, 0.965788, -0.224839,
		43.278244, 36.623928, 35.267788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936272, 36.194420, 35.255272>,  <43.368706, 35.947876, 35.425175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936272, 36.194420, 35.255272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666744, 36.385365, 35.480873>,  <43.505028, 36.499931, 35.616234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666744, 36.385365, 35.480873>,  <43.936272, 36.194420, 35.255272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666744, 36.385365, 35.480873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666264, 0.062492, 0.743093,
		0.319475, 0.876484, -0.360154,
		-0.673816, 0.477357, 0.564005,
		43.464600, 36.528572, 35.650074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282284, 36.876534, 35.462620>,  <43.936272, 36.194420, 35.255272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282284, 36.876534, 35.462620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006256, 36.717236, 35.704350>,  <43.840641, 36.621658, 35.849388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006256, 36.717236, 35.704350>,  <44.282284, 36.876534, 35.462620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006256, 36.717236, 35.704350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563603, 0.228151, 0.793914,
		-0.454046, 0.888455, 0.067010,
		-0.690068, -0.398241, 0.604326,
		43.799236, 36.597763, 35.885647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866932, 37.400177, 35.949780>,  <44.282284, 36.876534, 35.462620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866932, 37.400177, 35.949780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004116, 37.704239, 35.729038>,  <44.086426, 37.886677, 35.596592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.004116, 37.704239, 35.729038>,  <43.866932, 37.400177, 35.949780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004116, 37.704239, 35.729038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817557, -0.530856, -0.223140,
		-0.462578, -0.374647, -0.803531,
		0.342961, 0.760152, -0.551857,
		44.107006, 37.932285, 35.563480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375690, 37.942654, 35.824657>,  <43.866932, 37.400177, 35.949780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375690, 37.942654, 35.824657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019394, 37.760914, 35.829468>,  <42.805614, 37.651871, 35.832355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.019394, 37.760914, 35.829468>,  <43.375690, 37.942654, 35.824657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019394, 37.760914, 35.829468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161424, -0.340986, -0.926105,
		0.424876, -0.822980, 0.377074,
		-0.890743, -0.454348, 0.012028,
		42.752171, 37.624611, 35.833076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806850, 37.741558, 35.184933>,  <43.375690, 37.942654, 35.824657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806850, 37.741558, 35.184933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425224, 37.622471, 35.171528>,  <43.196247, 37.551018, 35.163483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.425224, 37.622471, 35.171528>,  <43.806850, 37.741558, 35.184933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425224, 37.622471, 35.171528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007320, 0.135000, -0.990819,
		0.299509, -0.945061, -0.130978,
		-0.954065, -0.297717, -0.033516,
		43.139004, 37.533157, 35.161472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688229, 37.214996, 34.723518>,  <43.806850, 37.741558, 35.184933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688229, 37.214996, 34.723518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378117, 37.465145, 34.758938>,  <43.192047, 37.615234, 34.780190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378117, 37.465145, 34.758938>,  <43.688229, 37.214996, 34.723518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378117, 37.465145, 34.758938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055449, 0.072257, -0.995843,
		-0.629174, -0.776971, -0.021343,
		-0.775284, 0.625376, 0.088545,
		43.145531, 37.652760, 34.785500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377468, 37.424881, 34.536510>,  <43.688229, 37.214996, 34.723518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377468, 37.424881, 34.536510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692142, 37.628674, 34.675976>,  <44.880947, 37.750950, 34.759655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.692142, 37.628674, 34.675976>,  <44.377468, 37.424881, 34.536510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692142, 37.628674, 34.675976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205988, -0.315778, 0.926204,
		0.581980, -0.800447, -0.143471,
		0.786682, 0.509479, 0.348659,
		44.928146, 37.781517, 34.780575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.067291, 37.999363, 34.147800>,  <44.377468, 37.424881, 34.536510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.067291, 37.999363, 34.147800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395538, 38.141586, 34.326759>,  <44.592487, 38.226921, 34.434135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395538, 38.141586, 34.326759>,  <44.067291, 37.999363, 34.147800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395538, 38.141586, 34.326759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466406, -0.869082, -0.164807,
		0.330229, 0.343914, -0.879018,
		0.820618, 0.355555, 0.447399,
		44.641724, 38.248253, 34.460979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.667595, 37.784431, 33.814514>,  <44.067291, 37.999363, 34.147800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.667595, 37.784431, 33.814514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701809, 37.825417, 34.210934>,  <44.722336, 37.850006, 34.448788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701809, 37.825417, 34.210934>,  <44.667595, 37.784431, 33.814514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701809, 37.825417, 34.210934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389927, -0.918801, 0.061339,
		0.916865, 0.381192, -0.118539,
		0.085532, 0.102461, 0.991053,
		44.727470, 37.856155, 34.508251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.399555, 37.773979, 33.972748>,  <44.667595, 37.784431, 33.814514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.399555, 37.773979, 33.972748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159225, 37.654110, 34.269180>,  <45.015026, 37.582188, 34.447041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159225, 37.654110, 34.269180>,  <45.399555, 37.773979, 33.972748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159225, 37.654110, 34.269180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512431, -0.855925, 0.069333,
		0.613532, 0.421409, 0.667827,
		-0.600827, -0.299677, 0.741080,
		44.978977, 37.564205, 34.491505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.818481, 37.458225, 34.501781>,  <45.399555, 37.773979, 33.972748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.818481, 37.458225, 34.501781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470615, 37.260807, 34.498093>,  <45.261894, 37.142357, 34.495880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470615, 37.260807, 34.498093>,  <45.818481, 37.458225, 34.501781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470615, 37.260807, 34.498093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489835, -0.865135, 0.107717,
		-0.061138, 0.089163, 0.994139,
		-0.869669, -0.493550, -0.009217,
		45.209713, 37.112743, 34.495327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874866, 36.891212, 34.985676>,  <45.818481, 37.458225, 34.501781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874866, 36.891212, 34.985676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619980, 36.784370, 34.696507>,  <45.467049, 36.720264, 34.523006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619980, 36.784370, 34.696507>,  <45.874866, 36.891212, 34.985676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.619980, 36.784370, 34.696507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509211, -0.850022, -0.134781,
		-0.578498, -0.454004, 0.677658,
		-0.637216, -0.267101, -0.722920,
		45.428814, 36.704239, 34.479630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479279, 36.302761, 35.142696>,  <45.874866, 36.891212, 34.985676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479279, 36.302761, 35.142696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580593, 36.341061, 34.757641>,  <45.641380, 36.364040, 34.526608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580593, 36.341061, 34.757641>,  <45.479279, 36.302761, 35.142696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580593, 36.341061, 34.757641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605094, -0.792081, 0.080429,
		-0.754789, -0.602861, -0.258558,
		0.253286, 0.095745, -0.962642,
		45.656578, 36.369785, 34.468849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452465, 35.725380, 34.891964>,  <45.479279, 36.302761, 35.142696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452465, 35.725380, 34.891964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.705112, 35.908974, 34.642040>,  <45.856701, 36.019131, 34.492085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.705112, 35.908974, 34.642040>,  <45.452465, 35.725380, 34.891964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.705112, 35.908974, 34.642040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557172, -0.829131, -0.045842,
		-0.539093, -0.319174, -0.779428,
		0.631616, 0.458988, -0.624813,
		45.894596, 36.046669, 34.454597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.576061, 35.443851, 34.070137>,  <45.452465, 35.725380, 34.891964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.576061, 35.443851, 34.070137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883705, 35.582596, 34.284859>,  <46.068291, 35.665840, 34.413692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883705, 35.582596, 34.284859>,  <45.576061, 35.443851, 34.070137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.883705, 35.582596, 34.284859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470015, -0.876110, -0.107315,
		0.433079, 0.334845, -0.836852,
		0.769108, 0.346857, 0.536808,
		46.114437, 35.686653, 34.445900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228359, 35.300610, 33.714119>,  <45.576061, 35.443851, 34.070137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228359, 35.300610, 33.714119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.243393, 35.294636, 34.113792>,  <46.252415, 35.291054, 34.353596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.243393, 35.294636, 34.113792>,  <46.228359, 35.300610, 33.714119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.243393, 35.294636, 34.113792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466589, -0.883939, -0.030761,
		0.883676, 0.467363, -0.026255,
		0.037584, -0.014932, 0.999182,
		46.254669, 35.290157, 34.413548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.841320, 35.030109, 33.925682>,  <46.228359, 35.300610, 33.714119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.841320, 35.030109, 33.925682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634670, 34.965435, 34.262005>,  <46.510681, 34.926628, 34.463799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634670, 34.965435, 34.262005>,  <46.841320, 35.030109, 33.925682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.634670, 34.965435, 34.262005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461747, -0.879582, 0.114569,
		0.721033, 0.447429, 0.529073,
		-0.516624, -0.161690, 0.840807,
		46.479683, 34.916927, 34.514248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.993153, 34.738930, 34.530811>,  <46.841320, 35.030109, 33.925682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.993153, 34.738930, 34.530811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.324909, 34.929626, 34.414314>,  <47.523964, 35.044044, 34.344414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.324909, 34.929626, 34.414314>,  <46.993153, 34.738930, 34.530811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.324909, 34.929626, 34.414314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469766, -0.312979, 0.825448,
		0.302373, -0.821437, -0.483541,
		0.829392, 0.476744, -0.291247,
		47.573727, 35.072651, 34.326939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.534061, 34.362846, 34.699200>,  <46.993153, 34.738930, 34.530811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.534061, 34.362846, 34.699200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680008, 34.732456, 34.653481>,  <47.767574, 34.954220, 34.626049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680008, 34.732456, 34.653481>,  <47.534061, 34.362846, 34.699200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.680008, 34.732456, 34.653481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592015, -0.135497, 0.794455,
		0.718606, -0.357530, -0.596471,
		0.364862, 0.924020, -0.114294,
		47.789467, 35.009663, 34.619194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.238293, 32.357845, 27.420706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.035606, 32.073719, 27.225285>,  <40.913994, 31.903244, 27.108032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.035606, 32.073719, 27.225285>,  <41.238293, 32.357845, 27.420706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035606, 32.073719, 27.225285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786053, 0.147934, 0.600197,
		-0.354055, 0.688162, -0.633307,
		-0.506720, -0.710316, -0.488555,
		40.883591, 31.860624, 27.078718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658184, 32.650547, 27.356430>,  <41.238293, 32.357845, 27.420706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658184, 32.650547, 27.356430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.582806, 32.259514, 27.318874>,  <40.537579, 32.024895, 27.296341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.582806, 32.259514, 27.318874>,  <40.658184, 32.650547, 27.356430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582806, 32.259514, 27.318874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718909, 0.072181, 0.691346,
		-0.669073, 0.197780, -0.716397,
		-0.188445, -0.977585, -0.093891,
		40.526272, 31.966238, 27.290707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981514, 32.461990, 27.350079>,  <40.658184, 32.650547, 27.356430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981514, 32.461990, 27.350079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.132122, 32.114342, 27.478367>,  <40.222488, 31.905752, 27.555340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.132122, 32.114342, 27.478367>,  <39.981514, 32.461990, 27.350079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132122, 32.114342, 27.478367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663120, -0.011095, 0.748431,
		-0.646918, -0.494476, -0.580508,
		0.376522, -0.869120, 0.320719,
		40.245079, 31.853605, 27.574583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404858, 32.059807, 27.507179>,  <39.981514, 32.461990, 27.350079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404858, 32.059807, 27.507179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.706730, 31.913658, 27.725157>,  <39.887852, 31.825970, 27.855944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.706730, 31.913658, 27.725157>,  <39.404858, 32.059807, 27.507179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706730, 31.913658, 27.725157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594176, -0.028378, 0.803835,
		-0.278233, -0.930430, -0.238510,
		0.754680, -0.365370, 0.544943,
		39.933132, 31.804047, 27.888639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066803, 31.540400, 27.921316>,  <39.404858, 32.059807, 27.507179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066803, 31.540400, 27.921316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.418190, 31.582014, 28.107849>,  <39.629025, 31.606983, 28.219769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.418190, 31.582014, 28.107849>,  <39.066803, 31.540400, 27.921316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418190, 31.582014, 28.107849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410972, -0.333301, 0.848536,
		0.243708, -0.937063, -0.250039,
		0.878470, 0.104036, 0.466335,
		39.681732, 31.613224, 28.247749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243206, 30.840210, 28.347097>,  <39.066803, 31.540400, 27.921316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243206, 30.840210, 28.347097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.462799, 31.123964, 28.523909>,  <39.594555, 31.294216, 28.629995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.462799, 31.123964, 28.523909>,  <39.243206, 30.840210, 28.347097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462799, 31.123964, 28.523909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394299, -0.246504, 0.885305,
		0.736985, -0.660308, 0.144384,
		0.548983, 0.709386, 0.442029,
		39.627495, 31.336781, 28.656517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423458, 30.588001, 28.915684>,  <39.243206, 30.840210, 28.347097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423458, 30.588001, 28.915684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.475788, 30.980515, 28.972208>,  <39.507187, 31.216022, 29.006123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.475788, 30.980515, 28.972208>,  <39.423458, 30.588001, 28.915684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475788, 30.980515, 28.972208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219123, -0.110390, 0.969432,
		0.966886, -0.157793, 0.200580,
		0.130828, 0.981283, 0.141311,
		39.515038, 31.274899, 29.014601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952942, 30.685682, 29.462479>,  <39.423458, 30.588001, 28.915684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952942, 30.685682, 29.462479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.733463, 31.019976, 29.453678>,  <39.601776, 31.220552, 29.448397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.733463, 31.019976, 29.453678>,  <39.952942, 30.685682, 29.462479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733463, 31.019976, 29.453678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089597, -0.032616, 0.995444,
		0.831209, 0.548164, 0.092776,
		-0.548692, 0.835735, -0.022003,
		39.568855, 31.270697, 29.447077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278534, 31.164410, 29.883247>,  <39.952942, 30.685682, 29.462479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278534, 31.164410, 29.883247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.919300, 31.336317, 29.845852>,  <39.703758, 31.439461, 29.823416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.919300, 31.336317, 29.845852>,  <40.278534, 31.164410, 29.883247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919300, 31.336317, 29.845852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046677, 0.304490, 0.951371,
		0.437334, 0.850051, -0.293519,
		-0.898087, 0.429767, -0.093486,
		39.649876, 31.465248, 29.817806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338993, 31.723854, 30.226879>,  <40.278534, 31.164410, 29.883247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338993, 31.723854, 30.226879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.940502, 31.739956, 30.196110>,  <39.701408, 31.749617, 30.177649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.940502, 31.739956, 30.196110>,  <40.338993, 31.723854, 30.226879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940502, 31.739956, 30.196110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047810, 0.485194, 0.873098,
		0.072470, 0.873479, -0.481437,
		-0.996224, 0.040256, -0.076924,
		39.641636, 31.752033, 30.173033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081367, 32.422581, 30.278875>,  <40.338993, 31.723854, 30.226879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081367, 32.422581, 30.278875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.776352, 32.194397, 30.400925>,  <39.593342, 32.057487, 30.474155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.776352, 32.194397, 30.400925>,  <40.081367, 32.422581, 30.278875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776352, 32.194397, 30.400925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003391, 0.468115, 0.883661,
		-0.646928, 0.674865, -0.355023,
		-0.762543, -0.570462, 0.305125,
		39.547588, 32.023258, 30.492462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737385, 32.849808, 30.644339>,  <40.081367, 32.422581, 30.278875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737385, 32.849808, 30.644339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.558849, 32.514938, 30.770779>,  <39.451729, 32.314014, 30.846642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.558849, 32.514938, 30.770779>,  <39.737385, 32.849808, 30.644339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558849, 32.514938, 30.770779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019859, 0.362414, 0.931805,
		-0.894645, 0.409621, -0.178384,
		-0.446336, -0.837178, 0.316098,
		39.424950, 32.263786, 30.865608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096428, 33.002125, 31.026106>,  <39.737385, 32.849808, 30.644339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096428, 33.002125, 31.026106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.184357, 32.634277, 31.156321>,  <39.237114, 32.413567, 31.234449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.184357, 32.634277, 31.156321>,  <39.096428, 33.002125, 31.026106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184357, 32.634277, 31.156321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256933, 0.267341, 0.928716,
		-0.941096, -0.287798, -0.177512,
		0.219826, -0.919620, 0.325538,
		39.250305, 32.358391, 31.253983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670952, 32.900509, 31.548641>,  <39.096428, 33.002125, 31.026106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670952, 32.900509, 31.548641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.949917, 32.624268, 31.625250>,  <39.117294, 32.458523, 31.671215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.949917, 32.624268, 31.625250>,  <38.670952, 32.900509, 31.548641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949917, 32.624268, 31.625250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049841, 0.219852, 0.974259,
		-0.714935, -0.689005, 0.118907,
		0.697412, -0.690606, 0.191521,
		39.159142, 32.417088, 31.682707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447777, 32.462833, 32.131168>,  <38.670952, 32.900509, 31.548641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447777, 32.462833, 32.131168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.845039, 32.416119, 32.130074>,  <39.083397, 32.388092, 32.129417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.845039, 32.416119, 32.130074>,  <38.447777, 32.462833, 32.131168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845039, 32.416119, 32.130074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012284, 0.081137, 0.996627,
		-0.116169, -0.989838, 0.082016,
		0.993154, -0.116785, -0.002734,
		39.142986, 32.381084, 32.129253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532997, 32.038769, 32.629063>,  <38.447777, 32.462833, 32.131168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532997, 32.038769, 32.629063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.899757, 32.196030, 32.601570>,  <39.119812, 32.290386, 32.585075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.899757, 32.196030, 32.601570>,  <38.532997, 32.038769, 32.629063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899757, 32.196030, 32.601570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002837, 0.165793, 0.986156,
		0.399104, -0.904403, 0.150901,
		0.916901, 0.393151, -0.068734,
		39.174828, 32.313976, 32.580952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973572, 31.665709, 33.073826>,  <38.532997, 32.038769, 32.629063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973572, 31.665709, 33.073826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.155754, 32.014812, 33.003574>,  <39.265064, 32.224274, 32.961422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.155754, 32.014812, 33.003574>,  <38.973572, 31.665709, 33.073826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155754, 32.014812, 33.003574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118486, 0.136099, 0.983584,
		0.882337, -0.468791, -0.041422,
		0.455458, 0.872761, -0.175631,
		39.292393, 32.276642, 32.950886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575550, 31.563166, 33.359921>,  <38.973572, 31.665709, 33.073826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575550, 31.563166, 33.359921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.484875, 31.952314, 33.341434>,  <39.430470, 32.185802, 33.330345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.484875, 31.952314, 33.341434>,  <39.575550, 31.563166, 33.359921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484875, 31.952314, 33.341434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115766, 0.074025, 0.990514,
		0.967063, 0.219186, -0.129406,
		-0.226686, 0.972871, -0.046212,
		39.416870, 32.244175, 33.327572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081108, 31.890642, 33.589882>,  <39.575550, 31.563166, 33.359921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081108, 31.890642, 33.589882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.828770, 32.197964, 33.633217>,  <39.677364, 32.382359, 33.659218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.828770, 32.197964, 33.633217>,  <40.081108, 31.890642, 33.589882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828770, 32.197964, 33.633217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199614, 0.025778, 0.979536,
		0.749790, 0.639563, -0.169626,
		-0.630848, 0.768306, 0.108338,
		39.639515, 32.428455, 33.665718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403221, 32.327133, 33.975845>,  <40.081108, 31.890642, 33.589882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403221, 32.327133, 33.975845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.028156, 32.453957, 34.032799>,  <39.803120, 32.530048, 34.066971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.028156, 32.453957, 34.032799>,  <40.403221, 32.327133, 33.975845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028156, 32.453957, 34.032799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222128, 0.231584, 0.947116,
		0.267314, 0.919698, -0.287574,
		-0.937658, 0.317055, 0.142385,
		39.746861, 32.549072, 34.075516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550560, 32.949490, 34.395088>,  <40.403221, 32.327133, 33.975845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550560, 32.949490, 34.395088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.174229, 32.822426, 34.442295>,  <39.948429, 32.746185, 34.470619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.174229, 32.822426, 34.442295>,  <40.550560, 32.949490, 34.395088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174229, 32.822426, 34.442295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060992, 0.183830, 0.981064,
		-0.333342, 0.930213, -0.153578,
		-0.940831, -0.317663, 0.118014,
		39.891979, 32.727127, 34.477699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949806, 33.635685, 34.474800>,  <40.550560, 32.949490, 34.395088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949806, 33.635685, 34.474800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.176308, 33.965328, 34.480579>,  <41.312210, 34.163113, 34.484047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.176308, 33.965328, 34.480579>,  <40.949806, 33.635685, 34.474800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176308, 33.965328, 34.480579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319384, -0.203229, -0.925577,
		-0.759835, 0.528726, -0.378284,
		0.566255, 0.824104, 0.014446,
		41.346184, 34.212559, 34.484913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719173, 34.075008, 33.927811>,  <40.949806, 33.635685, 34.474800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719173, 34.075008, 33.927811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.095249, 34.189178, 34.002190>,  <41.320896, 34.257679, 34.046818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.095249, 34.189178, 34.002190>,  <40.719173, 34.075008, 33.927811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095249, 34.189178, 34.002190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187269, 0.022913, -0.982041,
		-0.284557, 0.958128, -0.031908,
		0.940190, 0.285422, 0.185948,
		41.377308, 34.274803, 34.057976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849300, 34.657017, 33.415855>,  <40.719173, 34.075008, 33.927811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849300, 34.657017, 33.415855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.214039, 34.540825, 33.531898>,  <41.432880, 34.471111, 33.601524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.214039, 34.540825, 33.531898>,  <40.849300, 34.657017, 33.415855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214039, 34.540825, 33.531898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320400, 0.061717, -0.945270,
		0.256675, 0.954889, 0.149345,
		0.911845, -0.290477, 0.290106,
		41.487591, 34.453682, 33.618931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201008, 34.959209, 32.945438>,  <40.849300, 34.657017, 33.415855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201008, 34.959209, 32.945438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.420189, 34.667149, 33.108723>,  <41.551697, 34.491913, 33.206692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.420189, 34.667149, 33.108723>,  <41.201008, 34.959209, 32.945438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420189, 34.667149, 33.108723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368668, -0.227256, -0.901354,
		0.750890, 0.644389, 0.144658,
		0.547948, -0.730149, 0.408210,
		41.584572, 34.448105, 33.231186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977394, 34.921230, 32.648911>,  <41.201008, 34.959209, 32.945438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977394, 34.921230, 32.648911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.894104, 34.561172, 32.801945>,  <41.844131, 34.345139, 32.893764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.894104, 34.561172, 32.801945>,  <41.977394, 34.921230, 32.648911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894104, 34.561172, 32.801945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322578, -0.432479, -0.841965,
		0.923356, -0.051902, 0.380421,
		-0.208224, -0.900149, 0.382590,
		41.831638, 34.291126, 32.916721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551838, 34.511395, 32.500252>,  <41.977394, 34.921230, 32.648911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551838, 34.511395, 32.500252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.273296, 34.240017, 32.593895>,  <42.106171, 34.077190, 32.650082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.273296, 34.240017, 32.593895>,  <42.551838, 34.511395, 32.500252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273296, 34.240017, 32.593895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339988, -0.599104, -0.724901,
		0.632062, -0.425192, 0.647850,
		-0.696352, -0.678444, 0.234111,
		42.064392, 34.036484, 32.664127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.902874, 33.768185, 32.462723>,  <42.551838, 34.511395, 32.500252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.902874, 33.768185, 32.462723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.509415, 33.699699, 32.440342>,  <42.273338, 33.658607, 32.426914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.509415, 33.699699, 32.440342>,  <42.902874, 33.768185, 32.462723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509415, 33.699699, 32.440342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152878, -0.629312, -0.761967,
		0.095245, -0.758059, 0.645194,
		-0.983644, -0.171209, -0.055951,
		42.214321, 33.648338, 32.423557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813538, 33.143227, 32.394428>,  <42.902874, 33.768185, 32.462723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813538, 33.143227, 32.394428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.457218, 33.269562, 32.263752>,  <42.243427, 33.345364, 32.185349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.457218, 33.269562, 32.263752>,  <42.813538, 33.143227, 32.394428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457218, 33.269562, 32.263752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165577, -0.443898, -0.880647,
		-0.423160, -0.838570, 0.343127,
		-0.890798, 0.315840, -0.326688,
		42.189980, 33.364311, 32.165745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525528, 32.544979, 32.074829>,  <42.813538, 33.143227, 32.394428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525528, 32.544979, 32.074829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.310226, 32.843449, 31.918112>,  <42.181046, 33.022530, 31.824081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.310226, 32.843449, 31.918112>,  <42.525528, 32.544979, 32.074829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310226, 32.843449, 31.918112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076145, -0.419927, -0.904358,
		-0.839336, -0.516608, 0.169209,
		-0.538254, 0.746175, -0.391797,
		42.148750, 33.067303, 31.800573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157440, 32.154736, 31.643847>,  <42.525528, 32.544979, 32.074829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157440, 32.154736, 31.643847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.164829, 32.535480, 31.521460>,  <42.169262, 32.763927, 31.448027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.164829, 32.535480, 31.521460>,  <42.157440, 32.154736, 31.643847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164829, 32.535480, 31.521460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132056, -0.301018, -0.944431,
		-0.991070, 0.057850, 0.120140,
		0.018471, 0.951862, -0.305970,
		42.170372, 32.821037, 31.429668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609257, 32.279545, 31.100348>,  <42.157440, 32.154736, 31.643847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609257, 32.279545, 31.100348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.842781, 32.597980, 31.036585>,  <41.982895, 32.789040, 30.998327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.842781, 32.597980, 31.036585>,  <41.609257, 32.279545, 31.100348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842781, 32.597980, 31.036585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075160, -0.142504, -0.986936,
		-0.808403, 0.588166, -0.023362,
		0.583812, 0.796086, -0.159407,
		42.017925, 32.836807, 30.988762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303387, 32.630730, 30.489643>,  <41.609257, 32.279545, 31.100348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303387, 32.630730, 30.489643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.681080, 32.760727, 30.510826>,  <41.907696, 32.838726, 30.523535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.681080, 32.760727, 30.510826>,  <41.303387, 32.630730, 30.489643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681080, 32.760727, 30.510826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105626, -0.146622, -0.983537,
		-0.311880, 0.934280, -0.172773,
		0.944232, 0.324995, 0.052956,
		41.964348, 32.858227, 30.526712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355610, 33.271603, 30.051840>,  <41.303387, 32.630730, 30.489643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355610, 33.271603, 30.051840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.726154, 33.123367, 30.078754>,  <41.948479, 33.034428, 30.094902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.726154, 33.123367, 30.078754>,  <41.355610, 33.271603, 30.051840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726154, 33.123367, 30.078754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032124, -0.100255, -0.994443,
		0.375270, 0.923372, -0.080967,
		0.926359, -0.370584, 0.067285,
		42.004063, 33.012192, 30.098940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.732330, 33.659496, 29.522612>,  <41.355610, 33.271603, 30.051840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.732330, 33.659496, 29.522612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.953655, 33.337708, 29.609018>,  <42.086449, 33.144634, 29.660862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.953655, 33.337708, 29.609018>,  <41.732330, 33.659496, 29.522612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953655, 33.337708, 29.609018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237799, -0.095985, -0.966560,
		0.798308, 0.586179, 0.138194,
		0.553313, -0.804476, 0.216019,
		42.119648, 33.096363, 29.673824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273224, 33.684227, 28.995613>,  <41.732330, 33.659496, 29.522612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273224, 33.684227, 28.995613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.292656, 33.311024, 29.138235>,  <42.304314, 33.087101, 29.223808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.292656, 33.311024, 29.138235>,  <42.273224, 33.684227, 28.995613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292656, 33.311024, 29.138235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215117, -0.338828, -0.915926,
		0.975379, 0.121195, 0.184247,
		0.048578, -0.933010, 0.356557,
		42.307228, 33.031120, 29.245203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908688, 33.490421, 28.770420>,  <42.273224, 33.684227, 28.995613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908688, 33.490421, 28.770420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.698524, 33.159931, 28.851706>,  <42.572426, 32.961636, 28.900476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.698524, 33.159931, 28.851706>,  <42.908688, 33.490421, 28.770420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698524, 33.159931, 28.851706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295733, -0.401279, -0.866901,
		0.797803, -0.395378, 0.455177,
		-0.525406, -0.826227, 0.203215,
		42.540901, 32.912064, 28.912670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331779, 32.953087, 28.615654>,  <42.908688, 33.490421, 28.770420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331779, 32.953087, 28.615654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.977783, 32.767761, 28.597202>,  <42.765385, 32.656567, 28.586132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.977783, 32.767761, 28.597202>,  <43.331779, 32.953087, 28.615654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977783, 32.767761, 28.597202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313135, -0.518930, -0.795398,
		0.344584, -0.718365, 0.604329,
		-0.884991, -0.463318, -0.046130,
		42.712284, 32.628765, 28.583363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523724, 32.237534, 28.346174>,  <43.331779, 32.953087, 28.615654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523724, 32.237534, 28.346174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.136181, 32.301914, 28.270906>,  <42.903656, 32.340542, 28.225746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.136181, 32.301914, 28.270906>,  <43.523724, 32.237534, 28.346174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136181, 32.301914, 28.270906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101579, -0.434685, -0.894836,
		-0.225820, -0.886083, 0.404799,
		-0.968858, 0.160953, -0.188168,
		42.845524, 32.350201, 28.214457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266335, 31.540333, 28.076591>,  <43.523724, 32.237534, 28.346174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.266335, 31.540333, 28.076591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.045498, 31.851112, 27.955566>,  <42.912994, 32.037579, 27.882952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.045498, 31.851112, 27.955566>,  <43.266335, 31.540333, 28.076591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.045498, 31.851112, 27.955566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074070, -0.315740, -0.945950,
		-0.830486, -0.544663, 0.116769,
		-0.552093, 0.776949, -0.302561,
		42.879871, 32.084198, 27.864798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.414330, 31.169476, 27.611719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.421341, 31.559357, 27.522594>,  <42.425549, 31.793285, 27.469120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.421341, 31.559357, 27.522594>,  <42.414330, 31.169476, 27.611719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421341, 31.559357, 27.522594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091706, -0.223473, -0.970386,
		-0.995632, -0.003419, -0.093305,
		0.017533, 0.974704, -0.222810,
		42.426601, 31.851768, 27.455751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981033, 31.211697, 27.010637>,  <42.414330, 31.169476, 27.611719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981033, 31.211697, 27.010637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.216801, 31.534824, 27.009438>,  <42.358261, 31.728701, 27.008718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.216801, 31.534824, 27.009438>,  <41.981033, 31.211697, 27.010637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216801, 31.534824, 27.009438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026305, -0.022903, -0.999392,
		-0.807398, 0.588984, -0.034749,
		0.589421, 0.807820, -0.002998,
		42.393627, 31.777170, 27.008537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765476, 31.564562, 26.463949>,  <41.981033, 31.211697, 27.010637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765476, 31.564562, 26.463949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.137760, 31.692400, 26.535097>,  <42.361130, 31.769102, 26.577785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.137760, 31.692400, 26.535097>,  <41.765476, 31.564562, 26.463949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137760, 31.692400, 26.535097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164387, 0.068918, -0.983985,
		-0.326734, 0.945045, 0.011605,
		0.930710, 0.319594, 0.177871,
		42.416973, 31.788279, 26.588459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813717, 31.931984, 25.913086>,  <41.765476, 31.564562, 26.463949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813717, 31.931984, 25.913086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.195221, 31.906799, 26.030651>,  <42.424122, 31.891689, 26.101191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.195221, 31.906799, 26.030651>,  <41.813717, 31.931984, 25.913086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195221, 31.906799, 26.030651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298348, 0.079342, -0.951154,
		0.036565, 0.994857, 0.094456,
		0.953756, -0.062960, 0.293913,
		42.481346, 31.887911, 26.118824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199123, 32.510468, 25.652121>,  <41.813717, 31.931984, 25.913086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199123, 32.510468, 25.652121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.447647, 32.198898, 25.686184>,  <42.596760, 32.011955, 25.706621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.447647, 32.198898, 25.686184>,  <42.199123, 32.510468, 25.652121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447647, 32.198898, 25.686184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301053, 0.136960, -0.943721,
		0.723426, 0.611976, 0.319593,
		0.621306, -0.778927, 0.085157,
		42.634041, 31.965219, 25.711731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849564, 32.672123, 25.261477>,  <42.199123, 32.510468, 25.652121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849564, 32.672123, 25.261477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.866909, 32.273293, 25.286619>,  <42.877316, 32.033993, 25.301704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.866909, 32.273293, 25.286619>,  <42.849564, 32.672123, 25.261477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866909, 32.273293, 25.286619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157828, -0.055290, -0.985917,
		0.986514, 0.052678, 0.154970,
		0.043368, -0.997080, 0.062858,
		42.879921, 31.974169, 25.305477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111717, 32.456478, 24.629354>,  <42.849564, 32.672123, 25.261477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111717, 32.456478, 24.629354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.980686, 32.096210, 24.743532>,  <42.902065, 31.880049, 24.812038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.980686, 32.096210, 24.743532>,  <43.111717, 32.456478, 24.629354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980686, 32.096210, 24.743532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007435, -0.299649, -0.954020,
		0.944794, -0.314640, 0.091463,
		-0.327580, -0.900673, 0.285446,
		42.882412, 31.826008, 24.829166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458466, 31.899790, 24.219893>,  <43.111717, 32.456478, 24.629354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458466, 31.899790, 24.219893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.097511, 31.747948, 24.301481>,  <42.880939, 31.656843, 24.350433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.097511, 31.747948, 24.301481>,  <43.458466, 31.899790, 24.219893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.097511, 31.747948, 24.301481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139673, -0.190132, -0.971772,
		0.407669, -0.905401, 0.118552,
		-0.902385, -0.379603, 0.203970,
		42.826797, 31.634068, 24.362673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.535717, 31.279337, 23.923075>,  <43.458466, 31.899790, 24.219893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.535717, 31.279337, 23.923075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.149086, 31.371006, 23.969046>,  <42.917107, 31.426006, 23.996628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.149086, 31.371006, 23.969046>,  <43.535717, 31.279337, 23.923075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149086, 31.371006, 23.969046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204130, -0.416721, -0.885819,
		-0.155110, -0.879673, 0.449574,
		-0.966577, 0.229171, 0.114930,
		42.859112, 31.439758, 24.003525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205379, 30.633696, 23.862839>,  <43.535717, 31.279337, 23.923075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205379, 30.633696, 23.862839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.936176, 30.917450, 23.779093>,  <42.774654, 31.087704, 23.728844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.936176, 30.917450, 23.779093>,  <43.205379, 30.633696, 23.862839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936176, 30.917450, 23.779093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227926, -0.468202, -0.853719,
		-0.703644, -0.526836, 0.476790,
		-0.673004, 0.709387, -0.209367,
		42.734276, 31.130266, 23.716282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664623, 30.286070, 23.681589>,  <43.205379, 30.633696, 23.862839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664623, 30.286070, 23.681589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.569035, 30.638529, 23.518383>,  <42.511681, 30.850004, 23.420460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.569035, 30.638529, 23.518383>,  <42.664623, 30.286070, 23.681589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569035, 30.638529, 23.518383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368191, -0.471035, -0.801599,
		-0.898515, -0.041333, 0.436993,
		-0.238972, 0.881145, -0.408014,
		42.497341, 30.902872, 23.395979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953705, 30.269079, 23.410042>,  <42.664623, 30.286070, 23.681589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953705, 30.269079, 23.410042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.144337, 30.544971, 23.191998>,  <42.258717, 30.710506, 23.061171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.144337, 30.544971, 23.191998>,  <41.953705, 30.269079, 23.410042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144337, 30.544971, 23.191998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390001, -0.389835, -0.834223,
		-0.787891, 0.610167, 0.083208,
		0.476578, 0.689729, -0.545113,
		42.287312, 30.751890, 23.028463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437946, 30.477736, 23.042721>,  <41.953705, 30.269079, 23.410042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437946, 30.477736, 23.042721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.750137, 30.641918, 22.854090>,  <41.937450, 30.740429, 22.740911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.750137, 30.641918, 22.854090>,  <41.437946, 30.477736, 23.042721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750137, 30.641918, 22.854090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370661, -0.303634, -0.877734,
		-0.503460, 0.859843, -0.084837,
		0.780473, 0.410458, -0.471578,
		41.984280, 30.765055, 22.712616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119755, 30.809206, 22.526190>,  <41.437946, 30.477736, 23.042721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119755, 30.809206, 22.526190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.500259, 30.798233, 22.403330>,  <41.728561, 30.791649, 22.329613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.500259, 30.798233, 22.403330>,  <41.119755, 30.809206, 22.526190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500259, 30.798233, 22.403330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306549, -0.192346, -0.932218,
		-0.033507, 0.980944, -0.191381,
		0.951265, -0.027432, -0.307152,
		41.785641, 30.790003, 22.311184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180534, 31.261421, 21.906343>,  <41.119755, 30.809206, 22.526190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180534, 31.261421, 21.906343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.483112, 31.000368, 21.889053>,  <41.664658, 30.843737, 21.878679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.483112, 31.000368, 21.889053>,  <41.180534, 31.261421, 21.906343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483112, 31.000368, 21.889053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263609, -0.243725, -0.933332,
		0.598586, 0.717406, -0.356404,
		0.756442, -0.652631, -0.043224,
		41.710045, 30.804579, 21.876085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505150, 31.474834, 21.379927>,  <41.180534, 31.261421, 21.906343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505150, 31.474834, 21.379927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.648994, 31.105003, 21.430256>,  <41.735302, 30.883104, 21.460453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.648994, 31.105003, 21.430256>,  <41.505150, 31.474834, 21.379927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648994, 31.105003, 21.430256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088318, -0.167966, -0.981829,
		0.928913, 0.341964, -0.142059,
		0.359611, -0.924580, 0.125824,
		41.756878, 30.827629, 21.468002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055870, 31.420013, 20.949299>,  <41.505150, 31.474834, 21.379927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055870, 31.420013, 20.949299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.955807, 31.039873, 21.023333>,  <41.895767, 30.811789, 21.067753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.955807, 31.039873, 21.023333>,  <42.055870, 31.420013, 20.949299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955807, 31.039873, 21.023333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008638, -0.188964, -0.981946,
		0.968167, -0.247240, 0.039062,
		-0.250158, -0.950350, 0.185084,
		41.880760, 30.754768, 21.078857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408920, 31.094889, 20.497234>,  <42.055870, 31.420013, 20.949299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408920, 31.094889, 20.497234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.150642, 30.800350, 20.578098>,  <41.995674, 30.623627, 20.626617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.150642, 30.800350, 20.578098>,  <42.408920, 31.094889, 20.497234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150642, 30.800350, 20.578098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103650, -0.346820, -0.932187,
		0.756524, -0.580958, 0.300264,
		-0.645699, -0.736344, 0.202161,
		41.956932, 30.579447, 20.638746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.455578, 30.703920, 19.866673>,  <42.408920, 31.094889, 20.497234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.455578, 30.703920, 19.866673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.166630, 30.504072, 20.057905>,  <41.993263, 30.384163, 20.172646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.166630, 30.504072, 20.057905>,  <42.455578, 30.703920, 19.866673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166630, 30.504072, 20.057905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319907, -0.371481, -0.871585,
		0.613063, -0.782547, 0.108513,
		-0.722367, -0.499622, 0.478084,
		41.949921, 30.354185, 20.201330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497311, 30.008762, 19.603003>,  <42.455578, 30.703920, 19.866673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497311, 30.008762, 19.603003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.128117, 30.102865, 19.724827>,  <41.906601, 30.159327, 19.797920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.128117, 30.102865, 19.724827>,  <42.497311, 30.008762, 19.603003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128117, 30.102865, 19.724827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352559, -0.199620, -0.914251,
		-0.154280, -0.951215, 0.267186,
		-0.922984, 0.235250, 0.304561,
		41.851223, 30.173443, 19.816195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140549, 29.473173, 19.330051>,  <42.497311, 30.008762, 19.603003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140549, 29.473173, 19.330051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.872887, 29.760717, 19.405394>,  <41.712292, 29.933243, 19.450598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.872887, 29.760717, 19.405394>,  <42.140549, 29.473173, 19.330051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872887, 29.760717, 19.405394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395801, -0.130246, -0.909053,
		-0.628949, -0.682845, 0.371679,
		-0.669152, 0.718859, 0.188353,
		41.672142, 29.976376, 19.461899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449158, 29.260525, 19.114313>,  <42.140549, 29.473173, 19.330051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449158, 29.260525, 19.114313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.506084, 29.656305, 19.103504>,  <41.540241, 29.893774, 19.097019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.506084, 29.656305, 19.103504>,  <41.449158, 29.260525, 19.114313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506084, 29.656305, 19.103504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469405, 0.043428, -0.881914,
		-0.871439, 0.138192, 0.470635,
		0.142312, 0.989453, -0.027024,
		41.548779, 29.953140, 19.095398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929821, 29.412477, 18.572678>,  <41.449158, 29.260525, 19.114313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929821, 29.412477, 18.572678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083885, 29.766056, 18.678726>,  <41.176323, 29.978203, 18.742355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.083885, 29.766056, 18.678726>,  <40.929821, 29.412477, 18.572678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083885, 29.766056, 18.678726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608513, 0.459246, -0.647151,
		-0.693802, 0.087929, 0.714778,
		0.385162, 0.883947, 0.265120,
		41.199432, 30.031240, 18.758263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423443, 29.879089, 18.825968>,  <40.929821, 29.412477, 18.572678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423443, 29.879089, 18.825968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.728973, 30.030519, 18.616873>,  <40.912292, 30.121378, 18.491415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.728973, 30.030519, 18.616873>,  <40.423443, 29.879089, 18.825968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728973, 30.030519, 18.616873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638454, 0.324470, -0.697922,
		-0.094604, 0.866833, 0.489541,
		0.763824, 0.378576, -0.522737,
		40.958122, 30.144093, 18.460052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962524, 30.399464, 19.124708>,  <40.423443, 29.879089, 18.825968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962524, 30.399464, 19.124708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.622166, 30.607643, 19.096111>,  <39.417950, 30.732552, 19.078953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.622166, 30.607643, 19.096111>,  <39.962524, 30.399464, 19.124708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622166, 30.607643, 19.096111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008475, 0.122467, 0.992436,
		0.525267, 0.845065, -0.099796,
		-0.850895, 0.520449, -0.071490,
		39.366898, 30.763779, 19.074665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029400, 31.221855, 19.339466>,  <39.962524, 30.399464, 19.124708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029400, 31.221855, 19.339466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.681873, 31.030731, 19.391396>,  <39.473358, 30.916056, 19.422552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.681873, 31.030731, 19.391396>,  <40.029400, 31.221855, 19.339466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681873, 31.030731, 19.391396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074683, 0.132735, 0.988334,
		-0.489470, 0.868376, -0.079638,
		-0.868816, -0.477812, 0.129823,
		39.421227, 30.887388, 19.430342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719421, 31.654282, 19.883553>,  <40.029400, 31.221855, 19.339466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719421, 31.654282, 19.883553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.529835, 31.302288, 19.896093>,  <39.416080, 31.091093, 19.903618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.529835, 31.302288, 19.896093>,  <39.719421, 31.654282, 19.883553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529835, 31.302288, 19.896093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044027, 0.059246, 0.997272,
		-0.879440, 0.471297, -0.066823,
		-0.473970, -0.879983, 0.031353,
		39.387642, 31.038294, 19.905499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125473, 31.755135, 20.412926>,  <39.719421, 31.654282, 19.883553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125473, 31.755135, 20.412926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.201412, 31.365150, 20.366604>,  <39.246975, 31.131161, 20.338812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.201412, 31.365150, 20.366604>,  <39.125473, 31.755135, 20.412926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201412, 31.365150, 20.366604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018405, -0.121462, 0.992426,
		-0.981641, -0.186279, -0.041003,
		0.189848, -0.974960, -0.115803,
		39.258366, 31.072662, 20.331863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523827, 31.356419, 20.747152>,  <39.125473, 31.755135, 20.412926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523827, 31.356419, 20.747152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.857727, 31.137030, 20.727680>,  <39.058067, 31.005396, 20.715996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.857727, 31.137030, 20.727680>,  <38.523827, 31.356419, 20.747152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857727, 31.137030, 20.727680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080815, -0.209489, 0.974466,
		-0.544668, -0.809500, -0.219196,
		0.834749, -0.548474, -0.048683,
		39.108150, 30.972486, 20.713076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294491, 30.800272, 21.177200>,  <38.523827, 31.356419, 20.747152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294491, 30.800272, 21.177200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692734, 30.790207, 21.141111>,  <38.931679, 30.784168, 21.119457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.692734, 30.790207, 21.141111>,  <38.294491, 30.800272, 21.177200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692734, 30.790207, 21.141111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085632, -0.145807, 0.985600,
		-0.037953, -0.988993, -0.143011,
		0.995604, -0.025160, -0.090223,
		38.991413, 30.782658, 21.114044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445419, 30.301975, 21.724417>,  <38.294491, 30.800272, 21.177200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445419, 30.301975, 21.724417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778755, 30.503820, 21.634163>,  <38.978756, 30.624928, 21.580009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.778755, 30.503820, 21.634163>,  <38.445419, 30.301975, 21.724417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778755, 30.503820, 21.634163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183288, 0.132851, 0.974041,
		0.521488, -0.853064, 0.018221,
		0.833340, 0.504612, -0.225636,
		39.028759, 30.655205, 21.566473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892860, 30.005663, 22.199692>,  <38.445419, 30.301975, 21.724417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892860, 30.005663, 22.199692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.060883, 30.347658, 22.078001>,  <39.161694, 30.552855, 22.004986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.060883, 30.347658, 22.078001>,  <38.892860, 30.005663, 22.199692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060883, 30.347658, 22.078001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268128, 0.203343, 0.941679,
		0.866985, -0.477127, -0.143831,
		0.420053, 0.854986, -0.304226,
		39.186897, 30.604155, 21.986732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556656, 30.109615, 22.511339>,  <38.892860, 30.005663, 22.199692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556656, 30.109615, 22.511339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.458458, 30.482801, 22.406029>,  <39.399540, 30.706713, 22.342842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.458458, 30.482801, 22.406029>,  <39.556656, 30.109615, 22.511339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458458, 30.482801, 22.406029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306299, 0.332325, 0.892043,
		0.919736, 0.138347, -0.367349,
		-0.245490, 0.932963, -0.263276,
		39.384811, 30.762690, 22.327045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257729, 30.515421, 22.694681>,  <39.556656, 30.109615, 22.511339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257729, 30.515421, 22.694681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.934521, 30.751026, 22.689392>,  <39.740597, 30.892389, 22.686218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.934521, 30.751026, 22.689392>,  <40.257729, 30.515421, 22.694681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934521, 30.751026, 22.689392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299749, 0.430317, 0.851456,
		0.507207, 0.684028, -0.524259,
		-0.808017, 0.589011, -0.013223,
		39.692116, 30.927729, 22.685425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503208, 31.264383, 22.724258>,  <40.257729, 30.515421, 22.694681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503208, 31.264383, 22.724258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.124393, 31.243265, 22.850956>,  <39.897102, 31.230595, 22.926973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.124393, 31.243265, 22.850956>,  <40.503208, 31.264383, 22.724258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124393, 31.243265, 22.850956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264059, 0.433227, 0.861735,
		-0.182719, 0.899737, -0.396342,
		-0.947041, -0.052797, 0.316742,
		39.840282, 31.227427, 22.945978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327461, 31.839310, 23.146885>,  <40.503208, 31.264383, 22.724258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327461, 31.839310, 23.146885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.013252, 31.617161, 23.256071>,  <39.824726, 31.483871, 23.321583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.013252, 31.617161, 23.256071>,  <40.327461, 31.839310, 23.146885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013252, 31.617161, 23.256071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195301, 0.196066, 0.960945,
		-0.587201, 0.808159, -0.045551,
		-0.785527, -0.555371, 0.272964,
		39.777596, 31.450550, 23.337961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869614, 32.293503, 23.575581>,  <40.327461, 31.839310, 23.146885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869614, 32.293503, 23.575581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.810905, 31.906660, 23.658691>,  <39.775681, 31.674555, 23.708557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.810905, 31.906660, 23.658691>,  <39.869614, 32.293503, 23.575581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810905, 31.906660, 23.658691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263620, 0.164211, 0.950547,
		-0.953396, 0.194285, 0.230847,
		-0.146769, -0.967103, 0.207775,
		39.766876, 31.616529, 23.721024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665119, 32.336105, 24.250996>,  <39.869614, 32.293503, 23.575581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665119, 32.336105, 24.250996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.729641, 31.946409, 24.187948>,  <39.768356, 31.712593, 24.150120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.729641, 31.946409, 24.187948>,  <39.665119, 32.336105, 24.250996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729641, 31.946409, 24.187948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378561, -0.086413, 0.921534,
		-0.911412, -0.208320, 0.354869,
		0.161309, -0.974236, -0.157619,
		39.778034, 31.654139, 24.140663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450291, 32.021633, 24.842043>,  <39.665119, 32.336105, 24.250996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450291, 32.021633, 24.842043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.687119, 31.741816, 24.681997>,  <39.829216, 31.573925, 24.585970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.687119, 31.741816, 24.681997>,  <39.450291, 32.021633, 24.842043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687119, 31.741816, 24.681997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412581, -0.163373, 0.896151,
		-0.692263, -0.695665, 0.191889,
		0.592072, -0.699542, -0.400115,
		39.864738, 31.531954, 24.561962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298450, 31.309805, 25.056017>,  <39.450291, 32.021633, 24.842043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298450, 31.309805, 25.056017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.691341, 31.334711, 24.985197>,  <39.927078, 31.349655, 24.942705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.691341, 31.334711, 24.985197>,  <39.298450, 31.309805, 25.056017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691341, 31.334711, 24.985197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186496, -0.218102, 0.957941,
		0.021033, -0.973938, -0.225839,
		0.982231, 0.062266, -0.177048,
		39.986012, 31.353392, 24.932083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488415, 30.709946, 25.289835>,  <39.298450, 31.309805, 25.056017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488415, 30.709946, 25.289835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.830162, 30.910219, 25.234171>,  <40.035210, 31.030384, 25.200773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.830162, 30.910219, 25.234171>,  <39.488415, 30.709946, 25.289835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830162, 30.910219, 25.234171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392133, -0.445429, 0.804876,
		0.341003, -0.742231, -0.576896,
		0.854371, 0.500685, -0.139160,
		40.086472, 31.060425, 25.192423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005211, 30.234865, 25.375944>,  <39.488415, 30.709946, 25.289835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005211, 30.234865, 25.375944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.195465, 30.582952, 25.427319>,  <40.309616, 30.791805, 25.458143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.195465, 30.582952, 25.427319>,  <40.005211, 30.234865, 25.375944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195465, 30.582952, 25.427319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493598, -0.384888, 0.779886,
		0.728105, -0.307542, -0.612602,
		0.475631, 0.870218, 0.128437,
		40.338154, 30.844017, 25.465849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853855, 30.145435, 25.565151>,  <40.005211, 30.234865, 25.375944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853855, 30.145435, 25.565151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.721672, 30.493362, 25.711693>,  <40.642361, 30.702118, 25.799618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.721672, 30.493362, 25.711693>,  <40.853855, 30.145435, 25.565151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721672, 30.493362, 25.711693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516915, -0.157970, 0.841335,
		0.789680, 0.467401, -0.397419,
		-0.330461, 0.869817, 0.366352,
		40.622536, 30.754307, 25.821598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380733, 30.416153, 25.935535>,  <40.853855, 30.145435, 25.565151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380733, 30.416153, 25.935535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.055237, 30.602987, 26.073902>,  <40.859940, 30.715088, 26.156923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.055237, 30.602987, 26.073902>,  <41.380733, 30.416153, 25.935535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055237, 30.602987, 26.073902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280014, -0.206490, 0.937526,
		0.509334, 0.859763, 0.037238,
		-0.813739, 0.467086, 0.345918,
		40.811115, 30.743113, 26.177677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.241451, 32.566051, 30.292482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.879204, 32.722290, 30.226397>,  <42.661854, 32.816032, 30.186745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.879204, 32.722290, 30.226397>,  <43.241451, 32.566051, 30.292482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879204, 32.722290, 30.226397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036568, 0.460034, 0.887148,
		0.422517, 0.797375, -0.430898,
		-0.905617, 0.390592, -0.165214,
		42.607517, 32.839466, 30.176832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249485, 33.159340, 30.439016>,  <43.241451, 32.566051, 30.292482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249485, 33.159340, 30.439016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863132, 33.071808, 30.494432>,  <42.631321, 33.019291, 30.527681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863132, 33.071808, 30.494432>,  <43.249485, 33.159340, 30.439016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863132, 33.071808, 30.494432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015098, 0.486435, 0.873586,
		-0.258555, 0.845870, -0.466533,
		-0.965879, -0.218826, 0.138541,
		42.573368, 33.006161, 30.535995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.839920, 33.763927, 30.703487>,  <43.249485, 33.159340, 30.439016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.839920, 33.763927, 30.703487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.590488, 33.464756, 30.794487>,  <42.440830, 33.285252, 30.849087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.590488, 33.464756, 30.794487>,  <42.839920, 33.763927, 30.703487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590488, 33.464756, 30.794487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039463, 0.320748, 0.946342,
		-0.780767, 0.581137, -0.229526,
		-0.623575, -0.747930, 0.227497,
		42.403416, 33.240376, 30.862736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265255, 34.077251, 30.951345>,  <42.839920, 33.763927, 30.703487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265255, 34.077251, 30.951345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.234287, 33.705063, 31.094585>,  <42.215706, 33.481750, 31.180531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.234287, 33.705063, 31.094585>,  <42.265255, 34.077251, 30.951345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234287, 33.705063, 31.094585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371025, 0.360270, 0.855889,
		-0.925390, -0.066602, -0.373118,
		-0.077419, -0.930468, 0.358101,
		42.211063, 33.425922, 31.202015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539440, 34.055424, 31.347837>,  <42.265255, 34.077251, 30.951345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539440, 34.055424, 31.347837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.710377, 33.729446, 31.504421>,  <41.812939, 33.533859, 31.598372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.710377, 33.729446, 31.504421>,  <41.539440, 34.055424, 31.347837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710377, 33.729446, 31.504421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359367, 0.244198, 0.900679,
		-0.829598, -0.525578, -0.188507,
		0.427344, -0.814945, 0.391462,
		41.838581, 33.484962, 31.621861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015965, 33.769001, 31.799368>,  <41.539440, 34.055424, 31.347837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015965, 33.769001, 31.799368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.383305, 33.646145, 31.899202>,  <41.603710, 33.572433, 31.959103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.383305, 33.646145, 31.899202>,  <41.015965, 33.769001, 31.799368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383305, 33.646145, 31.899202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108053, 0.412101, 0.904709,
		-0.380724, -0.857811, 0.345267,
		0.918354, -0.307137, 0.249586,
		41.658810, 33.554005, 31.974077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928257, 33.466221, 32.375694>,  <41.015965, 33.769001, 31.799368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928257, 33.466221, 32.375694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.319695, 33.548107, 32.384121>,  <41.554558, 33.597240, 32.389179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.319695, 33.548107, 32.384121>,  <40.928257, 33.466221, 32.375694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319695, 33.548107, 32.384121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080231, 0.285227, 0.955096,
		0.189511, -0.936343, 0.295547,
		0.978595, 0.204713, 0.021070,
		41.613274, 33.609524, 32.390442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210850, 33.140621, 32.943840>,  <40.928257, 33.466221, 32.375694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210850, 33.140621, 32.943840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.453838, 33.444878, 32.852272>,  <41.599632, 33.627430, 32.797329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.453838, 33.444878, 32.852272>,  <41.210850, 33.140621, 32.943840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453838, 33.444878, 32.852272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002196, 0.289798, 0.957085,
		0.794341, -0.580896, 0.177714,
		0.607468, 0.760642, -0.228922,
		41.636078, 33.673069, 32.783596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756111, 33.116138, 33.442467>,  <41.210850, 33.140621, 32.943840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756111, 33.116138, 33.442467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781685, 33.487610, 33.296337>,  <41.797028, 33.710495, 33.208660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.781685, 33.487610, 33.296337>,  <41.756111, 33.116138, 33.442467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781685, 33.487610, 33.296337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042252, 0.363227, 0.930742,
		0.997059, -0.074941, -0.016016,
		0.063933, 0.928682, -0.365325,
		41.800865, 33.766216, 33.186741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283287, 33.497902, 33.814445>,  <41.756111, 33.116138, 33.442467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283287, 33.497902, 33.814445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.069950, 33.787056, 33.638729>,  <41.941948, 33.960548, 33.533298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.069950, 33.787056, 33.638729>,  <42.283287, 33.497902, 33.814445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069950, 33.787056, 33.638729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002778, 0.517820, 0.855485,
		0.845896, 0.457486, -0.274166,
		-0.533341, 0.722890, -0.439292,
		41.909946, 34.003922, 33.506943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636288, 34.051140, 34.069679>,  <42.283287, 33.497902, 33.814445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636288, 34.051140, 34.069679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.289257, 34.185783, 33.923252>,  <42.081039, 34.266571, 33.835396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.289257, 34.185783, 33.923252>,  <42.636288, 34.051140, 34.069679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289257, 34.185783, 33.923252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206213, 0.426331, 0.880749,
		0.452535, 0.839604, -0.300461,
		-0.867576, 0.336611, -0.366067,
		42.028984, 34.286766, 33.813431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536163, 34.693615, 34.357948>,  <42.636288, 34.051140, 34.069679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536163, 34.693615, 34.357948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.172424, 34.561253, 34.257084>,  <41.954182, 34.481834, 34.196564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.172424, 34.561253, 34.257084>,  <42.536163, 34.693615, 34.357948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172424, 34.561253, 34.257084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376739, 0.397841, 0.836535,
		-0.176490, 0.855702, -0.486441,
		-0.909351, -0.330902, -0.252162,
		41.899620, 34.461983, 34.181435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033051, 35.282299, 34.380699>,  <42.536163, 34.693615, 34.357948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033051, 35.282299, 34.380699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.845181, 34.933079, 34.433140>,  <41.732456, 34.723545, 34.464603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.845181, 34.933079, 34.433140>,  <42.033051, 35.282299, 34.380699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845181, 34.933079, 34.433140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457334, 0.367629, 0.809750,
		-0.755149, 0.320364, -0.571942,
		-0.469677, -0.873050, 0.131101,
		41.704277, 34.671165, 34.472469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290611, 35.359276, 34.378918>,  <42.033051, 35.282299, 34.380699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290611, 35.359276, 34.378918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.479965, 35.078957, 34.592381>,  <41.593578, 34.910767, 34.720459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.479965, 35.078957, 34.592381>,  <41.290611, 35.359276, 34.378918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479965, 35.078957, 34.592381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471814, 0.309872, 0.825452,
		-0.743838, -0.642546, -0.183955,
		0.473388, -0.700795, 0.533656,
		41.621983, 34.868717, 34.752476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368988, 36.114113, 34.558884>,  <41.290611, 35.359276, 34.378918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368988, 36.114113, 34.558884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.442432, 36.489891, 34.443146>,  <41.486500, 36.715359, 34.373703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.442432, 36.489891, 34.443146>,  <41.368988, 36.114113, 34.558884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442432, 36.489891, 34.443146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137837, -0.266840, -0.953833,
		-0.973288, 0.215015, 0.080496,
		0.183608, 0.939449, -0.289349,
		41.497517, 36.771725, 34.356342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867886, 36.229160, 33.956989>,  <41.368988, 36.114113, 34.558884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867886, 36.229160, 33.956989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.142704, 36.519787, 33.953518>,  <41.307594, 36.694164, 33.951435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.142704, 36.519787, 33.953518>,  <40.867886, 36.229160, 33.956989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142704, 36.519787, 33.953518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067874, -0.076062, -0.994790,
		-0.723440, 0.682874, -0.101573,
		0.687043, 0.726565, -0.008677,
		41.348816, 36.737755, 33.950916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643291, 36.658840, 33.444714>,  <40.867886, 36.229160, 33.956989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643291, 36.658840, 33.444714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.029408, 36.759766, 33.471687>,  <41.261078, 36.820320, 33.487873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.029408, 36.759766, 33.471687>,  <40.643291, 36.658840, 33.444714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029408, 36.759766, 33.471687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117481, -0.188881, -0.974947,
		-0.233252, 0.949033, -0.211967,
		0.965294, 0.252311, 0.067436,
		41.318996, 36.835461, 33.491917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783669, 37.365387, 33.121075>,  <40.643291, 36.658840, 33.444714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783669, 37.365387, 33.121075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.115547, 37.142174, 33.115383>,  <41.314674, 37.008244, 33.111969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.115547, 37.142174, 33.115383>,  <40.783669, 37.365387, 33.121075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.115547, 37.142174, 33.115383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017467, -0.000479, -0.999847,
		0.557943, 0.829817, -0.010145,
		0.829696, -0.558035, -0.014228,
		41.364456, 36.974762, 33.111115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293533, 37.669277, 32.627800>,  <40.783669, 37.365387, 33.121075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293533, 37.669277, 32.627800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.398994, 37.284748, 32.659649>,  <41.462269, 37.054031, 32.678757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.398994, 37.284748, 32.659649>,  <41.293533, 37.669277, 32.627800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398994, 37.284748, 32.659649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085297, -0.058981, -0.994608,
		0.960840, 0.269019, 0.066448,
		0.263649, -0.961327, 0.079618,
		41.478088, 36.996349, 32.683533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664085, 37.583908, 32.050316>,  <41.293533, 37.669277, 32.627800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664085, 37.583908, 32.050316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.609467, 37.200672, 32.151043>,  <41.576694, 36.970730, 32.211479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.609467, 37.200672, 32.151043>,  <41.664085, 37.583908, 32.050316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609467, 37.200672, 32.151043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032015, -0.249797, -0.967769,
		0.990116, -0.140208, 0.003435,
		-0.136547, -0.958094, 0.251817,
		41.568501, 36.913242, 32.226589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151234, 37.151024, 31.597256>,  <41.664085, 37.583908, 32.050316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151234, 37.151024, 31.597256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.876476, 36.899529, 31.743063>,  <41.711624, 36.748631, 31.830547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.876476, 36.899529, 31.743063>,  <42.151234, 37.151024, 31.597256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876476, 36.899529, 31.743063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020632, -0.518230, -0.854992,
		0.726469, -0.579765, 0.368939,
		-0.686890, -0.628737, 0.364516,
		41.670410, 36.710907, 31.852417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361916, 36.386791, 31.428411>,  <42.151234, 37.151024, 31.597256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361916, 36.386791, 31.428411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.965858, 36.391129, 31.484266>,  <41.728226, 36.393730, 31.517778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.965858, 36.391129, 31.484266>,  <42.361916, 36.386791, 31.428411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965858, 36.391129, 31.484266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133806, -0.367703, -0.920266,
		0.041368, -0.929880, 0.365530,
		-0.990144, 0.010840, 0.139635,
		41.668816, 36.394382, 31.526157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051434, 35.801338, 31.214655>,  <42.361916, 36.386791, 31.428411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.051434, 35.801338, 31.214655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.694733, 35.981743, 31.199825>,  <41.480713, 36.089985, 31.190928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.694733, 35.981743, 31.199825>,  <42.051434, 35.801338, 31.214655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694733, 35.981743, 31.199825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215846, -0.495923, -0.841113,
		-0.397736, -0.742059, 0.539587,
		-0.891749, 0.451009, -0.037075,
		41.427208, 36.117046, 31.188702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548492, 35.177547, 31.011978>,  <42.051434, 35.801338, 31.214655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548492, 35.177547, 31.011978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.386402, 35.535847, 30.938833>,  <41.289150, 35.750824, 30.894947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.386402, 35.535847, 30.938833>,  <41.548492, 35.177547, 31.011978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386402, 35.535847, 30.938833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277851, -0.311226, -0.908811,
		-0.870973, -0.317461, 0.374999,
		-0.405222, 0.895744, -0.182863,
		41.264835, 35.804569, 30.883974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936497, 34.982281, 30.685783>,  <41.548492, 35.177547, 31.011978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936497, 34.982281, 30.685783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.994972, 35.366817, 30.592443>,  <41.030056, 35.597538, 30.536440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.994972, 35.366817, 30.592443>,  <40.936497, 34.982281, 30.685783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.994972, 35.366817, 30.592443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326114, -0.175868, -0.928827,
		-0.933959, 0.211883, 0.287797,
		0.146189, 0.961341, -0.233351,
		41.038830, 35.655220, 30.522438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386906, 35.195698, 30.440065>,  <40.936497, 34.982281, 30.685783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386906, 35.195698, 30.440065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.662979, 35.440319, 30.285322>,  <40.828621, 35.587090, 30.192476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.662979, 35.440319, 30.285322>,  <40.386906, 35.195698, 30.440065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662979, 35.440319, 30.285322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306752, -0.236939, -0.921826,
		-0.655405, 0.754894, 0.024064,
		0.690179, 0.611551, -0.386857,
		40.870033, 35.623783, 30.169266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001019, 35.377804, 29.948328>,  <40.386906, 35.195698, 30.440065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001019, 35.377804, 29.948328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.369789, 35.510307, 29.868006>,  <40.591049, 35.589809, 29.819813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.369789, 35.510307, 29.868006>,  <40.001019, 35.377804, 29.948328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369789, 35.510307, 29.868006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120489, -0.247448, -0.961380,
		-0.368156, 0.910514, -0.188215,
		0.921924, 0.331260, -0.200807,
		40.646366, 35.609684, 29.807764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909897, 35.750832, 29.312004>,  <40.001019, 35.377804, 29.948328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909897, 35.750832, 29.312004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.302807, 35.681290, 29.340019>,  <40.538555, 35.639565, 29.356829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.302807, 35.681290, 29.340019>,  <39.909897, 35.750832, 29.312004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302807, 35.681290, 29.340019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037184, -0.185490, -0.981942,
		0.183702, 0.967145, -0.175738,
		0.982278, -0.173850, 0.070037,
		40.597492, 35.629135, 29.361031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057484, 36.467693, 29.605310>,  <39.909897, 35.750832, 29.312004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057484, 36.467693, 29.605310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.698933, 36.635948, 29.549353>,  <39.483803, 36.736900, 29.515778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.698933, 36.635948, 29.549353>,  <40.057484, 36.467693, 29.605310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698933, 36.635948, 29.549353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170448, -0.035725, 0.984719,
		0.409216, 0.906523, 0.103720,
		-0.896376, 0.420641, -0.139896,
		39.430019, 36.762142, 29.507383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992588, 36.949665, 30.122726>,  <40.057484, 36.467693, 29.605310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992588, 36.949665, 30.122726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.622036, 36.836334, 30.023497>,  <39.399704, 36.768337, 29.963959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.622036, 36.836334, 30.023497>,  <39.992588, 36.949665, 30.122726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622036, 36.836334, 30.023497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224051, -0.114800, 0.967792,
		-0.302680, 0.952127, 0.042869,
		-0.926383, -0.283327, -0.248072,
		39.344120, 36.751335, 29.949076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.607101, 37.217896, 30.581120>,  <39.992588, 36.949665, 30.122726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.607101, 37.217896, 30.581120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.349590, 36.948624, 30.435585>,  <39.195084, 36.787060, 30.348265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.349590, 36.948624, 30.435585>,  <39.607101, 37.217896, 30.581120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349590, 36.948624, 30.435585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256733, -0.257899, 0.931438,
		-0.720863, 0.693045, -0.006800,
		-0.643774, -0.673184, -0.363837,
		39.156460, 36.746670, 30.326433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934795, 37.368904, 30.876547>,  <39.607101, 37.217896, 30.581120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934795, 37.368904, 30.876547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.937271, 36.982311, 30.773878>,  <38.938755, 36.750355, 30.712276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.937271, 36.982311, 30.773878>,  <38.934795, 37.368904, 30.876547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937271, 36.982311, 30.773878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224925, -0.251444, 0.941374,
		-0.974356, 0.051909, -0.218941,
		0.006186, -0.966479, -0.256672,
		38.939125, 36.692368, 30.696877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213085, 37.098839, 31.121119>,  <38.934795, 37.368904, 30.876547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213085, 37.098839, 31.121119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.449158, 36.781197, 31.063051>,  <38.590801, 36.590611, 31.028212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.449158, 36.781197, 31.063051>,  <38.213085, 37.098839, 31.121119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449158, 36.781197, 31.063051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375766, -0.429396, 0.821230,
		-0.714482, -0.430127, -0.551822,
		0.590183, -0.794110, -0.145169,
		38.626213, 36.542965, 31.019501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866177, 36.511185, 31.337633>,  <38.213085, 37.098839, 31.121119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866177, 36.511185, 31.337633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.222279, 36.332680, 31.301199>,  <38.435940, 36.225578, 31.279339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.222279, 36.332680, 31.301199>,  <37.866177, 36.511185, 31.337633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222279, 36.332680, 31.301199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219457, -0.595528, 0.772778,
		-0.399107, -0.667979, -0.628107,
		0.890254, -0.446264, -0.091086,
		38.489353, 36.198799, 31.273872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768726, 35.840302, 31.246201>,  <37.866177, 36.511185, 31.337633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768726, 35.840302, 31.246201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.127125, 35.868927, 31.421507>,  <38.342163, 35.886101, 31.526691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.127125, 35.868927, 31.421507>,  <37.768726, 35.840302, 31.246201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127125, 35.868927, 31.421507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336128, -0.535667, 0.774648,
		0.290199, -0.841392, -0.455899,
		0.895992, 0.071561, 0.438266,
		38.395924, 35.890396, 31.552986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897686, 35.143585, 31.462610>,  <37.768726, 35.840302, 31.246201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897686, 35.143585, 31.462610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.178661, 35.352802, 31.655691>,  <38.347248, 35.478333, 31.771540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.178661, 35.352802, 31.655691>,  <37.897686, 35.143585, 31.462610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178661, 35.352802, 31.655691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069069, -0.624904, 0.777640,
		0.708385, -0.579584, -0.402830,
		0.702439, 0.523046, 0.482704,
		38.389393, 35.509716, 31.800503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370918, 34.627769, 31.751205>,  <37.897686, 35.143585, 31.462610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370918, 34.627769, 31.751205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.386417, 34.963131, 31.968672>,  <38.395718, 35.164349, 32.099152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.386417, 34.963131, 31.968672>,  <38.370918, 34.627769, 31.751205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386417, 34.963131, 31.968672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061677, -0.541031, 0.838738,
		0.997344, -0.066027, 0.030749,
		0.038743, 0.838407, 0.543666,
		38.398041, 35.214653, 32.131771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832668, 34.468994, 32.330616>,  <38.370918, 34.627769, 31.751205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832668, 34.468994, 32.330616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.615768, 34.788113, 32.436058>,  <38.485630, 34.979584, 32.499325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.615768, 34.788113, 32.436058>,  <38.832668, 34.468994, 32.330616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615768, 34.788113, 32.436058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032102, -0.293837, 0.955316,
		0.839606, 0.526479, 0.133722,
		-0.542247, 0.797796, 0.263608,
		38.453094, 35.027451, 32.515141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021793, 34.692333, 32.938190>,  <38.832668, 34.468994, 32.330616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021793, 34.692333, 32.938190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.664806, 34.872715, 32.933437>,  <38.450615, 34.980946, 32.930584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.664806, 34.872715, 32.933437>,  <39.021793, 34.692333, 32.938190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664806, 34.872715, 32.933437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135886, -0.243626, 0.960303,
		0.430157, 0.858655, 0.278707,
		-0.892469, 0.450953, -0.011882,
		38.397064, 35.007999, 32.929874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039627, 35.316257, 33.438419>,  <39.021793, 34.692333, 32.938190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039627, 35.316257, 33.438419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.654446, 35.218197, 33.393497>,  <38.423336, 35.159359, 33.366543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.654446, 35.218197, 33.393497>,  <39.039627, 35.316257, 33.438419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654446, 35.218197, 33.393497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061164, -0.207054, 0.976416,
		-0.262623, 0.947116, 0.184390,
		-0.962958, -0.245151, -0.112306,
		38.365559, 35.144653, 33.359806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.023075, 37.157883, 26.044676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627861, 37.100765, 26.067995>,  <39.390732, 37.066494, 26.081987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627861, 37.100765, 26.067995>,  <40.023075, 37.157883, 26.044676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627861, 37.100765, 26.067995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014178, 0.460476, 0.887559,
		-0.153581, 0.876112, -0.456991,
		-0.988034, -0.142792, 0.058299,
		39.331451, 37.057926, 26.085485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756794, 37.791710, 26.452511>,  <40.023075, 37.157883, 26.044676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756794, 37.791710, 26.452511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469181, 37.514229, 26.469280>,  <39.296612, 37.347740, 26.479342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469181, 37.514229, 26.469280>,  <39.756794, 37.791710, 26.452511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469181, 37.514229, 26.469280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255211, 0.319676, 0.912510,
		-0.646416, 0.645429, -0.406900,
		-0.719036, -0.693707, 0.041923,
		39.253471, 37.306118, 26.481857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099422, 38.165752, 26.657799>,  <39.756794, 37.791710, 26.452511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099422, 38.165752, 26.657799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073578, 37.772861, 26.728287>,  <39.058071, 37.537128, 26.770580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073578, 37.772861, 26.728287>,  <39.099422, 38.165752, 26.657799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073578, 37.772861, 26.728287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206298, 0.185922, 0.960663,
		-0.976353, 0.025720, -0.214645,
		-0.064616, -0.982228, 0.176220,
		39.054192, 37.478191, 26.781153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711506, 38.101139, 27.226810>,  <39.099422, 38.165752, 26.657799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711506, 38.101139, 27.226810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825085, 37.717636, 27.221748>,  <38.893234, 37.487534, 27.218712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825085, 37.717636, 27.221748>,  <38.711506, 38.101139, 27.226810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825085, 37.717636, 27.221748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248535, -0.086340, 0.964767,
		-0.926068, -0.270802, -0.262801,
		0.283952, -0.958755, -0.012653,
		38.910271, 37.430008, 27.217953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268295, 37.624500, 27.509945>,  <38.711506, 38.101139, 27.226810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268295, 37.624500, 27.509945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604904, 37.415474, 27.564739>,  <38.806870, 37.290058, 27.597616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604904, 37.415474, 27.564739>,  <38.268295, 37.624500, 27.509945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604904, 37.415474, 27.564739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214269, -0.090086, 0.972612,
		-0.495918, -0.847824, -0.187780,
		0.841519, -0.522570, 0.136987,
		38.857361, 37.258701, 27.605835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130138, 37.016582, 27.840649>,  <38.268295, 37.624500, 27.509945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130138, 37.016582, 27.840649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526356, 37.031612, 27.893431>,  <38.764088, 37.040630, 27.925100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526356, 37.031612, 27.893431>,  <38.130138, 37.016582, 27.840649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526356, 37.031612, 27.893431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101107, -0.450200, 0.887185,
		0.092745, -0.892137, -0.442143,
		0.990543, 0.037578, 0.131955,
		38.823517, 37.042885, 27.933018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409416, 36.285572, 28.113741>,  <38.130138, 37.016582, 27.840649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409416, 36.285572, 28.113741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649372, 36.591213, 28.208633>,  <38.793346, 36.774597, 28.265568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649372, 36.591213, 28.208633>,  <38.409416, 36.285572, 28.113741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649372, 36.591213, 28.208633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016788, -0.284419, 0.958553,
		0.799908, -0.579007, -0.157792,
		0.599888, 0.764105, 0.237229,
		38.829338, 36.820446, 28.279802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883915, 35.985977, 28.518309>,  <38.409416, 36.285572, 28.113741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883915, 35.985977, 28.518309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934521, 36.369328, 28.620682>,  <38.964882, 36.599339, 28.682106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934521, 36.369328, 28.620682>,  <38.883915, 35.985977, 28.518309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934521, 36.369328, 28.620682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103189, -0.269322, 0.957506,
		0.986583, -0.094727, -0.132967,
		0.126512, 0.958380, 0.255934,
		38.972473, 36.656841, 28.697462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523499, 36.150009, 28.869371>,  <38.883915, 35.985977, 28.518309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523499, 36.150009, 28.869371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235809, 36.396095, 28.998507>,  <39.063194, 36.543747, 29.075987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235809, 36.396095, 28.998507>,  <39.523499, 36.150009, 28.869371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235809, 36.396095, 28.998507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318150, -0.121452, 0.940229,
		0.617656, 0.778945, -0.108381,
		-0.719223, 0.615219, 0.322837,
		39.020042, 36.580662, 29.095358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268478, 36.254204, 28.770584>,  <39.523499, 36.150009, 28.869371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268478, 36.254204, 28.770584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516212, 35.951527, 28.854334>,  <40.664852, 35.769920, 28.904585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516212, 35.951527, 28.854334>,  <40.268478, 36.254204, 28.770584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516212, 35.951527, 28.854334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106210, -0.183479, -0.977269,
		0.777910, 0.627494, -0.033266,
		0.619334, -0.756694, 0.209377,
		40.702011, 35.724518, 28.917147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829769, 36.413002, 28.393206>,  <40.268478, 36.254204, 28.770584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829769, 36.413002, 28.393206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813190, 36.022678, 28.479076>,  <40.803242, 35.788486, 28.530598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813190, 36.022678, 28.479076>,  <40.829769, 36.413002, 28.393206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813190, 36.022678, 28.479076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258982, -0.218009, -0.940957,
		0.964992, 0.016596, 0.261752,
		-0.041448, -0.975806, 0.214675,
		40.800755, 35.729939, 28.543478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520126, 36.270592, 28.273005>,  <40.829769, 36.413002, 28.393206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520126, 36.270592, 28.273005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320866, 35.924580, 28.249138>,  <41.201309, 35.716972, 28.234818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320866, 35.924580, 28.249138>,  <41.520126, 36.270592, 28.273005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320866, 35.924580, 28.249138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443697, -0.195187, -0.874663,
		0.744966, -0.462191, 0.481046,
		-0.498155, -0.865033, -0.059665,
		41.171421, 35.665070, 28.231237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044849, 35.755703, 28.134144>,  <41.520126, 36.270592, 28.273005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044849, 35.755703, 28.134144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693298, 35.602409, 28.020514>,  <41.482368, 35.510433, 27.952335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693298, 35.602409, 28.020514>,  <42.044849, 35.755703, 28.134144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693298, 35.602409, 28.020514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396396, -0.255388, -0.881843,
		0.265400, -0.887643, 0.376367,
		-0.878882, -0.383232, -0.284078,
		41.429634, 35.487438, 27.935289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258339, 35.190319, 27.792189>,  <42.044849, 35.755703, 28.134144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258339, 35.190319, 27.792189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889385, 35.240643, 27.646107>,  <41.668011, 35.270836, 27.558458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889385, 35.240643, 27.646107>,  <42.258339, 35.190319, 27.792189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889385, 35.240643, 27.646107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276353, -0.445625, -0.851497,
		-0.269870, -0.886335, 0.376271,
		-0.922387, 0.125810, -0.365202,
		41.612667, 35.278385, 27.536547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113888, 34.579670, 27.420744>,  <42.258339, 35.190319, 27.792189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113888, 34.579670, 27.420744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861206, 34.858910, 27.285921>,  <41.709599, 35.026455, 27.205027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861206, 34.858910, 27.285921>,  <42.113888, 34.579670, 27.420744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861206, 34.858910, 27.285921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110262, -0.349462, -0.930440,
		-0.767331, -0.624924, 0.143781,
		-0.631700, 0.698102, -0.337058,
		41.671696, 35.068340, 27.184803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628078, 34.272591, 26.979809>,  <42.113888, 34.579670, 27.420744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628078, 34.272591, 26.979809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621822, 34.659027, 26.876717>,  <41.618069, 34.890888, 26.814861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621822, 34.659027, 26.876717>,  <41.628078, 34.272591, 26.979809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621822, 34.659027, 26.876717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153757, -0.252373, -0.955336,
		-0.987985, -0.054573, -0.144595,
		-0.015643, 0.966090, -0.257731,
		41.617130, 34.948853, 26.799397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278824, 34.211720, 26.342300>,  <41.628078, 34.272591, 26.979809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278824, 34.211720, 26.342300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455296, 34.570492, 26.354065>,  <41.561180, 34.785755, 26.361124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455296, 34.570492, 26.354065>,  <41.278824, 34.211720, 26.342300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455296, 34.570492, 26.354065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213675, -0.073158, -0.974162,
		-0.871608, 0.436068, -0.223928,
		0.441183, 0.896935, 0.029412,
		41.587650, 34.839573, 26.362888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852909, 34.805389, 25.893763>,  <41.278824, 34.211720, 26.342300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852909, 34.805389, 25.893763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226547, 34.947685, 25.905870>,  <41.450729, 35.033062, 25.913136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226547, 34.947685, 25.905870>,  <40.852909, 34.805389, 25.893763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226547, 34.947685, 25.905870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061202, -0.076018, -0.995226,
		-0.351739, 0.931489, -0.092780,
		0.934095, 0.355739, 0.030271,
		41.506775, 35.054405, 25.914951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777420, 35.304932, 25.466110>,  <40.852909, 34.805389, 25.893763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777420, 35.304932, 25.466110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167183, 35.219933, 25.495424>,  <41.401043, 35.168934, 25.513014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167183, 35.219933, 25.495424>,  <40.777420, 35.304932, 25.466110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.167183, 35.219933, 25.495424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080993, 0.027784, -0.996327,
		0.209677, 0.976767, 0.044284,
		0.974410, -0.212494, 0.073286,
		41.459507, 35.156185, 25.517410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124443, 35.686237, 25.005791>,  <40.777420, 35.304932, 25.466110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124443, 35.686237, 25.005791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398117, 35.404324, 25.080801>,  <41.562321, 35.235176, 25.125807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398117, 35.404324, 25.080801>,  <41.124443, 35.686237, 25.005791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398117, 35.404324, 25.080801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171707, -0.094232, -0.980631,
		0.708805, 0.703135, 0.056544,
		0.684187, -0.704785, 0.187525,
		41.603374, 35.192886, 25.137058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724068, 35.899532, 24.658007>,  <41.124443, 35.686237, 25.005791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724068, 35.899532, 24.658007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782349, 35.508873, 24.721172>,  <41.817318, 35.274479, 24.759071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782349, 35.508873, 24.721172>,  <41.724068, 35.899532, 24.658007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782349, 35.508873, 24.721172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285394, -0.111340, -0.951921,
		0.947270, 0.183765, 0.262506,
		0.145703, -0.976644, 0.157914,
		41.826061, 35.215881, 24.768547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387203, 35.675018, 24.359404>,  <41.724068, 35.899532, 24.658007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387203, 35.675018, 24.359404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189014, 35.329094, 24.391949>,  <42.070103, 35.121540, 24.411476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189014, 35.329094, 24.391949>,  <42.387203, 35.675018, 24.359404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189014, 35.329094, 24.391949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260769, -0.237436, -0.935748,
		0.828558, -0.442418, 0.343158,
		-0.495470, -0.864806, 0.081361,
		42.040375, 35.069653, 24.416357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928436, 35.121361, 24.093807>,  <42.387203, 35.675018, 24.359404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928436, 35.121361, 24.093807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563122, 34.958595, 24.086676>,  <42.343933, 34.860935, 24.082397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563122, 34.958595, 24.086676>,  <42.928436, 35.121361, 24.093807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563122, 34.958595, 24.086676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210367, -0.433768, -0.876122,
		0.348777, -0.803905, 0.481759,
		-0.913291, -0.406918, -0.017826,
		42.289135, 34.836521, 24.081327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.508568, 31.109608, 24.968643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.657669, 31.463095, 25.081848>,  <36.747131, 31.675186, 25.149771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.657669, 31.463095, 25.081848>,  <36.508568, 31.109608, 24.968643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657669, 31.463095, 25.081848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051888, -0.284665, 0.957222,
		0.926477, -0.371495, -0.060256,
		0.372756, 0.883718, 0.283012,
		36.769497, 31.728210, 25.166752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072742, 30.942080, 25.431791>,  <36.508568, 31.109608, 24.968643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072742, 30.942080, 25.431791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.935444, 31.310984, 25.502922>,  <36.853065, 31.532326, 25.545601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.935444, 31.310984, 25.502922>,  <37.072742, 30.942080, 25.431791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935444, 31.310984, 25.502922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053893, -0.169678, 0.984025,
		0.937699, 0.347344, 0.008537,
		-0.343244, 0.922259, 0.177826,
		36.832470, 31.587662, 25.556271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470814, 31.148758, 25.944401>,  <37.072742, 30.942080, 25.431791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470814, 31.148758, 25.944401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.171127, 31.412920, 25.964567>,  <36.991314, 31.571417, 25.976667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.171127, 31.412920, 25.964567>,  <37.470814, 31.148758, 25.944401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171127, 31.412920, 25.964567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019236, -0.097783, 0.995022,
		0.662048, 0.744515, 0.085964,
		-0.749215, 0.660406, 0.050416,
		36.946362, 31.611042, 25.979692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798138, 31.761223, 26.235165>,  <37.470814, 31.148758, 25.944401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798138, 31.761223, 26.235165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.407055, 31.709591, 26.301405>,  <37.172405, 31.678612, 26.341148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.407055, 31.709591, 26.301405>,  <37.798138, 31.761223, 26.235165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407055, 31.709591, 26.301405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205057, -0.417487, 0.885243,
		-0.045132, 0.899468, 0.434650,
		-0.977709, -0.129081, 0.165601,
		37.113743, 31.670866, 26.351086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661732, 32.132931, 26.840181>,  <37.798138, 31.761223, 26.235165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661732, 32.132931, 26.840181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.340954, 31.894440, 26.825258>,  <37.148487, 31.751345, 26.816303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.340954, 31.894440, 26.825258>,  <37.661732, 32.132931, 26.840181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340954, 31.894440, 26.825258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156110, -0.269436, 0.950281,
		-0.576639, 0.756250, 0.309151,
		-0.801946, -0.596231, -0.037309,
		37.100368, 31.715570, 26.814066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183041, 32.412312, 27.389782>,  <37.661732, 32.132931, 26.840181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183041, 32.412312, 27.389782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091488, 32.032688, 27.303152>,  <37.036556, 31.804914, 27.251173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091488, 32.032688, 27.303152>,  <37.183041, 32.412312, 27.389782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091488, 32.032688, 27.303152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180668, -0.177203, 0.967449,
		-0.956543, 0.260556, -0.130906,
		-0.228877, -0.949057, -0.216577,
		37.022823, 31.747971, 27.238178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594456, 32.287594, 27.731312>,  <37.183041, 32.412312, 27.389782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594456, 32.287594, 27.731312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.703678, 31.908291, 27.666515>,  <36.769211, 31.680708, 27.627638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.703678, 31.908291, 27.666515>,  <36.594456, 32.287594, 27.731312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703678, 31.908291, 27.666515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238079, -0.229765, 0.943677,
		-0.932073, -0.219108, -0.288499,
		0.273054, -0.948261, -0.161993,
		36.785595, 31.623812, 27.617918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229313, 32.001617, 28.186018>,  <36.594456, 32.287594, 27.731312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229313, 32.001617, 28.186018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.502880, 31.722429, 28.101086>,  <36.667023, 31.554914, 28.050125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.502880, 31.722429, 28.101086>,  <36.229313, 32.001617, 28.186018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502880, 31.722429, 28.101086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090668, -0.370103, 0.924555,
		-0.723901, -0.613070, -0.316405,
		0.683920, -0.697975, -0.212332,
		36.708057, 31.513037, 28.037386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001404, 31.434263, 28.486084>,  <36.229313, 32.001617, 28.186018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001404, 31.434263, 28.486084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.391891, 31.368221, 28.429899>,  <36.626186, 31.328596, 28.396189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.391891, 31.368221, 28.429899>,  <36.001404, 31.434263, 28.486084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391891, 31.368221, 28.429899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103643, -0.213606, 0.971407,
		-0.190382, -0.962868, -0.191416,
		0.976224, -0.165099, -0.140461,
		36.684757, 31.318689, 28.387760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047409, 30.897934, 29.053770>,  <36.001404, 31.434263, 28.486084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047409, 30.897934, 29.053770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.424702, 30.985161, 28.953560>,  <36.651077, 31.037497, 28.893435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.424702, 30.985161, 28.953560>,  <36.047409, 30.897934, 29.053770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424702, 30.985161, 28.953560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253320, 0.015513, 0.967258,
		0.214813, -0.975811, -0.040608,
		0.943231, 0.218066, -0.250525,
		36.707672, 31.050581, 28.878403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479256, 30.382647, 29.369884>,  <36.047409, 30.897934, 29.053770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479256, 30.382647, 29.369884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.699024, 30.707533, 29.291460>,  <36.830887, 30.902464, 29.244406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.699024, 30.707533, 29.291460>,  <36.479256, 30.382647, 29.369884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699024, 30.707533, 29.291460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229092, 0.079224, 0.970176,
		0.803523, -0.577955, -0.142544,
		0.549425, 0.812214, -0.196063,
		36.863853, 30.951197, 29.232641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956112, 30.364107, 29.802338>,  <36.479256, 30.382647, 29.369884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956112, 30.364107, 29.802338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.033844, 30.747316, 29.718029>,  <37.080482, 30.977242, 29.667444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.033844, 30.747316, 29.718029>,  <36.956112, 30.364107, 29.802338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033844, 30.747316, 29.718029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056439, 0.203594, 0.977427,
		0.979312, -0.201838, -0.014506,
		0.194328, 0.958025, -0.210774,
		37.092144, 31.034723, 29.654797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559216, 30.588915, 30.142992>,  <36.956112, 30.364107, 29.802338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559216, 30.588915, 30.142992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.319923, 30.903202, 30.080040>,  <37.176346, 31.091774, 30.042269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.319923, 30.903202, 30.080040>,  <37.559216, 30.588915, 30.142992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319923, 30.903202, 30.080040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041450, 0.226477, 0.973134,
		0.800249, 0.575637, -0.168054,
		-0.598233, 0.785716, -0.157378,
		37.140453, 31.138916, 30.032827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833649, 31.025993, 30.607605>,  <37.559216, 30.588915, 30.142992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833649, 31.025993, 30.607605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503460, 31.236877, 30.526960>,  <37.305347, 31.363407, 30.478573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503460, 31.236877, 30.526960>,  <37.833649, 31.025993, 30.607605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503460, 31.236877, 30.526960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043230, 0.297085, 0.953872,
		0.562785, 0.796110, -0.222444,
		-0.825472, 0.527209, -0.201611,
		37.255817, 31.395041, 30.466476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384609, 31.499672, 30.214890>,  <37.833649, 31.025993, 30.607605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384609, 31.499672, 30.214890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.769928, 31.606216, 30.201540>,  <39.001118, 31.670143, 30.193531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.769928, 31.606216, 30.201540>,  <38.384609, 31.499672, 30.214890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769928, 31.606216, 30.201540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024878, -0.035208, -0.999070,
		-0.267288, 0.963230, -0.027289,
		0.963296, 0.266360, -0.033374,
		39.058918, 31.686125, 30.191528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509983, 31.990833, 29.654362>,  <38.384609, 31.499672, 30.214890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509983, 31.990833, 29.654362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864761, 31.822523, 29.730549>,  <39.077629, 31.721537, 29.776260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864761, 31.822523, 29.730549>,  <38.509983, 31.990833, 29.654362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864761, 31.822523, 29.730549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191395, -0.040471, -0.980678,
		0.420354, 0.906262, 0.044639,
		0.886945, -0.420776, 0.190466,
		39.130844, 31.696291, 29.787689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028522, 32.410992, 29.336956>,  <38.509983, 31.990833, 29.654362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028522, 32.410992, 29.336956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.200558, 32.053291, 29.386494>,  <39.303780, 31.838671, 29.416216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.200558, 32.053291, 29.386494>,  <39.028522, 32.410992, 29.336956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200558, 32.053291, 29.386494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399514, 0.065510, -0.914384,
		0.809578, 0.442739, 0.385441,
		0.430084, -0.894254, 0.123845,
		39.329582, 31.785015, 29.423647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653248, 32.546284, 29.063587>,  <39.028522, 32.410992, 29.336956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653248, 32.546284, 29.063587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.587223, 32.151821, 29.069832>,  <39.547607, 31.915142, 29.073578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.587223, 32.151821, 29.069832>,  <39.653248, 32.546284, 29.063587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587223, 32.151821, 29.069832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641120, -0.119313, -0.758110,
		0.749480, -0.115128, 0.651940,
		-0.165065, -0.986159, 0.015612,
		39.537704, 31.855974, 29.074516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284332, 32.348042, 29.142296>,  <39.653248, 32.546284, 29.063587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284332, 32.348042, 29.142296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.087509, 32.034122, 28.991577>,  <39.969418, 31.845772, 28.901146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.087509, 32.034122, 28.991577>,  <40.284332, 32.348042, 29.142296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087509, 32.034122, 28.991577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634307, -0.026751, -0.772619,
		0.596269, -0.619176, 0.510964,
		-0.492056, -0.784796, -0.376797,
		39.939892, 31.798683, 28.878538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790840, 31.784521, 28.856516>,  <40.284332, 32.348042, 29.142296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790840, 31.784521, 28.856516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.435848, 31.742619, 28.677006>,  <40.222851, 31.717478, 28.569300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.435848, 31.742619, 28.677006>,  <40.790840, 31.784521, 28.856516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435848, 31.742619, 28.677006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459714, -0.133205, -0.878020,
		0.032201, -0.985536, 0.166376,
		-0.887483, -0.104758, -0.448776,
		40.169601, 31.711191, 28.542374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870327, 31.170225, 28.450333>,  <40.790840, 31.784521, 28.856516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870327, 31.170225, 28.450333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.572750, 31.381392, 28.286448>,  <40.394203, 31.508091, 28.188116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.572750, 31.381392, 28.286448>,  <40.870327, 31.170225, 28.450333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572750, 31.381392, 28.286448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252692, -0.345351, -0.903814,
		-0.618630, -0.775912, 0.123520,
		-0.743938, 0.527914, -0.409711,
		40.349567, 31.539766, 28.163534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626534, 30.682898, 27.947128>,  <40.870327, 31.170225, 28.450333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626534, 30.682898, 27.947128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.517120, 31.049959, 27.831827>,  <40.451473, 31.270195, 27.762646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.517120, 31.049959, 27.831827>,  <40.626534, 30.682898, 27.947128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517120, 31.049959, 27.831827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315929, -0.197342, -0.928033,
		-0.908497, -0.344919, -0.235934,
		-0.273536, 0.917653, -0.288254,
		40.435059, 31.325254, 27.745352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326683, 30.574709, 27.370630>,  <40.626534, 30.682898, 27.947128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326683, 30.574709, 27.370630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.428547, 30.958719, 27.324163>,  <40.489666, 31.189125, 27.296284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.428547, 30.958719, 27.324163>,  <40.326683, 30.574709, 27.370630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428547, 30.958719, 27.324163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102401, -0.146224, -0.983937,
		-0.961594, 0.238674, -0.135545,
		0.254660, 0.960028, -0.116168,
		40.504944, 31.246727, 27.289312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165855, 30.712790, 26.658104>,  <40.326683, 30.574709, 27.370630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165855, 30.712790, 26.658104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.409595, 31.020317, 26.735680>,  <40.555840, 31.204834, 26.782225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.409595, 31.020317, 26.735680>,  <40.165855, 30.712790, 26.658104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409595, 31.020317, 26.735680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254274, 0.042203, -0.966211,
		-0.751027, 0.638071, -0.169775,
		0.609346, 0.768820, 0.193940,
		40.592400, 31.250963, 26.793861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902931, 31.332775, 26.308355>,  <40.165855, 30.712790, 26.658104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902931, 31.332775, 26.308355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.299984, 31.337564, 26.356594>,  <40.538216, 31.340439, 26.385538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.299984, 31.337564, 26.356594>,  <39.902931, 31.332775, 26.308355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299984, 31.337564, 26.356594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120636, -0.002620, -0.992693,
		-0.011569, 0.999925, -0.004045,
		0.992629, 0.011973, 0.120597,
		40.597775, 31.341156, 26.392773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319248, 32.038956, 26.175898>,  <39.902931, 31.332775, 26.308355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319248, 32.038956, 26.175898> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.428944, 31.670567, 26.065195>,  <40.494762, 31.449532, 25.998774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.428944, 31.670567, 26.065195>,  <40.319248, 32.038956, 26.175898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428944, 31.670567, 26.065195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164049, 0.238771, -0.957119,
		0.947566, 0.307882, -0.085604,
		0.274240, -0.920976, -0.276759,
		40.511215, 31.394274, 25.982168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889919, 32.036350, 25.613245>,  <40.319248, 32.038956, 26.175898>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889919, 32.036350, 25.613245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.701687, 31.686216, 25.568794>,  <40.588749, 31.476137, 25.542124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.701687, 31.686216, 25.568794>,  <40.889919, 32.036350, 25.613245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701687, 31.686216, 25.568794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203644, 0.230287, -0.951576,
		0.858536, -0.425162, -0.286624,
		-0.470580, -0.875332, -0.111128,
		40.560513, 31.423616, 25.535456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220676, 31.705101, 24.964596>,  <40.889919, 32.036350, 25.613245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220676, 31.705101, 24.964596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.878513, 31.513865, 25.044294>,  <40.673214, 31.399122, 25.092113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.878513, 31.513865, 25.044294>,  <41.220676, 31.705101, 24.964596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878513, 31.513865, 25.044294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323602, 0.192951, -0.926311,
		0.404419, -0.856852, -0.319765,
		-0.855411, -0.478094, 0.199246,
		40.621891, 31.370436, 25.104069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772625, 31.134962, 24.879494>,  <41.220676, 31.705101, 24.964596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772625, 31.134962, 24.879494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.104729, 31.271276, 24.703070>,  <42.303989, 31.353065, 24.597216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.104729, 31.271276, 24.703070>,  <41.772625, 31.134962, 24.879494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104729, 31.271276, 24.703070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279640, 0.429831, 0.858514,
		0.482154, -0.836127, 0.261573,
		0.830259, 0.340790, -0.441059,
		42.353806, 31.373512, 24.570753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351261, 30.757462, 25.228197>,  <41.772625, 31.134962, 24.879494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351261, 30.757462, 25.228197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.534157, 31.085920, 25.091581>,  <42.643894, 31.282995, 25.009613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.534157, 31.085920, 25.091581>,  <42.351261, 30.757462, 25.228197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534157, 31.085920, 25.091581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344873, 0.190269, 0.919163,
		0.819751, -0.538067, -0.196192,
		0.457242, 0.821146, -0.341538,
		42.671329, 31.332264, 24.989120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035652, 30.665186, 25.397810>,  <42.351261, 30.757462, 25.228197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035652, 30.665186, 25.397810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.915054, 31.046076, 25.378338>,  <42.842697, 31.274611, 25.366655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.915054, 31.046076, 25.378338>,  <43.035652, 30.665186, 25.397810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915054, 31.046076, 25.378338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056125, 0.068691, 0.996058,
		0.951815, 0.297571, -0.074153,
		-0.301492, 0.952225, -0.048681,
		42.824608, 31.331743, 25.363733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384861, 30.952114, 25.909533>,  <43.035652, 30.665186, 25.397810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384861, 30.952114, 25.909533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.149673, 31.267721, 25.838268>,  <43.008560, 31.457087, 25.795509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.149673, 31.267721, 25.838268>,  <43.384861, 30.952114, 25.909533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149673, 31.267721, 25.838268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012186, 0.228872, 0.973380,
		0.808792, 0.570145, -0.144184,
		-0.587968, 0.789020, -0.178162,
		42.973282, 31.504427, 25.784821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702072, 31.595228, 26.233700>,  <43.384861, 30.952114, 25.909533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702072, 31.595228, 26.233700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.308609, 31.662457, 26.207878>,  <43.072533, 31.702793, 26.192385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.308609, 31.662457, 26.207878>,  <43.702072, 31.595228, 26.233700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308609, 31.662457, 26.207878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014769, 0.282031, 0.959292,
		0.179435, 0.944569, -0.274940,
		-0.983659, 0.168070, -0.064556,
		43.013512, 31.712877, 26.188511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605816, 32.165833, 26.689102>,  <43.702072, 31.595228, 26.233700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605816, 32.165833, 26.689102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.227493, 32.049969, 26.630384>,  <43.000500, 31.980452, 26.595154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.227493, 32.049969, 26.630384>,  <43.605816, 32.165833, 26.689102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227493, 32.049969, 26.630384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252019, 0.369671, 0.894332,
		-0.204783, 0.882860, -0.422637,
		-0.945807, -0.289656, -0.146795,
		42.943752, 31.963072, 26.586346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184044, 32.764355, 26.814600>,  <43.605816, 32.165833, 26.689102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184044, 32.764355, 26.814600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.951916, 32.448269, 26.893379>,  <42.812641, 32.258617, 26.940647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.951916, 32.448269, 26.893379>,  <43.184044, 32.764355, 26.814600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951916, 32.448269, 26.893379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168491, 0.353101, 0.920289,
		-0.796771, 0.500875, -0.338054,
		-0.580316, -0.790218, 0.196947,
		42.777821, 32.211205, 26.952463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609474, 33.055073, 27.181221>,  <43.184044, 32.764355, 26.814600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609474, 33.055073, 27.181221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.599915, 32.666004, 27.273602>,  <42.594177, 32.432564, 27.329029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.599915, 32.666004, 27.273602>,  <42.609474, 33.055073, 27.181221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599915, 32.666004, 27.273602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120300, 0.232137, 0.965215,
		-0.992450, -0.004717, -0.122560,
		-0.023898, -0.972671, 0.230952,
		42.592747, 32.374203, 27.342888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990997, 32.958569, 27.432198>,  <42.609474, 33.055073, 27.181221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990997, 32.958569, 27.432198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.257198, 32.695366, 27.573126>,  <42.416920, 32.537445, 27.657682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.257198, 32.695366, 27.573126>,  <41.990997, 32.958569, 27.432198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257198, 32.695366, 27.573126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325090, 0.169373, 0.930392,
		-0.671881, -0.733713, -0.101195,
		0.665502, -0.658010, 0.352321,
		42.456848, 32.497963, 27.678822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618137, 32.606316, 27.971006>,  <41.990997, 32.958569, 27.432198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618137, 32.606316, 27.971006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.003231, 32.528694, 28.046354>,  <42.234287, 32.482121, 28.091564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.003231, 32.528694, 28.046354>,  <41.618137, 32.606316, 27.971006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003231, 32.528694, 28.046354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172735, 0.094724, 0.980403,
		-0.208097, -0.976406, 0.057674,
		0.962735, -0.194056, 0.188371,
		42.292053, 32.470478, 28.102865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482292, 32.240845, 28.491241>,  <41.618137, 32.606316, 27.971006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482292, 32.240845, 28.491241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.864971, 32.356163, 28.507324>,  <42.094578, 32.425354, 28.516973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.864971, 32.356163, 28.507324>,  <41.482292, 32.240845, 28.491241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864971, 32.356163, 28.507324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056929, 0.049844, 0.997133,
		0.285468, -0.956242, 0.064098,
		0.956696, 0.288298, 0.040209,
		42.151981, 32.442654, 28.519386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873127, 31.864679, 29.040737>,  <41.482292, 32.240845, 28.491241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873127, 31.864679, 29.040737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.068253, 32.211246, 28.998104>,  <42.185329, 32.419186, 28.972525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.068253, 32.211246, 28.998104>,  <41.873127, 31.864679, 29.040737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068253, 32.211246, 28.998104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157077, 0.207222, 0.965601,
		0.858699, -0.454292, 0.237181,
		0.487814, 0.866416, -0.106583,
		42.214596, 32.471172, 28.966129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260212, 31.803242, 29.592636>,  <41.873127, 31.864679, 29.040737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260212, 31.803242, 29.592636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.271080, 32.184582, 29.472380>,  <42.277599, 32.413387, 29.400227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.271080, 32.184582, 29.472380>,  <42.260212, 31.803242, 29.592636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271080, 32.184582, 29.472380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031500, 0.299785, 0.953487,
		0.999135, -0.035373, -0.021886,
		0.027167, 0.953351, -0.300639,
		42.279228, 32.470589, 29.382187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705154, 32.025166, 30.065166>,  <42.260212, 31.803242, 29.592636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705154, 32.025166, 30.065166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.545380, 32.358536, 29.912405>,  <42.449516, 32.558559, 29.820749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.545380, 32.358536, 29.912405>,  <42.705154, 32.025166, 30.065166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545380, 32.358536, 29.912405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181442, 0.480204, 0.858185,
		0.898627, 0.273495, -0.343029,
		-0.399434, 0.833429, -0.381901,
		42.425549, 32.608566, 29.797834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.938961, 34.127102, 24.080816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.591274, 34.274746, 23.949228>,  <42.382664, 34.363331, 23.870275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.591274, 34.274746, 23.949228>,  <42.938961, 34.127102, 24.080816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.591274, 34.274746, 23.949228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175680, -0.391363, -0.903311,
		-0.462170, -0.842965, 0.275333,
		-0.869215, 0.369113, -0.328968,
		42.330509, 34.385479, 23.850538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587589, 33.572712, 23.798637>,  <42.938961, 34.127102, 24.080816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587589, 33.572712, 23.798637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.419922, 33.895741, 23.632685>,  <42.319321, 34.089558, 23.533113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.419922, 33.895741, 23.632685>,  <42.587589, 33.572712, 23.798637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419922, 33.895741, 23.632685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078588, -0.487522, -0.869567,
		-0.904502, -0.331888, 0.267818,
		-0.419166, 0.807572, -0.414882,
		42.294170, 34.138012, 23.508221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078121, 33.292427, 23.502476>,  <42.587589, 33.572712, 23.798637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078121, 33.292427, 23.502476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.074524, 33.656734, 23.337351>,  <42.072365, 33.875320, 23.238276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.074524, 33.656734, 23.337351>,  <42.078121, 33.292427, 23.502476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074524, 33.656734, 23.337351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190283, -0.406844, -0.893460,
		-0.981688, 0.070517, 0.176963,
		-0.008992, 0.910772, -0.412812,
		42.071827, 33.929966, 23.213507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477592, 33.275703, 23.098261>,  <42.078121, 33.292427, 23.502476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477592, 33.275703, 23.098261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.731022, 33.548534, 22.952194>,  <41.883080, 33.712234, 22.864555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.731022, 33.548534, 22.952194>,  <41.477592, 33.275703, 23.098261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731022, 33.548534, 22.952194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124060, -0.376310, -0.918150,
		-0.763668, 0.627021, -0.153803,
		0.633577, 0.682081, -0.365165,
		41.921097, 33.753159, 22.842646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044518, 33.474281, 22.494184>,  <41.477592, 33.275703, 23.098261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044518, 33.474281, 22.494184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.429703, 33.570034, 22.444555>,  <41.660816, 33.627483, 22.414778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.429703, 33.570034, 22.444555>,  <41.044518, 33.474281, 22.494184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429703, 33.570034, 22.444555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043836, -0.315042, -0.948065,
		-0.266034, 0.918393, -0.292882,
		0.962966, 0.239379, -0.124071,
		41.718594, 33.641850, 22.407333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080055, 33.753811, 21.954596>,  <41.044518, 33.474281, 22.494184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080055, 33.753811, 21.954596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.474926, 33.690140, 21.959248>,  <41.711849, 33.651936, 21.962040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.474926, 33.690140, 21.959248>,  <41.080055, 33.753811, 21.954596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474926, 33.690140, 21.959248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045482, -0.350427, -0.935485,
		0.152985, 0.922964, -0.353175,
		0.987181, -0.159178, 0.011631,
		41.771080, 33.642387, 21.962736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397865, 34.104156, 21.386887>,  <41.080055, 33.753811, 21.954596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397865, 34.104156, 21.386887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.622948, 33.783096, 21.466005>,  <41.757996, 33.590462, 21.513475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.622948, 33.783096, 21.466005>,  <41.397865, 34.104156, 21.386887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622948, 33.783096, 21.466005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010302, -0.232444, -0.972555,
		0.826594, 0.549299, -0.122528,
		0.562705, -0.802646, 0.197795,
		41.791759, 33.542301, 21.525345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963810, 34.239609, 20.928446>,  <41.397865, 34.104156, 21.386887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963810, 34.239609, 20.928446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.973289, 33.854328, 21.035538>,  <41.978977, 33.623161, 21.099792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.973289, 33.854328, 21.035538>,  <41.963810, 34.239609, 20.928446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973289, 33.854328, 21.035538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080229, -0.265110, -0.960875,
		0.996495, 0.044249, 0.070994,
		0.023696, -0.963202, 0.267730,
		41.980400, 33.565369, 21.115856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322639, 33.919338, 20.401554>,  <41.963810, 34.239609, 20.928446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322639, 33.919338, 20.401554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.159927, 33.598618, 20.576662>,  <42.062298, 33.406185, 20.681726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.159927, 33.598618, 20.576662>,  <42.322639, 33.919338, 20.401554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159927, 33.598618, 20.576662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089440, -0.511865, -0.854397,
		0.909136, -0.308400, 0.279931,
		-0.406783, -0.801800, 0.437772,
		42.037891, 33.358078, 20.707994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686653, 33.360435, 20.219812>,  <42.322639, 33.919338, 20.401554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686653, 33.360435, 20.219812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.328144, 33.203262, 20.302082>,  <42.113037, 33.108959, 20.351444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.328144, 33.203262, 20.302082>,  <42.686653, 33.360435, 20.219812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328144, 33.203262, 20.302082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053937, -0.556876, -0.828842,
		0.440211, -0.731775, 0.520307,
		-0.896273, -0.392930, 0.205674,
		42.059261, 33.085384, 20.363785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789825, 32.598888, 20.235043>,  <42.686653, 33.360435, 20.219812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789825, 32.598888, 20.235043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.412518, 32.687622, 20.136229>,  <42.186131, 32.740864, 20.076941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.412518, 32.687622, 20.136229>,  <42.789825, 32.598888, 20.235043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412518, 32.687622, 20.136229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123433, -0.456407, -0.881168,
		-0.308226, -0.861673, 0.403134,
		-0.943272, 0.221838, -0.247036,
		42.129536, 32.754173, 20.062119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486725, 32.091919, 19.830734>,  <42.789825, 32.598888, 20.235043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486725, 32.091919, 19.830734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.219730, 32.377846, 19.747316>,  <42.059532, 32.549404, 19.697266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.219730, 32.377846, 19.747316>,  <42.486725, 32.091919, 19.830734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219730, 32.377846, 19.747316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093765, -0.358525, -0.928799,
		-0.738694, -0.600408, 0.306337,
		-0.667488, 0.714822, -0.208542,
		42.019485, 32.592293, 19.684753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239296, 31.864887, 19.229181>,  <42.486725, 32.091919, 19.830734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239296, 31.864887, 19.229181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.092407, 32.234463, 19.272058>,  <42.004272, 32.456207, 19.297785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.092407, 32.234463, 19.272058>,  <42.239296, 31.864887, 19.229181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092407, 32.234463, 19.272058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277254, 0.001276, -0.960796,
		-0.887851, -0.382544, 0.255696,
		-0.367220, 0.923937, 0.107194,
		41.982243, 32.511642, 19.304216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514961, 31.919191, 18.884460>,  <42.239296, 31.864887, 19.229181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514961, 31.919191, 18.884460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.710243, 32.267982, 18.898949>,  <41.827412, 32.477257, 18.907640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.710243, 32.267982, 18.898949>,  <41.514961, 31.919191, 18.884460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710243, 32.267982, 18.898949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148509, 0.123900, -0.981119,
		-0.860000, 0.473608, 0.189985,
		0.488205, 0.871977, 0.036219,
		41.856705, 32.529575, 18.909815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276459, 31.285250, 19.213690>,  <41.514961, 31.919191, 18.884460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276459, 31.285250, 19.213690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.345032, 30.891479, 19.229282>,  <41.386177, 30.655218, 19.238638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.345032, 30.891479, 19.229282>,  <41.276459, 31.285250, 19.213690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345032, 30.891479, 19.229282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380157, -0.029598, 0.924448,
		-0.908895, -0.173299, -0.379310,
		0.171433, -0.984424, 0.038979,
		41.396461, 30.596151, 19.240976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817829, 30.942713, 19.715918>,  <41.276459, 31.285250, 19.213690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817829, 30.942713, 19.715918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.070129, 30.642937, 19.635426>,  <41.221512, 30.463072, 19.587130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.070129, 30.642937, 19.635426>,  <40.817829, 30.942713, 19.715918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070129, 30.642937, 19.635426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076437, -0.318069, 0.944981,
		-0.772210, -0.580668, -0.257907,
		0.630753, -0.749438, -0.201232,
		41.259354, 30.418106, 19.575056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701550, 30.524090, 20.255951>,  <40.817829, 30.942713, 19.715918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701550, 30.524090, 20.255951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.055065, 30.388170, 20.127300>,  <41.267174, 30.306618, 20.050110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.055065, 30.388170, 20.127300>,  <40.701550, 30.524090, 20.255951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055065, 30.388170, 20.127300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220433, -0.303943, 0.926838,
		-0.412698, -0.890030, -0.193719,
		0.883793, -0.339802, -0.321628,
		41.320202, 30.286230, 20.030811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765614, 29.897371, 20.552572>,  <40.701550, 30.524090, 20.255951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765614, 29.897371, 20.552572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.131119, 30.039877, 20.474476>,  <41.350422, 30.125380, 20.427618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.131119, 30.039877, 20.474476>,  <40.765614, 29.897371, 20.552572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131119, 30.039877, 20.474476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274166, -0.186141, 0.943496,
		0.299790, -0.915658, -0.267763,
		0.913761, 0.356262, -0.195239,
		41.405247, 30.146755, 20.415903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983986, 30.071035, 21.179386>,  <40.765614, 29.897371, 20.552572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983986, 30.071035, 21.179386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.322895, 30.159670, 20.986292>,  <41.526241, 30.212851, 20.870436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.322895, 30.159670, 20.986292>,  <40.983986, 30.071035, 21.179386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322895, 30.159670, 20.986292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453681, 0.170748, 0.874653,
		0.276236, -0.960075, 0.044141,
		0.847270, 0.221585, -0.482735,
		41.577076, 30.226145, 20.841471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595051, 29.510361, 21.328163>,  <40.983986, 30.071035, 21.179386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595051, 29.510361, 21.328163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.673645, 29.894064, 21.246956>,  <41.720802, 30.124287, 21.198233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.673645, 29.894064, 21.246956>,  <41.595051, 29.510361, 21.328163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673645, 29.894064, 21.246956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434488, 0.100434, 0.895060,
		0.878985, -0.264072, -0.397053,
		0.196483, 0.959260, -0.203016,
		41.732590, 30.181841, 21.186050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282658, 29.615519, 21.570755>,  <41.595051, 29.510361, 21.328163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282658, 29.615519, 21.570755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.175213, 29.998793, 21.531303>,  <42.110744, 30.228758, 21.507633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.175213, 29.998793, 21.531303>,  <42.282658, 29.615519, 21.570755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175213, 29.998793, 21.531303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249371, 0.168074, 0.953711,
		0.930410, 0.231583, -0.284090,
		-0.268611, 0.958186, -0.098628,
		42.094631, 30.286249, 21.501715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720974, 30.037981, 21.964479>,  <42.282658, 29.615519, 21.570755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720974, 30.037981, 21.964479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.408405, 30.284035, 21.922548>,  <42.220863, 30.431667, 21.897390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.408405, 30.284035, 21.922548>,  <42.720974, 30.037981, 21.964479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408405, 30.284035, 21.922548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312966, 0.531688, 0.786994,
		0.539842, 0.582168, -0.607989,
		-0.781424, 0.615133, -0.104828,
		42.173977, 30.468575, 21.891100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022366, 30.619087, 21.878313>,  <42.720974, 30.037981, 21.964479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022366, 30.619087, 21.878313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.651604, 30.692152, 22.009445>,  <42.429146, 30.735991, 22.088125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.651604, 30.692152, 22.009445>,  <43.022366, 30.619087, 21.878313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651604, 30.692152, 22.009445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373678, 0.529983, 0.761238,
		-0.034694, 0.828101, -0.559504,
		-0.926909, 0.182664, 0.327831,
		42.373531, 30.746952, 22.107794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973991, 31.320356, 22.058495>,  <43.022366, 30.619087, 21.878313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973991, 31.320356, 22.058495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.661884, 31.166636, 22.255877>,  <42.474621, 31.074404, 22.374306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.661884, 31.166636, 22.255877>,  <42.973991, 31.320356, 22.058495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661884, 31.166636, 22.255877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276484, 0.495754, 0.823277,
		-0.561018, 0.778808, -0.280567,
		-0.780266, -0.384301, 0.493455,
		42.427803, 31.051346, 22.403913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866016, 31.788996, 22.529442>,  <42.973991, 31.320356, 22.058495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866016, 31.788996, 22.529442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.630383, 31.497372, 22.668837>,  <42.489002, 31.322397, 22.752474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.630383, 31.497372, 22.668837>,  <42.866016, 31.788996, 22.529442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630383, 31.497372, 22.668837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127149, 0.342257, 0.930964,
		-0.798002, 0.592730, -0.108920,
		-0.589089, -0.729062, 0.348487,
		42.453655, 31.278654, 22.773382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216839, 32.119831, 22.984632>,  <42.866016, 31.788996, 22.529442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216839, 32.119831, 22.984632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.285519, 31.744013, 23.103140>,  <42.326725, 31.518522, 23.174244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.285519, 31.744013, 23.103140>,  <42.216839, 32.119831, 22.984632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285519, 31.744013, 23.103140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102376, 0.316122, 0.943179,
		-0.979816, -0.131612, 0.150464,
		0.171698, -0.939545, 0.296267,
		42.337029, 31.462149, 23.192020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758816, 32.032906, 23.613455>,  <42.216839, 32.119831, 22.984632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758816, 32.032906, 23.613455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.062149, 31.774233, 23.646280>,  <42.244148, 31.619030, 23.665976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.062149, 31.774233, 23.646280>,  <41.758816, 32.032906, 23.613455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062149, 31.774233, 23.646280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150572, 0.296259, 0.943164,
		-0.634240, -0.702875, 0.322035,
		0.758332, -0.646682, 0.082066,
		42.289650, 31.580229, 23.670900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618359, 31.642359, 24.248802>,  <41.758816, 32.032906, 23.613455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618359, 31.642359, 24.248802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.008953, 31.629055, 24.163607>,  <42.243309, 31.621073, 24.112490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.008953, 31.629055, 24.163607>,  <41.618359, 31.642359, 24.248802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008953, 31.629055, 24.163607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215184, 0.091201, 0.972305,
		-0.012914, -0.995277, 0.096214,
		0.976488, -0.033261, -0.212990,
		42.301899, 31.619078, 24.099710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099159, 31.285555, 24.342905>,  <41.618359, 31.642359, 24.248802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099159, 31.285555, 24.342905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.739544, 31.273182, 24.517618>,  <40.523777, 31.265759, 24.622446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.739544, 31.273182, 24.517618>,  <41.099159, 31.285555, 24.342905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739544, 31.273182, 24.517618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437784, 0.042941, -0.898054,
		0.009021, -0.998599, -0.052146,
		-0.899034, -0.030930, 0.436783,
		40.469833, 31.263903, 24.648653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771023, 30.749729, 24.077381>,  <41.099159, 31.285555, 24.342905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771023, 30.749729, 24.077381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.486698, 30.988411, 24.226347>,  <40.316105, 31.131620, 24.315727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.486698, 30.988411, 24.226347>,  <40.771023, 30.749729, 24.077381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486698, 30.988411, 24.226347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493120, -0.045189, -0.868787,
		-0.501581, -0.801187, 0.326368,
		-0.710809, 0.596706, 0.372415,
		40.273457, 31.167423, 24.338072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086426, 30.382668, 24.048107>,  <40.771023, 30.749729, 24.077381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086426, 30.382668, 24.048107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.981892, 30.768206, 24.068913>,  <39.919170, 30.999529, 24.081396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.981892, 30.768206, 24.068913>,  <40.086426, 30.382668, 24.048107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981892, 30.768206, 24.068913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609035, -0.122846, -0.783572,
		-0.748854, -0.236450, 0.619120,
		-0.261332, 0.963847, 0.052013,
		39.903492, 31.057360, 24.084517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409843, 30.324944, 23.998682>,  <40.086426, 30.382668, 24.048107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409843, 30.324944, 23.998682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.501686, 30.704359, 23.911449>,  <39.556793, 30.932009, 23.859110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.501686, 30.704359, 23.911449>,  <39.409843, 30.324944, 23.998682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501686, 30.704359, 23.911449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296821, -0.145149, -0.943837,
		-0.926918, 0.281442, 0.248219,
		0.229606, 0.948537, -0.218079,
		39.570568, 30.988920, 23.846025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843010, 30.645046, 23.654179>,  <39.409843, 30.324944, 23.998682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843010, 30.645046, 23.654179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.138409, 30.897644, 23.559656>,  <39.315647, 31.049202, 23.502943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.138409, 30.897644, 23.559656>,  <38.843010, 30.645046, 23.654179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138409, 30.897644, 23.559656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365186, 0.079996, -0.927491,
		-0.566801, 0.771244, 0.289690,
		0.738496, 0.631493, -0.236306,
		39.359959, 31.087091, 23.488764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550465, 31.249393, 23.223095>,  <38.843010, 30.645046, 23.654179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550465, 31.249393, 23.223095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.943790, 31.230427, 23.152842>,  <39.179787, 31.219048, 23.110689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.943790, 31.230427, 23.152842>,  <38.550465, 31.249393, 23.223095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943790, 31.230427, 23.152842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178463, -0.064109, -0.981856,
		0.035296, 0.996816, -0.071501,
		0.983314, -0.047416, -0.175631,
		39.238785, 31.216202, 23.100153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683598, 31.794268, 22.778872>,  <38.550465, 31.249393, 23.223095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683598, 31.794268, 22.778872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.968658, 31.517073, 22.735256>,  <39.139694, 31.350756, 22.709087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.968658, 31.517073, 22.735256>,  <38.683598, 31.794268, 22.778872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968658, 31.517073, 22.735256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091515, 0.062264, -0.993855,
		0.695518, 0.718256, -0.019046,
		0.712657, -0.692987, -0.109037,
		39.182457, 31.309177, 22.702545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299374, 32.430691, 22.680227>,  <38.683598, 31.794268, 22.778872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299374, 32.430691, 22.680227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.907631, 32.499081, 22.637083>,  <37.672585, 32.540115, 22.611197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.907631, 32.499081, 22.637083>,  <38.299374, 32.430691, 22.680227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907631, 32.499081, 22.637083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122684, -0.078611, 0.989328,
		0.160672, 0.982134, 0.097964,
		-0.979353, 0.170976, -0.107861,
		37.613827, 32.550373, 22.604725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155212, 32.847214, 23.193321>,  <38.299374, 32.430691, 22.680227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155212, 32.847214, 23.193321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.798244, 32.689083, 23.106323>,  <37.584064, 32.594204, 23.054125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.798244, 32.689083, 23.106323>,  <38.155212, 32.847214, 23.193321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798244, 32.689083, 23.106323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240531, 0.008988, 0.970600,
		-0.381746, 0.918498, -0.103109,
		-0.892421, -0.395324, -0.217496,
		37.530518, 32.570484, 23.041075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581425, 33.208267, 23.446133>,  <38.155212, 32.847214, 23.193321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581425, 33.208267, 23.446133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.430111, 32.839039, 23.418303>,  <37.339321, 32.617504, 23.401604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.430111, 32.839039, 23.418303>,  <37.581425, 33.208267, 23.446133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430111, 32.839039, 23.418303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317166, 0.058633, 0.946556,
		-0.869657, 0.380139, -0.314947,
		-0.378289, -0.923069, -0.069577,
		37.316624, 32.562119, 23.397430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921906, 33.245239, 23.786711>,  <37.581425, 33.208267, 23.446133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921906, 33.245239, 23.786711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.020496, 32.857647, 23.779608>,  <37.079651, 32.625092, 23.775347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.020496, 32.857647, 23.779608>,  <36.921906, 33.245239, 23.786711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020496, 32.857647, 23.779608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227827, -0.075740, 0.970751,
		-0.941989, -0.235226, -0.239430,
		0.246480, -0.968985, -0.017755,
		37.094440, 32.566952, 23.774281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356087, 32.876362, 24.026909>,  <36.921906, 33.245239, 23.786711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356087, 32.876362, 24.026909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.658958, 32.622871, 24.090248>,  <36.840679, 32.470776, 24.128252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.658958, 32.622871, 24.090248>,  <36.356087, 32.876362, 24.026909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658958, 32.622871, 24.090248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273554, -0.087502, 0.957868,
		-0.593171, -0.768592, -0.239613,
		0.757176, -0.633727, 0.158348,
		36.886112, 32.432755, 24.137753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042629, 32.262100, 24.326000>,  <36.356087, 32.876362, 24.026909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042629, 32.262100, 24.326000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430805, 32.198315, 24.398464>,  <36.663712, 32.160046, 24.441944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430805, 32.198315, 24.398464>,  <36.042629, 32.262100, 24.326000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430805, 32.198315, 24.398464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214673, -0.227317, 0.949864,
		-0.110281, -0.960677, -0.254829,
		0.970440, -0.159457, 0.181163,
		36.721935, 32.150478, 24.452812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009090, 31.618242, 24.687395>,  <36.042629, 32.262100, 24.326000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009090, 31.618242, 24.687395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.350998, 31.805193, 24.777668>,  <36.556141, 31.917362, 24.831833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.350998, 31.805193, 24.777668>,  <36.009090, 31.618242, 24.687395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350998, 31.805193, 24.777668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087905, -0.298184, 0.950452,
		0.511513, -0.832254, -0.213793,
		0.854767, 0.467375, 0.225685,
		36.607430, 31.945406, 24.845373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.923210, 35.513382, 19.664906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.016884, 35.134212, 19.751249>,  <40.073090, 34.906712, 19.803055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.016884, 35.134212, 19.751249>,  <39.923210, 35.513382, 19.664906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016884, 35.134212, 19.751249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361463, 0.121217, 0.924473,
		-0.902497, -0.294522, -0.314253,
		0.234185, -0.947925, 0.215857,
		40.087139, 34.849834, 19.816006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373516, 35.247414, 19.959715>,  <39.923210, 35.513382, 19.664906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373516, 35.247414, 19.959715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.692036, 35.036957, 20.079098>,  <39.883148, 34.910683, 20.150728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.692036, 35.036957, 20.079098>,  <39.373516, 35.247414, 19.959715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692036, 35.036957, 20.079098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189036, 0.252238, 0.949021,
		-0.574603, -0.812127, 0.101398,
		0.796302, -0.526143, 0.298458,
		39.930927, 34.879112, 20.168634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150192, 34.694984, 20.498898>,  <39.373516, 35.247414, 19.959715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150192, 34.694984, 20.498898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.539700, 34.777126, 20.538116>,  <39.773403, 34.826412, 20.561647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.539700, 34.777126, 20.538116>,  <39.150192, 34.694984, 20.498898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539700, 34.777126, 20.538116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130977, 0.153447, 0.979438,
		0.186091, -0.966583, 0.176319,
		0.973764, 0.205358, 0.098045,
		39.831829, 34.838730, 20.567530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303165, 34.284100, 21.093407>,  <39.150192, 34.694984, 20.498898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303165, 34.284100, 21.093407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.585026, 34.559338, 21.024141>,  <39.754143, 34.724480, 20.982582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.585026, 34.559338, 21.024141>,  <39.303165, 34.284100, 21.093407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585026, 34.559338, 21.024141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039367, 0.205754, 0.977812,
		0.708457, -0.695837, 0.117897,
		0.704655, 0.688096, -0.173161,
		39.796421, 34.765766, 20.972193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667091, 34.189083, 21.722132>,  <39.303165, 34.284100, 21.093407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667091, 34.189083, 21.722132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.776985, 34.550003, 21.589243>,  <39.842922, 34.766556, 21.509510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.776985, 34.550003, 21.589243>,  <39.667091, 34.189083, 21.722132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776985, 34.550003, 21.589243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111248, 0.313368, 0.943093,
		0.955063, -0.296058, -0.014286,
		0.274734, 0.902302, -0.332223,
		39.859406, 34.820694, 21.489576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302471, 34.395237, 22.058903>,  <39.667091, 34.189083, 21.722132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302471, 34.395237, 22.058903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.114780, 34.726486, 21.936243>,  <40.002167, 34.925236, 21.862646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.114780, 34.726486, 21.936243>,  <40.302471, 34.395237, 22.058903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114780, 34.726486, 21.936243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069851, 0.380971, 0.921945,
		0.880309, 0.411185, -0.236608,
		-0.469231, 0.828123, -0.306650,
		39.974010, 34.974922, 21.844248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666725, 34.928543, 22.467093>,  <40.302471, 34.395237, 22.058903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666725, 34.928543, 22.467093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.317722, 35.086750, 22.352348>,  <40.108318, 35.181675, 22.283501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.317722, 35.086750, 22.352348>,  <40.666725, 34.928543, 22.467093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317722, 35.086750, 22.352348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043512, 0.521888, 0.851904,
		0.486652, 0.755778, -0.438144,
		-0.872512, 0.395516, -0.286863,
		40.055969, 35.205406, 22.266289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629150, 35.505970, 22.819918>,  <40.666725, 34.928543, 22.467093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629150, 35.505970, 22.819918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.248367, 35.463684, 22.704954>,  <40.019897, 35.438313, 22.635977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.248367, 35.463684, 22.704954>,  <40.629150, 35.505970, 22.819918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248367, 35.463684, 22.704954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296636, 0.551465, 0.779675,
		0.076068, 0.827472, -0.556330,
		-0.951956, -0.105719, -0.287407,
		39.962780, 35.431969, 22.618732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305622, 36.194546, 22.757750>,  <40.629150, 35.505970, 22.819918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305622, 36.194546, 22.757750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.982594, 35.961773, 22.796074>,  <39.788776, 35.822109, 22.819069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.982594, 35.961773, 22.796074>,  <40.305622, 36.194546, 22.757750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982594, 35.961773, 22.796074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337459, 0.589179, 0.734159,
		-0.483683, 0.560554, -0.672183,
		-0.807572, -0.581934, 0.095812,
		39.740322, 35.787193, 22.824818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709011, 36.605343, 22.923626>,  <40.305622, 36.194546, 22.757750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709011, 36.605343, 22.923626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.550949, 36.255531, 23.036095>,  <39.456112, 36.045647, 23.103575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.550949, 36.255531, 23.036095>,  <39.709011, 36.605343, 22.923626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550949, 36.255531, 23.036095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300849, 0.412405, 0.859891,
		-0.867952, 0.255203, -0.426065,
		-0.395158, -0.874525, 0.281170,
		39.432404, 35.993176, 23.120445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998787, 36.691044, 23.030241>,  <39.709011, 36.605343, 22.923626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998787, 36.691044, 23.030241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.126564, 36.371040, 23.233395>,  <39.203232, 36.179039, 23.355288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.126564, 36.371040, 23.233395>,  <38.998787, 36.691044, 23.030241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126564, 36.371040, 23.233395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274459, 0.434884, 0.857641,
		-0.906989, -0.413361, -0.080649,
		0.319442, -0.800006, 0.507885,
		39.222397, 36.131039, 23.385759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520210, 36.499115, 23.523384>,  <38.998787, 36.691044, 23.030241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520210, 36.499115, 23.523384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.863472, 36.351032, 23.665657>,  <39.069431, 36.262180, 23.751020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.863472, 36.351032, 23.665657>,  <38.520210, 36.499115, 23.523384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863472, 36.351032, 23.665657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216206, 0.367769, 0.904434,
		-0.465640, -0.853047, 0.235561,
		0.858157, -0.370211, 0.355682,
		39.120918, 36.239967, 23.772362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892750, 35.993065, 23.468241>,  <38.520210, 36.499115, 23.523384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892750, 35.993065, 23.468241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.493580, 36.002823, 23.444391>,  <37.254078, 36.008678, 23.430082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.493580, 36.002823, 23.444391>,  <37.892750, 35.993065, 23.468241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493580, 36.002823, 23.444391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058291, -0.052104, -0.996939,
		-0.027425, -0.998344, 0.050574,
		-0.997923, 0.024393, -0.059623,
		37.194202, 36.010143, 23.426504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702538, 35.390182, 23.034840>,  <37.892750, 35.993065, 23.468241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702538, 35.390182, 23.034840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.404320, 35.652985, 22.990101>,  <37.225391, 35.810665, 22.963257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.404320, 35.652985, 22.990101>,  <37.702538, 35.390182, 23.034840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404320, 35.652985, 22.990101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128363, -0.023123, -0.991458,
		-0.653980, -0.753531, -0.067096,
		-0.745542, 0.657006, -0.111848,
		37.180656, 35.850086, 22.956547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229126, 35.101425, 22.469452>,  <37.702538, 35.390182, 23.034840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229126, 35.101425, 22.469452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.156605, 35.494343, 22.488365>,  <37.113091, 35.730091, 22.499714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.156605, 35.494343, 22.488365>,  <37.229126, 35.101425, 22.469452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156605, 35.494343, 22.488365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068545, 0.060585, -0.995807,
		-0.981035, -0.177303, -0.078315,
		-0.181304, 0.982290, 0.047282,
		37.102215, 35.789028, 22.502550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800247, 35.197487, 21.847963>,  <37.229126, 35.101425, 22.469452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800247, 35.197487, 21.847963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.886806, 35.582714, 21.912060>,  <36.938744, 35.813850, 21.950518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.886806, 35.582714, 21.912060>,  <36.800247, 35.197487, 21.847963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886806, 35.582714, 21.912060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199030, 0.117166, -0.972964,
		-0.955803, 0.242439, -0.166325,
		0.216397, 0.963066, 0.160240,
		36.951725, 35.871635, 21.960133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278168, 35.574986, 21.393383>,  <36.800247, 35.197487, 21.847963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278168, 35.574986, 21.393383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.576836, 35.821758, 21.492889>,  <36.756035, 35.969822, 21.552593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.576836, 35.821758, 21.492889>,  <36.278168, 35.574986, 21.393383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576836, 35.821758, 21.492889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042011, 0.329492, -0.943223,
		-0.663870, 0.714724, 0.220103,
		0.746667, 0.616931, 0.248766,
		36.800835, 36.006836, 21.567520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192890, 36.134052, 21.026934>,  <36.278168, 35.574986, 21.393383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192890, 36.134052, 21.026934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.586647, 36.134357, 21.097321>,  <36.822903, 36.134541, 21.139553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.586647, 36.134357, 21.097321>,  <36.192890, 36.134052, 21.026934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586647, 36.134357, 21.097321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169500, 0.264567, -0.949355,
		-0.047282, 0.964367, 0.260309,
		0.984395, 0.000765, 0.175969,
		36.881966, 36.134586, 21.150112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407051, 36.629883, 20.514345>,  <36.192890, 36.134052, 21.026934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407051, 36.629883, 20.514345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.736584, 36.429016, 20.619514>,  <36.934303, 36.308495, 20.682617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.736584, 36.429016, 20.619514>,  <36.407051, 36.629883, 20.514345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736584, 36.429016, 20.619514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258520, -0.079931, -0.962694,
		0.504448, 0.861069, 0.063970,
		0.823832, -0.502167, 0.262924,
		36.983734, 36.278366, 20.698391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904091, 36.923874, 20.144718>,  <36.407051, 36.629883, 20.514345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904091, 36.923874, 20.144718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.025906, 36.554699, 20.238907>,  <37.098995, 36.333195, 20.295420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.025906, 36.554699, 20.238907>,  <36.904091, 36.923874, 20.144718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025906, 36.554699, 20.238907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309843, -0.137778, -0.940752,
		0.900697, 0.359454, 0.244006,
		0.304538, -0.922936, 0.235470,
		37.117268, 36.277817, 20.309547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517609, 36.837021, 19.815302>,  <36.904091, 36.923874, 20.144718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517609, 36.837021, 19.815302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.378731, 36.469532, 19.890560>,  <37.295403, 36.249039, 19.935715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.378731, 36.469532, 19.890560>,  <37.517609, 36.837021, 19.815302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378731, 36.469532, 19.890560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401726, -0.326993, -0.855390,
		0.847391, -0.221405, 0.482606,
		-0.347197, -0.918725, 0.188147,
		37.274570, 36.193916, 19.947004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070137, 36.394806, 19.543512>,  <37.517609, 36.837021, 19.815302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070137, 36.394806, 19.543512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.732269, 36.187943, 19.598759>,  <37.529549, 36.063824, 19.631907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.732269, 36.187943, 19.598759>,  <38.070137, 36.394806, 19.543512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732269, 36.187943, 19.598759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245743, -0.603880, -0.758247,
		0.475539, -0.606530, 0.637169,
		-0.844673, -0.517156, 0.138118,
		37.478867, 36.032795, 19.640194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354206, 35.715202, 19.573292>,  <38.070137, 36.394806, 19.543512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354206, 35.715202, 19.573292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.968826, 35.690159, 19.469103>,  <37.737598, 35.675133, 19.406590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.968826, 35.690159, 19.469103>,  <38.354206, 35.715202, 19.573292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968826, 35.690159, 19.469103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237825, -0.647433, -0.724064,
		-0.123305, -0.759546, 0.638659,
		-0.963449, -0.062608, -0.260471,
		37.679790, 35.671375, 19.390961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222431, 34.985966, 19.442610>,  <38.354206, 35.715202, 19.573292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222431, 34.985966, 19.442610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.905777, 35.147137, 19.258886>,  <37.715786, 35.243839, 19.148653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.905777, 35.147137, 19.258886>,  <38.222431, 34.985966, 19.442610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905777, 35.147137, 19.258886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074440, -0.682536, -0.727051,
		-0.606438, -0.609752, 0.510328,
		-0.791639, 0.402922, -0.459306,
		37.668285, 35.268013, 19.121094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808895, 34.423580, 19.173042>,  <38.222431, 34.985966, 19.442610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808895, 34.423580, 19.173042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.668247, 34.730057, 18.957890>,  <37.583858, 34.913940, 18.828798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.668247, 34.730057, 18.957890>,  <37.808895, 34.423580, 19.173042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668247, 34.730057, 18.957890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214837, -0.625282, -0.750245,
		-0.911156, -0.148247, 0.384469,
		-0.351624, 0.766189, -0.537881,
		37.562759, 34.959915, 18.796526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385414, 34.090195, 19.654980>,  <37.808895, 34.423580, 19.173042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385414, 34.090195, 19.654980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.286182, 33.705914, 19.605183>,  <37.226643, 33.475346, 19.575304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.286182, 33.705914, 19.605183>,  <37.385414, 34.090195, 19.654980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286182, 33.705914, 19.605183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047279, -0.116351, 0.992082,
		-0.967584, 0.252006, -0.016557,
		-0.248084, -0.960706, -0.124494,
		37.211758, 33.417702, 19.567835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720173, 33.938881, 19.995905>,  <37.385414, 34.090195, 19.654980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720173, 33.938881, 19.995905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.948174, 33.611866, 19.963089>,  <37.084976, 33.415657, 19.943399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.948174, 33.611866, 19.963089>,  <36.720173, 33.938881, 19.995905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948174, 33.611866, 19.963089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162593, -0.210107, 0.964063,
		-0.805393, -0.536182, -0.252688,
		0.570005, -0.817535, -0.082040,
		37.119175, 33.366604, 19.938477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433296, 33.520164, 20.420374>,  <36.720173, 33.938881, 19.995905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433296, 33.520164, 20.420374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.780151, 33.331589, 20.356117>,  <36.988266, 33.218441, 20.317564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.780151, 33.331589, 20.356117>,  <36.433296, 33.520164, 20.420374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780151, 33.331589, 20.356117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011722, -0.341762, 0.939713,
		-0.497922, -0.812982, -0.301883,
		0.867142, -0.471443, -0.160641,
		37.040295, 33.190155, 20.307924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354073, 32.842113, 20.597473>,  <36.433296, 33.520164, 20.420374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354073, 32.842113, 20.597473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.750721, 32.882355, 20.629902>,  <36.988708, 32.906498, 20.649359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.750721, 32.882355, 20.629902>,  <36.354073, 32.842113, 20.597473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750721, 32.882355, 20.629902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039230, -0.363406, 0.930805,
		0.123101, -0.926184, -0.356413,
		0.991618, 0.100601, 0.081070,
		37.048206, 32.912537, 20.654222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646324, 32.223431, 20.826782>,  <36.354073, 32.842113, 20.597473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646324, 32.223431, 20.826782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.926849, 32.490345, 20.927097>,  <37.095165, 32.650494, 20.987288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.926849, 32.490345, 20.927097>,  <36.646324, 32.223431, 20.826782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926849, 32.490345, 20.927097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176308, -0.503245, 0.845967,
		0.690707, -0.549071, -0.470580,
		0.701312, 0.667282, 0.250789,
		37.137241, 32.690529, 21.002335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088654, 31.863745, 21.150864>,  <36.646324, 32.223431, 20.826782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088654, 31.863745, 21.150864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.197300, 32.228336, 21.274429>,  <37.262489, 32.447090, 21.348568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.197300, 32.228336, 21.274429>,  <37.088654, 31.863745, 21.150864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197300, 32.228336, 21.274429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146975, -0.356503, 0.922662,
		0.951116, -0.205209, -0.230797,
		0.271618, 0.911480, 0.308915,
		37.278786, 32.501781, 21.367104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727169, 31.827740, 21.476576>,  <37.088654, 31.863745, 21.150864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727169, 31.827740, 21.476576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.555157, 32.161041, 21.615582>,  <37.451950, 32.361023, 21.698984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.555157, 32.161041, 21.615582>,  <37.727169, 31.827740, 21.476576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555157, 32.161041, 21.615582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222545, -0.275209, 0.935272,
		0.874958, 0.479529, -0.067089,
		-0.430027, 0.833254, 0.347513,
		37.426147, 32.411018, 21.719835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251301, 32.202568, 21.971788>,  <37.727169, 31.827740, 21.476576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251301, 32.202568, 21.971788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.883686, 32.340942, 22.047373>,  <37.663116, 32.423965, 22.092724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.883686, 32.340942, 22.047373>,  <38.251301, 32.202568, 21.971788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883686, 32.340942, 22.047373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162827, -0.103397, 0.981222,
		0.358976, 0.932544, 0.038698,
		-0.919034, 0.345934, 0.188960,
		37.607975, 32.444721, 22.104061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976467, 31.941076, 22.068283>,  <38.251301, 32.202568, 21.971788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976467, 31.941076, 22.068283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.103054, 31.573126, 22.160955>,  <39.179005, 31.352356, 22.216558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.103054, 31.573126, 22.160955>,  <38.976467, 31.941076, 22.068283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103054, 31.573126, 22.160955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075782, -0.267970, -0.960442,
		0.945572, 0.286389, -0.154513,
		0.316465, -0.919877, 0.231682,
		39.197994, 31.297163, 22.230459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644722, 31.764303, 21.732784>,  <38.976467, 31.941076, 22.068283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644722, 31.764303, 21.732784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.495857, 31.403717, 21.821196>,  <39.406536, 31.187365, 21.874243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.495857, 31.403717, 21.821196>,  <39.644722, 31.764303, 21.732784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495857, 31.403717, 21.821196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225232, -0.318728, -0.920697,
		0.900425, -0.292867, 0.321658,
		-0.372164, -0.901466, 0.221027,
		39.384209, 31.133278, 21.887505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171265, 31.257551, 21.485277>,  <39.644722, 31.764303, 21.732784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171265, 31.257551, 21.485277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.818325, 31.069418, 21.491585>,  <39.606560, 30.956537, 21.495369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.818325, 31.069418, 21.491585>,  <40.171265, 31.257551, 21.485277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818325, 31.069418, 21.491585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098116, -0.216631, -0.971311,
		0.460256, -0.855487, 0.237291,
		-0.882348, -0.470334, 0.015768,
		39.553619, 30.928318, 21.496315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315521, 30.796558, 20.944340>,  <40.171265, 31.257551, 21.485277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315521, 30.796558, 20.944340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.918835, 30.802937, 20.995314>,  <39.680820, 30.806763, 21.025898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.918835, 30.802937, 20.995314>,  <40.315521, 30.796558, 20.944340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918835, 30.802937, 20.995314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128070, -0.197079, -0.971987,
		0.009616, -0.980258, 0.197489,
		-0.991719, 0.015946, 0.127437,
		39.621319, 30.807720, 21.033545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071117, 30.103786, 20.742962>,  <40.315521, 30.796558, 20.944340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071117, 30.103786, 20.742962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.774841, 30.371130, 20.715630>,  <39.597076, 30.531536, 20.699230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.774841, 30.371130, 20.715630>,  <40.071117, 30.103786, 20.742962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774841, 30.371130, 20.715630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068982, -0.176827, -0.981821,
		-0.668291, -0.722516, 0.177080,
		-0.740695, 0.668358, -0.068331,
		39.552631, 30.571638, 20.695129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542892, 29.822432, 20.272493>,  <40.071117, 30.103786, 20.742962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542892, 29.822432, 20.272493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.457802, 30.212822, 20.291328>,  <39.406746, 30.447056, 20.302629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.457802, 30.212822, 20.291328>,  <39.542892, 29.822432, 20.272493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457802, 30.212822, 20.291328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223316, -0.001645, -0.974744,
		-0.951250, -0.217869, 0.218302,
		-0.212726, 0.975977, 0.047089,
		39.393986, 30.505615, 20.305454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869492, 29.906128, 20.028215>,  <39.542892, 29.822432, 20.272493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869492, 29.906128, 20.028215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.025242, 30.269697, 19.968557>,  <39.118690, 30.487839, 19.932762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.025242, 30.269697, 19.968557>,  <38.869492, 29.906128, 20.028215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025242, 30.269697, 19.968557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373523, 0.007807, -0.927588,
		-0.841942, 0.416890, 0.342544,
		0.389377, 0.908923, -0.149145,
		39.142056, 30.542374, 19.923813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258385, 30.326748, 19.655979>,  <38.869492, 29.906128, 20.028215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258385, 30.326748, 19.655979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.630997, 30.458677, 19.594711>,  <38.854565, 30.537834, 19.557951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.630997, 30.458677, 19.594711>,  <38.258385, 30.326748, 19.655979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630997, 30.458677, 19.594711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179260, 0.050014, -0.982529,
		-0.316400, 0.942717, 0.105714,
		0.931535, 0.329822, -0.153167,
		38.910458, 30.557625, 19.548761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785137, 30.427061, 20.257576>,  <38.258385, 30.326748, 19.655979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785137, 30.427061, 20.257576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.882763, 30.723688, 20.507540>,  <37.941338, 30.901665, 20.657518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.882763, 30.723688, 20.507540>,  <37.785137, 30.427061, 20.257576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882763, 30.723688, 20.507540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047992, -0.652844, 0.755970,
		0.968570, -0.154517, -0.194927,
		0.244068, 0.741565, 0.624909,
		37.955982, 30.946157, 20.695013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.236019, 32.105499, 35.158920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.360031, 32.467304, 35.041794>,  <39.434437, 32.684387, 34.971519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.360031, 32.467304, 35.041794>,  <39.236019, 32.105499, 35.158920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360031, 32.467304, 35.041794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272823, -0.210392, -0.938777,
		-0.910741, 0.370934, 0.181545,
		0.310029, 0.904513, -0.292812,
		39.453041, 32.738659, 34.953949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614628, 32.459774, 34.704807>,  <39.236019, 32.105499, 35.158920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614628, 32.459774, 34.704807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.988815, 32.567547, 34.613323>,  <39.213326, 32.632210, 34.558434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.988815, 32.567547, 34.613323>,  <38.614628, 32.459774, 34.704807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988815, 32.567547, 34.613323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209789, -0.097453, -0.972878,
		-0.284412, 0.958076, -0.034640,
		0.935467, 0.269431, -0.228710,
		39.269455, 32.648376, 34.544708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662151, 33.127422, 34.295750>,  <38.614628, 32.459774, 34.704807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662151, 33.127422, 34.295750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.999554, 32.923267, 34.228821>,  <39.201996, 32.800774, 34.188663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.999554, 32.923267, 34.228821>,  <38.662151, 33.127422, 34.295750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999554, 32.923267, 34.228821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176763, 0.030391, -0.983784,
		0.507199, 0.859406, -0.064583,
		0.843507, -0.510390, -0.167325,
		39.252605, 32.770149, 34.178623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812653, 33.408226, 33.676849>,  <38.662151, 33.127422, 34.295750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812653, 33.408226, 33.676849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.094025, 33.124050, 33.685349>,  <39.262848, 32.953545, 33.690449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.094025, 33.124050, 33.685349>,  <38.812653, 33.408226, 33.676849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094025, 33.124050, 33.685349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064718, 0.034245, -0.997316,
		0.707809, 0.702920, 0.070068,
		0.703433, -0.710444, 0.021252,
		39.305054, 32.910915, 33.691723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322914, 33.549603, 33.273918>,  <38.812653, 33.408226, 33.676849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322914, 33.549603, 33.273918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.360558, 33.151382, 33.272015>,  <39.383144, 32.912449, 33.270874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.360558, 33.151382, 33.272015>,  <39.322914, 33.549603, 33.273918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360558, 33.151382, 33.272015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069086, 0.011298, -0.997547,
		0.993162, 0.093545, 0.069842,
		0.094105, -0.995551, -0.004758,
		39.388790, 32.852718, 33.270588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740780, 33.455643, 32.765293>,  <39.322914, 33.549603, 33.273918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740780, 33.455643, 32.765293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.599735, 33.084175, 32.811306>,  <39.515106, 32.861294, 32.838913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.599735, 33.084175, 32.811306>,  <39.740780, 33.455643, 32.765293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599735, 33.084175, 32.811306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171358, -0.184934, -0.967696,
		0.919945, -0.321512, 0.224345,
		-0.352615, -0.928671, 0.115036,
		39.493950, 32.805573, 32.845818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261982, 33.027462, 32.376968>,  <39.740780, 33.455643, 32.765293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261982, 33.027462, 32.376968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.951508, 32.788250, 32.456863>,  <39.765224, 32.644722, 32.504799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.951508, 32.788250, 32.456863>,  <40.261982, 33.027462, 32.376968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951508, 32.788250, 32.456863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139170, -0.471478, -0.870827,
		0.614954, -0.648126, 0.449182,
		-0.776185, -0.598032, 0.199738,
		39.718651, 32.608841, 32.516785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407967, 32.260281, 32.264557>,  <40.261982, 33.027462, 32.376968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407967, 32.260281, 32.264557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.014584, 32.313843, 32.215767>,  <39.778553, 32.345982, 32.186493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.014584, 32.313843, 32.215767>,  <40.407967, 32.260281, 32.264557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014584, 32.313843, 32.215767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051587, -0.438441, -0.897278,
		-0.173632, -0.888728, 0.424281,
		-0.983459, 0.133909, -0.121974,
		39.719547, 32.354015, 32.179176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123505, 31.594059, 31.941252>,  <40.407967, 32.260281, 32.264557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123505, 31.594059, 31.941252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.816494, 31.838482, 31.863777>,  <39.632286, 31.985136, 31.817291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.816494, 31.838482, 31.863777>,  <40.123505, 31.594059, 31.941252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816494, 31.838482, 31.863777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140737, -0.455421, -0.879082,
		-0.625377, -0.647460, 0.435546,
		-0.767527, 0.611055, -0.193688,
		39.586235, 32.021797, 31.805672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668667, 31.181435, 31.718266>,  <40.123505, 31.594059, 31.941252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668667, 31.181435, 31.718266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.525944, 31.528994, 31.581034>,  <39.440311, 31.737530, 31.498693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.525944, 31.528994, 31.581034>,  <39.668667, 31.181435, 31.718266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525944, 31.528994, 31.581034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104231, -0.401990, -0.909692,
		-0.928345, -0.288826, 0.234000,
		-0.356808, 0.868898, -0.343081,
		39.418900, 31.789663, 31.478109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085793, 31.092768, 31.340853>,  <39.668667, 31.181435, 31.718266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085793, 31.092768, 31.340853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.173019, 31.454432, 31.193916>,  <39.225357, 31.671431, 31.105755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.173019, 31.454432, 31.193916>,  <39.085793, 31.092768, 31.340853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173019, 31.454432, 31.193916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175424, -0.333953, -0.926122,
		-0.960038, 0.266397, 0.085788,
		0.218067, 0.904162, -0.367340,
		39.238438, 31.725679, 31.083714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547569, 31.327978, 30.909842>,  <39.085793, 31.092768, 31.340853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547569, 31.327978, 30.909842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.881226, 31.511053, 30.786728>,  <39.081421, 31.620899, 30.712860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.881226, 31.511053, 30.786728>,  <38.547569, 31.327978, 30.909842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881226, 31.511053, 30.786728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110161, -0.408537, -0.906070,
		-0.540438, 0.789695, -0.290358,
		0.834141, 0.457688, -0.307783,
		39.131470, 31.648359, 30.694393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933979, 31.691423, 31.086050>,  <38.547569, 31.327978, 30.909842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933979, 31.691423, 31.086050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.554821, 31.681713, 30.958988>,  <37.327328, 31.675888, 30.882751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.554821, 31.681713, 30.958988>,  <37.933979, 31.691423, 31.086050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554821, 31.681713, 30.958988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317423, 0.156856, 0.935221,
		0.027123, 0.987323, -0.156389,
		-0.947896, -0.024275, -0.317654,
		37.270451, 31.674431, 30.863691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715221, 32.283115, 31.486204>,  <37.933979, 31.691423, 31.086050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715221, 32.283115, 31.486204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402775, 32.046646, 31.405836>,  <37.215305, 31.904764, 31.357615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402775, 32.046646, 31.405836>,  <37.715221, 32.283115, 31.486204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402775, 32.046646, 31.405836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306566, 0.082789, 0.948242,
		-0.543941, 0.802285, -0.245901,
		-0.781118, -0.591173, -0.200921,
		37.168438, 31.869295, 31.345560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091755, 32.628899, 31.609591>,  <37.715221, 32.283115, 31.486204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091755, 32.628899, 31.609591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.981747, 32.247650, 31.660055>,  <36.915741, 32.018902, 31.690334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.981747, 32.247650, 31.660055>,  <37.091755, 32.628899, 31.609591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981747, 32.247650, 31.660055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189873, 0.182482, 0.964701,
		-0.942503, 0.241357, -0.231159,
		-0.275020, -0.953125, 0.126162,
		36.899242, 31.961712, 31.697905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378307, 32.558441, 31.972258>,  <37.091755, 32.628899, 31.609591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378307, 32.558441, 31.972258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.570164, 32.214996, 32.044621>,  <36.685280, 32.008930, 32.088039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.570164, 32.214996, 32.044621>,  <36.378307, 32.558441, 31.972258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570164, 32.214996, 32.044621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185125, 0.102510, 0.977354,
		-0.857711, -0.502274, -0.109782,
		0.479645, -0.858611, 0.180908,
		36.714058, 31.957413, 32.098892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947781, 32.358532, 32.397778>,  <36.378307, 32.558441, 31.972258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947781, 32.358532, 32.397778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.266338, 32.124718, 32.459846>,  <36.457474, 31.984430, 32.497089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.266338, 32.124718, 32.459846>,  <35.947781, 32.358532, 32.397778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266338, 32.124718, 32.459846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154271, 0.051748, 0.986672,
		-0.584772, -0.809718, -0.048965,
		0.796393, -0.584533, 0.155177,
		36.505257, 31.949358, 32.506401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676853, 31.836494, 32.767513>,  <35.947781, 32.358532, 32.397778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676853, 31.836494, 32.767513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066101, 31.871281, 32.852806>,  <36.299652, 31.892153, 32.903980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.066101, 31.871281, 32.852806>,  <35.676853, 31.836494, 32.767513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066101, 31.871281, 32.852806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226243, 0.188412, 0.955675,
		0.042934, -0.978232, 0.203023,
		0.973124, 0.086964, 0.213229,
		36.358040, 31.897371, 32.916775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588871, 31.631378, 33.435955>,  <35.676853, 31.836494, 32.767513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588871, 31.631378, 33.435955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954659, 31.790831, 33.408146>,  <36.174133, 31.886503, 33.391460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.954659, 31.790831, 33.408146>,  <35.588871, 31.631378, 33.435955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954659, 31.790831, 33.408146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054545, 0.291671, 0.954962,
		0.400959, -0.869493, 0.288468,
		0.914471, 0.398635, -0.069521,
		36.229000, 31.910421, 33.387291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865032, 31.496737, 34.139042>,  <35.588871, 31.631378, 33.435955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865032, 31.496737, 34.139042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.081020, 31.792040, 33.977345>,  <36.210613, 31.969221, 33.880325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.081020, 31.792040, 33.977345>,  <35.865032, 31.496737, 34.139042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081020, 31.792040, 33.977345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128724, 0.402194, 0.906461,
		0.831784, -0.541496, 0.122141,
		0.539969, 0.738257, -0.404241,
		36.243011, 32.013515, 33.856071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425594, 31.662554, 34.565151>,  <35.865032, 31.496737, 34.139042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425594, 31.662554, 34.565151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356087, 32.009548, 34.378700>,  <36.314381, 32.217743, 34.266830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356087, 32.009548, 34.378700>,  <36.425594, 31.662554, 34.565151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356087, 32.009548, 34.378700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074524, 0.483554, 0.872136,
		0.981962, 0.116815, -0.148677,
		-0.173772, 0.867484, -0.466127,
		36.303955, 32.269794, 34.238861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.798161, 32.053440, 34.911846>,  <36.425594, 31.662554, 34.565151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.798161, 32.053440, 34.911846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.552628, 32.305271, 34.721336>,  <36.405308, 32.456371, 34.607029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.552628, 32.305271, 34.721336>,  <36.798161, 32.053440, 34.911846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552628, 32.305271, 34.721336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039202, 0.626878, 0.778130,
		0.788460, 0.458973, -0.409481,
		-0.613836, 0.629577, -0.476276,
		36.368477, 32.494144, 34.578453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058220, 32.791916, 34.903988>,  <36.798161, 32.053440, 34.911846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058220, 32.791916, 34.903988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666485, 32.824322, 34.829868>,  <36.431442, 32.843765, 34.785397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.666485, 32.824322, 34.829868>,  <37.058220, 32.791916, 34.903988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666485, 32.824322, 34.829868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061721, 0.752798, 0.655352,
		0.192586, 0.653247, -0.732242,
		-0.979337, 0.081017, -0.185297,
		36.372684, 32.848625, 34.774281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979904, 33.506142, 34.912159>,  <37.058220, 32.791916, 34.903988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979904, 33.506142, 34.912159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607197, 33.367516, 34.955433>,  <36.383572, 33.284340, 34.981396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607197, 33.367516, 34.955433>,  <36.979904, 33.506142, 34.912159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607197, 33.367516, 34.955433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154086, 0.647306, 0.746493,
		-0.328734, 0.678889, -0.656539,
		-0.931768, -0.346561, 0.108185,
		36.327667, 33.263546, 34.987888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363964, 34.133617, 34.859577>,  <36.979904, 33.506142, 34.912159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363964, 34.133617, 34.859577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229023, 33.819294, 35.066921>,  <36.148056, 33.630699, 35.191326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229023, 33.819294, 35.066921>,  <36.363964, 34.133617, 34.859577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229023, 33.819294, 35.066921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337943, 0.615025, 0.712418,
		-0.878627, 0.065164, -0.473041,
		-0.337356, -0.785810, 0.518356,
		36.127815, 33.583549, 35.222427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599350, 34.063145, 35.023945>,  <36.363964, 34.133617, 34.859577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599350, 34.063145, 35.023945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.815464, 33.887768, 35.311237>,  <35.945133, 33.782539, 35.483612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.815464, 33.887768, 35.311237>,  <35.599350, 34.063145, 35.023945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815464, 33.887768, 35.311237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262785, 0.722932, 0.638994,
		-0.799396, -0.533980, 0.275373,
		0.540286, -0.438446, 0.718231,
		35.977551, 33.756233, 35.526707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612579, 33.927902, 34.360134>,  <35.599350, 34.063145, 35.023945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612579, 33.927902, 34.360134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408527, 34.271641, 34.345802>,  <35.286095, 34.477886, 34.337204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408527, 34.271641, 34.345802>,  <35.612579, 33.927902, 34.360134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408527, 34.271641, 34.345802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083650, -0.091031, -0.992329,
		-0.856019, -0.503220, 0.118322,
		-0.510131, 0.859350, -0.035830,
		35.255489, 34.529446, 34.335052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837078, 33.940098, 33.958408>,  <35.612579, 33.927902, 34.360134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837078, 33.940098, 33.958408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.040062, 34.284092, 33.936855>,  <35.161854, 34.490490, 33.923923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.040062, 34.284092, 33.936855>,  <34.837078, 33.940098, 33.958408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040062, 34.284092, 33.936855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274973, 0.102359, -0.955988,
		-0.816622, 0.499945, 0.288417,
		0.507463, 0.859987, -0.053883,
		35.192303, 34.542088, 33.920689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435341, 34.547165, 33.807140>,  <34.837078, 33.940098, 33.958408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435341, 34.547165, 33.807140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.797897, 34.604782, 33.648289>,  <35.015430, 34.639355, 33.552979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.797897, 34.604782, 33.648289>,  <34.435341, 34.547165, 33.807140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797897, 34.604782, 33.648289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408733, 0.061482, -0.910581,
		-0.106748, 0.987659, 0.114602,
		0.906390, 0.144045, -0.397125,
		35.069813, 34.647995, 33.529152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296101, 35.111950, 33.313835>,  <34.435341, 34.547165, 33.807140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296101, 35.111950, 33.313835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618000, 34.889709, 33.230228>,  <34.811138, 34.756367, 33.180065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.618000, 34.889709, 33.230228>,  <34.296101, 35.111950, 33.313835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618000, 34.889709, 33.230228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216236, 0.053542, -0.974872,
		0.552832, 0.829722, -0.077053,
		0.804747, -0.555602, -0.209015,
		34.859425, 34.723030, 33.167522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736740, 35.491302, 32.731800>,  <34.296101, 35.111950, 33.313835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736740, 35.491302, 32.731800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.834557, 35.103447, 32.730988>,  <34.893246, 34.870735, 32.730499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.834557, 35.103447, 32.730988>,  <34.736740, 35.491302, 32.731800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834557, 35.103447, 32.730988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115948, 0.031319, -0.992761,
		0.962681, 0.242538, 0.120086,
		0.244543, -0.969636, -0.002028,
		34.907921, 34.812557, 32.730381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987476, 35.535896, 32.075748>,  <34.736740, 35.491302, 32.731800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987476, 35.535896, 32.075748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957283, 35.150818, 32.179688>,  <34.939167, 34.919773, 32.242050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.957283, 35.150818, 32.179688>,  <34.987476, 35.535896, 32.075748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957283, 35.150818, 32.179688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090174, -0.266116, -0.959714,
		0.993061, -0.049009, 0.106897,
		-0.075481, -0.962694, 0.259850,
		34.934639, 34.862011, 32.257641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562904, 35.216587, 31.778732>,  <34.987476, 35.535896, 32.075748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562904, 35.216587, 31.778732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307789, 34.916504, 31.848482>,  <35.154720, 34.736454, 31.890331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.307789, 34.916504, 31.848482>,  <35.562904, 35.216587, 31.778732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307789, 34.916504, 31.848482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063718, -0.277016, -0.958750,
		0.767570, -0.600370, 0.224480,
		-0.637789, -0.750212, 0.174375,
		35.116451, 34.691441, 31.900795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861908, 34.566029, 31.447971>,  <35.562904, 35.216587, 31.778732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861908, 34.566029, 31.447971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464066, 34.539139, 31.479580>,  <35.225361, 34.523006, 31.498545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464066, 34.539139, 31.479580>,  <35.861908, 34.566029, 31.447971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464066, 34.539139, 31.479580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057338, -0.278588, -0.958698,
		0.086458, -0.958055, 0.273230,
		-0.994604, -0.067220, 0.079020,
		35.165684, 34.518974, 31.503286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795155, 33.966621, 31.141523>,  <35.861908, 34.566029, 31.447971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795155, 33.966621, 31.141523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431335, 34.132645, 31.149996>,  <35.213043, 34.232258, 31.155079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.431335, 34.132645, 31.149996>,  <35.795155, 33.966621, 31.141523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431335, 34.132645, 31.149996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196949, -0.385588, -0.901406,
		-0.365961, -0.824048, 0.432456,
		-0.909552, 0.415051, 0.021185,
		35.158470, 34.257160, 31.156351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329899, 33.474949, 30.867197>,  <35.795155, 33.966621, 31.141523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329899, 33.474949, 30.867197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154823, 33.833439, 30.838341>,  <35.049778, 34.048534, 30.821028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154823, 33.833439, 30.838341>,  <35.329899, 33.474949, 30.867197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154823, 33.833439, 30.838341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255332, -0.200822, -0.945767,
		-0.862112, -0.395530, 0.316733,
		-0.437686, 0.896230, -0.072140,
		35.023518, 34.102306, 30.816698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813042, 33.418625, 30.323673>,  <35.329899, 33.474949, 30.867197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813042, 33.418625, 30.323673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833607, 33.816143, 30.363134>,  <34.845947, 34.054653, 30.386812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.833607, 33.816143, 30.363134>,  <34.813042, 33.418625, 30.323673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833607, 33.816143, 30.363134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139853, 0.104976, -0.984592,
		-0.988837, 0.036822, 0.144382,
		0.051411, 0.993793, 0.098654,
		34.849030, 34.114281, 30.392731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152008, 33.805069, 29.965883>,  <34.813042, 33.418625, 30.323673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152008, 33.805069, 29.965883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.450405, 34.069885, 29.994705>,  <34.629444, 34.228775, 30.011997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.450405, 34.069885, 29.994705>,  <34.152008, 33.805069, 29.965883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450405, 34.069885, 29.994705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063914, 0.178873, -0.981794,
		-0.662876, 0.727810, 0.175752,
		0.745997, 0.662040, 0.072053,
		34.674206, 34.268497, 30.016321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989956, 34.321640, 29.374050>,  <34.152008, 33.805069, 29.965883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989956, 34.321640, 29.374050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366032, 34.403233, 29.483177>,  <34.591679, 34.452190, 29.548655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366032, 34.403233, 29.483177>,  <33.989956, 34.321640, 29.374050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366032, 34.403233, 29.483177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205829, 0.297970, -0.932120,
		-0.271430, 0.932526, 0.238163,
		0.940192, 0.203984, 0.272819,
		34.648090, 34.464428, 29.565023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237915, 35.088474, 29.214478>,  <33.989956, 34.321640, 29.374050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237915, 35.088474, 29.214478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564293, 34.857300, 29.208445>,  <34.760120, 34.718594, 29.204824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564293, 34.857300, 29.208445>,  <34.237915, 35.088474, 29.214478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564293, 34.857300, 29.208445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262927, 0.394184, -0.880618,
		0.514887, 0.714568, 0.473586,
		0.815942, -0.577937, -0.015081,
		34.809074, 34.683918, 29.203920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709869, 35.530773, 28.779026>,  <34.237915, 35.088474, 29.214478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709869, 35.530773, 28.779026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.887672, 35.172489, 28.783279>,  <34.994354, 34.957520, 28.785831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.887672, 35.172489, 28.783279>,  <34.709869, 35.530773, 28.779026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887672, 35.172489, 28.783279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429825, 0.202864, -0.879827,
		0.785914, 0.395662, 0.475174,
		0.444510, -0.895711, 0.010632,
		35.021027, 34.903774, 28.786469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357731, 35.693790, 28.653093>,  <34.709869, 35.530773, 28.779026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357731, 35.693790, 28.653093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.344749, 35.310246, 28.540289>,  <35.336960, 35.080120, 28.472607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.344749, 35.310246, 28.540289>,  <35.357731, 35.693790, 28.653093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344749, 35.310246, 28.540289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416612, 0.243499, -0.875867,
		0.908505, -0.145913, 0.391571,
		-0.032453, -0.958863, -0.282009,
		35.335014, 35.022587, 28.455687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972713, 35.559242, 28.428736>,  <35.357731, 35.693790, 28.653093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972713, 35.559242, 28.428736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764130, 35.255295, 28.273466>,  <35.638977, 35.072926, 28.180304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764130, 35.255295, 28.273466>,  <35.972713, 35.559242, 28.428736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764130, 35.255295, 28.273466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427874, 0.160733, -0.889432,
		0.738243, -0.629894, 0.241311,
		-0.521461, -0.759868, -0.388175,
		35.607693, 35.027336, 28.157013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524776, 35.220966, 28.048485>,  <35.972713, 35.559242, 28.428736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524776, 35.220966, 28.048485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.169819, 35.108547, 27.902308>,  <35.956844, 35.041096, 27.814602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.169819, 35.108547, 27.902308>,  <36.524776, 35.220966, 28.048485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169819, 35.108547, 27.902308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300645, 0.248151, -0.920888,
		0.349504, -0.927055, -0.135709,
		-0.887389, -0.281054, -0.365444,
		35.903603, 35.024231, 27.792675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669636, 34.798958, 27.435902>,  <36.524776, 35.220966, 28.048485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669636, 34.798958, 27.435902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297054, 34.937695, 27.391895>,  <36.073505, 35.020935, 27.365492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.297054, 34.937695, 27.391895>,  <36.669636, 34.798958, 27.435902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297054, 34.937695, 27.391895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215010, 0.280713, -0.935399,
		-0.293552, -0.894931, -0.336044,
		-0.931449, 0.346841, -0.110015,
		36.017620, 35.041748, 27.358891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357613, 34.472599, 26.842718>,  <36.669636, 34.798958, 27.435902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357613, 34.472599, 26.842718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.118084, 34.792049, 26.866720>,  <35.974365, 34.983719, 26.881121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.118084, 34.792049, 26.866720>,  <36.357613, 34.472599, 26.842718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118084, 34.792049, 26.866720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098200, 0.147578, -0.984163,
		-0.794838, -0.583447, -0.166798,
		-0.598823, 0.798630, 0.060006,
		35.938438, 35.031639, 26.884722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949402, 34.327564, 26.325350>,  <36.357613, 34.472599, 26.842718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949402, 34.327564, 26.325350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.918945, 34.721951, 26.384789>,  <35.900669, 34.958580, 26.420452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.918945, 34.721951, 26.384789>,  <35.949402, 34.327564, 26.325350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918945, 34.721951, 26.384789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081560, 0.154687, -0.984591,
		-0.993756, -0.062850, -0.092193,
		-0.076143, 0.985962, 0.148595,
		35.896103, 35.017738, 26.429367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577412, 34.531372, 25.780771>,  <35.949402, 34.327564, 26.325350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577412, 34.531372, 25.780771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.708382, 34.880848, 25.924690>,  <35.786964, 35.090534, 26.011042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.708382, 34.880848, 25.924690>,  <35.577412, 34.531372, 25.780771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708382, 34.880848, 25.924690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119761, 0.339341, -0.933009,
		-0.937257, 0.348579, 0.006474,
		0.327424, 0.873693, 0.359796,
		35.806610, 35.142956, 26.032629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252296, 35.040508, 25.335669>,  <35.577412, 34.531372, 25.780771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252296, 35.040508, 25.335669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.583351, 35.193817, 25.499676>,  <35.781986, 35.285805, 25.598080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.583351, 35.193817, 25.499676>,  <35.252296, 35.040508, 25.335669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583351, 35.193817, 25.499676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302418, 0.310887, -0.901051,
		-0.472819, 0.869741, 0.141393,
		0.827638, 0.383274, 0.410019,
		35.831642, 35.308800, 25.622681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193600, 35.793377, 25.132889>,  <35.252296, 35.040508, 25.335669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193600, 35.793377, 25.132889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.562233, 35.657261, 25.207609>,  <35.783413, 35.575592, 25.252441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.562233, 35.657261, 25.207609>,  <35.193600, 35.793377, 25.132889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562233, 35.657261, 25.207609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285665, 0.268670, -0.919898,
		0.262846, 0.901120, 0.344810,
		0.921579, -0.340292, 0.186799,
		35.838707, 35.555172, 25.263649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620319, 36.353676, 24.866146>,  <35.193600, 35.793377, 25.132889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620319, 36.353676, 24.866146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.909916, 36.078560, 24.887236>,  <36.083675, 35.913490, 24.899889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.909916, 36.078560, 24.887236>,  <35.620319, 36.353676, 24.866146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909916, 36.078560, 24.887236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307401, 0.253268, -0.917257,
		0.617527, 0.680294, 0.394791,
		0.723993, -0.687790, 0.052723,
		36.127113, 35.872223, 24.903053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308674, 36.667431, 24.642273>,  <35.620319, 36.353676, 24.866146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308674, 36.667431, 24.642273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.372448, 36.275082, 24.597609>,  <36.410713, 36.039673, 24.570810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.372448, 36.275082, 24.597609>,  <36.308674, 36.667431, 24.642273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372448, 36.275082, 24.597609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580396, 0.184631, -0.793128,
		0.798574, 0.061646, 0.598731,
		0.159438, -0.980873, -0.111663,
		36.420280, 35.980820, 24.564110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929260, 36.670048, 24.407858>,  <36.308674, 36.667431, 24.642273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929260, 36.670048, 24.407858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.810043, 36.299709, 24.314922>,  <36.738514, 36.077507, 24.259161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.810043, 36.299709, 24.314922>,  <36.929260, 36.670048, 24.407858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810043, 36.299709, 24.314922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594864, 0.010211, -0.803762,
		0.746532, -0.377762, 0.547709,
		-0.298038, -0.925846, -0.232340,
		36.720631, 36.021954, 24.245220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500427, 36.267082, 24.304121>,  <36.929260, 36.670048, 24.407858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500427, 36.267082, 24.304121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.199020, 36.125042, 24.082809>,  <37.018177, 36.039818, 23.950024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.199020, 36.125042, 24.082809>,  <37.500427, 36.267082, 24.304121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199020, 36.125042, 24.082809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598393, -0.021903, -0.800903,
		0.272281, -0.934572, 0.228993,
		-0.753517, -0.355099, -0.553278,
		36.972965, 36.018513, 23.916826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270325, 36.202557, 24.266081>,  <37.500427, 36.267082, 24.304121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270325, 36.202557, 24.266081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.665791, 36.262600, 24.266829>,  <38.903072, 36.298626, 24.267277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.665791, 36.262600, 24.266829>,  <38.270325, 36.202557, 24.266081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665791, 36.262600, 24.266829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059982, 0.383572, 0.921561,
		0.137620, -0.911229, 0.388229,
		0.988667, 0.150112, 0.001870,
		38.962391, 36.307632, 24.267389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503464, 35.825714, 24.783766>,  <38.270325, 36.202557, 24.266081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503464, 35.825714, 24.783766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792614, 36.092567, 24.711779>,  <38.966103, 36.252678, 24.668587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.792614, 36.092567, 24.711779>,  <38.503464, 35.825714, 24.783766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792614, 36.092567, 24.711779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051583, 0.207621, 0.976848,
		0.689053, -0.715420, 0.115671,
		0.722873, 0.667134, -0.179966,
		39.009476, 36.292709, 24.657789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965504, 35.642227, 25.282640>,  <38.503464, 35.825714, 24.783766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965504, 35.642227, 25.282640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.017876, 36.027050, 25.186890>,  <39.049301, 36.257942, 25.129438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.017876, 36.027050, 25.186890>,  <38.965504, 35.642227, 25.282640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017876, 36.027050, 25.186890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000799, 0.241353, 0.970437,
		0.991391, -0.127254, 0.030833,
		0.130934, 0.962058, -0.239377,
		39.057156, 36.315666, 25.115076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545338, 35.931244, 25.691298>,  <38.965504, 35.642227, 25.282640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545338, 35.931244, 25.691298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.362808, 36.266068, 25.570568>,  <39.253288, 36.466961, 25.498131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.362808, 36.266068, 25.570568>,  <39.545338, 35.931244, 25.691298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362808, 36.266068, 25.570568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124375, 0.395871, 0.909845,
		0.881078, 0.377647, -0.284755,
		-0.456326, 0.837060, -0.301823,
		39.225910, 36.517185, 25.480021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863041, 36.421925, 26.045689>,  <39.545338, 35.931244, 25.691298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863041, 36.421925, 26.045689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.512611, 36.576611, 25.930485>,  <39.302353, 36.669422, 25.861362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.512611, 36.576611, 25.930485>,  <39.863041, 36.421925, 26.045689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512611, 36.576611, 25.930485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104642, 0.430595, 0.896459,
		0.470687, 0.815501, -0.336766,
		-0.876073, 0.386712, -0.288011,
		39.249790, 36.692623, 25.844082>
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
