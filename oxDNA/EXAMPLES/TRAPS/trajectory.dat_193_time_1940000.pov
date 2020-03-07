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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.238522, 52.574707, 49.465160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548954, 52.420609, 49.664871>,  <36.735214, 52.328148, 49.784698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548954, 52.420609, 49.664871>,  <36.238522, 52.574707, 49.465160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548954, 52.420609, 49.664871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340422, 0.410517, 0.845924,
		-0.530852, -0.826473, 0.187449,
		0.776085, -0.385249, 0.499274,
		36.781780, 52.305035, 49.814651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091606, 52.081089, 50.090839>,  <36.238522, 52.574707, 49.465160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091606, 52.081089, 50.090839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408688, 52.323990, 50.112251>,  <36.598938, 52.469730, 50.125099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408688, 52.323990, 50.112251>,  <36.091606, 52.081089, 50.090839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408688, 52.323990, 50.112251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377392, 0.419882, 0.825393,
		0.478747, -0.674493, 0.562015,
		0.792702, 0.607254, 0.053531,
		36.646500, 52.506165, 50.128311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562443, 51.909573, 50.620178>,  <36.091606, 52.081089, 50.090839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562443, 51.909573, 50.620178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544804, 52.297432, 50.523987>,  <36.534218, 52.530148, 50.466270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544804, 52.297432, 50.523987>,  <36.562443, 51.909573, 50.620178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544804, 52.297432, 50.523987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368709, 0.207925, 0.905992,
		0.928498, 0.128622, 0.348350,
		-0.044100, 0.969651, -0.240482,
		36.531574, 52.588326, 50.451843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487015, 52.532642, 51.045383>,  <36.562443, 51.909573, 50.620178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487015, 52.532642, 51.045383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286259, 52.855751, 50.921703>,  <36.165806, 53.049618, 50.847496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286259, 52.855751, 50.921703>,  <36.487015, 52.532642, 51.045383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286259, 52.855751, 50.921703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864464, -0.456726, 0.210008,
		0.028420, 0.372692, 0.927520,
		-0.501890, 0.807776, -0.309199,
		36.135693, 53.098083, 50.828945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286480, 53.291756, 51.358952>,  <36.487015, 52.532642, 51.045383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286480, 53.291756, 51.358952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098274, 53.641808, 51.313766>,  <35.985352, 53.851841, 51.286655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098274, 53.641808, 51.313766>,  <36.286480, 53.291756, 51.358952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098274, 53.641808, 51.313766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807471, 0.478645, 0.344803,
		0.355817, 0.071019, -0.931853,
		-0.470515, 0.875131, -0.112964,
		35.957119, 53.904346, 51.279877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652519, 53.767525, 50.904751>,  <36.286480, 53.291756, 51.358952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652519, 53.767525, 50.904751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435398, 53.935551, 51.195656>,  <36.305126, 54.036366, 51.370197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435398, 53.935551, 51.195656>,  <36.652519, 53.767525, 50.904751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435398, 53.935551, 51.195656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795444, 0.535008, 0.284669,
		-0.269510, 0.733014, -0.624544,
		-0.542802, 0.420069, 0.727261,
		36.272556, 54.061573, 51.413834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816174, 54.420128, 50.918541>,  <36.652519, 53.767525, 50.904751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816174, 54.420128, 50.918541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697327, 54.332180, 51.290215>,  <36.626019, 54.279411, 51.513218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697327, 54.332180, 51.290215>,  <36.816174, 54.420128, 50.918541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697327, 54.332180, 51.290215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719282, 0.588463, 0.369249,
		-0.627976, 0.778054, -0.016693,
		-0.297118, -0.219872, 0.929181,
		36.608192, 54.266220, 51.568970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524025, 54.875473, 51.339474>,  <36.816174, 54.420128, 50.918541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524025, 54.875473, 51.339474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776260, 54.584980, 51.448978>,  <36.927601, 54.410683, 51.514683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776260, 54.584980, 51.448978>,  <36.524025, 54.875473, 51.339474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776260, 54.584980, 51.448978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660106, 0.687372, 0.302950,
		-0.408189, -0.010325, 0.912839,
		0.630588, -0.726232, 0.273762,
		36.965435, 54.367111, 51.531109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949474, 55.140949, 51.925499>,  <36.524025, 54.875473, 51.339474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949474, 55.140949, 51.925499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148781, 54.835373, 51.761482>,  <37.268364, 54.652027, 51.663074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148781, 54.835373, 51.761482>,  <36.949474, 55.140949, 51.925499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148781, 54.835373, 51.761482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856348, 0.507603, 0.094903,
		0.135636, -0.398421, 0.907118,
		0.498268, -0.763937, -0.410037,
		37.298260, 54.606194, 51.638470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616112, 55.199284, 52.216202>,  <36.949474, 55.140949, 51.925499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616112, 55.199284, 52.216202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668964, 54.981075, 51.885155>,  <37.700676, 54.850151, 51.686527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668964, 54.981075, 51.885155>,  <37.616112, 55.199284, 52.216202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668964, 54.981075, 51.885155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966864, 0.254927, -0.013668,
		0.218437, -0.798383, 0.561133,
		0.132135, -0.545525, -0.827613,
		37.708607, 54.817417, 51.636871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144409, 54.754253, 52.309406>,  <37.616112, 55.199284, 52.216202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144409, 54.754253, 52.309406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105167, 54.806259, 51.914745>,  <38.081623, 54.837463, 51.677948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105167, 54.806259, 51.914745>,  <38.144409, 54.754253, 52.309406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105167, 54.806259, 51.914745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975209, 0.210166, -0.069269,
		0.198355, -0.968983, -0.147405,
		-0.098100, 0.130011, -0.986648,
		38.075737, 54.845261, 51.618752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732372, 54.427914, 51.848778>,  <38.144409, 54.754253, 52.309406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732372, 54.427914, 51.848778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586018, 54.717720, 51.615128>,  <38.498203, 54.891605, 51.474937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586018, 54.717720, 51.615128>,  <38.732372, 54.427914, 51.848778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586018, 54.717720, 51.615128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916718, 0.388806, -0.091965,
		0.160480, -0.569125, -0.806439,
		-0.365887, 0.724519, -0.584123,
		38.476250, 54.935074, 51.439892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432232, 54.672112, 51.790611>,  <38.732372, 54.427914, 51.848778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432232, 54.672112, 51.790611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547382, 54.363670, 51.563446>,  <39.616474, 54.178604, 51.427147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547382, 54.363670, 51.563446>,  <39.432232, 54.672112, 51.790611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547382, 54.363670, 51.563446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927626, 0.371893, -0.034732,
		0.237986, -0.516816, 0.822353,
		0.287877, -0.771102, -0.567917,
		39.633747, 54.132339, 51.393070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998573, 55.040115, 52.130001>,  <39.432232, 54.672112, 51.790611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998573, 55.040115, 52.130001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705906, 54.883430, 52.353153>,  <39.530308, 54.789421, 52.487045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705906, 54.883430, 52.353153>,  <39.998573, 55.040115, 52.130001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705906, 54.883430, 52.353153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534169, 0.178950, 0.826220,
		-0.423473, 0.902518, 0.078308,
		-0.731665, -0.391712, 0.557878,
		39.486404, 54.765919, 52.520515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761982, 55.476353, 52.661011>,  <39.998573, 55.040115, 52.130001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761982, 55.476353, 52.661011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790955, 55.087212, 52.748932>,  <39.808338, 54.853725, 52.801685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790955, 55.087212, 52.748932>,  <39.761982, 55.476353, 52.661011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790955, 55.087212, 52.748932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528742, 0.224316, 0.818605,
		-0.845687, 0.056929, 0.530634,
		0.072427, -0.972852, 0.219802,
		39.812683, 54.795357, 52.814873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388153, 55.332989, 53.334747>,  <39.761982, 55.476353, 52.661011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388153, 55.332989, 53.334747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700424, 55.099613, 53.245174>,  <39.887787, 54.959587, 53.191429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700424, 55.099613, 53.245174>,  <39.388153, 55.332989, 53.334747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700424, 55.099613, 53.245174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462338, 0.298119, 0.835086,
		-0.420464, -0.755462, 0.502481,
		0.780674, -0.583440, -0.223931,
		39.934628, 54.924580, 53.177994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549911, 54.966667, 53.977997>,  <39.388153, 55.332989, 53.334747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549911, 54.966667, 53.977997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853512, 54.995678, 53.719185>,  <40.035671, 55.013084, 53.563896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853512, 54.995678, 53.719185>,  <39.549911, 54.966667, 53.977997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853512, 54.995678, 53.719185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632130, 0.155959, 0.759005,
		0.155959, -0.985097, 0.072527,
		-0.759005, -0.072527, 0.647033,
		40.081215, 55.017437, 53.525074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014050, 54.449772, 54.211075>,  <39.549911, 54.966667, 53.977997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014050, 54.449772, 54.211075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175125, 54.759735, 54.016197>,  <40.271770, 54.945713, 53.899273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175125, 54.759735, 54.016197>,  <40.014050, 54.449772, 54.211075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175125, 54.759735, 54.016197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706602, 0.075169, 0.703607,
		0.581854, -0.627584, -0.517284,
		0.402689, 0.774911, -0.487190,
		40.295933, 54.992207, 53.870041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711010, 54.334396, 54.344391>,  <40.014050, 54.449772, 54.211075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711010, 54.334396, 54.344391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625340, 54.715164, 54.256767>,  <40.573936, 54.943623, 54.204193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625340, 54.715164, 54.256767>,  <40.711010, 54.334396, 54.344391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625340, 54.715164, 54.256767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815249, 0.297731, 0.496714,
		0.538050, -0.072203, -0.839815,
		-0.214175, 0.951915, -0.219058,
		40.561089, 55.000740, 54.191051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299053, 54.529373, 54.045967>,  <40.711010, 54.334396, 54.344391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299053, 54.529373, 54.045967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110157, 54.834381, 54.222855>,  <40.996819, 55.017384, 54.328987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110157, 54.834381, 54.222855>,  <41.299053, 54.529373, 54.045967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110157, 54.834381, 54.222855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848270, 0.256741, 0.463165,
		0.239636, 0.593845, -0.768064,
		-0.472241, 0.762517, 0.442217,
		40.968483, 55.063137, 54.355518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850979, 54.888126, 54.195000>,  <41.299053, 54.529373, 54.045967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850979, 54.888126, 54.195000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567898, 55.063667, 54.416470>,  <41.398048, 55.168991, 54.549351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567898, 55.063667, 54.416470>,  <41.850979, 54.888126, 54.195000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567898, 55.063667, 54.416470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705673, 0.477195, 0.523747,
		-0.034363, 0.761374, -0.647401,
		-0.707704, 0.438856, 0.553679,
		41.355587, 55.195324, 54.582573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936783, 55.679504, 54.283058>,  <41.850979, 54.888126, 54.195000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936783, 55.679504, 54.283058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787418, 55.527637, 54.621624>,  <41.697800, 55.436520, 54.824764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787418, 55.527637, 54.621624>,  <41.936783, 55.679504, 54.283058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787418, 55.527637, 54.621624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643279, 0.551432, 0.531145,
		-0.668397, 0.742817, 0.038319,
		-0.373413, -0.379665, 0.846414,
		41.675396, 55.413738, 54.875549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850292, 56.262810, 54.616745>,  <41.936783, 55.679504, 54.283058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850292, 56.262810, 54.616745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889904, 55.946465, 54.858315>,  <41.913670, 55.756657, 55.003258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889904, 55.946465, 54.858315>,  <41.850292, 56.262810, 54.616745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889904, 55.946465, 54.858315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697679, 0.487929, 0.524567,
		-0.709534, 0.369398, 0.600089,
		0.099027, -0.790867, 0.603923,
		41.919613, 55.709206, 55.039490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634159, 56.347115, 55.325768>,  <41.850292, 56.262810, 54.616745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634159, 56.347115, 55.325768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961155, 56.117233, 55.310684>,  <42.157352, 55.979305, 55.301636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961155, 56.117233, 55.310684>,  <41.634159, 56.347115, 55.325768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961155, 56.117233, 55.310684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546126, 0.752713, 0.367653,
		-0.182913, -0.321144, 0.929198,
		0.817490, -0.574708, -0.037705,
		42.206402, 55.944820, 55.299374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074848, 56.293800, 56.017879>,  <41.634159, 56.347115, 55.325768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074848, 56.293800, 56.017879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297611, 56.236237, 55.690674>,  <42.431271, 56.201698, 55.494350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297611, 56.236237, 55.690674>,  <42.074848, 56.293800, 56.017879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297611, 56.236237, 55.690674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562608, 0.789875, 0.244070,
		0.611004, -0.596145, 0.520851,
		0.556908, -0.143907, -0.818012,
		42.464684, 56.193066, 55.445271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850960, 56.087772, 56.197411>,  <42.074848, 56.293800, 56.017879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850960, 56.087772, 56.197411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815239, 56.296875, 55.858292>,  <42.793804, 56.422337, 55.654819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.815239, 56.296875, 55.858292>,  <42.850960, 56.087772, 56.197411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.815239, 56.296875, 55.858292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399774, 0.798433, 0.450206,
		0.912253, -0.298719, -0.280289,
		-0.089306, 0.522754, -0.847793,
		42.788448, 56.453701, 55.603954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432205, 56.531532, 56.129509>,  <42.850960, 56.087772, 56.197411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432205, 56.531532, 56.129509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189381, 56.736988, 55.886971>,  <43.043686, 56.860260, 55.741447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.189381, 56.736988, 55.886971>,  <43.432205, 56.531532, 56.129509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189381, 56.736988, 55.886971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430181, 0.853970, 0.292712,
		0.668148, -0.083144, -0.739368,
		-0.607061, 0.513637, -0.606345,
		43.007263, 56.891079, 55.705067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709194, 56.834938, 55.491821>,  <43.432205, 56.531532, 56.129509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709194, 56.834938, 55.491821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410824, 57.003777, 55.697899>,  <43.231800, 57.105080, 55.821545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410824, 57.003777, 55.697899>,  <43.709194, 56.834938, 55.491821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410824, 57.003777, 55.697899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532076, 0.842932, 0.079759,
		-0.400603, 0.333614, -0.853357,
		-0.745930, 0.422099, 0.515189,
		43.187046, 57.130405, 55.852455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035412, 56.505817, 54.933270>,  <43.709194, 56.834938, 55.491821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035412, 56.505817, 54.933270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854252, 56.246830, 55.178436>,  <43.745556, 56.091438, 55.325535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.854252, 56.246830, 55.178436>,  <44.035412, 56.505817, 54.933270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854252, 56.246830, 55.178436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667157, -0.702153, -0.248762,
		0.591427, 0.296247, 0.749968,
		-0.452897, -0.647471, 0.612916,
		43.718384, 56.052589, 55.362312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.588089, 56.068829, 55.111061>,  <44.035412, 56.505817, 54.933270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.588089, 56.068829, 55.111061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.253372, 55.850052, 55.121208>,  <44.052544, 55.718788, 55.127296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.253372, 55.850052, 55.121208>,  <44.588089, 56.068829, 55.111061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253372, 55.850052, 55.121208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538228, -0.830197, -0.145204,
		0.100474, -0.107854, 0.989076,
		-0.836789, -0.546938, 0.025363,
		44.002335, 55.685970, 55.128819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670925, 55.354424, 55.396606>,  <44.588089, 56.068829, 55.111061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670925, 55.354424, 55.396606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.335590, 55.299286, 55.185631>,  <44.134388, 55.266205, 55.059044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.335590, 55.299286, 55.185631>,  <44.670925, 55.354424, 55.396606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335590, 55.299286, 55.185631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331961, -0.896525, -0.293334,
		-0.432429, -0.421001, 0.797348,
		-0.838336, -0.137842, -0.527439,
		44.084091, 55.257935, 55.027397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235466, 55.044655, 55.112915>,  <44.670925, 55.354424, 55.396606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235466, 55.044655, 55.112915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619877, 55.141487, 55.059502>,  <45.850521, 55.199589, 55.027454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.619877, 55.141487, 55.059502>,  <45.235466, 55.044655, 55.112915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.619877, 55.141487, 55.059502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111095, 0.780427, 0.615298,
		0.253167, -0.576480, 0.776902,
		0.961022, 0.242084, -0.133535,
		45.908184, 55.214111, 55.019440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475761, 55.369556, 55.746243>,  <45.235466, 55.044655, 55.112915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475761, 55.369556, 55.746243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.781025, 55.452648, 55.501480>,  <45.964184, 55.502502, 55.354622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.781025, 55.452648, 55.501480>,  <45.475761, 55.369556, 55.746243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.781025, 55.452648, 55.501480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038861, 0.930456, 0.364336,
		0.645037, -0.301827, 0.702017,
		0.763162, 0.207729, -0.611908,
		46.009975, 55.514965, 55.317909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239796, 55.531967, 56.030914>,  <45.475761, 55.369556, 55.746243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239796, 55.531967, 56.030914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.192894, 55.734970, 55.689461>,  <46.164753, 55.856773, 55.484589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.192894, 55.734970, 55.689461>,  <46.239796, 55.531967, 56.030914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.192894, 55.734970, 55.689461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107846, 0.860985, 0.497064,
		0.987229, -0.033778, -0.155686,
		-0.117253, 0.507506, -0.853633,
		46.157719, 55.887222, 55.433372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.715897, 56.060043, 56.203575>,  <46.239796, 55.531967, 56.030914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.715897, 56.060043, 56.203575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920609, 55.769058, 56.020760>,  <47.043434, 55.594467, 55.911072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920609, 55.769058, 56.020760>,  <46.715897, 56.060043, 56.203575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.920609, 55.769058, 56.020760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596521, 0.081944, -0.798403,
		0.618259, 0.681238, -0.392009,
		0.511780, -0.727462, -0.457035,
		47.074142, 55.550819, 55.883648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.324612, 56.437492, 56.126057>,  <46.715897, 56.060043, 56.203575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.324612, 56.437492, 56.126057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.548859, 56.768120, 56.106094>,  <47.683407, 56.966496, 56.094116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.548859, 56.768120, 56.106094>,  <47.324612, 56.437492, 56.126057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.548859, 56.768120, 56.106094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757337, -0.487420, 0.434583,
		0.334891, -0.281426, -0.899248,
		0.560614, 0.826572, -0.049901,
		47.717045, 57.016090, 56.091125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.881218, 56.108414, 56.049835>,  <47.324612, 56.437492, 56.126057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.881218, 56.108414, 56.049835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.979931, 56.485039, 56.141541>,  <48.039158, 56.711014, 56.196564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.979931, 56.485039, 56.141541>,  <47.881218, 56.108414, 56.049835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.979931, 56.485039, 56.141541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820057, -0.328957, 0.468288,
		0.516340, 0.072446, -0.853314,
		0.246778, 0.941562, 0.229263,
		48.053963, 56.767506, 56.210320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.536446, 56.393440, 55.811302>,  <47.881218, 56.108414, 56.049835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.536446, 56.393440, 55.811302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.462574, 56.527573, 56.180832>,  <48.418251, 56.608051, 56.402550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.462574, 56.527573, 56.180832>,  <48.536446, 56.393440, 55.811302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.462574, 56.527573, 56.180832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828673, -0.452240, 0.329817,
		0.528387, 0.826457, -0.194359,
		-0.184683, 0.335331, 0.923821,
		48.407169, 56.628174, 56.457977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.134163, 56.702614, 56.045422>,  <48.536446, 56.393440, 55.811302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.134163, 56.702614, 56.045422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.946632, 56.558674, 56.368088>,  <48.834114, 56.472309, 56.561687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.946632, 56.558674, 56.368088>,  <49.134163, 56.702614, 56.045422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.946632, 56.558674, 56.368088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867130, -0.361402, 0.342746,
		0.168195, 0.860173, 0.481469,
		-0.468825, -0.359848, 0.806668,
		48.805984, 56.450718, 56.610088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.599102, 56.638901, 56.586720>,  <49.134163, 56.702614, 56.045422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.599102, 56.638901, 56.586720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.352722, 56.357819, 56.729164>,  <49.204895, 56.189171, 56.814632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.352722, 56.357819, 56.729164>,  <49.599102, 56.638901, 56.586720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.352722, 56.357819, 56.729164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782841, -0.495394, 0.376490,
		-0.088145, 0.510677, 0.855242,
		-0.615946, -0.702705, 0.356113,
		49.167938, 56.147007, 56.835999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.781376, 56.525398, 57.276596>,  <49.599102, 56.638901, 56.586720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.781376, 56.525398, 57.276596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.596642, 56.198639, 57.138390>,  <49.485802, 56.002583, 57.055466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.596642, 56.198639, 57.138390>,  <49.781376, 56.525398, 57.276596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.596642, 56.198639, 57.138390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704447, -0.574526, 0.416743,
		-0.538946, -0.050931, 0.840799,
		-0.461836, -0.816900, -0.345517,
		49.458092, 55.953568, 57.034733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.814514, 56.440212, 57.998013>,  <49.781376, 56.525398, 57.276596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.814514, 56.440212, 57.998013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.688053, 56.066822, 58.065735>,  <49.612175, 55.842789, 58.106369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.688053, 56.066822, 58.065735>,  <49.814514, 56.440212, 57.998013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.688053, 56.066822, 58.065735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290153, 0.074772, 0.954055,
		-0.903250, 0.350751, 0.247212,
		-0.316151, -0.933479, 0.169309,
		49.593208, 55.786777, 58.116528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.472794, 56.385265, 58.698193>,  <49.814514, 56.440212, 57.998013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.472794, 56.385265, 58.698193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.668602, 56.056030, 58.583031>,  <49.786087, 55.858490, 58.513935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.668602, 56.056030, 58.583031>,  <49.472794, 56.385265, 58.698193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.668602, 56.056030, 58.583031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513726, 0.005437, 0.857937,
		-0.704596, -0.567882, 0.425505,
		0.489521, -0.823092, -0.287905,
		49.815460, 55.809101, 58.496658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.334019, 55.715607, 59.063751>,  <49.472794, 56.385265, 58.698193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.334019, 55.715607, 59.063751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.710354, 55.738426, 58.930138>,  <49.936153, 55.752117, 58.849972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.710354, 55.738426, 58.930138>,  <49.334019, 55.715607, 59.063751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.710354, 55.738426, 58.930138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328713, 0.085866, 0.940518,
		0.082318, -0.994673, 0.062040,
		0.940836, 0.057028, -0.334030,
		49.992603, 55.755543, 58.829929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.833076, 55.294632, 59.482147>,  <49.334019, 55.715607, 59.063751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.833076, 55.294632, 59.482147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.018013, 55.606018, 59.312332>,  <50.128975, 55.792850, 59.210442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.018013, 55.606018, 59.312332>,  <49.833076, 55.294632, 59.482147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.018013, 55.606018, 59.312332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431705, 0.220586, 0.874627,
		0.774515, -0.587650, -0.234083,
		0.462339, 0.778466, -0.424538,
		50.156715, 55.839558, 59.184971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.567822, 55.397343, 59.678028>,  <49.833076, 55.294632, 59.482147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.567822, 55.397343, 59.678028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.402031, 55.756203, 59.616928>,  <50.302555, 55.971519, 59.580269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.402031, 55.756203, 59.616928>,  <50.567822, 55.397343, 59.678028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.402031, 55.756203, 59.616928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495822, 0.363358, 0.788753,
		0.763131, 0.251184, -0.595430,
		-0.414477, 0.897150, -0.152747,
		50.277687, 56.025349, 59.571102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.884964, 56.180195, 59.491219>,  <50.567822, 55.397343, 59.678028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.884964, 56.180195, 59.491219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.025314, 56.130405, 59.862465>,  <51.109524, 56.100533, 60.085213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.025314, 56.130405, 59.862465>,  <50.884964, 56.180195, 59.491219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.025314, 56.130405, 59.862465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874666, 0.397536, -0.277353,
		-0.334436, 0.909105, 0.248354,
		0.350873, -0.124470, 0.928114,
		51.130577, 56.093063, 60.140900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.213959, 56.862114, 59.790878>,  <50.884964, 56.180195, 59.491219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.213959, 56.862114, 59.790878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.384491, 56.525810, 59.924370>,  <51.486809, 56.324028, 60.004467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.384491, 56.525810, 59.924370>,  <51.213959, 56.862114, 59.790878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.384491, 56.525810, 59.924370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902356, 0.421073, -0.091929,
		-0.063235, 0.340336, 0.938175,
		0.426327, -0.840755, 0.333731,
		51.512390, 56.273582, 60.024490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.587231, 56.916447, 60.491692>,  <51.213959, 56.862114, 59.790878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.587231, 56.916447, 60.491692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.763973, 56.671604, 60.229370>,  <51.870018, 56.524696, 60.071976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.763973, 56.671604, 60.229370>,  <51.587231, 56.916447, 60.491692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.763973, 56.671604, 60.229370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827789, 0.559940, 0.035100,
		0.345728, -0.558380, 0.754111,
		0.441856, -0.612110, -0.655808,
		51.896530, 56.487972, 60.032627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.273891, 56.802589, 60.727543>,  <51.587231, 56.916447, 60.491692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.273891, 56.802589, 60.727543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.279621, 56.712704, 60.337814>,  <52.283058, 56.658772, 60.103977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.279621, 56.712704, 60.337814>,  <52.273891, 56.802589, 60.727543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.279621, 56.712704, 60.337814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914865, 0.396167, -0.077924,
		0.403504, -0.890255, 0.211260,
		0.014322, -0.224717, -0.974319,
		52.283916, 56.645290, 60.045517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.782612, 56.312691, 60.628048>,  <52.273891, 56.802589, 60.727543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.782612, 56.312691, 60.628048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.705776, 56.498375, 60.282188>,  <52.659676, 56.609783, 60.074673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.705776, 56.498375, 60.282188>,  <52.782612, 56.312691, 60.628048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.705776, 56.498375, 60.282188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927019, 0.374986, -0.004627,
		0.322083, -0.802432, -0.502360,
		-0.192091, 0.464207, -0.864646,
		52.648148, 56.637638, 60.022793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.264748, 56.121449, 60.192616>,  <52.782612, 56.312691, 60.628048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.264748, 56.121449, 60.192616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.133930, 56.480614, 60.074776>,  <53.055439, 56.696114, 60.004070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.133930, 56.480614, 60.074776>,  <53.264748, 56.121449, 60.192616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.133930, 56.480614, 60.074776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942564, 0.332353, -0.033368,
		0.067950, -0.288594, -0.955037,
		-0.327040, 0.897917, -0.294602,
		53.035820, 56.749989, 59.986397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.747459, 56.263332, 59.601860>,  <53.264748, 56.121449, 60.192616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.747459, 56.263332, 59.601860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.606243, 56.571522, 59.814171>,  <53.521511, 56.756435, 59.941559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.606243, 56.571522, 59.814171>,  <53.747459, 56.263332, 59.601860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.606243, 56.571522, 59.814171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851156, 0.500030, -0.159698,
		-0.388449, 0.395397, -0.832327,
		-0.353044, 0.770475, 0.530781,
		53.500328, 56.802666, 59.973404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.704556, 56.761456, 59.226315>,  <53.747459, 56.263332, 59.601860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.704556, 56.761456, 59.226315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.751457, 56.889942, 59.602203>,  <53.779598, 56.967033, 59.827736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.751457, 56.889942, 59.602203>,  <53.704556, 56.761456, 59.226315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.751457, 56.889942, 59.602203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757062, 0.583497, -0.293918,
		-0.642735, 0.745887, -0.174767,
		0.117253, 0.321221, 0.939717,
		53.786633, 56.986309, 59.884117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.816879, 57.452221, 59.162846>,  <53.704556, 56.761456, 59.226315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.816879, 57.452221, 59.162846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.986206, 57.306332, 59.494576>,  <54.087803, 57.218800, 59.693615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.986206, 57.306332, 59.494576>,  <53.816879, 57.452221, 59.162846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.986206, 57.306332, 59.494576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890068, 0.338235, -0.305575,
		-0.169057, 0.867511, 0.467809,
		0.423319, -0.364722, 0.829325,
		54.113201, 57.196915, 59.743374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.247139, 57.984020, 59.543201>,  <53.816879, 57.452221, 59.162846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.247139, 57.984020, 59.543201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.367058, 57.603596, 59.573158>,  <54.439011, 57.375343, 59.591133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.367058, 57.603596, 59.573158>,  <54.247139, 57.984020, 59.543201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.367058, 57.603596, 59.573158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926520, 0.271554, -0.260421,
		0.227337, 0.147466, 0.962586,
		0.299798, -0.951058, 0.074896,
		54.456997, 57.318279, 59.595627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.819897, 58.076756, 59.980103>,  <54.247139, 57.984020, 59.543201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.819897, 58.076756, 59.980103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.827301, 57.752216, 59.746391>,  <54.831745, 57.557495, 59.606167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.827301, 57.752216, 59.746391>,  <54.819897, 58.076756, 59.980103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.827301, 57.752216, 59.746391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945784, 0.203739, -0.252950,
		0.324269, -0.547913, 0.771130,
		0.018514, -0.811346, -0.584273,
		54.832855, 57.508812, 59.571110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.331573, 57.585892, 60.173195>,  <54.819897, 58.076756, 59.980103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.331573, 57.585892, 60.173195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.259109, 57.563286, 59.780464>,  <55.215630, 57.549725, 59.544827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.259109, 57.563286, 59.780464>,  <55.331573, 57.585892, 60.173195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.259109, 57.563286, 59.780464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973303, 0.132767, -0.187228,
		0.140935, -0.989535, 0.030952,
		-0.181160, -0.056512, -0.981828,
		55.204762, 57.546333, 59.485916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.550053, 58.104805, 59.850346>,  <55.331573, 57.585892, 60.173195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.550053, 58.104805, 59.850346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.913002, 57.939526, 59.881195>,  <56.130772, 57.840359, 59.899704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.913002, 57.939526, 59.881195>,  <55.550053, 58.104805, 59.850346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.913002, 57.939526, 59.881195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416640, 0.908396, -0.035028,
		-0.055590, 0.063918, 0.996406,
		0.907370, -0.413195, 0.077128,
		56.185215, 57.815567, 59.904335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.978653, 58.311909, 60.338547>,  <55.550053, 58.104805, 59.850346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.978653, 58.311909, 60.338547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.257881, 58.177677, 60.085541>,  <56.425419, 58.097137, 59.933735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.257881, 58.177677, 60.085541>,  <55.978653, 58.311909, 60.338547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.257881, 58.177677, 60.085541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497375, 0.862728, 0.091208,
		0.515084, -0.378269, 0.769156,
		0.698073, -0.335579, -0.632519,
		56.467304, 58.077003, 59.895786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.748135, 58.242104, 60.689426>,  <55.978653, 58.311909, 60.338547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.748135, 58.242104, 60.689426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.727356, 58.357910, 60.307121>,  <56.714890, 58.427395, 60.077740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.727356, 58.357910, 60.307121>,  <56.748135, 58.242104, 60.689426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.727356, 58.357910, 60.307121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463878, 0.854534, 0.233644,
		0.884375, -0.431219, -0.178691,
		-0.051946, 0.289519, -0.955762,
		56.711773, 58.444767, 60.020393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.451851, 58.279175, 60.350410>,  <56.748135, 58.242104, 60.689426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.451851, 58.279175, 60.350410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.194183, 58.531654, 60.177605>,  <57.039581, 58.683144, 60.073921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.194183, 58.531654, 60.177605>,  <57.451851, 58.279175, 60.350410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.194183, 58.531654, 60.177605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711388, 0.701918, -0.035192,
		0.281023, -0.329997, -0.901181,
		-0.644169, 0.631200, -0.432011,
		57.000935, 58.721016, 60.048000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.255276, 58.166779, 59.609795>,  <57.451851, 58.279175, 60.350410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.255276, 58.166779, 59.609795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.541405, 58.433517, 59.526237>,  <57.713081, 58.593559, 59.476105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.541405, 58.433517, 59.526237>,  <57.255276, 58.166779, 59.609795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.541405, 58.433517, 59.526237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683005, -0.730378, 0.007256,
		-0.147733, -0.147866, -0.977911,
		0.715318, 0.666846, -0.208894,
		57.756001, 58.633572, 59.463570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.761326, 57.936546, 59.059078>,  <57.255276, 58.166779, 59.609795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.761326, 57.936546, 59.059078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.982483, 58.225231, 59.225662>,  <58.115177, 58.398441, 59.325611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.982483, 58.225231, 59.225662>,  <57.761326, 57.936546, 59.059078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.982483, 58.225231, 59.225662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789364, -0.613727, 0.015619,
		0.266865, 0.320103, -0.909020,
		0.552890, 0.721716, 0.416460,
		58.148350, 58.441746, 59.350601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.385399, 58.052090, 58.753288>,  <57.761326, 57.936546, 59.059078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.385399, 58.052090, 58.753288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.390938, 58.113022, 59.148582>,  <58.394260, 58.149582, 59.385757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.390938, 58.113022, 59.148582>,  <58.385399, 58.052090, 58.753288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.390938, 58.113022, 59.148582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624150, -0.773454, 0.110480,
		0.781181, 0.615275, -0.105790,
		0.013848, 0.152334, 0.988232,
		58.395092, 58.158722, 59.445053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.120731, 58.317741, 59.153755>,  <58.385399, 58.052090, 58.753288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.120731, 58.317741, 59.153755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.869026, 58.061012, 59.329071>,  <58.718002, 57.906975, 59.434261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.869026, 58.061012, 59.329071>,  <59.120731, 58.317741, 59.153755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.869026, 58.061012, 59.329071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751800, -0.645655, 0.133888,
		0.197049, 0.413754, 0.888808,
		-0.629260, -0.641823, 0.438286,
		58.680248, 57.868465, 59.460556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.464458, 58.105743, 59.743511>,  <59.120731, 58.317741, 59.153755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.464458, 58.105743, 59.743511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.219765, 57.836063, 59.577988>,  <59.072948, 57.674255, 59.478676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.219765, 57.836063, 59.577988>,  <59.464458, 58.105743, 59.743511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.219765, 57.836063, 59.577988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742671, -0.669620, -0.006925,
		-0.272424, -0.311559, 0.910338,
		-0.611739, -0.674195, -0.413807,
		59.036243, 57.633804, 59.453846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.462334, 57.360268, 60.014545>,  <59.464458, 58.105743, 59.743511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.462334, 57.360268, 60.014545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.380211, 57.355236, 59.623100>,  <59.330936, 57.352215, 59.388233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.380211, 57.355236, 59.623100>,  <59.462334, 57.360268, 60.014545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.380211, 57.355236, 59.623100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829358, -0.533132, -0.167139,
		-0.519629, -0.845939, 0.119889,
		-0.205306, -0.012581, -0.978617,
		59.318619, 57.351463, 59.329514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.641129, 56.651424, 59.707821>,  <59.462334, 57.360268, 60.014545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.641129, 56.651424, 59.707821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.690063, 56.930096, 59.425072>,  <59.719425, 57.097298, 59.255421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.690063, 56.930096, 59.425072>,  <59.641129, 56.651424, 59.707821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.690063, 56.930096, 59.425072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844539, -0.447188, -0.294580,
		-0.521333, -0.560947, -0.643079,
		0.122334, 0.696679, -0.706875,
		59.726765, 57.139099, 59.213009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.191303, 56.426105, 59.307518>,  <59.641129, 56.651424, 59.707821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.191303, 56.426105, 59.307518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.170540, 56.790070, 59.142899>,  <60.158081, 57.008450, 59.044128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.170540, 56.790070, 59.142899>,  <60.191303, 56.426105, 59.307518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.170540, 56.790070, 59.142899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918575, -0.118186, -0.377164,
		-0.391824, -0.397612, -0.829686,
		-0.051908, 0.909910, -0.411545,
		60.154968, 57.063042, 59.019436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.432560, 56.427547, 58.591537>,  <60.191303, 56.426105, 59.307518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.432560, 56.427547, 58.591537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.469887, 56.815376, 58.682068>,  <60.492283, 57.048073, 58.736385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.469887, 56.815376, 58.682068>,  <60.432560, 56.427547, 58.591537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.469887, 56.815376, 58.682068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837998, 0.046268, -0.543709,
		-0.537636, 0.240397, -0.808181,
		0.093313, 0.969571, 0.226327,
		60.497879, 57.106247, 58.749966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.649094, 56.910656, 57.991322>,  <60.432560, 56.427547, 58.591537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.649094, 56.910656, 57.991322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.747078, 57.098099, 58.330826>,  <60.805870, 57.210564, 58.534531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.747078, 57.098099, 58.330826>,  <60.649094, 56.910656, 57.991322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.747078, 57.098099, 58.330826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821420, 0.364740, -0.438445,
		-0.515036, 0.804595, -0.295574,
		0.244963, 0.468605, 0.848765,
		60.820568, 57.238682, 58.585457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.756641, 57.725437, 57.832859>,  <60.649094, 56.910656, 57.991322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.756641, 57.725437, 57.832859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.959007, 57.556774, 58.133858>,  <61.080425, 57.455578, 58.314457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.959007, 57.556774, 58.133858>,  <60.756641, 57.725437, 57.832859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.959007, 57.556774, 58.133858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861805, 0.284136, -0.420190,
		-0.036635, 0.861087, 0.507136,
		0.505915, -0.421658, 0.752499,
		61.110783, 57.430275, 58.359608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.192348, 58.306854, 58.119713>,  <60.756641, 57.725437, 57.832859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.192348, 58.306854, 58.119713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.338867, 57.946152, 58.211502>,  <61.426777, 57.729729, 58.266575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.338867, 57.946152, 58.211502>,  <61.192348, 58.306854, 58.119713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.338867, 57.946152, 58.211502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905301, 0.288366, -0.311890,
		0.215078, 0.321984, 0.921991,
		0.366295, -0.901760, 0.229471,
		61.448757, 57.675625, 58.280342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.659843, 58.391441, 58.759296>,  <61.192348, 58.306854, 58.119713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.659843, 58.391441, 58.759296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.848022, 58.744198, 58.747032>,  <61.960930, 58.955853, 58.739674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.848022, 58.744198, 58.747032>,  <61.659843, 58.391441, 58.759296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.848022, 58.744198, 58.747032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882411, -0.470365, 0.010416,
		-0.005234, -0.031952, -0.999476,
		0.470451, 0.881893, -0.030657,
		61.989159, 59.008766, 58.737835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.235600, 58.342854, 58.171818>,  <61.659843, 58.391441, 58.759296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.235600, 58.342854, 58.171818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.319916, 58.626595, 58.440857>,  <62.370506, 58.796837, 58.602280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.319916, 58.626595, 58.440857>,  <62.235600, 58.342854, 58.171818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.319916, 58.626595, 58.440857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922990, -0.371046, 0.102056,
		0.321958, 0.599290, -0.732935,
		0.210792, 0.709349, 0.672600,
		62.383152, 58.839401, 58.642635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.826214, 58.806725, 57.988514>,  <62.235600, 58.342854, 58.171818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.826214, 58.806725, 57.988514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.781166, 58.732452, 58.378967>,  <62.754139, 58.687889, 58.613239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.781166, 58.732452, 58.378967>,  <62.826214, 58.806725, 57.988514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.781166, 58.732452, 58.378967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981304, -0.175093, 0.079908,
		0.156077, 0.966884, 0.201929,
		-0.112619, -0.185682, 0.976135,
		62.747379, 58.676746, 58.671806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.351086, 58.580154, 57.461887>,  <62.826214, 58.806725, 57.988514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.351086, 58.580154, 57.461887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.144363, 58.243027, 57.401802>,  <63.020329, 58.040749, 57.365749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.144363, 58.243027, 57.401802>,  <63.351086, 58.580154, 57.461887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.144363, 58.243027, 57.401802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046759, 0.202989, -0.978064,
		0.854825, -0.498445, -0.144316,
		-0.516806, -0.842821, -0.150213,
		62.989323, 57.990181, 57.356739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.685535, 58.060268, 56.946827>,  <63.351086, 58.580154, 57.461887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.685535, 58.060268, 56.946827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.286110, 58.078674, 56.957764>,  <63.046455, 58.089718, 56.964325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.286110, 58.078674, 56.957764>,  <63.685535, 58.060268, 56.946827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.286110, 58.078674, 56.957764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015397, 0.242250, -0.970092,
		-0.051265, -0.969122, -0.241194,
		-0.998567, 0.046018, 0.027341,
		62.986542, 58.092480, 56.965965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.415512, 58.333443, 56.782368>,  <63.685535, 58.060268, 56.946827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.415512, 58.333443, 56.782368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.688713, 58.515453, 57.010910>,  <64.852638, 58.624660, 57.148037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.688713, 58.515453, 57.010910>,  <64.415512, 58.333443, 56.782368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.688713, 58.515453, 57.010910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640991, -0.748440, -0.170199,
		0.350183, 0.482484, -0.802858,
		0.683010, 0.455024, 0.571359,
		64.893616, 58.651962, 57.182320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.972610, 58.337078, 56.304230>,  <64.415512, 58.333443, 56.782368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.972610, 58.337078, 56.304230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.089706, 58.347862, 56.686554>,  <65.159966, 58.354332, 56.915947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.089706, 58.347862, 56.686554>,  <64.972610, 58.337078, 56.304230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.089706, 58.347862, 56.686554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678852, -0.709829, -0.187891,
		0.673397, 0.703858, -0.226098,
		0.292739, 0.026962, 0.955812,
		65.177528, 58.355949, 56.973297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.685356, 58.458870, 56.392967>,  <64.972610, 58.337078, 56.304230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.685356, 58.458870, 56.392967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.585762, 58.238419, 56.711533>,  <65.526009, 58.106148, 56.902672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.585762, 58.238419, 56.711533>,  <65.685356, 58.458870, 56.392967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.585762, 58.238419, 56.711533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770226, -0.611201, -0.182167,
		0.587164, 0.568060, 0.576668,
		-0.248979, -0.551127, 0.796410,
		65.511070, 58.073082, 56.950455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.334076, 58.391899, 56.912426>,  <65.685356, 58.458870, 56.392967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.334076, 58.391899, 56.912426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.083733, 58.080551, 56.932182>,  <65.933525, 57.893742, 56.944035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.083733, 58.080551, 56.932182>,  <66.334076, 58.391899, 56.912426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.083733, 58.080551, 56.932182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754952, -0.620502, -0.212191,
		0.195808, -0.095517, 0.975979,
		-0.625865, -0.778366, 0.049389,
		65.895973, 57.847042, 56.946999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.487465, 57.933994, 57.598972>,  <66.334076, 58.391899, 56.912426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.487465, 57.933994, 57.598972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.385063, 57.760635, 57.253342>,  <66.323624, 57.656620, 57.045963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.385063, 57.760635, 57.253342>,  <66.487465, 57.933994, 57.598972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.385063, 57.760635, 57.253342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939915, -0.320467, -0.117728,
		-0.225887, -0.842301, 0.489391,
		-0.255997, -0.433393, -0.864081,
		66.308266, 57.630619, 56.994118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.235611, 57.715660, 57.477306>,  <66.487465, 57.933994, 57.598972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.235611, 57.715660, 57.477306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.923698, 57.497730, 57.353958>,  <66.736549, 57.366974, 57.279949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.923698, 57.497730, 57.353958>,  <67.235611, 57.715660, 57.477306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.923698, 57.497730, 57.353958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556005, 0.829094, -0.058838,
		0.287724, 0.125574, -0.949445,
		-0.779791, -0.544825, -0.308370,
		66.689758, 57.334282, 57.261448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.003494, 57.479965, 57.462410>,  <67.235611, 57.715660, 57.477306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.003494, 57.479965, 57.462410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.953514, 57.407291, 57.852562>,  <67.923523, 57.363686, 58.086655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.953514, 57.407291, 57.852562>,  <68.003494, 57.479965, 57.462410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.953514, 57.407291, 57.852562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989750, 0.045690, 0.135308,
		-0.069149, 0.982294, 0.174117,
		-0.124957, -0.181689, 0.975384,
		67.916023, 57.352783, 58.145176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.218849, 57.978558, 57.954796>,  <68.003494, 57.479965, 57.462410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.218849, 57.978558, 57.954796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.230858, 57.654213, 58.188583>,  <68.238068, 57.459606, 58.328854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.230858, 57.654213, 58.188583>,  <68.218849, 57.978558, 57.954796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.230858, 57.654213, 58.188583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961403, 0.183427, 0.205084,
		-0.273502, 0.555747, 0.785074,
		0.030029, -0.810864, 0.584464,
		68.239868, 57.410954, 58.363922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.509171, 58.148140, 58.583755>,  <68.218849, 57.978558, 57.954796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.509171, 58.148140, 58.583755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.599228, 57.760376, 58.544662>,  <68.653259, 57.527718, 58.521206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.599228, 57.760376, 58.544662>,  <68.509171, 58.148140, 58.583755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.599228, 57.760376, 58.544662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888755, 0.163222, 0.428338,
		-0.399284, -0.183296, 0.898318,
		0.225138, -0.969413, -0.097733,
		68.666771, 57.469551, 58.515343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.718590, 57.807617, 59.284210>,  <68.509171, 58.148140, 58.583755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.718590, 57.807617, 59.284210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.888672, 57.620323, 58.974380>,  <68.990723, 57.507946, 58.788483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.888672, 57.620323, 58.974380>,  <68.718590, 57.807617, 59.284210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.888672, 57.620323, 58.974380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900835, 0.135944, 0.412330,
		-0.087767, -0.873086, 0.479601,
		0.425199, -0.468230, -0.774575,
		69.016228, 57.479855, 58.742008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.052414, 57.031483, 59.481060>,  <68.718590, 57.807617, 59.284210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.052414, 57.031483, 59.481060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.952621, 56.747776, 59.744789>,  <68.892746, 56.577553, 59.903027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.952621, 56.747776, 59.744789>,  <69.052414, 57.031483, 59.481060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.952621, 56.747776, 59.744789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298303, 0.704027, 0.644485,
		-0.921289, -0.035889, -0.387218,
		-0.249483, -0.709266, 0.659319,
		68.877777, 56.534996, 59.942585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.433197, 56.466541, 59.328991>,  <69.052414, 57.031483, 59.481060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.433197, 56.466541, 59.328991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.715202, 56.735718, 59.418533>,  <69.884407, 56.897224, 59.472260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.715202, 56.735718, 59.418533>,  <69.433197, 56.466541, 59.328991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.715202, 56.735718, 59.418533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694891, -0.718554, -0.028409,
		0.141738, 0.175588, -0.974207,
		0.705008, 0.672941, 0.223861,
		69.926704, 56.937599, 59.485691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.954750, 56.688465, 58.867764>,  <69.433197, 56.466541, 59.328991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.954750, 56.688465, 58.867764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.110359, 56.687752, 59.236252>,  <70.203728, 56.687325, 59.457344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.110359, 56.687752, 59.236252>,  <69.954750, 56.688465, 58.867764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.110359, 56.687752, 59.236252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711346, -0.634829, -0.301627,
		0.585358, 0.772650, -0.245698,
		0.389028, -0.001783, 0.921224,
		70.227066, 56.687218, 59.512619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.704308, 56.739906, 58.857727>,  <69.954750, 56.688465, 58.867764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.704308, 56.739906, 58.857727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.623512, 56.563236, 59.207382>,  <70.575035, 56.457233, 59.417175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.623512, 56.563236, 59.207382>,  <70.704308, 56.739906, 58.857727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.623512, 56.563236, 59.207382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637097, -0.737139, -0.225240,
		0.743847, 0.511417, 0.430284,
		-0.201988, -0.441676, 0.874141,
		70.562920, 56.430733, 59.469624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.322914, 56.412922, 59.099880>,  <70.704308, 56.739906, 58.857727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.322914, 56.412922, 59.099880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.068497, 56.268082, 59.372444>,  <70.915848, 56.181175, 59.535984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.068497, 56.268082, 59.372444>,  <71.322914, 56.412922, 59.099880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.068497, 56.268082, 59.372444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606282, -0.780781, 0.151008,
		0.477355, 0.509177, 0.716150,
		-0.636046, -0.362104, 0.681414,
		70.877686, 56.159451, 59.576870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.607483, 56.387875, 59.672897>,  <71.322914, 56.412922, 59.099880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.607483, 56.387875, 59.672897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.349968, 56.083752, 59.707451>,  <71.195457, 55.901279, 59.728184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.349968, 56.083752, 59.707451>,  <71.607483, 56.387875, 59.672897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.349968, 56.083752, 59.707451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756780, -0.649343, -0.075087,
		0.113183, 0.017034, 0.993428,
		-0.643797, -0.760305, 0.086386,
		71.156830, 55.855659, 59.733368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.511581, 57.149704, 59.530228>,  <71.607483, 56.387875, 59.672897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.511581, 57.149704, 59.530228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.498169, 57.259956, 59.914497>,  <71.490120, 57.326107, 60.145061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.498169, 57.259956, 59.914497>,  <71.511581, 57.149704, 59.530228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.498169, 57.259956, 59.914497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966066, -0.237379, 0.101819,
		0.256109, 0.931492, -0.258321,
		-0.033524, 0.275633, 0.960678,
		71.488113, 57.342648, 60.202702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.784477, 57.833588, 59.516151>,  <71.511581, 57.149704, 59.530228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.784477, 57.833588, 59.516151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.839508, 57.581997, 59.822212>,  <71.872528, 57.431042, 60.005848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.839508, 57.581997, 59.822212>,  <71.784477, 57.833588, 59.516151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.839508, 57.581997, 59.822212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986342, 0.016381, -0.163894,
		0.090552, 0.777249, 0.622643,
		0.137586, -0.628980, 0.765150,
		71.880783, 57.393303, 60.051758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.395409, 58.160427, 59.883202>,  <71.784477, 57.833588, 59.516151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.395409, 58.160427, 59.883202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.329216, 57.772655, 59.955673>,  <72.289497, 57.539993, 59.999157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.329216, 57.772655, 59.955673>,  <72.395409, 58.160427, 59.883202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.329216, 57.772655, 59.955673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974033, -0.131879, 0.184032,
		-0.154511, 0.206932, 0.966077,
		-0.165487, -0.969426, 0.181181,
		72.279572, 57.481827, 60.010029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.824181, 57.889484, 60.490215>,  <72.395409, 58.160427, 59.883202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.824181, 57.889484, 60.490215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.712929, 57.596249, 60.241951>,  <72.646179, 57.420307, 60.092991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.712929, 57.596249, 60.241951>,  <72.824181, 57.889484, 60.490215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.712929, 57.596249, 60.241951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960423, -0.202041, -0.191745,
		0.015167, -0.649429, 0.760271,
		-0.278131, -0.733090, -0.620663,
		72.629486, 57.376320, 60.055752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.178925, 57.381351, 60.721931>,  <72.824181, 57.889484, 60.490215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.178925, 57.381351, 60.721931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.129868, 57.317993, 60.330040>,  <73.100433, 57.279976, 60.094906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.129868, 57.317993, 60.330040>,  <73.178925, 57.381351, 60.721931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.129868, 57.317993, 60.330040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992121, -0.045012, -0.116916,
		-0.025580, -0.986348, 0.162672,
		-0.122642, -0.158400, -0.979729,
		73.093079, 57.270473, 60.036121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
