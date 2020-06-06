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
	<23.996273, 34.720001, 35.179569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.141640, 34.900116, 34.853340>,  <24.228861, 35.008186, 34.657600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.141640, 34.900116, 34.853340>,  <23.996273, 34.720001, 35.179569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.141640, 34.900116, 34.853340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309477, 0.767369, 0.561577,
		0.878721, -0.456489, 0.139522,
		0.363419, 0.450291, -0.815576,
		24.250666, 35.035202, 34.608665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.694130, 34.919395, 35.401619>,  <23.996273, 34.720001, 35.179569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.694130, 34.919395, 35.401619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.531044, 35.148170, 35.116901>,  <24.433191, 35.285435, 34.946072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.531044, 35.148170, 35.116901>,  <24.694130, 34.919395, 35.401619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.531044, 35.148170, 35.116901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232890, 0.818884, 0.524587,
		0.882910, 0.048113, -0.467071,
		-0.407716, 0.571939, -0.711796,
		24.408730, 35.319752, 34.903362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.209829, 35.289711, 34.942299>,  <24.694130, 34.919395, 35.401619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.209829, 35.289711, 34.942299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.868315, 35.480427, 35.025932>,  <24.663406, 35.594856, 35.076111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.868315, 35.480427, 35.025932>,  <25.209829, 35.289711, 34.942299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.868315, 35.480427, 35.025932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511127, 0.691309, 0.510726,
		0.098969, 0.542919, -0.833933,
		-0.853788, 0.476792, 0.209083,
		24.612179, 35.623463, 35.088657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531633, 35.388241, 35.579781>,  <25.209829, 35.289711, 34.942299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531633, 35.388241, 35.579781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819391, 35.275642, 35.325779>,  <25.992046, 35.208084, 35.173378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819391, 35.275642, 35.325779>,  <25.531633, 35.388241, 35.579781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.819391, 35.275642, 35.325779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057815, 0.886760, -0.458599,
		0.692189, 0.366628, 0.621658,
		0.719397, -0.281496, -0.635003,
		26.035210, 35.191193, 35.135277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153397, 35.812206, 35.581669>,  <25.531633, 35.388241, 35.579781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153397, 35.812206, 35.581669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104696, 35.655724, 35.216782>,  <26.075476, 35.561836, 34.997849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.104696, 35.655724, 35.216782>,  <26.153397, 35.812206, 35.581669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104696, 35.655724, 35.216782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105084, 0.908807, -0.403766,
		0.986982, -0.145019, -0.069539,
		-0.121751, -0.391202, -0.912215,
		26.068171, 35.538364, 34.943115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.803032, 35.913944, 36.240784>,  <26.153397, 35.812206, 35.581669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.803032, 35.913944, 36.240784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578894, 36.242271, 36.196465>,  <25.444410, 36.439266, 36.169872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578894, 36.242271, 36.196465>,  <25.803032, 35.913944, 36.240784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.578894, 36.242271, 36.196465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274644, 0.310335, 0.910089,
		0.781399, 0.479535, -0.399327,
		-0.560345, 0.820815, -0.110794,
		25.410789, 36.488518, 36.163227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.278772, 36.412815, 36.293461>,  <25.803032, 35.913944, 36.240784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.278772, 36.412815, 36.293461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920418, 36.564655, 36.385803>,  <25.705406, 36.655762, 36.441208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.920418, 36.564655, 36.385803>,  <26.278772, 36.412815, 36.293461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920418, 36.564655, 36.385803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404209, 0.480737, 0.778143,
		0.184406, 0.790439, -0.584123,
		-0.895885, 0.379602, 0.230852,
		25.651653, 36.678535, 36.455059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293715, 37.138691, 36.199577>,  <26.278772, 36.412815, 36.293461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293715, 37.138691, 36.199577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066772, 36.992920, 36.494957>,  <25.930607, 36.905457, 36.672184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.066772, 36.992920, 36.494957>,  <26.293715, 37.138691, 36.199577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066772, 36.992920, 36.494957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618637, 0.403240, 0.674303,
		-0.543506, 0.839399, -0.003332,
		-0.567353, -0.364426, 0.738447,
		25.896566, 36.883591, 36.716492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289125, 37.630062, 36.602779>,  <26.293715, 37.138691, 36.199577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289125, 37.630062, 36.602779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188021, 37.346085, 36.865715>,  <26.127357, 37.175697, 37.023476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188021, 37.346085, 36.865715>,  <26.289125, 37.630062, 36.602779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188021, 37.346085, 36.865715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712954, 0.322621, 0.622585,
		-0.654070, 0.626019, 0.424608,
		-0.252763, -0.709940, 0.657340,
		26.112192, 37.133102, 37.062916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275110, 37.939384, 37.348248>,  <26.289125, 37.630062, 36.602779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275110, 37.939384, 37.348248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322109, 37.544899, 37.394863>,  <26.350309, 37.308208, 37.422832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322109, 37.544899, 37.394863>,  <26.275110, 37.939384, 37.348248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322109, 37.544899, 37.394863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728479, 0.165348, 0.664815,
		-0.674917, 0.006779, 0.737862,
		0.117497, -0.986212, 0.116535,
		26.357359, 37.249035, 37.429825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375967, 37.849762, 38.119591>,  <26.275110, 37.939384, 37.348248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375967, 37.849762, 38.119591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561478, 37.561913, 37.912880>,  <26.672785, 37.389202, 37.788853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561478, 37.561913, 37.912880>,  <26.375967, 37.849762, 38.119591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561478, 37.561913, 37.912880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757715, 0.019906, 0.652282,
		-0.459108, -0.694083, 0.554498,
		0.463776, -0.719620, -0.516778,
		26.700611, 37.346027, 37.757847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755482, 37.491055, 38.643112>,  <26.375967, 37.849762, 38.119591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755482, 37.491055, 38.643112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898251, 37.368641, 38.290081>,  <26.983912, 37.295193, 38.078262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898251, 37.368641, 38.290081>,  <26.755482, 37.491055, 38.643112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898251, 37.368641, 38.290081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880239, -0.206093, 0.427439,
		-0.312706, -0.929444, 0.195827,
		0.356923, -0.306037, -0.882580,
		27.005327, 37.276829, 38.025307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118010, 36.880795, 38.771355>,  <26.755482, 37.491055, 38.643112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118010, 36.880795, 38.771355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258429, 36.985516, 38.411747>,  <27.342680, 37.048347, 38.195984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258429, 36.985516, 38.411747>,  <27.118010, 36.880795, 38.771355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258429, 36.985516, 38.411747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936347, -0.102601, 0.335748,
		-0.004342, -0.959654, -0.281152,
		0.351048, 0.261798, -0.899014,
		27.363743, 37.064056, 38.142044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632421, 36.376804, 38.484020>,  <27.118010, 36.880795, 38.771355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632421, 36.376804, 38.484020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705778, 36.706524, 38.269772>,  <27.749792, 36.904358, 38.141220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705778, 36.706524, 38.269772>,  <27.632421, 36.376804, 38.484020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705778, 36.706524, 38.269772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969265, -0.060728, 0.238404,
		0.163990, -0.562883, -0.810105,
		0.183390, 0.824302, -0.535625,
		27.760796, 36.953815, 38.109085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139750, 36.291737, 38.031700>,  <27.632421, 36.376804, 38.484020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139750, 36.291737, 38.031700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130610, 36.683372, 38.112553>,  <28.125126, 36.918354, 38.161064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130610, 36.683372, 38.112553>,  <28.139750, 36.291737, 38.031700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130610, 36.683372, 38.112553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994069, 0.000748, 0.108748,
		0.106323, 0.203415, -0.973302,
		-0.022849, 0.979092, 0.202129,
		28.123755, 36.977100, 38.173191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700371, 36.674896, 37.479660>,  <28.139750, 36.291737, 38.031700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700371, 36.674896, 37.479660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.391151, 36.766224, 37.716393>,  <27.205620, 36.821022, 37.858433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.391151, 36.766224, 37.716393>,  <27.700371, 36.674896, 37.479660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391151, 36.766224, 37.716393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634180, -0.256884, -0.729264,
		-0.014473, -0.939085, 0.343379,
		-0.773050, 0.228319, 0.591832,
		27.159237, 36.834721, 37.893944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137211, 36.214931, 37.202946>,  <27.700371, 36.674896, 37.479660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137211, 36.214931, 37.202946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988970, 36.528854, 37.401634>,  <26.900026, 36.717209, 37.520847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988970, 36.528854, 37.401634>,  <27.137211, 36.214931, 37.202946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988970, 36.528854, 37.401634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876526, -0.118650, -0.466502,
		-0.307177, -0.608278, 0.731875,
		-0.370600, 0.784806, 0.496724,
		26.877790, 36.764297, 37.550652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459375, 35.980209, 37.461601>,  <27.137211, 36.214931, 37.202946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459375, 35.980209, 37.461601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429718, 36.378441, 37.484680>,  <26.411924, 36.617378, 37.498528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429718, 36.378441, 37.484680>,  <26.459375, 35.980209, 37.461601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429718, 36.378441, 37.484680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985504, -0.064294, -0.156998,
		-0.152594, -0.068501, 0.985912,
		-0.074142, 0.995577, 0.057698,
		26.407475, 36.677113, 37.501991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887577, 36.154865, 37.913605>,  <26.459375, 35.980209, 37.461601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887577, 36.154865, 37.913605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954994, 36.438950, 37.640198>,  <25.995443, 36.609402, 37.476154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954994, 36.438950, 37.640198>,  <25.887577, 36.154865, 37.913605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954994, 36.438950, 37.640198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886224, -0.194386, -0.420501,
		-0.431510, 0.676621, 0.596643,
		0.168541, 0.710210, -0.683517,
		26.005556, 36.652012, 37.435143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.237396, 36.509155, 37.818130>,  <25.887577, 36.154865, 37.913605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.237396, 36.509155, 37.818130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447372, 36.598736, 37.489670>,  <25.573359, 36.652485, 37.292595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447372, 36.598736, 37.489670>,  <25.237396, 36.509155, 37.818130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447372, 36.598736, 37.489670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839669, -0.021600, -0.542668,
		-0.139266, 0.974362, 0.176704,
		0.524938, 0.223949, -0.821150,
		25.604855, 36.665920, 37.243324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.715771, 36.945175, 37.459000>,  <25.237396, 36.509155, 37.818130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.715771, 36.945175, 37.459000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016043, 36.859009, 37.209175>,  <25.196205, 36.807308, 37.059280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016043, 36.859009, 37.209175>,  <24.715771, 36.945175, 37.459000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.016043, 36.859009, 37.209175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593338, 0.195952, -0.780738,
		0.290567, 0.956660, 0.019283,
		0.750680, -0.215415, -0.624560,
		25.241247, 36.794384, 37.021809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.523556, 37.187920, 36.803181>,  <24.715771, 36.945175, 37.459000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.523556, 37.187920, 36.803181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.868740, 37.018208, 36.693428>,  <25.075850, 36.916378, 36.627575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.868740, 37.018208, 36.693428>,  <24.523556, 37.187920, 36.803181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.868740, 37.018208, 36.693428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302108, 0.002012, -0.953271,
		0.405010, 0.905527, -0.126444,
		0.862959, -0.424284, -0.274382,
		25.127628, 36.890923, 36.611115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.683983, 37.548367, 36.145557>,  <24.523556, 37.187920, 36.803181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.683983, 37.548367, 36.145557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899399, 37.211327, 36.145927>,  <25.028648, 37.009102, 36.146149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899399, 37.211327, 36.145927>,  <24.683983, 37.548367, 36.145557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.899399, 37.211327, 36.145927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279637, -0.179760, -0.943128,
		0.794845, 0.507653, -0.332430,
		0.538540, -0.842600, 0.000923,
		25.060961, 36.958546, 36.146206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245707, 37.501598, 35.600121>,  <24.683983, 37.548367, 36.145557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245707, 37.501598, 35.600121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166059, 37.121620, 35.696415>,  <25.118271, 36.893635, 35.754192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.166059, 37.121620, 35.696415>,  <25.245707, 37.501598, 35.600121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.166059, 37.121620, 35.696415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166071, -0.209395, -0.963626,
		0.965801, -0.231856, -0.116064,
		-0.199120, -0.949945, 0.240739,
		25.106323, 36.836636, 35.768635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653131, 37.008503, 35.205070>,  <25.245707, 37.501598, 35.600121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.653131, 37.008503, 35.205070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302504, 36.849155, 35.313095>,  <25.092127, 36.753548, 35.377911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302504, 36.849155, 35.313095>,  <25.653131, 37.008503, 35.205070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302504, 36.849155, 35.313095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260984, -0.078013, -0.962186,
		0.404370, -0.913903, -0.035583,
		-0.876568, -0.398365, 0.270061,
		25.039534, 36.729645, 35.394112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.591230, 36.270233, 35.097481>,  <25.653131, 37.008503, 35.205070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.591230, 36.270233, 35.097481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272861, 36.501335, 35.025143>,  <25.081841, 36.639996, 34.981739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.272861, 36.501335, 35.025143>,  <25.591230, 36.270233, 35.097481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.272861, 36.501335, 35.025143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063831, -0.216962, -0.974091,
		-0.602023, -0.786845, 0.135806,
		-0.795924, 0.577756, -0.180841,
		25.034084, 36.674664, 34.970890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646267, 35.749550, 34.470703>,  <25.591230, 36.270233, 35.097481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646267, 35.749550, 34.470703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982670, 35.543148, 34.535755>,  <26.184511, 35.419308, 34.574787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.982670, 35.543148, 34.535755>,  <25.646267, 35.749550, 34.470703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.982670, 35.543148, 34.535755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204906, 0.025581, -0.978447,
		0.500723, 0.856204, 0.127246,
		0.841005, -0.516004, 0.162632,
		26.234972, 35.388348, 34.584545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350311, 36.025990, 34.252026>,  <25.646267, 35.749550, 34.470703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350311, 36.025990, 34.252026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342716, 35.638744, 34.152115>,  <26.338160, 35.406395, 34.092167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342716, 35.638744, 34.152115>,  <26.350311, 36.025990, 34.252026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342716, 35.638744, 34.152115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134790, 0.245064, -0.960091,
		0.990692, -0.051896, 0.125840,
		-0.018986, -0.968117, -0.249778,
		26.337021, 35.348309, 34.077183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015978, 35.894341, 33.873985>,  <26.350311, 36.025990, 34.252026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015978, 35.894341, 33.873985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716816, 35.663406, 33.742943>,  <26.537319, 35.524845, 33.664318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716816, 35.663406, 33.742943>,  <27.015978, 35.894341, 33.873985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716816, 35.663406, 33.742943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183450, 0.294533, -0.937868,
		0.637955, -0.761533, -0.114370,
		-0.747903, -0.577337, -0.327602,
		26.492445, 35.490204, 33.644661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258642, 35.334774, 33.345650>,  <27.015978, 35.894341, 33.873985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258642, 35.334774, 33.345650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879721, 35.458435, 33.312096>,  <26.652367, 35.532631, 33.291965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879721, 35.458435, 33.312096>,  <27.258642, 35.334774, 33.345650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879721, 35.458435, 33.312096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173650, 0.275566, -0.945468,
		-0.269180, -0.910213, -0.314730,
		-0.947306, 0.309153, -0.083881,
		26.595530, 35.551182, 33.286930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.240002, 35.487419, 32.656319>,  <27.258642, 35.334774, 33.345650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.240002, 35.487419, 32.656319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888834, 35.675549, 32.692200>,  <26.678133, 35.788425, 32.713730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888834, 35.675549, 32.692200>,  <27.240002, 35.487419, 32.656319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888834, 35.675549, 32.692200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074514, 0.319275, -0.944728,
		-0.472971, -0.822713, -0.315344,
		-0.877921, 0.470327, 0.089705,
		26.625458, 35.816647, 32.719112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.858503, 35.389278, 32.051201>,  <27.240002, 35.487419, 32.656319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.858503, 35.389278, 32.051201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740185, 35.734589, 32.214790>,  <26.669193, 35.941776, 32.312946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740185, 35.734589, 32.214790>,  <26.858503, 35.389278, 32.051201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740185, 35.734589, 32.214790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174374, 0.469737, -0.865414,
		-0.939201, -0.184672, -0.289480,
		-0.295797, 0.863275, 0.408976,
		26.651445, 35.993572, 32.337482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214033, 35.626385, 31.654293>,  <26.858503, 35.389278, 32.051201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214033, 35.626385, 31.654293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433386, 35.904621, 31.839954>,  <26.564997, 36.071564, 31.951351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433386, 35.904621, 31.839954>,  <26.214033, 35.626385, 31.654293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433386, 35.904621, 31.839954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152765, 0.462382, -0.873422,
		-0.822156, 0.549875, 0.147300,
		0.548381, 0.695587, 0.464152,
		26.597900, 36.113297, 31.979200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929560, 36.391293, 31.503880>,  <26.214033, 35.626385, 31.654293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929560, 36.391293, 31.503880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316763, 36.318550, 31.573036>,  <26.549084, 36.274906, 31.614531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316763, 36.318550, 31.573036>,  <25.929560, 36.391293, 31.503880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316763, 36.318550, 31.573036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250878, 0.687930, -0.681038,
		0.004912, 0.702624, 0.711544,
		0.968006, -0.181855, 0.172894,
		26.607164, 36.263992, 31.624905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.174801, 36.999748, 31.757017>,  <25.929560, 36.391293, 31.503880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.174801, 36.999748, 31.757017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455830, 36.772888, 31.585094>,  <26.624447, 36.636772, 31.481941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455830, 36.772888, 31.585094>,  <26.174801, 36.999748, 31.757017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455830, 36.772888, 31.585094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187822, 0.730362, -0.656730,
		0.686378, 0.380673, 0.619656,
		0.702572, -0.567150, -0.429806,
		26.666601, 36.602745, 31.456152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786692, 37.342407, 31.762564>,  <26.174801, 36.999748, 31.757017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786692, 37.342407, 31.762564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804266, 37.076138, 31.464584>,  <26.814810, 36.916378, 31.285797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804266, 37.076138, 31.464584>,  <26.786692, 37.342407, 31.762564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804266, 37.076138, 31.464584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195253, 0.737011, -0.647063,
		0.979768, -0.117024, 0.162356,
		0.043936, -0.665672, -0.744950,
		26.817446, 36.876434, 31.241100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573542, 37.348392, 32.499687>,  <26.786692, 37.342407, 31.762564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573542, 37.348392, 32.499687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580484, 36.988659, 32.324921>,  <26.584650, 36.772820, 32.220058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580484, 36.988659, 32.324921>,  <26.573542, 37.348392, 32.499687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580484, 36.988659, 32.324921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479956, -0.390843, 0.785419,
		-0.877120, 0.196069, -0.438425,
		0.017359, -0.899333, -0.436921,
		26.585691, 36.718861, 32.193844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125736, 36.981804, 32.878078>,  <26.573542, 37.348392, 32.499687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125736, 36.981804, 32.878078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265244, 36.666378, 32.675484>,  <26.348948, 36.477123, 32.553925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265244, 36.666378, 32.675484>,  <26.125736, 36.981804, 32.878078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265244, 36.666378, 32.675484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373666, -0.612613, 0.696476,
		-0.859496, -0.053651, -0.508319,
		0.348769, -0.788560, -0.506491,
		26.369875, 36.429810, 32.523537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623434, 36.603622, 32.950802>,  <26.125736, 36.981804, 32.878078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623434, 36.603622, 32.950802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927650, 36.357300, 32.868473>,  <26.110180, 36.209507, 32.819077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927650, 36.357300, 32.868473>,  <25.623434, 36.603622, 32.950802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927650, 36.357300, 32.868473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353971, -0.658979, 0.663665,
		-0.544317, -0.431891, -0.719159,
		0.760542, -0.615806, -0.205816,
		26.155813, 36.172558, 32.806728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.284473, 35.894260, 32.770603>,  <25.623434, 36.603622, 32.950802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.284473, 35.894260, 32.770603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.661385, 35.873817, 32.902966>,  <25.887531, 35.861549, 32.982384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.661385, 35.873817, 32.902966>,  <25.284473, 35.894260, 32.770603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.661385, 35.873817, 32.902966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242516, -0.785589, 0.569241,
		0.230865, -0.616634, -0.752638,
		0.942278, -0.051109, 0.330908,
		25.944069, 35.858486, 33.002239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329802, 35.168156, 32.829323>,  <25.284473, 35.894260, 32.770603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.329802, 35.168156, 32.829323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671446, 35.299595, 32.990578>,  <25.876432, 35.378460, 33.087330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.671446, 35.299595, 32.990578>,  <25.329802, 35.168156, 32.829323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.671446, 35.299595, 32.990578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099580, -0.864105, 0.493363,
		0.510471, -0.381242, -0.770762,
		0.854110, 0.328600, 0.403136,
		25.927679, 35.398174, 33.111519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839115, 34.566975, 33.003826>,  <25.329802, 35.168156, 32.829323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.839115, 34.566975, 33.003826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994329, 34.849674, 33.240448>,  <26.087458, 35.019295, 33.382420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994329, 34.849674, 33.240448>,  <25.839115, 34.566975, 33.003826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994329, 34.849674, 33.240448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257635, -0.699439, 0.666641,
		0.884902, -0.106276, -0.453490,
		0.388036, 0.706747, 0.591555,
		26.110741, 35.061699, 33.417915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575573, 34.499866, 33.218624>,  <25.839115, 34.566975, 33.003826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575573, 34.499866, 33.218624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.375603, 34.675957, 33.516960>,  <26.255621, 34.781612, 33.695961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.375603, 34.675957, 33.516960>,  <26.575573, 34.499866, 33.218624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375603, 34.675957, 33.516960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237016, -0.758755, 0.606724,
		0.833005, 0.480092, 0.274979,
		-0.499926, 0.440230, 0.745837,
		26.225626, 34.808025, 33.740711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873703, 34.184879, 33.752266>,  <26.575573, 34.499866, 33.218624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873703, 34.184879, 33.752266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.579504, 34.384460, 33.935608>,  <26.402985, 34.504211, 34.045612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.579504, 34.384460, 33.935608>,  <26.873703, 34.184879, 33.752266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.579504, 34.384460, 33.935608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191164, -0.496197, 0.846903,
		0.650002, 0.710514, 0.269567,
		-0.735495, 0.498958, 0.458354,
		26.358856, 34.534149, 34.073112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205637, 34.466400, 34.309685>,  <26.873703, 34.184879, 33.752266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205637, 34.466400, 34.309685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819391, 34.393986, 34.384323>,  <26.587645, 34.350536, 34.429108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.819391, 34.393986, 34.384323>,  <27.205637, 34.466400, 34.309685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.819391, 34.393986, 34.384323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247699, -0.422566, 0.871827,
		-0.078985, 0.888067, 0.452878,
		-0.965612, -0.181038, 0.186597,
		26.529707, 34.339676, 34.440304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535036, 34.421654, 34.937981>,  <27.205637, 34.466400, 34.309685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535036, 34.421654, 34.937981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565710, 34.051083, 34.790546>,  <27.584114, 33.828739, 34.702087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565710, 34.051083, 34.790546>,  <27.535036, 34.421654, 34.937981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565710, 34.051083, 34.790546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997032, 0.073773, 0.022004,
		0.006806, -0.369175, 0.929335,
		0.076683, -0.926427, -0.368582,
		27.588715, 33.773155, 34.679974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786402, 33.937927, 35.425270>,  <27.535036, 34.421654, 34.937981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786402, 33.937927, 35.425270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889544, 33.884319, 35.042534>,  <27.951429, 33.852154, 34.812893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889544, 33.884319, 35.042534>,  <27.786402, 33.937927, 35.425270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889544, 33.884319, 35.042534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911518, 0.362136, 0.194916,
		0.320384, -0.922440, 0.215544,
		0.257855, -0.134024, -0.956843,
		27.966900, 33.844112, 34.755482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343399, 33.387512, 35.399258>,  <27.786402, 33.937927, 35.425270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343399, 33.387512, 35.399258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360371, 33.639404, 35.088997>,  <28.370554, 33.790539, 34.902840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.360371, 33.639404, 35.088997>,  <28.343399, 33.387512, 35.399258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360371, 33.639404, 35.088997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912881, 0.291057, 0.286240,
		0.406014, -0.720222, -0.562523,
		0.042430, 0.629734, -0.775651,
		28.373100, 33.828323, 34.856300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880205, 33.290176, 35.092335>,  <28.343399, 33.387512, 35.399258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880205, 33.290176, 35.092335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794813, 33.677124, 35.037758>,  <28.743578, 33.909294, 35.005013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794813, 33.677124, 35.037758>,  <28.880205, 33.290176, 35.092335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794813, 33.677124, 35.037758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880906, 0.250995, 0.401257,
		0.422411, -0.034534, -0.905746,
		-0.213481, 0.967372, -0.136444,
		28.730768, 33.967335, 34.996826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466795, 33.570271, 34.774067>,  <28.880205, 33.290176, 35.092335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466795, 33.570271, 34.774067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.264330, 33.855820, 34.967636>,  <29.142851, 34.027149, 35.083778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.264330, 33.855820, 34.967636>,  <29.466795, 33.570271, 34.774067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.264330, 33.855820, 34.967636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861651, 0.394634, 0.319096,
		0.036824, 0.578485, -0.814862,
		-0.506164, 0.713876, 0.483920,
		29.112480, 34.069984, 35.112812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175154, 33.887978, 34.650486>,  <29.466795, 33.570271, 34.774067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175154, 33.887978, 34.650486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142879, 33.623867, 34.949158>,  <30.123514, 33.465401, 35.128361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142879, 33.623867, 34.949158>,  <30.175154, 33.887978, 34.650486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142879, 33.623867, 34.949158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182167, -0.726733, -0.662325,
		0.979951, -0.189461, -0.061642,
		-0.080688, -0.660276, 0.746677,
		30.118673, 33.425785, 35.173161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718071, 33.328434, 34.645367>,  <30.175154, 33.887978, 34.650486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718071, 33.328434, 34.645367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381453, 33.188587, 34.810085>,  <30.179482, 33.104679, 34.908916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381453, 33.188587, 34.810085>,  <30.718071, 33.328434, 34.645367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381453, 33.188587, 34.810085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007113, -0.755075, -0.655600,
		0.540142, -0.554646, 0.632942,
		-0.841544, -0.349615, 0.411793,
		30.128990, 33.083702, 34.933624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786982, 32.574772, 34.832989>,  <30.718071, 33.328434, 34.645367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786982, 32.574772, 34.832989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398928, 32.619972, 34.747135>,  <30.166096, 32.647095, 34.695625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398928, 32.619972, 34.747135>,  <30.786982, 32.574772, 34.832989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398928, 32.619972, 34.747135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133830, -0.488614, -0.862175,
		-0.202299, -0.865152, 0.458899,
		-0.970136, 0.113003, -0.214629,
		30.107887, 32.653873, 34.682747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338028, 31.893450, 34.614407>,  <30.786982, 32.574772, 34.832989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338028, 31.893450, 34.614407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248224, 32.247288, 34.450901>,  <30.194342, 32.459591, 34.352798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248224, 32.247288, 34.450901>,  <30.338028, 31.893450, 34.614407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248224, 32.247288, 34.450901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248284, -0.353704, -0.901803,
		-0.942312, -0.303952, -0.140222,
		-0.224507, 0.884594, -0.408765,
		30.180872, 32.512665, 34.328270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787020, 31.852768, 34.086197>,  <30.338028, 31.893450, 34.614407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787020, 31.852768, 34.086197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064676, 32.132530, 34.018078>,  <30.231270, 32.300388, 33.977207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064676, 32.132530, 34.018078>,  <29.787020, 31.852768, 34.086197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064676, 32.132530, 34.018078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356596, -0.539609, -0.762667,
		-0.625307, 0.468671, -0.623970,
		0.694140, 0.699406, -0.170295,
		30.272919, 32.342354, 33.966988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625139, 32.190189, 33.411541>,  <29.787020, 31.852768, 34.086197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625139, 32.190189, 33.411541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010040, 32.212971, 33.517994>,  <30.240980, 32.226639, 33.581867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.010040, 32.212971, 33.517994>,  <29.625139, 32.190189, 33.411541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010040, 32.212971, 33.517994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266846, -0.389677, -0.881445,
		0.053506, 0.919189, -0.390165,
		0.962253, 0.056951, 0.266132,
		30.298716, 32.230057, 33.597832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914858, 32.433941, 32.877819>,  <29.625139, 32.190189, 33.411541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914858, 32.433941, 32.877819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241980, 32.296604, 33.062561>,  <30.438251, 32.214203, 33.173409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241980, 32.296604, 33.062561>,  <29.914858, 32.433941, 32.877819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241980, 32.296604, 33.062561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085617, -0.721018, -0.687606,
		0.569094, 0.601869, -0.560255,
		0.817803, -0.343345, 0.461858,
		30.487320, 32.193600, 33.201118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187431, 32.032436, 32.364918>,  <29.914858, 32.433941, 32.877819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187431, 32.032436, 32.364918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404640, 31.935110, 32.686394>,  <30.534966, 31.876715, 32.879280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404640, 31.935110, 32.686394>,  <30.187431, 32.032436, 32.364918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404640, 31.935110, 32.686394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309927, -0.831452, -0.461122,
		0.780429, 0.499487, -0.376088,
		0.543024, -0.243313, 0.803694,
		30.567547, 31.862116, 32.927502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826014, 31.982601, 32.074928>,  <30.187431, 32.032436, 32.364918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826014, 31.982601, 32.074928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798994, 31.754507, 32.402409>,  <30.782782, 31.617651, 32.598896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798994, 31.754507, 32.402409>,  <30.826014, 31.982601, 32.074928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798994, 31.754507, 32.402409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225701, -0.808034, -0.544188,
		0.971852, 0.148022, 0.183285,
		-0.067549, -0.570238, 0.818698,
		30.778728, 31.583435, 32.648018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350210, 31.503641, 32.163864>,  <30.826014, 31.982601, 32.074928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350210, 31.503641, 32.163864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010592, 31.362213, 32.320889>,  <30.806820, 31.277355, 32.415104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010592, 31.362213, 32.320889>,  <31.350210, 31.503641, 32.163864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010592, 31.362213, 32.320889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047830, -0.688553, -0.723607,
		0.526149, -0.633152, 0.567703,
		-0.849046, -0.353572, 0.392565,
		30.755878, 31.256142, 32.438660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307011, 30.663982, 32.396255>,  <31.350210, 31.503641, 32.163864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307011, 30.663982, 32.396255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975010, 30.851377, 32.275181>,  <30.775810, 30.963814, 32.202538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975010, 30.851377, 32.275181>,  <31.307011, 30.663982, 32.396255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975010, 30.851377, 32.275181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129915, -0.690132, -0.711927,
		-0.542422, -0.551576, 0.633674,
		-0.830001, 0.468488, -0.302685,
		30.726009, 30.991924, 32.184376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122940, 31.033381, 33.035698>,  <31.307011, 30.663982, 32.396255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122940, 31.033381, 33.035698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479931, 30.860249, 33.086514>,  <31.694126, 30.756369, 33.117004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479931, 30.860249, 33.086514>,  <31.122940, 31.033381, 33.035698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479931, 30.860249, 33.086514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172051, 0.586965, 0.791120,
		-0.416988, -0.684201, 0.598323,
		0.892479, -0.432830, 0.127040,
		31.747675, 30.730400, 33.124626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986645, 31.324720, 33.685219>,  <31.122940, 31.033381, 33.035698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986645, 31.324720, 33.685219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997915, 31.585243, 33.381901>,  <31.004677, 31.741556, 33.199909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997915, 31.585243, 33.381901>,  <30.986645, 31.324720, 33.685219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997915, 31.585243, 33.381901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222061, 0.743717, 0.630535,
		0.974626, 0.150621, 0.165584,
		0.028176, 0.651305, -0.758292,
		31.006369, 31.780634, 33.154411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590517, 31.871687, 33.814899>,  <30.986645, 31.324720, 33.685219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590517, 31.871687, 33.814899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257679, 31.965887, 33.614040>,  <31.057976, 32.022408, 33.493523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257679, 31.965887, 33.614040>,  <31.590517, 31.871687, 33.814899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257679, 31.965887, 33.614040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146162, 0.780267, 0.608128,
		0.535026, 0.579417, -0.614836,
		-0.832096, 0.235499, -0.502152,
		31.008051, 32.036537, 33.463394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558146, 32.547165, 33.856895>,  <31.590517, 31.871687, 33.814899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558146, 32.547165, 33.856895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181467, 32.443687, 33.770840>,  <30.955460, 32.381599, 33.719204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181467, 32.443687, 33.770840>,  <31.558146, 32.547165, 33.856895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181467, 32.443687, 33.770840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330924, 0.596512, 0.731206,
		-0.060827, 0.759769, -0.647342,
		-0.941695, -0.258698, -0.215142,
		30.898958, 32.366077, 33.706299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222605, 33.197807, 33.803070>,  <31.558146, 32.547165, 33.856895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222605, 33.197807, 33.803070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929094, 32.932938, 33.863865>,  <30.752989, 32.774017, 33.900341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929094, 32.932938, 33.863865>,  <31.222605, 33.197807, 33.803070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929094, 32.932938, 33.863865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351263, 0.561248, 0.749410,
		-0.581541, 0.496512, -0.644427,
		-0.733774, -0.662176, 0.151983,
		30.708961, 32.734283, 33.909458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568928, 33.838787, 33.911854>,  <31.222605, 33.197807, 33.803070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568928, 33.838787, 33.911854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824148, 33.567562, 33.765915>,  <31.977282, 33.404827, 33.678352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824148, 33.567562, 33.765915>,  <31.568928, 33.838787, 33.911854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824148, 33.567562, 33.765915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061735, -0.427262, 0.902017,
		-0.767514, -0.598058, -0.230755,
		0.638052, -0.678065, -0.364851,
		32.015564, 33.364143, 33.656460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927158, 34.514687, 33.921368>,  <31.568928, 33.838787, 33.911854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927158, 34.514687, 33.921368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984552, 34.758804, 33.609737>,  <32.018990, 34.905273, 33.422760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984552, 34.758804, 33.609737>,  <31.927158, 34.514687, 33.921368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984552, 34.758804, 33.609737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422336, -0.749698, -0.509496,
		-0.895011, -0.255927, -0.365317,
		0.143484, 0.610291, -0.779075,
		32.027599, 34.941891, 33.376015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565031, 34.235783, 33.314121>,  <31.927158, 34.514687, 33.921368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565031, 34.235783, 33.314121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869268, 34.474415, 33.211678>,  <32.051811, 34.617596, 33.150211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869268, 34.474415, 33.211678>,  <31.565031, 34.235783, 33.314121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869268, 34.474415, 33.211678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360424, -0.716114, -0.597725,
		-0.539995, 0.362317, -0.759692,
		0.760592, 0.596579, -0.256110,
		32.097446, 34.653389, 33.134846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477375, 34.312302, 32.609379>,  <31.565031, 34.235783, 33.314121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477375, 34.312302, 32.609379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856424, 34.418217, 32.680820>,  <32.083855, 34.481766, 32.723686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856424, 34.418217, 32.680820>,  <31.477375, 34.312302, 32.609379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856424, 34.418217, 32.680820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309898, -0.626909, -0.714806,
		-0.077301, 0.732716, -0.676130,
		0.947622, 0.264786, 0.178607,
		32.140713, 34.497654, 32.734402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759241, 34.495140, 31.932491>,  <31.477375, 34.312302, 32.609379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759241, 34.495140, 31.932491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059284, 34.392605, 32.176338>,  <32.239311, 34.331085, 32.322647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059284, 34.392605, 32.176338>,  <31.759241, 34.495140, 31.932491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059284, 34.392605, 32.176338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382903, -0.583244, -0.716388,
		0.539191, 0.770791, -0.339344,
		0.750106, -0.256334, 0.609618,
		32.284317, 34.315704, 32.359222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338055, 34.509556, 31.441448>,  <31.759241, 34.495140, 31.932491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338055, 34.509556, 31.441448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440910, 34.308075, 31.771338>,  <32.502625, 34.187187, 31.969271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440910, 34.308075, 31.771338>,  <32.338055, 34.509556, 31.441448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440910, 34.308075, 31.771338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488715, -0.668462, -0.560639,
		0.833689, 0.547215, 0.074279,
		0.257138, -0.503700, 0.824722,
		32.518051, 34.156963, 32.018753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044136, 34.407055, 31.265327>,  <32.338055, 34.509556, 31.441448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044136, 34.407055, 31.265327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946579, 34.150352, 31.556166>,  <32.888046, 33.996330, 31.730669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946579, 34.150352, 31.556166>,  <33.044136, 34.407055, 31.265327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946579, 34.150352, 31.556166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325646, -0.760395, -0.561920,
		0.913495, 0.099729, 0.394438,
		-0.243889, -0.641758, 0.727093,
		32.873413, 33.957825, 31.774294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652870, 34.106178, 31.468184>,  <33.044136, 34.407055, 31.265327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652870, 34.106178, 31.468184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361683, 33.848480, 31.561996>,  <33.186970, 33.693859, 31.618284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361683, 33.848480, 31.561996>,  <33.652870, 34.106178, 31.468184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361683, 33.848480, 31.561996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454096, -0.709356, -0.539084,
		0.513671, -0.285936, 0.808939,
		-0.727969, -0.644248, 0.234533,
		33.143291, 33.655205, 31.632357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000900, 33.463768, 31.660124>,  <33.652870, 34.106178, 31.468184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000900, 33.463768, 31.660124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620712, 33.353344, 31.602982>,  <33.392601, 33.287090, 31.568695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620712, 33.353344, 31.602982>,  <34.000900, 33.463768, 31.660124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620712, 33.353344, 31.602982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310813, -0.839189, -0.446270,
		0.003312, -0.468566, 0.883422,
		-0.950465, -0.276057, -0.142857,
		33.335571, 33.270527, 31.560123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979237, 32.782921, 31.669477>,  <34.000900, 33.463768, 31.660124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979237, 32.782921, 31.669477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638855, 32.860523, 31.474236>,  <33.434628, 32.907085, 31.357090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638855, 32.860523, 31.474236>,  <33.979237, 32.782921, 31.669477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638855, 32.860523, 31.474236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141292, -0.810482, -0.568468,
		-0.505884, -0.552703, 0.662269,
		-0.850951, 0.194005, -0.488103,
		33.383568, 32.918724, 31.327805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418331, 32.309624, 31.889738>,  <33.979237, 32.782921, 31.669477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418331, 32.309624, 31.889738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345879, 32.451729, 31.522919>,  <33.302406, 32.536991, 31.302826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345879, 32.451729, 31.522919>,  <33.418331, 32.309624, 31.889738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345879, 32.451729, 31.522919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029573, -0.934020, -0.355995,
		-0.983014, -0.037362, 0.179685,
		-0.181130, 0.355262, -0.917050,
		33.291538, 32.558308, 31.247803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972069, 31.855505, 31.652275>,  <33.418331, 32.309624, 31.889738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972069, 31.855505, 31.652275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102901, 32.023083, 31.313452>,  <33.181400, 32.123631, 31.110159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102901, 32.023083, 31.313452>,  <32.972069, 31.855505, 31.652275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102901, 32.023083, 31.313452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080291, -0.880797, -0.466637,
		-0.941580, 0.220637, -0.254451,
		0.327077, 0.418946, -0.847056,
		33.201023, 32.148766, 31.059336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731140, 31.430891, 31.202440>,  <32.972069, 31.855505, 31.652275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731140, 31.430891, 31.202440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993046, 31.624575, 30.970293>,  <33.150188, 31.740784, 30.831005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993046, 31.624575, 30.970293>,  <32.731140, 31.430891, 31.202440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993046, 31.624575, 30.970293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095656, -0.814763, -0.571849,
		-0.749756, 0.318910, -0.579795,
		0.654764, 0.484208, -0.580368,
		33.189476, 31.769836, 30.796183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461376, 31.575985, 30.474276>,  <32.731140, 31.430891, 31.202440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461376, 31.575985, 30.474276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859810, 31.568085, 30.439816>,  <33.098869, 31.563345, 30.419140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.859810, 31.568085, 30.439816>,  <32.461376, 31.575985, 30.474276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.859810, 31.568085, 30.439816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082191, -0.565520, -0.820629,
		-0.032511, 0.824498, -0.564930,
		0.996086, -0.019752, -0.086152,
		33.158634, 31.562159, 30.413969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611458, 31.514919, 29.854683>,  <32.461376, 31.575985, 30.474276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611458, 31.514919, 29.854683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990028, 31.435207, 29.956320>,  <33.217171, 31.387381, 30.017302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990028, 31.435207, 29.956320>,  <32.611458, 31.514919, 29.854683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990028, 31.435207, 29.956320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068088, -0.646027, -0.760272,
		0.315659, 0.736842, -0.597849,
		0.946427, -0.199280, 0.254094,
		33.273956, 31.375423, 30.032549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063416, 31.666422, 29.343487>,  <32.611458, 31.514919, 29.854683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063416, 31.666422, 29.343487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251926, 31.391600, 29.564705>,  <33.365032, 31.226707, 29.697435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251926, 31.391600, 29.564705>,  <33.063416, 31.666422, 29.343487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251926, 31.391600, 29.564705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097161, -0.663669, -0.741689,
		0.876619, 0.295805, -0.379525,
		0.471274, -0.687054, 0.553044,
		33.393311, 31.185484, 29.730618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644077, 31.437613, 28.917053>,  <33.063416, 31.666422, 29.343487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644077, 31.437613, 28.917053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568897, 31.151697, 29.186499>,  <33.523788, 30.980148, 29.348166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568897, 31.151697, 29.186499>,  <33.644077, 31.437613, 28.917053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568897, 31.151697, 29.186499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123167, -0.663269, -0.738176,
		0.974425, -0.221707, 0.036623,
		-0.187950, -0.714787, 0.673613,
		33.512512, 30.937262, 29.388582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195801, 30.856251, 28.793398>,  <33.644077, 31.437613, 28.917053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195801, 30.856251, 28.793398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875866, 30.693449, 28.969856>,  <33.683907, 30.595768, 29.075731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875866, 30.693449, 28.969856>,  <34.195801, 30.856251, 28.793398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875866, 30.693449, 28.969856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055753, -0.782176, -0.620558,
		0.597626, -0.471748, 0.648303,
		-0.799835, -0.407006, 0.441147,
		33.635914, 30.571348, 29.102200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298843, 30.195744, 28.692429>,  <34.195801, 30.856251, 28.793398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298843, 30.195744, 28.692429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917397, 30.166628, 28.809271>,  <33.688530, 30.149158, 28.879375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917397, 30.166628, 28.809271>,  <34.298843, 30.195744, 28.692429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917397, 30.166628, 28.809271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136436, -0.760448, -0.634904,
		0.268343, -0.645306, 0.715242,
		-0.953613, -0.072788, 0.292104,
		33.631313, 30.144793, 28.896902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173626, 29.532021, 28.986172>,  <34.298843, 30.195744, 28.692429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173626, 29.532021, 28.986172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828415, 29.680021, 28.848600>,  <33.621288, 29.768822, 28.766058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828415, 29.680021, 28.848600>,  <34.173626, 29.532021, 28.986172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828415, 29.680021, 28.848600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191749, -0.869812, -0.454598,
		-0.467357, -0.326381, 0.821616,
		-0.863024, 0.370003, -0.343930,
		33.569508, 29.791023, 28.745420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713448, 28.997673, 28.976992>,  <34.173626, 29.532021, 28.986172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713448, 28.997673, 28.976992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481026, 29.263859, 28.789576>,  <33.341572, 29.423571, 28.677126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481026, 29.263859, 28.789576>,  <33.713448, 28.997673, 28.976992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481026, 29.263859, 28.789576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368319, -0.728383, -0.577754,
		-0.725718, -0.163174, 0.668362,
		-0.581098, 0.665457, -0.468501,
		33.306709, 29.463499, 28.649014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056057, 28.677790, 28.781870>,  <33.713448, 28.997673, 28.976992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056057, 28.677790, 28.781870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089542, 28.983324, 28.525888>,  <33.109634, 29.166645, 28.372299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089542, 28.983324, 28.525888>,  <33.056057, 28.677790, 28.781870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089542, 28.983324, 28.525888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223579, -0.611438, -0.759049,
		-0.971084, 0.206627, 0.119590,
		0.083718, 0.763838, -0.639955,
		33.114658, 29.212475, 28.333902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436878, 28.778265, 28.380959>,  <33.056057, 28.677790, 28.781870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436878, 28.778265, 28.380959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724056, 28.945715, 28.158499>,  <32.896362, 29.046185, 28.025023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724056, 28.945715, 28.158499>,  <32.436878, 28.778265, 28.380959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724056, 28.945715, 28.158499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329795, -0.499035, -0.801374,
		-0.613015, 0.758760, -0.220220,
		0.717947, 0.418626, -0.556151,
		32.939442, 29.071302, 27.991653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161110, 28.623398, 27.747301>,  <32.436878, 28.778265, 28.380959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161110, 28.623398, 27.747301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541630, 28.719774, 27.670391>,  <32.769943, 28.777599, 27.624245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541630, 28.719774, 27.670391>,  <32.161110, 28.623398, 27.747301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541630, 28.719774, 27.670391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074914, -0.424349, -0.902395,
		-0.299016, 0.872855, -0.385634,
		0.951303, 0.240941, -0.192276,
		32.827023, 28.792057, 27.612709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143627, 28.743256, 27.074373>,  <32.161110, 28.623398, 27.747301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143627, 28.743256, 27.074373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538609, 28.714930, 27.130817>,  <32.775597, 28.697933, 27.164684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538609, 28.714930, 27.130817>,  <32.143627, 28.743256, 27.074373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538609, 28.714930, 27.130817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089915, -0.482419, -0.871313,
		0.129777, 0.873073, -0.470001,
		0.987458, -0.070817, 0.141110,
		32.834846, 28.693686, 27.173151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464916, 28.934574, 26.469326>,  <32.143627, 28.743256, 27.074373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464916, 28.934574, 26.469326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750496, 28.713661, 26.641495>,  <32.921844, 28.581114, 26.744795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.750496, 28.713661, 26.641495>,  <32.464916, 28.934574, 26.469326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750496, 28.713661, 26.641495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261283, -0.360177, -0.895547,
		0.649621, 0.751837, -0.112847,
		0.713950, -0.552281, 0.430421,
		32.964680, 28.547977, 26.770620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006916, 28.938610, 25.975544>,  <32.464916, 28.934574, 26.469326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006916, 28.938610, 25.975544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077961, 28.630672, 26.220751>,  <33.120586, 28.445910, 26.367876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077961, 28.630672, 26.220751>,  <33.006916, 28.938610, 25.975544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077961, 28.630672, 26.220751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388429, -0.517506, -0.762437,
		0.904200, 0.373529, 0.207117,
		0.177608, -0.769846, 0.613019,
		33.131245, 28.399719, 26.404657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685520, 28.753105, 25.945852>,  <33.006916, 28.938610, 25.975544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685520, 28.753105, 25.945852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483799, 28.431395, 26.071598>,  <33.362766, 28.238369, 26.147045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.483799, 28.431395, 26.071598>,  <33.685520, 28.753105, 25.945852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483799, 28.431395, 26.071598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353364, -0.524373, -0.774704,
		0.787919, -0.279599, 0.548643,
		-0.504300, -0.804275, 0.314364,
		33.332508, 28.190113, 26.165907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146580, 28.207901, 25.753136>,  <33.685520, 28.753105, 25.945852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146580, 28.207901, 25.753136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786407, 28.040705, 25.801304>,  <33.570305, 27.940386, 25.830206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786407, 28.040705, 25.801304>,  <34.146580, 28.207901, 25.753136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786407, 28.040705, 25.801304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168974, -0.591200, -0.788625,
		0.400832, -0.689757, 0.602967,
		-0.900434, -0.417992, 0.120421,
		33.516277, 27.915308, 25.837431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276646, 27.537619, 25.474892>,  <34.146580, 28.207901, 25.753136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276646, 27.537619, 25.474892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879791, 27.587677, 25.474607>,  <33.641678, 27.617712, 25.474438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879791, 27.587677, 25.474607>,  <34.276646, 27.537619, 25.474892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879791, 27.587677, 25.474607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069601, -0.556477, -0.827942,
		-0.104007, -0.821384, 0.560813,
		-0.992138, 0.125145, -0.000708,
		33.582150, 27.625221, 25.474396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969616, 26.860243, 25.323689>,  <34.276646, 27.537619, 25.474892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969616, 26.860243, 25.323689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709976, 27.146051, 25.219284>,  <33.554192, 27.317535, 25.156641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709976, 27.146051, 25.219284>,  <33.969616, 26.860243, 25.323689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709976, 27.146051, 25.219284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077036, -0.403100, -0.911908,
		-0.756790, -0.571814, 0.316697,
		-0.649102, 0.714520, -0.261011,
		33.515244, 27.360407, 25.140980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475693, 26.615194, 24.920403>,  <33.969616, 26.860243, 25.323689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475693, 26.615194, 24.920403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390808, 26.996683, 24.835192>,  <33.339878, 27.225576, 24.784065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390808, 26.996683, 24.835192>,  <33.475693, 26.615194, 24.920403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390808, 26.996683, 24.835192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098459, -0.237751, -0.966323,
		-0.972252, -0.184087, 0.144355,
		-0.212208, 0.953722, -0.213029,
		33.327145, 27.282801, 24.771282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885460, 26.603247, 24.375294>,  <33.475693, 26.615194, 24.920403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885460, 26.603247, 24.375294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063416, 26.961241, 24.362179>,  <33.170189, 27.176037, 24.354309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063416, 26.961241, 24.362179>,  <32.885460, 26.603247, 24.375294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063416, 26.961241, 24.362179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004579, -0.034335, -0.999400,
		-0.895574, 0.444772, -0.011177,
		0.444889, 0.894985, -0.032787,
		33.196880, 27.229736, 24.352343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584000, 27.007290, 23.762466>,  <32.885460, 26.603247, 24.375294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584000, 27.007290, 23.762466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935509, 27.174442, 23.854664>,  <33.146416, 27.274734, 23.909983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935509, 27.174442, 23.854664>,  <32.584000, 27.007290, 23.762466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935509, 27.174442, 23.854664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176208, 0.164735, -0.970470,
		-0.443513, 0.893441, 0.071131,
		0.878776, 0.417882, 0.230494,
		33.199142, 27.299807, 23.923813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621544, 27.531887, 23.308746>,  <32.584000, 27.007290, 23.762466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621544, 27.531887, 23.308746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000935, 27.482670, 23.425539>,  <33.228569, 27.453140, 23.495615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000935, 27.482670, 23.425539>,  <32.621544, 27.531887, 23.308746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000935, 27.482670, 23.425539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307976, 0.141465, -0.940818,
		0.074457, 0.982267, 0.172070,
		0.948476, -0.123044, 0.291981,
		33.285477, 27.445757, 23.513134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034779, 28.170420, 23.179726>,  <32.621544, 27.531887, 23.308746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034779, 28.170420, 23.179726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259823, 27.840637, 23.155264>,  <33.394848, 27.642767, 23.140587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259823, 27.840637, 23.155264>,  <33.034779, 28.170420, 23.179726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259823, 27.840637, 23.155264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277817, 0.258215, -0.925280,
		0.778645, 0.503582, 0.374323,
		0.562610, -0.824457, -0.061155,
		33.428604, 27.593300, 23.136917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590790, 28.404814, 22.825737>,  <33.034779, 28.170420, 23.179726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590790, 28.404814, 22.825737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654625, 28.012684, 22.779272>,  <33.692928, 27.777407, 22.751392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654625, 28.012684, 22.779272>,  <33.590790, 28.404814, 22.825737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654625, 28.012684, 22.779272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056856, 0.126604, -0.990322,
		0.985545, 0.151441, 0.075942,
		0.159590, -0.980325, -0.116164,
		33.702503, 27.718586, 22.744423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951218, 28.346222, 22.281145>,  <33.590790, 28.404814, 22.825737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951218, 28.346222, 22.281145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924252, 27.947132, 22.280920>,  <33.908070, 27.707678, 22.280785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924252, 27.947132, 22.280920>,  <33.951218, 28.346222, 22.281145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924252, 27.947132, 22.280920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104440, -0.006497, -0.994510,
		0.992243, -0.067107, 0.104641,
		-0.067419, -0.997725, -0.000562,
		33.904026, 27.647814, 22.280752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494247, 28.032261, 21.966156>,  <33.951218, 28.346222, 22.281145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494247, 28.032261, 21.966156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194702, 27.769125, 21.934032>,  <34.014977, 27.611244, 21.914759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194702, 27.769125, 21.934032>,  <34.494247, 28.032261, 21.966156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194702, 27.769125, 21.934032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257834, -0.177567, -0.949733,
		0.610512, -0.731927, 0.302587,
		-0.748864, -0.657840, -0.080309,
		33.970043, 27.571774, 21.909941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807457, 27.432659, 21.583307>,  <34.494247, 28.032261, 21.966156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807457, 27.432659, 21.583307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411095, 27.381922, 21.565374>,  <34.173275, 27.351479, 21.554615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411095, 27.381922, 21.565374>,  <34.807457, 27.432659, 21.583307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411095, 27.381922, 21.565374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088020, -0.359240, -0.929085,
		0.101745, -0.924585, 0.367139,
		-0.990909, -0.126846, -0.044831,
		34.113823, 27.343868, 21.551926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674309, 26.858099, 21.200060>,  <34.807457, 27.432659, 21.583307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674309, 26.858099, 21.200060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301098, 27.001328, 21.185970>,  <34.077171, 27.087265, 21.177517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301098, 27.001328, 21.185970>,  <34.674309, 26.858099, 21.200060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301098, 27.001328, 21.185970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128275, -0.422512, -0.897234,
		-0.336154, -0.832628, 0.440148,
		-0.933030, 0.358069, -0.035224,
		34.021191, 27.108749, 21.175402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213703, 26.241365, 20.986841>,  <34.674309, 26.858099, 21.200060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213703, 26.241365, 20.986841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057514, 26.600220, 20.904209>,  <33.963802, 26.815533, 20.854630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057514, 26.600220, 20.904209>,  <34.213703, 26.241365, 20.986841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057514, 26.600220, 20.904209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145636, -0.281762, -0.948367,
		-0.909022, -0.340227, 0.240676,
		-0.390473, 0.897137, -0.206578,
		33.940372, 26.869362, 20.842236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578327, 26.097164, 20.548172>,  <34.213703, 26.241365, 20.986841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578327, 26.097164, 20.548172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653934, 26.481848, 20.468786>,  <33.699299, 26.712658, 20.421154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653934, 26.481848, 20.468786>,  <33.578327, 26.097164, 20.548172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653934, 26.481848, 20.468786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134995, -0.174740, -0.975317,
		-0.972650, 0.211145, 0.096797,
		0.189019, 0.961709, -0.198464,
		33.710640, 26.770361, 20.409246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086761, 26.198872, 20.105934>,  <33.578327, 26.097164, 20.548172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086761, 26.198872, 20.105934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340012, 26.499060, 20.030100>,  <33.491962, 26.679173, 19.984598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340012, 26.499060, 20.030100>,  <33.086761, 26.198872, 20.105934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340012, 26.499060, 20.030100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144562, -0.125979, -0.981443,
		-0.760426, 0.648788, 0.028728,
		0.633130, 0.750468, -0.189588,
		33.529949, 26.724199, 19.973223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717258, 26.798155, 19.677887>,  <33.086761, 26.198872, 20.105934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717258, 26.798155, 19.677887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107533, 26.788082, 19.590803>,  <33.341698, 26.782038, 19.538553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107533, 26.788082, 19.590803>,  <32.717258, 26.798155, 19.677887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107533, 26.788082, 19.590803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218151, -0.206800, -0.953752,
		-0.021003, 0.978059, -0.207267,
		0.975689, -0.025184, -0.217708,
		33.400238, 26.780527, 19.525490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726040, 27.031597, 18.983490>,  <32.717258, 26.798155, 19.677887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726040, 27.031597, 18.983490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087437, 26.863131, 19.015282>,  <33.304276, 26.762051, 19.034357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087437, 26.863131, 19.015282>,  <32.726040, 27.031597, 18.983490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087437, 26.863131, 19.015282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079316, -0.346538, -0.934677,
		0.421197, 0.838171, -0.346501,
		0.903494, -0.421166, 0.079481,
		33.358486, 26.736780, 19.039125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196842, 27.244335, 18.379198>,  <32.726040, 27.031597, 18.983490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196842, 27.244335, 18.379198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223526, 26.883524, 18.549795>,  <33.239536, 26.667038, 18.652153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223526, 26.883524, 18.549795>,  <33.196842, 27.244335, 18.379198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223526, 26.883524, 18.549795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373956, -0.418892, -0.827458,
		0.925044, -0.104286, -0.365264,
		0.066714, -0.902028, 0.426492,
		33.243542, 26.612915, 18.677742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555500, 26.846689, 17.957630>,  <33.196842, 27.244335, 18.379198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555500, 26.846689, 17.957630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323025, 26.621649, 18.192812>,  <33.183540, 26.486624, 18.333921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323025, 26.621649, 18.192812>,  <33.555500, 26.846689, 17.957630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323025, 26.621649, 18.192812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285377, -0.535717, -0.794712,
		0.762086, -0.629670, 0.150801,
		-0.581193, -0.562604, 0.587956,
		33.148666, 26.452868, 18.369198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788509, 26.337494, 17.518307>,  <33.555500, 26.846689, 17.957630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788509, 26.337494, 17.518307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108242, 26.572170, 17.466372>,  <34.300083, 26.712976, 17.435211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108242, 26.572170, 17.466372>,  <33.788509, 26.337494, 17.518307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108242, 26.572170, 17.466372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321773, 0.600414, 0.732096,
		0.507469, -0.543413, 0.668713,
		0.799335, 0.586690, -0.129836,
		34.348042, 26.748177, 17.427420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083595, 26.400465, 18.177238>,  <33.788509, 26.337494, 17.518307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083595, 26.400465, 18.177238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225372, 26.695887, 17.947836>,  <34.310440, 26.873140, 17.810194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225372, 26.695887, 17.947836>,  <34.083595, 26.400465, 18.177238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225372, 26.695887, 17.947836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200467, 0.659080, 0.724863,
		0.913336, -0.141954, 0.381663,
		0.354443, 0.738554, -0.573504,
		34.331707, 26.917454, 17.775785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663181, 26.769688, 18.423613>,  <34.083595, 26.400465, 18.177238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663181, 26.769688, 18.423613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486874, 27.028111, 18.174347>,  <34.381088, 27.183165, 18.024788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486874, 27.028111, 18.174347>,  <34.663181, 26.769688, 18.423613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486874, 27.028111, 18.174347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076959, 0.664485, 0.743328,
		0.894317, 0.375591, -0.243162,
		-0.440765, 0.646058, -0.623166,
		34.354645, 27.221928, 17.987396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844265, 27.515312, 18.538170>,  <34.663181, 26.769688, 18.423613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844265, 27.515312, 18.538170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492039, 27.573063, 18.357607>,  <34.280704, 27.607714, 18.249269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.492039, 27.573063, 18.357607>,  <34.844265, 27.515312, 18.538170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492039, 27.573063, 18.357607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072218, 0.900472, 0.428877,
		0.468397, 0.410252, -0.782495,
		-0.880562, 0.144375, -0.451406,
		34.227871, 27.616375, 18.222185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838409, 28.079506, 17.870550>,  <34.844265, 27.515312, 18.538170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838409, 28.079506, 17.870550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516815, 28.024179, 18.101885>,  <34.323860, 27.990984, 18.240686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516815, 28.024179, 18.101885>,  <34.838409, 28.079506, 17.870550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516815, 28.024179, 18.101885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162194, 0.884688, 0.437059,
		-0.572100, 0.445192, -0.688844,
		-0.803987, -0.138315, 0.578337,
		34.275620, 27.982685, 18.275387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638515, 28.784882, 17.844334>,  <34.838409, 28.079506, 17.870550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638515, 28.784882, 17.844334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490788, 28.614597, 18.174759>,  <34.402153, 28.512426, 18.373014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490788, 28.614597, 18.174759>,  <34.638515, 28.784882, 17.844334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490788, 28.614597, 18.174759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222251, 0.822647, 0.523314,
		-0.902335, 0.376862, -0.209204,
		-0.369318, -0.425708, 0.826061,
		34.379993, 28.486885, 18.422577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174118, 29.308018, 18.178989>,  <34.638515, 28.784882, 17.844334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174118, 29.308018, 18.178989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268982, 29.033823, 18.454340>,  <34.325901, 28.869307, 18.619551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268982, 29.033823, 18.454340>,  <34.174118, 29.308018, 18.178989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268982, 29.033823, 18.454340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069501, 0.718750, 0.691786,
		-0.968982, -0.116221, 0.218100,
		0.237159, -0.685486, 0.688378,
		34.340130, 28.828176, 18.660854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740772, 29.313850, 18.751802>,  <34.174118, 29.308018, 18.178989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740772, 29.313850, 18.751802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072422, 29.166939, 18.920397>,  <34.271412, 29.078793, 19.021553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072422, 29.166939, 18.920397>,  <33.740772, 29.313850, 18.751802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072422, 29.166939, 18.920397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127419, 0.609934, 0.782141,
		-0.544344, -0.702201, 0.458916,
		0.829129, -0.367279, 0.421488,
		34.321159, 29.056755, 19.046843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577354, 29.324274, 19.510201>,  <33.740772, 29.313850, 18.751802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577354, 29.324274, 19.510201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975060, 29.283178, 19.498293>,  <34.213684, 29.258520, 19.491148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975060, 29.283178, 19.498293>,  <33.577354, 29.324274, 19.510201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975060, 29.283178, 19.498293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074526, 0.465748, 0.881773,
		-0.076729, -0.878933, 0.470733,
		0.994262, -0.102740, -0.029767,
		34.273338, 29.252356, 19.489363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744709, 29.199574, 20.146488>,  <33.577354, 29.324274, 19.510201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744709, 29.199574, 20.146488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065304, 29.354471, 19.964207>,  <34.257660, 29.447409, 19.854837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065304, 29.354471, 19.964207>,  <33.744709, 29.199574, 20.146488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065304, 29.354471, 19.964207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070758, 0.695265, 0.715262,
		0.593816, -0.605516, 0.529843,
		0.801484, 0.387243, -0.455705,
		34.305748, 29.470644, 19.827496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112782, 29.410254, 20.705582>,  <33.744709, 29.199574, 20.146488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112782, 29.410254, 20.705582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327805, 29.598335, 20.425600>,  <34.456818, 29.711184, 20.257610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327805, 29.598335, 20.425600>,  <34.112782, 29.410254, 20.705582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327805, 29.598335, 20.425600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199067, 0.735863, 0.647208,
		0.819391, -0.487251, 0.301968,
		0.537559, 0.470205, -0.699955,
		34.489071, 29.739397, 20.215614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777283, 29.539831, 21.019211>,  <34.112782, 29.410254, 20.705582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777283, 29.539831, 21.019211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704868, 29.787374, 20.713469>,  <34.661419, 29.935900, 20.530024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704868, 29.787374, 20.713469>,  <34.777283, 29.539831, 21.019211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704868, 29.787374, 20.713469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124592, 0.785368, 0.606361,
		0.975552, 0.014544, -0.219288,
		-0.181040, 0.618858, -0.764355,
		34.650555, 29.973032, 20.484161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270485, 30.070072, 21.067106>,  <34.777283, 29.539831, 21.019211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270485, 30.070072, 21.067106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973576, 30.244490, 20.863577>,  <34.795429, 30.349140, 20.741459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973576, 30.244490, 20.863577>,  <35.270485, 30.070072, 21.067106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973576, 30.244490, 20.863577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115619, 0.831271, 0.543710,
		0.660052, 0.344750, -0.667442,
		-0.742269, 0.436046, -0.508822,
		34.750896, 30.375303, 20.710930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329109, 30.689266, 21.350639>,  <35.270485, 30.070072, 21.067106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329109, 30.689266, 21.350639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997524, 30.756819, 21.137362>,  <34.798573, 30.797350, 21.009396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997524, 30.756819, 21.137362>,  <35.329109, 30.689266, 21.350639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997524, 30.756819, 21.137362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013749, 0.946883, 0.321285,
		0.559130, 0.273665, -0.782611,
		-0.828966, 0.168880, -0.533193,
		34.748833, 30.807484, 20.977404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349014, 31.380993, 20.937031>,  <35.329109, 30.689266, 21.350639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349014, 31.380993, 20.937031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963509, 31.287384, 20.988253>,  <34.732204, 31.231218, 21.018986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963509, 31.287384, 20.988253>,  <35.349014, 31.380993, 20.937031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963509, 31.287384, 20.988253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150946, 0.874185, 0.461536,
		-0.219951, 0.425482, -0.877831,
		-0.963762, -0.234020, 0.128054,
		34.674381, 31.217178, 21.026669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927921, 31.958294, 20.697786>,  <35.349014, 31.380993, 20.937031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927921, 31.958294, 20.697786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705734, 31.768593, 20.971001>,  <34.572422, 31.654772, 21.134930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705734, 31.768593, 20.971001>,  <34.927921, 31.958294, 20.697786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705734, 31.768593, 20.971001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118271, 0.858122, 0.499639,
		-0.823084, 0.196750, -0.532749,
		-0.555467, -0.474254, 0.683036,
		34.539093, 31.626316, 21.175911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413342, 32.448051, 20.805984>,  <34.927921, 31.958294, 20.697786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413342, 32.448051, 20.805984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382088, 32.198235, 21.116814>,  <34.363335, 32.048344, 21.303310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382088, 32.198235, 21.116814>,  <34.413342, 32.448051, 20.805984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382088, 32.198235, 21.116814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098769, 0.780470, 0.617343,
		-0.992038, -0.028515, -0.122667,
		-0.078134, -0.624543, 0.777072,
		34.358646, 32.010872, 21.349936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887413, 32.671600, 21.211651>,  <34.413342, 32.448051, 20.805984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887413, 32.671600, 21.211651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099194, 32.459953, 21.476894>,  <34.226261, 32.332966, 21.636040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099194, 32.459953, 21.476894>,  <33.887413, 32.671600, 21.211651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099194, 32.459953, 21.476894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251190, 0.648825, 0.718282,
		-0.810299, -0.546862, 0.210612,
		0.529451, -0.529120, 0.663109,
		34.258030, 32.301216, 21.675827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416416, 32.638126, 21.801964>,  <33.887413, 32.671600, 21.211651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416416, 32.638126, 21.801964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768349, 32.523438, 21.953588>,  <33.979507, 32.454624, 22.044563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768349, 32.523438, 21.953588>,  <33.416416, 32.638126, 21.801964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768349, 32.523438, 21.953588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252739, 0.393192, 0.884038,
		-0.402517, -0.873608, 0.273476,
		0.879831, -0.286723, 0.379061,
		34.032299, 32.437420, 22.067307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321888, 32.151104, 22.335829>,  <33.416416, 32.638126, 21.801964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321888, 32.151104, 22.335829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682320, 32.307632, 22.410591>,  <33.898579, 32.401550, 22.455448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682320, 32.307632, 22.410591>,  <33.321888, 32.151104, 22.335829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682320, 32.307632, 22.410591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309782, 0.279216, 0.908886,
		0.303486, -0.876871, 0.372819,
		0.901073, 0.391327, 0.186901,
		33.952641, 32.425026, 22.466663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492832, 31.924297, 22.983408>,  <33.321888, 32.151104, 22.335829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492832, 31.924297, 22.983408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722023, 32.246998, 22.925646>,  <33.859539, 32.440617, 22.890989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722023, 32.246998, 22.925646>,  <33.492832, 31.924297, 22.983408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722023, 32.246998, 22.925646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241890, 0.334810, 0.910710,
		0.783063, -0.486884, 0.386983,
		0.572976, 0.806751, -0.144405,
		33.893917, 32.489021, 22.882324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883133, 32.114132, 23.654629>,  <33.492832, 31.924297, 22.983408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883133, 32.114132, 23.654629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893993, 32.462250, 23.457916>,  <33.900509, 32.671120, 23.339888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893993, 32.462250, 23.457916>,  <33.883133, 32.114132, 23.654629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893993, 32.462250, 23.457916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340794, 0.470552, 0.813905,
		0.939746, 0.145497, 0.309368,
		0.027153, 0.870294, -0.491783,
		33.902138, 32.723339, 23.310381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195057, 32.630661, 23.996424>,  <33.883133, 32.114132, 23.654629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195057, 32.630661, 23.996424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008522, 32.877655, 23.743048>,  <33.896603, 33.025852, 23.591022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008522, 32.877655, 23.743048>,  <34.195057, 32.630661, 23.996424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008522, 32.877655, 23.743048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240061, 0.600857, 0.762458,
		0.851413, 0.507623, -0.131965,
		-0.466333, 0.617487, -0.633438,
		33.868622, 33.062901, 23.553017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357601, 33.244598, 24.246418>,  <34.195057, 32.630661, 23.996424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357601, 33.244598, 24.246418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044331, 33.321846, 24.010000>,  <33.856369, 33.368195, 23.868149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044331, 33.321846, 24.010000>,  <34.357601, 33.244598, 24.246418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044331, 33.321846, 24.010000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332755, 0.672809, 0.660759,
		0.525265, 0.714166, -0.462670,
		-0.783180, 0.193118, -0.591045,
		33.809376, 33.379780, 23.832687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314957, 34.000713, 24.097790>,  <34.357601, 33.244598, 24.246418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314957, 34.000713, 24.097790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949356, 33.850773, 24.035702>,  <33.729996, 33.760807, 23.998449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949356, 33.850773, 24.035702>,  <34.314957, 34.000713, 24.097790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949356, 33.850773, 24.035702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386618, 0.688696, 0.613371,
		-0.123025, 0.620630, -0.774392,
		-0.913998, -0.374853, -0.155220,
		33.675156, 33.738316, 23.989136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984463, 34.572765, 23.988102>,  <34.314957, 34.000713, 24.097790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984463, 34.572765, 23.988102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681030, 34.326229, 24.072660>,  <33.498970, 34.178307, 24.123396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681030, 34.326229, 24.072660>,  <33.984463, 34.572765, 23.988102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681030, 34.326229, 24.072660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388405, 0.688215, 0.612781,
		-0.523167, 0.382735, -0.761453,
		-0.758577, -0.616339, 0.211395,
		33.453457, 34.141327, 24.136080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355576, 35.039742, 24.115602>,  <33.984463, 34.572765, 23.988102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355576, 35.039742, 24.115602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256306, 34.687645, 24.277382>,  <33.196743, 34.476387, 24.374449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256306, 34.687645, 24.277382>,  <33.355576, 35.039742, 24.115602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256306, 34.687645, 24.277382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403633, 0.473503, 0.782864,
		-0.880620, 0.031035, -0.472806,
		-0.248171, -0.880245, 0.404449,
		33.181854, 34.423573, 24.398716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663902, 35.203480, 24.367996>,  <33.355576, 35.039742, 24.115602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663902, 35.203480, 24.367996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805592, 34.874279, 24.545626>,  <32.890606, 34.676758, 24.652205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805592, 34.874279, 24.545626>,  <32.663902, 35.203480, 24.367996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805592, 34.874279, 24.545626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335827, 0.331240, 0.881760,
		-0.872781, -0.461471, -0.159052,
		0.354222, -0.822997, 0.444075,
		32.911858, 34.627380, 24.678848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065128, 35.006077, 24.825563>,  <32.663902, 35.203480, 24.367996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065128, 35.006077, 24.825563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414806, 34.854664, 24.947220>,  <32.624611, 34.763817, 25.020214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414806, 34.854664, 24.947220>,  <32.065128, 35.006077, 24.825563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414806, 34.854664, 24.947220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264356, 0.154388, 0.951988,
		-0.407315, -0.912621, 0.034897,
		0.874192, -0.378534, 0.304141,
		32.677063, 34.741104, 25.038462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912786, 34.480835, 25.255243>,  <32.065128, 35.006077, 24.825563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912786, 34.480835, 25.255243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290745, 34.564877, 25.355663>,  <32.517521, 34.615303, 25.415915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290745, 34.564877, 25.355663>,  <31.912786, 34.480835, 25.255243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290745, 34.564877, 25.355663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225051, -0.140025, 0.964233,
		0.237744, -0.967599, -0.085024,
		0.944897, 0.210106, 0.251049,
		32.574215, 34.627907, 25.430979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084835, 34.018208, 25.810469>,  <31.912786, 34.480835, 25.255243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084835, 34.018208, 25.810469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331802, 34.331356, 25.841227>,  <32.479980, 34.519245, 25.859682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331802, 34.331356, 25.841227>,  <32.084835, 34.018208, 25.810469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331802, 34.331356, 25.841227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101858, -0.017364, 0.994647,
		0.780016, -0.621941, 0.069021,
		0.617413, 0.782871, 0.076894,
		32.517025, 34.566219, 25.864294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424511, 33.917721, 26.423460>,  <32.084835, 34.018208, 25.810469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424511, 33.917721, 26.423460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488392, 34.306778, 26.355976>,  <32.526718, 34.540211, 26.315487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488392, 34.306778, 26.355976>,  <32.424511, 33.917721, 26.423460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488392, 34.306778, 26.355976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092382, 0.184876, 0.978410,
		0.982834, -0.140665, 0.119379,
		0.159698, 0.972643, -0.168707,
		32.536301, 34.598572, 26.305365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871632, 34.158554, 26.943537>,  <32.424511, 33.917721, 26.423460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871632, 34.158554, 26.943537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763821, 34.526592, 26.829851>,  <32.699135, 34.747417, 26.761641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763821, 34.526592, 26.829851>,  <32.871632, 34.158554, 26.943537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763821, 34.526592, 26.829851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022547, 0.289026, 0.957055,
		0.962730, 0.264357, -0.057154,
		-0.269523, 0.920097, -0.284215,
		32.682964, 34.802620, 26.744587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465336, 34.738850, 27.171667>,  <32.871632, 34.158554, 26.943537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465336, 34.738850, 27.171667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108269, 34.912693, 27.123911>,  <32.894028, 35.016998, 27.095257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108269, 34.912693, 27.123911>,  <33.465336, 34.738850, 27.171667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108269, 34.912693, 27.123911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105269, 0.458619, 0.882376,
		0.438243, 0.775103, -0.455147,
		-0.892671, 0.434608, -0.119392,
		32.840466, 35.043076, 27.088093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517990, 35.349991, 27.457911>,  <33.465336, 34.738850, 27.171667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517990, 35.349991, 27.457911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120686, 35.307110, 27.440336>,  <32.882301, 35.281380, 27.429790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120686, 35.307110, 27.440336>,  <33.517990, 35.349991, 27.457911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120686, 35.307110, 27.440336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092864, 0.509883, 0.855217,
		-0.069281, 0.853537, -0.516405,
		-0.993266, -0.107205, -0.043938,
		32.822704, 35.274948, 27.427155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271355, 36.028374, 27.481096>,  <33.517990, 35.349991, 27.457911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271355, 36.028374, 27.481096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017639, 35.759281, 27.633471>,  <32.865410, 35.597824, 27.724895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017639, 35.759281, 27.633471>,  <33.271355, 36.028374, 27.481096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017639, 35.759281, 27.633471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010599, 0.485126, 0.874380,
		-0.773025, 0.558645, -0.300579,
		-0.634287, -0.672732, 0.380935,
		32.827354, 35.557461, 27.747751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684223, 36.492325, 27.805302>,  <33.271355, 36.028374, 27.481096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684223, 36.492325, 27.805302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641438, 36.123688, 27.954550>,  <32.615765, 35.902504, 28.044100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641438, 36.123688, 27.954550>,  <32.684223, 36.492325, 27.805302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641438, 36.123688, 27.954550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047284, 0.379566, 0.923956,
		-0.993138, 0.081192, -0.084178,
		-0.106969, -0.921595, 0.373122,
		32.609348, 35.847210, 28.066486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382946, 36.695450, 28.376451>,  <32.684223, 36.492325, 27.805302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382946, 36.695450, 28.376451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494209, 36.316399, 28.439226>,  <32.560966, 36.088966, 28.476891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494209, 36.316399, 28.439226>,  <32.382946, 36.695450, 28.376451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494209, 36.316399, 28.439226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075247, 0.141386, 0.987091,
		-0.957584, -0.286373, -0.031979,
		0.278155, -0.947629, 0.156938,
		32.577656, 36.032108, 28.486307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938280, 36.399204, 28.897797>,  <32.382946, 36.695450, 28.376451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938280, 36.399204, 28.897797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270481, 36.177296, 28.917768>,  <32.469803, 36.044151, 28.929750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270481, 36.177296, 28.917768>,  <31.938280, 36.399204, 28.897797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270481, 36.177296, 28.917768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031579, 0.136385, 0.990152,
		-0.556117, -0.820749, 0.130787,
		0.830503, -0.554771, 0.049928,
		32.519630, 36.010864, 28.932747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830610, 36.116875, 29.595427>,  <31.938280, 36.399204, 28.897797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830610, 36.116875, 29.595427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215935, 36.056953, 29.506353>,  <32.447128, 36.021000, 29.452909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215935, 36.056953, 29.506353>,  <31.830610, 36.116875, 29.595427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215935, 36.056953, 29.506353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258527, 0.295184, 0.919799,
		-0.072057, -0.943623, 0.323083,
		0.963313, -0.149803, -0.222682,
		32.504929, 36.012012, 29.439548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061687, 35.804237, 30.246288>,  <31.830610, 36.116875, 29.595427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061687, 35.804237, 30.246288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402355, 35.904842, 30.062372>,  <32.606754, 35.965206, 29.952023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402355, 35.904842, 30.062372>,  <32.061687, 35.804237, 30.246288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402355, 35.904842, 30.062372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376830, 0.315844, 0.870771,
		0.364236, -0.914867, 0.174213,
		0.851664, 0.251518, -0.459791,
		32.657856, 35.980297, 29.924435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624981, 35.509499, 30.685141>,  <32.061687, 35.804237, 30.246288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624981, 35.509499, 30.685141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741917, 35.828033, 30.473337>,  <32.812077, 36.019154, 30.346254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741917, 35.828033, 30.473337>,  <32.624981, 35.509499, 30.685141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741917, 35.828033, 30.473337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313018, 0.443515, 0.839830,
		0.903636, -0.411259, -0.119613,
		0.292337, 0.796342, -0.529508,
		32.829617, 36.066936, 30.314486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350941, 35.592636, 30.867035>,  <32.624981, 35.509499, 30.685141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350941, 35.592636, 30.867035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164696, 35.928658, 30.755669>,  <33.052948, 36.130272, 30.688848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164696, 35.928658, 30.755669>,  <33.350941, 35.592636, 30.867035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164696, 35.928658, 30.755669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301814, 0.446468, 0.842363,
		0.831932, 0.308186, -0.461422,
		-0.465614, 0.840052, -0.278416,
		33.025013, 36.180672, 30.672144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690620, 36.047165, 31.259121>,  <33.350941, 35.592636, 30.867035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690620, 36.047165, 31.259121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388981, 36.268650, 31.117847>,  <33.207996, 36.401543, 31.033083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388981, 36.268650, 31.117847>,  <33.690620, 36.047165, 31.259121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388981, 36.268650, 31.117847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051304, 0.585785, 0.808841,
		0.654759, 0.591823, -0.470145,
		-0.754094, 0.553717, -0.353185,
		33.162754, 36.434765, 31.011892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892567, 36.787292, 31.257807>,  <33.690620, 36.047165, 31.259121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892567, 36.787292, 31.257807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495865, 36.754124, 31.296904>,  <33.257843, 36.734222, 31.320362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495865, 36.754124, 31.296904>,  <33.892567, 36.787292, 31.257807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495865, 36.754124, 31.296904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012788, 0.694738, 0.719149,
		-0.127538, 0.714466, -0.687947,
		-0.991751, -0.082921, 0.097742,
		33.198341, 36.729248, 31.326225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549961, 36.442635, 31.494593>,  <33.892567, 36.787292, 31.257807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549961, 36.442635, 31.494593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948486, 36.476559, 31.489384>,  <35.187603, 36.496914, 31.486258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948486, 36.476559, 31.489384>,  <34.549961, 36.442635, 31.494593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948486, 36.476559, 31.489384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033931, -0.528858, -0.848032,
		-0.078808, 0.844463, -0.529785,
		0.996312, 0.084808, -0.013025,
		35.247379, 36.502003, 31.485476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628757, 36.590847, 30.782656>,  <34.549961, 36.442635, 31.494593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628757, 36.590847, 30.782656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988228, 36.509232, 30.937963>,  <35.203911, 36.460262, 31.031149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988228, 36.509232, 30.937963>,  <34.628757, 36.590847, 30.782656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988228, 36.509232, 30.937963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304531, -0.346826, -0.887115,
		0.315670, 0.915466, -0.249547,
		0.898673, -0.204041, 0.388270,
		35.257832, 36.448021, 31.054445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981346, 36.836525, 30.224194>,  <34.628757, 36.590847, 30.782656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981346, 36.836525, 30.224194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242504, 36.626865, 30.442917>,  <35.399197, 36.501068, 30.574152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242504, 36.626865, 30.442917>,  <34.981346, 36.836525, 30.224194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242504, 36.626865, 30.442917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480832, -0.270999, -0.833883,
		0.585262, 0.807359, 0.075094,
		0.652893, -0.524147, 0.546810,
		35.438374, 36.469620, 30.606960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781158, 37.021637, 30.045816>,  <34.981346, 36.836525, 30.224194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781158, 37.021637, 30.045816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781700, 36.653942, 30.203295>,  <35.782024, 36.433323, 30.297781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781700, 36.653942, 30.203295>,  <35.781158, 37.021637, 30.045816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781700, 36.653942, 30.203295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367041, -0.365761, -0.855278,
		0.930204, 0.145657, 0.336904,
		0.001351, -0.919240, 0.393695,
		35.782104, 36.378170, 30.321404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492783, 36.751736, 30.073353>,  <35.781158, 37.021637, 30.045816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492783, 36.751736, 30.073353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258537, 36.428455, 30.098192>,  <36.117989, 36.234486, 30.113096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258537, 36.428455, 30.098192>,  <36.492783, 36.751736, 30.073353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258537, 36.428455, 30.098192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419600, -0.367800, -0.829855,
		0.693533, -0.459921, 0.554513,
		-0.585617, -0.808205, 0.062098,
		36.082851, 36.185993, 30.116821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925396, 36.082912, 30.043253>,  <36.492783, 36.751736, 30.073353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925396, 36.082912, 30.043253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553970, 36.011494, 29.913090>,  <36.331116, 35.968643, 29.834991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553970, 36.011494, 29.913090>,  <36.925396, 36.082912, 30.043253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553970, 36.011494, 29.913090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361278, -0.635856, -0.682030,
		-0.085135, -0.750871, 0.654939,
		-0.928563, -0.178550, -0.325407,
		36.275402, 35.957928, 29.815468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913486, 35.378029, 29.737629>,  <36.925396, 36.082912, 30.043253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913486, 35.378029, 29.737629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585819, 35.563076, 29.602011>,  <36.389221, 35.674107, 29.520639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585819, 35.563076, 29.602011>,  <36.913486, 35.378029, 29.737629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585819, 35.563076, 29.602011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099953, -0.466935, -0.878624,
		-0.564782, -0.753626, 0.336256,
		-0.819164, 0.462622, -0.339044,
		36.340069, 35.701862, 29.500298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477875, 34.891006, 29.324312>,  <36.913486, 35.378029, 29.737629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477875, 34.891006, 29.324312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344692, 35.245308, 29.194958>,  <36.264782, 35.457890, 29.117346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344692, 35.245308, 29.194958>,  <36.477875, 34.891006, 29.324312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344692, 35.245308, 29.194958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094390, -0.309923, -0.946064,
		-0.938205, -0.345524, 0.019585,
		-0.332958, 0.885754, -0.323385,
		36.244804, 35.511036, 29.097942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945774, 34.707092, 28.814093>,  <36.477875, 34.891006, 29.324312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945774, 34.707092, 28.814093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047039, 35.083141, 28.722807>,  <36.107796, 35.308769, 28.668036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047039, 35.083141, 28.722807>,  <35.945774, 34.707092, 28.814093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047039, 35.083141, 28.722807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103367, -0.260836, -0.959833,
		-0.961886, 0.219402, -0.163211,
		0.253161, 0.940121, -0.228216,
		36.122986, 35.365177, 28.654343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510017, 34.872337, 28.221233>,  <35.945774, 34.707092, 28.814093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510017, 34.872337, 28.221233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810211, 35.136547, 28.230045>,  <35.990326, 35.295074, 28.235332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.810211, 35.136547, 28.230045>,  <35.510017, 34.872337, 28.221233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810211, 35.136547, 28.230045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134109, -0.119567, -0.983727,
		-0.647141, 0.741223, -0.178315,
		0.750481, 0.660524, 0.022028,
		36.035355, 35.334705, 28.236654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420235, 35.365665, 27.646873>,  <35.510017, 34.872337, 28.221233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420235, 35.365665, 27.646873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809414, 35.370396, 27.739164>,  <36.042923, 35.373234, 27.794538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809414, 35.370396, 27.739164>,  <35.420235, 35.365665, 27.646873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809414, 35.370396, 27.739164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229832, -0.151107, -0.961428,
		0.023500, 0.988447, -0.149736,
		0.972947, 0.011821, 0.230727,
		36.101299, 35.373943, 27.808382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687607, 35.570492, 27.022293>,  <35.420235, 35.365665, 27.646873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687607, 35.570492, 27.022293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016861, 35.436905, 27.205994>,  <36.214413, 35.356754, 27.316214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016861, 35.436905, 27.205994>,  <35.687607, 35.570492, 27.022293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016861, 35.436905, 27.205994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408175, -0.214261, -0.887404,
		0.394759, 0.917911, -0.040052,
		0.823139, -0.333963, 0.459250,
		36.263802, 35.336716, 27.343769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181377, 36.032150, 26.909445>,  <35.687607, 35.570492, 27.022293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181377, 36.032150, 26.909445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389324, 35.696121, 26.971434>,  <36.514091, 35.494503, 27.008627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389324, 35.696121, 26.971434>,  <36.181377, 36.032150, 26.909445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389324, 35.696121, 26.971434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414166, 0.089201, -0.905820,
		0.747130, 0.535092, 0.394302,
		0.519869, -0.840071, 0.154972,
		36.545284, 35.444099, 27.017925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800945, 36.118404, 26.648409>,  <36.181377, 36.032150, 26.909445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800945, 36.118404, 26.648409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780834, 35.720337, 26.682163>,  <36.768768, 35.481499, 26.702415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780834, 35.720337, 26.682163>,  <36.800945, 36.118404, 26.648409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780834, 35.720337, 26.682163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263647, -0.094720, -0.959958,
		0.963308, -0.026016, 0.267134,
		-0.050277, -0.995164, 0.084386,
		36.765751, 35.421787, 26.707479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462528, 35.835556, 26.259212>,  <36.800945, 36.118404, 26.648409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462528, 35.835556, 26.259212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214012, 35.525490, 26.305021>,  <37.064903, 35.339451, 26.332506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214012, 35.525490, 26.305021>,  <37.462528, 35.835556, 26.259212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214012, 35.525490, 26.305021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337138, -0.396376, -0.853946,
		0.707343, -0.491940, 0.507603,
		-0.621292, -0.775165, 0.114522,
		37.027626, 35.292942, 26.339378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847916, 35.246658, 26.111015>,  <37.462528, 35.835556, 26.259212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847916, 35.246658, 26.111015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469517, 35.131088, 26.052210>,  <37.242477, 35.061745, 26.016926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469517, 35.131088, 26.052210>,  <37.847916, 35.246658, 26.111015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469517, 35.131088, 26.052210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300031, -0.608577, -0.734585,
		0.122770, -0.739024, 0.662398,
		-0.945996, -0.288925, -0.147015,
		37.185719, 35.044411, 26.008106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809437, 34.447723, 26.063122>,  <37.847916, 35.246658, 26.111015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809437, 34.447723, 26.063122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484539, 34.599522, 25.885925>,  <37.289600, 34.690601, 25.779608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484539, 34.599522, 25.885925>,  <37.809437, 34.447723, 26.063122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484539, 34.599522, 25.885925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196694, -0.536774, -0.820479,
		-0.549170, -0.753556, 0.361338,
		-0.812234, 0.379509, -0.443000,
		37.240864, 34.713371, 25.753027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732586, 33.854622, 25.593018>,  <37.809437, 34.447723, 26.063122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732586, 33.854622, 25.593018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518787, 34.159569, 25.447081>,  <37.390507, 34.342537, 25.359518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518787, 34.159569, 25.447081>,  <37.732586, 33.854622, 25.593018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518787, 34.159569, 25.447081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041785, -0.454988, -0.889516,
		-0.844138, -0.460198, 0.275045,
		-0.534496, 0.762367, -0.364843,
		37.358440, 34.388279, 25.337627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215225, 33.558838, 25.164703>,  <37.732586, 33.854622, 25.593018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215225, 33.558838, 25.164703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178143, 33.928596, 25.016708>,  <37.155891, 34.150452, 24.927912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178143, 33.928596, 25.016708>,  <37.215225, 33.558838, 25.164703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178143, 33.928596, 25.016708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071450, -0.376805, -0.923533,
		-0.993127, -0.059183, 0.100980,
		-0.092707, 0.924400, -0.369986,
		37.150330, 34.205917, 24.905712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467426, 33.646049, 24.900978>,  <37.215225, 33.558838, 25.164703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467426, 33.646049, 24.900978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702637, 33.914978, 24.721109>,  <36.843765, 34.076336, 24.613188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702637, 33.914978, 24.721109>,  <36.467426, 33.646049, 24.900978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702637, 33.914978, 24.721109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135498, -0.466210, -0.874236,
		-0.797409, 0.575006, -0.183047,
		0.588029, 0.672321, -0.449672,
		36.879047, 34.116676, 24.586208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026512, 33.883190, 24.402956>,  <36.467426, 33.646049, 24.900978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026512, 33.883190, 24.402956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391712, 33.999069, 24.288065>,  <36.610832, 34.068596, 24.219131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391712, 33.999069, 24.288065>,  <36.026512, 33.883190, 24.402956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391712, 33.999069, 24.288065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140272, -0.438210, -0.887860,
		-0.383077, 0.850909, -0.359451,
		0.913004, 0.289698, -0.287227,
		36.665615, 34.085979, 24.201897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942223, 34.156193, 23.722281>,  <36.026512, 33.883190, 24.402956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942223, 34.156193, 23.722281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328491, 34.061405, 23.764853>,  <36.560253, 34.004532, 23.790396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328491, 34.061405, 23.764853>,  <35.942223, 34.156193, 23.722281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328491, 34.061405, 23.764853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009601, -0.441996, -0.896966,
		0.259592, 0.865151, -0.429098,
		0.965671, -0.236965, 0.106432,
		36.618191, 33.990314, 23.796782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236969, 34.331280, 23.058117>,  <35.942223, 34.156193, 23.722281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236969, 34.331280, 23.058117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496555, 34.082333, 23.233156>,  <36.652309, 33.932964, 23.338181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496555, 34.082333, 23.233156>,  <36.236969, 34.331280, 23.058117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496555, 34.082333, 23.233156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086968, -0.632087, -0.770002,
		0.755828, 0.461650, -0.464331,
		0.648969, -0.622370, 0.437600,
		36.691246, 33.895622, 23.364437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715908, 34.182350, 22.623713>,  <36.236969, 34.331280, 23.058117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715908, 34.182350, 22.623713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706028, 33.873760, 22.878023>,  <36.700100, 33.688606, 23.030609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706028, 33.873760, 22.878023>,  <36.715908, 34.182350, 22.623713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706028, 33.873760, 22.878023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027454, -0.636254, -0.770991,
		0.999318, -0.001589, 0.036896,
		-0.024701, -0.771478, 0.635776,
		36.698616, 33.642315, 23.068756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334061, 33.753036, 22.498051>,  <36.715908, 34.182350, 22.623713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334061, 33.753036, 22.498051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064243, 33.512505, 22.669350>,  <36.902351, 33.368187, 22.772129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064243, 33.512505, 22.669350>,  <37.334061, 33.753036, 22.498051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064243, 33.512505, 22.669350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160237, -0.685528, -0.710194,
		0.720633, -0.410438, 0.558775,
		-0.674546, -0.601326, 0.428246,
		36.861881, 33.332108, 22.797823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589401, 33.128262, 22.368801>,  <37.334061, 33.753036, 22.498051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589401, 33.128262, 22.368801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221649, 33.024746, 22.487303>,  <37.000999, 32.962635, 22.558405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221649, 33.024746, 22.487303>,  <37.589401, 33.128262, 22.368801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221649, 33.024746, 22.487303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006141, -0.743583, -0.668616,
		0.393324, -0.616531, 0.682045,
		-0.919380, -0.258794, 0.296255,
		36.945835, 32.947109, 22.576180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672321, 32.475918, 22.647223>,  <37.589401, 33.128262, 22.368801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672321, 32.475918, 22.647223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291073, 32.511719, 22.531597>,  <37.062325, 32.533199, 22.462221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291073, 32.511719, 22.531597>,  <37.672321, 32.475918, 22.647223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291073, 32.511719, 22.531597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117749, -0.770269, -0.626754,
		-0.278754, -0.631407, 0.723617,
		-0.953117, 0.089505, -0.289063,
		37.005138, 32.538570, 22.444878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538975, 31.847544, 22.507010>,  <37.672321, 32.475918, 22.647223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538975, 31.847544, 22.507010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270130, 32.081879, 22.325874>,  <37.108822, 32.222481, 22.217194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270130, 32.081879, 22.325874>,  <37.538975, 31.847544, 22.507010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270130, 32.081879, 22.325874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010963, -0.603630, -0.797189,
		-0.740368, -0.540764, 0.399285,
		-0.672112, 0.585836, -0.452837,
		37.068497, 32.257629, 22.190023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961147, 31.382048, 22.196089>,  <37.538975, 31.847544, 22.507010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961147, 31.382048, 22.196089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944614, 31.728571, 21.996971>,  <36.934696, 31.936485, 21.877501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944614, 31.728571, 21.996971>,  <36.961147, 31.382048, 22.196089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944614, 31.728571, 21.996971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034039, -0.496709, -0.867250,
		-0.998566, -0.052788, -0.008959,
		-0.041330, 0.866311, -0.497793,
		36.932217, 31.988464, 21.847633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459831, 31.330906, 21.799570>,  <36.961147, 31.382048, 22.196089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459831, 31.330906, 21.799570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665379, 31.621399, 21.616911>,  <36.788708, 31.795694, 21.507317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665379, 31.621399, 21.616911>,  <36.459831, 31.330906, 21.799570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665379, 31.621399, 21.616911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121014, -0.465616, -0.876674,
		-0.849291, 0.505756, -0.151381,
		0.513869, 0.726232, -0.456647,
		36.819538, 31.839268, 21.479918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115997, 31.487789, 21.176949>,  <36.459831, 31.330906, 21.799570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115997, 31.487789, 21.176949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483791, 31.623913, 21.098227>,  <36.704468, 31.705587, 21.050993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483791, 31.623913, 21.098227>,  <36.115997, 31.487789, 21.176949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483791, 31.623913, 21.098227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058204, -0.377261, -0.924276,
		-0.388788, 0.861315, -0.327079,
		0.919487, 0.340311, -0.196806,
		36.759636, 31.726006, 21.039185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072918, 31.555595, 20.521391>,  <36.115997, 31.487789, 21.176949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072918, 31.555595, 20.521391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466850, 31.580252, 20.586264>,  <36.703209, 31.595045, 20.625187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466850, 31.580252, 20.586264>,  <36.072918, 31.555595, 20.521391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466850, 31.580252, 20.586264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173336, -0.308894, -0.935168,
		-0.007545, 0.949097, -0.314894,
		0.984834, 0.061638, 0.162182,
		36.762299, 31.598743, 20.634918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422802, 31.842010, 19.900709>,  <36.072918, 31.555595, 20.521391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422802, 31.842010, 19.900709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710461, 31.651388, 20.102983>,  <36.883057, 31.537014, 20.224348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710461, 31.651388, 20.102983>,  <36.422802, 31.842010, 19.900709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710461, 31.651388, 20.102983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310180, -0.431055, -0.847337,
		0.621784, 0.766214, -0.162174,
		0.719148, -0.476557, 0.505688,
		36.926205, 31.508421, 20.254690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979595, 31.931587, 19.554644>,  <36.422802, 31.842010, 19.900709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979595, 31.931587, 19.554644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100830, 31.607973, 19.756079>,  <37.173573, 31.413805, 19.876940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100830, 31.607973, 19.756079>,  <36.979595, 31.931587, 19.554644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100830, 31.607973, 19.756079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043766, -0.516071, -0.855427,
		0.951958, 0.281308, -0.121006,
		0.303086, -0.809034, 0.503590,
		37.191757, 31.365263, 19.907156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505157, 31.651199, 19.214777>,  <36.979595, 31.931587, 19.554644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505157, 31.651199, 19.214777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411541, 31.337534, 19.444668>,  <37.355370, 31.149334, 19.582602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411541, 31.337534, 19.444668>,  <37.505157, 31.651199, 19.214777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411541, 31.337534, 19.444668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227697, -0.618914, -0.751731,
		0.945186, -0.045074, 0.323405,
		-0.234044, -0.784164, 0.574726,
		37.341328, 31.102285, 19.617086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016052, 31.088800, 18.938177>,  <37.505157, 31.651199, 19.214777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016052, 31.088800, 18.938177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694038, 30.923634, 19.108547>,  <37.500828, 30.824533, 19.210770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694038, 30.923634, 19.108547>,  <38.016052, 31.088800, 18.938177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694038, 30.923634, 19.108547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003225, -0.721024, -0.692902,
		0.593213, -0.556440, 0.581784,
		-0.805039, -0.412915, 0.425926,
		37.452526, 30.799759, 19.236324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185448, 30.365828, 18.958134>,  <38.016052, 31.088800, 18.938177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185448, 30.365828, 18.958134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788788, 30.396580, 18.999561>,  <37.550793, 30.415031, 19.024418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788788, 30.396580, 18.999561>,  <38.185448, 30.365828, 18.958134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788788, 30.396580, 18.999561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125364, -0.763384, -0.633663,
		0.030350, -0.641354, 0.766644,
		-0.991646, 0.076878, 0.103572,
		37.491295, 30.419643, 19.030632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900677, 29.620213, 19.168747>,  <38.185448, 30.365828, 18.958134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900677, 29.620213, 19.168747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614189, 29.851686, 19.012720>,  <37.442295, 29.990572, 18.919104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614189, 29.851686, 19.012720>,  <37.900677, 29.620213, 19.168747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614189, 29.851686, 19.012720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128664, -0.658849, -0.741191,
		-0.685919, -0.480662, 0.546333,
		-0.716213, 0.578690, -0.390073,
		37.399323, 30.025291, 18.895700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497971, 29.091537, 18.989876>,  <37.900677, 29.620213, 19.168747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497971, 29.091537, 18.989876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848125, 28.928513, 19.093868>,  <39.058216, 28.830696, 19.156263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848125, 28.928513, 19.093868>,  <38.497971, 29.091537, 18.989876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848125, 28.928513, 19.093868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005717, 0.529029, 0.848585,
		-0.483392, -0.744325, 0.460774,
		0.875386, -0.407565, 0.259984,
		39.110741, 28.806244, 19.171864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458862, 28.904083, 19.744749>,  <38.497971, 29.091537, 18.989876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458862, 28.904083, 19.744749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843422, 28.929371, 19.637636>,  <39.074158, 28.944544, 19.573368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843422, 28.929371, 19.637636>,  <38.458862, 28.904083, 19.744749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843422, 28.929371, 19.637636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173659, 0.615471, 0.768790,
		0.213414, -0.785620, 0.580738,
		0.961404, 0.063220, -0.267780,
		39.131844, 28.948338, 19.557302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795231, 28.795153, 20.344652>,  <38.458862, 28.904083, 19.744749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795231, 28.795153, 20.344652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069862, 28.968159, 20.110886>,  <39.234642, 29.071962, 19.970627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069862, 28.968159, 20.110886>,  <38.795231, 28.795153, 20.344652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069862, 28.968159, 20.110886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205429, 0.655655, 0.726578,
		0.697427, -0.618911, 0.361310,
		0.686582, 0.432512, -0.584414,
		39.275837, 29.097914, 19.935560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342922, 28.728727, 20.726906>,  <38.795231, 28.795153, 20.344652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342922, 28.728727, 20.726906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433060, 29.029505, 20.479099>,  <39.487141, 29.209970, 20.330416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433060, 29.029505, 20.479099>,  <39.342922, 28.728727, 20.726906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433060, 29.029505, 20.479099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377360, 0.518877, 0.767051,
		0.898231, -0.406632, -0.166827,
		0.225345, 0.751943, -0.619518,
		39.500664, 29.255087, 20.293243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136173, 28.892984, 20.791691>,  <39.342922, 28.728727, 20.726906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136173, 28.892984, 20.791691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946568, 29.221783, 20.665434>,  <39.832806, 29.419062, 20.589680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946568, 29.221783, 20.665434>,  <40.136173, 28.892984, 20.791691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946568, 29.221783, 20.665434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399686, 0.520282, 0.754690,
		0.784577, 0.231577, -0.575162,
		-0.474015, 0.821997, -0.315643,
		39.804363, 29.468382, 20.570742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648216, 29.455097, 20.849211>,  <40.136173, 28.892984, 20.791691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.648216, 29.455097, 20.849211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288910, 29.630199, 20.833765>,  <40.073326, 29.735262, 20.824497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288910, 29.630199, 20.833765>,  <40.648216, 29.455097, 20.849211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288910, 29.630199, 20.833765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284169, 0.645634, 0.708805,
		0.335216, 0.625721, -0.704347,
		-0.898264, 0.437756, -0.038616,
		40.019432, 29.761526, 20.822180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802715, 30.161591, 20.758459>,  <40.648216, 29.455097, 20.849211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802715, 30.161591, 20.758459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434460, 30.147392, 20.913982>,  <40.213509, 30.138872, 21.007296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.434460, 30.147392, 20.913982>,  <40.802715, 30.161591, 20.758459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434460, 30.147392, 20.913982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260897, 0.684932, 0.680295,
		-0.290455, 0.727742, -0.621311,
		-0.920635, -0.035497, 0.388808,
		40.158268, 30.136744, 21.030624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678841, 30.913767, 21.070810>,  <40.802715, 30.161591, 20.758459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678841, 30.913767, 21.070810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352707, 30.725609, 21.205837>,  <40.157024, 30.612713, 21.286854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352707, 30.725609, 21.205837>,  <40.678841, 30.913767, 21.070810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352707, 30.725609, 21.205837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057400, 0.645832, 0.761318,
		-0.576135, 0.601355, -0.553572,
		-0.815337, -0.470397, 0.337569,
		40.108105, 30.584490, 21.307108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091434, 31.379459, 21.106756>,  <40.678841, 30.913767, 21.070810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091434, 31.379459, 21.106756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022842, 31.087978, 21.371962>,  <39.981689, 30.913090, 21.531084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.022842, 31.087978, 21.371962>,  <40.091434, 31.379459, 21.106756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022842, 31.087978, 21.371962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170262, 0.684774, 0.708587,
		-0.970364, 0.008620, -0.241494,
		-0.171476, -0.728705, 0.663012,
		39.971401, 30.869368, 21.570866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616329, 31.698933, 21.535488>,  <40.091434, 31.379459, 21.106756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616329, 31.698933, 21.535488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776939, 31.396029, 21.741529>,  <39.873306, 31.214287, 21.865154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776939, 31.396029, 21.741529>,  <39.616329, 31.698933, 21.535488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776939, 31.396029, 21.741529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083641, 0.529762, 0.844012,
		-0.912019, -0.381979, 0.149377,
		0.401529, -0.757261, 0.515102,
		39.897400, 31.168850, 21.896061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103649, 31.661968, 22.115288>,  <39.616329, 31.698933, 21.535488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103649, 31.661968, 22.115288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448078, 31.483770, 22.213339>,  <39.654736, 31.376852, 22.272169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448078, 31.483770, 22.213339>,  <39.103649, 31.661968, 22.115288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448078, 31.483770, 22.213339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010378, 0.497375, 0.867473,
		-0.508376, -0.744414, 0.432899,
		0.861073, -0.445495, 0.245128,
		39.706402, 31.350122, 22.286877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012089, 31.629408, 22.836681>,  <39.103649, 31.661968, 22.115288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012089, 31.629408, 22.836681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398643, 31.595232, 22.739697>,  <39.630577, 31.574726, 22.681505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.398643, 31.595232, 22.739697>,  <39.012089, 31.629408, 22.836681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398643, 31.595232, 22.739697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244481, 0.597035, 0.764054,
		0.079479, -0.797652, 0.597858,
		0.966391, -0.085438, -0.242463,
		39.688560, 31.569601, 22.666958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359463, 31.273197, 23.401974>,  <39.012089, 31.629408, 22.836681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359463, 31.273197, 23.401974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620457, 31.499773, 23.200617>,  <39.777054, 31.635719, 23.079803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620457, 31.499773, 23.200617>,  <39.359463, 31.273197, 23.401974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620457, 31.499773, 23.200617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152438, 0.552594, 0.819391,
		0.742308, -0.611380, 0.274214,
		0.652489, 0.566440, -0.503393,
		39.816204, 31.669704, 23.049599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044624, 31.264999, 23.788124>,  <39.359463, 31.273197, 23.401974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044624, 31.264999, 23.788124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021564, 31.592842, 23.560116>,  <40.007729, 31.789547, 23.423311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021564, 31.592842, 23.560116>,  <40.044624, 31.264999, 23.788124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021564, 31.592842, 23.560116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183042, 0.569968, 0.801019,
		0.981413, -0.058159, -0.182880,
		-0.057649, 0.819606, -0.570020,
		40.004269, 31.838724, 23.389111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635025, 31.719217, 23.903887>,  <40.044624, 31.264999, 23.788124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635025, 31.719217, 23.903887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342648, 31.947428, 23.754101>,  <40.167221, 32.084354, 23.664228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342648, 31.947428, 23.754101>,  <40.635025, 31.719217, 23.903887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342648, 31.947428, 23.754101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174039, 0.686410, 0.706082,
		0.659876, 0.450933, -0.601019,
		-0.730941, 0.570527, -0.374465,
		40.123363, 32.118587, 23.641762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868462, 32.310001, 24.157185>,  <40.635025, 31.719217, 23.903887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868462, 32.310001, 24.157185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484402, 32.379715, 24.069796>,  <40.253963, 32.421543, 24.017363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484402, 32.379715, 24.069796>,  <40.868462, 32.310001, 24.157185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484402, 32.379715, 24.069796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109943, 0.483144, 0.868611,
		0.256938, 0.858019, -0.444732,
		-0.960154, 0.174284, -0.218471,
		40.196354, 32.431999, 24.004253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766266, 32.952900, 24.341162>,  <40.868462, 32.310001, 24.157185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766266, 32.952900, 24.341162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382095, 32.844612, 24.314955>,  <40.151592, 32.779640, 24.299231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382095, 32.844612, 24.314955>,  <40.766266, 32.952900, 24.341162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382095, 32.844612, 24.314955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183239, 0.436939, 0.880629,
		-0.209780, 0.857784, -0.469254,
		-0.960425, -0.270724, -0.065519,
		40.093967, 32.763393, 24.295300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358322, 33.574020, 24.450123>,  <40.766266, 32.952900, 24.341162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358322, 33.574020, 24.450123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088123, 33.286346, 24.515205>,  <39.926003, 33.113743, 24.554255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088123, 33.286346, 24.515205>,  <40.358322, 33.574020, 24.450123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088123, 33.286346, 24.515205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388364, 0.534585, 0.750594,
		-0.626796, 0.443837, -0.640418,
		-0.675500, -0.719185, 0.162705,
		39.885475, 33.070591, 24.564016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668011, 33.872540, 24.426270>,  <40.358322, 33.574020, 24.450123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668011, 33.872540, 24.426270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620522, 33.538113, 24.640520>,  <39.592030, 33.337456, 24.769070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620522, 33.538113, 24.640520>,  <39.668011, 33.872540, 24.426270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620522, 33.538113, 24.640520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415128, 0.531827, 0.738125,
		-0.901984, -0.134723, -0.410214,
		-0.118720, -0.836068, 0.535626,
		39.584904, 33.287292, 24.801208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097473, 33.986176, 24.721216>,  <39.668011, 33.872540, 24.426270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097473, 33.986176, 24.721216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233414, 33.685410, 24.947180>,  <39.314976, 33.504948, 25.082758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233414, 33.685410, 24.947180>,  <39.097473, 33.986176, 24.721216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233414, 33.685410, 24.947180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357772, 0.452137, 0.817050,
		-0.869771, -0.479782, -0.115358,
		0.339848, -0.751919, 0.564908,
		39.335369, 33.459835, 25.116652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491070, 33.805710, 25.243040>,  <39.097473, 33.986176, 24.721216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491070, 33.805710, 25.243040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828400, 33.660301, 25.401358>,  <39.030800, 33.573055, 25.496349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828400, 33.660301, 25.401358>,  <38.491070, 33.805710, 25.243040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828400, 33.660301, 25.401358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181147, 0.501108, 0.846213,
		-0.505949, -0.785332, 0.356748,
		0.843327, -0.363517, 0.395795,
		39.081398, 33.551247, 25.520096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338230, 33.407589, 25.951694>,  <38.491070, 33.805710, 25.243040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338230, 33.407589, 25.951694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718891, 33.530312, 25.945557>,  <38.947289, 33.603947, 25.941874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.718891, 33.530312, 25.945557>,  <38.338230, 33.407589, 25.951694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718891, 33.530312, 25.945557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137246, 0.469338, 0.872288,
		0.274826, -0.828005, 0.488752,
		0.951648, 0.306807, -0.015346,
		39.004387, 33.622353, 25.940952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654251, 33.072418, 26.624819>,  <38.338230, 33.407589, 25.951694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654251, 33.072418, 26.624819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864731, 33.391930, 26.508152>,  <38.991020, 33.583637, 26.438152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864731, 33.391930, 26.508152>,  <38.654251, 33.072418, 26.624819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864731, 33.391930, 26.508152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091877, 0.394388, 0.914340,
		0.845383, -0.454328, 0.280916,
		0.526200, 0.798777, -0.291667,
		39.022591, 33.631561, 26.420652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060143, 33.196667, 27.238420>,  <38.654251, 33.072418, 26.624819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060143, 33.196667, 27.238420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104191, 33.532005, 27.024860>,  <39.130619, 33.733208, 26.896725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104191, 33.532005, 27.024860>,  <39.060143, 33.196667, 27.238420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104191, 33.532005, 27.024860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024265, 0.534739, 0.844669,
		0.993622, -0.105972, 0.038545,
		0.110122, 0.838346, -0.533899,
		39.137226, 33.783508, 26.864691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621494, 33.572731, 27.493914>,  <39.060143, 33.196667, 27.238420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621494, 33.572731, 27.493914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379723, 33.843399, 27.325731>,  <39.234661, 34.005802, 27.224823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379723, 33.843399, 27.325731>,  <39.621494, 33.572731, 27.493914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379723, 33.843399, 27.325731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138975, 0.609236, 0.780715,
		0.784446, 0.413452, -0.462279,
		-0.604425, 0.676675, -0.420454,
		39.198395, 34.046402, 27.199594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946770, 34.254387, 27.555607>,  <39.621494, 33.572731, 27.493914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946770, 34.254387, 27.555607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557835, 34.336971, 27.511894>,  <39.324474, 34.386520, 27.485666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557835, 34.336971, 27.511894>,  <39.946770, 34.254387, 27.555607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557835, 34.336971, 27.511894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042765, 0.617245, 0.785608,
		0.229648, 0.759200, -0.608997,
		-0.972334, 0.206457, -0.109282,
		39.266136, 34.398907, 27.479109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832516, 34.975170, 27.573093>,  <39.946770, 34.254387, 27.555607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832516, 34.975170, 27.573093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461361, 34.856579, 27.663540>,  <39.238670, 34.785423, 27.717808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.461361, 34.856579, 27.663540>,  <39.832516, 34.975170, 27.573093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.461361, 34.856579, 27.663540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014399, 0.634465, 0.772817,
		-0.372588, 0.713830, -0.592980,
		-0.927885, -0.296481, 0.226116,
		39.182995, 34.767635, 27.731375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408840, 35.622456, 27.635513>,  <39.832516, 34.975170, 27.573093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408840, 35.622456, 27.635513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232521, 35.318707, 27.826952>,  <39.126732, 35.136456, 27.941814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232521, 35.318707, 27.826952>,  <39.408840, 35.622456, 27.635513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232521, 35.318707, 27.826952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223421, 0.609228, 0.760870,
		-0.869358, 0.228458, -0.438204,
		-0.440793, -0.759373, 0.478596,
		39.100285, 35.090893, 27.970531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043835, 35.942566, 28.088089>,  <39.408840, 35.622456, 27.635513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043835, 35.942566, 28.088089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958103, 35.580517, 28.234957>,  <38.906662, 35.363289, 28.323078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958103, 35.580517, 28.234957>,  <39.043835, 35.942566, 28.088089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958103, 35.580517, 28.234957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246384, 0.413848, 0.876370,
		-0.945176, 0.097370, -0.311709,
		-0.214332, -0.905124, 0.367169,
		38.893803, 35.308979, 28.345108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331379, 35.919643, 28.434706>,  <39.043835, 35.942566, 28.088089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331379, 35.919643, 28.434706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549503, 35.618824, 28.582794>,  <38.680378, 35.438332, 28.671648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549503, 35.618824, 28.582794>,  <38.331379, 35.919643, 28.434706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549503, 35.618824, 28.582794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214740, 0.301596, 0.928938,
		-0.810262, -0.586060, 0.002969,
		0.545309, -0.752046, 0.370223,
		38.713097, 35.393211, 28.693861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921093, 35.498581, 28.857925>,  <38.331379, 35.919643, 28.434706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921093, 35.498581, 28.857925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301704, 35.481060, 28.979700>,  <38.530071, 35.470547, 29.052765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301704, 35.481060, 28.979700>,  <37.921093, 35.498581, 28.857925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301704, 35.481060, 28.979700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260857, 0.409477, 0.874232,
		-0.162950, -0.911268, 0.378202,
		0.951525, -0.043799, 0.304435,
		38.587162, 35.467922, 29.071032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800354, 35.306263, 29.442833>,  <37.921093, 35.498581, 28.857925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800354, 35.306263, 29.442833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168873, 35.460411, 29.463659>,  <38.389984, 35.552898, 29.476156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168873, 35.460411, 29.463659>,  <37.800354, 35.306263, 29.442833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168873, 35.460411, 29.463659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193225, 0.337465, 0.921293,
		0.337465, -0.858842, 0.385367,
		-0.921293, -0.385367, -0.052067,
		38.445259, 35.576019, 29.479279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038456, 35.035736, 30.068333>,  <37.800354, 35.306263, 29.442833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038456, 35.035736, 30.068333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247169, 35.363995, 29.975138>,  <38.372398, 35.560951, 29.919222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247169, 35.363995, 29.975138>,  <38.038456, 35.035736, 30.068333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247169, 35.363995, 29.975138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030994, 0.291168, 0.956170,
		0.852515, -0.491692, 0.177361,
		0.521783, 0.820646, -0.232986,
		38.403706, 35.610188, 29.905243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421909, 35.265976, 30.632317>,  <38.038456, 35.035736, 30.068333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421909, 35.265976, 30.632317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472702, 35.602852, 30.422710>,  <38.503178, 35.804977, 30.296946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472702, 35.602852, 30.422710>,  <38.421909, 35.265976, 30.632317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472702, 35.602852, 30.422710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154322, 0.505087, 0.849159,
		0.979826, -0.188697, -0.065831,
		0.126983, 0.842188, -0.524018,
		38.510796, 35.855507, 30.265505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040443, 35.477680, 30.789265>,  <38.421909, 35.265976, 30.632317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040443, 35.477680, 30.789265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835907, 35.797901, 30.664272>,  <38.713184, 35.990036, 30.589277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835907, 35.797901, 30.664272>,  <39.040443, 35.477680, 30.789265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835907, 35.797901, 30.664272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026021, 0.349020, 0.936754,
		0.858986, 0.487129, -0.157636,
		-0.511338, 0.800556, -0.312479,
		38.682507, 36.038067, 30.570528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300762, 36.055031, 31.134642>,  <39.040443, 35.477680, 30.789265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300762, 36.055031, 31.134642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955582, 36.217480, 31.014389>,  <38.748474, 36.314949, 30.942238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955582, 36.217480, 31.014389>,  <39.300762, 36.055031, 31.134642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955582, 36.217480, 31.014389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109213, 0.430991, 0.895723,
		0.493345, 0.805797, -0.327570,
		-0.862951, 0.406125, -0.300630,
		38.696697, 36.339317, 30.924200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288586, 36.668663, 31.464481>,  <39.300762, 36.055031, 31.134642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288586, 36.668663, 31.464481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910206, 36.620361, 31.344086>,  <38.683178, 36.591381, 31.271849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910206, 36.620361, 31.344086>,  <39.288586, 36.668663, 31.464481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910206, 36.620361, 31.344086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322627, 0.444867, 0.835467,
		0.033010, 0.887418, -0.459782,
		-0.945950, -0.120759, -0.300990,
		38.626419, 36.584133, 31.253788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975815, 37.397221, 31.525520>,  <39.288586, 36.668663, 31.464481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975815, 37.397221, 31.525520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662228, 37.148907, 31.527063>,  <38.474075, 36.999916, 31.527988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662228, 37.148907, 31.527063>,  <38.975815, 37.397221, 31.525520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662228, 37.148907, 31.527063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347246, 0.443659, 0.826188,
		-0.514598, 0.646367, -0.563381,
		-0.783970, -0.620786, 0.003858,
		38.427036, 36.962669, 31.528221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356689, 37.770103, 31.491802>,  <38.975815, 37.397221, 31.525520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356689, 37.770103, 31.491802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253345, 37.428288, 31.672031>,  <38.191338, 37.223198, 31.780169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253345, 37.428288, 31.672031>,  <38.356689, 37.770103, 31.491802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253345, 37.428288, 31.672031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474989, 0.518504, 0.711013,
		-0.841211, -0.030320, -0.539856,
		-0.258360, -0.854537, 0.450573,
		38.175838, 37.171925, 31.807203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578903, 37.839314, 31.752188>,  <38.356689, 37.770103, 31.491802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578903, 37.839314, 31.752188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731644, 37.525581, 31.947744>,  <37.823288, 37.337341, 32.065079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731644, 37.525581, 31.947744>,  <37.578903, 37.839314, 31.752188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731644, 37.525581, 31.947744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519364, 0.255455, 0.815478,
		-0.764495, -0.565302, -0.309808,
		0.381849, -0.784332, 0.488892,
		37.846199, 37.290283, 32.094414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103176, 37.571827, 32.046673>,  <37.578903, 37.839314, 31.752188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103176, 37.571827, 32.046673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408649, 37.444969, 32.271599>,  <37.591934, 37.368855, 32.406555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408649, 37.444969, 32.271599>,  <37.103176, 37.571827, 32.046673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408649, 37.444969, 32.271599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548781, 0.139862, 0.824183,
		-0.340036, -0.938006, -0.067235,
		0.763685, -0.317149, 0.562318,
		37.637756, 37.349823, 32.440292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724026, 37.226337, 32.675030>,  <37.103176, 37.571827, 32.046673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724026, 37.226337, 32.675030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101624, 37.307785, 32.778889>,  <37.328182, 37.356651, 32.841206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101624, 37.307785, 32.778889>,  <36.724026, 37.226337, 32.675030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101624, 37.307785, 32.778889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285300, 0.108343, 0.952295,
		0.165771, -0.973038, 0.160367,
		0.943993, 0.203616, 0.259648,
		37.384823, 37.368870, 32.856785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859291, 36.820541, 33.285534>,  <36.724026, 37.226337, 32.675030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859291, 36.820541, 33.285534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096645, 37.142490, 33.282101>,  <37.239059, 37.335659, 33.280041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.096645, 37.142490, 33.282101>,  <36.859291, 36.820541, 33.285534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096645, 37.142490, 33.282101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318096, 0.244286, 0.916045,
		0.739396, -0.540838, 0.400983,
		0.593387, 0.804872, -0.008586,
		37.274662, 37.383953, 33.279526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902393, 36.862648, 33.951599>,  <36.859291, 36.820541, 33.285534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902393, 36.862648, 33.951599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107780, 37.187550, 33.840897>,  <37.231014, 37.382488, 33.774475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107780, 37.187550, 33.840897>,  <36.902393, 36.862648, 33.951599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107780, 37.187550, 33.840897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156510, 0.405761, 0.900479,
		0.843714, -0.419053, 0.335472,
		0.513470, 0.812251, -0.276760,
		37.261822, 37.431225, 33.757870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459286, 37.000401, 34.431892>,  <36.902393, 36.862648, 33.951599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459286, 37.000401, 34.431892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356853, 37.359032, 34.287354>,  <37.295395, 37.574211, 34.200630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356853, 37.359032, 34.287354>,  <37.459286, 37.000401, 34.431892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356853, 37.359032, 34.287354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060658, 0.358173, 0.931683,
		0.964750, 0.260507, -0.037338,
		-0.256084, 0.896576, -0.361349,
		37.280029, 37.628006, 34.178947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781956, 37.584633, 34.725739>,  <37.459286, 37.000401, 34.431892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781956, 37.584633, 34.725739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452961, 37.762997, 34.584496>,  <37.255566, 37.870014, 34.499752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452961, 37.762997, 34.584496>,  <37.781956, 37.584633, 34.725739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452961, 37.762997, 34.584496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057059, 0.552989, 0.831232,
		0.565916, 0.703825, -0.429383,
		-0.822486, 0.445907, -0.353105,
		37.206215, 37.896770, 34.478565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772526, 38.301052, 35.006283>,  <37.781956, 37.584633, 34.725739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772526, 38.301052, 35.006283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408001, 38.260212, 34.846741>,  <37.189285, 38.235706, 34.751015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408001, 38.260212, 34.846741>,  <37.772526, 38.301052, 35.006283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408001, 38.260212, 34.846741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377353, 0.594608, 0.709962,
		0.164674, 0.797506, -0.580403,
		-0.911311, -0.102104, -0.398857,
		37.134609, 38.229580, 34.727085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551697, 38.920197, 34.902985>,  <37.772526, 38.301052, 35.006283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551697, 38.920197, 34.902985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217613, 38.701023, 34.921719>,  <37.017162, 38.569519, 34.932961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217613, 38.701023, 34.921719>,  <37.551697, 38.920197, 34.902985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217613, 38.701023, 34.921719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444034, 0.722168, 0.530384,
		-0.324439, 0.422184, -0.846463,
		-0.835208, -0.547936, 0.046835,
		36.967052, 38.536644, 34.935768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030869, 39.327961, 34.680706>,  <37.551697, 38.920197, 34.902985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030869, 39.327961, 34.680706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744179, 39.100555, 34.842247>,  <36.572163, 38.964111, 34.939171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.744179, 39.100555, 34.842247>,  <37.030869, 39.327961, 34.680706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744179, 39.100555, 34.842247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522299, 0.821356, 0.229301,
		-0.462069, -0.046586, -0.885620,
		-0.716726, -0.568511, 0.403855,
		36.529160, 38.930000, 34.963402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268730, 39.563492, 34.530334>,  <37.030869, 39.327961, 34.680706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268730, 39.563492, 34.530334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257599, 39.336681, 34.859627>,  <36.250919, 39.200596, 35.057201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257599, 39.336681, 34.859627>,  <36.268730, 39.563492, 34.530334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257599, 39.336681, 34.859627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657420, 0.630761, 0.412237,
		-0.753010, -0.529736, -0.390327,
		-0.027826, -0.567028, 0.823229,
		36.249252, 39.166573, 35.106594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530235, 39.348152, 34.577301>,  <36.268730, 39.563492, 34.530334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530235, 39.348152, 34.577301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692043, 39.308094, 34.940914>,  <35.789127, 39.284058, 35.159081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.692043, 39.308094, 34.940914>,  <35.530235, 39.348152, 34.577301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692043, 39.308094, 34.940914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545476, 0.771397, 0.327723,
		-0.734045, -0.628424, 0.257414,
		0.404517, -0.100150, 0.909030,
		35.813400, 39.278049, 35.213623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986462, 39.351151, 35.022778>,  <35.530235, 39.348152, 34.577301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986462, 39.351151, 35.022778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314720, 39.470245, 35.217873>,  <35.511677, 39.541702, 35.334930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.314720, 39.470245, 35.217873>,  <34.986462, 39.351151, 35.022778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314720, 39.470245, 35.217873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505318, 0.776649, 0.376125,
		-0.266814, -0.555129, 0.787808,
		0.820648, 0.297738, 0.487737,
		35.560913, 39.559566, 35.364193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950359, 39.270584, 35.805965>,  <34.986462, 39.351151, 35.022778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950359, 39.270584, 35.805965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169285, 39.559803, 35.637371>,  <35.300640, 39.733334, 35.536217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169285, 39.559803, 35.637371>,  <34.950359, 39.270584, 35.805965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169285, 39.559803, 35.637371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619789, 0.688586, 0.376446,
		0.562417, 0.055198, 0.825009,
		0.547311, 0.723051, -0.421484,
		35.333477, 39.776718, 35.510925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605877, 39.759560, 36.257450>,  <34.950359, 39.270584, 35.805965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605877, 39.759560, 36.257450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795773, 40.098431, 36.162018>,  <34.909710, 40.301754, 36.104759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795773, 40.098431, 36.162018>,  <34.605877, 39.759560, 36.257450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795773, 40.098431, 36.162018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562797, 0.500614, 0.657757,
		0.676671, -0.177991, 0.714448,
		0.474738, 0.847174, -0.238578,
		34.938194, 40.352585, 36.090443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905350, 39.924072, 36.805382>,  <34.605877, 39.759560, 36.257450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905350, 39.924072, 36.805382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892883, 40.261341, 36.590687>,  <34.885403, 40.463703, 36.461868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892883, 40.261341, 36.590687>,  <34.905350, 39.924072, 36.805382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892883, 40.261341, 36.590687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489567, 0.455295, 0.743661,
		0.871409, 0.285948, 0.398598,
		-0.031169, 0.843173, -0.536739,
		34.883533, 40.514294, 36.429665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061226, 40.424740, 37.308319>,  <34.905350, 39.924072, 36.805382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061226, 40.424740, 37.308319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936512, 40.638927, 36.994358>,  <34.861683, 40.767441, 36.805981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936512, 40.638927, 36.994358>,  <35.061226, 40.424740, 37.308319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936512, 40.638927, 36.994358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209080, 0.767164, 0.606419,
		0.926865, 0.353176, -0.127232,
		-0.311781, 0.535467, -0.784900,
		34.842979, 40.799568, 36.758888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451370, 41.125912, 37.301067>,  <35.061226, 40.424740, 37.308319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451370, 41.125912, 37.301067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082066, 41.146294, 37.148750>,  <34.860485, 41.158524, 37.057362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082066, 41.146294, 37.148750>,  <35.451370, 41.125912, 37.301067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082066, 41.146294, 37.148750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246665, 0.681272, 0.689221,
		0.294537, 0.730255, -0.616421,
		-0.923258, 0.050951, -0.380788,
		34.805088, 41.161579, 37.034515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276699, 41.623669, 37.596611>,  <35.451370, 41.125912, 37.301067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276699, 41.623669, 37.596611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927799, 41.513947, 37.434658>,  <34.718460, 41.448112, 37.337486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927799, 41.513947, 37.434658>,  <35.276699, 41.623669, 37.596611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927799, 41.513947, 37.434658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479532, 0.642281, 0.597932,
		0.096030, 0.715702, -0.691772,
		-0.872254, -0.274308, -0.404881,
		34.666122, 41.431656, 37.313194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957062, 42.211887, 37.313534>,  <35.276699, 41.623669, 37.596611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957062, 42.211887, 37.313534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695652, 41.937138, 37.440727>,  <34.538807, 41.772289, 37.517044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695652, 41.937138, 37.440727>,  <34.957062, 42.211887, 37.313534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695652, 41.937138, 37.440727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373649, 0.658111, 0.653664,
		-0.658252, 0.308371, -0.686741,
		-0.653522, -0.686875, 0.317980,
		34.499596, 41.731075, 37.536121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325081, 42.628044, 37.477936>,  <34.957062, 42.211887, 37.313534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325081, 42.628044, 37.477936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337860, 42.285240, 37.683659>,  <34.345528, 42.079559, 37.807091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337860, 42.285240, 37.683659>,  <34.325081, 42.628044, 37.477936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337860, 42.285240, 37.683659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449922, 0.447154, 0.773061,
		-0.892496, -0.256098, -0.371301,
		0.031951, -0.857011, 0.514307,
		34.347446, 42.028137, 37.837952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624233, 42.380245, 37.810345>,  <34.325081, 42.628044, 37.477936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624233, 42.380245, 37.810345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946663, 42.257195, 38.012577>,  <34.140121, 42.183365, 38.133915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946663, 42.257195, 38.012577>,  <33.624233, 42.380245, 37.810345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946663, 42.257195, 38.012577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324041, 0.485438, 0.812002,
		-0.495219, -0.818363, 0.291617,
		0.806074, -0.307623, 0.505581,
		34.188484, 42.164909, 38.164253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479641, 43.050949, 38.215813>,  <33.624233, 42.380245, 37.810345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479641, 43.050949, 38.215813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123207, 42.911354, 38.099758>,  <32.909348, 42.827595, 38.030125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123207, 42.911354, 38.099758>,  <33.479641, 43.050949, 38.215813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123207, 42.911354, 38.099758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256290, 0.140646, -0.956313,
		0.374552, -0.926511, -0.035884,
		-0.891082, -0.348992, -0.290135,
		32.855881, 42.806656, 38.012718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663086, 42.562824, 38.713745>,  <33.479641, 43.050949, 38.215813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663086, 42.562824, 38.713745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562374, 42.221802, 38.896946>,  <33.501949, 42.017189, 39.006866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562374, 42.221802, 38.896946>,  <33.663086, 42.562824, 38.713745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562374, 42.221802, 38.896946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272754, -0.516569, -0.811641,
		0.928555, -0.079430, 0.362596,
		-0.251775, -0.852553, 0.457998,
		33.486843, 41.966034, 39.034344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257225, 41.991932, 38.824917>,  <33.663086, 42.562824, 38.713745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257225, 41.991932, 38.824917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893326, 41.844177, 38.749111>,  <33.674988, 41.755524, 38.703629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893326, 41.844177, 38.749111>,  <34.257225, 41.991932, 38.824917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893326, 41.844177, 38.749111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323402, -0.344294, -0.881404,
		0.260332, -0.863142, 0.432681,
		-0.909746, -0.369388, -0.189511,
		33.620403, 41.733360, 38.692257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303242, 41.319862, 38.820335>,  <34.257225, 41.991932, 38.824917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303242, 41.319862, 38.820335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021397, 41.478874, 38.585220>,  <33.852291, 41.574280, 38.444153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021397, 41.478874, 38.585220>,  <34.303242, 41.319862, 38.820335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021397, 41.478874, 38.585220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535191, -0.246188, -0.808061,
		-0.465935, -0.883946, -0.039288,
		-0.704610, 0.397530, -0.587788,
		33.810013, 41.598133, 38.408882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891537, 40.814911, 38.287952>,  <34.303242, 41.319862, 38.820335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891537, 40.814911, 38.287952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958942, 41.192219, 38.173515>,  <33.999386, 41.418602, 38.104851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958942, 41.192219, 38.173515>,  <33.891537, 40.814911, 38.287952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958942, 41.192219, 38.173515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655297, -0.324023, -0.682345,
		-0.736336, -0.072497, -0.672721,
		0.168510, 0.943267, -0.286097,
		34.009495, 41.475201, 38.087685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591755, 40.795238, 37.709812>,  <33.891537, 40.814911, 38.287952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591755, 40.795238, 37.709812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851212, 41.095444, 37.659218>,  <34.006886, 41.275566, 37.628860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851212, 41.095444, 37.659218>,  <33.591755, 40.795238, 37.709812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851212, 41.095444, 37.659218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309167, -0.411683, -0.857282,
		-0.695472, 0.516963, -0.499067,
		0.648641, 0.750511, -0.126486,
		34.045803, 41.320599, 37.621273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430832, 41.129696, 36.989971>,  <33.591755, 40.795238, 37.709812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430832, 41.129696, 36.989971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806782, 41.233887, 37.078331>,  <34.032352, 41.296402, 37.131348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806782, 41.233887, 37.078331>,  <33.430832, 41.129696, 36.989971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806782, 41.233887, 37.078331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301514, -0.329047, -0.894884,
		-0.160410, 0.907679, -0.387799,
		0.939871, 0.260475, 0.220896,
		34.088741, 41.312031, 37.144600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679848, 41.473434, 36.455235>,  <33.430832, 41.129696, 36.989971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679848, 41.473434, 36.455235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025162, 41.380173, 36.634289>,  <34.232349, 41.324215, 36.741722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025162, 41.380173, 36.634289>,  <33.679848, 41.473434, 36.455235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025162, 41.380173, 36.634289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391109, -0.251568, -0.885295,
		0.319023, 0.939336, -0.125985,
		0.863283, -0.233156, 0.447639,
		34.284145, 41.310226, 36.768581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101711, 41.365334, 35.881584>,  <33.679848, 41.473434, 36.455235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101711, 41.365334, 35.881584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348740, 41.216869, 36.158955>,  <34.496956, 41.127789, 36.325378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348740, 41.216869, 36.158955>,  <34.101711, 41.365334, 35.881584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348740, 41.216869, 36.158955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589089, -0.365881, -0.720490,
		0.521131, 0.853446, -0.007310,
		0.617574, -0.371163, 0.693427,
		34.534012, 41.105522, 36.366982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759151, 41.672356, 35.837444>,  <34.101711, 41.365334, 35.881584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759151, 41.672356, 35.837444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796272, 41.303398, 35.987415>,  <34.818546, 41.082024, 36.077396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796272, 41.303398, 35.987415>,  <34.759151, 41.672356, 35.837444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796272, 41.303398, 35.987415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685719, -0.213813, -0.695755,
		0.721926, 0.321662, 0.612663,
		0.092803, -0.922398, 0.374927,
		34.824112, 41.026680, 36.099892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455292, 41.551968, 35.639935>,  <34.759151, 41.672356, 35.837444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455292, 41.551968, 35.639935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291157, 41.219963, 35.791039>,  <35.192677, 41.020760, 35.881702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.291157, 41.219963, 35.791039>,  <35.455292, 41.551968, 35.639935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291157, 41.219963, 35.791039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442657, -0.543455, -0.713240,
		0.797295, -0.125450, 0.590410,
		-0.410337, -0.830011, 0.377763,
		35.168056, 40.970959, 35.904366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941601, 40.986729, 35.841442>,  <35.455292, 41.551968, 35.639935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941601, 40.986729, 35.841442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613449, 40.768612, 35.772594>,  <35.416557, 40.637741, 35.731285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613449, 40.768612, 35.772594>,  <35.941601, 40.986729, 35.841442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613449, 40.768612, 35.772594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512313, -0.567236, -0.644809,
		0.253982, -0.617167, 0.744713,
		-0.820383, -0.545297, -0.172115,
		35.367332, 40.605022, 35.720959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965874, 40.222374, 35.617905>,  <35.941601, 40.986729, 35.841442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965874, 40.222374, 35.617905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741314, 39.966209, 35.827553>,  <35.606579, 39.812511, 35.953342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741314, 39.966209, 35.827553>,  <35.965874, 40.222374, 35.617905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741314, 39.966209, 35.827553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568642, -0.758668, -0.317914,
		0.601229, 0.119559, 0.790082,
		-0.561400, -0.640413, 0.524120,
		35.572895, 39.774086, 35.984787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392899, 39.733356, 36.092064>,  <35.965874, 40.222374, 35.617905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392899, 39.733356, 36.092064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048500, 39.578659, 35.959930>,  <35.841862, 39.485840, 35.880650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048500, 39.578659, 35.959930>,  <36.392899, 39.733356, 36.092064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048500, 39.578659, 35.959930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506388, -0.712566, -0.485614,
		-0.047578, -0.585388, 0.809356,
		-0.860992, -0.386744, -0.330336,
		35.790203, 39.462635, 35.860828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249550, 39.019249, 36.400570>,  <36.392899, 39.733356, 36.092064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249550, 39.019249, 36.400570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110233, 39.072979, 36.029484>,  <36.026642, 39.105217, 35.806831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110233, 39.072979, 36.029484>,  <36.249550, 39.019249, 36.400570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110233, 39.072979, 36.029484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574440, -0.751491, -0.324470,
		-0.740751, -0.645925, 0.184577,
		-0.348291, 0.134323, -0.927713,
		36.005745, 39.113277, 35.751171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854794, 38.508629, 36.192654>,  <36.249550, 39.019249, 36.400570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854794, 38.508629, 36.192654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983025, 38.657166, 35.844093>,  <36.059963, 38.746288, 35.634956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983025, 38.657166, 35.844093>,  <35.854794, 38.508629, 36.192654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983025, 38.657166, 35.844093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365926, -0.897084, -0.247667,
		-0.873685, -0.239470, -0.423471,
		0.320580, 0.371342, -0.871397,
		36.079197, 38.768570, 35.582676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940750, 37.960583, 35.666172>,  <35.854794, 38.508629, 36.192654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940750, 37.960583, 35.666172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155727, 38.245758, 35.486004>,  <36.284714, 38.416862, 35.377903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155727, 38.245758, 35.486004>,  <35.940750, 37.960583, 35.666172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155727, 38.245758, 35.486004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418376, -0.689164, -0.591620,
		-0.732203, 0.129513, -0.668660,
		0.537439, 0.712937, -0.450422,
		36.316959, 38.459641, 35.350876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874065, 37.793461, 34.947254>,  <35.940750, 37.960583, 35.666172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874065, 37.793461, 34.947254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208080, 38.013119, 34.960846>,  <36.408489, 38.144913, 34.969002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208080, 38.013119, 34.960846>,  <35.874065, 37.793461, 34.947254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208080, 38.013119, 34.960846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344554, -0.473778, -0.810442,
		-0.428951, 0.688457, -0.584832,
		0.835035, 0.549146, 0.033984,
		36.458591, 38.177864, 34.971043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943985, 38.126347, 34.318703>,  <35.874065, 37.793461, 34.947254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943985, 38.126347, 34.318703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318733, 38.124996, 34.458569>,  <36.543583, 38.124184, 34.542488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318733, 38.124996, 34.458569>,  <35.943985, 38.126347, 34.318703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318733, 38.124996, 34.458569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339848, -0.226678, -0.912754,
		0.082345, 0.973964, -0.211220,
		0.936868, -0.003378, 0.349666,
		36.599792, 38.123981, 34.563469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329559, 38.253052, 33.699913>,  <35.943985, 38.126347, 34.318703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329559, 38.253052, 33.699913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628315, 38.163971, 33.950531>,  <36.807568, 38.110523, 34.100903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628315, 38.163971, 33.950531>,  <36.329559, 38.253052, 33.699913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628315, 38.163971, 33.950531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633308, -0.048964, -0.772349,
		0.202681, 0.973656, 0.104467,
		0.746888, -0.222701, 0.626549,
		36.852383, 38.097160, 34.138496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916302, 38.609737, 33.457520>,  <36.329559, 38.253052, 33.699913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916302, 38.609737, 33.457520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052216, 38.319908, 33.697365>,  <37.133762, 38.146011, 33.841274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052216, 38.319908, 33.697365>,  <36.916302, 38.609737, 33.457520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052216, 38.319908, 33.697365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655675, -0.274576, -0.703347,
		0.674269, 0.632137, 0.381791,
		0.339781, -0.724576, 0.599615,
		37.154152, 38.102535, 33.877251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653053, 38.618130, 33.451805>,  <36.916302, 38.609737, 33.457520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653053, 38.618130, 33.451805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552189, 38.240913, 33.538609>,  <37.491673, 38.014584, 33.590691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552189, 38.240913, 33.538609>,  <37.653053, 38.618130, 33.451805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552189, 38.240913, 33.538609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634655, -0.330453, -0.698580,
		0.730499, -0.038429, 0.681832,
		-0.252159, -0.943040, 0.217007,
		37.476540, 37.958000, 33.603710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237041, 38.287109, 33.321598>,  <37.653053, 38.618130, 33.451805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237041, 38.287109, 33.321598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940533, 38.018753, 33.313389>,  <37.762627, 37.857738, 33.308464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.940533, 38.018753, 33.313389>,  <38.237041, 38.287109, 33.321598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940533, 38.018753, 33.313389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426883, -0.447623, -0.785751,
		0.517970, -0.591213, 0.618203,
		-0.741268, -0.670896, -0.020523,
		37.718151, 37.817486, 33.307232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565250, 37.614956, 33.378002>,  <38.237041, 38.287109, 33.321598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565250, 37.614956, 33.378002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213219, 37.555622, 33.197575>,  <38.001999, 37.520023, 33.089317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213219, 37.555622, 33.197575>,  <38.565250, 37.614956, 33.378002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213219, 37.555622, 33.197575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473523, -0.344686, -0.810535,
		-0.035247, -0.926924, 0.373590,
		-0.880075, -0.148335, -0.451069,
		37.949196, 37.511124, 33.062252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717163, 36.954292, 33.057320>,  <38.565250, 37.614956, 33.378002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717163, 36.954292, 33.057320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378593, 37.075172, 32.881939>,  <38.175453, 37.147701, 32.776711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378593, 37.075172, 32.881939>,  <38.717163, 36.954292, 33.057320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378593, 37.075172, 32.881939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204513, -0.575740, -0.791642,
		-0.491667, -0.759735, 0.425518,
		-0.846427, 0.302201, -0.438448,
		38.124664, 37.165833, 32.750404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390102, 37.017365, 33.337948>,  <38.717163, 36.954292, 33.057320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390102, 37.017365, 33.337948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565159, 36.993984, 32.979050>,  <39.670193, 36.979958, 32.763710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565159, 36.993984, 32.979050>,  <39.390102, 37.017365, 33.337948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565159, 36.993984, 32.979050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898067, 0.077338, 0.433007,
		0.044082, -0.995290, 0.086339,
		0.437645, -0.058451, -0.897246,
		39.696453, 36.976448, 32.709877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697590, 37.353233, 33.957642>,  <39.390102, 37.017365, 33.337948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697590, 37.353233, 33.957642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935211, 37.044155, 34.047112>,  <40.077785, 36.858707, 34.100796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935211, 37.044155, 34.047112>,  <39.697590, 37.353233, 33.957642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935211, 37.044155, 34.047112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756200, 0.631248, 0.172297,
		-0.274332, 0.066792, 0.959313,
		0.594057, -0.772699, 0.223680,
		40.113430, 36.812344, 34.114216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940773, 37.516842, 34.564987>,  <39.697590, 37.353233, 33.957642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940773, 37.516842, 34.564987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188301, 37.253922, 34.392937>,  <40.336819, 37.096169, 34.289707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188301, 37.253922, 34.392937>,  <39.940773, 37.516842, 34.564987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188301, 37.253922, 34.392937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763877, 0.631216, 0.134385,
		0.183173, -0.411726, 0.892709,
		0.618822, -0.657304, -0.430130,
		40.373947, 37.056732, 34.263897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616879, 37.543816, 34.965069>,  <39.940773, 37.516842, 34.564987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616879, 37.543816, 34.965069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688599, 37.393215, 34.601509>,  <40.731632, 37.302853, 34.383373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688599, 37.393215, 34.601509>,  <40.616879, 37.543816, 34.965069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688599, 37.393215, 34.601509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875781, 0.481959, -0.026880,
		0.448172, -0.791177, 0.416150,
		0.179301, -0.376503, -0.908899,
		40.742390, 37.280266, 34.328838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247166, 37.697071, 34.924858>,  <40.616879, 37.543816, 34.965069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247166, 37.697071, 34.924858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197750, 37.462116, 34.604931>,  <41.168098, 37.321144, 34.412975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.197750, 37.462116, 34.604931>,  <41.247166, 37.697071, 34.924858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197750, 37.462116, 34.604931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950772, 0.160769, -0.264925,
		0.284199, -0.793178, 0.538608,
		-0.123542, -0.587385, -0.799823,
		41.160686, 37.285900, 34.364983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778606, 37.212128, 35.031021>,  <41.247166, 37.697071, 34.924858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778606, 37.212128, 35.031021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686565, 37.236004, 34.642487>,  <41.631340, 37.250328, 34.409367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686565, 37.236004, 34.642487>,  <41.778606, 37.212128, 35.031021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686565, 37.236004, 34.642487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965855, 0.136138, -0.220435,
		0.119078, -0.988890, -0.088976,
		-0.230099, 0.059689, -0.971335,
		41.617535, 37.253910, 34.351086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247005, 36.751663, 34.639915>,  <41.778606, 37.212128, 35.031021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247005, 36.751663, 34.639915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106949, 37.046944, 34.409279>,  <42.022915, 37.224110, 34.270897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106949, 37.046944, 34.409279>,  <42.247005, 36.751663, 34.639915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106949, 37.046944, 34.409279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904279, 0.105858, -0.413611,
		-0.244291, -0.666225, -0.704604,
		-0.350146, 0.738199, -0.576593,
		42.001904, 37.268402, 34.236301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115498, 36.290672, 34.147690>,  <42.247005, 36.751663, 34.639915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115498, 36.290672, 34.147690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510639, 36.352634, 34.152561>,  <42.747723, 36.389812, 34.155483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510639, 36.352634, 34.152561>,  <42.115498, 36.290672, 34.147690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510639, 36.352634, 34.152561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155197, -0.979787, -0.126219,
		-0.007617, 0.126577, -0.991928,
		0.987854, 0.154905, 0.012181,
		42.806995, 36.399105, 34.156216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509068, 36.045918, 34.821434>,  <42.115498, 36.290672, 34.147690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509068, 36.045918, 34.821434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209694, 36.204205, 35.034325>,  <42.030071, 36.299175, 35.162060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209694, 36.204205, 35.034325>,  <42.509068, 36.045918, 34.821434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209694, 36.204205, 35.034325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225470, 0.906507, -0.356944,
		-0.623712, -0.147147, -0.767679,
		-0.748429, 0.395719, 0.532222,
		41.985165, 36.322922, 35.193993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264198, 36.125847, 34.516602>,  <42.509068, 36.045918, 34.821434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264198, 36.125847, 34.516602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201271, 36.466629, 34.316837>,  <43.163513, 36.671101, 34.196980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201271, 36.466629, 34.316837>,  <43.264198, 36.125847, 34.516602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201271, 36.466629, 34.316837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965903, -0.027451, 0.257443,
		0.205622, 0.522888, 0.827229,
		-0.157322, 0.851959, -0.499415,
		43.154076, 36.722218, 34.167011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950794, 36.290825, 34.178646>,  <43.264198, 36.125847, 34.516602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950794, 36.290825, 34.178646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857109, 36.133442, 34.534248>,  <43.800900, 36.039013, 34.747612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857109, 36.133442, 34.534248>,  <43.950794, 36.290825, 34.178646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857109, 36.133442, 34.534248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840302, -0.541806, -0.018414,
		0.488916, 0.742724, 0.457517,
		-0.234209, -0.393455, 0.889010,
		43.786846, 36.015404, 34.800953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.494415, 36.399323, 34.812073>,  <43.950794, 36.290825, 34.178646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.494415, 36.399323, 34.812073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289349, 36.056446, 34.792500>,  <44.166309, 35.850719, 34.780754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.289349, 36.056446, 34.792500>,  <44.494415, 36.399323, 34.812073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.289349, 36.056446, 34.792500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858581, -0.511661, -0.032276,
		0.002629, -0.058560, 0.998280,
		-0.512671, -0.857189, -0.048934,
		44.135548, 35.799290, 34.777821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668869, 35.890400, 35.323658>,  <44.494415, 36.399323, 34.812073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668869, 35.890400, 35.323658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600071, 35.718224, 34.969227>,  <44.558792, 35.614918, 34.756569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.600071, 35.718224, 34.969227>,  <44.668869, 35.890400, 35.323658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.600071, 35.718224, 34.969227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907311, -0.419548, 0.027688,
		-0.383671, -0.799189, 0.462703,
		-0.171998, -0.430438, -0.886081,
		44.548473, 35.589092, 34.703403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.906761, 35.204361, 35.468548>,  <44.668869, 35.890400, 35.323658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.906761, 35.204361, 35.468548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.901768, 35.220669, 35.068913>,  <44.898773, 35.230453, 34.829132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.901768, 35.220669, 35.068913>,  <44.906761, 35.204361, 35.468548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.901768, 35.220669, 35.068913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852432, -0.521861, -0.031946,
		-0.522689, -0.852056, -0.028237,
		-0.012484, 0.040768, -0.999091,
		44.898022, 35.232899, 34.769184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.274307, 34.636913, 35.324028>,  <44.906761, 35.204361, 35.468548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.274307, 34.636913, 35.324028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.285923, 34.871044, 34.999916>,  <45.292892, 35.011524, 34.805450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.285923, 34.871044, 34.999916>,  <45.274307, 34.636913, 35.324028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.285923, 34.871044, 34.999916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944245, -0.282025, -0.169892,
		-0.327961, -0.760167, -0.560881,
		0.029037, 0.585327, -0.810277,
		45.294636, 35.046642, 34.756832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.552303, 34.244141, 34.810970>,  <45.274307, 34.636913, 35.324028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.552303, 34.244141, 34.810970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638611, 34.620922, 34.708076>,  <45.690395, 34.846992, 34.646339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638611, 34.620922, 34.708076>,  <45.552303, 34.244141, 34.810970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638611, 34.620922, 34.708076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969680, -0.237661, -0.056895,
		-0.114726, -0.237157, -0.964673,
		0.215773, 0.941952, -0.257232,
		45.703342, 34.903507, 34.630905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.917965, 34.321865, 34.220337>,  <45.552303, 34.244141, 34.810970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.917965, 34.321865, 34.220337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043049, 34.622383, 34.452812>,  <46.118099, 34.802692, 34.592297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.043049, 34.622383, 34.452812>,  <45.917965, 34.321865, 34.220337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.043049, 34.622383, 34.452812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947736, -0.287580, -0.138181,
		0.063323, 0.594019, -0.801955,
		0.312708, 0.751292, 0.581184,
		46.136860, 34.847771, 34.627167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.397156, 34.897167, 33.933880>,  <45.917965, 34.321865, 34.220337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.397156, 34.897167, 33.933880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464909, 34.844479, 34.324562>,  <46.505562, 34.812866, 34.558971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464909, 34.844479, 34.324562>,  <46.397156, 34.897167, 33.933880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.464909, 34.844479, 34.324562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907976, -0.364536, -0.206625,
		0.383261, 0.921827, 0.057849,
		0.169384, -0.131717, 0.976709,
		46.515724, 34.804962, 34.617573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.156471, 35.216824, 33.901413>,  <46.397156, 34.897167, 33.933880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.156471, 35.216824, 33.901413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.020779, 35.319626, 34.263378>,  <46.939365, 35.381306, 34.480556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.020779, 35.319626, 34.263378>,  <47.156471, 35.216824, 33.901413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.020779, 35.319626, 34.263378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544771, -0.730564, 0.411705,
		0.766909, 0.632634, 0.107819,
		-0.339227, 0.257004, 0.904917,
		46.919010, 35.396729, 34.534855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.793114, 34.991215, 34.277760>,  <47.156471, 35.216824, 33.901413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.793114, 34.991215, 34.277760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.483620, 35.038074, 34.526794>,  <47.297924, 35.066193, 34.676216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.483620, 35.038074, 34.526794>,  <47.793114, 34.991215, 34.277760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.483620, 35.038074, 34.526794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518947, -0.446462, 0.728948,
		0.363359, 0.887100, 0.284647,
		-0.773734, 0.117153, 0.622584,
		47.251499, 35.073219, 34.713570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.041718, 35.393490, 34.920887>,  <47.793114, 34.991215, 34.277760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.041718, 35.393490, 34.920887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.742691, 35.153976, 35.035847>,  <47.563274, 35.010269, 35.104824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.742691, 35.153976, 35.035847>,  <48.041718, 35.393490, 34.920887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.742691, 35.153976, 35.035847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508623, -0.237825, 0.827491,
		-0.427137, 0.764785, 0.482346,
		-0.747567, -0.598784, 0.287404,
		47.518421, 34.974342, 35.122066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.760151, 28.516533, 27.355757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.375408, 28.407383, 27.363417>,  <36.144562, 28.341892, 27.368011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.375408, 28.407383, 27.363417>,  <36.760151, 28.516533, 27.355757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375408, 28.407383, 27.363417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153913, 0.597738, 0.786778,
		-0.226137, 0.753823, -0.616939,
		-0.961859, -0.272875, 0.019148,
		36.086849, 28.325520, 27.369162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334183, 29.071226, 27.433693>,  <36.760151, 28.516533, 27.355757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334183, 29.071226, 27.433693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088913, 28.783031, 27.563259>,  <35.941753, 28.610115, 27.640999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.088913, 28.783031, 27.563259>,  <36.334183, 29.071226, 27.433693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088913, 28.783031, 27.563259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150649, 0.509172, 0.847378,
		-0.775452, 0.470790, -0.420750,
		-0.613171, -0.720486, 0.323915,
		35.904961, 28.566885, 27.660433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567993, 29.342842, 27.564482>,  <36.334183, 29.071226, 27.433693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567993, 29.342842, 27.564482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.637772, 29.023609, 27.795179>,  <35.679638, 28.832069, 27.933598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.637772, 29.023609, 27.795179>,  <35.567993, 29.342842, 27.564482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637772, 29.023609, 27.795179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218637, 0.539709, 0.812965,
		-0.960086, -0.267918, -0.080338,
		0.174449, -0.798081, 0.576744,
		35.690105, 28.784185, 27.968203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976406, 29.368368, 28.063189>,  <35.567993, 29.342842, 27.564482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976406, 29.368368, 28.063189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.235744, 29.104773, 28.215708>,  <35.391346, 28.946615, 28.307220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.235744, 29.104773, 28.215708>,  <34.976406, 29.368368, 28.063189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235744, 29.104773, 28.215708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309459, 0.229489, 0.922806,
		-0.695621, -0.716290, -0.055142,
		0.648342, -0.658987, 0.381300,
		35.430248, 28.907076, 28.330097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611080, 29.187346, 28.526909>,  <34.976406, 29.368368, 28.063189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611080, 29.187346, 28.526909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.993553, 29.125731, 28.626492>,  <35.223038, 29.088762, 28.686241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.993553, 29.125731, 28.626492>,  <34.611080, 29.187346, 28.526909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993553, 29.125731, 28.626492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158933, 0.441039, 0.883304,
		-0.245860, -0.884171, 0.397234,
		0.956187, -0.154035, 0.248958,
		35.280411, 29.079519, 28.701180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694576, 28.978350, 29.165989>,  <34.611080, 29.187346, 28.526909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694576, 28.978350, 29.165989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.081020, 29.080532, 29.151150>,  <35.312885, 29.141842, 29.142246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.081020, 29.080532, 29.151150>,  <34.694576, 28.978350, 29.165989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081020, 29.080532, 29.151150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048834, 0.321988, 0.945483,
		0.253472, -0.911629, 0.323551,
		0.966109, 0.255454, -0.037097,
		35.370853, 29.157169, 29.140020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961792, 28.739687, 29.679483>,  <34.694576, 28.978350, 29.165989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961792, 28.739687, 29.679483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.264015, 28.986816, 29.592371>,  <35.445347, 29.135094, 29.540104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.264015, 28.986816, 29.592371>,  <34.961792, 28.739687, 29.679483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264015, 28.986816, 29.592371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089784, 0.426974, 0.899795,
		0.648902, -0.660293, 0.378074,
		0.755556, 0.617824, -0.217781,
		35.490681, 29.172163, 29.527037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427036, 28.788687, 30.324516>,  <34.961792, 28.739687, 29.679483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427036, 28.788687, 30.324516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.478142, 29.115519, 30.099640>,  <35.508804, 29.311617, 29.964714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.478142, 29.115519, 30.099640>,  <35.427036, 28.788687, 30.324516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478142, 29.115519, 30.099640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039049, 0.570540, 0.820341,
		0.991036, -0.082855, 0.104799,
		0.127761, 0.817079, -0.562191,
		35.516472, 29.360641, 29.930983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975712, 29.112003, 30.610115>,  <35.427036, 28.788687, 30.324516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975712, 29.112003, 30.610115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.771046, 29.395029, 30.415155>,  <35.648247, 29.564844, 30.298180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.771046, 29.395029, 30.415155>,  <35.975712, 29.112003, 30.610115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771046, 29.395029, 30.415155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152381, 0.633015, 0.758994,
		0.845567, 0.314078, -0.431709,
		-0.511661, 0.707564, -0.487397,
		35.617546, 29.607298, 30.268936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356609, 29.623928, 30.807783>,  <35.975712, 29.112003, 30.610115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356609, 29.623928, 30.807783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.037731, 29.806171, 30.649338>,  <35.846405, 29.915518, 30.554270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.037731, 29.806171, 30.649338>,  <36.356609, 29.623928, 30.807783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037731, 29.806171, 30.649338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047986, 0.701856, 0.710701,
		0.601815, 0.547557, -0.581377,
		-0.797192, 0.455609, -0.396113,
		35.798573, 29.942854, 30.530504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606495, 30.361584, 30.617481>,  <36.356609, 29.623928, 30.807783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606495, 30.361584, 30.617481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207649, 30.345881, 30.643450>,  <35.968342, 30.336458, 30.659031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.207649, 30.345881, 30.643450>,  <36.606495, 30.361584, 30.617481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207649, 30.345881, 30.643450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004738, 0.821818, 0.569730,
		-0.075721, 0.568396, -0.819263,
		-0.997118, -0.039259, 0.064922,
		35.908512, 30.334103, 30.662926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362942, 31.010359, 30.404482>,  <36.606495, 30.361584, 30.617481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362942, 31.010359, 30.404482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057308, 30.855145, 30.610630>,  <35.873928, 30.762016, 30.734320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.057308, 30.855145, 30.610630>,  <36.362942, 31.010359, 30.404482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057308, 30.855145, 30.610630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084511, 0.852201, 0.516345,
		-0.639560, 0.350975, -0.683945,
		-0.764082, -0.388034, 0.515372,
		35.828083, 30.738735, 30.765242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830521, 31.629116, 30.618793>,  <36.362942, 31.010359, 30.404482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830521, 31.629116, 30.618793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770779, 31.349125, 30.898144>,  <35.734932, 31.181131, 31.065754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770779, 31.349125, 30.898144>,  <35.830521, 31.629116, 30.618793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770779, 31.349125, 30.898144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013484, 0.704789, 0.709289,
		-0.988691, 0.115356, -0.095829,
		-0.149359, -0.699975, 0.698374,
		35.725971, 31.139132, 31.107656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252697, 31.877382, 30.949768>,  <35.830521, 31.629116, 30.618793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252697, 31.877382, 30.949768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.452946, 31.631357, 31.193432>,  <35.573093, 31.483742, 31.339630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.452946, 31.631357, 31.193432>,  <35.252697, 31.877382, 30.949768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452946, 31.631357, 31.193432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091716, 0.737412, 0.669187,
		-0.860794, -0.279140, 0.425576,
		0.500622, -0.615065, 0.609158,
		35.603134, 31.446838, 31.376179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060547, 32.121395, 31.543615>,  <35.252697, 31.877382, 30.949768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060547, 32.121395, 31.543615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.328308, 31.887203, 31.726532>,  <35.488964, 31.746689, 31.836281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.328308, 31.887203, 31.726532>,  <35.060547, 32.121395, 31.543615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328308, 31.887203, 31.726532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249994, 0.757178, 0.603478,
		-0.699573, -0.289650, 0.653223,
		0.669403, -0.585478, 0.457290,
		35.529129, 31.711559, 31.863720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932590, 32.199883, 32.272079>,  <35.060547, 32.121395, 31.543615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932590, 32.199883, 32.272079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.310661, 32.073780, 32.237995>,  <35.537502, 31.998119, 32.217545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.310661, 32.073780, 32.237995>,  <34.932590, 32.199883, 32.272079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310661, 32.073780, 32.237995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282384, 0.657940, 0.698122,
		-0.164025, -0.683908, 0.710890,
		0.945175, -0.315254, -0.085206,
		35.594215, 31.979204, 32.212433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188953, 32.265263, 32.849106>,  <34.932590, 32.199883, 32.272079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188953, 32.265263, 32.849106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.537865, 32.231991, 32.656353>,  <35.747211, 32.212029, 32.540699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.537865, 32.231991, 32.656353>,  <35.188953, 32.265263, 32.849106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537865, 32.231991, 32.656353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407689, 0.667873, 0.622684,
		0.270039, -0.739612, 0.616484,
		0.872278, -0.083184, -0.481883,
		35.799549, 32.207035, 32.511787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792282, 32.081936, 33.328476>,  <35.188953, 32.265263, 32.849106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792282, 32.081936, 33.328476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.980072, 32.258163, 33.022408>,  <36.092747, 32.363899, 32.838764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.980072, 32.258163, 33.022408>,  <35.792282, 32.081936, 33.328476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980072, 32.258163, 33.022408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230850, 0.775223, 0.587994,
		0.852233, -0.452689, 0.262242,
		0.469474, 0.440570, -0.765174,
		36.120914, 32.390335, 32.792854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309200, 32.383842, 33.676022>,  <35.792282, 32.081936, 33.328476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309200, 32.383842, 33.676022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.263523, 32.572498, 33.326275>,  <36.236115, 32.685692, 33.116428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.263523, 32.572498, 33.326275>,  <36.309200, 32.383842, 33.676022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263523, 32.572498, 33.326275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274470, 0.860845, 0.428500,
		0.954791, -0.191054, -0.227757,
		-0.114197, 0.471641, -0.874365,
		36.229263, 32.713989, 33.063965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998611, 32.677204, 33.499096>,  <36.309200, 32.383842, 33.676022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998611, 32.677204, 33.499096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684471, 32.864201, 33.336781>,  <36.495987, 32.976398, 33.239391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684471, 32.864201, 33.336781>,  <36.998611, 32.677204, 33.499096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684471, 32.864201, 33.336781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325109, 0.869311, 0.372293,
		0.526805, 0.160456, -0.834704,
		-0.785354, 0.467496, -0.405791,
		36.448864, 33.004448, 33.215042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312275, 33.311291, 33.275925>,  <36.998611, 32.677204, 33.499096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312275, 33.311291, 33.275925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.914524, 33.353634, 33.274658>,  <36.675873, 33.379040, 33.273899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.914524, 33.353634, 33.274658>,  <37.312275, 33.311291, 33.275925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914524, 33.353634, 33.274658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101842, 0.963973, 0.245734,
		0.029068, 0.244029, -0.969332,
		-0.994376, 0.105862, -0.003168,
		36.616211, 33.385391, 33.273708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266033, 34.068031, 33.267181>,  <37.312275, 33.311291, 33.275925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266033, 34.068031, 33.267181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594536, 34.291103, 33.218964>,  <37.791637, 34.424946, 33.190033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.594536, 34.291103, 33.218964>,  <37.266033, 34.068031, 33.267181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594536, 34.291103, 33.218964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320261, -0.625424, -0.711532,
		-0.472194, 0.545748, -0.692237,
		0.821259, 0.557678, -0.120540,
		37.840912, 34.458408, 33.182800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348591, 34.117939, 32.567009>,  <37.266033, 34.068031, 33.267181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348591, 34.117939, 32.567009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.716057, 34.210114, 32.695354>,  <37.936539, 34.265419, 32.772362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.716057, 34.210114, 32.695354>,  <37.348591, 34.117939, 32.567009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716057, 34.210114, 32.695354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394556, -0.495307, -0.773949,
		-0.019420, 0.837599, -0.545941,
		0.918667, 0.230435, 0.320861,
		37.991657, 34.279243, 32.791615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737892, 34.507439, 32.073154>,  <37.348591, 34.117939, 32.567009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737892, 34.507439, 32.073154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.000423, 34.328335, 32.316048>,  <38.157944, 34.220871, 32.461784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.000423, 34.328335, 32.316048>,  <37.737892, 34.507439, 32.073154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000423, 34.328335, 32.316048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431687, -0.437214, -0.788981,
		0.618768, 0.779970, -0.093665,
		0.656333, -0.447762, 0.607237,
		38.197323, 34.194008, 32.498219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402050, 34.519653, 31.717953>,  <37.737892, 34.507439, 32.073154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402050, 34.519653, 31.717953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482571, 34.233829, 31.985950>,  <38.530884, 34.062336, 32.146748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.482571, 34.233829, 31.985950>,  <38.402050, 34.519653, 31.717953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482571, 34.233829, 31.985950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489656, -0.518994, -0.700630,
		0.848361, 0.469102, 0.245414,
		0.201298, -0.714555, 0.669993,
		38.542961, 34.019463, 32.186947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042717, 34.255039, 31.696669>,  <38.402050, 34.519653, 31.717953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042717, 34.255039, 31.696669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.841373, 33.940147, 31.839163>,  <38.720566, 33.751213, 31.924660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.841373, 33.940147, 31.839163>,  <39.042717, 34.255039, 31.696669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841373, 33.940147, 31.839163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472399, -0.595922, -0.649397,
		0.723512, -0.158593, 0.671848,
		-0.503359, -0.787227, 0.356237,
		38.690365, 33.703979, 31.946033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550037, 33.654694, 31.576368>,  <39.042717, 34.255039, 31.696669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550037, 33.654694, 31.576368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.204140, 33.475006, 31.666185>,  <38.996601, 33.367191, 31.720076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.204140, 33.475006, 31.666185>,  <39.550037, 33.654694, 31.576368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204140, 33.475006, 31.666185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149806, -0.657477, -0.738432,
		0.479352, -0.604916, 0.635845,
		-0.864743, -0.449222, 0.224543,
		38.944717, 33.340240, 31.733549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677525, 32.916618, 31.518471>,  <39.550037, 33.654694, 31.576368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677525, 32.916618, 31.518471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.278599, 32.940563, 31.501581>,  <39.039242, 32.954929, 31.491447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.278599, 32.940563, 31.501581>,  <39.677525, 32.916618, 31.518471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278599, 32.940563, 31.501581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016059, -0.741005, -0.671307,
		-0.071473, -0.668825, 0.739976,
		-0.997313, 0.059864, -0.042222,
		38.979404, 32.958523, 31.488914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507275, 32.286533, 31.624239>,  <39.677525, 32.916618, 31.518471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507275, 32.286533, 31.624239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.201725, 32.454742, 31.428419>,  <39.018394, 32.555668, 31.310926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.201725, 32.454742, 31.428419>,  <39.507275, 32.286533, 31.624239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201725, 32.454742, 31.428419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008772, -0.765258, -0.643664,
		-0.645307, -0.487383, 0.588248,
		-0.763872, 0.420521, -0.489551,
		38.972565, 32.580898, 31.281553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943439, 31.745241, 31.546816>,  <39.507275, 32.286533, 31.624239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943439, 31.745241, 31.546816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.899780, 32.031128, 31.270477>,  <38.873585, 32.202660, 31.104675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.899780, 32.031128, 31.270477>,  <38.943439, 31.745241, 31.546816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899780, 32.031128, 31.270477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119013, -0.680602, -0.722922,
		-0.986875, -0.161128, -0.010771,
		-0.109153, 0.714715, -0.690845,
		38.867035, 32.245544, 31.063223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680435, 31.401121, 31.100277>,  <38.943439, 31.745241, 31.546816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680435, 31.401121, 31.100277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765011, 31.739481, 30.904419>,  <38.815758, 31.942497, 30.786905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.765011, 31.739481, 30.904419>,  <38.680435, 31.401121, 31.100277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765011, 31.739481, 30.904419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030071, -0.506363, -0.861796,
		-0.976928, 0.167494, -0.132503,
		0.211440, 0.845898, -0.489643,
		38.828442, 31.993250, 30.757526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259899, 31.345163, 30.566925>,  <38.680435, 31.401121, 31.100277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259899, 31.345163, 30.566925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.530388, 31.610556, 30.438854>,  <38.692680, 31.769791, 30.362011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.530388, 31.610556, 30.438854>,  <38.259899, 31.345163, 30.566925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530388, 31.610556, 30.438854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018399, -0.449686, -0.892997,
		-0.736467, 0.597974, -0.316296,
		0.676223, 0.663483, -0.320177,
		38.733253, 31.809601, 30.342800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907269, 31.536921, 29.943089>,  <38.259899, 31.345163, 30.566925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907269, 31.536921, 29.943089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294491, 31.635273, 29.923424>,  <38.526825, 31.694284, 29.911625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294491, 31.635273, 29.923424>,  <37.907269, 31.536921, 29.943089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294491, 31.635273, 29.923424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094526, -0.539451, -0.836694,
		-0.232247, 0.805317, -0.545459,
		0.968053, 0.245880, -0.049162,
		38.584908, 31.709038, 29.908674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101879, 31.918171, 29.310638>,  <37.907269, 31.536921, 29.943089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101879, 31.918171, 29.310638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.443344, 31.737307, 29.414032>,  <38.648224, 31.628788, 29.476068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.443344, 31.737307, 29.414032>,  <38.101879, 31.918171, 29.310638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443344, 31.737307, 29.414032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121014, -0.310517, -0.942833,
		0.506576, 0.836140, -0.210359,
		0.853661, -0.452160, 0.258485,
		38.699444, 31.601658, 29.491577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455322, 32.038342, 28.686256>,  <38.101879, 31.918171, 29.310638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455322, 32.038342, 28.686256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.661968, 31.759583, 28.885231>,  <38.785957, 31.592327, 29.004616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.661968, 31.759583, 28.885231>,  <38.455322, 32.038342, 28.686256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661968, 31.759583, 28.885231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353186, -0.355793, -0.865258,
		0.779978, 0.622696, 0.062324,
		0.516618, -0.696894, 0.497438,
		38.816952, 31.550514, 29.034462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192116, 32.109062, 28.492231>,  <38.455322, 32.038342, 28.686256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192116, 32.109062, 28.492231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.124363, 31.727549, 28.591515>,  <39.083710, 31.498640, 28.651085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.124363, 31.727549, 28.591515>,  <39.192116, 32.109062, 28.492231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124363, 31.727549, 28.591515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307412, -0.290412, -0.906178,
		0.936380, -0.077188, 0.342395,
		-0.169382, -0.953784, 0.248207,
		39.073547, 31.441414, 28.665977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500210, 31.665985, 27.948280>,  <39.192116, 32.109062, 28.492231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500210, 31.665985, 27.948280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.289070, 31.381870, 28.134556>,  <39.162388, 31.211401, 28.246321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.289070, 31.381870, 28.134556>,  <39.500210, 31.665985, 27.948280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289070, 31.381870, 28.134556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079800, -0.587346, -0.805392,
		0.845581, -0.387964, 0.366711,
		-0.527849, -0.710288, 0.465689,
		39.130714, 31.168783, 28.274263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830292, 31.055054, 27.839909>,  <39.500210, 31.665985, 27.948280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830292, 31.055054, 27.839909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.453831, 30.960020, 27.936066>,  <39.227955, 30.903000, 27.993761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.453831, 30.960020, 27.936066>,  <39.830292, 31.055054, 27.839909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453831, 30.960020, 27.936066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056314, -0.591085, -0.804641,
		0.333263, -0.770826, 0.542921,
		-0.941151, -0.237583, 0.240394,
		39.171486, 30.888744, 28.008184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739399, 30.314720, 27.947994>,  <39.830292, 31.055054, 27.839909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739399, 30.314720, 27.947994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.374573, 30.458780, 27.869587>,  <39.155678, 30.545216, 27.822542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.374573, 30.458780, 27.869587>,  <39.739399, 30.314720, 27.947994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374573, 30.458780, 27.869587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168819, -0.765478, -0.620922,
		-0.373674, -0.533231, 0.758969,
		-0.912068, 0.360150, -0.196019,
		39.100952, 30.566826, 27.810781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442547, 29.753119, 27.908064>,  <39.739399, 30.314720, 27.947994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442547, 29.753119, 27.908064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205093, 30.008186, 27.711704>,  <39.062622, 30.161226, 27.593887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205093, 30.008186, 27.711704>,  <39.442547, 29.753119, 27.908064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205093, 30.008186, 27.711704> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385067, -0.760724, -0.522514,
		-0.706629, -0.121151, 0.697135,
		-0.593631, 0.637668, -0.490899,
		39.027004, 30.199488, 27.564434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.742023, 29.283381, 27.760653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.674488, 29.615480, 27.548170>,  <38.633968, 29.814741, 27.420681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.674488, 29.615480, 27.548170>,  <38.742023, 29.283381, 27.760653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674488, 29.615480, 27.548170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332362, -0.555336, -0.762324,
		-0.927917, 0.047844, 0.369704,
		-0.168837, 0.830249, -0.531207,
		38.623837, 29.864555, 27.388807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085964, 29.256813, 27.427759>,  <38.742023, 29.283381, 27.760653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085964, 29.256813, 27.427759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302544, 29.504192, 27.199951>,  <38.432491, 29.652620, 27.063267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.302544, 29.504192, 27.199951>,  <38.085964, 29.256813, 27.427759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302544, 29.504192, 27.199951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235431, -0.538771, -0.808887,
		-0.807095, 0.572055, -0.146116,
		0.541451, 0.618448, -0.569520,
		38.464977, 29.689728, 27.029095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629341, 29.482420, 26.896593>,  <38.085964, 29.256813, 27.427759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629341, 29.482420, 26.896593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006180, 29.542463, 26.776646>,  <38.232285, 29.578489, 26.704678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006180, 29.542463, 26.776646>,  <37.629341, 29.482420, 26.896593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006180, 29.542463, 26.776646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202830, -0.457030, -0.866016,
		-0.267043, 0.876693, -0.400121,
		0.942097, 0.150107, -0.299867,
		38.288811, 29.587496, 26.686686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466423, 29.770912, 26.228466>,  <37.629341, 29.482420, 26.896593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466423, 29.770912, 26.228466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850971, 29.663921, 26.254438>,  <38.081699, 29.599728, 26.270021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.850971, 29.663921, 26.254438>,  <37.466423, 29.770912, 26.228466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850971, 29.663921, 26.254438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044479, -0.383771, -0.922357,
		0.271628, 0.883842, -0.380844,
		0.961374, -0.267477, 0.064930,
		38.139385, 29.583677, 26.273918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826942, 29.998222, 25.613525>,  <37.466423, 29.770912, 26.228466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826942, 29.998222, 25.613525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057999, 29.700460, 25.747507>,  <38.196632, 29.521803, 25.827896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057999, 29.700460, 25.747507>,  <37.826942, 29.998222, 25.613525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057999, 29.700460, 25.747507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068897, -0.453334, -0.888674,
		0.813378, 0.490257, -0.313152,
		0.577641, -0.744403, 0.334955,
		38.231293, 29.477140, 25.847994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291084, 29.795589, 25.056782>,  <37.826942, 29.998222, 25.613525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291084, 29.795589, 25.056782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.310188, 29.479830, 25.301588>,  <38.321651, 29.290373, 25.448473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.310188, 29.479830, 25.301588>,  <38.291084, 29.795589, 25.056782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310188, 29.479830, 25.301588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138329, -0.601586, -0.786740,
		0.989234, 0.122231, 0.080468,
		0.047756, -0.789401, 0.612017,
		38.324516, 29.243010, 25.485193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809292, 29.353729, 24.867146>,  <38.291084, 29.795589, 25.056782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809292, 29.353729, 24.867146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.550472, 29.121346, 25.064655>,  <38.395180, 28.981916, 25.183161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.550472, 29.121346, 25.064655>,  <38.809292, 29.353729, 24.867146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550472, 29.121346, 25.064655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016262, -0.636956, -0.770728,
		0.762274, -0.506729, 0.402695,
		-0.647050, -0.580958, 0.493776,
		38.356358, 28.947058, 25.212788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967110, 28.574890, 24.551489>,  <38.809292, 29.353729, 24.867146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967110, 28.574890, 24.551489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.642673, 28.475716, 24.763399>,  <38.448013, 28.416210, 24.890545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.642673, 28.475716, 24.763399>,  <38.967110, 28.574890, 24.551489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642673, 28.475716, 24.763399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132863, -0.803950, -0.579665,
		0.569634, -0.540547, 0.619133,
		-0.811088, -0.247937, 0.529776,
		38.399345, 28.401335, 24.922333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016548, 27.883518, 24.717533>,  <38.967110, 28.574890, 24.551489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016548, 27.883518, 24.717533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.624504, 27.962894, 24.717445>,  <38.389278, 28.010521, 24.717392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.624504, 27.962894, 24.717445>,  <39.016548, 27.883518, 24.717533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624504, 27.962894, 24.717445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131161, -0.648651, -0.749699,
		-0.148914, -0.734761, 0.661779,
		-0.980113, 0.198440, -0.000221,
		38.330471, 28.022427, 24.717379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710377, 27.217075, 24.812950>,  <39.016548, 27.883518, 24.717533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710377, 27.217075, 24.812950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.461201, 27.471008, 24.630114>,  <38.311695, 27.623367, 24.520412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.461201, 27.471008, 24.630114>,  <38.710377, 27.217075, 24.812950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461201, 27.471008, 24.630114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079267, -0.632532, -0.770468,
		-0.778241, -0.443725, 0.444352,
		-0.622942, 0.634832, -0.457090,
		38.274319, 27.661457, 24.492987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389782, 26.850328, 24.392317>,  <38.710377, 27.217075, 24.812950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389782, 26.850328, 24.392317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.282776, 27.204100, 24.239359>,  <38.218571, 27.416363, 24.147585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.282776, 27.204100, 24.239359>,  <38.389782, 26.850328, 24.392317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282776, 27.204100, 24.239359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037502, -0.406114, -0.913053,
		-0.962824, -0.229915, 0.141809,
		-0.267515, 0.884427, -0.382393,
		38.202522, 27.469427, 24.124641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967983, 26.611460, 23.862570>,  <38.389782, 26.850328, 24.392317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967983, 26.611460, 23.862570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.056389, 26.989889, 23.767828>,  <38.109432, 27.216946, 23.710983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.056389, 26.989889, 23.767828>,  <37.967983, 26.611460, 23.862570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056389, 26.989889, 23.767828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097263, -0.263029, -0.959873,
		-0.970408, 0.189110, -0.150151,
		0.221015, 0.946072, -0.236852,
		38.122692, 27.273710, 23.696772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514832, 26.770655, 23.360367>,  <37.967983, 26.611460, 23.862570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514832, 26.770655, 23.360367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.790878, 27.057310, 23.320034>,  <37.956509, 27.229303, 23.295835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.790878, 27.057310, 23.320034>,  <37.514832, 26.770655, 23.360367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790878, 27.057310, 23.320034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000847, -0.138528, -0.990358,
		-0.723695, 0.683551, -0.094994,
		0.690120, 0.716637, -0.100831,
		37.997913, 27.272301, 23.289785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294342, 27.054096, 22.704660>,  <37.514832, 26.770655, 23.360367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294342, 27.054096, 22.704660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.664593, 27.193621, 22.763372>,  <37.886745, 27.277334, 22.798599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.664593, 27.193621, 22.763372>,  <37.294342, 27.054096, 22.704660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664593, 27.193621, 22.763372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180245, -0.065322, -0.981450,
		-0.332751, 0.934914, -0.123336,
		0.925628, 0.348810, 0.146778,
		37.942280, 27.298264, 22.807405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372753, 27.628851, 22.170671>,  <37.294342, 27.054096, 22.704660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372753, 27.628851, 22.170671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722698, 27.482908, 22.298103>,  <37.932667, 27.395342, 22.374563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.722698, 27.482908, 22.298103>,  <37.372753, 27.628851, 22.170671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722698, 27.482908, 22.298103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323695, -0.048884, -0.944898,
		0.360327, 0.929779, 0.075335,
		0.874864, -0.364857, 0.318579,
		37.985157, 27.373451, 22.393677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835369, 27.889824, 21.750650>,  <37.372753, 27.628851, 22.170671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835369, 27.889824, 21.750650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.017406, 27.558712, 21.881903>,  <38.126629, 27.360044, 21.960655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.017406, 27.558712, 21.881903>,  <37.835369, 27.889824, 21.750650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017406, 27.558712, 21.881903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330217, -0.185335, -0.925531,
		0.826951, 0.529557, 0.189002,
		0.455093, -0.827780, 0.328132,
		38.153934, 27.310377, 21.980343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507507, 27.942265, 21.442871>,  <37.835369, 27.889824, 21.750650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507507, 27.942265, 21.442871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.504509, 27.560959, 21.563688>,  <38.502712, 27.332176, 21.636179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.504509, 27.560959, 21.563688>,  <38.507507, 27.942265, 21.442871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504509, 27.560959, 21.563688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450322, -0.272907, -0.850136,
		0.892835, 0.129645, 0.431321,
		-0.007494, -0.953265, 0.302043,
		38.502262, 27.274979, 21.654301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207668, 27.679279, 21.235533>,  <38.507507, 27.942265, 21.442871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207668, 27.679279, 21.235533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.937901, 27.386732, 21.276058>,  <38.776039, 27.211205, 21.300373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.937901, 27.386732, 21.276058>,  <39.207668, 27.679279, 21.235533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937901, 27.386732, 21.276058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367886, -0.451819, -0.812723,
		0.640175, -0.510842, 0.573774,
		-0.674415, -0.731368, 0.101312,
		38.735577, 27.167322, 21.306452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658916, 27.175545, 21.037001>,  <39.207668, 27.679279, 21.235533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658916, 27.175545, 21.037001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.289909, 27.022697, 21.015289>,  <39.068504, 26.930988, 21.002262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.289909, 27.022697, 21.015289>,  <39.658916, 27.175545, 21.037001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289909, 27.022697, 21.015289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223754, -0.414910, -0.881921,
		0.314478, -0.825732, 0.468263,
		-0.922517, -0.382120, -0.054281,
		39.013153, 26.908062, 20.999004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728207, 26.472075, 20.903465>,  <39.658916, 27.175545, 21.037001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728207, 26.472075, 20.903465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344837, 26.552906, 20.822876>,  <39.114815, 26.601404, 20.774523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.344837, 26.552906, 20.822876>,  <39.728207, 26.472075, 20.903465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344837, 26.552906, 20.822876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077399, -0.495479, -0.865165,
		-0.274656, -0.844787, 0.459238,
		-0.958423, 0.202078, -0.201472,
		39.057312, 26.613529, 20.762434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483601, 25.822248, 20.699240>,  <39.728207, 26.472075, 20.903465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483601, 25.822248, 20.699240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.265392, 26.120499, 20.546164>,  <39.134468, 26.299450, 20.454319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.265392, 26.120499, 20.546164>,  <39.483601, 25.822248, 20.699240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265392, 26.120499, 20.546164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026387, -0.441108, -0.897066,
		-0.837684, -0.499463, 0.220957,
		-0.545517, 0.745628, -0.382689,
		39.101738, 26.344187, 20.431356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944538, 25.462803, 20.361385>,  <39.483601, 25.822248, 20.699240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944538, 25.462803, 20.361385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.977150, 25.831118, 20.208807>,  <38.996719, 26.052107, 20.117260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.977150, 25.831118, 20.208807>,  <38.944538, 25.462803, 20.361385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977150, 25.831118, 20.208807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105642, -0.388548, -0.915352,
		-0.991056, 0.034333, -0.128953,
		0.081532, 0.920788, -0.381446,
		39.001610, 26.107355, 20.094374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347298, 25.791101, 20.032471>,  <38.944538, 25.462803, 20.361385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347298, 25.791101, 20.032471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685276, 25.934490, 19.873692>,  <38.888062, 26.020523, 19.778423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685276, 25.934490, 19.873692>,  <38.347298, 25.791101, 20.032471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685276, 25.934490, 19.873692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124434, -0.590051, -0.797720,
		-0.520179, 0.723422, -0.453954,
		0.844944, 0.358470, -0.396950,
		38.938759, 26.042030, 19.754606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632454, 25.721567, 20.248365>,  <38.347298, 25.791101, 20.032471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632454, 25.721567, 20.248365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.311649, 25.615965, 20.034048>,  <37.119167, 25.552605, 19.905457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.311649, 25.615965, 20.034048>,  <37.632454, 25.721567, 20.248365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311649, 25.615965, 20.034048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595960, 0.413854, 0.688154,
		0.040065, 0.871221, -0.489253,
		-0.802014, -0.264004, -0.535794,
		37.071045, 25.536764, 19.873310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315804, 26.321419, 20.243099>,  <37.632454, 25.721567, 20.248365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315804, 26.321419, 20.243099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.059322, 26.021105, 20.179628>,  <36.905434, 25.840916, 20.141546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.059322, 26.021105, 20.179628>,  <37.315804, 26.321419, 20.243099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059322, 26.021105, 20.179628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654959, 0.427701, 0.622977,
		-0.399857, 0.503381, -0.765978,
		-0.641204, -0.750786, -0.158675,
		36.866962, 25.795870, 20.132027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636177, 26.613468, 20.135471>,  <37.315804, 26.321419, 20.243099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636177, 26.613468, 20.135471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579330, 26.234566, 20.250370>,  <36.545223, 26.007225, 20.319309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.579330, 26.234566, 20.250370>,  <36.636177, 26.613468, 20.135471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579330, 26.234566, 20.250370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520211, 0.318358, 0.792483,
		-0.842131, -0.036807, -0.538015,
		-0.142113, -0.947256, 0.287246,
		36.536697, 25.950390, 20.336544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959599, 26.474306, 20.187010>,  <36.636177, 26.613468, 20.135471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959599, 26.474306, 20.187010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117039, 26.203657, 20.435930>,  <36.211502, 26.041267, 20.585283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117039, 26.203657, 20.435930>,  <35.959599, 26.474306, 20.187010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117039, 26.203657, 20.435930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578362, 0.343912, 0.739745,
		-0.714545, -0.651081, -0.255968,
		0.393603, -0.676623, 0.622301,
		36.235119, 26.000669, 20.622620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385616, 26.159279, 20.655296>,  <35.959599, 26.474306, 20.187010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385616, 26.159279, 20.655296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.730228, 26.055990, 20.830147>,  <35.936996, 25.994017, 20.935057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.730228, 26.055990, 20.830147>,  <35.385616, 26.159279, 20.655296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730228, 26.055990, 20.830147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457871, -0.023203, 0.888716,
		-0.219345, -0.965806, -0.138223,
		0.861535, -0.258224, 0.437125,
		35.988689, 25.978523, 20.961285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136837, 25.572773, 21.044798>,  <35.385616, 26.159279, 20.655296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136837, 25.572773, 21.044798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.475018, 25.727385, 21.192204>,  <35.677925, 25.820152, 21.280647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.475018, 25.727385, 21.192204>,  <35.136837, 25.572773, 21.044798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475018, 25.727385, 21.192204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362951, -0.090314, 0.927421,
		0.391759, -0.917844, 0.063936,
		0.845453, 0.386531, 0.368514,
		35.728653, 25.843344, 21.302757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366207, 25.132118, 21.572409>,  <35.136837, 25.572773, 21.044798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366207, 25.132118, 21.572409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.523117, 25.495090, 21.632656>,  <35.617264, 25.712873, 21.668804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.523117, 25.495090, 21.632656>,  <35.366207, 25.132118, 21.572409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523117, 25.495090, 21.632656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172975, -0.088051, 0.980982,
		0.903437, -0.410870, 0.122423,
		0.392277, 0.907432, 0.150618,
		35.640800, 25.767321, 21.677841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284740, 25.166412, 22.229578>,  <35.366207, 25.132118, 21.572409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284740, 25.166412, 22.229578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447765, 25.522360, 22.147570>,  <35.545578, 25.735928, 22.098366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.447765, 25.522360, 22.147570>,  <35.284740, 25.166412, 22.229578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447765, 25.522360, 22.147570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067416, 0.253219, 0.965057,
		0.910688, -0.379495, 0.163193,
		0.407557, 0.889867, -0.205019,
		35.570034, 25.789320, 22.086063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689117, 25.199730, 22.893396>,  <35.284740, 25.166412, 22.229578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689117, 25.199730, 22.893396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.602009, 25.551134, 22.723316>,  <35.549744, 25.761976, 22.621267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.602009, 25.551134, 22.723316>,  <35.689117, 25.199730, 22.893396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602009, 25.551134, 22.723316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029102, 0.429618, 0.902542,
		0.975565, 0.208926, -0.067994,
		-0.217776, 0.878509, -0.425200,
		35.536674, 25.814688, 22.595757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172974, 25.607401, 23.110683>,  <35.689117, 25.199730, 22.893396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172974, 25.607401, 23.110683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.865147, 25.845510, 23.018236>,  <35.680450, 25.988377, 22.962767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.865147, 25.845510, 23.018236>,  <36.172974, 25.607401, 23.110683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865147, 25.845510, 23.018236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058498, 0.426132, 0.902768,
		0.635883, 0.681219, -0.362758,
		-0.769565, 0.595276, -0.231120,
		35.634277, 26.024094, 22.948900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345078, 26.305305, 23.108740>,  <36.172974, 25.607401, 23.110683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345078, 26.305305, 23.108740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.960182, 26.260071, 23.207787>,  <35.729244, 26.232929, 23.267214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.960182, 26.260071, 23.207787>,  <36.345078, 26.305305, 23.108740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960182, 26.260071, 23.207787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162841, 0.489795, 0.856495,
		-0.218141, 0.864472, -0.452882,
		-0.962235, -0.113089, 0.247616,
		35.671513, 26.226145, 23.282072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063084, 26.997421, 23.264269>,  <36.345078, 26.305305, 23.108740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063084, 26.997421, 23.264269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845654, 26.720366, 23.453911>,  <35.715195, 26.554132, 23.567696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.845654, 26.720366, 23.453911>,  <36.063084, 26.997421, 23.264269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845654, 26.720366, 23.453911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144931, 0.478905, 0.865821,
		-0.826753, 0.539351, -0.159936,
		-0.543576, -0.692640, 0.474104,
		35.682579, 26.512573, 23.596142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551754, 27.351398, 23.581051>,  <36.063084, 26.997421, 23.264269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551754, 27.351398, 23.581051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.572502, 27.008661, 23.786236>,  <35.584949, 26.803019, 23.909346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.572502, 27.008661, 23.786236>,  <35.551754, 27.351398, 23.581051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572502, 27.008661, 23.786236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010040, 0.513179, 0.858223,
		-0.998603, -0.049668, 0.018017,
		0.051872, -0.856843, 0.512961,
		35.588062, 26.751608, 23.940125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172153, 27.473623, 24.149822>,  <35.551754, 27.351398, 23.581051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172153, 27.473623, 24.149822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.385632, 27.156120, 24.266525>,  <35.513718, 26.965618, 24.336548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.385632, 27.156120, 24.266525>,  <35.172153, 27.473623, 24.149822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385632, 27.156120, 24.266525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060672, 0.308171, 0.949395,
		-0.843499, -0.524386, 0.116309,
		0.533693, -0.793757, 0.291758,
		35.545738, 26.917994, 24.354052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924774, 27.218779, 24.730427>,  <35.172153, 27.473623, 24.149822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924774, 27.218779, 24.730427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277664, 27.034616, 24.769825>,  <35.489399, 26.924120, 24.793465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277664, 27.034616, 24.769825>,  <34.924774, 27.218779, 24.730427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277664, 27.034616, 24.769825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127403, 0.434839, 0.891450,
		-0.453258, -0.773913, 0.442284,
		0.882227, -0.460405, 0.098496,
		35.542332, 26.896496, 24.799374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928440, 27.179739, 25.470856>,  <34.924774, 27.218779, 24.730427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928440, 27.179739, 25.470856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.300182, 27.082603, 25.359627>,  <35.523228, 27.024323, 25.292891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.300182, 27.082603, 25.359627>,  <34.928440, 27.179739, 25.470856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300182, 27.082603, 25.359627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323498, 0.172741, 0.930328,
		-0.177885, -0.954563, 0.239096,
		0.929358, -0.242838, -0.278071,
		35.578991, 27.009752, 25.276205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112293, 26.691008, 25.928118>,  <34.928440, 27.179739, 25.470856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112293, 26.691008, 25.928118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.460464, 26.847233, 25.808239>,  <35.669365, 26.940968, 25.736313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.460464, 26.847233, 25.808239>,  <35.112293, 26.691008, 25.928118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460464, 26.847233, 25.808239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240665, 0.193483, 0.951128,
		0.429464, -0.900012, 0.074417,
		0.870425, 0.390566, -0.299696,
		35.721592, 26.964403, 25.718330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599644, 26.438459, 26.477369>,  <35.112293, 26.691008, 25.928118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599644, 26.438459, 26.477369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.765038, 26.764503, 26.315071>,  <35.864273, 26.960129, 26.217691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.765038, 26.764503, 26.315071>,  <35.599644, 26.438459, 26.477369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765038, 26.764503, 26.315071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099308, 0.402594, 0.909976,
		0.905081, -0.416551, 0.085518,
		0.413480, 0.815109, -0.405748,
		35.889080, 27.009037, 26.193346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236794, 26.581867, 26.891230>,  <35.599644, 26.438459, 26.477369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236794, 26.581867, 26.891230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152676, 26.920509, 26.695665>,  <36.102203, 27.123695, 26.578327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.152676, 26.920509, 26.695665>,  <36.236794, 26.581867, 26.891230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152676, 26.920509, 26.695665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004063, 0.499332, 0.866401,
		0.977629, 0.184188, -0.101569,
		-0.210298, 0.846606, -0.488909,
		36.089588, 27.174492, 26.548992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448727, 27.073345, 27.381855>,  <36.236794, 26.581867, 26.891230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448727, 27.073345, 27.381855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.280876, 27.322948, 27.118181>,  <36.180164, 27.472710, 26.959976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.280876, 27.322948, 27.118181>,  <36.448727, 27.073345, 27.381855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280876, 27.322948, 27.118181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107999, 0.686737, 0.718838,
		0.901247, 0.372839, -0.220784,
		-0.419631, 0.624006, -0.659186,
		36.154987, 27.510151, 26.920425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870922, 27.701599, 27.387373>,  <36.448727, 27.073345, 27.381855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870922, 27.701599, 27.387373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.494167, 27.778484, 27.277168>,  <36.268116, 27.824615, 27.211046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.494167, 27.778484, 27.277168>,  <36.870922, 27.701599, 27.387373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494167, 27.778484, 27.277168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138640, 0.524625, 0.839969,
		0.305992, 0.829351, -0.467489,
		-0.941885, 0.192211, -0.275512,
		36.211601, 27.836147, 27.194515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.802319, 31.124184, 30.034235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.497307, 31.307878, 29.851957>,  <39.314301, 31.418095, 29.742590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.497307, 31.307878, 29.851957>,  <39.802319, 31.124184, 30.034235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497307, 31.307878, 29.851957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159691, 0.548966, 0.820448,
		0.626939, 0.698384, -0.345265,
		-0.762526, 0.459235, -0.455693,
		39.268547, 31.445648, 29.715250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887733, 31.876675, 29.895832>,  <39.802319, 31.124184, 30.034235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887733, 31.876675, 29.895832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.489719, 31.837208, 29.901171>,  <39.250912, 31.813528, 29.904373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.489719, 31.837208, 29.901171>,  <39.887733, 31.876675, 29.895832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489719, 31.837208, 29.901171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060500, 0.705624, 0.705999,
		-0.079077, 0.701684, -0.708087,
		-0.995031, -0.098667, 0.013347,
		39.191212, 31.807608, 29.905174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719257, 32.591202, 29.947409>,  <39.887733, 31.876675, 29.895832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719257, 32.591202, 29.947409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.413326, 32.362572, 30.066296>,  <39.229767, 32.225395, 30.137629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.413326, 32.362572, 30.066296>,  <39.719257, 32.591202, 29.947409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413326, 32.362572, 30.066296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270510, 0.703636, 0.657054,
		-0.584689, 0.422133, -0.692778,
		-0.764828, -0.571576, 0.297217,
		39.183876, 32.191097, 30.155460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124756, 33.032509, 30.058270>,  <39.719257, 32.591202, 29.947409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124756, 33.032509, 30.058270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.041859, 32.705750, 30.273573>,  <38.992119, 32.509693, 30.402754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.041859, 32.705750, 30.273573>,  <39.124756, 33.032509, 30.058270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041859, 32.705750, 30.273573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357915, 0.575372, 0.735421,
		-0.910464, -0.040237, -0.411625,
		-0.207247, -0.816902, 0.538257,
		38.979683, 32.460678, 30.435049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428455, 33.211941, 30.221521>,  <39.124756, 33.032509, 30.058270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428455, 33.211941, 30.221521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551575, 32.912228, 30.456068>,  <38.625446, 32.732399, 30.596796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551575, 32.912228, 30.456068>,  <38.428455, 33.211941, 30.221521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551575, 32.912228, 30.456068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423485, 0.443986, 0.789644,
		-0.852009, -0.491370, -0.180653,
		0.307800, -0.749288, 0.586368,
		38.643913, 32.687443, 30.631979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929543, 33.095734, 30.702595>,  <38.428455, 33.211941, 30.221521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929543, 33.095734, 30.702595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.242088, 32.922585, 30.882414>,  <38.429615, 32.818695, 30.990305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.242088, 32.922585, 30.882414>,  <37.929543, 33.095734, 30.702595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242088, 32.922585, 30.882414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294163, 0.379841, 0.877034,
		-0.550402, -0.817522, 0.169457,
		0.781361, -0.432874, 0.449550,
		38.476498, 32.792721, 31.017279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675282, 32.906036, 31.331417>,  <37.929543, 33.095734, 30.702595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675282, 32.906036, 31.331417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068756, 32.932758, 31.398222>,  <38.304840, 32.948792, 31.438305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068756, 32.932758, 31.398222>,  <37.675282, 32.906036, 31.331417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068756, 32.932758, 31.398222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176475, 0.538207, 0.824130,
		-0.034831, -0.840161, 0.541218,
		0.983689, 0.066806, 0.167014,
		38.363861, 32.952801, 31.448326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818459, 32.815346, 32.130722>,  <37.675282, 32.906036, 31.331417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818459, 32.815346, 32.130722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.148895, 32.991791, 31.990444>,  <38.347157, 33.097656, 31.906277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.148895, 32.991791, 31.990444>,  <37.818459, 32.815346, 32.130722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148895, 32.991791, 31.990444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078559, 0.526100, 0.846786,
		0.558035, -0.727073, 0.399952,
		0.826091, 0.441117, -0.350701,
		38.396725, 33.124126, 31.885235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255520, 32.785931, 32.687965>,  <37.818459, 32.815346, 32.130722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255520, 32.785931, 32.687965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.360443, 33.080040, 32.437984>,  <38.423397, 33.256504, 32.287994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.360443, 33.080040, 32.437984>,  <38.255520, 32.785931, 32.687965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360443, 33.080040, 32.437984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024556, 0.642337, 0.766029,
		0.964672, -0.216281, 0.150434,
		0.262307, 0.735272, -0.624956,
		38.439137, 33.300621, 32.250496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690125, 33.074482, 33.048470>,  <38.255520, 32.785931, 32.687965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690125, 33.074482, 33.048470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.635380, 33.366985, 32.781178>,  <38.602535, 33.542488, 32.620804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.635380, 33.366985, 32.781178>,  <38.690125, 33.074482, 33.048470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635380, 33.366985, 32.781178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051622, 0.668396, 0.742012,
		0.989245, 0.136046, -0.053728,
		-0.136859, 0.731258, -0.668230,
		38.594322, 33.586361, 32.580708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060616, 33.646976, 33.292259>,  <38.690125, 33.074482, 33.048470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060616, 33.646976, 33.292259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.794445, 33.805389, 33.039162>,  <38.634743, 33.900436, 32.887302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.794445, 33.805389, 33.039162>,  <39.060616, 33.646976, 33.292259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794445, 33.805389, 33.039162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151361, 0.758459, 0.633900,
		0.730956, 0.517587, -0.444755,
		-0.665427, 0.396035, -0.632743,
		38.594818, 33.924198, 32.849339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134670, 34.437523, 33.286751>,  <39.060616, 33.646976, 33.292259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134670, 34.437523, 33.286751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.766933, 34.372467, 33.143440>,  <38.546291, 34.333435, 33.057453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.766933, 34.372467, 33.143440>,  <39.134670, 34.437523, 33.286751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766933, 34.372467, 33.143440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359325, 0.718023, 0.596094,
		0.160304, 0.676751, -0.718547,
		-0.919341, -0.162636, -0.358275,
		38.491131, 34.323677, 33.035957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867069, 35.182446, 33.092682>,  <39.134670, 34.437523, 33.286751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867069, 35.182446, 33.092682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.577148, 34.918159, 33.170780>,  <38.403198, 34.759586, 33.217640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.577148, 34.918159, 33.170780>,  <38.867069, 35.182446, 33.092682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577148, 34.918159, 33.170780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426764, 0.653033, 0.625636,
		-0.540869, 0.370137, -0.755288,
		-0.724799, -0.660717, 0.195244,
		38.359711, 34.719944, 33.229355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930256, 35.925781, 32.989880>,  <38.867069, 35.182446, 33.092682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930256, 35.925781, 32.989880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.266003, 36.087078, 32.844078>,  <39.467449, 36.183857, 32.756599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.266003, 36.087078, 32.844078>,  <38.930256, 35.925781, 32.989880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266003, 36.087078, 32.844078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322249, 0.909173, 0.263741,
		0.437746, -0.103915, 0.893073,
		0.839365, 0.403244, -0.364501,
		39.517811, 36.208050, 32.734726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534153, 36.336205, 32.690716>,  <38.930256, 35.925781, 32.989880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534153, 36.336205, 32.690716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.317188, 36.622200, 32.514271>,  <38.187012, 36.793797, 32.408401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.317188, 36.622200, 32.514271>,  <38.534153, 36.336205, 32.690716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317188, 36.622200, 32.514271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157495, -0.429218, -0.889363,
		-0.825221, -0.551871, 0.120204,
		-0.542407, 0.714990, -0.441117,
		38.154465, 36.836697, 32.381935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845860, 36.087063, 32.416786>,  <38.534153, 36.336205, 32.690716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845860, 36.087063, 32.416786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.935715, 36.421158, 32.216022>,  <37.989628, 36.621616, 32.095562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.935715, 36.421158, 32.216022>,  <37.845860, 36.087063, 32.416786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935715, 36.421158, 32.216022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247704, -0.547103, -0.799576,
		-0.942433, 0.055293, -0.329793,
		0.224642, 0.835237, -0.501911,
		38.003109, 36.671730, 32.065449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535519, 35.989803, 31.656767>,  <37.845860, 36.087063, 32.416786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535519, 35.989803, 31.656767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.791245, 36.295948, 31.627117>,  <37.944679, 36.479637, 31.609327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.791245, 36.295948, 31.627117>,  <37.535519, 35.989803, 31.656767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791245, 36.295948, 31.627117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216925, -0.271997, -0.937529,
		-0.737712, 0.583298, -0.339919,
		0.639315, 0.765364, -0.074123,
		37.983040, 36.525558, 31.604879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367107, 36.389793, 30.949894>,  <37.535519, 35.989803, 31.656767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367107, 36.389793, 30.949894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.749306, 36.480331, 31.025566>,  <37.978626, 36.534653, 31.070969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.749306, 36.480331, 31.025566>,  <37.367107, 36.389793, 30.949894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749306, 36.480331, 31.025566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229876, -0.169403, -0.958363,
		-0.184874, 0.959203, -0.213896,
		0.955499, 0.226346, 0.189179,
		38.035957, 36.548237, 31.082319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543022, 36.920528, 30.534712>,  <37.367107, 36.389793, 30.949894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543022, 36.920528, 30.534712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.877159, 36.733402, 30.650198>,  <38.077641, 36.621128, 30.719490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.877159, 36.733402, 30.650198>,  <37.543022, 36.920528, 30.534712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877159, 36.733402, 30.650198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274758, -0.099595, -0.956341,
		0.476145, 0.878197, 0.045340,
		0.835341, -0.467815, 0.288713,
		38.127762, 36.593060, 30.736813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236599, 37.149433, 30.140188>,  <37.543022, 36.920528, 30.534712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236599, 37.149433, 30.140188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.380405, 36.799118, 30.269026>,  <38.466690, 36.588928, 30.346329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.380405, 36.799118, 30.269026>,  <38.236599, 37.149433, 30.140188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380405, 36.799118, 30.269026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220344, -0.255736, -0.941301,
		0.906752, 0.409380, 0.101034,
		0.359512, -0.875789, 0.322094,
		38.488258, 36.536381, 30.365654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677479, 36.954933, 29.587929>,  <38.236599, 37.149433, 30.140188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677479, 36.954933, 29.587929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.656086, 36.610622, 29.790396>,  <38.643250, 36.404037, 29.911875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.656086, 36.610622, 29.790396>,  <38.677479, 36.954933, 29.587929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656086, 36.610622, 29.790396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096969, -0.508973, -0.855303,
		0.993849, 0.003340, 0.110689,
		-0.053481, -0.860776, 0.506166,
		38.640041, 36.352390, 29.942245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270672, 36.606472, 29.445393>,  <38.677479, 36.954933, 29.587929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270672, 36.606472, 29.445393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.012600, 36.333485, 29.582788>,  <38.857758, 36.169693, 29.665226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.012600, 36.333485, 29.582788>,  <39.270672, 36.606472, 29.445393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012600, 36.333485, 29.582788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309865, -0.644669, -0.698846,
		0.698373, -0.344448, 0.627400,
		-0.645182, -0.682464, 0.343487,
		38.819046, 36.128746, 29.685835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684597, 35.979675, 29.436970>,  <39.270672, 36.606472, 29.445393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684597, 35.979675, 29.436970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.297527, 35.881416, 29.459814>,  <39.065285, 35.822460, 29.473520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.297527, 35.881416, 29.459814>,  <39.684597, 35.979675, 29.436970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297527, 35.881416, 29.459814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128831, -0.676166, -0.725398,
		0.216808, -0.694592, 0.685956,
		-0.967676, -0.245645, 0.057113,
		39.007225, 35.807724, 29.476948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744003, 35.224327, 29.583374>,  <39.684597, 35.979675, 29.436970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744003, 35.224327, 29.583374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.382763, 35.295692, 29.427134>,  <39.166019, 35.338512, 29.333389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.382763, 35.295692, 29.427134>,  <39.744003, 35.224327, 29.583374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382763, 35.295692, 29.427134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183328, -0.662354, -0.726414,
		-0.388320, -0.727636, 0.565466,
		-0.903105, 0.178416, -0.390602,
		39.111832, 35.349216, 29.309954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463844, 34.618320, 29.379591>,  <39.744003, 35.224327, 29.583374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463844, 34.618320, 29.379591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.217785, 34.855427, 29.171658>,  <39.070148, 34.997688, 29.046898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.217785, 34.855427, 29.171658>,  <39.463844, 34.618320, 29.379591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217785, 34.855427, 29.171658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052301, -0.688569, -0.723282,
		-0.786674, -0.417739, 0.454575,
		-0.615149, 0.592762, -0.519831,
		39.033241, 35.033257, 29.015709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974384, 34.141014, 28.973095>,  <39.463844, 34.618320, 29.379591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974384, 34.141014, 28.973095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.959057, 34.500622, 28.798607>,  <38.949860, 34.716389, 28.693914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.959057, 34.500622, 28.798607>,  <38.974384, 34.141014, 28.973095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959057, 34.500622, 28.798607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265740, -0.429989, -0.862839,
		-0.963283, 0.082860, 0.255383,
		-0.038317, 0.899024, -0.436220,
		38.947563, 34.770329, 28.667740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350372, 34.224247, 28.509638>,  <38.974384, 34.141014, 28.973095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350372, 34.224247, 28.509638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.604599, 34.483410, 28.341702>,  <38.757133, 34.638908, 28.240940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.604599, 34.483410, 28.341702>,  <38.350372, 34.224247, 28.509638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604599, 34.483410, 28.341702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191232, -0.394743, -0.898670,
		-0.747988, 0.651451, -0.126984,
		0.635566, 0.647911, -0.419842,
		38.795269, 34.677784, 28.215750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980000, 34.414722, 27.975060>,  <38.350372, 34.224247, 28.509638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980000, 34.414722, 27.975060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.363731, 34.501198, 27.902456>,  <38.593971, 34.553085, 27.858894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.363731, 34.501198, 27.902456>,  <37.980000, 34.414722, 27.975060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363731, 34.501198, 27.902456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011070, -0.671320, -0.741085,
		-0.282066, 0.708936, -0.646412,
		0.959331, 0.216191, -0.181508,
		38.651531, 34.566055, 27.848003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318989, 34.917278, 27.919043>,  <37.980000, 34.414722, 27.975060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318989, 34.917278, 27.919043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.990170, 35.055153, 27.737745>,  <36.792877, 35.137878, 27.628967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.990170, 35.055153, 27.737745>,  <37.318989, 34.917278, 27.919043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990170, 35.055153, 27.737745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211739, 0.553855, 0.805240,
		0.528588, 0.757914, -0.382311,
		-0.822047, 0.344690, -0.453241,
		36.743557, 35.158562, 27.601772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371643, 35.520367, 28.152826>,  <37.318989, 34.917278, 27.919043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371643, 35.520367, 28.152826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.993214, 35.490623, 28.026709>,  <36.766155, 35.472778, 27.951038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.993214, 35.490623, 28.026709>,  <37.371643, 35.520367, 28.152826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993214, 35.490623, 28.026709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313328, 0.457188, 0.832349,
		0.082256, 0.886256, -0.455834,
		-0.946076, -0.074360, -0.315295,
		36.709393, 35.468315, 27.932119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012321, 36.173248, 28.301565>,  <37.371643, 35.520367, 28.152826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012321, 36.173248, 28.301565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.692036, 35.936573, 28.264132>,  <36.499863, 35.794567, 28.241671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.692036, 35.936573, 28.264132>,  <37.012321, 36.173248, 28.301565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692036, 35.936573, 28.264132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284815, 0.238592, 0.928415,
		-0.527001, 0.770053, -0.359566,
		-0.800718, -0.591686, -0.093585,
		36.451820, 35.759068, 28.236055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410686, 36.631180, 28.426853>,  <37.012321, 36.173248, 28.301565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410686, 36.631180, 28.426853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.323536, 36.246143, 28.491297>,  <36.271248, 36.015121, 28.529963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.323536, 36.246143, 28.491297>,  <36.410686, 36.631180, 28.426853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323536, 36.246143, 28.491297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300815, 0.223271, 0.927179,
		-0.928462, 0.153542, -0.338206,
		-0.217873, -0.962587, 0.161111,
		36.258175, 35.957367, 28.539631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701969, 36.653435, 28.739737>,  <36.410686, 36.631180, 28.426853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701969, 36.653435, 28.739737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.902817, 36.323910, 28.844971>,  <36.023323, 36.126194, 28.908112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.902817, 36.323910, 28.844971>,  <35.701969, 36.653435, 28.739737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902817, 36.323910, 28.844971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235262, 0.162617, 0.958231,
		-0.832184, -0.543038, -0.112159,
		0.502117, -0.823812, 0.263084,
		36.053452, 36.076767, 28.923897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222527, 36.193027, 29.229073>,  <35.701969, 36.653435, 28.739737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222527, 36.193027, 29.229073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.582829, 36.030834, 29.291319>,  <35.799011, 35.933517, 29.328667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.582829, 36.030834, 29.291319>,  <35.222527, 36.193027, 29.229073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582829, 36.030834, 29.291319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165437, 0.010963, 0.986159,
		-0.401579, -0.914036, -0.057207,
		0.900758, -0.405485, 0.155618,
		35.853054, 35.909187, 29.338005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047050, 35.638252, 29.619930>,  <35.222527, 36.193027, 29.229073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047050, 35.638252, 29.619930> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.436127, 35.713444, 29.674402>,  <35.669571, 35.758560, 29.707087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.436127, 35.713444, 29.674402>,  <35.047050, 35.638252, 29.619930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436127, 35.713444, 29.674402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112879, -0.129588, 0.985122,
		0.202831, -0.973586, -0.104830,
		0.972686, 0.187980, 0.136182,
		35.727932, 35.769836, 29.715258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250484, 35.169495, 30.222488>,  <35.047050, 35.638252, 29.619930>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250484, 35.169495, 30.222488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.501816, 35.478981, 30.190060>,  <35.652615, 35.664673, 30.170603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.501816, 35.478981, 30.190060>,  <35.250484, 35.169495, 30.222488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501816, 35.478981, 30.190060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090041, 0.175837, 0.980293,
		0.772720, -0.608646, 0.180150,
		0.628329, 0.773713, -0.081070,
		35.690315, 35.711094, 30.165739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596199, 35.189777, 30.814032>,  <35.250484, 35.169495, 30.222488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596199, 35.189777, 30.814032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.624569, 35.557869, 30.660076>,  <35.641590, 35.778725, 30.567703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.624569, 35.557869, 30.660076>,  <35.596199, 35.189777, 30.814032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624569, 35.557869, 30.660076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011159, 0.386570, 0.922193,
		0.997419, -0.061110, 0.037686,
		0.070924, 0.920233, -0.384890,
		35.645847, 35.833939, 30.544609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013206, 35.538441, 31.296970>,  <35.596199, 35.189777, 30.814032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013206, 35.538441, 31.296970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.882095, 35.839561, 31.068636>,  <35.803429, 36.020233, 30.931635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.882095, 35.839561, 31.068636>,  <36.013206, 35.538441, 31.296970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882095, 35.839561, 31.068636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077195, 0.580855, 0.810339,
		0.941595, 0.309679, -0.132281,
		-0.327781, 0.752799, -0.570835,
		35.783760, 36.065403, 30.897385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459145, 36.107815, 31.425465>,  <36.013206, 35.538441, 31.296970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459145, 36.107815, 31.425465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.096233, 36.231358, 31.311310>,  <35.878487, 36.305485, 31.242817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.096233, 36.231358, 31.311310>,  <36.459145, 36.107815, 31.425465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096233, 36.231358, 31.311310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104601, 0.491569, 0.864534,
		0.407305, 0.814228, -0.413685,
		-0.907282, 0.308857, -0.285388,
		35.824047, 36.324017, 31.225693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469521, 36.828461, 31.462452>,  <36.459145, 36.107815, 31.425465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469521, 36.828461, 31.462452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.092133, 36.699753, 31.494287>,  <35.865700, 36.622528, 31.513390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.092133, 36.699753, 31.494287>,  <36.469521, 36.828461, 31.462452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092133, 36.699753, 31.494287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115257, 0.543601, 0.831393,
		-0.310781, 0.775219, -0.549956,
		-0.943468, -0.321767, 0.079591,
		35.809093, 36.603222, 31.518166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.834316, 34.345852, 23.875435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450073, 34.286564, 23.969471>,  <37.219528, 34.250992, 24.025892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450073, 34.286564, 23.969471>,  <37.834316, 34.345852, 23.875435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450073, 34.286564, 23.969471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120280, 0.540846, 0.832477,
		-0.250541, 0.827959, -0.501711,
		-0.960605, -0.148224, 0.235091,
		37.161892, 34.242096, 24.039999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592255, 35.053413, 24.023342>,  <37.834316, 34.345852, 23.875435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592255, 35.053413, 24.023342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361137, 34.768036, 24.181915>,  <37.222466, 34.596809, 24.277060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361137, 34.768036, 24.181915>,  <37.592255, 35.053413, 24.023342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361137, 34.768036, 24.181915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091292, 0.539161, 0.837240,
		-0.811063, 0.447559, -0.376654,
		-0.577792, -0.713440, 0.396435,
		37.187801, 34.554005, 24.300846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114025, 35.376911, 24.440699>,  <37.592255, 35.053413, 24.023342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114025, 35.376911, 24.440699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111855, 34.999710, 24.573801>,  <37.110554, 34.773392, 24.653662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111855, 34.999710, 24.573801>,  <37.114025, 35.376911, 24.440699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111855, 34.999710, 24.573801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104153, 0.331482, 0.937695,
		-0.994547, -0.029571, -0.100014,
		-0.005424, -0.942998, 0.332754,
		37.110226, 34.716812, 24.673628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499130, 35.343216, 24.780010>,  <37.114025, 35.376911, 24.440699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499130, 35.343216, 24.780010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734879, 35.070915, 24.954006>,  <36.876328, 34.907536, 25.058403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734879, 35.070915, 24.954006>,  <36.499130, 35.343216, 24.780010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734879, 35.070915, 24.954006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236509, 0.369459, 0.898646,
		-0.772464, -0.632518, 0.056746,
		0.589375, -0.680750, 0.434990,
		36.911690, 34.866692, 25.084503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119770, 35.213322, 25.292645>,  <36.499130, 35.343216, 24.780010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119770, 35.213322, 25.292645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471752, 35.067104, 25.414007>,  <36.682941, 34.979374, 25.486824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471752, 35.067104, 25.414007>,  <36.119770, 35.213322, 25.292645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471752, 35.067104, 25.414007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236370, 0.217101, 0.947099,
		-0.412076, -0.905122, 0.104636,
		0.879956, -0.365544, 0.303405,
		36.735741, 34.957439, 25.505030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979530, 34.629250, 25.789391>,  <36.119770, 35.213322, 25.292645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979530, 34.629250, 25.789391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354244, 34.757824, 25.844687>,  <36.579071, 34.834969, 25.877865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354244, 34.757824, 25.844687>,  <35.979530, 34.629250, 25.789391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354244, 34.757824, 25.844687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149615, 0.010832, 0.988685,
		0.316303, -0.946869, 0.058239,
		0.936786, 0.321438, 0.138240,
		36.635281, 34.854256, 25.886158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214039, 34.328812, 26.532711>,  <35.979530, 34.629250, 25.789391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214039, 34.328812, 26.532711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502041, 34.601936, 26.483126>,  <36.674843, 34.765812, 26.453375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502041, 34.601936, 26.483126>,  <36.214039, 34.328812, 26.532711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502041, 34.601936, 26.483126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078132, 0.097737, 0.992140,
		0.689559, -0.724029, 0.017021,
		0.720002, 0.682810, -0.123965,
		36.718040, 34.806778, 26.445936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834351, 34.168003, 26.897898>,  <36.214039, 34.328812, 26.532711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834351, 34.168003, 26.897898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806126, 34.564270, 26.851248>,  <36.789192, 34.802029, 26.823257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806126, 34.564270, 26.851248>,  <36.834351, 34.168003, 26.897898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806126, 34.564270, 26.851248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040098, 0.114003, 0.992671,
		0.996701, 0.074720, 0.031679,
		-0.070561, 0.990666, -0.116623,
		36.784958, 34.861469, 26.816261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327827, 34.461052, 27.372616>,  <36.834351, 34.168003, 26.897898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327827, 34.461052, 27.372616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095341, 34.771126, 27.273600>,  <36.955849, 34.957169, 27.214190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095341, 34.771126, 27.273600>,  <37.327827, 34.461052, 27.372616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095341, 34.771126, 27.273600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171693, 0.180530, 0.968468,
		0.795427, 0.605395, 0.028166,
		-0.581221, 0.775181, -0.247540,
		36.920975, 35.003681, 27.199337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062180, 34.680229, 27.186832>,  <37.327827, 34.461052, 27.372616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062180, 34.680229, 27.186832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434303, 34.579613, 27.293606>,  <38.657578, 34.519245, 27.357670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434303, 34.579613, 27.293606>,  <38.062180, 34.680229, 27.186832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434303, 34.579613, 27.293606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196705, -0.272088, -0.941953,
		0.309565, 0.928815, -0.203648,
		0.930310, -0.251537, 0.266932,
		38.713398, 34.504150, 27.373686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567360, 34.956097, 26.620157>,  <38.062180, 34.680229, 27.186832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567360, 34.956097, 26.620157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750107, 34.667408, 26.828154>,  <38.859756, 34.494194, 26.952951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750107, 34.667408, 26.828154>,  <38.567360, 34.956097, 26.620157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750107, 34.667408, 26.828154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323537, -0.409705, -0.852916,
		0.828610, 0.557907, 0.046322,
		0.456869, -0.721722, 0.519989,
		38.887169, 34.450893, 26.984150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268688, 34.959129, 26.298254>,  <38.567360, 34.956097, 26.620157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268688, 34.959129, 26.298254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243450, 34.589470, 26.448969>,  <39.228306, 34.367676, 26.539398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243450, 34.589470, 26.448969>,  <39.268688, 34.959129, 26.298254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243450, 34.589470, 26.448969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511848, -0.354071, -0.782717,
		0.856756, 0.143473, 0.495363,
		-0.063095, -0.924148, 0.376789,
		39.224522, 34.312225, 26.562006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900642, 34.551235, 26.195805>,  <39.268688, 34.959129, 26.298254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900642, 34.551235, 26.195805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614544, 34.275204, 26.240007>,  <39.442886, 34.109585, 26.266529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614544, 34.275204, 26.240007>,  <39.900642, 34.551235, 26.195805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614544, 34.275204, 26.240007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389865, -0.525206, -0.756415,
		0.580028, -0.497939, 0.644690,
		-0.715244, -0.690083, 0.110505,
		39.399971, 34.068180, 26.273159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234627, 33.917557, 26.159826>,  <39.900642, 34.551235, 26.195805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234627, 33.917557, 26.159826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855755, 33.848911, 26.051453>,  <39.628433, 33.807724, 25.986427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855755, 33.848911, 26.051453>,  <40.234627, 33.917557, 26.159826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855755, 33.848911, 26.051453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320559, -0.480275, -0.816442,
		0.009990, -0.860165, 0.509918,
		-0.947176, -0.171614, -0.270936,
		39.571602, 33.797428, 25.970171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249939, 33.199524, 25.992428>,  <40.234627, 33.917557, 26.159826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249939, 33.199524, 25.992428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894306, 33.312511, 25.848349>,  <39.680927, 33.380306, 25.761902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894306, 33.312511, 25.848349>,  <40.249939, 33.199524, 25.992428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894306, 33.312511, 25.848349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107758, -0.635620, -0.764445,
		-0.444881, -0.718469, 0.534680,
		-0.889083, 0.282471, -0.360196,
		39.627583, 33.397251, 25.740290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777088, 32.570183, 25.878698>,  <40.249939, 33.199524, 25.992428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777088, 32.570183, 25.878698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657200, 32.862148, 25.632971>,  <39.585266, 33.037327, 25.485535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657200, 32.862148, 25.632971>,  <39.777088, 32.570183, 25.878698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657200, 32.862148, 25.632971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024429, -0.649583, -0.759898,
		-0.953716, -0.212746, 0.212522,
		-0.299716, 0.729918, -0.614321,
		39.567284, 33.081123, 25.448675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265396, 32.254681, 25.523262>,  <39.777088, 32.570183, 25.878698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265396, 32.254681, 25.523262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406155, 32.556263, 25.301373>,  <39.490608, 32.737213, 25.168240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406155, 32.556263, 25.301373>,  <39.265396, 32.254681, 25.523262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406155, 32.556263, 25.301373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029830, -0.583293, -0.811714,
		-0.935564, 0.302185, -0.182768,
		0.351895, 0.753958, -0.554723,
		39.511723, 32.782452, 25.134956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072556, 32.067513, 24.920076>,  <39.265396, 32.254681, 25.523262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072556, 32.067513, 24.920076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305470, 32.370716, 24.802521>,  <39.445217, 32.552639, 24.731987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305470, 32.370716, 24.802521>,  <39.072556, 32.067513, 24.920076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305470, 32.370716, 24.802521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144263, -0.452094, -0.880227,
		-0.800083, 0.470146, -0.372600,
		0.582285, 0.758006, -0.293888,
		39.480156, 32.598118, 24.714354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886539, 32.320393, 24.305927>,  <39.072556, 32.067513, 24.920076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886539, 32.320393, 24.305927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257969, 32.468746, 24.300333>,  <39.480827, 32.557758, 24.296976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257969, 32.468746, 24.300333>,  <38.886539, 32.320393, 24.305927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257969, 32.468746, 24.300333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114326, -0.321674, -0.939923,
		-0.353104, 0.871188, -0.341099,
		0.928573, 0.370887, -0.013985,
		39.536541, 32.580013, 24.296137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947060, 32.741196, 23.749687>,  <38.886539, 32.320393, 24.305927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947060, 32.741196, 23.749687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327282, 32.635040, 23.814211>,  <39.555416, 32.571346, 23.852926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327282, 32.635040, 23.814211>,  <38.947060, 32.741196, 23.749687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327282, 32.635040, 23.814211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088973, -0.264929, -0.960154,
		0.297551, 0.927028, -0.228216,
		0.950551, -0.265390, 0.161310,
		39.612446, 32.555424, 23.862604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349907, 32.970612, 23.074036>,  <38.947060, 32.741196, 23.749687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349907, 32.970612, 23.074036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591900, 32.700504, 23.242796>,  <39.737095, 32.538441, 23.344051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591900, 32.700504, 23.242796>,  <39.349907, 32.970612, 23.074036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591900, 32.700504, 23.242796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221953, -0.365845, -0.903822,
		0.764675, 0.640442, -0.071453,
		0.604986, -0.675271, 0.421901,
		39.773396, 32.497925, 23.369366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060768, 32.933136, 22.720379>,  <39.349907, 32.970612, 23.074036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060768, 32.933136, 22.720379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033676, 32.586540, 22.918209>,  <40.017422, 32.378582, 23.036907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033676, 32.586540, 22.918209>,  <40.060768, 32.933136, 22.720379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033676, 32.586540, 22.918209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204226, -0.497258, -0.843224,
		0.976578, 0.043892, 0.210640,
		-0.067731, -0.866491, 0.494576,
		40.013355, 32.326591, 23.066582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546059, 32.486519, 22.346766>,  <40.060768, 32.933136, 22.720379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546059, 32.486519, 22.346766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310986, 32.234844, 22.550238>,  <40.169941, 32.083839, 22.672321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310986, 32.234844, 22.550238>,  <40.546059, 32.486519, 22.346766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310986, 32.234844, 22.550238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105446, -0.682904, -0.722857,
		0.802193, -0.371170, 0.467674,
		-0.587680, -0.629185, 0.508683,
		40.134682, 32.046089, 22.702843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.419094, 27.239916, 26.006887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.754234, 27.452663, 25.957687>,  <32.955318, 27.580313, 25.928167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.754234, 27.452663, 25.957687>,  <32.419094, 27.239916, 26.006887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754234, 27.452663, 25.957687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080556, 0.343302, 0.935764,
		0.539930, -0.774118, 0.330479,
		0.837846, 0.531870, -0.122999,
		33.005589, 27.612225, 25.920788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837303, 27.104235, 26.597197>,  <32.419094, 27.239916, 26.006887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837303, 27.104235, 26.597197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.989559, 27.447966, 26.460566>,  <33.080914, 27.654203, 26.378588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.989559, 27.447966, 26.460566>,  <32.837303, 27.104235, 26.597197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989559, 27.447966, 26.460566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018517, 0.376390, 0.926276,
		0.924539, -0.346251, 0.159181,
		0.380638, 0.859326, -0.341576,
		33.103752, 27.705763, 26.358093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444725, 27.282137, 27.071316>,  <32.837303, 27.104235, 26.597197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444725, 27.282137, 27.071316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.310783, 27.609383, 26.884314>,  <33.230419, 27.805731, 26.772112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.310783, 27.609383, 26.884314>,  <33.444725, 27.282137, 27.071316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310783, 27.609383, 26.884314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036940, 0.484368, 0.874084,
		0.941545, 0.309963, -0.131972,
		-0.334857, 0.818114, -0.467504,
		33.210327, 27.854816, 26.744062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800804, 27.819576, 27.444378>,  <33.444725, 27.282137, 27.071316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800804, 27.819576, 27.444378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.517765, 28.015739, 27.240885>,  <33.347942, 28.133436, 27.118790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.517765, 28.015739, 27.240885>,  <33.800804, 27.819576, 27.444378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517765, 28.015739, 27.240885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074850, 0.663884, 0.744081,
		0.702640, 0.564589, -0.433056,
		-0.707598, 0.490406, -0.508731,
		33.305485, 28.162861, 27.088266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084686, 28.487629, 27.369377>,  <33.800804, 27.819576, 27.444378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084686, 28.487629, 27.369377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.688938, 28.529079, 27.328585>,  <33.451488, 28.553949, 27.304110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.688938, 28.529079, 27.328585>,  <34.084686, 28.487629, 27.369377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688938, 28.529079, 27.328585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022655, 0.802743, 0.595895,
		0.143613, 0.587253, -0.796561,
		-0.989375, 0.103624, -0.101980,
		33.392124, 28.560167, 27.297991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040955, 29.129564, 27.224710>,  <34.084686, 28.487629, 27.369377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040955, 29.129564, 27.224710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.678890, 29.030334, 27.362776>,  <33.461651, 28.970797, 27.445616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.678890, 29.030334, 27.362776>,  <34.040955, 29.129564, 27.224710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678890, 29.030334, 27.362776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048760, 0.746072, 0.664078,
		-0.422259, 0.617929, -0.663221,
		-0.905163, -0.248074, 0.345165,
		33.407341, 28.955912, 27.466326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825485, 29.802080, 27.351141>,  <34.040955, 29.129564, 27.224710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825485, 29.802080, 27.351141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.575176, 29.562922, 27.551510>,  <33.424992, 29.419426, 27.671732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.575176, 29.562922, 27.551510>,  <33.825485, 29.802080, 27.351141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575176, 29.562922, 27.551510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129866, 0.713108, 0.688921,
		-0.769116, 0.366057, -0.523892,
		-0.625776, -0.597896, 0.500924,
		33.387444, 29.383553, 27.701788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369171, 30.215776, 27.576849>,  <33.825485, 29.802080, 27.351141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369171, 30.215776, 27.576849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.327690, 29.884228, 27.796745>,  <33.302803, 29.685299, 27.928684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.327690, 29.884228, 27.796745>,  <33.369171, 30.215776, 27.576849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327690, 29.884228, 27.796745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101817, 0.558665, 0.823120,
		-0.989384, 0.029383, -0.142326,
		-0.103698, -0.828873, 0.549743,
		33.296581, 29.635567, 27.961668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805450, 30.324041, 27.952099>,  <33.369171, 30.215776, 27.576849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805450, 30.324041, 27.952099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.003521, 30.041334, 28.154200>,  <33.122364, 29.871710, 28.275459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.003521, 30.041334, 28.154200>,  <32.805450, 30.324041, 27.952099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003521, 30.041334, 28.154200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003869, 0.583343, 0.812217,
		-0.868783, -0.400237, 0.291593,
		0.495178, -0.706768, 0.505250,
		33.152073, 29.829304, 28.305775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341614, 30.223783, 28.462128>,  <32.805450, 30.324041, 27.952099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341614, 30.223783, 28.462128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.716858, 30.117359, 28.550817>,  <32.942005, 30.053505, 28.604031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.716858, 30.117359, 28.550817>,  <32.341614, 30.223783, 28.462128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716858, 30.117359, 28.550817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075454, 0.467815, 0.880600,
		-0.338018, -0.842829, 0.418787,
		0.938110, -0.266059, 0.221724,
		32.998291, 30.037540, 28.617334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332184, 30.143074, 29.154825>,  <32.341614, 30.223783, 28.462128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332184, 30.143074, 29.154825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.725468, 30.139299, 29.081932>,  <32.961437, 30.137035, 29.038197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.725468, 30.139299, 29.081932>,  <32.332184, 30.143074, 29.154825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725468, 30.139299, 29.081932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175050, 0.330779, 0.927331,
		0.051528, -0.943661, 0.326877,
		0.983210, -0.009437, -0.182233,
		33.020432, 30.136469, 29.027262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653263, 29.981251, 29.828255>,  <32.332184, 30.143074, 29.154825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653263, 29.981251, 29.828255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.943993, 30.147646, 29.609650>,  <33.118431, 30.247482, 29.478487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.943993, 30.147646, 29.609650>,  <32.653263, 29.981251, 29.828255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943993, 30.147646, 29.609650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332838, 0.482702, 0.810073,
		0.600783, -0.770683, 0.212384,
		0.726827, 0.415989, -0.546512,
		33.162041, 30.272442, 29.445696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193546, 29.995424, 30.271486>,  <32.653263, 29.981251, 29.828255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193546, 29.995424, 30.271486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.304276, 30.274544, 30.007231>,  <33.370712, 30.442017, 29.848677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.304276, 30.274544, 30.007231>,  <33.193546, 29.995424, 30.271486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304276, 30.274544, 30.007231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372011, 0.556071, 0.743231,
		0.885990, -0.451508, -0.105657,
		0.276822, 0.697801, -0.660639,
		33.387321, 30.483885, 29.809038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980701, 30.246124, 30.326447>,  <33.193546, 29.995424, 30.271486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980701, 30.246124, 30.326447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.781292, 30.550323, 30.160021>,  <33.661644, 30.732843, 30.060165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.781292, 30.550323, 30.160021>,  <33.980701, 30.246124, 30.326447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781292, 30.550323, 30.160021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361210, 0.618547, 0.697802,
		0.788035, 0.197585, -0.583062,
		-0.498526, 0.760500, -0.416067,
		33.631733, 30.778473, 30.035200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714241, 30.460125, 30.062511>,  <33.980701, 30.246124, 30.326447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714241, 30.460125, 30.062511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073097, 30.338297, 30.190495>,  <35.288410, 30.265200, 30.267284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073097, 30.338297, 30.190495>,  <34.714241, 30.460125, 30.062511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073097, 30.338297, 30.190495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102358, -0.561268, -0.821280,
		0.429720, 0.769555, -0.472362,
		0.897142, -0.304570, 0.319958,
		35.342239, 30.246925, 30.286482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268513, 30.626448, 29.585840>,  <34.714241, 30.460125, 30.062511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268513, 30.626448, 29.585840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.367691, 30.302650, 29.798723>,  <35.427197, 30.108372, 29.926453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.367691, 30.302650, 29.798723>,  <35.268513, 30.626448, 29.585840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367691, 30.302650, 29.798723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272953, -0.468731, -0.840112,
		0.929526, 0.353570, 0.104733,
		0.247947, -0.809493, 0.532206,
		35.442074, 30.059803, 29.958385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797859, 30.377396, 29.250320>,  <35.268513, 30.626448, 29.585840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797859, 30.377396, 29.250320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.733246, 30.058460, 29.482927>,  <35.694477, 29.867100, 29.622492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.733246, 30.058460, 29.482927>,  <35.797859, 30.377396, 29.250320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733246, 30.058460, 29.482927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308285, -0.600533, -0.737781,
		0.937480, 0.060099, 0.342811,
		-0.161530, -0.797338, 0.581515,
		35.684788, 29.819260, 29.657381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395111, 29.946621, 29.068810>,  <35.797859, 30.377396, 29.250320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395111, 29.946621, 29.068810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.107105, 29.718981, 29.227657>,  <35.934299, 29.582397, 29.322966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.107105, 29.718981, 29.227657>,  <36.395111, 29.946621, 29.068810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107105, 29.718981, 29.227657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147455, -0.684649, -0.713801,
		0.678109, -0.455392, 0.576875,
		-0.720017, -0.569098, 0.397117,
		35.891102, 29.548252, 29.346792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690296, 29.425697, 28.912680>,  <36.395111, 29.946621, 29.068810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690296, 29.425697, 28.912680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.308067, 29.332020, 28.984264>,  <36.078728, 29.275812, 29.027216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.308067, 29.332020, 28.984264>,  <36.690296, 29.425697, 28.912680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308067, 29.332020, 28.984264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035040, -0.512606, -0.857909,
		0.292655, -0.826068, 0.481627,
		-0.955576, -0.234195, 0.178962,
		36.021393, 29.261761, 29.037952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561672, 28.655420, 28.983002>,  <36.690296, 29.425697, 28.912680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561672, 28.655420, 28.983002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.196800, 28.789896, 28.889269>,  <35.977879, 28.870581, 28.833029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.196800, 28.789896, 28.889269>,  <36.561672, 28.655420, 28.983002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196800, 28.789896, 28.889269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079496, -0.706131, -0.703605,
		-0.402015, -0.623182, 0.670841,
		-0.912176, 0.336189, -0.234334,
		35.923149, 28.890753, 28.818968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157219, 28.066025, 28.915033>,  <36.561672, 28.655420, 28.983002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157219, 28.066025, 28.915033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.947903, 28.346552, 28.721407>,  <35.822311, 28.514868, 28.605230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.947903, 28.346552, 28.721407>,  <36.157219, 28.066025, 28.915033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947903, 28.346552, 28.721407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077922, -0.605053, -0.792363,
		-0.848583, -0.376918, 0.371267,
		-0.523292, 0.701316, -0.484068,
		35.790916, 28.556946, 28.576187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752045, 27.633482, 28.517879>,  <36.157219, 28.066025, 28.915033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752045, 27.633482, 28.517879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.722923, 27.993826, 28.346697>,  <35.705448, 28.210033, 28.243988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.722923, 27.993826, 28.346697>,  <35.752045, 27.633482, 28.517879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722923, 27.993826, 28.346697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063955, -0.432429, -0.899397,
		-0.995293, -0.038111, 0.089098,
		-0.072806, 0.900862, -0.427957,
		35.701080, 28.264084, 28.218309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127605, 27.666239, 28.186680>,  <35.752045, 27.633482, 28.517879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127605, 27.666239, 28.186680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.370075, 27.928043, 28.005941>,  <35.515556, 28.085125, 27.897499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.370075, 27.928043, 28.005941>,  <35.127605, 27.666239, 28.186680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370075, 27.928043, 28.005941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111222, -0.492782, -0.863016,
		-0.787514, 0.573397, -0.225917,
		0.606178, 0.654510, -0.451847,
		35.551929, 28.124395, 27.870388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819134, 27.801489, 27.458864>,  <35.127605, 27.666239, 28.186680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819134, 27.801489, 27.458864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.195198, 27.937716, 27.454617>,  <35.420837, 28.019451, 27.452068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.195198, 27.937716, 27.454617>,  <34.819134, 27.801489, 27.458864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195198, 27.937716, 27.454617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145570, -0.429649, -0.891185,
		-0.308069, 0.836312, -0.453515,
		0.940161, 0.340564, -0.010620,
		35.477245, 28.039885, 27.451431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996159, 28.079752, 26.862583>,  <34.819134, 27.801489, 27.458864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996159, 28.079752, 26.862583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.371746, 27.998514, 26.973640>,  <35.597099, 27.949772, 27.040276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.371746, 27.998514, 26.973640>,  <34.996159, 28.079752, 26.862583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371746, 27.998514, 26.973640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149951, -0.484740, -0.861709,
		0.309593, 0.850753, -0.424702,
		0.938971, -0.203095, 0.277643,
		35.653439, 27.937586, 27.056932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319290, 28.351034, 26.312162>,  <34.996159, 28.079752, 26.862583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319290, 28.351034, 26.312162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.584572, 28.100544, 26.476114>,  <35.743740, 27.950251, 26.574486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.584572, 28.100544, 26.476114>,  <35.319290, 28.351034, 26.312162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584572, 28.100544, 26.476114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172140, -0.405337, -0.897814,
		0.728373, 0.665991, -0.161023,
		0.663204, -0.626225, 0.409880,
		35.783535, 27.912676, 26.599079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820942, 28.291605, 25.874918>,  <35.319290, 28.351034, 26.312162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820942, 28.291605, 25.874918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.893635, 27.965019, 26.094137>,  <35.937252, 27.769068, 26.225670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.893635, 27.965019, 26.094137>,  <35.820942, 28.291605, 25.874918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893635, 27.965019, 26.094137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187494, -0.518335, -0.834371,
		0.965308, 0.254389, 0.058883,
		0.181734, -0.816465, 0.548050,
		35.948154, 27.720079, 26.258553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432987, 28.073679, 25.601383>,  <35.820942, 28.291605, 25.874918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432987, 28.073679, 25.601383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.265640, 27.749887, 25.766167>,  <36.165230, 27.555613, 25.865036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.265640, 27.749887, 25.766167>,  <36.432987, 28.073679, 25.601383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265640, 27.749887, 25.766167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198673, -0.524136, -0.828137,
		0.886282, -0.264623, 0.380104,
		-0.418371, -0.809479, 0.411959,
		36.140129, 27.507044, 25.889755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207397, 28.194012, 25.408545>,  <36.432987, 28.073679, 25.601383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207397, 28.194012, 25.408545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575081, 28.255104, 25.263365>,  <37.795692, 28.291759, 25.176258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575081, 28.255104, 25.263365>,  <37.207397, 28.194012, 25.408545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575081, 28.255104, 25.263365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248055, 0.491252, 0.834949,
		0.305822, -0.857522, 0.413677,
		0.919207, 0.152731, -0.362948,
		37.850842, 28.300924, 25.154480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768356, 28.076809, 25.956879>,  <37.207397, 28.194012, 25.408545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768356, 28.076809, 25.956879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.924824, 28.351511, 25.711813>,  <38.018703, 28.516333, 25.564774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.924824, 28.351511, 25.711813>,  <37.768356, 28.076809, 25.956879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924824, 28.351511, 25.711813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170068, 0.600302, 0.781483,
		0.904469, -0.409886, 0.118024,
		0.391168, 0.686754, -0.612662,
		38.042175, 28.557537, 25.528015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344833, 28.288702, 26.324430>,  <37.768356, 28.076809, 25.956879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344833, 28.288702, 26.324430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.331009, 28.586357, 26.057577>,  <38.322712, 28.764950, 25.897465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.331009, 28.586357, 26.057577>,  <38.344833, 28.288702, 26.324430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331009, 28.586357, 26.057577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356959, 0.632692, 0.687227,
		0.933481, -0.214385, -0.287494,
		-0.034564, 0.744137, -0.667132,
		38.320641, 28.809599, 25.857437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994003, 28.563417, 26.367962>,  <38.344833, 28.288702, 26.324430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994003, 28.563417, 26.367962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.767387, 28.846752, 26.199537>,  <38.631416, 29.016754, 26.098482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.767387, 28.846752, 26.199537>,  <38.994003, 28.563417, 26.367962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767387, 28.846752, 26.199537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227759, 0.625670, 0.746098,
		0.791934, 0.326793, -0.515797,
		-0.566539, 0.708338, -0.421059,
		38.597427, 29.059254, 26.073219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423351, 29.213881, 26.359356>,  <38.994003, 28.563417, 26.367962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423351, 29.213881, 26.359356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.042706, 29.324646, 26.306067>,  <38.814320, 29.391106, 26.274094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.042706, 29.324646, 26.306067>,  <39.423351, 29.213881, 26.359356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042706, 29.324646, 26.306067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138652, 0.773814, 0.618051,
		0.274236, 0.569675, -0.774768,
		-0.951615, 0.276915, -0.133221,
		38.757221, 29.407721, 26.266100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481285, 29.860149, 26.276466>,  <39.423351, 29.213881, 26.359356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481285, 29.860149, 26.276466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.101776, 29.801416, 26.388376>,  <38.874069, 29.766176, 26.455523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.101776, 29.801416, 26.388376>,  <39.481285, 29.860149, 26.276466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101776, 29.801416, 26.388376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091993, 0.718737, 0.689170,
		-0.302277, 0.679601, -0.668409,
		-0.948771, -0.146831, 0.279776,
		38.817146, 29.757366, 26.472309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157211, 30.519909, 26.304441>,  <39.481285, 29.860149, 26.276466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157211, 30.519909, 26.304441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.907173, 30.296453, 26.522499>,  <38.757153, 30.162380, 26.653334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.907173, 30.296453, 26.522499>,  <39.157211, 30.519909, 26.304441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907173, 30.296453, 26.522499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063434, 0.659740, 0.748812,
		-0.777969, 0.502657, -0.376961,
		-0.625092, -0.558640, 0.545143,
		38.719646, 30.128860, 26.686043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615128, 30.884121, 26.555063>,  <39.157211, 30.519909, 26.304441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615128, 30.884121, 26.555063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.618908, 30.575474, 26.809469>,  <38.621174, 30.390285, 26.962112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.618908, 30.575474, 26.809469>,  <38.615128, 30.884121, 26.555063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618908, 30.575474, 26.809469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013254, 0.635889, 0.771666,
		-0.999867, -0.015721, -0.004218,
		0.009449, -0.771620, 0.636014,
		38.621742, 30.343988, 27.000273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140690, 31.012358, 27.041718>,  <38.615128, 30.884121, 26.555063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140690, 31.012358, 27.041718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.425331, 30.779953, 27.199726>,  <38.596115, 30.640511, 27.294531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.425331, 30.779953, 27.199726>,  <38.140690, 31.012358, 27.041718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425331, 30.779953, 27.199726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004361, 0.565890, 0.824470,
		-0.702564, -0.584976, 0.405225,
		0.711607, -0.581010, 0.395023,
		38.638813, 30.605650, 27.318233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894047, 30.960724, 27.689503>,  <38.140690, 31.012358, 27.041718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894047, 30.960724, 27.689503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.272331, 30.835180, 27.723267>,  <38.499302, 30.759853, 27.743525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.272331, 30.835180, 27.723267>,  <37.894047, 30.960724, 27.689503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272331, 30.835180, 27.723267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049189, 0.394933, 0.917392,
		-0.321269, -0.863435, 0.388930,
		0.945710, -0.313861, 0.084408,
		38.556046, 30.741022, 27.748589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986202, 30.480022, 28.322531>,  <37.894047, 30.960724, 27.689503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986202, 30.480022, 28.322531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.347500, 30.624634, 28.230062>,  <38.564278, 30.711401, 28.174582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.347500, 30.624634, 28.230062>,  <37.986202, 30.480022, 28.322531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347500, 30.624634, 28.230062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191450, 0.142622, 0.971085,
		0.384047, -0.921387, 0.059608,
		0.903247, 0.361531, -0.231173,
		38.618473, 30.733093, 28.160711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423428, 30.265299, 28.842838>,  <37.986202, 30.480022, 28.322531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423428, 30.265299, 28.842838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.662426, 30.541723, 28.680143>,  <38.805824, 30.707577, 28.582525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.662426, 30.541723, 28.680143>,  <38.423428, 30.265299, 28.842838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662426, 30.541723, 28.680143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186938, 0.373217, 0.908715,
		0.779778, -0.618988, 0.093810,
		0.597496, 0.691059, -0.406739,
		38.841675, 30.749041, 28.558123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072140, 30.262436, 29.181795>,  <38.423428, 30.265299, 28.842838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072140, 30.262436, 29.181795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.040405, 30.627378, 29.021139>,  <39.021366, 30.846344, 28.924746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.040405, 30.627378, 29.021139>,  <39.072140, 30.262436, 29.181795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040405, 30.627378, 29.021139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190617, 0.409359, 0.892239,
		0.978453, -0.005773, -0.206387,
		-0.079336, 0.912355, -0.401639,
		39.016605, 30.901085, 28.900648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314110, 30.568634, 29.723227>,  <39.072140, 30.262436, 29.181795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314110, 30.568634, 29.723227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.210953, 30.886616, 29.503578>,  <39.149059, 31.077406, 29.371788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.210953, 30.886616, 29.503578>,  <39.314110, 30.568634, 29.723227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210953, 30.886616, 29.503578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012889, 0.571128, 0.820759,
		0.966087, 0.204593, -0.157538,
		-0.257896, 0.794955, -0.549123,
		39.133583, 31.125103, 29.338840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.013123, 31.434778, 22.502243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.622299, 31.413603, 22.584761>,  <40.387806, 31.400898, 22.634272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.622299, 31.413603, 22.584761>,  <41.013123, 31.434778, 22.502243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622299, 31.413603, 22.584761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080605, -0.804645, -0.588259,
		0.197136, -0.591391, 0.781917,
		-0.977057, -0.052941, 0.206293,
		40.329182, 31.397720, 22.646648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783161, 30.741901, 22.631096>,  <41.013123, 31.434778, 22.502243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783161, 30.741901, 22.631096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.441158, 30.921822, 22.527840>,  <40.235954, 31.029774, 22.465885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.441158, 30.921822, 22.527840>,  <40.783161, 30.741901, 22.631096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441158, 30.921822, 22.527840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163725, -0.706409, -0.688608,
		-0.492089, -0.546503, 0.677631,
		-0.855011, 0.449801, -0.258140,
		40.184654, 31.056763, 22.450397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300400, 30.238562, 22.634325>,  <40.783161, 30.741901, 22.631096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300400, 30.238562, 22.634325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.190937, 30.538578, 22.393476>,  <40.125259, 30.718588, 22.248968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.190937, 30.538578, 22.393476>,  <40.300400, 30.238562, 22.634325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190937, 30.538578, 22.393476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366608, -0.660097, -0.655645,
		-0.889219, 0.041321, 0.455611,
		-0.273655, 0.750043, -0.602119,
		40.108841, 30.763592, 22.212841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723167, 29.917980, 22.386307>,  <40.300400, 30.238562, 22.634325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723167, 29.917980, 22.386307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.818691, 30.210985, 22.131311>,  <39.876007, 30.386789, 21.978313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.818691, 30.210985, 22.131311>,  <39.723167, 29.917980, 22.386307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818691, 30.210985, 22.131311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274163, -0.578915, -0.767914,
		-0.931560, 0.358163, 0.062576,
		0.238812, 0.732514, -0.637489,
		39.890335, 30.430738, 21.940065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248611, 29.797859, 21.892891>,  <39.723167, 29.917980, 22.386307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248611, 29.797859, 21.892891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.507118, 30.044250, 21.712708>,  <39.662220, 30.192085, 21.604597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.507118, 30.044250, 21.712708>,  <39.248611, 29.797859, 21.892891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507118, 30.044250, 21.712708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207072, -0.426590, -0.880422,
		-0.734482, 0.662262, -0.148138,
		0.646264, 0.615979, -0.450459,
		39.700996, 30.229044, 21.577570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901493, 30.185959, 21.350952>,  <39.248611, 29.797859, 21.892891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901493, 30.185959, 21.350952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.288540, 30.189203, 21.250042>,  <39.520767, 30.191151, 21.189495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.288540, 30.189203, 21.250042>,  <38.901493, 30.185959, 21.350952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288540, 30.189203, 21.250042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235644, -0.329139, -0.914407,
		-0.090453, 0.944247, -0.316570,
		0.967621, 0.008113, -0.252278,
		39.578827, 30.191637, 21.174358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018764, 30.587740, 20.667263>,  <38.901493, 30.185959, 21.350952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018764, 30.587740, 20.667263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.320126, 30.329191, 20.715576>,  <39.500942, 30.174063, 20.744564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.320126, 30.329191, 20.715576>,  <39.018764, 30.587740, 20.667263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320126, 30.329191, 20.715576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189266, -0.389072, -0.901555,
		0.629733, 0.656374, -0.415464,
		0.753402, -0.646372, 0.120782,
		39.546146, 30.135279, 20.751810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214264, 30.446941, 20.001923>,  <39.018764, 30.587740, 20.667263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214264, 30.446941, 20.001923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.411064, 30.149887, 20.183661>,  <39.529144, 29.971655, 20.292704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.411064, 30.149887, 20.183661>,  <39.214264, 30.446941, 20.001923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411064, 30.149887, 20.183661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023796, -0.533154, -0.845683,
		0.870268, 0.405268, -0.279986,
		0.492004, -0.742633, 0.454343,
		39.558666, 29.927097, 20.319963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862675, 30.226463, 19.505835>,  <39.214264, 30.446941, 20.001923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862675, 30.226463, 19.505835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.755116, 29.932867, 19.755297>,  <39.690578, 29.756708, 19.904974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.755116, 29.932867, 19.755297>,  <39.862675, 30.226463, 19.505835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755116, 29.932867, 19.755297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102031, -0.622154, -0.776218,
		0.957748, -0.272358, 0.092408,
		-0.268901, -0.733993, 0.623656,
		39.674446, 29.712669, 19.942394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223724, 29.634455, 19.233978>,  <39.862675, 30.226463, 19.505835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223724, 29.634455, 19.233978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.942566, 29.463892, 19.461702>,  <39.773872, 29.361553, 19.598337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.942566, 29.463892, 19.461702>,  <40.223724, 29.634455, 19.233978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942566, 29.463892, 19.461702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041953, -0.823847, -0.565258,
		0.710055, -0.373433, 0.596967,
		-0.702895, -0.426409, 0.569310,
		39.731697, 29.335970, 19.632496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380630, 28.980848, 19.271334>,  <40.223724, 29.634455, 19.233978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380630, 28.980848, 19.271334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.997143, 28.949814, 19.380766>,  <39.767052, 28.931194, 19.446424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.997143, 28.949814, 19.380766>,  <40.380630, 28.980848, 19.271334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997143, 28.949814, 19.380766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089768, -0.830301, -0.550039,
		0.269829, -0.551889, 0.789057,
		-0.958715, -0.077584, 0.273581,
		39.709530, 28.926538, 19.462841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212383, 28.323156, 19.551105>,  <40.380630, 28.980848, 19.271334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212383, 28.323156, 19.551105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.893295, 28.501120, 19.388279>,  <39.701843, 28.607897, 19.290583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.893295, 28.501120, 19.388279>,  <40.212383, 28.323156, 19.551105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893295, 28.501120, 19.388279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135436, -0.789972, -0.597998,
		-0.587624, -0.421903, 0.690432,
		-0.797719, 0.444907, -0.407066,
		39.653980, 28.634592, 19.266159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782356, 27.754488, 19.449478>,  <40.212383, 28.323156, 19.551105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782356, 27.754488, 19.449478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.660564, 28.070580, 19.236753>,  <39.587490, 28.260235, 19.109118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.660564, 28.070580, 19.236753>,  <39.782356, 27.754488, 19.449478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660564, 28.070580, 19.236753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085152, -0.578671, -0.811104,
		-0.948705, -0.201680, 0.243484,
		-0.304481, 0.790231, -0.531814,
		39.569221, 28.307650, 19.077209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576752, 27.123041, 19.280081>,  <39.782356, 27.754488, 19.449478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576752, 27.123041, 19.280081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.372070, 26.805134, 19.410622>,  <39.249264, 26.614389, 19.488945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.372070, 26.805134, 19.410622>,  <39.576752, 27.123041, 19.280081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372070, 26.805134, 19.410622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253763, 0.502708, 0.826371,
		-0.820833, 0.340038, -0.458919,
		-0.511700, -0.794770, 0.326350,
		39.218559, 26.566704, 19.508526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983486, 27.276522, 19.513126>,  <39.576752, 27.123041, 19.280081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983486, 27.276522, 19.513126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.981247, 26.920246, 19.694958>,  <38.979904, 26.706480, 19.804056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.981247, 26.920246, 19.694958>,  <38.983486, 27.276522, 19.513126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981247, 26.920246, 19.694958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331037, 0.430606, 0.839639,
		-0.943601, -0.145784, -0.297261,
		-0.005596, -0.890688, 0.454580,
		38.979568, 26.653040, 19.831331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355026, 27.310289, 19.917171>,  <38.983486, 27.276522, 19.513126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355026, 27.310289, 19.917171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.580765, 27.017616, 20.070091>,  <38.716209, 26.842012, 20.161842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.580765, 27.017616, 20.070091>,  <38.355026, 27.310289, 19.917171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580765, 27.017616, 20.070091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314821, 0.237349, 0.918996,
		-0.763153, -0.638987, -0.096402,
		0.564345, -0.731684, 0.382300,
		38.750069, 26.798111, 20.184782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902805, 27.020121, 20.391018>,  <38.355026, 27.310289, 19.917171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902805, 27.020121, 20.391018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258591, 26.873997, 20.500856>,  <38.472061, 26.786322, 20.566759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.258591, 26.873997, 20.500856>,  <37.902805, 27.020121, 20.391018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258591, 26.873997, 20.500856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248696, 0.117180, 0.961467,
		-0.383411, -0.923481, 0.013376,
		0.889464, -0.365310, 0.274594,
		38.525429, 26.764404, 20.583235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795780, 26.436747, 20.927502>,  <37.902805, 27.020121, 20.391018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795780, 26.436747, 20.927502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.157150, 26.607649, 20.941805>,  <38.373970, 26.710190, 20.950386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.157150, 26.607649, 20.941805>,  <37.795780, 26.436747, 20.927502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157150, 26.607649, 20.941805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141622, 0.218655, 0.965470,
		0.404685, -0.877292, 0.258047,
		0.903423, 0.427256, 0.035757,
		38.428177, 26.735825, 20.952532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967701, 26.154976, 21.549244>,  <37.795780, 26.436747, 20.927502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967701, 26.154976, 21.549244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.225441, 26.453863, 21.484163>,  <38.380085, 26.633196, 21.445114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.225441, 26.453863, 21.484163>,  <37.967701, 26.154976, 21.549244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225441, 26.453863, 21.484163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079043, 0.276695, 0.957701,
		0.760631, -0.604239, 0.237352,
		0.644354, 0.747218, -0.162702,
		38.418747, 26.678028, 21.435352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513783, 26.050936, 22.013113>,  <37.967701, 26.154976, 21.549244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513783, 26.050936, 22.013113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.532681, 26.433479, 21.897772>,  <38.544018, 26.663006, 21.828568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.532681, 26.433479, 21.897772>,  <38.513783, 26.050936, 22.013113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532681, 26.433479, 21.897772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080080, 0.284118, 0.955440,
		0.995668, -0.068229, -0.063163,
		0.047243, 0.956359, -0.288351,
		38.546852, 26.720387, 21.811266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954472, 26.324190, 22.386103>,  <38.513783, 26.050936, 22.013113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954472, 26.324190, 22.386103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.710228, 26.621119, 22.275745>,  <38.563683, 26.799276, 22.209532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.710228, 26.621119, 22.275745>,  <38.954472, 26.324190, 22.386103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710228, 26.621119, 22.275745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129581, 0.250032, 0.959527,
		0.781260, 0.621645, -0.056480,
		-0.610608, 0.742321, -0.275893,
		38.527046, 26.843815, 22.192978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103699, 26.849625, 22.870539>,  <38.954472, 26.324190, 22.386103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103699, 26.849625, 22.870539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.782475, 27.015486, 22.699354>,  <38.589741, 27.115002, 22.596643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.782475, 27.015486, 22.699354>,  <39.103699, 26.849625, 22.870539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782475, 27.015486, 22.699354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233516, 0.441758, 0.866210,
		0.548232, 0.795558, -0.257932,
		-0.803064, 0.414653, -0.427962,
		38.541553, 27.139881, 22.570965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188057, 27.568558, 22.874226>,  <39.103699, 26.849625, 22.870539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188057, 27.568558, 22.874226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.803627, 27.458149, 22.869223>,  <38.572971, 27.391905, 22.866220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.803627, 27.458149, 22.869223>,  <39.188057, 27.568558, 22.874226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803627, 27.458149, 22.869223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122696, 0.385786, 0.914393,
		-0.247566, 0.880331, -0.404634,
		-0.961071, -0.276020, -0.012506,
		38.515305, 27.375343, 22.865471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054661, 27.963884, 23.351385>,  <39.188057, 27.568558, 22.874226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054661, 27.963884, 23.351385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.707264, 27.769121, 23.314194>,  <38.498825, 27.652264, 23.291880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.707264, 27.769121, 23.314194>,  <39.054661, 27.963884, 23.351385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707264, 27.769121, 23.314194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288378, 0.343721, 0.893697,
		-0.403190, 0.802980, -0.438932,
		-0.868491, -0.486908, -0.092977,
		38.446716, 27.623049, 23.286301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450439, 28.505375, 23.350716>,  <39.054661, 27.963884, 23.351385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450439, 28.505375, 23.350716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.348335, 28.140684, 23.479460>,  <38.287075, 27.921869, 23.556705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.348335, 28.140684, 23.479460>,  <38.450439, 28.505375, 23.350716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348335, 28.140684, 23.479460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447515, 0.406492, 0.796552,
		-0.857073, 0.059290, -0.511772,
		-0.255259, -0.911729, 0.321860,
		38.271759, 27.867165, 23.576017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790916, 28.577101, 23.619854>,  <38.450439, 28.505375, 23.350716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790916, 28.577101, 23.619854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.929821, 28.243788, 23.791922>,  <38.013165, 28.043800, 23.895163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.929821, 28.243788, 23.791922>,  <37.790916, 28.577101, 23.619854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929821, 28.243788, 23.791922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355564, 0.307466, 0.882632,
		-0.867744, -0.459461, -0.189513,
		0.347266, -0.833283, 0.430170,
		38.034000, 27.993803, 23.920973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278076, 28.380060, 24.092648>,  <37.790916, 28.577101, 23.619854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278076, 28.380060, 24.092648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.583241, 28.155151, 24.220280>,  <37.766338, 28.020206, 24.296860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.583241, 28.155151, 24.220280>,  <37.278076, 28.380060, 24.092648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583241, 28.155151, 24.220280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120475, 0.361259, 0.924650,
		-0.635176, -0.743870, 0.207870,
		0.762914, -0.562272, 0.319081,
		37.812115, 27.986469, 24.316004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057983, 28.006077, 24.723614>,  <37.278076, 28.380060, 24.092648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057983, 28.006077, 24.723614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.456860, 28.035995, 24.725395>,  <37.696186, 28.053947, 24.726463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.456860, 28.035995, 24.725395>,  <37.057983, 28.006077, 24.723614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456860, 28.035995, 24.725395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038120, 0.455278, 0.889533,
		0.064507, -0.887202, 0.456850,
		0.997189, 0.074796, 0.004452,
		37.756016, 28.058434, 24.726730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765278, 27.529938, 25.230045>,  <37.057983, 28.006077, 24.723614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765278, 27.529938, 25.230045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.431389, 27.361740, 25.372272>,  <36.231056, 27.260822, 25.457609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.431389, 27.361740, 25.372272>,  <36.765278, 27.529938, 25.230045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431389, 27.361740, 25.372272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206225, -0.360010, -0.909870,
		0.510603, -0.832813, 0.213791,
		-0.834719, -0.420494, 0.355569,
		36.180973, 27.235592, 25.478943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807735, 26.922148, 24.913027>,  <36.765278, 27.529938, 25.230045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807735, 26.922148, 24.913027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.425911, 26.923212, 25.032228>,  <36.196815, 26.923851, 25.103748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.425911, 26.923212, 25.032228>,  <36.807735, 26.922148, 24.913027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425911, 26.923212, 25.032228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242574, -0.587822, -0.771766,
		0.173120, -0.808986, 0.561757,
		-0.954561, 0.002659, 0.298003,
		36.139542, 26.924009, 25.121630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582119, 26.178078, 24.972267>,  <36.807735, 26.922148, 24.913027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582119, 26.178078, 24.972267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.253510, 26.397242, 24.909147>,  <36.056343, 26.528740, 24.871275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.253510, 26.397242, 24.909147>,  <36.582119, 26.178078, 24.972267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253510, 26.397242, 24.909147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272368, -0.620237, -0.735609,
		-0.500919, -0.561339, 0.658770,
		-0.821520, 0.547909, -0.157798,
		36.007053, 26.561615, 24.861807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165112, 25.806295, 24.678301>,  <36.582119, 26.178078, 24.972267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165112, 25.806295, 24.678301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.985447, 26.149900, 24.580038>,  <35.877647, 26.356064, 24.521080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.985447, 26.149900, 24.580038>,  <36.165112, 25.806295, 24.678301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985447, 26.149900, 24.580038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367742, -0.428331, -0.825408,
		-0.814260, -0.280404, 0.508286,
		-0.449163, 0.859015, -0.245656,
		35.850697, 26.407604, 24.506342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490952, 25.589220, 24.483967>,  <36.165112, 25.806295, 24.678301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490952, 25.589220, 24.483967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.540672, 25.957756, 24.336628>,  <35.570507, 26.178877, 24.248224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.540672, 25.957756, 24.336628>,  <35.490952, 25.589220, 24.483967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540672, 25.957756, 24.336628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256518, -0.328769, -0.908906,
		-0.958513, 0.207470, 0.195473,
		0.124305, 0.921340, -0.368349,
		35.577965, 26.234158, 24.226124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820736, 25.598141, 24.122986>,  <35.490952, 25.589220, 24.483967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820736, 25.598141, 24.122986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.073948, 25.870657, 23.975954>,  <35.225876, 26.034166, 23.887735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.073948, 25.870657, 23.975954>,  <34.820736, 25.598141, 24.122986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073948, 25.870657, 23.975954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352287, -0.169283, -0.920455,
		-0.689324, 0.712168, 0.132850,
		0.633030, 0.681293, -0.367578,
		35.263855, 26.075045, 23.865681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418434, 25.996174, 23.732912>,  <34.820736, 25.598141, 24.122986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418434, 25.996174, 23.732912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.791805, 26.042372, 23.597044>,  <35.015827, 26.070089, 23.515522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.791805, 26.042372, 23.597044>,  <34.418434, 25.996174, 23.732912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791805, 26.042372, 23.597044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322064, -0.147433, -0.935168,
		-0.158085, 0.982306, -0.100421,
		0.933426, 0.115494, -0.339672,
		35.071835, 26.077021, 23.495142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255642, 26.564823, 23.337215>,  <34.418434, 25.996174, 23.732912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255642, 26.564823, 23.337215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.004745, 26.870764, 23.278471>,  <33.854206, 27.054329, 23.243223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.004745, 26.870764, 23.278471>,  <34.255642, 26.564823, 23.337215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004745, 26.870764, 23.278471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095668, 0.111475, 0.989152,
		0.772925, 0.634489, 0.003250,
		-0.627244, 0.764851, -0.146862,
		33.816574, 27.100220, 23.234413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480282, 27.013634, 23.840111>,  <34.255642, 26.564823, 23.337215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480282, 27.013634, 23.840111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.125206, 27.169512, 23.742006>,  <33.912163, 27.263039, 23.683144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.125206, 27.169512, 23.742006>,  <34.480282, 27.013634, 23.840111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125206, 27.169512, 23.742006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141203, 0.276601, 0.950554,
		0.438265, 0.878425, -0.190508,
		-0.887685, 0.389695, -0.245261,
		33.858902, 27.286421, 23.668428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400982, 27.667755, 24.099510>,  <34.480282, 27.013634, 23.840111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400982, 27.667755, 24.099510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.025867, 27.539806, 24.045481>,  <33.800800, 27.463037, 24.013063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.025867, 27.539806, 24.045481>,  <34.400982, 27.667755, 24.099510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025867, 27.539806, 24.045481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282949, 0.478530, 0.831234,
		-0.201251, 0.817736, -0.539264,
		-0.937784, -0.319871, -0.135073,
		33.744534, 27.443846, 24.004959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934597, 28.207813, 24.165203>,  <34.400982, 27.667755, 24.099510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934597, 28.207813, 24.165203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711803, 27.884680, 24.242325>,  <33.578125, 27.690800, 24.288599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711803, 27.884680, 24.242325>,  <33.934597, 28.207813, 24.165203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711803, 27.884680, 24.242325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153659, 0.328378, 0.931964,
		-0.816183, 0.489465, -0.307033,
		-0.556987, -0.807831, 0.192806,
		33.544708, 27.642330, 24.300167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195435, 28.519367, 24.364735>,  <33.934597, 28.207813, 24.165203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195435, 28.519367, 24.364735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.285515, 28.152552, 24.496387>,  <33.339561, 27.932463, 24.575378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.285515, 28.152552, 24.496387>,  <33.195435, 28.519367, 24.364735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285515, 28.152552, 24.496387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127671, 0.307121, 0.943067,
		-0.965912, -0.254398, -0.047916,
		0.225198, -0.917037, 0.329131,
		33.353073, 27.877439, 24.595127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689739, 28.359549, 24.851160>,  <33.195435, 28.519367, 24.364735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689739, 28.359549, 24.851160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937836, 28.057735, 24.936935>,  <33.086693, 27.876648, 24.988400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937836, 28.057735, 24.936935>,  <32.689739, 28.359549, 24.851160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937836, 28.057735, 24.936935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160488, 0.145524, 0.976251,
		-0.767820, -0.639922, -0.030834,
		0.620238, -0.754534, 0.214436,
		33.123909, 27.831375, 25.001266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326420, 27.859095, 25.283495>,  <32.689739, 28.359549, 24.851160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326420, 27.859095, 25.283495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.713142, 27.788473, 25.357374>,  <32.945175, 27.746101, 25.401701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.713142, 27.788473, 25.357374>,  <32.326420, 27.859095, 25.283495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713142, 27.788473, 25.357374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152858, 0.179569, 0.971797,
		-0.204739, -0.967773, 0.146621,
		0.966807, -0.176553, 0.184696,
		33.003185, 27.735508, 25.412783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.367729, 30.726044, 18.610626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.685467, 30.496105, 18.689180>,  <36.876110, 30.358143, 18.736313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.685467, 30.496105, 18.689180>,  <36.367729, 30.726044, 18.610626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685467, 30.496105, 18.689180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100667, 0.443384, 0.890661,
		-0.599066, -0.687724, 0.410069,
		0.794346, -0.574845, 0.196385,
		36.923771, 30.323652, 18.748096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169147, 30.510836, 19.270708>,  <36.367729, 30.726044, 18.610626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169147, 30.510836, 19.270708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.562973, 30.469618, 19.214121>,  <36.799271, 30.444887, 19.180168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.562973, 30.469618, 19.214121>,  <36.169147, 30.510836, 19.270708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562973, 30.469618, 19.214121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173318, 0.461730, 0.869923,
		-0.024322, -0.881015, 0.472462,
		0.984565, -0.103044, -0.141466,
		36.858341, 30.438705, 19.171680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429066, 30.258615, 19.782284>,  <36.169147, 30.510836, 19.270708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429066, 30.258615, 19.782284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.756622, 30.427544, 19.626814>,  <36.953156, 30.528900, 19.533533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.756622, 30.427544, 19.626814>,  <36.429066, 30.258615, 19.782284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756622, 30.427544, 19.626814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207972, 0.412832, 0.886746,
		0.534950, -0.806978, 0.250231,
		0.818887, 0.422323, -0.388673,
		37.002289, 30.554241, 19.510212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974911, 30.071121, 20.296597>,  <36.429066, 30.258615, 19.782284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974911, 30.071121, 20.296597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.059902, 30.399122, 20.084013>,  <37.110897, 30.595922, 19.956463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.059902, 30.399122, 20.084013>,  <36.974911, 30.071121, 20.296597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059902, 30.399122, 20.084013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196016, 0.497058, 0.845287,
		0.957304, -0.283779, -0.055120,
		0.212477, 0.820002, -0.531461,
		37.123646, 30.645123, 19.924574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490559, 30.377092, 20.666977>,  <36.974911, 30.071121, 20.296597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490559, 30.377092, 20.666977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.365280, 30.669819, 20.424870>,  <37.290112, 30.845455, 20.279606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.365280, 30.669819, 20.424870>,  <37.490559, 30.377092, 20.666977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365280, 30.669819, 20.424870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159630, 0.668834, 0.726071,
		0.936175, 0.130786, -0.326299,
		-0.313199, 0.731817, -0.605269,
		37.271320, 30.889364, 20.243288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973991, 30.957029, 20.706264>,  <37.490559, 30.377092, 20.666977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973991, 30.957029, 20.706264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.635727, 31.142366, 20.600300>,  <37.432770, 31.253569, 20.536722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.635727, 31.142366, 20.600300>,  <37.973991, 30.957029, 20.706264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635727, 31.142366, 20.600300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098349, 0.623121, 0.775918,
		0.524586, 0.630107, -0.572516,
		-0.845657, 0.463342, -0.264910,
		37.382030, 31.281368, 20.520826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042477, 31.642923, 20.793531>,  <37.973991, 30.957029, 20.706264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042477, 31.642923, 20.793531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.644753, 31.632669, 20.752169>,  <37.406120, 31.626516, 20.727350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.644753, 31.632669, 20.752169>,  <38.042477, 31.642923, 20.793531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644753, 31.632669, 20.752169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097949, 0.601763, 0.792646,
		0.041906, 0.798263, -0.600849,
		-0.994309, -0.025636, -0.103407,
		37.346458, 31.624979, 20.721148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868816, 32.378574, 20.907379>,  <38.042477, 31.642923, 20.793531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868816, 32.378574, 20.907379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.531326, 32.165680, 20.935255>,  <37.328835, 32.037941, 20.951981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.531326, 32.165680, 20.935255>,  <37.868816, 32.378574, 20.907379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531326, 32.165680, 20.935255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373374, 0.675185, 0.636174,
		-0.385650, 0.510733, -0.768392,
		-0.843721, -0.532238, 0.069691,
		37.278210, 32.006008, 20.956161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319336, 32.880634, 20.876396>,  <37.868816, 32.378574, 20.907379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319336, 32.880634, 20.876396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.194004, 32.553513, 21.069483>,  <37.118805, 32.357239, 21.185335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.194004, 32.553513, 21.069483>,  <37.319336, 32.880634, 20.876396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194004, 32.553513, 21.069483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292795, 0.566746, 0.770111,
		-0.903380, 0.099962, -0.417028,
		-0.313331, -0.817806, 0.482718,
		37.100006, 32.308170, 21.214298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679249, 33.088509, 21.249903>,  <37.319336, 32.880634, 20.876396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679249, 33.088509, 21.249903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.768730, 32.743572, 21.431593>,  <36.822418, 32.536610, 21.540607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.768730, 32.743572, 21.431593>,  <36.679249, 33.088509, 21.249903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768730, 32.743572, 21.431593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234526, 0.404719, 0.883855,
		-0.946020, -0.304248, -0.111705,
		0.223702, -0.862343, 0.454227,
		36.835842, 32.484871, 21.567862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172569, 33.021931, 21.631758>,  <36.679249, 33.088509, 21.249903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172569, 33.021931, 21.631758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.427536, 32.757729, 21.790474>,  <36.580517, 32.599209, 21.885704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.427536, 32.757729, 21.790474>,  <36.172569, 33.021931, 21.631758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427536, 32.757729, 21.790474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241253, 0.317991, 0.916885,
		-0.731780, -0.680161, 0.043344,
		0.637413, -0.660502, 0.396790,
		36.618759, 32.559578, 21.909512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747414, 32.699493, 22.160418>,  <36.172569, 33.021931, 21.631758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747414, 32.699493, 22.160418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.134357, 32.635532, 22.239048>,  <36.366524, 32.597157, 22.286226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.134357, 32.635532, 22.239048>,  <35.747414, 32.699493, 22.160418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134357, 32.635532, 22.239048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109902, 0.434253, 0.894061,
		-0.228326, -0.886485, 0.402507,
		0.967362, -0.159901, 0.196577,
		36.424564, 32.587563, 22.298021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235836, 32.288540, 22.584513>,  <35.747414, 32.699493, 22.160418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235836, 32.288540, 22.584513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.865772, 32.330296, 22.438532>,  <34.643734, 32.355350, 22.350943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.865772, 32.330296, 22.438532>,  <35.235836, 32.288540, 22.584513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865772, 32.330296, 22.438532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214749, -0.648852, -0.729982,
		-0.313001, -0.753720, 0.577872,
		-0.925156, 0.104388, -0.364952,
		34.588226, 32.361610, 22.329046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888222, 31.664885, 22.567869>,  <35.235836, 32.288540, 22.584513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888222, 31.664885, 22.567869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.690804, 31.871712, 22.288139>,  <34.572353, 31.995808, 22.120302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.690804, 31.871712, 22.288139>,  <34.888222, 31.664885, 22.567869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690804, 31.871712, 22.288139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043451, -0.788416, -0.613607,
		-0.868634, -0.333230, 0.366652,
		-0.493546, 0.517068, -0.699323,
		34.542740, 32.026833, 22.078342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294624, 31.161062, 22.350332>,  <34.888222, 31.664885, 22.567869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294624, 31.161062, 22.350332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.323647, 31.427383, 22.053295>,  <34.341061, 31.587177, 21.875072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.323647, 31.427383, 22.053295>,  <34.294624, 31.161062, 22.350332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323647, 31.427383, 22.053295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122868, -0.732915, -0.669133,
		-0.989767, 0.139787, 0.028632,
		0.072551, 0.665804, -0.742591,
		34.345413, 31.627125, 21.830517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738186, 30.994511, 21.930239>,  <34.294624, 31.161062, 22.350332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738186, 30.994511, 21.930239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.995472, 31.183294, 21.689064>,  <34.149841, 31.296564, 21.544359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.995472, 31.183294, 21.689064>,  <33.738186, 30.994511, 21.930239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995472, 31.183294, 21.689064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082663, -0.740041, -0.667462,
		-0.761213, 0.479160, -0.436990,
		0.643212, 0.471958, -0.602938,
		34.188435, 31.324883, 21.508183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496197, 30.836102, 21.268894>,  <33.738186, 30.994511, 21.930239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496197, 30.836102, 21.268894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.871704, 30.956589, 21.201982>,  <34.097008, 31.028881, 21.161835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.871704, 30.956589, 21.201982>,  <33.496197, 30.836102, 21.268894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871704, 30.956589, 21.201982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069274, -0.640592, -0.764750,
		-0.337516, 0.706334, -0.622233,
		0.938767, 0.301220, -0.167280,
		34.153336, 31.046955, 21.151798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547234, 30.876184, 20.577198>,  <33.496197, 30.836102, 21.268894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547234, 30.876184, 20.577198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.931889, 30.832123, 20.677687>,  <34.162682, 30.805685, 20.737980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.931889, 30.832123, 20.677687>,  <33.547234, 30.876184, 20.577198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931889, 30.832123, 20.677687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152937, -0.544978, -0.824384,
		0.227720, 0.831183, -0.507227,
		0.961641, -0.110155, 0.251221,
		34.220383, 30.799076, 20.753054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916920, 31.052137, 19.961388>,  <33.547234, 30.876184, 20.577198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916920, 31.052137, 19.961388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.157841, 30.824913, 20.185722>,  <34.302395, 30.688578, 20.320324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.157841, 30.824913, 20.185722>,  <33.916920, 31.052137, 19.961388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157841, 30.824913, 20.185722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203206, -0.570317, -0.795893,
		0.771972, 0.593333, -0.228069,
		0.602302, -0.568062, 0.560837,
		34.338531, 30.654495, 20.353973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436039, 30.838797, 19.531332>,  <33.916920, 31.052137, 19.961388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436039, 30.838797, 19.531332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.497467, 30.582226, 19.831995>,  <34.534325, 30.428284, 20.012394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.497467, 30.582226, 19.831995>,  <34.436039, 30.838797, 19.531332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497467, 30.582226, 19.831995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285733, -0.699361, -0.655173,
		0.945925, 0.315386, 0.075878,
		0.153566, -0.641425, 0.751659,
		34.543537, 30.389797, 20.057493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950588, 30.451168, 19.288904>,  <34.436039, 30.838797, 19.531332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950588, 30.451168, 19.288904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.782253, 30.237772, 19.582375>,  <34.681252, 30.109734, 19.758457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.782253, 30.237772, 19.582375>,  <34.950588, 30.451168, 19.288904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782253, 30.237772, 19.582375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215672, -0.844436, -0.490320,
		0.881124, -0.048112, 0.470431,
		-0.420839, -0.533492, 0.733676,
		34.656002, 30.077724, 19.802477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360359, 29.990723, 19.292789>,  <34.950588, 30.451168, 19.288904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360359, 29.990723, 19.292789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.036125, 29.821180, 19.454430>,  <34.841583, 29.719456, 19.551414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.036125, 29.821180, 19.454430>,  <35.360359, 29.990723, 19.292789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036125, 29.821180, 19.454430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121822, -0.796988, -0.591582,
		0.572810, -0.430299, 0.697662,
		-0.810585, -0.423854, 0.404103,
		34.792950, 29.694023, 19.575661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531700, 29.325148, 19.441502>,  <35.360359, 29.990723, 19.292789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531700, 29.325148, 19.441502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.133305, 29.300068, 19.415960>,  <34.894268, 29.285019, 19.400635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.133305, 29.300068, 19.415960>,  <35.531700, 29.325148, 19.441502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133305, 29.300068, 19.415960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088566, -0.792935, -0.602835,
		-0.012834, -0.606072, 0.795307,
		-0.995988, -0.062700, -0.063854,
		34.834507, 29.281258, 19.396805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298145, 28.575523, 19.690302>,  <35.531700, 29.325148, 19.441502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298145, 28.575523, 19.690302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.007030, 28.727772, 19.462109>,  <34.832359, 28.819120, 19.325193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.007030, 28.727772, 19.462109>,  <35.298145, 28.575523, 19.690302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007030, 28.727772, 19.462109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003590, -0.833953, -0.551824,
		-0.685789, -0.399565, 0.608310,
		-0.727791, 0.380619, -0.570482,
		34.788692, 28.841957, 19.290964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952919, 27.989361, 19.476753>,  <35.298145, 28.575523, 19.690302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952919, 27.989361, 19.476753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.788498, 28.240562, 19.212437>,  <34.689846, 28.391283, 19.053846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.788498, 28.240562, 19.212437>,  <34.952919, 27.989361, 19.476753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788498, 28.240562, 19.212437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266343, -0.775967, -0.571784,
		-0.871837, -0.059034, 0.486225,
		-0.411049, 0.628006, -0.660794,
		34.665184, 28.428965, 19.014198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434399, 27.656494, 19.782488>,  <34.952919, 27.989361, 19.476753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434399, 27.656494, 19.782488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.131908, 27.398926, 19.828953>,  <33.950417, 27.244385, 19.856833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.131908, 27.398926, 19.828953>,  <34.434399, 27.656494, 19.782488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131908, 27.398926, 19.828953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042782, 0.225812, 0.973231,
		-0.652916, 0.731008, -0.198312,
		-0.756221, -0.643922, 0.116162,
		33.905041, 27.205750, 19.863802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997623, 28.009630, 20.068586>,  <34.434399, 27.656494, 19.782488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997623, 28.009630, 20.068586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.891712, 27.637091, 20.168568>,  <33.828167, 27.413567, 20.228558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.891712, 27.637091, 20.168568>,  <33.997623, 28.009630, 20.068586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891712, 27.637091, 20.168568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270440, 0.320523, 0.907814,
		-0.925610, 0.172772, -0.336743,
		-0.264779, -0.931351, 0.249955,
		33.812279, 27.357685, 20.243555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334229, 27.972538, 20.334053>,  <33.997623, 28.009630, 20.068586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334229, 27.972538, 20.334053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.547504, 27.671852, 20.489298>,  <33.675472, 27.491440, 20.582445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.547504, 27.671852, 20.489298>,  <33.334229, 27.972538, 20.334053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547504, 27.671852, 20.489298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235279, 0.308903, 0.921533,
		-0.812618, -0.582670, -0.012157,
		0.533195, -0.751714, 0.388110,
		33.707462, 27.446339, 20.605730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932583, 27.737955, 20.924175>,  <33.334229, 27.972538, 20.334053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932583, 27.737955, 20.924175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.270729, 27.545277, 21.016544>,  <33.473618, 27.429670, 21.071966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.270729, 27.545277, 21.016544>,  <32.932583, 27.737955, 20.924175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270729, 27.545277, 21.016544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125317, 0.241390, 0.962303,
		-0.519279, -0.842437, 0.143698,
		0.845366, -0.481696, 0.230920,
		33.524338, 27.400768, 21.085821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766289, 27.271038, 21.445524>,  <32.932583, 27.737955, 20.924175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766289, 27.271038, 21.445524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.164013, 27.304844, 21.471464>,  <33.402649, 27.325127, 21.487028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.164013, 27.304844, 21.471464>,  <32.766289, 27.271038, 21.445524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164013, 27.304844, 21.471464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047016, -0.198092, 0.979055,
		0.095591, -0.976533, -0.192992,
		0.994309, 0.084515, 0.064849,
		33.462307, 27.330198, 21.490919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929886, 26.818945, 21.870119>,  <32.766289, 27.271038, 21.445524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929886, 26.818945, 21.870119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.265045, 27.037273, 21.869457>,  <33.466141, 27.168270, 21.869061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.265045, 27.037273, 21.869457>,  <32.929886, 26.818945, 21.870119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265045, 27.037273, 21.869457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076293, -0.114117, 0.990534,
		0.540468, -0.830093, -0.137261,
		0.837898, 0.545823, -0.001653,
		33.516415, 27.201021, 21.868961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414875, 26.500744, 22.345324>,  <32.929886, 26.818945, 21.870119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414875, 26.500744, 22.345324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.579491, 26.864164, 22.316565>,  <33.678261, 27.082216, 22.299309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.579491, 26.864164, 22.316565>,  <33.414875, 26.500744, 22.345324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579491, 26.864164, 22.316565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147594, 0.011407, 0.988982,
		0.899362, -0.417616, -0.129403,
		0.411539, 0.908552, -0.071897,
		33.702953, 27.136730, 22.294996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930996, 26.435009, 22.679613>,  <33.414875, 26.500744, 22.345324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930996, 26.435009, 22.679613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.871956, 26.830009, 22.701710>,  <33.836533, 27.067011, 22.714968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.871956, 26.830009, 22.701710>,  <33.930996, 26.435009, 22.679613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871956, 26.830009, 22.701710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094532, -0.069682, 0.993080,
		0.984519, 0.141355, 0.103636,
		-0.147599, 0.987503, 0.055241,
		33.827675, 27.126261, 22.718283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594990, 26.619513, 22.607435>,  <33.930996, 26.435009, 22.679613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594990, 26.619513, 22.607435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.948822, 26.460535, 22.705059>,  <35.161121, 26.365149, 22.763634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.948822, 26.460535, 22.705059>,  <34.594990, 26.619513, 22.607435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948822, 26.460535, 22.705059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253383, -0.029802, -0.966907,
		0.391562, 0.917143, 0.074343,
		0.884577, -0.397442, 0.244058,
		35.214195, 26.341303, 22.778276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073250, 27.003780, 22.263796>,  <34.594990, 26.619513, 22.607435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073250, 27.003780, 22.263796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.219742, 26.643755, 22.358253>,  <35.307636, 26.427740, 22.414928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.219742, 26.643755, 22.358253>,  <35.073250, 27.003780, 22.263796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219742, 26.643755, 22.358253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331195, -0.111075, -0.937002,
		0.869590, 0.421367, 0.257417,
		0.366229, -0.900062, 0.236144,
		35.329609, 26.373735, 22.429096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697788, 27.117783, 22.054316>,  <35.073250, 27.003780, 22.263796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697788, 27.117783, 22.054316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.692776, 26.718386, 22.075684>,  <35.689766, 26.478746, 22.088505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.692776, 26.718386, 22.075684>,  <35.697788, 27.117783, 22.054316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692776, 26.718386, 22.075684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468139, -0.053066, -0.882060,
		0.883566, 0.013952, 0.468099,
		-0.012534, -0.998494, 0.053418,
		35.689014, 26.418839, 22.091709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283405, 26.856697, 21.747770>,  <35.697788, 27.117783, 22.054316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283405, 26.856697, 21.747770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.078606, 26.513681, 21.767710>,  <35.955727, 26.307871, 21.779673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.078606, 26.513681, 21.767710>,  <36.283405, 26.856697, 21.747770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078606, 26.513681, 21.767710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392080, -0.284935, -0.874691,
		0.764286, -0.428294, 0.482110,
		-0.511995, -0.857541, 0.049847,
		35.925007, 26.256420, 21.782663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831963, 26.229980, 21.814476>,  <36.283405, 26.856697, 21.747770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831963, 26.229980, 21.814476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.485569, 26.114536, 21.651119>,  <36.277733, 26.045269, 21.553106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.485569, 26.114536, 21.651119>,  <36.831963, 26.229980, 21.814476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485569, 26.114536, 21.651119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496513, -0.398864, -0.770962,
		0.059617, -0.870409, 0.488707,
		-0.865980, -0.288612, -0.408390,
		36.225777, 26.027952, 21.528603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975216, 25.512007, 21.613089>,  <36.831963, 26.229980, 21.814476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975216, 25.512007, 21.613089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.677555, 25.685656, 21.410000>,  <36.498959, 25.789845, 21.288147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.677555, 25.685656, 21.410000>,  <36.975216, 25.512007, 21.613089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677555, 25.685656, 21.410000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368581, -0.367053, -0.854061,
		-0.557128, -0.822684, 0.113132,
		-0.744148, 0.434123, -0.507721,
		36.454311, 25.815893, 21.257683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748978, 24.954496, 21.164774>,  <36.975216, 25.512007, 21.613089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748978, 24.954496, 21.164774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.593693, 25.294851, 21.023193>,  <36.500523, 25.499063, 20.938244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.593693, 25.294851, 21.023193>,  <36.748978, 24.954496, 21.164774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593693, 25.294851, 21.023193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201560, -0.296383, -0.933558,
		-0.899257, -0.433764, -0.056444,
		-0.388215, 0.850886, -0.353954,
		36.477230, 25.550117, 20.917007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327068, 24.716925, 20.687601>,  <36.748978, 24.954496, 21.164774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327068, 24.716925, 20.687601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.389706, 25.097466, 20.581459>,  <36.427288, 25.325790, 20.517775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.389706, 25.097466, 20.581459>,  <36.327068, 24.716925, 20.687601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389706, 25.097466, 20.581459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242900, -0.297511, -0.923302,
		-0.957329, 0.080127, -0.277670,
		0.156591, 0.951350, -0.265353,
		36.436684, 25.382870, 20.501854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915840, 24.859205, 19.993160>,  <36.327068, 24.716925, 20.687601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915840, 24.859205, 19.993160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.226166, 25.104818, 20.051218>,  <36.412361, 25.252186, 20.086054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.226166, 25.104818, 20.051218>,  <35.915840, 24.859205, 19.993160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226166, 25.104818, 20.051218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415161, -0.323560, -0.850265,
		-0.475129, 0.719910, -0.505947,
		0.775818, 0.614035, 0.145146,
		36.458912, 25.289028, 20.094761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.687443, 33.395641, 33.868111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.951511, 33.607903, 33.655476>,  <36.109955, 33.735260, 33.527897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.951511, 33.607903, 33.655476>,  <35.687443, 33.395641, 33.868111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951511, 33.607903, 33.655476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015263, -0.717060, -0.696844,
		-0.750956, 0.451926, -0.481485,
		0.660176, 0.530649, -0.531583,
		36.149563, 33.767097, 33.496002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401138, 33.665512, 33.164940>,  <35.687443, 33.395641, 33.868111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401138, 33.665512, 33.164940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790733, 33.578793, 33.191292>,  <36.024490, 33.526760, 33.207104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.790733, 33.578793, 33.191292>,  <35.401138, 33.665512, 33.164940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790733, 33.578793, 33.191292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083182, -0.612572, -0.786025,
		0.210766, 0.760101, -0.614674,
		0.973991, -0.216797, 0.065883,
		36.082932, 33.513752, 33.211056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609085, 33.593578, 32.425827>,  <35.401138, 33.665512, 33.164940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609085, 33.593578, 32.425827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.891193, 33.420647, 32.650570>,  <36.060459, 33.316887, 32.785416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.891193, 33.420647, 32.650570>,  <35.609085, 33.593578, 32.425827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891193, 33.420647, 32.650570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165831, -0.669945, -0.723653,
		0.689268, 0.603546, -0.400800,
		0.705273, -0.432326, 0.561858,
		36.102776, 33.290947, 32.819126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017170, 33.421791, 31.894772>,  <35.609085, 33.593578, 32.425827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017170, 33.421791, 31.894772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.124050, 33.218208, 32.222080>,  <36.188179, 33.096058, 32.418465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.124050, 33.218208, 32.222080>,  <36.017170, 33.421791, 31.894772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124050, 33.218208, 32.222080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225367, -0.792594, -0.566573,
		0.936918, 0.335799, -0.097078,
		0.267198, -0.508954, 0.818273,
		36.204208, 33.065521, 32.467564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538044, 32.849915, 31.677673>,  <36.017170, 33.421791, 31.894772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538044, 32.849915, 31.677673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.394356, 32.722939, 32.028717>,  <36.308144, 32.646755, 32.239342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.394356, 32.722939, 32.028717>,  <36.538044, 32.849915, 31.677673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394356, 32.722939, 32.028717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043425, -0.933671, -0.355488,
		0.932243, -0.165808, 0.321607,
		-0.359218, -0.317435, 0.877609,
		36.286591, 32.627708, 32.292000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826500, 32.269138, 31.690968>,  <36.538044, 32.849915, 31.677673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826500, 32.269138, 31.690968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515987, 32.246662, 31.942118>,  <36.329678, 32.233177, 32.092808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.515987, 32.246662, 31.942118>,  <36.826500, 32.269138, 31.690968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515987, 32.246662, 31.942118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224586, -0.906015, -0.358746,
		0.589021, -0.419500, 0.690705,
		-0.776283, -0.056186, 0.627876,
		36.283104, 32.229805, 32.130482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834579, 31.635235, 32.078457>,  <36.826500, 32.269138, 31.690968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834579, 31.635235, 32.078457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447109, 31.727947, 32.114098>,  <36.214626, 31.783575, 32.135483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.447109, 31.727947, 32.114098>,  <36.834579, 31.635235, 32.078457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447109, 31.727947, 32.114098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246048, -0.944295, -0.218556,
		0.033480, -0.233634, 0.971748,
		-0.968679, 0.231780, 0.089100,
		36.156506, 31.797482, 32.140827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480881, 31.018456, 32.403435>,  <36.834579, 31.635235, 32.078457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480881, 31.018456, 32.403435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.201550, 31.229523, 32.209980>,  <36.033951, 31.356163, 32.093906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.201550, 31.229523, 32.209980>,  <36.480881, 31.018456, 32.403435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201550, 31.229523, 32.209980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336185, -0.838307, -0.429211,
		-0.631913, -0.137141, 0.762809,
		-0.698331, 0.527669, -0.483633,
		35.992050, 31.387823, 32.064892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951439, 30.560020, 32.278183>,  <36.480881, 31.018456, 32.403435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951439, 30.560020, 32.278183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839390, 30.831251, 32.006374>,  <35.772160, 30.993990, 31.843290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839390, 30.831251, 32.006374>,  <35.951439, 30.560020, 32.278183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839390, 30.831251, 32.006374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337143, -0.732256, -0.591723,
		-0.898814, 0.063341, 0.433729,
		-0.280120, 0.678077, -0.679517,
		35.755352, 31.034674, 31.802519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417725, 30.239035, 31.950201>,  <35.951439, 30.560020, 32.278183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417725, 30.239035, 31.950201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.535923, 30.525391, 31.697161>,  <35.606842, 30.697205, 31.545336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.535923, 30.525391, 31.697161>,  <35.417725, 30.239035, 31.950201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535923, 30.525391, 31.697161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276231, -0.569862, -0.773921,
		-0.914538, 0.403434, 0.029359,
		0.295495, 0.715890, -0.632601,
		35.624573, 30.740158, 31.507380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815163, 30.225483, 31.510433>,  <35.417725, 30.239035, 31.950201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815163, 30.225483, 31.510433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.122688, 30.371136, 31.300163>,  <35.307205, 30.458527, 31.174002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.122688, 30.371136, 31.300163>,  <34.815163, 30.225483, 31.510433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122688, 30.371136, 31.300163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154981, -0.691437, -0.705617,
		-0.620408, 0.623958, -0.475153,
		0.768814, 0.364131, -0.525675,
		35.353333, 30.480375, 31.142460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622955, 30.278629, 30.820177>,  <34.815163, 30.225483, 31.510433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622955, 30.278629, 30.820177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.019829, 30.299883, 30.775023>,  <35.257954, 30.312635, 30.747931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.019829, 30.299883, 30.775023>,  <34.622955, 30.278629, 30.820177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019829, 30.299883, 30.775023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064066, -0.559418, -0.826406,
		-0.107062, 0.827181, -0.551643,
		0.992186, 0.053135, -0.112886,
		35.317486, 30.315823, 30.741158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542969, 31.059875, 30.433182>,  <34.622955, 30.278629, 30.820177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542969, 31.059875, 30.433182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.165699, 31.140305, 30.327362>,  <33.939335, 31.188562, 30.263870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.165699, 31.140305, 30.327362>,  <34.542969, 31.059875, 30.433182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165699, 31.140305, 30.327362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036130, 0.853474, 0.519882,
		0.330320, 0.480782, -0.812242,
		-0.943177, 0.201074, -0.264549,
		33.882748, 31.200626, 30.247997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472961, 31.846104, 30.230640>,  <34.542969, 31.059875, 30.433182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472961, 31.846104, 30.230640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.092636, 31.749676, 30.308449>,  <33.864441, 31.691818, 30.355135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.092636, 31.749676, 30.308449>,  <34.472961, 31.846104, 30.230640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092636, 31.749676, 30.308449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154868, 0.913800, 0.375480,
		-0.268272, 0.326886, -0.906187,
		-0.950813, -0.241070, 0.194523,
		33.807392, 31.677355, 30.366806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127693, 32.401222, 30.157845>,  <34.472961, 31.846104, 30.230640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127693, 32.401222, 30.157845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816792, 32.209217, 30.320557>,  <33.630253, 32.094013, 30.418184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816792, 32.209217, 30.320557>,  <34.127693, 32.401222, 30.157845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816792, 32.209217, 30.320557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281316, 0.843412, 0.457731,
		-0.562800, 0.241338, -0.790577,
		-0.777250, -0.480014, 0.406780,
		33.583618, 32.065212, 30.442591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539276, 32.842583, 30.028961>,  <34.127693, 32.401222, 30.157845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539276, 32.842583, 30.028961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435070, 32.618057, 30.343172>,  <33.372547, 32.483341, 30.531698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435070, 32.618057, 30.343172>,  <33.539276, 32.842583, 30.028961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435070, 32.618057, 30.343172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240324, 0.825717, 0.510329,
		-0.935080, -0.055831, -0.350012,
		-0.260519, -0.561314, 0.785529,
		33.356915, 32.449661, 30.578831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796360, 33.013168, 30.144957>,  <33.539276, 32.842583, 30.028961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796360, 33.013168, 30.144957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959282, 32.861835, 30.477453>,  <33.057037, 32.771034, 30.676950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.959282, 32.861835, 30.477453>,  <32.796360, 33.013168, 30.144957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959282, 32.861835, 30.477453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375735, 0.760150, 0.530089,
		-0.832420, -0.528236, 0.167462,
		0.407308, -0.378336, 0.831241,
		33.081474, 32.748333, 30.726826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360981, 33.306934, 30.684048>,  <32.796360, 33.013168, 30.144957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360981, 33.306934, 30.684048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.665413, 33.152416, 30.892483>,  <32.848072, 33.059704, 31.017544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.665413, 33.152416, 30.892483>,  <32.360981, 33.306934, 30.684048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665413, 33.152416, 30.892483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259325, 0.555138, 0.790299,
		-0.594563, -0.736613, 0.322330,
		0.761081, -0.386295, 0.521086,
		32.893738, 33.036530, 31.048809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091671, 33.045822, 31.290972>,  <32.360981, 33.306934, 30.684048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091671, 33.045822, 31.290972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.475903, 33.114826, 31.378170>,  <32.706444, 33.156231, 31.430489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.475903, 33.114826, 31.378170>,  <32.091671, 33.045822, 31.290972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475903, 33.114826, 31.378170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277335, 0.540551, 0.794286,
		0.019186, -0.823435, 0.567087,
		0.960582, 0.172512, 0.217997,
		32.764076, 33.166580, 31.443569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200329, 32.811954, 31.960567>,  <32.091671, 33.045822, 31.290972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200329, 32.811954, 31.960567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.486454, 33.074490, 31.864603>,  <32.658127, 33.232010, 31.807024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.486454, 33.074490, 31.864603>,  <32.200329, 32.811954, 31.960567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486454, 33.074490, 31.864603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320173, 0.612972, 0.722326,
		0.621147, -0.439873, 0.648605,
		0.715309, 0.656336, -0.239911,
		32.701046, 33.271389, 31.792629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532993, 32.971104, 32.565933>,  <32.200329, 32.811954, 31.960567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532993, 32.971104, 32.565933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627178, 33.290672, 32.344566>,  <32.683689, 33.482414, 32.211746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.627178, 33.290672, 32.344566>,  <32.532993, 32.971104, 32.565933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627178, 33.290672, 32.344566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172504, 0.594746, 0.785188,
		0.956451, -0.089415, 0.277859,
		0.235463, 0.798926, -0.553421,
		32.697819, 33.530350, 32.178539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933884, 33.356953, 32.966267>,  <32.532993, 32.971104, 32.565933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933884, 33.356953, 32.966267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813995, 33.608627, 32.679409>,  <32.742062, 33.759632, 32.507294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813995, 33.608627, 32.679409>,  <32.933884, 33.356953, 32.966267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813995, 33.608627, 32.679409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066660, 0.736052, 0.673635,
		0.951695, 0.249707, -0.178669,
		-0.299721, 0.629185, -0.717142,
		32.724079, 33.797382, 32.464268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326908, 34.012028, 33.091812>,  <32.933884, 33.356953, 32.966267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326908, 34.012028, 33.091812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008926, 34.112053, 32.870720>,  <32.818138, 34.172070, 32.738064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008926, 34.112053, 32.870720>,  <33.326908, 34.012028, 33.091812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008926, 34.112053, 32.870720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112452, 0.834566, 0.539309,
		0.596152, 0.490882, -0.635324,
		-0.794957, 0.250067, -0.552729,
		32.770439, 34.187073, 32.704903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393375, 34.763668, 32.858143>,  <33.326908, 34.012028, 33.091812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393375, 34.763668, 32.858143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.001945, 34.685856, 32.831158>,  <32.767086, 34.639168, 32.814968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.001945, 34.685856, 32.831158>,  <33.393375, 34.763668, 32.858143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001945, 34.685856, 32.831158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202739, 0.853192, 0.480584,
		-0.035932, 0.483963, -0.874350,
		-0.978573, -0.194533, -0.067461,
		32.708374, 34.627495, 32.810921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094898, 35.376652, 32.721676>,  <33.393375, 34.763668, 32.858143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094898, 35.376652, 32.721676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782066, 35.158447, 32.842182>,  <32.594368, 35.027523, 32.914486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782066, 35.158447, 32.842182>,  <33.094898, 35.376652, 32.721676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782066, 35.158447, 32.842182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383233, 0.802234, 0.457771,
		-0.491404, 0.242561, -0.836472,
		-0.782084, -0.545514, 0.301264,
		32.547440, 34.994793, 32.932560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400219, 35.722145, 32.358784>,  <33.094898, 35.376652, 32.721676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400219, 35.722145, 32.358784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.302876, 35.509453, 32.683262>,  <32.244469, 35.381836, 32.877949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.302876, 35.509453, 32.683262>,  <32.400219, 35.722145, 32.358784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302876, 35.509453, 32.683262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551924, 0.763649, 0.334992,
		-0.797594, -0.366194, -0.479317,
		-0.243358, -0.531734, 0.811194,
		32.229870, 35.349934, 32.926620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447803, 36.502991, 32.191113>,  <32.400219, 35.722145, 32.358784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447803, 36.502991, 32.191113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.397083, 36.818180, 31.950106>,  <32.366653, 37.007294, 31.805502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.397083, 36.818180, 31.950106>,  <32.447803, 36.502991, 32.191113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397083, 36.818180, 31.950106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431779, -0.503004, -0.748701,
		-0.893023, -0.355085, -0.276451,
		-0.126796, 0.787973, -0.602513,
		32.359043, 37.054573, 31.769352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329369, 36.217331, 31.655308>,  <32.447803, 36.502991, 32.191113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329369, 36.217331, 31.655308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.436703, 36.583233, 31.534498>,  <32.501102, 36.802773, 31.462013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.436703, 36.583233, 31.534498>,  <32.329369, 36.217331, 31.655308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436703, 36.583233, 31.534498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484359, -0.399124, -0.778522,
		-0.832703, 0.062616, -0.550169,
		0.268333, 0.914756, -0.302023,
		32.517204, 36.857658, 31.443892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015240, 36.704468, 31.000748>,  <32.329369, 36.217331, 31.655308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015240, 36.704468, 31.000748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399307, 36.801754, 31.055775>,  <32.629749, 36.860126, 31.088791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399307, 36.801754, 31.055775>,  <32.015240, 36.704468, 31.000748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399307, 36.801754, 31.055775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209651, -0.301572, -0.930108,
		-0.184729, 0.921901, -0.340550,
		0.960168, 0.243215, 0.137568,
		32.687359, 36.874718, 31.097046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253365, 37.130966, 30.471933>,  <32.015240, 36.704468, 31.000748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253365, 37.130966, 30.471933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.573578, 36.942245, 30.619747>,  <32.765705, 36.829014, 30.708435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.573578, 36.942245, 30.619747>,  <32.253365, 37.130966, 30.471933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573578, 36.942245, 30.619747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214434, -0.350295, -0.911763,
		0.559615, 0.809136, -0.179252,
		0.800531, -0.471798, 0.369536,
		32.813736, 36.800705, 30.730608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733448, 37.269260, 30.021490>,  <32.253365, 37.130966, 30.471933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733448, 37.269260, 30.021490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.827446, 36.931419, 30.213917>,  <32.883846, 36.728714, 30.329372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.827446, 36.931419, 30.213917>,  <32.733448, 37.269260, 30.021490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827446, 36.931419, 30.213917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288603, -0.411976, -0.864282,
		0.928162, 0.341942, 0.146941,
		0.234998, -0.844601, 0.481066,
		32.897945, 36.678040, 30.358236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277962, 37.078793, 29.587187>,  <32.733448, 37.269260, 30.021490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277962, 37.078793, 29.587187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.147430, 36.772175, 29.808424>,  <33.069111, 36.588203, 29.941166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.147430, 36.772175, 29.808424>,  <33.277962, 37.078793, 29.587187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147430, 36.772175, 29.808424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059307, -0.567370, -0.821325,
		0.943395, -0.300823, 0.139686,
		-0.326327, -0.766549, 0.553095,
		33.049534, 36.542210, 29.974352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745476, 36.459251, 29.505705>,  <33.277962, 37.078793, 29.587187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745476, 36.459251, 29.505705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388699, 36.306110, 29.601925>,  <33.174633, 36.214226, 29.659657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388699, 36.306110, 29.601925>,  <33.745476, 36.459251, 29.505705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388699, 36.306110, 29.601925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042127, -0.600063, -0.798843,
		0.450186, -0.702387, 0.551349,
		-0.891941, -0.382855, 0.240550,
		33.121117, 36.191254, 29.674089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779648, 35.799301, 29.195953>,  <33.745476, 36.459251, 29.505705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779648, 35.799301, 29.195953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.390091, 35.869209, 29.253916>,  <33.156357, 35.911152, 29.288692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.390091, 35.869209, 29.253916>,  <33.779648, 35.799301, 29.195953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390091, 35.869209, 29.253916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207762, -0.428798, -0.879185,
		-0.091516, -0.886335, 0.453911,
		-0.973889, 0.174765, 0.144905,
		33.097923, 35.921638, 29.297388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564171, 35.222321, 28.991764>,  <33.779648, 35.799301, 29.195953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564171, 35.222321, 28.991764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238079, 35.453693, 28.980322>,  <33.042423, 35.592518, 28.973457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238079, 35.453693, 28.980322>,  <33.564171, 35.222321, 28.991764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238079, 35.453693, 28.980322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188205, -0.311317, -0.931483,
		-0.547701, -0.753991, 0.362658,
		-0.815232, 0.578428, -0.028604,
		32.993511, 35.627220, 28.971741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910900, 34.814281, 28.826477>,  <33.564171, 35.222321, 28.991764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910900, 34.814281, 28.826477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.871311, 35.194992, 28.710321>,  <32.847557, 35.423420, 28.640627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.871311, 35.194992, 28.710321>,  <32.910900, 34.814281, 28.826477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871311, 35.194992, 28.710321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226577, -0.305713, -0.924771,
		-0.968951, -0.025731, 0.245908,
		-0.098973, 0.951776, -0.290391,
		32.841618, 35.480526, 28.623203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455265, 34.585690, 28.494658>,  <32.910900, 34.814281, 28.826477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455265, 34.585690, 28.494658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.489685, 34.963398, 28.367563>,  <32.510338, 35.190022, 28.291307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.489685, 34.963398, 28.367563>,  <32.455265, 34.585690, 28.494658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489685, 34.963398, 28.367563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252989, -0.287756, -0.923684,
		-0.963635, 0.159863, 0.214129,
		0.086046, 0.944267, -0.317735,
		32.515499, 35.246677, 28.272243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819906, 34.709618, 28.083172>,  <32.455265, 34.585690, 28.494658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819906, 34.709618, 28.083172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.123425, 34.955166, 27.996086>,  <32.305534, 35.102493, 27.943834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.123425, 34.955166, 27.996086>,  <31.819906, 34.709618, 28.083172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123425, 34.955166, 27.996086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197421, -0.101773, -0.975022,
		-0.620691, 0.782822, 0.043965,
		0.758794, 0.613867, -0.217714,
		32.351063, 35.139324, 27.930771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592945, 35.039368, 27.535730>,  <31.819906, 34.709618, 28.083172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592945, 35.039368, 27.535730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.969877, 35.163445, 27.485460>,  <32.196037, 35.237888, 27.455297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.969877, 35.163445, 27.485460>,  <31.592945, 35.039368, 27.535730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969877, 35.163445, 27.485460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162378, 0.095381, -0.982108,
		-0.292653, 0.945878, 0.140249,
		0.942331, 0.310190, -0.125676,
		32.252575, 35.256500, 27.447758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666969, 35.507912, 26.891659>,  <31.592945, 35.039368, 27.535730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666969, 35.507912, 26.891659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.042980, 35.385021, 26.950933>,  <32.268585, 35.311287, 26.986498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.042980, 35.385021, 26.950933>,  <31.666969, 35.507912, 26.891659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042980, 35.385021, 26.950933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060595, -0.277122, -0.958922,
		0.335670, 0.910394, -0.241887,
		0.940029, -0.307224, 0.148187,
		32.324989, 35.292854, 26.995390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156063, 35.912777, 26.378786>,  <31.666969, 35.507912, 26.891659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156063, 35.912777, 26.378786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.332466, 35.571548, 26.490339>,  <32.438309, 35.366810, 26.557272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.332466, 35.571548, 26.490339>,  <32.156063, 35.912777, 26.378786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332466, 35.571548, 26.490339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032627, -0.295290, -0.954850,
		0.896910, 0.430196, -0.102393,
		0.441008, -0.853074, 0.278885,
		32.464767, 35.315628, 26.574005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672581, 35.811039, 25.958660>,  <32.156063, 35.912777, 26.378786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672581, 35.811039, 25.958660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.661026, 35.439243, 26.105745>,  <32.654095, 35.216167, 26.193996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.661026, 35.439243, 26.105745>,  <32.672581, 35.811039, 25.958660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661026, 35.439243, 26.105745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223141, -0.364580, -0.904041,
		0.974358, 0.055941, 0.217938,
		-0.028883, -0.929490, 0.367714,
		32.652363, 35.160397, 26.216059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291504, 35.637848, 25.894989>,  <32.672581, 35.811039, 25.958660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291504, 35.637848, 25.894989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.086910, 35.294636, 25.913616>,  <32.964153, 35.088707, 25.924793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.086910, 35.294636, 25.913616>,  <33.291504, 35.637848, 25.894989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086910, 35.294636, 25.913616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437269, -0.306549, -0.845472,
		0.739716, -0.412083, 0.531985,
		-0.511484, -0.858030, 0.046568,
		32.933464, 35.037228, 25.927588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724651, 35.002968, 25.845367>,  <33.291504, 35.637848, 25.894989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724651, 35.002968, 25.845367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359444, 34.913986, 25.708599>,  <33.140320, 34.860600, 25.626537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359444, 34.913986, 25.708599>,  <33.724651, 35.002968, 25.845367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359444, 34.913986, 25.708599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400973, -0.335427, -0.852472,
		0.074944, -0.915425, 0.395449,
		-0.913019, -0.222452, -0.341923,
		33.085537, 34.847252, 25.606022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749493, 34.332085, 25.598833>,  <33.724651, 35.002968, 25.845367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749493, 34.332085, 25.598833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.406330, 34.454037, 25.433397>,  <33.200432, 34.527206, 25.334137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.406330, 34.454037, 25.433397>,  <33.749493, 34.332085, 25.598833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406330, 34.454037, 25.433397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202685, -0.538858, -0.817649,
		-0.472145, -0.785292, 0.400495,
		-0.857903, 0.304874, -0.413586,
		33.148960, 34.545498, 25.309320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321014, 33.582809, 25.362179>,  <33.749493, 34.332085, 25.598833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321014, 33.582809, 25.362179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.212814, 33.909012, 25.157522>,  <33.147892, 34.104733, 25.034729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.212814, 33.909012, 25.157522>,  <33.321014, 33.582809, 25.362179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212814, 33.909012, 25.157522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052072, -0.543071, -0.838071,
		-0.961310, -0.200058, 0.189367,
		-0.270503, 0.815507, -0.511642,
		33.131664, 34.153664, 25.004030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756054, 33.358952, 24.962975>,  <33.321014, 33.582809, 25.362179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756054, 33.358952, 24.962975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.927086, 33.676739, 24.790464>,  <33.029705, 33.867413, 24.686958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.927086, 33.676739, 24.790464>,  <32.756054, 33.358952, 24.962975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927086, 33.676739, 24.790464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001848, -0.476317, -0.879272,
		-0.903977, 0.376754, -0.202194,
		0.427578, 0.794468, -0.431276,
		33.055359, 33.915077, 24.661081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481754, 33.303749, 24.403961>,  <32.756054, 33.358952, 24.962975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481754, 33.303749, 24.403961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.769264, 33.566029, 24.311501>,  <32.941769, 33.723396, 24.256025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.769264, 33.566029, 24.311501>,  <32.481754, 33.303749, 24.403961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769264, 33.566029, 24.311501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255852, -0.558602, -0.788989,
		-0.646458, 0.507962, -0.569268,
		0.718771, 0.655697, -0.231150,
		32.984894, 33.762737, 24.242155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470135, 33.339531, 23.728676>,  <32.481754, 33.303749, 24.403961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470135, 33.339531, 23.728676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.835415, 33.475212, 23.819016>,  <33.054585, 33.556622, 23.873219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.835415, 33.475212, 23.819016>,  <32.470135, 33.339531, 23.728676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835415, 33.475212, 23.819016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343823, -0.343824, -0.873825,
		-0.218752, 0.875629, -0.430606,
		0.913199, 0.339204, 0.225849,
		33.109375, 33.576973, 23.886770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752319, 33.596275, 23.134827>,  <32.470135, 33.339531, 23.728676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752319, 33.596275, 23.134827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083366, 33.506500, 23.340611>,  <33.281994, 33.452637, 23.464081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.083366, 33.506500, 23.340611>,  <32.752319, 33.596275, 23.134827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083366, 33.506500, 23.340611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334065, -0.539586, -0.772818,
		0.451045, 0.811464, -0.371596,
		0.827622, -0.224438, 0.514460,
		33.331654, 33.439167, 23.494949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242352, 33.706184, 22.598194>,  <32.752319, 33.596275, 23.134827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242352, 33.706184, 22.598194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419163, 33.507130, 22.896715>,  <33.525249, 33.387695, 23.075829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419163, 33.507130, 22.896715>,  <33.242352, 33.706184, 22.598194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419163, 33.507130, 22.896715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558263, -0.498606, -0.663125,
		0.702108, 0.709751, 0.057418,
		0.442025, -0.497640, 0.746304,
		33.551769, 33.357838, 23.120605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993496, 33.674335, 22.472782>,  <33.242352, 33.706184, 22.598194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993496, 33.674335, 22.472782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.963818, 33.376514, 22.738153>,  <33.946011, 33.197823, 22.897377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.963818, 33.376514, 22.738153>,  <33.993496, 33.674335, 22.472782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963818, 33.376514, 22.738153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449472, -0.618827, -0.644227,
		0.890208, 0.250395, 0.380569,
		-0.074195, -0.744551, 0.663430,
		33.941559, 33.153149, 22.937183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693886, 33.514214, 22.742002>,  <33.993496, 33.674335, 22.472782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693886, 33.514214, 22.742002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.462360, 33.189476, 22.772669>,  <34.323444, 32.994633, 22.791069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.462360, 33.189476, 22.772669>,  <34.693886, 33.514214, 22.742002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462360, 33.189476, 22.772669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639528, -0.510261, -0.575011,
		0.505941, -0.283795, 0.814545,
		-0.578816, -0.811846, 0.076668,
		34.288715, 32.945923, 22.795670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131439, 33.002804, 22.789799>,  <34.693886, 33.514214, 22.742002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131439, 33.002804, 22.789799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789238, 32.821632, 22.689426>,  <34.583916, 32.712929, 22.629202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.789238, 32.821632, 22.689426>,  <35.131439, 33.002804, 22.789799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789238, 32.821632, 22.689426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488368, -0.544766, -0.681709,
		0.172065, -0.705753, 0.687245,
		-0.855506, -0.452926, -0.250932,
		34.532585, 32.685753, 22.614147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757084, 32.609856, 22.967882>,  <35.131439, 33.002804, 22.789799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757084, 32.609856, 22.967882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.138943, 32.669556, 22.864826>,  <36.368057, 32.705376, 22.802992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.138943, 32.669556, 22.864826>,  <35.757084, 32.609856, 22.967882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138943, 32.669556, 22.864826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161497, 0.467412, 0.869163,
		0.250146, -0.871350, 0.422109,
		0.954644, 0.149248, -0.257642,
		36.425335, 32.714329, 22.787533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184162, 32.370892, 23.394159>,  <35.757084, 32.609856, 22.967882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184162, 32.370892, 23.394159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.412674, 32.663208, 23.244713>,  <36.549782, 32.838596, 23.155045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.412674, 32.663208, 23.244713>,  <36.184162, 32.370892, 23.394159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412674, 32.663208, 23.244713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119250, 0.376474, 0.918720,
		0.812045, -0.569401, 0.127926,
		0.571281, 0.730787, -0.373615,
		36.584057, 32.882442, 23.132627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815441, 32.552868, 23.791185>,  <36.184162, 32.370892, 23.394159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815441, 32.552868, 23.791185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.774662, 32.885311, 23.572512>,  <36.750195, 33.084778, 23.441307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.774662, 32.885311, 23.572512>,  <36.815441, 32.552868, 23.791185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774662, 32.885311, 23.572512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361253, 0.542963, 0.758081,
		0.926878, -0.120208, -0.355594,
		-0.101947, 0.831108, -0.546686,
		36.744080, 33.134644, 23.408506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377483, 32.948212, 24.014526>,  <36.815441, 32.552868, 23.791185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377483, 32.948212, 24.014526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.191135, 33.234589, 23.806530>,  <37.079327, 33.406414, 23.681732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.191135, 33.234589, 23.806530>,  <37.377483, 32.948212, 24.014526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191135, 33.234589, 23.806530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328753, 0.685640, 0.649476,
		0.821514, 0.131623, -0.554788,
		-0.465871, 0.715942, -0.519991,
		37.051373, 33.449371, 23.650532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832111, 33.540947, 24.017109>,  <37.377483, 32.948212, 24.014526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832111, 33.540947, 24.017109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.463306, 33.678440, 23.945850>,  <37.242023, 33.760937, 23.903095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.463306, 33.678440, 23.945850>,  <37.832111, 33.540947, 24.017109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463306, 33.678440, 23.945850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109526, 0.672936, 0.731547,
		0.371337, 0.654986, -0.658105,
		-0.922016, 0.343730, -0.178148,
		37.186703, 33.781559, 23.892406>
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
