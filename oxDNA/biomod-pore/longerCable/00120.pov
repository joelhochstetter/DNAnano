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
	<23.916765, 35.106224, 35.305317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.282656, 35.183182, 35.163185>,  <24.502190, 35.229355, 35.077908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.282656, 35.183182, 35.163185>,  <23.916765, 35.106224, 35.305317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.282656, 35.183182, 35.163185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161069, 0.980098, 0.116039,
		0.370584, -0.048911, 0.927510,
		0.914727, 0.192395, -0.355330,
		24.557074, 35.240902, 35.056587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.427458, 35.534447, 35.835056>,  <23.916765, 35.106224, 35.305317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.427458, 35.534447, 35.835056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485285, 35.575699, 35.441414>,  <24.519981, 35.600449, 35.205227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485285, 35.575699, 35.441414>,  <24.427458, 35.534447, 35.835056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.485285, 35.575699, 35.441414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098971, 0.991073, 0.089320,
		0.984533, 0.084486, 0.153483,
		0.144566, 0.103129, -0.984106,
		24.528654, 35.606636, 35.146183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.609737, 35.282814, 36.474483>,  <24.427458, 35.534447, 35.835056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.609737, 35.282814, 36.474483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.636868, 34.914162, 36.321644>,  <24.653147, 34.692970, 36.229939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.636868, 34.914162, 36.321644>,  <24.609737, 35.282814, 36.474483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.636868, 34.914162, 36.321644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897515, 0.110900, -0.426812,
		0.435737, 0.371888, -0.819654,
		0.067826, -0.921629, -0.382098,
		24.657215, 34.637672, 36.207016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.229588, 35.576942, 36.664410>,  <24.609737, 35.282814, 36.474483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.229588, 35.576942, 36.664410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.128153, 35.319637, 36.375435>,  <25.067291, 35.165257, 36.202049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.128153, 35.319637, 36.375435>,  <25.229588, 35.576942, 36.664410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.128153, 35.319637, 36.375435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016506, 0.749615, -0.661669,
		0.967172, -0.155866, -0.200710,
		-0.253587, -0.643260, -0.722433,
		25.052076, 35.126659, 36.158707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748899, 35.688480, 36.183079>,  <25.229588, 35.576942, 36.664410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748899, 35.688480, 36.183079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416632, 35.529972, 36.026638>,  <25.217272, 35.434868, 35.932774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416632, 35.529972, 36.026638>,  <25.748899, 35.688480, 36.183079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416632, 35.529972, 36.026638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054669, 0.757103, -0.651004,
		0.554076, -0.519388, -0.650566,
		-0.830669, -0.396271, -0.391098,
		25.167431, 35.411091, 35.909309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099228, 35.623680, 36.832874>,  <25.748899, 35.688480, 36.183079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099228, 35.623680, 36.832874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020700, 35.346874, 36.555000>,  <25.973585, 35.180790, 36.388275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.020700, 35.346874, 36.555000>,  <26.099228, 35.623680, 36.832874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020700, 35.346874, 36.555000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889337, -0.424040, 0.171082,
		-0.412963, -0.584219, 0.698677,
		-0.196318, -0.692010, -0.694681,
		25.961805, 35.139271, 36.346596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151922, 34.971096, 37.166348>,  <26.099228, 35.623680, 36.832874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151922, 34.971096, 37.166348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265532, 34.943825, 36.783791>,  <26.333696, 34.927464, 36.554256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265532, 34.943825, 36.783791>,  <26.151922, 34.971096, 37.166348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265532, 34.943825, 36.783791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789950, -0.548693, 0.273707,
		-0.543425, -0.833239, -0.101987,
		0.284023, -0.068174, -0.956391,
		26.350739, 34.923370, 36.496872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.157316, 34.269150, 36.888340>,  <26.151922, 34.971096, 37.166348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.157316, 34.269150, 36.888340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426769, 34.499912, 36.703560>,  <26.588442, 34.638371, 36.592693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426769, 34.499912, 36.703560>,  <26.157316, 34.269150, 36.888340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426769, 34.499912, 36.703560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738115, -0.556832, 0.380951,
		-0.037457, -0.597594, -0.800923,
		0.673634, 0.576904, -0.461951,
		26.628859, 34.672985, 36.564976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.632410, 33.797199, 36.534531>,  <26.157316, 34.269150, 36.888340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.632410, 33.797199, 36.534531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831038, 34.142677, 36.569042>,  <26.950214, 34.349964, 36.589748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.831038, 34.142677, 36.569042>,  <26.632410, 33.797199, 36.534531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831038, 34.142677, 36.569042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706220, -0.459807, 0.538359,
		0.504652, -0.206400, -0.838287,
		0.496567, 0.863699, 0.086279,
		26.980007, 34.401787, 36.594925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289906, 33.780510, 36.214886>,  <26.632410, 33.797199, 36.534531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289906, 33.780510, 36.214886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332714, 34.080154, 36.476383>,  <27.358398, 34.259941, 36.633282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332714, 34.080154, 36.476383>,  <27.289906, 33.780510, 36.214886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332714, 34.080154, 36.476383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730570, -0.505239, 0.459348,
		0.674399, 0.428443, -0.601350,
		0.107021, 0.749113, 0.653741,
		27.364820, 34.304890, 36.672504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001776, 33.909660, 36.269611>,  <27.289906, 33.780510, 36.214886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001776, 33.909660, 36.269611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875151, 34.100647, 36.597469>,  <27.799175, 34.215237, 36.794186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875151, 34.100647, 36.597469>,  <28.001776, 33.909660, 36.269611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875151, 34.100647, 36.597469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738692, -0.417992, 0.528788,
		0.595082, 0.772858, -0.220380,
		-0.316561, 0.477465, 0.819644,
		27.780182, 34.243885, 36.843361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664747, 34.061008, 36.715168>,  <28.001776, 33.909660, 36.269611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664747, 34.061008, 36.715168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346449, 34.086334, 36.956093>,  <28.155470, 34.101528, 37.100647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.346449, 34.086334, 36.956093>,  <28.664747, 34.061008, 36.715168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346449, 34.086334, 36.956093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578872, -0.212840, 0.787151,
		0.178034, 0.975034, 0.132715,
		-0.795745, 0.063315, 0.602313,
		28.107725, 34.105328, 37.136787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913483, 33.566517, 37.086617>,  <28.664747, 34.061008, 36.715168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913483, 33.566517, 37.086617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965054, 33.759167, 37.433353>,  <28.995996, 33.874756, 37.641396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965054, 33.759167, 37.433353>,  <28.913483, 33.566517, 37.086617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965054, 33.759167, 37.433353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873947, 0.468262, -0.130183,
		-0.468609, -0.740791, 0.481284,
		0.128928, 0.481621, 0.866844,
		29.003733, 33.903652, 37.693405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443409, 33.353741, 37.615425>,  <28.913483, 33.566517, 37.086617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443409, 33.353741, 37.615425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524590, 33.743107, 37.657898>,  <28.573298, 33.976727, 37.683380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524590, 33.743107, 37.657898>,  <28.443409, 33.353741, 37.615425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524590, 33.743107, 37.657898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978004, 0.206845, -0.026910,
		-0.048158, -0.098383, 0.993983,
		0.202953, 0.973415, 0.106180,
		28.585476, 34.035130, 37.689751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037462, 33.695686, 38.198513>,  <28.443409, 33.353741, 37.615425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037462, 33.695686, 38.198513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119484, 33.957069, 37.907047>,  <28.168697, 34.113899, 37.732170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119484, 33.957069, 37.907047>,  <28.037462, 33.695686, 38.198513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119484, 33.957069, 37.907047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963314, 0.266444, -0.032141,
		0.173144, 0.708519, 0.684121,
		0.205053, 0.653459, -0.728660,
		28.181000, 34.153107, 37.688450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472986, 34.205887, 38.276535>,  <28.037462, 33.695686, 38.198513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472986, 34.205887, 38.276535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647381, 34.221920, 37.916912>,  <27.752018, 34.231541, 37.701138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647381, 34.221920, 37.916912>,  <27.472986, 34.205887, 38.276535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647381, 34.221920, 37.916912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739039, 0.586023, -0.332263,
		0.513552, 0.809303, 0.285119,
		0.435988, 0.040080, -0.899060,
		27.778177, 34.233944, 37.647194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291491, 34.796124, 37.900185>,  <27.472986, 34.205887, 38.276535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291491, 34.796124, 37.900185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441071, 34.649590, 37.559372>,  <27.530819, 34.561668, 37.354885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441071, 34.649590, 37.559372>,  <27.291491, 34.796124, 37.900185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441071, 34.649590, 37.559372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602051, 0.602924, -0.523467,
		0.705475, 0.708718, 0.004912,
		0.373952, -0.366336, -0.852032,
		27.553257, 34.539688, 37.303761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409498, 35.341515, 37.507320>,  <27.291491, 34.796124, 37.900185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.409498, 35.341515, 37.507320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392397, 35.037796, 37.247585>,  <27.382135, 34.855564, 37.091743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392397, 35.037796, 37.247585>,  <27.409498, 35.341515, 37.507320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392397, 35.037796, 37.247585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499433, 0.579140, -0.644332,
		0.865297, 0.296751, -0.403980,
		-0.042754, -0.759300, -0.649335,
		27.379570, 34.810005, 37.052784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592634, 35.587265, 36.830376>,  <27.409498, 35.341515, 37.507320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592634, 35.587265, 36.830376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401445, 35.243690, 36.756878>,  <27.286732, 35.037544, 36.712780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401445, 35.243690, 36.756878>,  <27.592634, 35.587265, 36.830376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401445, 35.243690, 36.756878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529084, 0.448516, -0.720349,
		0.701150, -0.247090, -0.668830,
		-0.477973, -0.858941, -0.183746,
		27.258053, 34.986008, 36.701756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509295, 35.497890, 36.104988>,  <27.592634, 35.587265, 36.830376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509295, 35.497890, 36.104988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234888, 35.236507, 36.232979>,  <27.070244, 35.079678, 36.309772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234888, 35.236507, 36.232979>,  <27.509295, 35.497890, 36.104988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234888, 35.236507, 36.232979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667836, 0.390988, -0.633343,
		0.288754, -0.648173, -0.704623,
		-0.686015, -0.653453, 0.319974,
		27.029083, 35.040470, 36.328972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994007, 35.048321, 35.838398>,  <27.509295, 35.497890, 36.104988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994007, 35.048321, 35.838398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084751, 35.182793, 35.472771>,  <27.139196, 35.263477, 35.253395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084751, 35.182793, 35.472771>,  <26.994007, 35.048321, 35.838398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084751, 35.182793, 35.472771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913198, 0.252805, 0.319622,
		0.338532, -0.907232, -0.249652,
		0.226858, 0.336184, -0.914065,
		27.152809, 35.283649, 35.198551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693531, 34.862877, 35.502483>,  <26.994007, 35.048321, 35.838398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693531, 34.862877, 35.502483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609364, 35.232311, 35.374283>,  <27.558863, 35.453972, 35.297363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609364, 35.232311, 35.374283>,  <27.693531, 34.862877, 35.502483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609364, 35.232311, 35.374283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854986, 0.332823, 0.397779,
		0.474051, -0.190321, -0.859682,
		-0.210417, 0.923584, -0.320497,
		27.546238, 35.509388, 35.278133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160961, 35.112469, 35.040569>,  <27.693531, 34.862877, 35.502483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160961, 35.112469, 35.040569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015562, 35.402935, 35.273998>,  <27.928322, 35.577213, 35.414055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015562, 35.402935, 35.273998>,  <28.160961, 35.112469, 35.040569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015562, 35.402935, 35.273998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921525, 0.188421, 0.339543,
		0.136607, 0.661197, -0.737669,
		-0.363497, 0.726165, 0.583570,
		27.906513, 35.620785, 35.449070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476513, 35.846157, 35.072468>,  <28.160961, 35.112469, 35.040569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476513, 35.846157, 35.072468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351133, 35.700203, 35.423149>,  <28.275906, 35.612629, 35.633556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351133, 35.700203, 35.423149>,  <28.476513, 35.846157, 35.072468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351133, 35.700203, 35.423149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912978, 0.138137, 0.383912,
		-0.261191, 0.920746, 0.289838,
		-0.313448, -0.364890, 0.876701,
		28.257099, 35.590736, 35.686161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883196, 36.218105, 35.549358>,  <28.476513, 35.846157, 35.072468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883196, 36.218105, 35.549358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763279, 35.877235, 35.720905>,  <28.691328, 35.672714, 35.823833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.763279, 35.877235, 35.720905>,  <28.883196, 36.218105, 35.549358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763279, 35.877235, 35.720905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867958, -0.057060, 0.493350,
		-0.395948, 0.520141, 0.756755,
		-0.299792, -0.852172, 0.428868,
		28.673342, 35.621582, 35.849567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143118, 36.198345, 36.250362>,  <28.883196, 36.218105, 35.549358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143118, 36.198345, 36.250362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109068, 35.812988, 36.148678>,  <29.088638, 35.581772, 36.087666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.109068, 35.812988, 36.148678>,  <29.143118, 36.198345, 36.250362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109068, 35.812988, 36.148678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878937, -0.192773, 0.436243,
		-0.469279, -0.186303, 0.863173,
		-0.085123, -0.963395, -0.254213,
		29.083530, 35.523972, 36.072414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249964, 35.796719, 36.885529>,  <29.143118, 36.198345, 36.250362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249964, 35.796719, 36.885529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.325760, 35.571354, 36.563869>,  <29.371237, 35.436134, 36.370872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.325760, 35.571354, 36.563869>,  <29.249964, 35.796719, 36.885529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325760, 35.571354, 36.563869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945643, -0.115733, 0.303915,
		-0.264297, -0.818028, 0.510859,
		0.189488, -0.563414, -0.804151,
		29.382607, 35.402328, 36.322624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505209, 35.028328, 37.120594>,  <29.249964, 35.796719, 36.885529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505209, 35.028328, 37.120594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658012, 35.162315, 36.776070>,  <29.749695, 35.242706, 36.569355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658012, 35.162315, 36.776070>,  <29.505209, 35.028328, 37.120594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658012, 35.162315, 36.776070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924127, -0.130845, 0.358982,
		0.007549, -0.933100, -0.359538,
		0.382010, 0.334969, -0.861315,
		29.772615, 35.262806, 36.517673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951262, 34.572651, 36.749611>,  <29.505209, 35.028328, 37.120594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951262, 34.572651, 36.749611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.056667, 34.955410, 36.700787>,  <30.119911, 35.185066, 36.671490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.056667, 34.955410, 36.700787>,  <29.951262, 34.572651, 36.749611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056667, 34.955410, 36.700787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916151, -0.208633, 0.342256,
		0.302039, -0.202020, -0.931644,
		0.263514, 0.956901, -0.122065,
		30.135721, 35.242481, 36.664165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447849, 34.572060, 36.219742>,  <29.951262, 34.572651, 36.749611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447849, 34.572060, 36.219742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520342, 34.869411, 36.477283>,  <30.563837, 35.047821, 36.631809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520342, 34.869411, 36.477283>,  <30.447849, 34.572060, 36.219742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520342, 34.869411, 36.477283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939202, -0.324980, 0.110850,
		0.291642, 0.584615, -0.757080,
		0.181231, 0.743379, 0.643850,
		30.574711, 35.092426, 36.670437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040066, 34.919277, 35.964626>,  <30.447849, 34.572060, 36.219742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040066, 34.919277, 35.964626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990194, 34.922470, 36.361492>,  <30.960272, 34.924385, 36.599613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990194, 34.922470, 36.361492>,  <31.040066, 34.919277, 35.964626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990194, 34.922470, 36.361492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880368, -0.460304, 0.114333,
		0.457610, 0.887725, 0.050365,
		-0.124680, 0.007981, 0.992165,
		30.952791, 34.924866, 36.659142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879730, 35.049637, 35.669609>,  <31.040066, 34.919277, 35.964626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879730, 35.049637, 35.669609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925716, 34.706192, 35.469780>,  <31.953308, 34.500126, 35.349884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925716, 34.706192, 35.469780>,  <31.879730, 35.049637, 35.669609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925716, 34.706192, 35.469780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960479, -0.032259, 0.276474,
		-0.253499, -0.511613, 0.820969,
		0.114964, -0.858610, -0.499572,
		31.960205, 34.448608, 35.319908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107151, 34.447613, 36.142906>,  <31.879730, 35.049637, 35.669609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107151, 34.447613, 36.142906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226433, 34.394787, 35.764778>,  <32.298000, 34.363091, 35.537899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226433, 34.394787, 35.764778>,  <32.107151, 34.447613, 36.142906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226433, 34.394787, 35.764778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937763, 0.225204, 0.264354,
		0.177980, -0.965320, 0.190998,
		0.298200, -0.132061, -0.945324,
		32.315891, 34.355167, 35.481182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678905, 33.928013, 36.213413>,  <32.107151, 34.447613, 36.142906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678905, 33.928013, 36.213413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662209, 34.207230, 35.927475>,  <32.652191, 34.374760, 35.755913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662209, 34.207230, 35.927475>,  <32.678905, 33.928013, 36.213413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662209, 34.207230, 35.927475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834794, 0.417480, 0.358927,
		0.548977, -0.581764, -0.600145,
		-0.041738, 0.698041, -0.714841,
		32.649689, 34.416641, 35.713024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246998, 33.950432, 35.932594>,  <32.678905, 33.928013, 36.213413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246998, 33.950432, 35.932594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083221, 34.314117, 35.902431>,  <32.984955, 34.532330, 35.884335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083221, 34.314117, 35.902431>,  <33.246998, 33.950432, 35.932594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083221, 34.314117, 35.902431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870223, 0.414028, 0.267005,
		0.273985, 0.043703, -0.960741,
		-0.409443, 0.909214, -0.075406,
		32.960388, 34.586884, 35.879810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721958, 34.182323, 36.422825>,  <33.246998, 33.950432, 35.932594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721958, 34.182323, 36.422825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958294, 34.418789, 36.203213>,  <34.100094, 34.560669, 36.071445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958294, 34.418789, 36.203213>,  <33.721958, 34.182323, 36.422825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958294, 34.418789, 36.203213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779541, 0.242944, -0.577316,
		-0.207906, 0.769092, 0.604378,
		0.590839, 0.591165, -0.549029,
		34.135544, 34.596138, 36.038506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581387, 34.878490, 36.412537>,  <33.721958, 34.182323, 36.422825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581387, 34.878490, 36.412537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738010, 34.749603, 36.067780>,  <33.831985, 34.672272, 35.860924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738010, 34.749603, 36.067780>,  <33.581387, 34.878490, 36.412537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738010, 34.749603, 36.067780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917876, -0.070889, -0.390486,
		0.064723, 0.944007, -0.323514,
		0.391555, -0.322219, -0.861893,
		33.855476, 34.652939, 35.809212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195343, 35.183586, 35.885506>,  <33.581387, 34.878490, 36.412537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195343, 35.183586, 35.885506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337395, 34.846996, 35.722630>,  <33.422626, 34.645042, 35.624905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337395, 34.846996, 35.722630>,  <33.195343, 35.183586, 35.885506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337395, 34.846996, 35.722630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828296, -0.081306, -0.554360,
		0.433373, 0.534144, -0.725863,
		0.355125, -0.841475, -0.407194,
		33.443932, 34.594555, 35.600471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222836, 35.166641, 35.070770>,  <33.195343, 35.183586, 35.885506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222836, 35.166641, 35.070770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188030, 34.784382, 35.183319>,  <33.167149, 34.555027, 35.250847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188030, 34.784382, 35.183319>,  <33.222836, 35.166641, 35.070770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188030, 34.784382, 35.183319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742164, -0.126229, -0.658224,
		0.664546, -0.266097, -0.698263,
		-0.087011, -0.955646, 0.281373,
		33.161926, 34.497688, 35.267731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109077, 34.660873, 34.425861>,  <33.222836, 35.166641, 35.070770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109077, 34.660873, 34.425861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968872, 34.488461, 34.758453>,  <32.884750, 34.385014, 34.958008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968872, 34.488461, 34.758453>,  <33.109077, 34.660873, 34.425861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968872, 34.488461, 34.758453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862763, -0.196820, -0.465727,
		0.364393, -0.880611, -0.302889,
		-0.350509, -0.431029, 0.831479,
		32.863720, 34.359150, 35.007896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729748, 34.061741, 34.234028>,  <33.109077, 34.660873, 34.425861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729748, 34.061741, 34.234028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600388, 34.173542, 34.595646>,  <32.522770, 34.240623, 34.812614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600388, 34.173542, 34.595646>,  <32.729748, 34.061741, 34.234028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600388, 34.173542, 34.595646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945440, -0.135268, -0.296389,
		0.039446, -0.950568, 0.308000,
		-0.323401, 0.279504, 0.904041,
		32.503368, 34.257393, 34.866859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345612, 33.458961, 34.610386>,  <32.729748, 34.061741, 34.234028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345612, 33.458961, 34.610386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207512, 33.790276, 34.786903>,  <32.124653, 33.989063, 34.892815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207512, 33.790276, 34.786903>,  <32.345612, 33.458961, 34.610386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207512, 33.790276, 34.786903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920310, -0.390947, 0.013781,
		0.183938, -0.401371, 0.897256,
		-0.345248, 0.828288, 0.441296,
		32.103939, 34.038761, 34.919292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000175, 33.236923, 35.219250>,  <32.345612, 33.458961, 34.610386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000175, 33.236923, 35.219250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852036, 33.587341, 35.095711>,  <31.763151, 33.797592, 35.021587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852036, 33.587341, 35.095711>,  <32.000175, 33.236923, 35.219250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852036, 33.587341, 35.095711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928223, -0.336404, 0.158854,
		0.035265, 0.345512, 0.937751,
		-0.370349, 0.876044, -0.308849,
		31.740931, 33.850155, 35.003056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524841, 33.636589, 35.581829>,  <32.000175, 33.236923, 35.219250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524841, 33.636589, 35.581829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763268, 33.744076, 35.279175>,  <32.906322, 33.808567, 35.097584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763268, 33.744076, 35.279175>,  <32.524841, 33.636589, 35.581829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763268, 33.744076, 35.279175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752903, 0.140381, 0.642985,
		0.278996, -0.952936, -0.118638,
		0.596069, 0.268713, -0.756634,
		32.942089, 33.824688, 35.052185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179371, 33.290237, 35.558083>,  <32.524841, 33.636589, 35.581829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179371, 33.290237, 35.558083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218868, 33.662903, 35.418224>,  <33.242569, 33.886501, 35.334309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218868, 33.662903, 35.418224>,  <33.179371, 33.290237, 35.558083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218868, 33.662903, 35.418224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809505, 0.129140, 0.572733,
		0.578749, -0.339592, -0.741436,
		0.098746, 0.931665, -0.349642,
		33.248493, 33.942402, 35.313332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865227, 33.397579, 35.345303>,  <33.179371, 33.290237, 35.558083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865227, 33.397579, 35.345303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716236, 33.761547, 35.418308>,  <33.626842, 33.979927, 35.462112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716236, 33.761547, 35.418308>,  <33.865227, 33.397579, 35.345303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716236, 33.761547, 35.418308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838972, 0.246083, 0.485355,
		0.396718, 0.333911, -0.855055,
		-0.372480, 0.909915, 0.182517,
		33.604492, 34.034523, 35.473064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282463, 34.063427, 35.119049>,  <33.865227, 33.397579, 35.345303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282463, 34.063427, 35.119049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078148, 34.127666, 35.456879>,  <33.955559, 34.166210, 35.659576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.078148, 34.127666, 35.456879>,  <34.282463, 34.063427, 35.119049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078148, 34.127666, 35.456879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816874, 0.396881, 0.418573,
		-0.267972, 0.903711, -0.333911,
		-0.510792, 0.160597, 0.844571,
		33.924911, 34.175846, 35.710251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994373, 34.021698, 35.436626>,  <34.282463, 34.063427, 35.119049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994373, 34.021698, 35.436626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110786, 33.710220, 35.214298>,  <35.180634, 33.523335, 35.080902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110786, 33.710220, 35.214298>,  <34.994373, 34.021698, 35.436626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110786, 33.710220, 35.214298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444063, -0.404644, 0.799420,
		-0.847413, -0.479473, 0.228027,
		0.291031, -0.778697, -0.555817,
		35.198097, 33.476612, 35.047554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890446, 33.300415, 35.863148>,  <34.994373, 34.021698, 35.436626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890446, 33.300415, 35.863148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176369, 33.299858, 35.583420>,  <35.347923, 33.299526, 35.415585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176369, 33.299858, 35.583420>,  <34.890446, 33.300415, 35.863148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176369, 33.299858, 35.583420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664578, -0.309923, 0.679915,
		-0.217680, -0.950760, -0.220612,
		0.714809, -0.001390, -0.699318,
		35.390812, 33.299442, 35.373623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287540, 32.765862, 36.045601>,  <34.890446, 33.300415, 35.863148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287540, 32.765862, 36.045601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556808, 32.940182, 35.806629>,  <35.718369, 33.044773, 35.663246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556808, 32.940182, 35.806629>,  <35.287540, 32.765862, 36.045601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556808, 32.940182, 35.806629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728778, -0.253957, 0.635915,
		0.125408, -0.863474, -0.488555,
		0.673168, 0.435797, -0.597433,
		35.758759, 33.070919, 35.627399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829700, 32.230534, 35.770138>,  <35.287540, 32.765862, 36.045601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829700, 32.230534, 35.770138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988228, 32.597775, 35.771797>,  <36.083344, 32.818119, 35.772793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988228, 32.597775, 35.771797>,  <35.829700, 32.230534, 35.770138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988228, 32.597775, 35.771797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752505, -0.327414, 0.571434,
		0.525995, -0.223344, -0.820638,
		0.396315, 0.918105, 0.004151,
		36.107121, 32.873207, 35.773041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574272, 32.222790, 35.610588>,  <35.829700, 32.230534, 35.770138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574272, 32.222790, 35.610588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472588, 32.533077, 35.841633>,  <36.411575, 32.719250, 35.980259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472588, 32.533077, 35.841633>,  <36.574272, 32.222790, 35.610588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472588, 32.533077, 35.841633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854944, -0.098976, 0.509191,
		0.452159, 0.623268, -0.638036,
		-0.254212, 0.775720, 0.577611,
		36.396324, 32.765793, 36.014915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142696, 32.343922, 36.086075>,  <36.574272, 32.222790, 35.610588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142696, 32.343922, 36.086075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900120, 32.627964, 36.229168>,  <36.754574, 32.798389, 36.315022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900120, 32.627964, 36.229168>,  <37.142696, 32.343922, 36.086075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900120, 32.627964, 36.229168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662094, 0.201857, 0.721723,
		0.440293, 0.674535, -0.592575,
		-0.606443, 0.710110, 0.357729,
		36.718185, 32.840996, 36.336487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459702, 33.053349, 36.061298>,  <37.142696, 32.343922, 36.086075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459702, 33.053349, 36.061298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181404, 33.060966, 36.348515>,  <37.014427, 33.065536, 36.520844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181404, 33.060966, 36.348515>,  <37.459702, 33.053349, 36.061298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181404, 33.060966, 36.348515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712259, 0.147563, 0.686230,
		-0.092889, 0.988869, -0.116229,
		-0.695743, 0.019042, 0.718038,
		36.972683, 33.066677, 36.563927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554920, 33.605522, 36.565712>,  <37.459702, 33.053349, 36.061298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554920, 33.605522, 36.565712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373455, 33.310467, 36.765743>,  <37.264576, 33.133434, 36.885761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373455, 33.310467, 36.765743>,  <37.554920, 33.605522, 36.565712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373455, 33.310467, 36.765743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704208, 0.047164, 0.708425,
		-0.546148, 0.673546, 0.498055,
		-0.453667, -0.737639, 0.500075,
		37.237354, 33.089176, 36.915768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418198, 33.806763, 37.373486>,  <37.554920, 33.605522, 36.565712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418198, 33.806763, 37.373486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466007, 33.415642, 37.304657>,  <37.494694, 33.180969, 37.263359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466007, 33.415642, 37.304657>,  <37.418198, 33.806763, 37.373486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466007, 33.415642, 37.304657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719638, -0.034071, 0.693513,
		-0.683985, -0.206721, 0.699594,
		0.119528, -0.977807, -0.172068,
		37.501865, 33.122299, 37.253036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363876, 33.464111, 37.930489>,  <37.418198, 33.806763, 37.373486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363876, 33.464111, 37.930489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610989, 33.243008, 37.706776>,  <37.759258, 33.110344, 37.572548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610989, 33.243008, 37.706776>,  <37.363876, 33.464111, 37.930489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610989, 33.243008, 37.706776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671864, 0.001487, 0.740673,
		-0.408586, -0.833336, 0.372301,
		0.617783, -0.552764, -0.559281,
		37.796322, 33.077179, 37.538990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308769, 32.758137, 38.239964>,  <37.363876, 33.464111, 37.930489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308769, 32.758137, 38.239964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029903, 33.036072, 38.169346>,  <36.862583, 33.202831, 38.126976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029903, 33.036072, 38.169346>,  <37.308769, 32.758137, 38.239964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029903, 33.036072, 38.169346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011860, -0.257407, -0.966230,
		-0.716815, -0.671525, 0.187695,
		-0.697162, 0.694835, -0.176549,
		36.820755, 33.244522, 38.116383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685478, 32.583004, 37.803806>,  <37.308769, 32.758137, 38.239964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685478, 32.583004, 37.803806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709370, 32.974159, 37.723640>,  <36.723705, 33.208851, 37.675541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709370, 32.974159, 37.723640>,  <36.685478, 32.583004, 37.803806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709370, 32.974159, 37.723640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178370, -0.187088, -0.966014,
		-0.982149, 0.093444, 0.163252,
		0.059725, 0.977889, -0.200416,
		36.727287, 33.267525, 37.663517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047466, 32.788460, 37.580822>,  <36.685478, 32.583004, 37.803806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047466, 32.788460, 37.580822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358829, 32.998863, 37.443768>,  <36.545647, 33.125107, 37.361534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358829, 32.998863, 37.443768>,  <36.047466, 32.788460, 37.580822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358829, 32.998863, 37.443768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303578, -0.162323, -0.938878,
		-0.549477, 0.834844, 0.033332,
		0.778406, 0.526011, -0.342633,
		36.592350, 33.156666, 37.340977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772514, 33.307278, 37.116726>,  <36.047466, 32.788460, 37.580822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772514, 33.307278, 37.116726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150139, 33.278164, 36.988075>,  <36.376713, 33.260696, 36.910885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150139, 33.278164, 36.988075>,  <35.772514, 33.307278, 37.116726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150139, 33.278164, 36.988075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313822, 0.101289, -0.944064,
		0.101289, 0.992191, 0.072783,
		0.944064, -0.072783, -0.321631,
		36.433357, 33.256329, 36.891586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873783, 33.725063, 36.609013>,  <35.772514, 33.307278, 37.116726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873783, 33.725063, 36.609013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183792, 33.483025, 36.536129>,  <36.369797, 33.337803, 36.492401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183792, 33.483025, 36.536129>,  <35.873783, 33.725063, 36.609013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183792, 33.483025, 36.536129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190653, 0.051002, -0.980332,
		0.602487, 0.794518, -0.075836,
		0.775023, -0.605095, -0.182206,
		36.416298, 33.301495, 36.481468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138950, 34.084618, 36.141026>,  <35.873783, 33.725063, 36.609013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138950, 34.084618, 36.141026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305893, 33.724003, 36.095333>,  <36.406059, 33.507633, 36.067917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305893, 33.724003, 36.095333>,  <36.138950, 34.084618, 36.141026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305893, 33.724003, 36.095333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261052, 0.001458, -0.965323,
		0.870441, 0.432700, -0.234739,
		0.417353, -0.901537, -0.114227,
		36.431099, 33.453541, 36.061066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614563, 34.036167, 35.522488>,  <36.138950, 34.084618, 36.141026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614563, 34.036167, 35.522488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468998, 33.670189, 35.592278>,  <36.381657, 33.450603, 35.634151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468998, 33.670189, 35.592278>,  <36.614563, 34.036167, 35.522488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468998, 33.670189, 35.592278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360426, -0.034401, -0.932153,
		0.858870, -0.402112, -0.317250,
		-0.363917, -0.914944, 0.174477,
		36.359821, 33.395706, 35.644619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604713, 33.589462, 34.829643>,  <36.614563, 34.036167, 35.522488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604713, 33.589462, 34.829643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329250, 33.432213, 35.073349>,  <36.163971, 33.337864, 35.219574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329250, 33.432213, 35.073349>,  <36.604713, 33.589462, 34.829643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329250, 33.432213, 35.073349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653157, -0.028540, -0.756685,
		0.314861, -0.919042, -0.237119,
		-0.688658, -0.393126, 0.609264,
		36.122654, 33.314274, 35.256130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262047, 33.057014, 34.411465>,  <36.604713, 33.589462, 34.829643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262047, 33.057014, 34.411465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989597, 33.103386, 34.700638>,  <35.826130, 33.131210, 34.874142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989597, 33.103386, 34.700638>,  <36.262047, 33.057014, 34.411465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989597, 33.103386, 34.700638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689565, 0.230336, -0.686619,
		-0.246120, -0.966180, -0.076943,
		-0.681120, 0.115933, 0.722935,
		35.785263, 33.138165, 34.917519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732269, 32.672729, 34.196400>,  <36.262047, 33.057014, 34.411465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732269, 32.672729, 34.196400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588764, 32.949417, 34.447098>,  <35.502659, 33.115429, 34.597515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588764, 32.949417, 34.447098>,  <35.732269, 32.672729, 34.196400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588764, 32.949417, 34.447098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784785, 0.139998, -0.603749,
		-0.505369, -0.708464, 0.492627,
		-0.358767, 0.691723, 0.626742,
		35.481133, 33.156933, 34.635120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015217, 32.485954, 34.212009>,  <35.732269, 32.672729, 34.196400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015217, 32.485954, 34.212009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049526, 32.868782, 34.322762>,  <35.070110, 33.098480, 34.389214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049526, 32.868782, 34.322762>,  <35.015217, 32.485954, 34.212009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049526, 32.868782, 34.322762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754988, 0.243773, -0.608743,
		-0.650105, -0.156827, 0.743484,
		0.085773, 0.957068, 0.276881,
		35.075256, 33.155903, 34.405827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385353, 32.792706, 34.107529>,  <35.015217, 32.485954, 34.212009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385353, 32.792706, 34.107529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611946, 33.122284, 34.113438>,  <34.747902, 33.320030, 34.116982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611946, 33.122284, 34.113438>,  <34.385353, 32.792706, 34.107529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611946, 33.122284, 34.113438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542789, 0.386544, -0.745629,
		-0.620065, 0.414368, 0.666197,
		0.566479, 0.823943, 0.014768,
		34.781891, 33.369469, 34.117867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927010, 33.399738, 33.918285>,  <34.385353, 32.792706, 34.107529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927010, 33.399738, 33.918285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302898, 33.516987, 33.847847>,  <34.528431, 33.587337, 33.805584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302898, 33.516987, 33.847847>,  <33.927010, 33.399738, 33.918285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302898, 33.516987, 33.847847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295750, 0.438185, -0.848838,
		-0.171647, 0.849750, 0.498461,
		0.939718, 0.293120, -0.176100,
		34.584812, 33.604923, 33.795017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794571, 33.975517, 33.627102>,  <33.927010, 33.399738, 33.918285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794571, 33.975517, 33.627102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181824, 33.940281, 33.533333>,  <34.414177, 33.919140, 33.477074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.181824, 33.940281, 33.533333>,  <33.794571, 33.975517, 33.627102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181824, 33.940281, 33.533333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179087, 0.410770, -0.893977,
		0.175040, 0.907474, 0.381906,
		0.968137, -0.088087, -0.234418,
		34.472263, 33.913857, 33.463009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057201, 34.621456, 33.386028>,  <33.794571, 33.975517, 33.627102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057201, 34.621456, 33.386028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301517, 34.359760, 33.207634>,  <34.448109, 34.202744, 33.100597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.301517, 34.359760, 33.207634>,  <34.057201, 34.621456, 33.386028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301517, 34.359760, 33.207634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145740, 0.460740, -0.875487,
		0.778261, 0.599740, 0.186069,
		0.610795, -0.654240, -0.445982,
		34.484756, 34.163486, 33.073841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520832, 34.978001, 32.978035>,  <34.057201, 34.621456, 33.386028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520832, 34.978001, 32.978035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566559, 34.615788, 32.814598>,  <34.593994, 34.398460, 32.716537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566559, 34.615788, 32.814598>,  <34.520832, 34.978001, 32.978035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566559, 34.615788, 32.814598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075277, 0.402211, -0.912447,
		0.990589, 0.135062, -0.022187,
		0.114313, -0.905530, -0.408593,
		34.600853, 34.344128, 32.692020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984634, 35.126438, 32.416817>,  <34.520832, 34.978001, 32.978035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984634, 35.126438, 32.416817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815075, 34.772915, 32.337620>,  <34.713341, 34.560802, 32.290100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.815075, 34.772915, 32.337620>,  <34.984634, 35.126438, 32.416817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815075, 34.772915, 32.337620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015543, 0.225671, -0.974079,
		0.905577, -0.409832, -0.109398,
		-0.423897, -0.883805, -0.197993,
		34.687904, 34.507774, 32.278221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323048, 34.984131, 31.863932>,  <34.984634, 35.126438, 32.416817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323048, 34.984131, 31.863932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997124, 34.752319, 31.857891>,  <34.801571, 34.613232, 31.854267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997124, 34.752319, 31.857891>,  <35.323048, 34.984131, 31.863932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997124, 34.752319, 31.857891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120623, 0.194960, -0.973366,
		0.567040, -0.791287, -0.228760,
		-0.814811, -0.579531, -0.015103,
		34.752682, 34.578461, 31.853361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486065, 34.466011, 31.390678>,  <35.323048, 34.984131, 31.863932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486065, 34.466011, 31.390678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090488, 34.513592, 31.426100>,  <34.853142, 34.542141, 31.447351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090488, 34.513592, 31.426100>,  <35.486065, 34.466011, 31.390678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090488, 34.513592, 31.426100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037975, 0.374095, -0.926612,
		-0.143345, -0.919730, -0.365442,
		-0.988944, 0.118948, 0.088552,
		34.793804, 34.549274, 31.452665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259899, 34.455151, 30.770933>,  <35.486065, 34.466011, 31.390678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259899, 34.455151, 30.770933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926170, 34.607986, 30.929886>,  <34.725933, 34.699688, 31.025257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926170, 34.607986, 30.929886>,  <35.259899, 34.455151, 30.770933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926170, 34.607986, 30.929886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211178, 0.444333, -0.870616,
		-0.509225, -0.810292, -0.290027,
		-0.834322, 0.382092, 0.397382,
		34.675873, 34.722614, 31.049101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812477, 34.322575, 30.243324>,  <35.259899, 34.455151, 30.770933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812477, 34.322575, 30.243324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633808, 34.609035, 30.457840>,  <34.526608, 34.780914, 30.586550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633808, 34.609035, 30.457840>,  <34.812477, 34.322575, 30.243324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633808, 34.609035, 30.457840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282027, 0.456144, -0.844034,
		-0.849083, -0.528256, -0.001773,
		-0.446675, 0.716155, 0.536287,
		34.499805, 34.823883, 30.618727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088802, 34.321468, 30.059151>,  <34.812477, 34.322575, 30.243324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088802, 34.321468, 30.059151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166386, 34.690086, 30.193693>,  <34.212936, 34.911259, 30.274418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166386, 34.690086, 30.193693>,  <34.088802, 34.321468, 30.059151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166386, 34.690086, 30.193693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433456, 0.388087, -0.813329,
		-0.880055, 0.011954, 0.474721,
		0.193955, 0.921545, 0.336356,
		34.224571, 34.966549, 30.294600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579262, 34.745247, 29.716709>,  <34.088802, 34.321468, 30.059151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579262, 34.745247, 29.716709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842506, 35.012333, 29.855875>,  <34.000454, 35.172585, 29.939375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842506, 35.012333, 29.855875>,  <33.579262, 34.745247, 29.716709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842506, 35.012333, 29.855875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194203, 0.596989, -0.778389,
		-0.727446, 0.444699, 0.522557,
		0.658109, 0.667718, 0.347915,
		34.039940, 35.212646, 29.960249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169304, 35.311073, 29.728876>,  <33.579262, 34.745247, 29.716709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169304, 35.311073, 29.728876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550293, 35.432339, 29.716940>,  <33.778885, 35.505096, 29.709778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550293, 35.432339, 29.716940>,  <33.169304, 35.311073, 29.728876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550293, 35.432339, 29.716940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219936, 0.616586, -0.755943,
		-0.210775, 0.726577, 0.653957,
		0.952472, 0.303162, -0.029840,
		33.836033, 35.523289, 29.707989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261574, 36.106842, 29.825115>,  <33.169304, 35.311073, 29.728876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261574, 36.106842, 29.825115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582119, 35.973431, 29.626492>,  <33.774445, 35.893383, 29.507317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582119, 35.973431, 29.626492>,  <33.261574, 36.106842, 29.825115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582119, 35.973431, 29.626492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185679, 0.650419, -0.736531,
		0.568628, 0.682430, 0.459293,
		0.801364, -0.333532, -0.496560,
		33.822529, 35.873371, 29.477524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612808, 36.675850, 29.697586>,  <33.261574, 36.106842, 29.825115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612808, 36.675850, 29.697586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724613, 36.408466, 29.421894>,  <33.791698, 36.248035, 29.256479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.724613, 36.408466, 29.421894>,  <33.612808, 36.675850, 29.697586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724613, 36.408466, 29.421894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239599, 0.646571, -0.724250,
		0.929765, 0.367578, 0.020564,
		0.279514, -0.668455, -0.689231,
		33.808468, 36.207932, 29.215124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167637, 36.902435, 29.295477>,  <33.612808, 36.675850, 29.697586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167637, 36.902435, 29.295477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965145, 36.643368, 29.067703>,  <33.843651, 36.487926, 28.931038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965145, 36.643368, 29.067703>,  <34.167637, 36.902435, 29.295477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965145, 36.643368, 29.067703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302811, 0.751742, -0.585823,
		0.807489, -0.124129, -0.576675,
		-0.506229, -0.647669, -0.569436,
		33.813274, 36.449066, 28.896873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195896, 37.236069, 28.632931>,  <34.167637, 36.902435, 29.295477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195896, 37.236069, 28.632931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937775, 36.940632, 28.554897>,  <33.782902, 36.763371, 28.508078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937775, 36.940632, 28.554897>,  <34.195896, 37.236069, 28.632931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937775, 36.940632, 28.554897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401621, 0.545239, -0.735809,
		0.649834, -0.396470, -0.648481,
		-0.645303, -0.738598, -0.195084,
		33.744183, 36.719051, 28.496372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211163, 37.219398, 27.869146>,  <34.195896, 37.236069, 28.632931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211163, 37.219398, 27.869146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877445, 37.023193, 27.969826>,  <33.677216, 36.905472, 28.030233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877445, 37.023193, 27.969826>,  <34.211163, 37.219398, 27.869146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877445, 37.023193, 27.969826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506131, 0.500411, -0.702439,
		0.218601, -0.713434, -0.665752,
		-0.834294, -0.490512, 0.251701,
		33.627159, 36.876041, 28.045336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947685, 36.963860, 27.234415>,  <34.211163, 37.219398, 27.869146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947685, 36.963860, 27.234415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635597, 36.965992, 27.484610>,  <33.448345, 36.967270, 27.634727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635597, 36.965992, 27.484610>,  <33.947685, 36.963860, 27.234415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635597, 36.965992, 27.484610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541519, 0.494748, -0.679692,
		-0.313081, -0.869020, -0.383124,
		-0.780216, 0.005330, 0.625488,
		33.401531, 36.967590, 27.672256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340904, 36.790184, 26.867216>,  <33.947685, 36.963860, 27.234415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340904, 36.790184, 26.867216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219582, 36.989353, 27.192196>,  <33.146790, 37.108856, 27.387184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219582, 36.989353, 27.192196>,  <33.340904, 36.790184, 26.867216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219582, 36.989353, 27.192196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634441, 0.530635, -0.562060,
		-0.710978, -0.685928, 0.154960,
		-0.303306, 0.497925, 0.812451,
		33.128590, 37.138729, 27.435930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714348, 37.100151, 26.635378>,  <33.340904, 36.790184, 26.867216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714348, 37.100151, 26.635378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759426, 37.281311, 26.989141>,  <32.786472, 37.390007, 27.201401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759426, 37.281311, 26.989141>,  <32.714348, 37.100151, 26.635378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759426, 37.281311, 26.989141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591787, 0.745590, -0.306403,
		-0.798178, -0.488854, 0.352042,
		0.112693, 0.452899, 0.884411,
		32.793236, 37.417179, 27.254465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949318, 37.258446, 26.889362>,  <32.714348, 37.100151, 26.635378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949318, 37.258446, 26.889362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249031, 37.493877, 27.010788>,  <32.428860, 37.635136, 27.083643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249031, 37.493877, 27.010788>,  <31.949318, 37.258446, 26.889362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249031, 37.493877, 27.010788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470597, 0.795727, -0.381258,
		-0.465954, 0.142813, 0.873207,
		0.749283, 0.588578, 0.303564,
		32.473816, 37.670452, 27.101858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758989, 37.928131, 27.119146>,  <31.949318, 37.258446, 26.889362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758989, 37.928131, 27.119146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138512, 38.047516, 27.077791>,  <32.366226, 38.119148, 27.052979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138512, 38.047516, 27.077791>,  <31.758989, 37.928131, 27.119146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138512, 38.047516, 27.077791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313422, 0.848985, -0.425431,
		-0.039203, 0.436054, 0.899066,
		0.948805, 0.298465, -0.103387,
		32.423153, 38.137054, 27.046776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765974, 38.696533, 27.208334>,  <31.758989, 37.928131, 27.119146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765974, 38.696533, 27.208334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120914, 38.642132, 27.032101>,  <32.333878, 38.609489, 26.926361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120914, 38.642132, 27.032101>,  <31.765974, 38.696533, 27.208334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120914, 38.642132, 27.032101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166831, 0.796078, -0.581746,
		0.429859, 0.589714, 0.683709,
		0.887349, -0.136005, -0.440584,
		32.387119, 38.601330, 26.899925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976761, 39.325497, 27.192402>,  <31.765974, 38.696533, 27.208334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976761, 39.325497, 27.192402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157272, 39.114689, 26.904348>,  <32.265579, 38.988205, 26.731516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157272, 39.114689, 26.904348>,  <31.976761, 39.325497, 27.192402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157272, 39.114689, 26.904348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149180, 0.751070, -0.643148,
		0.879825, 0.397668, 0.260321,
		0.451279, -0.527023, -0.720135,
		32.292656, 38.956581, 26.688309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538883, 39.682217, 26.920996>,  <31.976761, 39.325497, 27.192402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538883, 39.682217, 26.920996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451950, 39.440559, 26.614328>,  <32.399788, 39.295567, 26.430328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451950, 39.440559, 26.614328>,  <32.538883, 39.682217, 26.920996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451950, 39.440559, 26.614328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188192, 0.796641, -0.574410,
		0.957783, 0.019441, -0.286833,
		-0.217336, -0.604140, -0.766668,
		32.386749, 39.259315, 26.384329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834030, 40.041962, 26.282164>,  <32.538883, 39.682217, 26.920996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834030, 40.041962, 26.282164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573818, 39.770355, 26.146072>,  <32.417690, 39.607391, 26.064419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573818, 39.770355, 26.146072>,  <32.834030, 40.041962, 26.282164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573818, 39.770355, 26.146072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268182, 0.624486, -0.733550,
		0.710557, -0.385953, -0.588345,
		-0.650528, -0.679013, -0.340227,
		32.378658, 39.566650, 26.044004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937298, 39.902424, 25.560194>,  <32.834030, 40.041962, 26.282164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937298, 39.902424, 25.560194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570431, 39.763897, 25.639063>,  <32.350311, 39.680782, 25.686384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570431, 39.763897, 25.639063>,  <32.937298, 39.902424, 25.560194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570431, 39.763897, 25.639063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369157, 0.551947, -0.747715,
		0.150115, -0.758565, -0.634070,
		-0.917163, -0.346314, 0.197174,
		32.295280, 39.660004, 25.698215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734623, 39.592735, 25.032978>,  <32.937298, 39.902424, 25.560194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734623, 39.592735, 25.032978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402676, 39.736027, 25.204090>,  <32.203506, 39.822002, 25.306757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.402676, 39.736027, 25.204090>,  <32.734623, 39.592735, 25.032978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402676, 39.736027, 25.204090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260940, 0.428504, -0.865040,
		-0.493184, -0.829493, -0.262126,
		-0.829867, 0.358225, 0.427780,
		32.153717, 39.843494, 25.332424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267277, 39.433456, 24.606997>,  <32.734623, 39.592735, 25.032978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267277, 39.433456, 24.606997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112625, 39.728153, 24.828890>,  <32.019836, 39.904972, 24.962025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112625, 39.728153, 24.828890>,  <32.267277, 39.433456, 24.606997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112625, 39.728153, 24.828890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339104, 0.445802, -0.828414,
		-0.857630, -0.508397, 0.077475,
		-0.386625, 0.736745, 0.554732,
		31.996637, 39.949177, 24.995310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675150, 39.594906, 24.231222>,  <32.267277, 39.433456, 24.606997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675150, 39.594906, 24.231222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767479, 39.909542, 24.460308>,  <31.822876, 40.098324, 24.597759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767479, 39.909542, 24.460308>,  <31.675150, 39.594906, 24.231222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767479, 39.909542, 24.460308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269871, 0.617270, -0.739018,
		-0.934821, 0.016023, 0.354757,
		0.230822, 0.786588, 0.572713,
		31.836725, 40.145519, 24.632122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221581, 40.104240, 23.990505>,  <31.675150, 39.594906, 24.231222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221581, 40.104240, 23.990505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485575, 40.315479, 24.204245>,  <31.643972, 40.442223, 24.332487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485575, 40.315479, 24.204245>,  <31.221581, 40.104240, 23.990505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485575, 40.315479, 24.204245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117332, 0.774979, -0.621000,
		-0.742058, 0.347156, 0.573439,
		0.659987, 0.528100, 0.534347,
		31.683571, 40.473911, 24.364548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012066, 40.694824, 23.929773>,  <31.221581, 40.104240, 23.990505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012066, 40.694824, 23.929773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381357, 40.786728, 24.052973>,  <31.602932, 40.841869, 24.126892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381357, 40.786728, 24.052973>,  <31.012066, 40.694824, 23.929773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381357, 40.786728, 24.052973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044591, 0.860192, -0.508017,
		-0.381661, 0.455280, 0.804397,
		0.923226, 0.229760, 0.308000,
		31.658325, 40.855656, 24.145372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979673, 41.416103, 24.181761>,  <31.012066, 40.694824, 23.929773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979673, 41.416103, 24.181761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359926, 41.336071, 24.086878>,  <31.588078, 41.288052, 24.029947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359926, 41.336071, 24.086878>,  <30.979673, 41.416103, 24.181761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359926, 41.336071, 24.086878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057004, 0.863978, -0.500292,
		0.305039, 0.462072, 0.832731,
		0.950632, -0.200077, -0.237207,
		31.645117, 41.276047, 24.015717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329559, 42.046810, 24.260548>,  <30.979673, 41.416103, 24.181761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329559, 42.046810, 24.260548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578102, 41.857010, 24.011143>,  <31.727228, 41.743130, 23.861500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578102, 41.857010, 24.011143>,  <31.329559, 42.046810, 24.260548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578102, 41.857010, 24.011143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118949, 0.843677, -0.523508,
		0.774447, 0.251118, 0.580665,
		0.621356, -0.474499, -0.623513,
		31.764509, 41.714661, 23.824089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027233, 42.425678, 24.231558>,  <31.329559, 42.046810, 24.260548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027233, 42.425678, 24.231558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966265, 42.221222, 23.893208>,  <31.929684, 42.098549, 23.690197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966265, 42.221222, 23.893208>,  <32.027233, 42.425678, 24.231558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966265, 42.221222, 23.893208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091953, 0.844827, -0.527078,
		0.984029, -0.158118, -0.081766,
		-0.152418, -0.511142, -0.845874,
		31.920540, 42.067879, 23.639446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191845, 42.857086, 23.794067>,  <32.027233, 42.425678, 24.231558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191845, 42.857086, 23.794067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052940, 42.599823, 23.521080>,  <31.969599, 42.445465, 23.357286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052940, 42.599823, 23.521080>,  <32.191845, 42.857086, 23.794067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052940, 42.599823, 23.521080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004477, 0.728887, -0.684620,
		0.937760, -0.234683, -0.255990,
		-0.347256, -0.643155, -0.682470,
		31.948763, 42.406876, 23.316339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632484, 42.867847, 23.231991>,  <32.191845, 42.857086, 23.794067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632484, 42.867847, 23.231991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279575, 42.731293, 23.102343>,  <32.067829, 42.649361, 23.024553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279575, 42.731293, 23.102343>,  <32.632484, 42.867847, 23.231991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279575, 42.731293, 23.102343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066961, 0.590517, -0.804243,
		0.465953, -0.731264, -0.498137,
		-0.882272, -0.341384, -0.324119,
		32.014893, 42.628876, 23.005106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643593, 42.883678, 22.547411>,  <32.632484, 42.867847, 23.231991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643593, 42.883678, 22.547411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244900, 42.865166, 22.573902>,  <32.005684, 42.854057, 22.589796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244900, 42.865166, 22.573902>,  <32.643593, 42.883678, 22.547411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244900, 42.865166, 22.573902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079243, 0.719834, -0.689609,
		-0.015760, -0.692602, -0.721148,
		-0.996731, -0.046277, 0.066228,
		31.945881, 42.851284, 22.593771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397659, 42.853546, 21.862839>,  <32.643593, 42.883678, 22.547411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397659, 42.853546, 21.862839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070770, 42.962097, 22.066212>,  <31.874638, 43.027229, 22.188236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070770, 42.962097, 22.066212>,  <32.397659, 42.853546, 21.862839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070770, 42.962097, 22.066212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251363, 0.626035, -0.738171,
		-0.518620, -0.731050, -0.443395,
		-0.817221, 0.271378, 0.508433,
		31.825603, 43.043510, 22.218742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858057, 42.820793, 21.319031>,  <32.397659, 42.853546, 21.862839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858057, 42.820793, 21.319031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721075, 43.065212, 21.604506>,  <31.638885, 43.211864, 21.775791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721075, 43.065212, 21.604506>,  <31.858057, 42.820793, 21.319031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721075, 43.065212, 21.604506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391558, 0.597685, -0.699610,
		-0.854054, -0.519034, 0.034580,
		-0.342454, 0.611045, 0.713687,
		31.618340, 43.248528, 21.818611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210703, 43.069023, 21.063993>,  <31.858057, 42.820793, 21.319031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210703, 43.069023, 21.063993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327120, 43.318134, 21.354492>,  <31.396971, 43.467602, 21.528791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327120, 43.318134, 21.354492>,  <31.210703, 43.069023, 21.063993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327120, 43.318134, 21.354492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501797, 0.745684, -0.438355,
		-0.814552, -0.236849, 0.529536,
		0.291042, 0.622782, 0.726249,
		31.414433, 43.504971, 21.572367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617714, 43.389252, 21.277678>,  <31.210703, 43.069023, 21.063993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617714, 43.389252, 21.277678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917761, 43.627563, 21.392477>,  <31.097790, 43.770550, 21.461357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917761, 43.627563, 21.392477>,  <30.617714, 43.389252, 21.277678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917761, 43.627563, 21.392477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532662, 0.801531, -0.271698,
		-0.391912, 0.050931, 0.918592,
		0.750117, 0.595781, 0.287001,
		31.142796, 43.806297, 21.478577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228310, 43.898827, 21.616604>,  <30.617714, 43.389252, 21.277678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228310, 43.898827, 21.616604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588257, 44.000252, 21.474651>,  <30.804226, 44.061108, 21.389479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588257, 44.000252, 21.474651>,  <30.228310, 43.898827, 21.616604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588257, 44.000252, 21.474651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336175, 0.921615, -0.193941,
		0.277889, 0.293824, 0.914574,
		0.899869, 0.253563, -0.354883,
		30.858217, 44.076321, 21.368187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095850, 44.574062, 21.579849>,  <30.228310, 43.898827, 21.616604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095850, 44.574062, 21.579849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433367, 44.552189, 21.366299>,  <30.635878, 44.539062, 21.238169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433367, 44.552189, 21.366299>,  <30.095850, 44.574062, 21.579849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433367, 44.552189, 21.366299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122186, 0.949092, -0.290335,
		0.522574, 0.310215, 0.794155,
		0.843793, -0.054687, -0.533875,
		30.686504, 44.535782, 21.206137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438391, 45.241032, 21.503950>,  <30.095850, 44.574062, 21.579849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438391, 45.241032, 21.503950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585403, 45.059551, 21.179216>,  <30.673611, 44.950665, 20.984375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585403, 45.059551, 21.179216>,  <30.438391, 45.241032, 21.503950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585403, 45.059551, 21.179216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215159, 0.890731, -0.400381,
		0.904780, -0.027521, 0.424990,
		0.367533, -0.453697, -0.811837,
		30.695663, 44.923443, 20.935665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113773, 45.403549, 21.470995>,  <30.438391, 45.241032, 21.503950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113773, 45.403549, 21.470995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015444, 45.317928, 21.092840>,  <30.956446, 45.266556, 20.865948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015444, 45.317928, 21.092840>,  <31.113773, 45.403549, 21.470995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015444, 45.317928, 21.092840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434414, 0.847553, -0.304860,
		0.866519, -0.485630, -0.115361,
		-0.245824, -0.214052, -0.945385,
		30.941696, 45.253712, 20.809225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197939, 46.106251, 21.473169>,  <31.113773, 45.403549, 21.470995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197939, 46.106251, 21.473169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397078, 46.421299, 21.327951>,  <31.516560, 46.610329, 21.240822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397078, 46.421299, 21.327951>,  <31.197939, 46.106251, 21.473169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397078, 46.421299, 21.327951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008565, 0.414121, 0.910182,
		0.867224, -0.456239, 0.199422,
		0.497845, 0.787623, -0.363043,
		31.546431, 46.657585, 21.219038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824251, 46.217655, 21.889839>,  <31.197939, 46.106251, 21.473169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824251, 46.217655, 21.889839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709476, 46.564903, 21.727833>,  <31.640612, 46.773251, 21.630629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709476, 46.564903, 21.727833>,  <31.824251, 46.217655, 21.889839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709476, 46.564903, 21.727833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122938, 0.385926, 0.914301,
		0.950028, 0.312138, -0.004011,
		-0.286936, 0.868119, -0.405014,
		31.623396, 46.825340, 21.606329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969273, 45.588619, 22.127960>,  <31.824251, 46.217655, 21.889839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969273, 45.588619, 22.127960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762960, 45.645008, 22.465977>,  <31.639174, 45.678841, 22.668787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762960, 45.645008, 22.465977>,  <31.969273, 45.588619, 22.127960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762960, 45.645008, 22.465977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754301, -0.392948, 0.525949,
		0.406200, 0.908691, 0.096343,
		-0.515783, 0.140969, 0.845042,
		31.608225, 45.687298, 22.719490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344772, 45.974129, 22.629370>,  <31.969273, 45.588619, 22.127960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344772, 45.974129, 22.629370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057625, 45.819450, 22.860931>,  <31.885336, 45.726643, 22.999868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057625, 45.819450, 22.860931>,  <32.344772, 45.974129, 22.629370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057625, 45.819450, 22.860931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666176, -0.140082, 0.732521,
		-0.202168, 0.911507, 0.358167,
		-0.717871, -0.386694, 0.578904,
		31.842264, 45.703442, 23.034603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377583, 46.203217, 23.408251>,  <32.344772, 45.974129, 22.629370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377583, 46.203217, 23.408251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208099, 45.840942, 23.402538>,  <32.106411, 45.623577, 23.399111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208099, 45.840942, 23.402538>,  <32.377583, 46.203217, 23.408251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208099, 45.840942, 23.402538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682045, -0.329379, 0.652935,
		-0.596058, 0.266913, 0.757280,
		-0.423709, -0.905686, -0.014282,
		32.080986, 45.569237, 23.398254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444538, 45.897724, 24.150038>,  <32.377583, 46.203217, 23.408251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444538, 45.897724, 24.150038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374306, 45.562794, 23.942944>,  <32.332165, 45.361835, 23.818687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374306, 45.562794, 23.942944>,  <32.444538, 45.897724, 24.150038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374306, 45.562794, 23.942944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602373, -0.507344, 0.616237,
		-0.778664, -0.203670, 0.593466,
		-0.175582, -0.837329, -0.517736,
		32.321632, 45.311596, 23.787622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139774, 45.518730, 24.636513>,  <32.444538, 45.897724, 24.150038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139774, 45.518730, 24.636513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338520, 45.299973, 24.366983>,  <32.457767, 45.168716, 24.205265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338520, 45.299973, 24.366983>,  <32.139774, 45.518730, 24.636513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338520, 45.299973, 24.366983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398217, -0.546200, 0.736946,
		-0.771074, -0.634486, -0.053602,
		0.496859, -0.546894, -0.673823,
		32.487579, 45.135906, 24.164837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130116, 44.922646, 24.938795>,  <32.139774, 45.518730, 24.636513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130116, 44.922646, 24.938795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412502, 44.880596, 24.658634>,  <32.581936, 44.855366, 24.490538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412502, 44.880596, 24.658634>,  <32.130116, 44.922646, 24.938795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412502, 44.880596, 24.658634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556132, -0.530070, 0.640112,
		-0.438552, -0.841412, -0.315749,
		0.705967, -0.105125, -0.700400,
		32.624290, 44.849060, 24.448515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323345, 44.242130, 24.837400>,  <32.130116, 44.922646, 24.938795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323345, 44.242130, 24.837400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655018, 44.422138, 24.704769>,  <32.854019, 44.530144, 24.625191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655018, 44.422138, 24.704769>,  <32.323345, 44.242130, 24.837400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655018, 44.422138, 24.704769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552989, -0.573752, 0.604162,
		0.081641, -0.684317, -0.724599,
		0.829179, 0.450020, -0.331578,
		32.903770, 44.557144, 24.605295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804279, 43.688454, 24.724415>,  <32.323345, 44.242130, 24.837400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804279, 43.688454, 24.724415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048302, 44.004932, 24.707247>,  <33.194714, 44.194820, 24.696945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048302, 44.004932, 24.707247>,  <32.804279, 43.688454, 24.724415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048302, 44.004932, 24.707247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670364, -0.486493, 0.560300,
		0.422426, -0.370587, -0.827177,
		0.610056, 0.791195, -0.042921,
		33.231319, 44.242290, 24.694370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408131, 43.474026, 24.411484>,  <32.804279, 43.688454, 24.724415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408131, 43.474026, 24.411484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529865, 43.798515, 24.611200>,  <33.602905, 43.993210, 24.731030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529865, 43.798515, 24.611200>,  <33.408131, 43.474026, 24.411484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529865, 43.798515, 24.611200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653364, -0.559196, 0.510309,
		0.693177, 0.170911, -0.700211,
		0.304338, 0.811227, 0.499289,
		33.621166, 44.041882, 24.760986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187386, 43.435997, 24.498970>,  <33.408131, 43.474026, 24.411484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187386, 43.435997, 24.498970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059444, 43.678001, 24.790628>,  <33.982681, 43.823204, 24.965624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059444, 43.678001, 24.790628>,  <34.187386, 43.435997, 24.498970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059444, 43.678001, 24.790628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576285, -0.486627, 0.656575,
		0.752059, 0.630201, -0.193012,
		-0.319849, 0.605013, 0.729147,
		33.963490, 43.859505, 25.009373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790119, 43.524361, 24.836344>,  <34.187386, 43.435997, 24.498970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790119, 43.524361, 24.836344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519005, 43.659576, 25.097521>,  <34.356335, 43.740704, 25.254227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519005, 43.659576, 25.097521>,  <34.790119, 43.524361, 24.836344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519005, 43.659576, 25.097521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374437, -0.605570, 0.702198,
		0.632771, 0.720427, 0.283875,
		-0.677789, 0.338037, 0.652942,
		34.315670, 43.760986, 25.293404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165203, 43.845718, 25.360380>,  <34.790119, 43.524361, 24.836344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165203, 43.845718, 25.360380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811905, 43.751144, 25.522360>,  <34.599926, 43.694401, 25.619549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811905, 43.751144, 25.522360>,  <35.165203, 43.845718, 25.360380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811905, 43.751144, 25.522360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468777, -0.466500, 0.750084,
		0.011565, 0.852336, 0.522867,
		-0.883241, -0.236433, 0.404950,
		34.546932, 43.680214, 25.643845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297012, 44.013882, 26.094162>,  <35.165203, 43.845718, 25.360380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297012, 44.013882, 26.094162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985996, 43.764935, 26.058176>,  <34.799385, 43.615566, 26.036585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985996, 43.764935, 26.058176>,  <35.297012, 44.013882, 26.094162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985996, 43.764935, 26.058176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386210, -0.585530, 0.712739,
		-0.496260, 0.519438, 0.695636,
		-0.777539, -0.622366, -0.089963,
		34.752735, 43.578224, 26.031187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050789, 43.808693, 26.756657>,  <35.297012, 44.013882, 26.094162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050789, 43.808693, 26.756657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901371, 43.512749, 26.532848>,  <34.811718, 43.335182, 26.398563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901371, 43.512749, 26.532848>,  <35.050789, 43.808693, 26.756657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901371, 43.512749, 26.532848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308737, -0.667961, 0.677133,
		-0.874724, 0.080197, 0.477939,
		-0.373549, -0.739862, -0.559522,
		34.789307, 43.290791, 26.364992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699810, 43.317364, 27.217365>,  <35.050789, 43.808693, 26.756657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699810, 43.317364, 27.217365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763260, 43.115356, 26.878002>,  <34.801331, 42.994152, 26.674385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763260, 43.115356, 26.878002>,  <34.699810, 43.317364, 27.217365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763260, 43.115356, 26.878002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265301, -0.805882, 0.529310,
		-0.951028, -0.309043, 0.006153,
		0.158621, -0.505021, -0.848406,
		34.810844, 42.963852, 26.623480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289391, 42.756001, 27.226217>,  <34.699810, 43.317364, 27.217365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289391, 42.756001, 27.226217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579792, 42.656670, 26.969704>,  <34.754032, 42.597073, 26.815796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579792, 42.656670, 26.969704>,  <34.289391, 42.756001, 27.226217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579792, 42.656670, 26.969704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156526, -0.848376, 0.505726,
		-0.669636, -0.467538, -0.577057,
		0.726007, -0.248328, -0.641285,
		34.797596, 42.582172, 26.777319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186367, 42.070766, 27.053534>,  <34.289391, 42.756001, 27.226217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186367, 42.070766, 27.053534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566502, 42.122692, 26.940395>,  <34.794582, 42.153847, 26.872513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566502, 42.122692, 26.940395>,  <34.186367, 42.070766, 27.053534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566502, 42.122692, 26.940395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230326, -0.904579, 0.358730,
		-0.209290, -0.406062, -0.889557,
		0.950341, 0.129810, -0.282846,
		34.851604, 42.161636, 26.855541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325527, 41.469322, 26.910654>,  <34.186367, 42.070766, 27.053534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325527, 41.469322, 26.910654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703129, 41.598469, 26.937805>,  <34.929691, 41.675957, 26.954096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703129, 41.598469, 26.937805>,  <34.325527, 41.469322, 26.910654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703129, 41.598469, 26.937805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264891, -0.864352, 0.427467,
		0.196686, -0.385552, -0.901479,
		0.944006, 0.322871, 0.067877,
		34.986332, 41.695332, 26.958168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838165, 41.017300, 26.563917>,  <34.325527, 41.469322, 26.910654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838165, 41.017300, 26.563917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014935, 41.221855, 26.858723>,  <35.120995, 41.344589, 27.035606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014935, 41.221855, 26.858723>,  <34.838165, 41.017300, 26.563917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014935, 41.221855, 26.858723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199566, -0.857051, 0.475013,
		0.874573, -0.062836, -0.480805,
		0.441922, 0.511386, 0.737014,
		35.147511, 41.375271, 27.079826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346344, 40.585571, 26.873871>,  <34.838165, 41.017300, 26.563917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346344, 40.585571, 26.873871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376163, 40.849140, 27.173275>,  <35.394054, 41.007282, 27.352917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376163, 40.849140, 27.173275>,  <35.346344, 40.585571, 26.873871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376163, 40.849140, 27.173275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126808, -0.750769, 0.648279,
		0.989122, 0.046590, -0.139523,
		0.074546, 0.658920, 0.748510,
		35.398529, 41.046818, 27.397827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870735, 40.352657, 27.269217>,  <35.346344, 40.585571, 26.873871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870735, 40.352657, 27.269217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652691, 40.578308, 27.517286>,  <35.521866, 40.713699, 27.666128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652691, 40.578308, 27.517286>,  <35.870735, 40.352657, 27.269217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652691, 40.578308, 27.517286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124017, -0.677346, 0.725136,
		0.829141, 0.472191, 0.299267,
		-0.545110, 0.564126, 0.620175,
		35.489159, 40.747547, 27.703339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279484, 40.520878, 27.820015>,  <35.870735, 40.352657, 27.269217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279484, 40.520878, 27.820015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889259, 40.522503, 27.907892>,  <35.655125, 40.523476, 27.960619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889259, 40.522503, 27.907892>,  <36.279484, 40.520878, 27.820015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889259, 40.522503, 27.907892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154578, -0.697904, 0.699311,
		0.156163, 0.716180, 0.680220,
		-0.975561, 0.004059, 0.219692,
		35.596592, 40.523720, 27.973801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446472, 40.306110, 28.413593>,  <36.279484, 40.520878, 27.820015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446472, 40.306110, 28.413593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047333, 40.283714, 28.399944>,  <35.807850, 40.270279, 28.391754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047333, 40.283714, 28.399944>,  <36.446472, 40.306110, 28.413593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047333, 40.283714, 28.399944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001675, -0.498499, 0.866889,
		-0.065543, 0.865081, 0.497332,
		-0.997848, -0.055986, -0.034122,
		35.747978, 40.266918, 28.389708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097504, 40.597477, 29.097755>,  <36.446472, 40.306110, 28.413593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097504, 40.597477, 29.097755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842770, 40.336910, 28.932783>,  <35.689930, 40.180573, 28.833799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842770, 40.336910, 28.932783>,  <36.097504, 40.597477, 29.097755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842770, 40.336910, 28.932783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158531, -0.412862, 0.896890,
		-0.754524, 0.636556, 0.159656,
		-0.636837, -0.651415, -0.412428,
		35.651718, 40.141487, 28.809055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647556, 40.499817, 29.537870>,  <36.097504, 40.597477, 29.097755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647556, 40.499817, 29.537870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538715, 40.184460, 29.317181>,  <35.473412, 39.995247, 29.184767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538715, 40.184460, 29.317181>,  <35.647556, 40.499817, 29.537870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538715, 40.184460, 29.317181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227205, -0.504510, 0.832975,
		-0.935060, 0.352012, -0.041846,
		-0.272105, -0.788389, -0.551726,
		35.457085, 39.947945, 29.151663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911762, 40.215702, 29.762047>,  <35.647556, 40.499817, 29.537870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911762, 40.215702, 29.762047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132210, 39.934517, 29.582220>,  <35.264477, 39.765804, 29.474323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.132210, 39.934517, 29.582220>,  <34.911762, 40.215702, 29.762047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132210, 39.934517, 29.582220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188028, -0.629539, 0.753874,
		-0.812966, -0.330943, -0.479128,
		0.551119, -0.702964, -0.449567,
		35.297546, 39.723629, 29.447350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637257, 39.486004, 29.985466>,  <34.911762, 40.215702, 29.762047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637257, 39.486004, 29.985466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996357, 39.424816, 29.820230>,  <35.211819, 39.388103, 29.721088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996357, 39.424816, 29.820230>,  <34.637257, 39.486004, 29.985466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996357, 39.424816, 29.820230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154233, -0.769257, 0.620045,
		-0.412620, -0.620359, -0.667008,
		0.897751, -0.152968, -0.413091,
		35.265682, 39.378925, 29.696302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629631, 38.834961, 29.720833>,  <34.637257, 39.486004, 29.985466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629631, 38.834961, 29.720833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012058, 38.932060, 29.786558>,  <35.241516, 38.990318, 29.825993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012058, 38.932060, 29.786558>,  <34.629631, 38.834961, 29.720833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012058, 38.932060, 29.786558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057970, -0.706054, 0.705781,
		0.287341, -0.665253, -0.689111,
		0.956072, 0.242747, 0.164313,
		35.298882, 39.004883, 29.835852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970371, 38.136078, 29.779360>,  <34.629631, 38.834961, 29.720833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970371, 38.136078, 29.779360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251598, 38.389458, 29.908627>,  <35.420334, 38.541485, 29.986187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251598, 38.389458, 29.908627>,  <34.970371, 38.136078, 29.779360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251598, 38.389458, 29.908627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283873, -0.666669, 0.689180,
		0.652008, -0.392800, -0.648532,
		0.703066, 0.633451, 0.323168,
		35.462517, 38.579494, 30.005577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524899, 37.762226, 29.855991>,  <34.970371, 38.136078, 29.779360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524899, 37.762226, 29.855991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559673, 38.077736, 30.099392>,  <35.580536, 38.267040, 30.245432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559673, 38.077736, 30.099392>,  <35.524899, 37.762226, 29.855991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559673, 38.077736, 30.099392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363003, -0.593902, 0.717990,
		0.927724, 0.158470, -0.337959,
		0.086934, 0.788776, 0.608502,
		35.585754, 38.314369, 30.281942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181961, 37.843319, 30.105909>,  <35.524899, 37.762226, 29.855991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181961, 37.843319, 30.105909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959225, 38.026947, 30.382803>,  <35.825584, 38.137123, 30.548939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959225, 38.026947, 30.382803>,  <36.181961, 37.843319, 30.105909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959225, 38.026947, 30.382803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369848, -0.609183, 0.701504,
		0.743736, 0.646645, 0.169430,
		-0.556839, 0.459071, 0.692232,
		35.792171, 38.164669, 30.590473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714695, 37.918739, 30.601786>,  <36.181961, 37.843319, 30.105909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714695, 37.918739, 30.601786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365414, 37.956085, 30.793119>,  <36.155846, 37.978493, 30.907921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365414, 37.956085, 30.793119>,  <36.714695, 37.918739, 30.601786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365414, 37.956085, 30.793119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365608, -0.523506, 0.769592,
		0.322262, 0.846892, 0.422992,
		-0.873200, 0.093361, 0.478337,
		36.103455, 37.984093, 30.936621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844036, 38.094296, 31.267429>,  <36.714695, 37.918739, 30.601786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844036, 38.094296, 31.267429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474197, 37.943947, 31.292236>,  <36.252296, 37.853737, 31.307121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474197, 37.943947, 31.292236>,  <36.844036, 38.094296, 31.267429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474197, 37.943947, 31.292236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264695, -0.516771, 0.814177,
		-0.273980, 0.769199, 0.577294,
		-0.924593, -0.375875, 0.062018,
		36.196819, 37.831184, 31.310843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674973, 38.077938, 32.063469>,  <36.844036, 38.094296, 31.267429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674973, 38.077938, 32.063469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406673, 37.827583, 31.904289>,  <36.245693, 37.677368, 31.808783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406673, 37.827583, 31.904289>,  <36.674973, 38.077938, 32.063469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406673, 37.827583, 31.904289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177165, -0.656216, 0.733480,
		-0.720214, 0.421479, 0.551041,
		-0.670749, -0.625889, -0.397944,
		36.205448, 37.639816, 31.784906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197487, 37.875168, 32.637402>,  <36.674973, 38.077938, 32.063469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197487, 37.875168, 32.637402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205715, 37.593639, 32.353371>,  <36.210651, 37.424721, 32.182953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205715, 37.593639, 32.353371>,  <36.197487, 37.875168, 32.637402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205715, 37.593639, 32.353371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190298, -0.694490, 0.693880,
		-0.981511, -0.149398, 0.119653,
		0.020566, -0.703821, -0.710080,
		36.211884, 37.382492, 32.140347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800957, 37.310501, 32.940128>,  <36.197487, 37.875168, 32.637402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800957, 37.310501, 32.940128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006649, 37.176228, 32.624435>,  <36.130066, 37.095661, 32.435020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006649, 37.176228, 32.624435>,  <35.800957, 37.310501, 32.940128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006649, 37.176228, 32.624435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232202, -0.831360, 0.504899,
		-0.825612, -0.442901, -0.349576,
		0.514244, -0.335678, -0.789223,
		36.160919, 37.075523, 32.387665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641399, 36.603580, 32.846394>,  <35.800957, 37.310501, 32.940128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641399, 36.603580, 32.846394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992378, 36.608578, 32.654591>,  <36.202965, 36.611576, 32.539509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992378, 36.608578, 32.654591>,  <35.641399, 36.603580, 32.846394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992378, 36.608578, 32.654591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336222, -0.728994, 0.596258,
		-0.342113, -0.684406, -0.643853,
		0.877447, 0.012490, -0.479510,
		36.255611, 36.612324, 32.510738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843933, 35.878120, 32.787132>,  <35.641399, 36.603580, 32.846394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843933, 35.878120, 32.787132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173756, 36.099724, 32.741211>,  <36.371651, 36.232685, 32.713657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173756, 36.099724, 32.741211>,  <35.843933, 35.878120, 32.787132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173756, 36.099724, 32.741211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492679, -0.603325, 0.627110,
		0.278165, -0.573646, -0.770425,
		0.824555, 0.554012, -0.114800,
		36.421124, 36.265926, 32.706772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454281, 35.352192, 32.770016>,  <35.843933, 35.878120, 32.787132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454281, 35.352192, 32.770016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613243, 35.706924, 32.864342>,  <36.708618, 35.919762, 32.920937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613243, 35.706924, 32.864342>,  <36.454281, 35.352192, 32.770016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613243, 35.706924, 32.864342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704018, -0.459474, 0.541518,
		0.588583, -0.049185, -0.806939,
		0.397403, 0.886828, 0.235811,
		36.732464, 35.972973, 32.935085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247101, 35.279572, 32.725151>,  <36.454281, 35.352192, 32.770016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247101, 35.279572, 32.725151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162464, 35.597149, 32.953144>,  <37.111683, 35.787697, 33.089939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162464, 35.597149, 32.953144>,  <37.247101, 35.279572, 32.725151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162464, 35.597149, 32.953144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595196, -0.357898, 0.719479,
		0.775222, 0.491489, -0.396823,
		-0.211594, 0.793944, 0.569983,
		37.098988, 35.835331, 33.124138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860111, 35.442715, 33.063831>,  <37.247101, 35.279572, 32.725151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860111, 35.442715, 33.063831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592144, 35.647079, 33.279305>,  <37.431366, 35.769699, 33.408588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592144, 35.647079, 33.279305>,  <37.860111, 35.442715, 33.063831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592144, 35.647079, 33.279305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549387, -0.146896, 0.822554,
		0.499386, 0.846987, -0.182283,
		-0.669916, 0.510916, 0.538682,
		37.391171, 35.800354, 33.440910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247219, 35.877636, 33.461514>,  <37.860111, 35.442715, 33.063831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247219, 35.877636, 33.461514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908005, 35.820095, 33.665527>,  <37.704475, 35.785572, 33.787937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908005, 35.820095, 33.665527>,  <38.247219, 35.877636, 33.461514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908005, 35.820095, 33.665527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522963, -0.382790, 0.761565,
		0.085686, 0.912567, 0.399849,
		-0.848037, -0.143851, 0.510039,
		37.653595, 35.776939, 33.818539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848286, 35.807411, 33.843056>,  <38.247219, 35.877636, 33.461514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848286, 35.807411, 33.843056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199570, 35.745285, 33.662117>,  <39.410339, 35.708008, 33.553555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.199570, 35.745285, 33.662117>,  <38.848286, 35.807411, 33.843056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199570, 35.745285, 33.662117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148734, 0.810214, -0.566950,
		0.454557, 0.565182, 0.688438,
		0.878212, -0.155317, -0.452350,
		39.463032, 35.698689, 33.526413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210434, 36.415512, 33.784676>,  <38.848286, 35.807411, 33.843056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210434, 36.415512, 33.784676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363319, 36.195633, 33.487556>,  <39.455051, 36.063705, 33.309284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363319, 36.195633, 33.487556>,  <39.210434, 36.415512, 33.784676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363319, 36.195633, 33.487556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114652, 0.769409, -0.628383,
		0.916933, 0.325341, 0.231057,
		0.382216, -0.549694, -0.742797,
		39.477985, 36.030724, 33.264717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577988, 36.935944, 33.414463>,  <39.210434, 36.415512, 33.784676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577988, 36.935944, 33.414463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551342, 36.622520, 33.167366>,  <39.535355, 36.434467, 33.019108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551342, 36.622520, 33.167366>,  <39.577988, 36.935944, 33.414463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551342, 36.622520, 33.167366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009474, 0.619582, -0.784875,
		0.997734, -0.046434, -0.048699,
		-0.066617, -0.783557, -0.617738,
		39.531357, 36.387455, 32.982044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138920, 36.942577, 32.975094>,  <39.577988, 36.935944, 33.414463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138920, 36.942577, 32.975094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862270, 36.717491, 32.793983>,  <39.696281, 36.582439, 32.685318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862270, 36.717491, 32.793983>,  <40.138920, 36.942577, 32.975094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862270, 36.717491, 32.793983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040516, 0.656136, -0.753555,
		0.721119, -0.502833, -0.476599,
		-0.691626, -0.562712, -0.452779,
		39.654781, 36.548679, 32.658150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339500, 36.862602, 32.307270>,  <40.138920, 36.942577, 32.975094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339500, 36.862602, 32.307270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945858, 36.794533, 32.286957>,  <39.709671, 36.753693, 32.274769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945858, 36.794533, 32.286957>,  <40.339500, 36.862602, 32.307270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945858, 36.794533, 32.286957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045906, 0.520014, -0.852923,
		0.171551, -0.837035, -0.519561,
		-0.984105, -0.170171, -0.050784,
		39.650627, 36.743481, 32.271721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337189, 36.646137, 31.599777>,  <40.339500, 36.862602, 32.307270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337189, 36.646137, 31.599777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965660, 36.759548, 31.695198>,  <39.742744, 36.827595, 31.752451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965660, 36.759548, 31.695198>,  <40.337189, 36.646137, 31.599777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965660, 36.759548, 31.695198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102516, 0.422036, -0.900764,
		-0.356069, -0.861102, -0.362929,
		-0.928819, 0.283528, 0.238551,
		39.687016, 36.844608, 31.766764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031574, 36.587719, 30.962885>,  <40.337189, 36.646137, 31.599777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031574, 36.587719, 30.962885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772736, 36.816898, 31.164076>,  <39.617432, 36.954407, 31.284790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772736, 36.816898, 31.164076>,  <40.031574, 36.587719, 30.962885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772736, 36.816898, 31.164076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231094, 0.481283, -0.845554,
		-0.726537, -0.663394, -0.179032,
		-0.647100, 0.572953, 0.502977,
		39.578606, 36.988785, 31.314968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471512, 36.510025, 30.580772>,  <40.031574, 36.587719, 30.962885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471512, 36.510025, 30.580772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401741, 36.839832, 30.796087>,  <39.359879, 37.037716, 30.925276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401741, 36.839832, 30.796087>,  <39.471512, 36.510025, 30.580772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401741, 36.839832, 30.796087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383642, 0.446562, -0.808333,
		-0.906860, -0.347500, 0.238428,
		-0.174423, 0.824515, 0.538285,
		39.349415, 37.087189, 30.957573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732075, 36.688717, 30.486406>,  <39.471512, 36.510025, 30.580772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732075, 36.688717, 30.486406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942371, 37.010323, 30.597513>,  <39.068550, 37.203285, 30.664177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942371, 37.010323, 30.597513>,  <38.732075, 36.688717, 30.486406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942371, 37.010323, 30.597513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291845, 0.477203, -0.828917,
		-0.799016, 0.354728, 0.485532,
		0.525737, 0.804018, 0.277768,
		39.100094, 37.251530, 30.680843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323708, 37.302998, 30.380512>,  <38.732075, 36.688717, 30.486406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323708, 37.302998, 30.380512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689323, 37.462910, 30.407944>,  <38.908691, 37.558857, 30.424402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689323, 37.462910, 30.407944>,  <38.323708, 37.302998, 30.380512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689323, 37.462910, 30.407944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199574, 0.590437, -0.782019,
		-0.353129, 0.701111, 0.619470,
		0.914041, 0.399784, 0.068576,
		38.963535, 37.582844, 30.428516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219177, 37.942875, 30.294428>,  <38.323708, 37.302998, 30.380512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219177, 37.942875, 30.294428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611500, 37.921188, 30.219509>,  <38.846893, 37.908176, 30.174559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.611500, 37.921188, 30.219509>,  <38.219177, 37.942875, 30.294428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611500, 37.921188, 30.219509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086794, 0.738750, -0.668367,
		0.174602, 0.671795, 0.719865,
		0.980806, -0.054218, -0.187295,
		38.905743, 37.904922, 30.163321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407307, 38.642876, 30.212324>,  <38.219177, 37.942875, 30.294428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407307, 38.642876, 30.212324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709957, 38.448299, 30.037558>,  <38.891548, 38.331554, 29.932697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709957, 38.448299, 30.037558>,  <38.407307, 38.642876, 30.212324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709957, 38.448299, 30.037558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024224, 0.688618, -0.724720,
		0.653402, 0.537756, 0.532808,
		0.756623, -0.486440, -0.436917,
		38.936943, 38.302368, 29.906483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004700, 39.137260, 30.163176>,  <38.407307, 38.642876, 30.212324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004700, 39.137260, 30.163176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029530, 38.859379, 29.876532>,  <39.044426, 38.692650, 29.704544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029530, 38.859379, 29.876532>,  <39.004700, 39.137260, 30.163176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029530, 38.859379, 29.876532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004063, 0.718166, -0.695860,
		0.998063, 0.040283, 0.047402,
		0.062074, -0.694705, -0.716611,
		39.048153, 38.650967, 29.661549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551899, 39.387691, 29.802597>,  <39.004700, 39.137260, 30.163176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551899, 39.387691, 29.802597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401016, 39.111252, 29.555988>,  <39.310486, 38.945389, 29.408024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401016, 39.111252, 29.555988>,  <39.551899, 39.387691, 29.802597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401016, 39.111252, 29.555988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070242, 0.685130, -0.725027,
		0.923462, -0.230178, -0.306979,
		-0.377206, -0.691097, -0.616523,
		39.287853, 38.903923, 29.371031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926300, 39.513840, 29.081066>,  <39.551899, 39.387691, 29.802597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926300, 39.513840, 29.081066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586472, 39.312630, 29.017586>,  <39.382572, 39.191902, 28.979498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586472, 39.312630, 29.017586>,  <39.926300, 39.513840, 29.081066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586472, 39.312630, 29.017586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171512, 0.547967, -0.818728,
		0.498804, -0.668352, -0.551815,
		-0.849575, -0.503028, -0.158698,
		39.331600, 39.161720, 28.969976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844612, 39.571465, 28.348862>,  <39.926300, 39.513840, 29.081066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844612, 39.571465, 28.348862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468395, 39.468227, 28.437204>,  <39.242664, 39.406284, 28.490210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468395, 39.468227, 28.437204>,  <39.844612, 39.571465, 28.348862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468395, 39.468227, 28.437204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333051, 0.572740, -0.749030,
		0.066824, -0.778048, -0.624641,
		-0.940538, -0.258091, 0.220857,
		39.186234, 39.390800, 28.503462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506947, 39.454250, 27.639240>,  <39.844612, 39.571465, 28.348862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506947, 39.454250, 27.639240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223587, 39.497219, 27.918274>,  <39.053570, 39.522999, 28.085695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.223587, 39.497219, 27.918274>,  <39.506947, 39.454250, 27.639240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223587, 39.497219, 27.918274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579422, 0.475861, -0.661684,
		-0.403033, -0.872936, -0.274859,
		-0.708403, 0.107422, 0.697586,
		39.011066, 39.529446, 28.127550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823540, 39.197281, 27.303183>,  <39.506947, 39.454250, 27.639240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823540, 39.197281, 27.303183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750847, 39.433823, 27.617449>,  <38.707230, 39.575748, 27.806007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750847, 39.433823, 27.617449>,  <38.823540, 39.197281, 27.303183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750847, 39.433823, 27.617449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755739, 0.427191, -0.496353,
		-0.629151, -0.683961, 0.369279,
		-0.181734, 0.591359, 0.785664,
		38.696327, 39.611229, 27.853148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012535, 39.234100, 27.449511>,  <38.823540, 39.197281, 27.303183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012535, 39.234100, 27.449511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195580, 39.559059, 27.594061>,  <38.305408, 39.754036, 27.680792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195580, 39.559059, 27.594061>,  <38.012535, 39.234100, 27.449511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195580, 39.559059, 27.594061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513165, 0.573218, -0.638813,
		-0.726121, 0.106884, 0.679209,
		0.457614, 0.812402, 0.361377,
		38.332863, 39.802780, 27.702475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464851, 39.709339, 27.485209>,  <38.012535, 39.234100, 27.449511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464851, 39.709339, 27.485209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795998, 39.932163, 27.511499>,  <37.994686, 40.065857, 27.527273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795998, 39.932163, 27.511499>,  <37.464851, 39.709339, 27.485209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795998, 39.932163, 27.511499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419082, 0.692147, -0.587625,
		-0.372833, 0.458932, 0.806460,
		0.827868, 0.557059, 0.065726,
		38.044357, 40.099281, 27.531218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226349, 40.343224, 27.631248>,  <37.464851, 39.709339, 27.485209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226349, 40.343224, 27.631248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591930, 40.411507, 27.483978>,  <37.811279, 40.452477, 27.395617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591930, 40.411507, 27.483978>,  <37.226349, 40.343224, 27.631248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591930, 40.411507, 27.483978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391830, 0.607381, -0.691056,
		0.105655, 0.775853, 0.622004,
		0.913951, 0.170706, -0.368175,
		37.866116, 40.462719, 27.373526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293903, 41.148285, 27.611099>,  <37.226349, 40.343224, 27.631248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293903, 41.148285, 27.611099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532276, 40.991688, 27.330643>,  <37.675301, 40.897732, 27.162369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532276, 40.991688, 27.330643>,  <37.293903, 41.148285, 27.611099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532276, 40.991688, 27.330643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394034, 0.618226, -0.680098,
		0.699717, 0.681566, 0.214159,
		0.595931, -0.391490, -0.701144,
		37.711056, 40.874241, 27.120300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607170, 41.761734, 27.232981>,  <37.293903, 41.148285, 27.611099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607170, 41.761734, 27.232981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653561, 41.457985, 26.976885>,  <37.681393, 41.275738, 26.823227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653561, 41.457985, 26.976885>,  <37.607170, 41.761734, 27.232981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653561, 41.457985, 26.976885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253540, 0.600602, -0.758284,
		0.960348, 0.250266, -0.122878,
		0.115972, -0.759371, -0.640239,
		37.688351, 41.230175, 26.784813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129078, 42.000546, 26.674683>,  <37.607170, 41.761734, 27.232981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129078, 42.000546, 26.674683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922043, 41.689163, 26.532635>,  <37.797821, 41.502335, 26.447407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922043, 41.689163, 26.532635>,  <38.129078, 42.000546, 26.674683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922043, 41.689163, 26.532635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287946, 0.549305, -0.784443,
		0.805723, -0.303763, -0.508466,
		-0.517588, -0.778455, -0.355120,
		37.766766, 41.455627, 26.426098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277664, 41.908234, 26.018461>,  <38.129078, 42.000546, 26.674683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277664, 41.908234, 26.018461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927273, 41.716095, 26.036030>,  <37.717037, 41.600811, 26.046572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927273, 41.716095, 26.036030>,  <38.277664, 41.908234, 26.018461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927273, 41.716095, 26.036030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264948, 0.403070, -0.875978,
		0.403070, -0.778974, -0.480347,
		0.875978, 0.480347, -0.043923,
		37.664478, 41.571991, 26.049206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178062, 41.753807, 25.310495>,  <38.277664, 41.908234, 26.018461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178062, 41.753807, 25.310495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823997, 41.673248, 25.478268>,  <37.611557, 41.624912, 25.578930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823997, 41.673248, 25.478268>,  <38.178062, 41.753807, 25.310495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823997, 41.673248, 25.478268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453602, 0.172878, -0.874276,
		0.103554, -0.964136, -0.244374,
		-0.885167, -0.201384, 0.419432,
		37.558449, 41.612831, 25.604097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931942, 41.178417, 24.851759>,  <38.178062, 41.753807, 25.310495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931942, 41.178417, 24.851759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618141, 41.356384, 25.024548>,  <37.429859, 41.463165, 25.128222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618141, 41.356384, 25.024548>,  <37.931942, 41.178417, 24.851759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618141, 41.356384, 25.024548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437046, 0.097495, -0.894140,
		-0.439933, -0.890249, 0.117963,
		-0.784506, 0.444917, 0.431971,
		37.382790, 41.489861, 25.154139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243858, 41.018997, 24.406031>,  <37.931942, 41.178417, 24.851759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243858, 41.018997, 24.406031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143646, 41.332634, 24.633165>,  <37.083519, 41.520817, 24.769447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143646, 41.332634, 24.633165>,  <37.243858, 41.018997, 24.406031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143646, 41.332634, 24.633165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445587, 0.427332, -0.786664,
		-0.859470, -0.450103, 0.242321,
		-0.250529, 0.784089, 0.567838,
		37.068489, 41.567860, 24.803516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503105, 41.279125, 24.090954>,  <37.243858, 41.018997, 24.406031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503105, 41.279125, 24.090954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637276, 41.576477, 24.322430>,  <36.717777, 41.754887, 24.461315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.637276, 41.576477, 24.322430>,  <36.503105, 41.279125, 24.090954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.637276, 41.576477, 24.322430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287827, 0.665770, -0.688408,
		-0.897022, 0.064345, 0.437278,
		0.335423, 0.743377, 0.578690,
		36.737904, 41.799492, 24.496037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028316, 41.774956, 24.151159>,  <36.503105, 41.279125, 24.090954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028316, 41.774956, 24.151159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344669, 41.998894, 24.250017>,  <36.534481, 42.133255, 24.309332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344669, 41.998894, 24.250017>,  <36.028316, 41.774956, 24.151159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344669, 41.998894, 24.250017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312426, 0.716632, -0.623561,
		-0.526208, 0.415949, 0.741682,
		0.790883, 0.559843, 0.247144,
		36.581936, 42.166847, 24.324160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839775, 42.485733, 24.511709>,  <36.028316, 41.774956, 24.151159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839775, 42.485733, 24.511709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183804, 42.498478, 24.308037>,  <36.390221, 42.506126, 24.185833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183804, 42.498478, 24.308037>,  <35.839775, 42.485733, 24.511709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183804, 42.498478, 24.308037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378855, 0.708320, -0.595611,
		0.341686, 0.705172, 0.621275,
		0.860069, 0.031861, -0.509181,
		36.441826, 42.508038, 24.155283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656139, 43.025349, 24.042044>,  <35.839775, 42.485733, 24.511709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656139, 43.025349, 24.042044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006569, 42.891922, 23.902775>,  <36.216827, 42.811867, 23.819214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006569, 42.891922, 23.902775>,  <35.656139, 43.025349, 24.042044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006569, 42.891922, 23.902775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084068, 0.605365, -0.791496,
		0.474788, 0.722681, 0.502304,
		0.876076, -0.333565, -0.348174,
		36.269390, 42.791851, 23.798323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946449, 43.611073, 23.726061>,  <35.656139, 43.025349, 24.042044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946449, 43.611073, 23.726061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161053, 43.303150, 23.587753>,  <36.289814, 43.118397, 23.504768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161053, 43.303150, 23.587753>,  <35.946449, 43.611073, 23.726061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161053, 43.303150, 23.587753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217867, 0.522185, -0.824534,
		0.815289, 0.367035, 0.447871,
		0.536504, -0.769810, -0.345767,
		36.322002, 43.072208, 23.484024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469112, 43.960670, 23.411968>,  <35.946449, 43.611073, 23.726061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469112, 43.960670, 23.411968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404644, 43.606663, 23.237259>,  <36.365963, 43.394260, 23.132433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404644, 43.606663, 23.237259>,  <36.469112, 43.960670, 23.411968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404644, 43.606663, 23.237259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132686, 0.419112, -0.898187,
		0.977966, -0.202716, 0.049880,
		-0.161171, -0.885015, -0.436775,
		36.356293, 43.341160, 23.106226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014317, 43.778530, 22.878799>,  <36.469112, 43.960670, 23.411968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014317, 43.778530, 22.878799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704998, 43.546627, 22.776114>,  <36.519409, 43.407486, 22.714502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.704998, 43.546627, 22.776114>,  <37.014317, 43.778530, 22.878799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704998, 43.546627, 22.776114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051192, 0.460646, -0.886107,
		0.631980, -0.672077, -0.385893,
		-0.773292, -0.579757, -0.256714,
		36.473011, 43.372700, 22.699100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199295, 43.566948, 22.284018>,  <37.014317, 43.778530, 22.878799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199295, 43.566948, 22.284018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808647, 43.481411, 22.275282>,  <36.574257, 43.430088, 22.270041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808647, 43.481411, 22.275282>,  <37.199295, 43.566948, 22.284018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808647, 43.481411, 22.275282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058017, 0.360064, -0.931122,
		0.206975, -0.908089, -0.364054,
		-0.976624, -0.213841, -0.021840,
		36.515659, 43.417259, 22.268730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979412, 43.105183, 21.667065>,  <37.199295, 43.566948, 22.284018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979412, 43.105183, 21.667065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707516, 43.366539, 21.800350>,  <36.544376, 43.523354, 21.880322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707516, 43.366539, 21.800350>,  <36.979412, 43.105183, 21.667065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707516, 43.366539, 21.800350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065842, 0.506839, -0.859523,
		-0.730488, -0.562316, -0.387542,
		-0.679745, 0.653387, 0.333215,
		36.503593, 43.562553, 21.900314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648129, 42.979439, 21.033266>,  <36.979412, 43.105183, 21.667065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648129, 42.979439, 21.033266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811256, 42.775841, 20.730055>,  <36.909134, 42.653683, 20.548128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811256, 42.775841, 20.730055>,  <36.648129, 42.979439, 21.033266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811256, 42.775841, 20.730055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676448, -0.389192, 0.625258,
		-0.613271, -0.767760, 0.185588,
		0.407819, -0.508993, -0.758030,
		36.933601, 42.623142, 20.502645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818596, 42.227890, 21.261528>,  <36.648129, 42.979439, 21.033266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818596, 42.227890, 21.261528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036091, 42.310783, 20.936220>,  <37.166588, 42.360519, 20.741035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036091, 42.310783, 20.936220>,  <36.818596, 42.227890, 21.261528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036091, 42.310783, 20.936220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815006, -0.361653, 0.452739,
		-0.200298, -0.908989, -0.365540,
		0.543733, 0.207235, -0.813270,
		37.199211, 42.372955, 20.692240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163528, 41.670849, 21.071962>,  <36.818596, 42.227890, 21.261528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163528, 41.670849, 21.071962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365517, 41.990505, 20.941496>,  <37.486710, 42.182297, 20.863216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365517, 41.990505, 20.941496>,  <37.163528, 41.670849, 21.071962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365517, 41.990505, 20.941496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794884, -0.283278, 0.536575,
		0.336401, -0.530220, -0.778268,
		0.504969, 0.799138, -0.326168,
		37.517006, 42.230247, 20.843645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728058, 41.360847, 20.805511>,  <37.163528, 41.670849, 21.071962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728058, 41.360847, 20.805511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850159, 41.735535, 20.874063>,  <37.923420, 41.960346, 20.915195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850159, 41.735535, 20.874063>,  <37.728058, 41.360847, 20.805511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850159, 41.735535, 20.874063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810685, -0.350046, 0.469317,
		0.499611, -0.004324, -0.866239,
		0.305253, 0.936723, 0.171382,
		37.941734, 42.016552, 20.925478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370396, 41.338337, 20.652451>,  <37.728058, 41.360847, 20.805511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370396, 41.338337, 20.652451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359077, 41.683636, 20.854046>,  <38.352287, 41.890816, 20.975004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359077, 41.683636, 20.854046>,  <38.370396, 41.338337, 20.652451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359077, 41.683636, 20.854046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777709, -0.297742, 0.553641,
		0.627988, 0.407622, -0.662929,
		-0.028294, 0.863246, 0.503990,
		38.350590, 41.942608, 21.005243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006222, 41.490162, 20.789948>,  <38.370396, 41.338337, 20.652451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006222, 41.490162, 20.789948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800907, 41.708374, 21.054956>,  <38.677719, 41.839302, 21.213963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800907, 41.708374, 21.054956>,  <39.006222, 41.490162, 20.789948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800907, 41.708374, 21.054956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633003, -0.280633, 0.721493,
		0.579521, 0.789710, -0.201277,
		-0.513285, 0.545530, 0.662522,
		38.646923, 41.872032, 21.253714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521465, 41.879272, 21.081718>,  <39.006222, 41.490162, 20.789948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521465, 41.879272, 21.081718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212284, 41.886238, 21.335409>,  <39.026775, 41.890419, 21.487623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212284, 41.886238, 21.335409>,  <39.521465, 41.879272, 21.081718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212284, 41.886238, 21.335409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622785, -0.170085, 0.763682,
		0.121174, 0.985276, 0.120619,
		-0.772952, 0.017419, 0.634225,
		38.980400, 41.891464, 21.525677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781925, 42.214417, 21.691198>,  <39.521465, 41.879272, 21.081718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781925, 42.214417, 21.691198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456589, 42.026505, 21.828474>,  <39.261387, 41.913757, 21.910839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456589, 42.026505, 21.828474>,  <39.781925, 42.214417, 21.691198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456589, 42.026505, 21.828474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494925, -0.248633, 0.832605,
		-0.305816, 0.847045, 0.434731,
		-0.813342, -0.469783, 0.343188,
		39.212585, 41.885571, 21.931431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827621, 42.438164, 22.411816>,  <39.781925, 42.214417, 21.691198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827621, 42.438164, 22.411816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576668, 42.127789, 22.385544>,  <39.426098, 41.941563, 22.369781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576668, 42.127789, 22.385544>,  <39.827621, 42.438164, 22.411816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576668, 42.127789, 22.385544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317714, -0.332062, 0.888140,
		-0.710951, 0.536336, 0.454855,
		-0.627381, -0.775938, -0.065678,
		39.388454, 41.895008, 22.365841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481750, 42.362309, 23.128504>,  <39.827621, 42.438164, 22.411816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481750, 42.362309, 23.128504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444725, 42.016911, 22.930189>,  <39.422508, 41.809669, 22.811201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444725, 42.016911, 22.930189>,  <39.481750, 42.362309, 23.128504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444725, 42.016911, 22.930189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188341, -0.504120, 0.842847,
		-0.977732, -0.015361, 0.209295,
		-0.092563, -0.863497, -0.495787,
		39.416958, 41.757862, 22.781452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968174, 41.893219, 23.446953>,  <39.481750, 42.362309, 23.128504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968174, 41.893219, 23.446953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211098, 41.668388, 23.222368>,  <39.356853, 41.533489, 23.087618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211098, 41.668388, 23.222368>,  <38.968174, 41.893219, 23.446953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211098, 41.668388, 23.222368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396486, -0.397988, 0.827287,
		-0.688456, -0.725033, -0.018846,
		0.607311, -0.562079, -0.561463,
		39.393291, 41.499763, 23.053930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904720, 41.281425, 23.724760>,  <38.968174, 41.893219, 23.446953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904720, 41.281425, 23.724760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262268, 41.258015, 23.546961>,  <39.476795, 41.243969, 23.440281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262268, 41.258015, 23.546961>,  <38.904720, 41.281425, 23.724760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262268, 41.258015, 23.546961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326796, -0.593694, 0.735345,
		-0.306932, -0.802560, -0.511557,
		0.893866, -0.058526, -0.444497,
		39.530430, 41.240456, 23.413612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036640, 40.503838, 23.634617>,  <38.904720, 41.281425, 23.724760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036640, 40.503838, 23.634617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368965, 40.726006, 23.620445>,  <39.568359, 40.859306, 23.611942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368965, 40.726006, 23.620445>,  <39.036640, 40.503838, 23.634617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368965, 40.726006, 23.620445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416073, -0.577568, 0.702351,
		0.369640, -0.598263, -0.710948,
		0.830812, 0.555424, -0.035429,
		39.618210, 40.892632, 23.609816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406044, 40.015701, 23.641180>,  <39.036640, 40.503838, 23.634617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406044, 40.015701, 23.641180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633087, 40.327366, 23.747562>,  <39.769314, 40.514362, 23.811392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633087, 40.327366, 23.747562>,  <39.406044, 40.015701, 23.641180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633087, 40.327366, 23.747562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507614, -0.585533, 0.632044,
		0.648189, -0.223750, -0.727865,
		0.567608, 0.779158, 0.265957,
		39.803371, 40.561111, 23.827349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031590, 39.703609, 23.788977>,  <39.406044, 40.015701, 23.641180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031590, 39.703609, 23.788977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059456, 40.063175, 23.961998>,  <40.076176, 40.278915, 24.065811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059456, 40.063175, 23.961998>,  <40.031590, 39.703609, 23.788977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059456, 40.063175, 23.961998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564702, -0.392981, 0.725725,
		0.822349, 0.193702, -0.534997,
		0.069669, 0.898913, 0.432552,
		40.080357, 40.332848, 24.091763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788837, 39.731972, 24.026283>,  <40.031590, 39.703609, 23.788977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788837, 39.731972, 24.026283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575115, 39.996811, 24.236481>,  <40.446884, 40.155716, 24.362598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575115, 39.996811, 24.236481>,  <40.788837, 39.731972, 24.026283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575115, 39.996811, 24.236481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327234, -0.411183, 0.850792,
		0.779384, 0.626540, 0.003035,
		-0.534303, 0.662100, 0.525494,
		40.414825, 40.195442, 24.394129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295361, 40.059502, 24.484842>,  <40.788837, 39.731972, 24.026283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295361, 40.059502, 24.484842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921406, 40.069885, 24.626440>,  <40.697033, 40.076115, 24.711399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921406, 40.069885, 24.626440>,  <41.295361, 40.059502, 24.484842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921406, 40.069885, 24.626440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299074, -0.479497, 0.825008,
		0.191154, 0.877160, 0.440512,
		-0.934888, 0.025957, 0.353994,
		40.640938, 40.077671, 24.732637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269783, 40.123905, 25.299234>,  <41.295361, 40.059502, 24.484842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269783, 40.123905, 25.299234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904770, 39.977467, 25.226284>,  <40.685760, 39.889603, 25.182514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904770, 39.977467, 25.226284>,  <41.269783, 40.123905, 25.299234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904770, 39.977467, 25.226284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076504, -0.590805, 0.803179,
		-0.401787, 0.718974, 0.567136,
		-0.912532, -0.366095, -0.182374,
		40.631012, 39.867638, 25.171572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020168, 40.107471, 25.912558>,  <41.269783, 40.123905, 25.299234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020168, 40.107471, 25.912558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765160, 39.864960, 25.722404>,  <40.612152, 39.719452, 25.608313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765160, 39.864960, 25.722404>,  <41.020168, 40.107471, 25.912558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765160, 39.864960, 25.722404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026678, -0.599292, 0.800086,
		-0.769967, 0.522757, 0.365890,
		-0.637525, -0.606278, -0.475382,
		40.573902, 39.683075, 25.579790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397236, 39.908737, 26.364237>,  <41.020168, 40.107471, 25.912558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397236, 39.908737, 26.364237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418415, 39.603489, 26.106602>,  <40.431122, 39.420341, 25.952021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.418415, 39.603489, 26.106602>,  <40.397236, 39.908737, 26.364237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418415, 39.603489, 26.106602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048681, -0.646197, 0.761616,
		-0.997410, -0.008968, -0.071361,
		0.052944, -0.763118, -0.644087,
		40.434299, 39.374554, 25.913376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852280, 39.527370, 26.594345>,  <40.397236, 39.908737, 26.364237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852280, 39.527370, 26.594345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084450, 39.300339, 26.360781>,  <40.223751, 39.164120, 26.220642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084450, 39.300339, 26.360781>,  <39.852280, 39.527370, 26.594345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084450, 39.300339, 26.360781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022667, -0.705522, 0.708325,
		-0.813995, -0.424368, -0.396641,
		0.580429, -0.567583, -0.583911,
		40.258579, 39.130062, 26.185608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562016, 38.929569, 26.749159>,  <39.852280, 39.527370, 26.594345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562016, 38.929569, 26.749159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925159, 38.866642, 26.593699>,  <40.143044, 38.828888, 26.500423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925159, 38.866642, 26.593699>,  <39.562016, 38.929569, 26.749159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925159, 38.866642, 26.593699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190985, -0.670035, 0.717341,
		-0.373258, -0.725469, -0.578250,
		0.907857, -0.157316, -0.388649,
		40.197517, 38.819447, 26.477104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578846, 38.170692, 26.785284>,  <39.562016, 38.929569, 26.749159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578846, 38.170692, 26.785284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945427, 38.329811, 26.767933>,  <40.165375, 38.425282, 26.757523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945427, 38.329811, 26.767933>,  <39.578846, 38.170692, 26.785284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945427, 38.329811, 26.767933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311420, -0.640950, 0.701570,
		0.251278, -0.656462, -0.711279,
		0.916448, 0.397795, -0.043379,
		40.220360, 38.449150, 26.754919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007290, 37.564129, 26.819469>,  <39.578846, 38.170692, 26.785284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007290, 37.564129, 26.819469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255146, 37.865597, 26.907133>,  <40.403862, 38.046478, 26.959730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.255146, 37.865597, 26.907133>,  <40.007290, 37.564129, 26.819469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255146, 37.865597, 26.907133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274393, -0.469614, 0.839149,
		0.735357, -0.459838, -0.497794,
		0.619644, 0.753666, 0.219158,
		40.441040, 38.091698, 26.972881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611923, 37.278980, 27.134748>,  <40.007290, 37.564129, 26.819469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611923, 37.278980, 27.134748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638416, 37.658531, 27.258192>,  <40.654312, 37.886261, 27.332258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638416, 37.658531, 27.258192>,  <40.611923, 37.278980, 27.134748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638416, 37.658531, 27.258192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532549, -0.295168, 0.793264,
		0.843804, 0.111811, -0.524875,
		0.066231, 0.948881, 0.308609,
		40.658287, 37.943195, 27.350775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324478, 37.355377, 27.359932>,  <40.611923, 37.278980, 27.134748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.324478, 37.355377, 27.359932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096893, 37.641640, 27.521975>,  <40.960342, 37.813396, 27.619200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096893, 37.641640, 27.521975>,  <41.324478, 37.355377, 27.359932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096893, 37.641640, 27.521975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317285, -0.263435, 0.911006,
		0.758688, 0.646866, -0.077182,
		-0.568966, 0.715658, 0.405105,
		40.926205, 37.856339, 27.643507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724628, 37.592064, 27.810295>,  <41.324478, 37.355377, 27.359932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724628, 37.592064, 27.810295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352909, 37.675720, 27.932062>,  <41.129879, 37.725914, 28.005121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352909, 37.675720, 27.932062>,  <41.724628, 37.592064, 27.810295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352909, 37.675720, 27.932062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213408, -0.368648, 0.904741,
		0.301437, 0.905737, 0.297952,
		-0.929297, 0.209137, 0.304416,
		41.074120, 37.738461, 28.023386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766666, 38.007221, 28.425119>,  <41.724628, 37.592064, 27.810295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766666, 38.007221, 28.425119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423038, 37.802479, 28.425165>,  <41.216862, 37.679634, 28.425194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.423038, 37.802479, 28.425165>,  <41.766666, 38.007221, 28.425119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423038, 37.802479, 28.425165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219941, -0.368930, 0.903059,
		-0.462196, 0.775816, 0.429516,
		-0.859070, -0.511859, 0.000116,
		41.165318, 37.648922, 28.425200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563148, 38.031521, 29.081118>,  <41.766666, 38.007221, 28.425119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563148, 38.031521, 29.081118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338196, 37.723999, 28.959349>,  <41.203224, 37.539486, 28.886288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338196, 37.723999, 28.959349>,  <41.563148, 38.031521, 29.081118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338196, 37.723999, 28.959349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065795, -0.408596, 0.910341,
		-0.824256, 0.491930, 0.280370,
		-0.562382, -0.768800, -0.304421,
		41.169479, 37.493359, 28.868023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225674, 37.838982, 29.586370>,  <41.563148, 38.031521, 29.081118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225674, 37.838982, 29.586370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169090, 37.502068, 29.378313>,  <41.135139, 37.299919, 29.253479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169090, 37.502068, 29.378313>,  <41.225674, 37.838982, 29.586370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169090, 37.502068, 29.378313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160900, -0.538002, 0.827445,
		-0.976781, 0.033357, 0.211627,
		-0.141457, -0.842283, -0.520143,
		41.126652, 37.249382, 29.222271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845257, 37.517204, 30.099134>,  <41.225674, 37.838982, 29.586370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845257, 37.517204, 30.099134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971821, 37.250816, 29.828913>,  <41.047760, 37.090984, 29.666780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971821, 37.250816, 29.828913>,  <40.845257, 37.517204, 30.099134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971821, 37.250816, 29.828913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055321, -0.697974, 0.713983,
		-0.947009, -0.263283, -0.184003,
		0.316409, -0.665968, -0.675553,
		41.066742, 37.051025, 29.626247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436596, 36.993622, 30.058445>,  <40.845257, 37.517204, 30.099134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436596, 36.993622, 30.058445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760277, 36.813629, 29.907337>,  <40.954487, 36.705635, 29.816673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.760277, 36.813629, 29.907337>,  <40.436596, 36.993622, 30.058445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760277, 36.813629, 29.907337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052039, -0.695343, 0.716792,
		-0.585221, -0.560371, -0.586090,
		0.809203, -0.449981, -0.377768,
		41.003036, 36.678635, 29.794006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344913, 36.197983, 30.162647>,  <40.436596, 36.993622, 30.058445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344913, 36.197983, 30.162647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734943, 36.261574, 30.100744>,  <40.968964, 36.299728, 30.063602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734943, 36.261574, 30.100744>,  <40.344913, 36.197983, 30.162647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734943, 36.261574, 30.100744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221796, -0.716000, 0.661930,
		-0.005571, -0.679757, -0.733416,
		0.975077, 0.158981, -0.154756,
		41.027466, 36.309269, 30.054317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600895, 35.575516, 30.180305>,  <40.344913, 36.197983, 30.162647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600895, 35.575516, 30.180305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930912, 35.797768, 30.221457>,  <41.128922, 35.931118, 30.246147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.930912, 35.797768, 30.221457>,  <40.600895, 35.575516, 30.180305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.930912, 35.797768, 30.221457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295767, -0.579749, 0.759218,
		0.481491, -0.595956, -0.642653,
		0.825038, 0.555632, 0.102880,
		41.178425, 35.964458, 30.252321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985443, 35.111988, 30.218735>,  <40.600895, 35.575516, 30.180305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985443, 35.111988, 30.218735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196499, 35.424641, 30.351789>,  <41.323132, 35.612232, 30.431622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196499, 35.424641, 30.351789>,  <40.985443, 35.111988, 30.218735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196499, 35.424641, 30.351789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333697, -0.550825, 0.765008,
		0.781180, -0.292649, -0.551466,
		0.527641, 0.781631, 0.332637,
		41.354790, 35.659130, 30.451580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716625, 34.854858, 30.344267>,  <40.985443, 35.111988, 30.218735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716625, 34.854858, 30.344267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607792, 35.164703, 30.572634>,  <41.542492, 35.350609, 30.709654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.607792, 35.164703, 30.572634>,  <41.716625, 34.854858, 30.344267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607792, 35.164703, 30.572634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140623, -0.554925, 0.819929,
		0.951942, 0.303376, 0.042060,
		-0.272087, 0.774610, 0.570918,
		41.526165, 35.397087, 30.743910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214119, 34.875488, 30.860735>,  <41.716625, 34.854858, 30.344267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214119, 34.875488, 30.860735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917316, 35.102203, 31.003941>,  <41.739235, 35.238232, 31.089865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.917316, 35.102203, 31.003941>,  <42.214119, 34.875488, 30.860735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917316, 35.102203, 31.003941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137828, -0.393652, 0.908868,
		0.656072, 0.723730, 0.213973,
		-0.742006, 0.566792, 0.358014,
		41.694714, 35.272240, 31.111345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504944, 35.136303, 31.349951>,  <42.214119, 34.875488, 30.860735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504944, 35.136303, 31.349951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121616, 35.200291, 31.444632>,  <41.891621, 35.238686, 31.501440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121616, 35.200291, 31.444632>,  <42.504944, 35.136303, 31.349951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121616, 35.200291, 31.444632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164850, -0.367037, 0.915483,
		0.233329, 0.916348, 0.325368,
		-0.958323, 0.159972, 0.236700,
		41.834118, 35.248283, 31.515642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443275, 35.415840, 32.025917>,  <42.504944, 35.136303, 31.349951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443275, 35.415840, 32.025917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076275, 35.266628, 31.970720>,  <41.856075, 35.177101, 31.937603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076275, 35.266628, 31.970720>,  <42.443275, 35.415840, 32.025917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076275, 35.266628, 31.970720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004867, -0.336387, 0.941711,
		-0.397701, 0.864693, 0.306820,
		-0.917502, -0.373027, -0.137990,
		41.801025, 35.154720, 31.929323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163876, 35.667141, 32.623455>,  <42.443275, 35.415840, 32.025917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163876, 35.667141, 32.623455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960506, 35.356781, 32.474064>,  <41.838486, 35.170567, 32.384430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.960506, 35.356781, 32.474064>,  <42.163876, 35.667141, 32.623455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960506, 35.356781, 32.474064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027895, -0.448326, 0.893435,
		-0.860655, 0.443826, 0.249584,
		-0.508424, -0.775901, -0.373473,
		41.807980, 35.124012, 32.362022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571045, 35.505711, 33.029625>,  <42.163876, 35.667141, 32.623455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571045, 35.505711, 33.029625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625034, 35.163673, 32.829388>,  <41.657429, 34.958450, 32.709244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625034, 35.163673, 32.829388>,  <41.571045, 35.505711, 33.029625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625034, 35.163673, 32.829388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115205, -0.488250, 0.865066,
		-0.984128, -0.174436, 0.032609,
		0.134977, -0.855093, -0.500597,
		41.665527, 34.907146, 32.679207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199833, 34.981224, 33.437428>,  <41.571045, 35.505711, 33.029625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199833, 34.981224, 33.437428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496616, 34.814789, 33.227146>,  <41.674686, 34.714928, 33.100975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496616, 34.814789, 33.227146>,  <41.199833, 34.981224, 33.437428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496616, 34.814789, 33.227146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294060, -0.502704, 0.812907,
		-0.602518, -0.757732, -0.250630,
		0.741958, -0.416091, -0.525707,
		41.719204, 34.689960, 33.069435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292637, 34.348454, 33.781094>,  <41.199833, 34.981224, 33.437428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292637, 34.348454, 33.781094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627434, 34.371788, 33.563457>,  <41.828312, 34.385788, 33.432877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627434, 34.371788, 33.563457>,  <41.292637, 34.348454, 33.781094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627434, 34.371788, 33.563457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484872, -0.539960, 0.687999,
		-0.253653, -0.839666, -0.480230,
		0.836994, 0.058337, -0.544093,
		41.878532, 34.389290, 33.400230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533070, 33.686523, 33.843704>,  <41.292637, 34.348454, 33.781094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533070, 33.686523, 33.843704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833698, 33.918560, 33.718079>,  <42.014076, 34.057781, 33.642704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.833698, 33.918560, 33.718079>,  <41.533070, 33.686523, 33.843704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833698, 33.918560, 33.718079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627679, -0.482445, 0.610955,
		0.202891, -0.656307, -0.726703,
		0.751568, 0.580093, -0.314067,
		42.059170, 34.092587, 33.623859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122684, 33.223511, 33.939861>,  <41.533070, 33.686523, 33.843704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122684, 33.223511, 33.939861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287197, 33.582981, 33.878902>,  <42.385906, 33.798664, 33.842327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287197, 33.582981, 33.878902>,  <42.122684, 33.223511, 33.939861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287197, 33.582981, 33.878902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705604, -0.208052, 0.677375,
		0.577034, -0.386128, -0.719678,
		0.411284, 0.898677, -0.152400,
		42.410583, 33.852585, 33.833183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849514, 33.161774, 33.883907>,  <42.122684, 33.223511, 33.939861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849514, 33.161774, 33.883907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761360, 33.537113, 33.990433>,  <42.708466, 33.762318, 34.054348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761360, 33.537113, 33.990433>,  <42.849514, 33.161774, 33.883907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761360, 33.537113, 33.990433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569398, -0.097919, 0.816210,
		0.791970, 0.331523, -0.512715,
		-0.220388, 0.938352, 0.266318,
		42.695244, 33.818619, 34.070328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398750, 33.287388, 34.224819>,  <42.849514, 33.161774, 33.883907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398750, 33.287388, 34.224819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167690, 33.594704, 34.335133>,  <43.029057, 33.779095, 34.401321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167690, 33.594704, 34.335133>,  <43.398750, 33.287388, 34.224819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167690, 33.594704, 34.335133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602197, 0.173001, 0.779378,
		0.551076, 0.616282, -0.562594,
		-0.577646, 0.768289, 0.275786,
		42.994396, 33.825191, 34.417870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.808914, 33.887016, 34.337547>,  <43.398750, 33.287388, 34.224819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.808914, 33.887016, 34.337547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475510, 33.872524, 34.558075>,  <43.275467, 33.863831, 34.690392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.475510, 33.872524, 34.558075>,  <43.808914, 33.887016, 34.337547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.475510, 33.872524, 34.558075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549990, -0.149488, 0.821684,
		0.052647, 0.988100, 0.144525,
		-0.833510, -0.036228, 0.551315,
		43.225456, 33.861656, 34.723469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986759, 34.151855, 34.997807>,  <43.808914, 33.887016, 34.337547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986759, 34.151855, 34.997807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642742, 33.966839, 35.083946>,  <43.436333, 33.855827, 35.135632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.642742, 33.966839, 35.083946>,  <43.986759, 34.151855, 34.997807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642742, 33.966839, 35.083946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332878, -0.188806, 0.923875,
		-0.386674, 0.866259, 0.316353,
		-0.860044, -0.462545, 0.215352,
		43.384727, 33.828075, 35.148552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901279, 34.488838, 35.589443>,  <43.986759, 34.151855, 34.997807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901279, 34.488838, 35.589443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690392, 34.149902, 35.563957>,  <43.563858, 33.946541, 35.548664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.690392, 34.149902, 35.563957>,  <43.901279, 34.488838, 35.589443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690392, 34.149902, 35.563957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361684, -0.291629, 0.885515,
		-0.768909, 0.443819, 0.460221,
		-0.527223, -0.847335, -0.063714,
		43.532227, 33.895702, 35.544842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593143, 34.428322, 36.205589>,  <43.901279, 34.488838, 35.589443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593143, 34.428322, 36.205589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586220, 34.048641, 36.079910>,  <43.582066, 33.820835, 36.004501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.586220, 34.048641, 36.079910>,  <43.593143, 34.428322, 36.205589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586220, 34.048641, 36.079910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227891, -0.309720, 0.923114,
		-0.973533, -0.055622, 0.221676,
		-0.017312, -0.949200, -0.314198,
		43.581028, 33.763882, 35.985649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.228695, 34.035454, 36.781048>,  <43.593143, 34.428322, 36.205589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.228695, 34.035454, 36.781048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442303, 33.785225, 36.553547>,  <43.570469, 33.635086, 36.417046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.442303, 33.785225, 36.553547>,  <43.228695, 34.035454, 36.781048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442303, 33.785225, 36.553547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539232, -0.266115, 0.799007,
		-0.651191, -0.733375, 0.195218,
		0.534021, -0.625574, -0.568751,
		43.602509, 33.597553, 36.382923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275005, 33.426075, 37.191200>,  <43.228695, 34.035454, 36.781048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275005, 33.426075, 37.191200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544796, 33.367962, 36.901657>,  <43.706669, 33.333096, 36.727932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544796, 33.367962, 36.901657>,  <43.275005, 33.426075, 37.191200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544796, 33.367962, 36.901657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624336, -0.411073, 0.664247,
		-0.394057, -0.899952, -0.186561,
		0.674481, -0.145275, -0.723858,
		43.747139, 33.324375, 36.684498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.554108, 32.756149, 37.231373>,  <43.275005, 33.426075, 37.191200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.554108, 32.756149, 37.231373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842430, 32.925045, 37.011501>,  <44.015423, 33.026382, 36.879578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842430, 32.925045, 37.011501>,  <43.554108, 32.756149, 37.231373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842430, 32.925045, 37.011501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691308, -0.380378, 0.614334,
		0.050313, -0.822814, -0.566079,
		0.720806, 0.422244, -0.549680,
		44.058674, 33.051720, 36.846596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064049, 32.198872, 37.029961>,  <43.554108, 32.756149, 37.231373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064049, 32.198872, 37.029961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229420, 32.562607, 37.048649>,  <44.328644, 32.780849, 37.059860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229420, 32.562607, 37.048649>,  <44.064049, 32.198872, 37.029961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229420, 32.562607, 37.048649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421072, -0.236428, 0.875671,
		0.807325, -0.342358, -0.480643,
		0.413430, 0.909337, 0.046717,
		44.353447, 32.835407, 37.062664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696644, 32.078991, 37.279774>,  <44.064049, 32.198872, 37.029961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696644, 32.078991, 37.279774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611031, 32.460583, 37.363777>,  <44.559662, 32.689537, 37.414181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611031, 32.460583, 37.363777>,  <44.696644, 32.078991, 37.279774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611031, 32.460583, 37.363777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417601, -0.104995, 0.902544,
		0.883062, 0.280877, -0.375912,
		-0.214035, 0.953983, 0.210011,
		44.546822, 32.746777, 37.426781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.396458, 32.411018, 37.545345>,  <44.696644, 32.078991, 37.279774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.396458, 32.411018, 37.545345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072983, 32.628571, 37.634983>,  <44.878899, 32.759102, 37.688766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.072983, 32.628571, 37.634983>,  <45.396458, 32.411018, 37.545345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.072983, 32.628571, 37.634983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271476, 0.007115, 0.962419,
		0.521846, 0.839133, -0.153405,
		-0.808689, 0.543880, 0.224092,
		44.830376, 32.791733, 37.702209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.685551, 32.939060, 38.142509>,  <45.396458, 32.411018, 37.545345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.685551, 32.939060, 38.142509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295933, 32.863613, 38.192554>,  <45.062160, 32.818344, 38.222580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.295933, 32.863613, 38.192554>,  <45.685551, 32.939060, 38.142509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295933, 32.863613, 38.192554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184249, -0.339701, 0.922310,
		-0.131465, 0.921426, 0.365638,
		-0.974048, -0.188620, 0.125113,
		45.003719, 32.807026, 38.230087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.524189, 33.189873, 38.726974>,  <45.685551, 32.939060, 38.142509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.524189, 33.189873, 38.726974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239670, 32.912537, 38.680798>,  <45.068958, 32.746136, 38.653091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239670, 32.912537, 38.680798>,  <45.524189, 33.189873, 38.726974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239670, 32.912537, 38.680798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232262, -0.386860, 0.892409,
		-0.663406, 0.607958, 0.436211,
		-0.711300, -0.693345, -0.115440,
		45.026279, 32.704533, 38.646164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.190865, 33.163914, 39.404705>,  <45.524189, 33.189873, 38.726974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.190865, 33.163914, 39.404705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130989, 32.822128, 39.205711>,  <45.095062, 32.617058, 39.086315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.130989, 32.822128, 39.205711>,  <45.190865, 33.163914, 39.404705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.130989, 32.822128, 39.205711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233604, -0.519474, 0.821934,
		-0.960740, 0.006822, 0.277366,
		-0.149692, -0.854459, -0.497486,
		45.086082, 32.565792, 39.056465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704319, 32.785847, 39.752224>,  <45.190865, 33.163914, 39.404705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.704319, 32.785847, 39.752224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.933971, 32.520645, 39.560062>,  <45.071762, 32.361523, 39.444763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.933971, 32.520645, 39.560062>,  <44.704319, 32.785847, 39.752224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.933971, 32.520645, 39.560062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234108, -0.429318, 0.872284,
		-0.784578, -0.613276, -0.091271,
		0.574135, -0.663007, -0.480406,
		45.106213, 32.321743, 39.415939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525532, 32.058125, 39.874992>,  <44.704319, 32.785847, 39.752224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525532, 32.058125, 39.874992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922218, 32.100750, 39.846321>,  <45.160233, 32.126324, 39.829121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922218, 32.100750, 39.846321>,  <44.525532, 32.058125, 39.874992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922218, 32.100750, 39.846321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101543, -0.308972, 0.945635,
		0.078623, -0.945082, -0.317234,
		0.991719, 0.106562, -0.071674,
		45.219734, 32.132717, 39.824818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.059288, 31.463099, 40.094788>,  <44.525532, 32.058125, 39.874992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.059288, 31.463099, 40.094788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205151, 31.829096, 40.163853>,  <45.292667, 32.048695, 40.205292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205151, 31.829096, 40.163853>,  <45.059288, 31.463099, 40.094788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205151, 31.829096, 40.163853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125678, -0.232100, 0.964538,
		0.922623, -0.330021, -0.199631,
		0.364653, 0.914995, 0.172665,
		45.314545, 32.103596, 40.215652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.682205, 31.409567, 40.356274>,  <45.059288, 31.463099, 40.094788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.682205, 31.409567, 40.356274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.499447, 31.739870, 40.488560>,  <45.389793, 31.938051, 40.567932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.499447, 31.739870, 40.488560>,  <45.682205, 31.409567, 40.356274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.499447, 31.739870, 40.488560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071018, -0.336740, 0.938916,
		0.886680, 0.452474, 0.095212,
		-0.456897, 0.825756, 0.330715,
		45.362377, 31.987597, 40.587772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.971046, 31.748981, 39.703342>,  <45.682205, 31.409567, 40.356274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.971046, 31.748981, 39.703342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653217, 31.513269, 39.644833>,  <45.462521, 31.371841, 39.609726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653217, 31.513269, 39.644833>,  <45.971046, 31.748981, 39.703342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653217, 31.513269, 39.644833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361276, 0.652493, -0.666132,
		0.487983, -0.476447, -0.731349,
		-0.794577, -0.589280, -0.146277,
		45.414845, 31.336485, 39.600948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.932968, 31.512413, 39.007160>,  <45.971046, 31.748981, 39.703342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.932968, 31.512413, 39.007160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571938, 31.547314, 39.175797>,  <45.355320, 31.568254, 39.276978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571938, 31.547314, 39.175797>,  <45.932968, 31.512413, 39.007160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571938, 31.547314, 39.175797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285125, 0.612572, -0.737197,
		-0.322578, -0.785584, -0.528016,
		-0.902578, 0.087253, 0.421592,
		45.301163, 31.573490, 39.302273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385834, 31.471657, 38.523190>,  <45.932968, 31.512413, 39.007160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385834, 31.471657, 38.523190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228756, 31.668667, 38.833858>,  <45.134510, 31.786873, 39.020260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.228756, 31.668667, 38.833858>,  <45.385834, 31.471657, 38.523190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.228756, 31.668667, 38.833858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397862, 0.670412, -0.626301,
		-0.829157, -0.554949, -0.067308,
		-0.392689, 0.492523, 0.776670,
		45.110950, 31.816423, 39.066860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596935, 31.465776, 38.454025>,  <45.385834, 31.471657, 38.523190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596935, 31.465776, 38.454025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727425, 31.790041, 38.648510>,  <44.805717, 31.984600, 38.765202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727425, 31.790041, 38.648510>,  <44.596935, 31.465776, 38.454025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727425, 31.790041, 38.648510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414991, 0.584954, -0.696858,
		-0.849328, 0.025560, 0.527246,
		0.326227, 0.810663, 0.486211,
		44.825294, 32.033241, 38.794373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050541, 31.906963, 38.518646>,  <44.596935, 31.465776, 38.454025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050541, 31.906963, 38.518646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379349, 32.134090, 38.535900>,  <44.576633, 32.270367, 38.546253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379349, 32.134090, 38.535900>,  <44.050541, 31.906963, 38.518646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.379349, 32.134090, 38.535900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337424, 0.546706, -0.766327,
		-0.458718, 0.615383, 0.641000,
		0.822024, 0.567817, 0.043139,
		44.625957, 32.304436, 38.548843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759785, 32.571804, 38.456470>,  <44.050541, 31.906963, 38.518646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759785, 32.571804, 38.456470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148140, 32.622154, 38.374947>,  <44.381153, 32.652363, 38.326031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148140, 32.622154, 38.374947>,  <43.759785, 32.571804, 38.456470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148140, 32.622154, 38.374947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239473, 0.531037, -0.812805,
		0.005919, 0.837947, 0.545719,
		0.970885, 0.125874, -0.203809,
		44.439407, 32.659916, 38.313805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859116, 33.311893, 38.412579>,  <43.759785, 32.571804, 38.456470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859116, 33.311893, 38.412579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125965, 33.096497, 38.206676>,  <44.286076, 32.967258, 38.083138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125965, 33.096497, 38.206676>,  <43.859116, 33.311893, 38.412579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125965, 33.096497, 38.206676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267830, 0.471409, -0.840262,
		0.695133, 0.698427, 0.170266,
		0.667127, -0.538491, -0.514752,
		44.326103, 32.934948, 38.052250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181408, 33.731441, 38.068214>,  <43.859116, 33.311893, 38.412579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.181408, 33.731441, 38.068214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.280506, 33.408951, 37.853317>,  <44.339966, 33.215458, 37.724380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.280506, 33.408951, 37.853317>,  <44.181408, 33.731441, 38.068214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.280506, 33.408951, 37.853317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058373, 0.565943, -0.822375,
		0.967066, 0.172378, 0.187270,
		0.247743, -0.806222, -0.537242,
		44.354828, 33.167084, 37.692146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591381, 33.933758, 37.546204>,  <44.181408, 33.731441, 38.068214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591381, 33.933758, 37.546204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449432, 33.608322, 37.361965>,  <44.364265, 33.413063, 37.251423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449432, 33.608322, 37.361965>,  <44.591381, 33.933758, 37.546204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449432, 33.608322, 37.361965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002879, 0.491705, -0.870757,
		0.934912, -0.310331, -0.172148,
		-0.354869, -0.813586, -0.460594,
		44.342972, 33.364246, 37.223785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072891, 33.912014, 36.920528>,  <44.591381, 33.933758, 37.546204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072891, 33.912014, 36.920528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839897, 33.591072, 36.972595>,  <44.700100, 33.398506, 37.003838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839897, 33.591072, 36.972595>,  <45.072891, 33.912014, 36.920528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839897, 33.591072, 36.972595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436921, 0.174021, -0.882506,
		0.685427, -0.570921, -0.451929,
		-0.582486, -0.802350, 0.130169,
		44.665150, 33.350368, 37.011646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966465, 33.730659, 36.220108>,  <45.072891, 33.912014, 36.920528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966465, 33.730659, 36.220108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.690311, 33.507217, 36.403992>,  <44.524620, 33.373154, 36.514324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.690311, 33.507217, 36.403992>,  <44.966465, 33.730659, 36.220108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690311, 33.507217, 36.403992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554780, 0.000954, -0.831996,
		0.464316, -0.829435, -0.310560,
		-0.690383, -0.558602, 0.459711,
		44.483196, 33.339638, 36.541904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775074, 33.120255, 35.847572>,  <44.966465, 33.730659, 36.220108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775074, 33.120255, 35.847572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469662, 33.203831, 36.091988>,  <44.286415, 33.253975, 36.238636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469662, 33.203831, 36.091988>,  <44.775074, 33.120255, 35.847572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469662, 33.203831, 36.091988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615513, 0.050799, -0.786488,
		-0.195368, -0.976608, 0.089818,
		-0.763528, 0.208939, 0.611040,
		44.240604, 33.266514, 36.275299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249832, 32.839622, 35.514019>,  <44.775074, 33.120255, 35.847572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.249832, 32.839622, 35.514019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060364, 33.062565, 35.786777>,  <43.946682, 33.196331, 35.950432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060364, 33.062565, 35.786777>,  <44.249832, 32.839622, 35.514019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060364, 33.062565, 35.786777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779300, 0.095441, -0.619341,
		-0.410277, -0.824767, 0.389143,
		-0.473672, 0.557360, 0.681898,
		43.918262, 33.229774, 35.991348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514732, 32.546703, 35.642086>,  <44.249832, 32.839622, 35.514019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514732, 32.546703, 35.642086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516083, 32.935516, 35.736012>,  <43.516891, 33.168804, 35.792366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516083, 32.935516, 35.736012>,  <43.514732, 32.546703, 35.642086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516083, 32.935516, 35.736012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679688, 0.174468, -0.712450,
		-0.733494, -0.157198, 0.661268,
		0.003374, 0.972034, 0.234817,
		43.517094, 33.227127, 35.806458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830204, 32.708920, 35.645458>,  <43.514732, 32.546703, 35.642086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830204, 32.708920, 35.645458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054012, 33.034336, 35.582111>,  <43.188297, 33.229588, 35.544102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054012, 33.034336, 35.582111>,  <42.830204, 32.708920, 35.645458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054012, 33.034336, 35.582111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723409, 0.386113, -0.572360,
		-0.404494, 0.434811, 0.804564,
		0.559522, 0.813545, -0.158366,
		43.221870, 33.278400, 35.534603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326382, 33.156391, 35.390194>,  <42.830204, 32.708920, 35.645458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326382, 33.156391, 35.390194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654148, 33.375225, 35.321774>,  <42.850807, 33.506523, 35.280724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654148, 33.375225, 35.321774>,  <42.326382, 33.156391, 35.390194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654148, 33.375225, 35.321774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517652, 0.578147, -0.630701,
		-0.246153, 0.605351, 0.756941,
		0.819418, 0.547081, -0.171048,
		42.899975, 33.539349, 35.270458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109509, 33.844051, 35.450577>,  <42.326382, 33.156391, 35.390194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109509, 33.844051, 35.450577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444572, 33.830009, 35.232548>,  <42.645611, 33.821587, 35.101730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444572, 33.830009, 35.232548>,  <42.109509, 33.844051, 35.450577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444572, 33.830009, 35.232548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431159, 0.570136, -0.699318,
		0.335311, 0.820800, 0.462443,
		0.837656, -0.035102, -0.545068,
		42.695869, 33.819477, 35.069027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302570, 34.540840, 35.109428>,  <42.109509, 33.844051, 35.450577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302570, 34.540840, 35.109428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436356, 34.227642, 34.899647>,  <42.516624, 34.039722, 34.773777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436356, 34.227642, 34.899647>,  <42.302570, 34.540840, 35.109428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436356, 34.227642, 34.899647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287074, 0.445404, -0.848058,
		0.897622, 0.434197, -0.075809,
		0.334459, -0.782999, -0.524452,
		42.536694, 33.992741, 34.742310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464970, 35.025795, 34.492573>,  <42.302570, 34.540840, 35.109428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464970, 35.025795, 34.492573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523785, 34.649586, 34.370068>,  <42.559074, 34.423859, 34.296566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523785, 34.649586, 34.370068>,  <42.464970, 35.025795, 34.492573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523785, 34.649586, 34.370068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248299, 0.264613, -0.931841,
		0.957458, 0.213062, -0.194623,
		0.147040, -0.940524, -0.306259,
		42.567898, 34.367428, 34.278191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802643, 35.152538, 33.927586>,  <42.464970, 35.025795, 34.492573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802643, 35.152538, 33.927586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674770, 34.774708, 33.897732>,  <42.598045, 34.548008, 33.879818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.674770, 34.774708, 33.897732>,  <42.802643, 35.152538, 33.927586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.674770, 34.774708, 33.897732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335224, 0.186426, -0.923510,
		0.886244, -0.270208, -0.376243,
		-0.319681, -0.944581, -0.074639,
		42.578865, 34.491333, 33.875340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045277, 34.941280, 33.227085>,  <42.802643, 35.152538, 33.927586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045277, 34.941280, 33.227085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763771, 34.688648, 33.357212>,  <42.594868, 34.537071, 33.435287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763771, 34.688648, 33.357212>,  <43.045277, 34.941280, 33.227085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763771, 34.688648, 33.357212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508427, 0.127917, -0.851551,
		0.496207, -0.764687, -0.411135,
		-0.703761, -0.631578, 0.325314,
		42.552643, 34.499176, 33.454807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981480, 34.438992, 32.697269>,  <43.045277, 34.941280, 33.227085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981480, 34.438992, 32.697269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639458, 34.448627, 32.904461>,  <42.434246, 34.454411, 33.028774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.639458, 34.448627, 32.904461>,  <42.981480, 34.438992, 32.697269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639458, 34.448627, 32.904461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515726, 0.064331, -0.854335,
		-0.053907, -0.997638, -0.042581,
		-0.855056, 0.024094, 0.517976,
		42.382942, 34.455856, 33.059853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581799, 34.059311, 32.302734>,  <42.981480, 34.438992, 32.697269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.581799, 34.059311, 32.302734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328873, 34.256660, 32.541649>,  <42.177116, 34.375072, 32.684998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328873, 34.256660, 32.541649>,  <42.581799, 34.059311, 32.302734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328873, 34.256660, 32.541649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649677, 0.082284, -0.755744,
		-0.422013, -0.865915, 0.268505,
		-0.632316, 0.493375, 0.597290,
		42.139179, 34.404675, 32.720837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107822, 33.665932, 31.888567>,  <42.581799, 34.059311, 32.302734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107822, 33.665932, 31.888567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853825, 33.400406, 31.730509>,  <42.701427, 33.241093, 31.635674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853825, 33.400406, 31.730509>,  <43.107822, 33.665932, 31.888567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853825, 33.400406, 31.730509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363631, -0.708129, 0.605249,
		-0.681584, 0.240641, 0.691039,
		-0.634992, -0.663811, -0.395144,
		42.663326, 33.201263, 31.611965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793442, 33.391869, 32.464466>,  <43.107822, 33.665932, 31.888567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793442, 33.391869, 32.464466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783627, 33.132191, 32.160378>,  <42.777737, 32.976383, 31.977922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783627, 33.132191, 32.160378>,  <42.793442, 33.391869, 32.464466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783627, 33.132191, 32.160378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514902, -0.660036, 0.547018,
		-0.856898, -0.378019, 0.350468,
		-0.024538, -0.649195, -0.760226,
		42.776264, 32.937431, 31.932310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252266, 33.054745, 32.939709>,  <42.793442, 33.391869, 32.464466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252266, 33.054745, 32.939709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092098, 33.344963, 33.163586>,  <41.995998, 33.519093, 33.297913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092098, 33.344963, 33.163586>,  <42.252266, 33.054745, 32.939709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092098, 33.344963, 33.163586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289043, -0.679619, 0.674220,
		0.869552, 0.108194, 0.481843,
		-0.400416, 0.725543, 0.559691,
		41.971973, 33.562626, 33.331493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.214245, 32.278610, 32.938812>,  <42.252266, 33.054745, 32.939709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.214245, 32.278610, 32.938812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436703, 31.947527, 32.908855>,  <42.570175, 31.748877, 32.890881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436703, 31.947527, 32.908855>,  <42.214245, 32.278610, 32.938812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436703, 31.947527, 32.908855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828557, 0.559219, -0.027711,
		0.064819, -0.046644, 0.996806,
		0.556141, -0.827707, -0.074896,
		42.603546, 31.699215, 32.886387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809715, 32.295387, 33.436165>,  <42.214245, 32.278610, 32.938812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809715, 32.295387, 33.436165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911034, 32.075459, 33.117786>,  <42.971825, 31.943501, 32.926758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911034, 32.075459, 33.117786>,  <42.809715, 32.295387, 33.436165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911034, 32.075459, 33.117786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843870, 0.527872, -0.096094,
		0.472993, -0.647336, 0.597691,
		0.253299, -0.549825, -0.795947,
		42.987022, 31.910511, 32.879002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558636, 32.096775, 33.496548>,  <42.809715, 32.295387, 33.436165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558636, 32.096775, 33.496548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418137, 32.111031, 33.122307>,  <43.333836, 32.119583, 32.897762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418137, 32.111031, 33.122307>,  <43.558636, 32.096775, 33.496548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418137, 32.111031, 33.122307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794590, 0.539893, -0.277745,
		0.495229, -0.840979, -0.217951,
		-0.351247, 0.035634, -0.935604,
		43.312763, 32.121719, 32.841625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038223, 31.768553, 33.030415>,  <43.558636, 32.096775, 33.496548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038223, 31.768553, 33.030415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816338, 32.054535, 32.860176>,  <43.683205, 32.226124, 32.758034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816338, 32.054535, 32.860176>,  <44.038223, 31.768553, 33.030415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816338, 32.054535, 32.860176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832032, 0.474509, -0.287339,
		-0.003485, -0.513501, -0.858082,
		-0.554716, 0.714953, -0.425596,
		43.649921, 32.269020, 32.732498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436275, 32.052551, 32.414066>,  <44.038223, 31.768553, 33.030415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.436275, 32.052551, 32.414066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170033, 32.331787, 32.519627>,  <44.010288, 32.499329, 32.582962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170033, 32.331787, 32.519627>,  <44.436275, 32.052551, 32.414066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170033, 32.331787, 32.519627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718319, 0.695181, -0.027216,
		-0.202461, 0.171453, -0.964165,
		-0.665603, 0.698088, 0.263905,
		43.970352, 32.541214, 32.598797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432266, 32.592785, 31.873617>,  <44.436275, 32.052551, 32.414066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432266, 32.592785, 31.873617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327225, 32.734333, 32.232685>,  <44.264198, 32.819263, 32.448128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.327225, 32.734333, 32.232685>,  <44.432266, 32.592785, 31.873617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.327225, 32.734333, 32.232685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872834, 0.483715, 0.064655,
		-0.411338, 0.800498, -0.435895,
		-0.262605, 0.353869, 0.897672,
		44.248444, 32.840492, 32.501987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567364, 33.361252, 31.865005>,  <44.432266, 32.592785, 31.873617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567364, 33.361252, 31.865005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573147, 33.186420, 32.224728>,  <44.576614, 33.081520, 32.440559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573147, 33.186420, 32.224728>,  <44.567364, 33.361252, 31.865005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573147, 33.186420, 32.224728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760319, 0.588926, 0.274011,
		-0.649389, 0.679798, 0.340834,
		0.014454, -0.437082, 0.899305,
		44.577484, 33.055294, 32.494518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925663, 33.812263, 32.191761>,  <44.567364, 33.361252, 31.865005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925663, 33.812263, 32.191761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894104, 33.504372, 32.445152>,  <44.875168, 33.319637, 32.597187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.894104, 33.504372, 32.445152>,  <44.925663, 33.812263, 32.191761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894104, 33.504372, 32.445152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798672, 0.331477, 0.502241,
		-0.596572, 0.545568, 0.588606,
		-0.078897, -0.769726, 0.633480,
		44.870434, 33.273453, 32.635197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.815342, 34.085766, 32.832024>,  <44.925663, 33.812263, 32.191761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.815342, 34.085766, 32.832024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987217, 33.725395, 32.856350>,  <45.090343, 33.509174, 32.870945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987217, 33.725395, 32.856350>,  <44.815342, 34.085766, 32.832024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987217, 33.725395, 32.856350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749566, 0.393434, 0.532316,
		-0.503505, -0.183145, 0.844358,
		0.429691, -0.900926, 0.060817,
		45.116123, 33.455116, 32.874596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.860100, 33.824474, 33.513607>,  <44.815342, 34.085766, 32.832024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.860100, 33.824474, 33.513607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154835, 33.672890, 33.289658>,  <45.331676, 33.581940, 33.155289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.154835, 33.672890, 33.289658>,  <44.860100, 33.824474, 33.513607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154835, 33.672890, 33.289658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676030, 0.422181, 0.603943,
		0.007497, -0.823499, 0.567268,
		0.736836, -0.378962, -0.559875,
		45.375885, 33.559200, 33.121696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336388, 33.492565, 33.975899>,  <44.860100, 33.824474, 33.513607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336388, 33.492565, 33.975899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512775, 33.610332, 33.636757>,  <45.618607, 33.680992, 33.433270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512775, 33.610332, 33.636757>,  <45.336388, 33.492565, 33.975899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.512775, 33.610332, 33.636757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752944, 0.392795, 0.528003,
		0.488490, -0.871222, -0.048474,
		0.440968, 0.294422, -0.847858,
		45.645065, 33.698658, 33.382401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.009884, 33.235626, 33.998970>,  <45.336388, 33.492565, 33.975899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.009884, 33.235626, 33.998970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015812, 33.558712, 33.763214>,  <46.019371, 33.752563, 33.621761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015812, 33.558712, 33.763214>,  <46.009884, 33.235626, 33.998970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.015812, 33.558712, 33.763214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829784, 0.318946, 0.457964,
		0.557887, -0.495852, -0.665502,
		0.014823, 0.807715, -0.589386,
		46.020260, 33.801025, 33.586399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730816, 33.397900, 33.599957>,  <46.009884, 33.235626, 33.998970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730816, 33.397900, 33.599957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.528168, 33.734726, 33.673988>,  <46.406578, 33.936821, 33.718407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.528168, 33.734726, 33.673988>,  <46.730816, 33.397900, 33.599957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.528168, 33.734726, 33.673988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806961, 0.387545, 0.445671,
		0.303558, 0.375140, -0.875855,
		-0.506622, 0.842068, 0.185082,
		46.376183, 33.987347, 33.729511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.107929, 34.070312, 33.342934>,  <46.730816, 33.397900, 33.599957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.107929, 34.070312, 33.342934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888615, 34.140377, 33.670033>,  <46.757027, 34.182415, 33.866291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888615, 34.140377, 33.670033>,  <47.107929, 34.070312, 33.342934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.888615, 34.140377, 33.670033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753856, 0.526844, 0.392602,
		-0.362055, 0.831718, -0.420905,
		-0.548286, 0.175158, 0.817742,
		46.724129, 34.192924, 33.915356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.066334, 34.883240, 33.549274>,  <47.107929, 34.070312, 33.342934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.066334, 34.883240, 33.549274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.066502, 34.616390, 33.847252>,  <47.066601, 34.456280, 34.026039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.066502, 34.616390, 33.847252>,  <47.066334, 34.883240, 33.549274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.066502, 34.616390, 33.847252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673437, 0.550884, 0.492959,
		-0.739244, 0.501466, 0.449500,
		0.000420, -0.667127, 0.744944,
		47.066628, 34.416252, 34.070736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.074493, 35.124996, 34.139755>,  <47.066334, 34.883240, 33.549274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.074493, 35.124996, 34.139755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242481, 34.789185, 34.277637>,  <47.343273, 34.587700, 34.360367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242481, 34.789185, 34.277637>,  <47.074493, 35.124996, 34.139755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.242481, 34.789185, 34.277637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643411, 0.543300, 0.539302,
		-0.640038, -0.004700, 0.768328,
		0.419968, -0.839525, 0.344709,
		47.368473, 34.537327, 34.381050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.097866, 35.035892, 34.873882>,  <47.074493, 35.124996, 34.139755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.097866, 35.035892, 34.873882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401077, 34.853767, 34.687084>,  <47.583004, 34.744492, 34.575005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.401077, 34.853767, 34.687084>,  <47.097866, 35.035892, 34.873882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.401077, 34.853767, 34.687084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643861, 0.636663, 0.424387,
		0.104093, -0.622379, 0.775764,
		0.758029, -0.455308, -0.466997,
		47.628487, 34.717175, 34.546986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.683865, 34.961662, 35.319286>,  <47.097866, 35.035892, 34.873882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.683865, 34.961662, 35.319286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812080, 34.972427, 34.940544>,  <47.889011, 34.978886, 34.713299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.812080, 34.972427, 34.940544>,  <47.683865, 34.961662, 35.319286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.812080, 34.972427, 34.940544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683285, 0.685723, 0.250810,
		0.656029, -0.727365, 0.201412,
		0.320543, 0.026917, -0.946851,
		47.908245, 34.980503, 34.656490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.685665, 36.633804, 25.225206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.346268, 36.729496, 25.414028>,  <35.142632, 36.786911, 25.527321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.346268, 36.729496, 25.414028>,  <35.685665, 36.633804, 25.225206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346268, 36.729496, 25.414028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232217, -0.633230, 0.738305,
		0.475540, 0.736064, 0.481738,
		-0.848491, 0.239226, 0.472053,
		35.091721, 36.801266, 25.555645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857632, 36.859657, 25.874197>,  <35.685665, 36.633804, 25.225206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857632, 36.859657, 25.874197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484734, 36.715275, 25.884233>,  <35.260994, 36.628643, 25.890255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484734, 36.715275, 25.884233>,  <35.857632, 36.859657, 25.874197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484734, 36.715275, 25.884233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219931, -0.510211, 0.831454,
		-0.287319, 0.780636, 0.555027,
		-0.932244, -0.360960, 0.025093,
		35.205059, 36.606987, 25.891762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604031, 36.942440, 26.519611>,  <35.857632, 36.859657, 25.874197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604031, 36.942440, 26.519611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.358288, 36.656975, 26.385000>,  <35.210842, 36.485695, 26.304234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.358288, 36.656975, 26.385000>,  <35.604031, 36.942440, 26.519611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358288, 36.656975, 26.385000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148663, -0.523567, 0.838914,
		-0.774894, 0.465367, 0.427754,
		-0.614361, -0.713660, -0.336526,
		35.173981, 36.442875, 26.284042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224983, 36.677898, 27.136772>,  <35.604031, 36.942440, 26.519611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224983, 36.677898, 27.136772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.147064, 36.398041, 26.861803>,  <35.100311, 36.230125, 26.696821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.147064, 36.398041, 26.861803>,  <35.224983, 36.677898, 27.136772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147064, 36.398041, 26.861803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018090, -0.698165, 0.715708,
		-0.980676, 0.151855, 0.123345,
		-0.194799, -0.699647, -0.687421,
		35.088623, 36.188148, 26.655577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663280, 36.351906, 27.388643>,  <35.224983, 36.677898, 27.136772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663280, 36.351906, 27.388643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.842678, 36.088779, 27.146610>,  <34.950317, 35.930904, 27.001390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.842678, 36.088779, 27.146610>,  <34.663280, 36.351906, 27.388643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842678, 36.088779, 27.146610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058720, -0.653839, 0.754351,
		-0.891854, -0.373854, -0.254617,
		0.448496, -0.657820, -0.605082,
		34.977226, 35.891434, 26.965086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300026, 35.749245, 27.540424>,  <34.663280, 36.351906, 27.388643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300026, 35.749245, 27.540424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.656029, 35.651619, 27.386379>,  <34.869633, 35.593044, 27.293951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.656029, 35.651619, 27.386379>,  <34.300026, 35.749245, 27.540424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656029, 35.651619, 27.386379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191983, -0.565519, 0.802079,
		-0.413550, -0.787794, -0.456462,
		0.890010, -0.244067, -0.385113,
		34.923031, 35.578400, 27.270845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526760, 35.007370, 27.782915>,  <34.300026, 35.749245, 27.540424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526760, 35.007370, 27.782915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868004, 35.148037, 27.628750>,  <35.072750, 35.232437, 27.536251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868004, 35.148037, 27.628750>,  <34.526760, 35.007370, 27.782915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868004, 35.148037, 27.628750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520515, -0.523089, 0.674864,
		0.035724, -0.776342, -0.629298,
		0.853105, 0.351668, -0.385411,
		35.123936, 35.253536, 27.513126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848881, 34.450718, 27.606361>,  <34.526760, 35.007370, 27.782915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848881, 34.450718, 27.606361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.105019, 34.751083, 27.670977>,  <35.258701, 34.931301, 27.709745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.105019, 34.751083, 27.670977>,  <34.848881, 34.450718, 27.606361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105019, 34.751083, 27.670977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421361, -0.519266, 0.743517,
		0.642197, -0.408039, -0.648913,
		0.640342, 0.750911, 0.161539,
		35.297123, 34.976357, 27.719439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532063, 34.117168, 27.746073>,  <34.848881, 34.450718, 27.606361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532063, 34.117168, 27.746073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.568935, 34.488945, 27.888985>,  <35.591061, 34.712009, 27.974731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.568935, 34.488945, 27.888985>,  <35.532063, 34.117168, 27.746073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568935, 34.488945, 27.888985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775742, -0.291987, 0.559435,
		0.624281, 0.225588, -0.747919,
		0.092181, 0.929437, 0.357280,
		35.596588, 34.767776, 27.996168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226887, 34.063583, 27.888178>,  <35.532063, 34.117168, 27.746073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226887, 34.063583, 27.888178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.086159, 34.384514, 28.081049>,  <36.001720, 34.577072, 28.196772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.086159, 34.384514, 28.081049>,  <36.226887, 34.063583, 27.888178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086159, 34.384514, 28.081049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475901, -0.290256, 0.830223,
		0.806064, 0.521559, -0.279709,
		-0.351823, 0.802326, 0.482176,
		35.980614, 34.625214, 28.225702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853119, 34.328480, 28.202072>,  <36.226887, 34.063583, 27.888178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853119, 34.328480, 28.202072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.549049, 34.492920, 28.403322>,  <36.366608, 34.591583, 28.524073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.549049, 34.492920, 28.403322>,  <36.853119, 34.328480, 28.202072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549049, 34.492920, 28.403322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509650, -0.103001, 0.854194,
		0.402979, 0.905754, -0.131217,
		-0.760174, 0.411097, 0.503124,
		36.320995, 34.616249, 28.554260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196541, 34.883171, 28.658777>,  <36.853119, 34.328480, 28.202072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196541, 34.883171, 28.658777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847633, 34.748631, 28.800777>,  <36.638290, 34.667908, 28.885977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.847633, 34.748631, 28.800777>,  <37.196541, 34.883171, 28.658777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847633, 34.748631, 28.800777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392136, -0.047302, 0.918690,
		-0.292207, 0.940549, 0.173154,
		-0.872264, -0.336347, 0.355001,
		36.585953, 34.647728, 28.907278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175106, 35.279823, 29.344049>,  <37.196541, 34.883171, 28.658777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175106, 35.279823, 29.344049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886448, 35.004421, 29.372881>,  <36.713253, 34.839180, 29.390181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.886448, 35.004421, 29.372881>,  <37.175106, 35.279823, 29.344049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886448, 35.004421, 29.372881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236128, -0.146936, 0.960548,
		-0.650749, 0.710193, 0.268610,
		-0.721643, -0.688503, 0.072078,
		36.669956, 34.797871, 29.394505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744408, 35.406200, 29.959032>,  <37.175106, 35.279823, 29.344049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744408, 35.406200, 29.959032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673882, 35.017620, 29.895531>,  <36.631565, 34.784473, 29.857430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.673882, 35.017620, 29.895531>,  <36.744408, 35.406200, 29.959032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673882, 35.017620, 29.895531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398913, -0.217961, 0.890708,
		-0.899878, 0.093716, 0.425953,
		-0.176315, -0.971448, -0.158754,
		36.620987, 34.726185, 29.847904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420269, 35.102009, 30.623989>,  <36.744408, 35.406200, 29.959032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420269, 35.102009, 30.623989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555344, 34.786011, 30.419292>,  <36.636387, 34.596413, 30.296474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555344, 34.786011, 30.419292>,  <36.420269, 35.102009, 30.623989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555344, 34.786011, 30.419292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379260, -0.383397, 0.842122,
		-0.861471, -0.478455, 0.170146,
		0.337684, -0.789992, -0.511744,
		36.656651, 34.549011, 30.265770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299538, 34.561615, 31.023918>,  <36.420269, 35.102009, 30.623989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299538, 34.561615, 31.023918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576511, 34.414463, 30.775661>,  <36.742695, 34.326172, 30.626707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.576511, 34.414463, 30.775661>,  <36.299538, 34.561615, 31.023918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576511, 34.414463, 30.775661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523996, -0.334892, 0.783119,
		-0.495943, -0.867473, -0.039123,
		0.692437, -0.367883, -0.620640,
		36.784241, 34.304100, 30.589470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470852, 33.961269, 31.379938>,  <36.299538, 34.561615, 31.023918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470852, 33.961269, 31.379938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776398, 34.021671, 31.128954>,  <36.959724, 34.057915, 30.978363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776398, 34.021671, 31.128954>,  <36.470852, 33.961269, 31.379938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776398, 34.021671, 31.128954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607222, -0.497501, 0.619496,
		-0.218613, -0.854218, -0.471720,
		0.763865, 0.151009, -0.627460,
		37.005558, 34.066975, 30.940716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789223, 33.281860, 31.174545>,  <36.470852, 33.961269, 31.379938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789223, 33.281860, 31.174545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.089504, 33.539513, 31.115850>,  <37.269672, 33.694103, 31.080633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.089504, 33.539513, 31.115850>,  <36.789223, 33.281860, 31.174545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089504, 33.539513, 31.115850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582736, -0.541009, 0.606405,
		0.311221, -0.540740, -0.781500,
		0.750706, 0.644135, -0.146735,
		37.314716, 33.732754, 31.071831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451019, 32.883072, 31.058699>,  <36.789223, 33.281860, 31.174545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451019, 32.883072, 31.058699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579304, 33.250839, 31.149748>,  <37.656273, 33.471500, 31.204378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579304, 33.250839, 31.149748>,  <37.451019, 32.883072, 31.058699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579304, 33.250839, 31.149748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722366, -0.392860, 0.569077,
		0.612645, -0.018081, -0.790151,
		0.320708, 0.919421, 0.227623,
		37.675514, 33.526665, 31.218035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214474, 32.844730, 31.039904>,  <37.451019, 32.883072, 31.058699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214474, 32.844730, 31.039904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.134632, 33.164288, 31.266859>,  <38.086727, 33.356022, 31.403032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.134632, 33.164288, 31.266859>,  <38.214474, 32.844730, 31.039904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134632, 33.164288, 31.266859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734812, -0.261027, 0.626032,
		0.648235, 0.541885, -0.534932,
		-0.199606, 0.798890, 0.567390,
		38.074749, 33.403954, 31.437077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886242, 33.191151, 31.116291>,  <38.214474, 32.844730, 31.039904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886242, 33.191151, 31.116291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626022, 33.292385, 31.402714>,  <38.469891, 33.353127, 31.574568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.626022, 33.292385, 31.402714>,  <38.886242, 33.191151, 31.116291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626022, 33.292385, 31.402714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684066, -0.214306, 0.697228,
		0.329911, 0.943410, -0.033709,
		-0.650547, 0.253083, 0.716057,
		38.430859, 33.368309, 31.617531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221729, 33.660526, 31.649336>,  <38.886242, 33.191151, 31.116291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221729, 33.660526, 31.649336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.901119, 33.522900, 31.844957>,  <38.708752, 33.440323, 31.962330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.901119, 33.522900, 31.844957>,  <39.221729, 33.660526, 31.649336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901119, 33.522900, 31.844957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594223, -0.367015, 0.715681,
		-0.066754, 0.864243, 0.498626,
		-0.801525, -0.344069, 0.489053,
		38.660660, 33.419678, 31.991673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957539, 33.220818, 31.805391>,  <39.221729, 33.660526, 31.649336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957539, 33.220818, 31.805391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.261749, 33.192173, 31.547255>,  <40.444275, 33.174984, 31.392372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.261749, 33.192173, 31.547255>,  <39.957539, 33.220818, 31.805391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261749, 33.192173, 31.547255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519152, 0.529865, -0.670615,
		0.389969, 0.845053, 0.365800,
		0.760530, -0.071613, -0.645342,
		40.489906, 33.170689, 31.353651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084427, 33.938477, 31.498119>,  <39.957539, 33.220818, 31.805391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084427, 33.938477, 31.498119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.260300, 33.682159, 31.246384>,  <40.365822, 33.528370, 31.095343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.260300, 33.682159, 31.246384>,  <40.084427, 33.938477, 31.498119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260300, 33.682159, 31.246384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346497, 0.525443, -0.777077,
		0.828626, 0.559731, 0.008995,
		0.439681, -0.640789, -0.629341,
		40.392204, 33.489922, 31.057581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303829, 34.280304, 30.913982>,  <40.084427, 33.938477, 31.498119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303829, 34.280304, 30.913982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.258347, 33.904804, 30.783863>,  <40.231056, 33.679504, 30.705791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.258347, 33.904804, 30.783863>,  <40.303829, 34.280304, 30.913982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258347, 33.904804, 30.783863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399645, 0.342984, -0.850086,
		0.909590, 0.033342, -0.414167,
		-0.113709, -0.938749, -0.325300,
		40.224236, 33.623180, 30.686274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654453, 34.420128, 30.270376>,  <40.303829, 34.280304, 30.913982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654453, 34.420128, 30.270376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.460022, 34.070988, 30.253096>,  <40.343365, 33.861504, 30.242727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.460022, 34.070988, 30.253096>,  <40.654453, 34.420128, 30.270376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460022, 34.070988, 30.253096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199353, 0.158877, -0.966963,
		0.850876, -0.461404, -0.251231,
		-0.486075, -0.872849, -0.043202,
		40.314201, 33.809132, 30.240135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861374, 33.996490, 29.594326>,  <40.654453, 34.420128, 30.270376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861374, 33.996490, 29.594326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.491375, 33.893230, 29.705851>,  <40.269375, 33.831276, 29.772764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.491375, 33.893230, 29.705851>,  <40.861374, 33.996490, 29.594326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491375, 33.893230, 29.705851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322291, 0.144390, -0.935564,
		0.201258, -0.955254, -0.216760,
		-0.924999, -0.258149, 0.278810,
		40.213875, 33.815788, 29.789494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530136, 33.570538, 29.132908>,  <40.861374, 33.996490, 29.594326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530136, 33.570538, 29.132908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.204571, 33.694855, 29.329258>,  <40.009232, 33.769444, 29.447069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.204571, 33.694855, 29.329258>,  <40.530136, 33.570538, 29.132908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204571, 33.694855, 29.329258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416537, 0.276857, -0.865937,
		-0.405028, -0.909263, -0.095880,
		-0.813910, 0.310791, 0.490876,
		39.960396, 33.788094, 29.476521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947563, 33.317135, 28.746115>,  <40.530136, 33.570538, 29.132908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947563, 33.317135, 28.746115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.797623, 33.615612, 28.966179>,  <39.707657, 33.794697, 29.098217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.797623, 33.615612, 28.966179>,  <39.947563, 33.317135, 28.746115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797623, 33.615612, 28.966179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625744, 0.234224, -0.744032,
		-0.684054, -0.623164, 0.379127,
		-0.374854, 0.746194, 0.550162,
		39.685165, 33.839470, 29.131227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167885, 33.278748, 28.790854>,  <39.947563, 33.317135, 28.746115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167885, 33.278748, 28.790854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270866, 33.660477, 28.851500>,  <39.332657, 33.889515, 28.887888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.270866, 33.660477, 28.851500>,  <39.167885, 33.278748, 28.790854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270866, 33.660477, 28.851500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694410, 0.291834, -0.657744,
		-0.671947, 0.064054, 0.737824,
		0.257453, 0.954322, 0.151617,
		39.348103, 33.946774, 28.896984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512371, 33.612331, 28.642593>,  <39.167885, 33.278748, 28.790854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512371, 33.612331, 28.642593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773232, 33.913517, 28.677795>,  <38.929749, 34.094227, 28.698915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773232, 33.913517, 28.677795>,  <38.512371, 33.612331, 28.642593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773232, 33.913517, 28.677795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611765, 0.591273, -0.525490,
		-0.447710, 0.288861, 0.846236,
		0.652150, 0.752965, 0.088003,
		38.968876, 34.139408, 28.704197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187836, 34.220348, 28.861738>,  <38.512371, 33.612331, 28.642593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187836, 34.220348, 28.861738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.506084, 34.381336, 28.680632>,  <38.697033, 34.477928, 28.571968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.506084, 34.381336, 28.680632>,  <38.187836, 34.220348, 28.861738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506084, 34.381336, 28.680632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605390, 0.501028, -0.618445,
		-0.022059, 0.766150, 0.642284,
		0.795624, 0.402474, -0.452767,
		38.744770, 34.502079, 28.544802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190952, 34.977921, 28.985004>,  <38.187836, 34.220348, 28.861738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190952, 34.977921, 28.985004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.403267, 34.907906, 28.653311>,  <38.530655, 34.865898, 28.454294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.403267, 34.907906, 28.653311>,  <38.190952, 34.977921, 28.985004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403267, 34.907906, 28.653311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669285, 0.513683, -0.536831,
		0.519930, 0.839935, 0.155505,
		0.530783, -0.175037, -0.829235,
		38.562500, 34.855396, 28.404541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208164, 35.655773, 28.593498>,  <38.190952, 34.977921, 28.985004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208164, 35.655773, 28.593498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303516, 35.386459, 28.313538>,  <38.360729, 35.224873, 28.145561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303516, 35.386459, 28.313538>,  <38.208164, 35.655773, 28.593498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303516, 35.386459, 28.313538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469907, 0.550738, -0.689837,
		0.849918, 0.493335, -0.185094,
		0.238382, -0.673282, -0.699904,
		38.375031, 35.184475, 28.103567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411728, 36.079842, 28.017872>,  <38.208164, 35.655773, 28.593498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411728, 36.079842, 28.017872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.298935, 35.715569, 27.897110>,  <38.231258, 35.497005, 27.824654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.298935, 35.715569, 27.897110>,  <38.411728, 36.079842, 28.017872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298935, 35.715569, 27.897110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456881, 0.404165, -0.792408,
		0.843650, -0.085512, -0.530041,
		-0.281984, -0.910680, -0.301905,
		38.214340, 35.442364, 27.806540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790436, 35.955635, 27.428343>,  <38.411728, 36.079842, 28.017872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790436, 35.955635, 27.428343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.487408, 35.695801, 27.402662>,  <38.305592, 35.539902, 27.387255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.487408, 35.695801, 27.402662>,  <38.790436, 35.955635, 27.428343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487408, 35.695801, 27.402662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287365, 0.420205, -0.860726,
		0.586093, -0.633613, -0.505004,
		-0.757572, -0.649586, -0.064201,
		38.260136, 35.500927, 27.383402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749088, 35.785767, 26.737547>,  <38.790436, 35.955635, 27.428343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749088, 35.785767, 26.737547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396839, 35.640854, 26.859703>,  <38.185490, 35.553905, 26.932997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.396839, 35.640854, 26.859703>,  <38.749088, 35.785767, 26.737547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396839, 35.640854, 26.859703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412429, 0.268758, -0.870443,
		0.233261, -0.892484, -0.386085,
		-0.880620, -0.362273, 0.305395,
		38.132652, 35.532169, 26.951321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494324, 35.493546, 26.128489>,  <38.749088, 35.785767, 26.737547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494324, 35.493546, 26.128489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.185154, 35.557198, 26.374178>,  <37.999653, 35.595390, 26.521591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.185154, 35.557198, 26.374178>,  <38.494324, 35.493546, 26.128489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185154, 35.557198, 26.374178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569936, 0.251330, -0.782308,
		-0.278864, -0.954730, -0.103563,
		-0.772921, 0.159134, 0.614222,
		37.953278, 35.604939, 26.558445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948761, 35.200161, 25.755737>,  <38.494324, 35.493546, 26.128489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948761, 35.200161, 25.755737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.820042, 35.481743, 26.009001>,  <37.742809, 35.650692, 26.160959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.820042, 35.481743, 26.009001>,  <37.948761, 35.200161, 25.755737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820042, 35.481743, 26.009001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532725, 0.418213, -0.735732,
		-0.782718, -0.574059, 0.240433,
		-0.321802, 0.703956, 0.633159,
		37.723499, 35.692928, 26.198948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429283, 35.388432, 25.396297>,  <37.948761, 35.200161, 25.755737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429283, 35.388432, 25.396297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.434792, 35.693680, 25.654741>,  <37.438095, 35.876827, 25.809807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.434792, 35.693680, 25.654741>,  <37.429283, 35.388432, 25.396297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434792, 35.693680, 25.654741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323281, 0.614863, -0.719328,
		-0.946203, -0.198972, 0.255167,
		0.013767, 0.763121, 0.646109,
		37.438923, 35.922615, 25.848574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.739006, 35.860279, 25.184481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982788, 36.099743, 25.392391>,  <37.129059, 36.243420, 25.517138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.982788, 36.099743, 25.392391>,  <36.739006, 35.860279, 25.184481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982788, 36.099743, 25.392391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269974, 0.773134, -0.573914,
		-0.745437, 0.209449, 0.632814,
		0.609456, 0.598661, 0.519777,
		37.165627, 36.279343, 25.548325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379219, 36.508091, 25.520044>,  <36.739006, 35.860279, 25.184481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379219, 36.508091, 25.520044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.767242, 36.597641, 25.482359>,  <37.000057, 36.651371, 25.459747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.767242, 36.597641, 25.482359>,  <36.379219, 36.508091, 25.520044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767242, 36.597641, 25.482359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242222, 0.862901, -0.443543,
		-0.018000, 0.453082, 0.891287,
		0.970054, 0.223873, -0.094214,
		37.058258, 36.664803, 25.454094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509335, 37.263905, 25.639225>,  <36.379219, 36.508091, 25.520044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509335, 37.263905, 25.639225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.834156, 37.131355, 25.447073>,  <37.029049, 37.051826, 25.331781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.834156, 37.131355, 25.447073>,  <36.509335, 37.263905, 25.639225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834156, 37.131355, 25.447073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071077, 0.760866, -0.645004,
		0.579243, 0.557920, 0.594308,
		0.812050, -0.331372, -0.480382,
		37.077770, 37.031944, 25.302958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899189, 37.826332, 25.502872>,  <36.509335, 37.263905, 25.639225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899189, 37.826332, 25.502872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048286, 37.560249, 25.244087>,  <37.137745, 37.400600, 25.088816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048286, 37.560249, 25.244087>,  <36.899189, 37.826332, 25.502872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048286, 37.560249, 25.244087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025285, 0.704228, -0.709523,
		0.927591, 0.248109, 0.279314,
		0.372741, -0.665210, -0.646962,
		37.160110, 37.360687, 25.049999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412647, 38.162857, 25.163149>,  <36.899189, 37.826332, 25.502872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412647, 38.162857, 25.163149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.300671, 37.851562, 24.938301>,  <37.233486, 37.664783, 24.803392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.300671, 37.851562, 24.938301>,  <37.412647, 38.162857, 25.163149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300671, 37.851562, 24.938301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178211, 0.617480, -0.766132,
		0.943332, -0.114293, -0.311547,
		-0.279938, -0.778239, -0.562120,
		37.216690, 37.618092, 24.769665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637104, 38.290047, 24.487869>,  <37.412647, 38.162857, 25.163149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637104, 38.290047, 24.487869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.408459, 37.978367, 24.385025>,  <37.271271, 37.791359, 24.323318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.408459, 37.978367, 24.385025>,  <37.637104, 38.290047, 24.487869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408459, 37.978367, 24.385025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171217, 0.419721, -0.891358,
		0.802464, -0.465486, -0.373329,
		-0.571609, -0.779202, -0.257112,
		37.236977, 37.744606, 24.307892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820351, 38.074020, 23.828758>,  <37.637104, 38.290047, 24.487869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820351, 38.074020, 23.828758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.436382, 37.970978, 23.872936>,  <37.206001, 37.909153, 23.899443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.436382, 37.970978, 23.872936>,  <37.820351, 38.074020, 23.828758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436382, 37.970978, 23.872936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224861, 0.472563, -0.852128,
		0.167321, -0.842807, -0.511547,
		-0.959917, -0.257606, 0.110444,
		37.148407, 37.893696, 23.906069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561180, 37.854897, 23.134039>,  <37.820351, 38.074020, 23.828758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561180, 37.854897, 23.134039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.218231, 37.896702, 23.335629>,  <37.012463, 37.921787, 23.456583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.218231, 37.896702, 23.335629>,  <37.561180, 37.854897, 23.134039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218231, 37.896702, 23.335629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413740, 0.442484, -0.795630,
		-0.306156, -0.890665, -0.336131,
		-0.857372, 0.104516, 0.503973,
		36.961021, 37.928055, 23.486820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054115, 37.324207, 22.923780>,  <37.561180, 37.854897, 23.134039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054115, 37.324207, 22.923780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.841911, 37.619144, 23.091061>,  <36.714588, 37.796104, 23.191429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.841911, 37.619144, 23.091061>,  <37.054115, 37.324207, 22.923780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841911, 37.619144, 23.091061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490054, 0.135777, -0.861053,
		-0.691670, -0.661736, 0.289306,
		-0.530509, 0.737340, 0.418199,
		36.682758, 37.840347, 23.216520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533226, 37.333454, 22.491774>,  <37.054115, 37.324207, 22.923780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533226, 37.333454, 22.491774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.497734, 37.687508, 22.674494>,  <36.476440, 37.899940, 22.784126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.497734, 37.687508, 22.674494>,  <36.533226, 37.333454, 22.491774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497734, 37.687508, 22.674494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476096, 0.365143, -0.800002,
		-0.874906, -0.288463, 0.389010,
		-0.088727, 0.885133, 0.456802,
		36.471115, 37.953049, 22.811535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868355, 37.572708, 22.327808>,  <36.533226, 37.333454, 22.491774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868355, 37.572708, 22.327808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.084351, 37.888294, 22.445072>,  <36.213947, 38.077648, 22.515430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.084351, 37.888294, 22.445072>,  <35.868355, 37.572708, 22.327808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084351, 37.888294, 22.445072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300966, 0.506275, -0.808149,
		-0.786023, 0.348160, 0.510835,
		0.539988, 0.788968, 0.293160,
		36.246346, 38.124985, 22.533020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393433, 38.069279, 22.387169>,  <35.868355, 37.572708, 22.327808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393433, 38.069279, 22.387169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.749443, 38.244568, 22.336876>,  <35.963051, 38.349743, 22.306700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.749443, 38.244568, 22.336876>,  <35.393433, 38.069279, 22.387169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749443, 38.244568, 22.336876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359129, 0.504027, -0.785483,
		-0.280846, 0.744256, 0.605978,
		0.890029, 0.438224, -0.125730,
		36.016453, 38.376034, 22.299156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181236, 38.671677, 22.071367>,  <35.393433, 38.069279, 22.387169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181236, 38.671677, 22.071367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.570786, 38.616486, 21.999214>,  <35.804516, 38.583370, 21.955923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.570786, 38.616486, 21.999214>,  <35.181236, 38.671677, 22.071367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570786, 38.616486, 21.999214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065185, 0.591033, -0.804009,
		0.217546, 0.794760, 0.566596,
		0.973871, -0.137975, -0.180383,
		35.862946, 38.575092, 21.945099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445927, 39.340221, 22.188290>,  <35.181236, 38.671677, 22.071367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445927, 39.340221, 22.188290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.680702, 39.145847, 21.929253>,  <35.821568, 39.029224, 21.773830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.680702, 39.145847, 21.929253>,  <35.445927, 39.340221, 22.188290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680702, 39.145847, 21.929253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133419, 0.730875, -0.669344,
		0.798565, 0.479264, 0.364144,
		0.586936, -0.485931, -0.647594,
		35.856785, 39.000069, 21.734974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751564, 39.817936, 21.859686>,  <35.445927, 39.340221, 22.188290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751564, 39.817936, 21.859686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.844532, 39.515610, 21.614826>,  <35.900314, 39.334213, 21.467911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.844532, 39.515610, 21.614826>,  <35.751564, 39.817936, 21.859686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844532, 39.515610, 21.614826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049122, 0.637705, -0.768712,
		0.971374, 0.148596, 0.185344,
		0.232422, -0.755812, -0.612151,
		35.914257, 39.288868, 21.431181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400616, 40.018600, 21.622028>,  <35.751564, 39.817936, 21.859686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400616, 40.018600, 21.622028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.244610, 39.750393, 21.369585>,  <36.151009, 39.589470, 21.218119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.244610, 39.750393, 21.369585>,  <36.400616, 40.018600, 21.622028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244610, 39.750393, 21.369585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184950, 0.614371, -0.767034,
		0.902045, -0.415875, -0.115599,
		-0.390011, -0.670519, -0.631107,
		36.127605, 39.549236, 21.180254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861095, 39.958733, 21.083382>,  <36.400616, 40.018600, 21.622028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861095, 39.958733, 21.083382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.506683, 39.836864, 20.943590>,  <36.294037, 39.763744, 20.859716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.506683, 39.836864, 20.943590>,  <36.861095, 39.958733, 21.083382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506683, 39.836864, 20.943590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055967, 0.677983, -0.732944,
		0.460242, -0.668967, -0.583660,
		-0.886027, -0.304666, -0.349477,
		36.240875, 39.745464, 20.838747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960899, 39.972519, 20.411272>,  <36.861095, 39.958733, 21.083382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960899, 39.972519, 20.411272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.563282, 39.976002, 20.454718>,  <36.324711, 39.978092, 20.480785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.563282, 39.976002, 20.454718>,  <36.960899, 39.972519, 20.411272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563282, 39.976002, 20.454718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082981, 0.585519, -0.806400,
		-0.070621, -0.810611, -0.581310,
		-0.994046, 0.008711, 0.108615,
		36.265068, 39.978615, 20.487303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813702, 40.067680, 19.692505>,  <36.960899, 39.972519, 20.411272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813702, 40.067680, 19.692505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493603, 40.140072, 19.921190>,  <36.301544, 40.183506, 20.058401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493603, 40.140072, 19.921190>,  <36.813702, 40.067680, 19.692505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493603, 40.140072, 19.921190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335773, 0.654681, -0.677237,
		-0.496857, -0.733920, -0.463135,
		-0.800243, 0.180981, 0.571714,
		36.253529, 40.194366, 20.092705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288925, 40.073860, 19.191730>,  <36.813702, 40.067680, 19.692505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288925, 40.073860, 19.191730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.157375, 40.267391, 19.516136>,  <36.078445, 40.383511, 19.710781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.157375, 40.267391, 19.516136>,  <36.288925, 40.073860, 19.191730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157375, 40.267391, 19.516136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390638, 0.712176, -0.583273,
		-0.859791, -0.508640, -0.045218,
		-0.328879, 0.483829, 0.811016,
		36.058712, 40.412540, 19.759441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750748, 40.324913, 18.974199>,  <36.288925, 40.073860, 19.191730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750748, 40.324913, 18.974199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.840931, 40.548859, 19.293127>,  <35.895042, 40.683228, 19.484484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.840931, 40.548859, 19.293127>,  <35.750748, 40.324913, 18.974199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840931, 40.548859, 19.293127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366044, 0.807108, -0.463237,
		-0.902873, -0.187413, 0.386906,
		0.225458, 0.559869, 0.797318,
		35.908569, 40.716820, 19.532322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122330, 40.701797, 19.234241>,  <35.750748, 40.324913, 18.974199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122330, 40.701797, 19.234241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449490, 40.905243, 19.341831>,  <35.645786, 41.027309, 19.406385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449490, 40.905243, 19.341831>,  <35.122330, 40.701797, 19.234241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449490, 40.905243, 19.341831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383027, 0.830172, -0.405098,
		-0.429336, 0.228305, 0.873812,
		0.817900, 0.508617, 0.268976,
		35.694859, 41.057827, 19.422523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995380, 41.294548, 19.640272>,  <35.122330, 40.701797, 19.234241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995380, 41.294548, 19.640272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330513, 41.363716, 19.433144>,  <35.531593, 41.405216, 19.308867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330513, 41.363716, 19.433144>,  <34.995380, 41.294548, 19.640272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330513, 41.363716, 19.433144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450333, 0.755097, -0.476477,
		0.308610, 0.632398, 0.710516,
		0.837831, 0.172923, -0.517820,
		35.581863, 41.415592, 19.277798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876385, 41.948566, 19.338728>,  <34.995380, 41.294548, 19.640272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876385, 41.948566, 19.338728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194920, 41.813911, 19.137720>,  <35.386040, 41.733116, 19.017117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.194920, 41.813911, 19.137720>,  <34.876385, 41.948566, 19.338728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194920, 41.813911, 19.137720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242787, 0.583035, -0.775322,
		0.553992, 0.739420, 0.382559,
		0.796334, -0.336642, -0.502518,
		35.433819, 41.712917, 18.986965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530605, 42.230865, 20.019287>,  <34.876385, 41.948566, 19.338728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530605, 42.230865, 20.019287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.132652, 42.227001, 19.979057>,  <33.893879, 42.224682, 19.954920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.132652, 42.227001, 19.979057>,  <34.530605, 42.230865, 20.019287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132652, 42.227001, 19.979057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078948, -0.546881, 0.833480,
		-0.063058, 0.837155, 0.543319,
		-0.994882, -0.009664, -0.100577,
		33.834187, 42.224102, 19.948885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172340, 42.480335, 20.719091>,  <34.530605, 42.230865, 20.019287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172340, 42.480335, 20.719091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.937119, 42.245937, 20.496092>,  <33.795986, 42.105301, 20.362291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.937119, 42.245937, 20.496092>,  <34.172340, 42.480335, 20.719091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937119, 42.245937, 20.496092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134228, -0.609010, 0.781722,
		-0.797606, 0.534527, 0.279474,
		-0.588055, -0.585993, -0.557498,
		33.760704, 42.070141, 20.328842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538960, 42.370342, 21.126419>,  <34.172340, 42.480335, 20.719091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538960, 42.370342, 21.126419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.563667, 42.052803, 20.884428>,  <33.578491, 41.862282, 20.739233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.563667, 42.052803, 20.884428>,  <33.538960, 42.370342, 21.126419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563667, 42.052803, 20.884428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320700, -0.589778, 0.741157,
		-0.945165, 0.148238, -0.291014,
		0.061766, -0.793844, -0.604977,
		33.582195, 41.814651, 20.702934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093483, 42.002277, 21.420355>,  <33.538960, 42.370342, 21.126419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093483, 42.002277, 21.420355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291187, 41.748699, 21.182423>,  <33.409809, 41.596554, 21.039663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291187, 41.748699, 21.182423>,  <33.093483, 42.002277, 21.420355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291187, 41.748699, 21.182423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216286, -0.752413, 0.622170,
		-0.841981, -0.178857, -0.508997,
		0.494256, -0.633944, -0.594833,
		33.439465, 41.558517, 21.003973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770138, 41.498280, 21.313620>,  <33.093483, 42.002277, 21.420355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770138, 41.498280, 21.313620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.131447, 41.343914, 21.238613>,  <33.348232, 41.251293, 21.193609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.131447, 41.343914, 21.238613>,  <32.770138, 41.498280, 21.313620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131447, 41.343914, 21.238613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199068, -0.764098, 0.613618,
		-0.380086, -0.516938, -0.767014,
		0.903275, -0.385915, -0.187517,
		33.402428, 41.228138, 21.182358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641293, 40.826546, 21.244974>,  <32.770138, 41.498280, 21.313620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641293, 40.826546, 21.244974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.039825, 40.827221, 21.279213>,  <33.278946, 40.827625, 21.299757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.039825, 40.827221, 21.279213>,  <32.641293, 40.826546, 21.244974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039825, 40.827221, 21.279213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055656, -0.746965, 0.662530,
		0.065054, -0.664861, -0.744129,
		0.996328, 0.001685, 0.085597,
		33.338722, 40.827724, 21.304892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836411, 40.083271, 21.366455>,  <32.641293, 40.826546, 21.244974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836411, 40.083271, 21.366455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141426, 40.301933, 21.504845>,  <33.324436, 40.433132, 21.587879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141426, 40.301933, 21.504845>,  <32.836411, 40.083271, 21.366455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141426, 40.301933, 21.504845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168667, -0.684279, 0.709447,
		0.624569, -0.482626, -0.613992,
		0.762539, 0.546658, 0.345976,
		33.370186, 40.465931, 21.608637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235226, 39.610947, 21.630402>,  <32.836411, 40.083271, 21.366455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235226, 39.610947, 21.630402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.415916, 39.924656, 21.800507>,  <33.524330, 40.112881, 21.902569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.415916, 39.924656, 21.800507>,  <33.235226, 39.610947, 21.630402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415916, 39.924656, 21.800507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201303, -0.553980, 0.807826,
		0.869147, -0.279313, -0.408127,
		0.451731, 0.784277, 0.425263,
		33.551437, 40.159939, 21.928085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956566, 39.496716, 21.819033>,  <33.235226, 39.610947, 21.630402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956566, 39.496716, 21.819033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.866489, 39.808865, 22.052378>,  <33.812443, 39.996155, 22.192385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.866489, 39.808865, 22.052378>,  <33.956566, 39.496716, 21.819033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866489, 39.808865, 22.052378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198123, -0.549558, 0.811624,
		0.953959, 0.298347, -0.030855,
		-0.225189, 0.780369, 0.583365,
		33.798931, 40.042976, 22.227386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502026, 39.660126, 22.259924>,  <33.956566, 39.496716, 21.819033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502026, 39.660126, 22.259924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.185966, 39.813068, 22.451534>,  <33.996330, 39.904835, 22.566500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.185966, 39.813068, 22.451534>,  <34.502026, 39.660126, 22.259924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185966, 39.813068, 22.451534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240964, -0.524826, 0.816391,
		0.563561, 0.760498, 0.322556,
		-0.790149, 0.382361, 0.479024,
		33.948921, 39.927776, 22.595242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813419, 39.939640, 22.864429>,  <34.502026, 39.660126, 22.259924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813419, 39.939640, 22.864429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.424404, 39.858807, 22.910606>,  <34.190994, 39.810307, 22.938313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.424404, 39.858807, 22.910606>,  <34.813419, 39.939640, 22.864429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424404, 39.858807, 22.910606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216248, -0.601321, 0.769188,
		-0.086020, 0.773031, 0.628509,
		-0.972542, -0.202079, 0.115441,
		34.132641, 39.798183, 22.945238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735680, 39.908974, 23.609224>,  <34.813419, 39.939640, 22.864429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735680, 39.908974, 23.609224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405533, 39.730022, 23.471457>,  <34.207443, 39.622654, 23.388796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405533, 39.730022, 23.471457>,  <34.735680, 39.908974, 23.609224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405533, 39.730022, 23.471457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199706, -0.801925, 0.563058,
		-0.528096, 0.395947, 0.751226,
		-0.825368, -0.447374, -0.344420,
		34.157921, 39.595810, 23.368130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296558, 39.697334, 24.207825>,  <34.735680, 39.908974, 23.609224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296558, 39.697334, 24.207825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.196899, 39.447540, 23.911732>,  <34.137104, 39.297665, 23.734076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.196899, 39.447540, 23.911732>,  <34.296558, 39.697334, 24.207825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196899, 39.447540, 23.911732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181606, -0.780905, 0.597668,
		-0.951286, 0.014477, 0.307970,
		-0.249148, -0.624482, -0.740235,
		34.122154, 39.260197, 23.689661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654144, 39.393864, 24.441248>,  <34.296558, 39.697334, 24.207825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654144, 39.393864, 24.441248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.867825, 39.158089, 24.198862>,  <33.996033, 39.016624, 24.053431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.867825, 39.158089, 24.198862>,  <33.654144, 39.393864, 24.441248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867825, 39.158089, 24.198862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081698, -0.677460, 0.731008,
		-0.841399, -0.440013, -0.313745,
		0.534204, -0.589437, -0.605963,
		34.028088, 38.981258, 24.017073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671867, 38.785004, 24.848869>,  <33.654144, 39.393864, 24.441248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671867, 38.785004, 24.848869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.883263, 38.674969, 24.527617>,  <34.010101, 38.608948, 24.334864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.883263, 38.674969, 24.527617>,  <33.671867, 38.785004, 24.848869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883263, 38.674969, 24.527617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350866, -0.790687, 0.501705,
		-0.773039, -0.546939, -0.321353,
		0.528491, -0.275086, -0.803134,
		34.041809, 38.592442, 24.286676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408783, 38.118782, 24.527920>,  <33.671867, 38.785004, 24.848869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408783, 38.118782, 24.527920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.797466, 38.158318, 24.442116>,  <34.030678, 38.182041, 24.390633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.797466, 38.158318, 24.442116>,  <33.408783, 38.118782, 24.527920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797466, 38.158318, 24.442116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204076, -0.808583, 0.551858,
		-0.118903, -0.580021, -0.805877,
		0.971707, 0.098842, -0.214511,
		34.088978, 38.187969, 24.377762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485104, 37.517784, 24.489388>,  <33.408783, 38.118782, 24.527920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485104, 37.517784, 24.489388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.854927, 37.670086, 24.495342>,  <34.076820, 37.761467, 24.498915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.854927, 37.670086, 24.495342>,  <33.485104, 37.517784, 24.489388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854927, 37.670086, 24.495342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301830, -0.755630, 0.581311,
		0.232587, -0.532961, -0.813545,
		0.924555, 0.380758, 0.014886,
		34.132294, 37.784313, 24.499807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920616, 36.980263, 24.300953>,  <33.485104, 37.517784, 24.489388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920616, 36.980263, 24.300953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.137070, 37.249294, 24.502872>,  <34.266941, 37.410713, 24.624023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.137070, 37.249294, 24.502872>,  <33.920616, 36.980263, 24.300953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137070, 37.249294, 24.502872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497149, -0.740007, 0.453026,
		0.678249, 0.005815, -0.734810,
		0.541130, 0.672574, 0.504799,
		34.299408, 37.451065, 24.654312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542927, 36.632607, 24.474434>,  <33.920616, 36.980263, 24.300953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542927, 36.632607, 24.474434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.629635, 36.934105, 24.722589>,  <34.681660, 37.115002, 24.871483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.629635, 36.934105, 24.722589>,  <34.542927, 36.632607, 24.474434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629635, 36.934105, 24.722589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326518, -0.654877, 0.681558,
		0.919998, 0.054826, -0.388069,
		0.216771, 0.753744, 0.620387,
		34.694668, 37.160229, 24.908705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182415, 36.559772, 24.699896>,  <34.542927, 36.632607, 24.474434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182415, 36.559772, 24.699896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.021000, 36.778503, 24.993326>,  <34.924149, 36.909740, 25.169384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.021000, 36.778503, 24.993326>,  <35.182415, 36.559772, 24.699896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021000, 36.778503, 24.993326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467927, -0.565634, 0.679045,
		0.786256, 0.617284, -0.027618,
		-0.403541, 0.546826, 0.733577,
		34.899937, 36.942551, 25.213400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.815990, 34.413685, 27.194073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.699902, 34.669807, 27.478544>,  <38.630249, 34.823483, 27.649227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.699902, 34.669807, 27.478544>,  <38.815990, 34.413685, 27.194073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699902, 34.669807, 27.478544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789875, -0.259264, 0.555769,
		0.540247, 0.723040, -0.430519,
		-0.290225, 0.640309, 0.711178,
		38.612835, 34.861900, 27.691898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391163, 34.787399, 27.411079>,  <38.815990, 34.413685, 27.194073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391163, 34.787399, 27.411079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.130898, 34.787170, 27.714827>,  <38.974739, 34.787033, 27.897074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.130898, 34.787170, 27.714827>,  <39.391163, 34.787399, 27.411079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130898, 34.787170, 27.714827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743846, -0.201623, 0.637214,
		0.152742, 0.979463, 0.131613,
		-0.650664, -0.000570, 0.759366,
		38.935699, 34.786999, 27.942636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811661, 34.987675, 28.017887>,  <39.391163, 34.787399, 27.411079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811661, 34.987675, 28.017887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.476711, 34.834209, 28.173639>,  <39.275742, 34.742130, 28.267090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.476711, 34.834209, 28.173639>,  <39.811661, 34.987675, 28.017887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476711, 34.834209, 28.173639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517543, -0.327141, 0.790650,
		-0.175960, 0.863587, 0.472499,
		-0.837370, -0.383661, 0.389379,
		39.225502, 34.719112, 28.290453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867596, 35.093834, 28.720791>,  <39.811661, 34.987675, 28.017887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867596, 35.093834, 28.720791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.586102, 34.810078, 28.705208>,  <39.417206, 34.639824, 28.695858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.586102, 34.810078, 28.705208>,  <39.867596, 35.093834, 28.720791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586102, 34.810078, 28.705208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242446, -0.291334, 0.925389,
		-0.667814, 0.641784, 0.377011,
		-0.703736, -0.709393, -0.038959,
		39.374981, 34.597260, 28.693520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482075, 35.114811, 29.357340>,  <39.867596, 35.093834, 28.720791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482075, 35.114811, 29.357340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.446754, 34.747704, 29.202473>,  <39.425564, 34.527439, 29.109552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.446754, 34.747704, 29.202473>,  <39.482075, 35.114811, 29.357340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446754, 34.747704, 29.202473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273059, -0.396100, 0.876666,
		-0.957936, -0.028309, 0.285582,
		-0.088302, -0.917771, -0.387169,
		39.420265, 34.472374, 29.086323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236469, 34.797058, 29.877472>,  <39.482075, 35.114811, 29.357340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236469, 34.797058, 29.877472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.399223, 34.516605, 29.643255>,  <39.496876, 34.348335, 29.502726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.399223, 34.516605, 29.643255>,  <39.236469, 34.797058, 29.877472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399223, 34.516605, 29.643255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294471, -0.506110, 0.810641,
		-0.864716, -0.502260, 0.000536,
		0.406881, -0.701133, -0.585543,
		39.521286, 34.306267, 29.467592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901649, 34.114983, 30.165474>,  <39.236469, 34.797058, 29.877472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901649, 34.114983, 30.165474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.233105, 34.030853, 29.957968>,  <39.431980, 33.980373, 29.833464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.233105, 34.030853, 29.957968>,  <38.901649, 34.114983, 30.165474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233105, 34.030853, 29.957968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323336, -0.576662, 0.750276,
		-0.456951, -0.789446, -0.409843,
		0.828643, -0.210323, -0.518762,
		39.481697, 33.967754, 29.802340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054901, 33.364162, 30.218641>,  <38.901649, 34.114983, 30.165474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054901, 33.364162, 30.218641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.402138, 33.507629, 30.081369>,  <39.610481, 33.593708, 29.999006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.402138, 33.507629, 30.081369>,  <39.054901, 33.364162, 30.218641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402138, 33.507629, 30.081369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488507, -0.494472, 0.718929,
		0.088163, -0.791743, -0.604459,
		0.868095, 0.358665, -0.343178,
		39.662567, 33.615231, 29.978416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503387, 32.784473, 30.110712>,  <39.054901, 33.364162, 30.218641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503387, 32.784473, 30.110712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.738380, 33.102623, 30.170357>,  <39.879375, 33.293514, 30.206144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.738380, 33.102623, 30.170357>,  <39.503387, 32.784473, 30.110712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738380, 33.102623, 30.170357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483608, -0.492816, 0.723364,
		0.648833, -0.352854, -0.674173,
		0.587486, 0.795378, 0.149112,
		39.914627, 33.341236, 30.215090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237377, 32.488018, 30.050179>,  <39.503387, 32.784473, 30.110712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237377, 32.488018, 30.050179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.224152, 32.835205, 30.248386>,  <40.216217, 33.043518, 30.367311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.224152, 32.835205, 30.248386>,  <40.237377, 32.488018, 30.050179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224152, 32.835205, 30.248386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489937, -0.418061, 0.764975,
		0.871130, 0.268068, -0.411426,
		-0.033065, 0.867966, 0.495522,
		40.214233, 33.095596, 30.397043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857197, 32.762302, 30.096542>,  <40.237377, 32.488018, 30.050179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857197, 32.762302, 30.096542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.677536, 32.951290, 30.399868>,  <40.569740, 33.064682, 30.581863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.677536, 32.951290, 30.399868>,  <40.857197, 32.762302, 30.096542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677536, 32.951290, 30.399868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641431, -0.420316, 0.641795,
		0.621957, 0.774669, -0.114269,
		-0.449150, 0.472465, 0.758315,
		40.542789, 33.093029, 30.627363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457302, 32.881210, 30.350954>,  <40.857197, 32.762302, 30.096542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457302, 32.881210, 30.350954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.183804, 32.909668, 30.641453>,  <41.019703, 32.926743, 30.815752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.183804, 32.909668, 30.641453>,  <41.457302, 32.881210, 30.350954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183804, 32.909668, 30.641453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661578, -0.359511, 0.658078,
		0.307909, 0.930425, 0.198748,
		-0.683745, 0.071141, 0.726245,
		40.978680, 32.931011, 30.859325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705032, 33.302425, 30.912554>,  <41.457302, 32.881210, 30.350954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705032, 33.302425, 30.912554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.436577, 33.020645, 31.004921>,  <41.275505, 32.851578, 31.060341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.436577, 33.020645, 31.004921>,  <41.705032, 33.302425, 30.912554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436577, 33.020645, 31.004921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668415, -0.440298, 0.599465,
		-0.320624, 0.556670, 0.766367,
		-0.671134, -0.704455, 0.230916,
		41.235237, 32.809307, 31.074196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820889, 33.120548, 31.714897>,  <41.705032, 33.302425, 30.912554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820889, 33.120548, 31.714897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.665600, 32.826820, 31.492168>,  <41.572426, 32.650581, 31.358530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.665600, 32.826820, 31.492168>,  <41.820889, 33.120548, 31.714897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665600, 32.826820, 31.492168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644500, -0.648220, 0.405500,
		-0.658712, -0.201448, 0.724926,
		-0.388224, -0.734322, -0.556823,
		41.549133, 32.606525, 31.325121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924477, 33.848000, 32.005821>,  <41.820889, 33.120548, 31.714897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924477, 33.848000, 32.005821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.833801, 34.179668, 32.210205>,  <41.779396, 34.378670, 32.332836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.833801, 34.179668, 32.210205>,  <41.924477, 33.848000, 32.005821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833801, 34.179668, 32.210205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432463, 0.384373, -0.815618,
		-0.872690, -0.405863, 0.271455,
		-0.226689, 0.829176, 0.510959,
		41.765793, 34.428421, 32.363491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182350, 34.055244, 31.863390>,  <41.924477, 33.848000, 32.005821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182350, 34.055244, 31.863390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.357857, 34.380787, 32.015766>,  <41.463161, 34.576115, 32.107193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.357857, 34.380787, 32.015766>,  <41.182350, 34.055244, 31.863390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357857, 34.380787, 32.015766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272835, 0.524571, -0.806465,
		-0.856180, 0.249917, 0.452214,
		0.438768, 0.813859, 0.380941,
		41.489487, 34.624943, 32.130047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635921, 34.631592, 31.955872>,  <41.182350, 34.055244, 31.863390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635921, 34.631592, 31.955872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.991108, 34.815147, 31.943607>,  <41.204220, 34.925282, 31.936249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.991108, 34.815147, 31.943607>,  <40.635921, 34.631592, 31.955872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991108, 34.815147, 31.943607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329182, 0.587592, -0.739172,
		-0.321178, 0.666454, 0.672818,
		0.887966, 0.458885, -0.030663,
		41.257500, 34.952812, 31.934408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590687, 35.321877, 31.883711>,  <40.635921, 34.631592, 31.955872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590687, 35.321877, 31.883711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.974373, 35.288734, 31.775604>,  <41.204586, 35.268848, 31.710741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.974373, 35.288734, 31.775604>,  <40.590687, 35.321877, 31.883711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974373, 35.288734, 31.775604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169686, 0.595905, -0.784923,
		0.226083, 0.798770, 0.557542,
		0.959215, -0.082851, -0.270264,
		41.262138, 35.263878, 31.694525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762840, 36.052155, 31.681887>,  <40.590687, 35.321877, 31.883711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762840, 36.052155, 31.681887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.046398, 35.809315, 31.538277>,  <41.216534, 35.663612, 31.452110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.046398, 35.809315, 31.538277>,  <40.762840, 36.052155, 31.681887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046398, 35.809315, 31.538277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015512, 0.522326, -0.852605,
		0.705141, 0.598841, 0.379693,
		0.708898, -0.607096, -0.359024,
		41.259068, 35.627186, 31.430569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.333569, 36.523186, 31.423471>,  <40.762840, 36.052155, 31.681887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.333569, 36.523186, 31.423471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.398315, 36.182789, 31.223629>,  <41.437164, 35.978550, 31.103724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.398315, 36.182789, 31.223629>,  <41.333569, 36.523186, 31.423471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398315, 36.182789, 31.223629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144476, 0.521264, -0.841077,
		0.976179, 0.063960, 0.207323,
		0.161865, -0.850995, -0.499606,
		41.446877, 35.927490, 31.073748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885208, 36.746258, 31.015604>,  <41.333569, 36.523186, 31.423471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885208, 36.746258, 31.015604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.758896, 36.408623, 30.842262>,  <41.683109, 36.206039, 30.738256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.758896, 36.408623, 30.842262>,  <41.885208, 36.746258, 31.015604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758896, 36.408623, 30.842262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076644, 0.477925, -0.875051,
		0.945733, -0.243106, -0.215612,
		-0.315776, -0.844090, -0.433357,
		41.664162, 36.155396, 30.712255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134167, 36.844154, 30.358780>,  <41.885208, 36.746258, 31.015604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134167, 36.844154, 30.358780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.871731, 36.545578, 30.314287>,  <41.714268, 36.366432, 30.287592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.871731, 36.545578, 30.314287>,  <42.134167, 36.844154, 30.358780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871731, 36.545578, 30.314287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205084, 0.318191, -0.925578,
		0.726281, -0.584452, -0.361845,
		-0.656092, -0.746438, -0.111234,
		41.674904, 36.321648, 30.280916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338329, 36.470272, 29.705584>,  <42.134167, 36.844154, 30.358780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338329, 36.470272, 29.705584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.957039, 36.394329, 29.799654>,  <41.728264, 36.348763, 29.856096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.957039, 36.394329, 29.799654>,  <42.338329, 36.470272, 29.705584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.957039, 36.394329, 29.799654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283040, 0.287767, -0.914920,
		0.106031, -0.938692, -0.328045,
		-0.953229, -0.189860, 0.235175,
		41.671070, 36.337372, 29.870207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984688, 36.138100, 29.184547>,  <42.338329, 36.470272, 29.705584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984688, 36.138100, 29.184547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677498, 36.312756, 29.371977>,  <41.493183, 36.417549, 29.484434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.677498, 36.312756, 29.371977>,  <41.984688, 36.138100, 29.184547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677498, 36.312756, 29.371977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230462, 0.494207, -0.838240,
		-0.597581, -0.751736, -0.278910,
		-0.767974, 0.436638, 0.468575,
		41.447105, 36.443748, 29.512550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367680, 36.024101, 28.740438>,  <41.984688, 36.138100, 29.184547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367680, 36.024101, 28.740438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.324451, 36.343071, 28.977903>,  <41.298515, 36.534454, 29.120382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.324451, 36.343071, 28.977903>,  <41.367680, 36.024101, 28.740438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324451, 36.343071, 28.977903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220555, 0.563046, -0.796451,
		-0.969369, -0.217010, 0.115026,
		-0.108073, 0.797424, 0.593662,
		41.292030, 36.582298, 29.156002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788425, 36.208244, 28.509071>,  <41.367680, 36.024101, 28.740438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788425, 36.208244, 28.509071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.916489, 36.530151, 28.709013>,  <40.993328, 36.723293, 28.828978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.916489, 36.530151, 28.709013>,  <40.788425, 36.208244, 28.509071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916489, 36.530151, 28.709013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352865, 0.590959, -0.725433,
		-0.879196, 0.055871, 0.473173,
		0.320157, 0.804764, 0.499854,
		41.012535, 36.771580, 28.858969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286007, 36.666645, 28.424723>,  <40.788425, 36.208244, 28.509071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286007, 36.666645, 28.424723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.575420, 36.911240, 28.552841>,  <40.749069, 37.057995, 28.629711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.575420, 36.911240, 28.552841>,  <40.286007, 36.666645, 28.424723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575420, 36.911240, 28.552841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281316, 0.684921, -0.672119,
		-0.630366, 0.396196, 0.667583,
		0.723533, 0.611483, 0.320295,
		40.792480, 37.094685, 28.648930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942894, 37.304779, 28.580910>,  <40.286007, 36.666645, 28.424723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942894, 37.304779, 28.580910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.325874, 37.393730, 28.507324>,  <40.555660, 37.447102, 28.463173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.325874, 37.393730, 28.507324>,  <39.942894, 37.304779, 28.580910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325874, 37.393730, 28.507324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283783, 0.609311, -0.740410,
		-0.052558, 0.761110, 0.646490,
		0.957447, 0.222377, -0.183966,
		40.613110, 37.460442, 28.452135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823837, 37.617790, 29.274235>,  <39.942894, 37.304779, 28.580910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823837, 37.617790, 29.274235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.551731, 37.835964, 29.470089>,  <39.388466, 37.966869, 29.587601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.551731, 37.835964, 29.470089>,  <39.823837, 37.617790, 29.274235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551731, 37.835964, 29.470089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192454, -0.511664, 0.837354,
		0.707248, 0.663855, 0.243097,
		-0.680265, 0.545432, 0.489635,
		39.347652, 37.999596, 29.616980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147976, 37.645828, 29.848845>,  <39.823837, 37.617790, 29.274235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147976, 37.645828, 29.848845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.763859, 37.738998, 29.910259>,  <39.533386, 37.794903, 29.947107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.763859, 37.738998, 29.910259>,  <40.147976, 37.645828, 29.848845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763859, 37.738998, 29.910259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046748, -0.408220, 0.911686,
		0.275036, 0.882667, 0.381123,
		-0.960297, 0.232930, 0.153538,
		39.475769, 37.808876, 29.956320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221859, 37.908985, 30.475023>,  <40.147976, 37.645828, 29.848845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221859, 37.908985, 30.475023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.828590, 37.836872, 30.463282>,  <39.592628, 37.793602, 30.456236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.828590, 37.836872, 30.463282>,  <40.221859, 37.908985, 30.475023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828590, 37.836872, 30.463282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031017, -0.323148, 0.945840,
		-0.180008, 0.929017, 0.323303,
		-0.983176, -0.180287, -0.029354,
		39.533638, 37.782787, 30.454475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900200, 38.241524, 31.061556>,  <40.221859, 37.908985, 30.475023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900200, 38.241524, 31.061556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.651005, 37.952370, 30.942005>,  <39.501488, 37.778877, 30.870275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.651005, 37.952370, 30.942005>,  <39.900200, 38.241524, 31.061556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651005, 37.952370, 30.942005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105635, -0.456327, 0.883519,
		-0.775065, 0.518851, 0.360648,
		-0.622989, -0.722882, -0.298875,
		39.464108, 37.735504, 30.852343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403618, 38.168423, 31.669722>,  <39.900200, 38.241524, 31.061556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403618, 38.168423, 31.669722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.370525, 37.841938, 31.441004>,  <39.350670, 37.646046, 31.303774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.370525, 37.841938, 31.441004>,  <39.403618, 38.168423, 31.669722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370525, 37.841938, 31.441004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016648, -0.574813, 0.818116,
		-0.996433, 0.058165, 0.061144,
		-0.082732, -0.816215, -0.571794,
		39.345707, 37.597073, 31.269466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801495, 37.768944, 31.910215>,  <39.403618, 38.168423, 31.669722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801495, 37.768944, 31.910215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.047020, 37.516243, 31.720848>,  <39.194336, 37.364624, 31.607227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.047020, 37.516243, 31.720848>,  <38.801495, 37.768944, 31.910215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047020, 37.516243, 31.720848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029756, -0.617768, 0.785797,
		-0.788892, -0.468244, -0.397991,
		0.613811, -0.631752, -0.473419,
		39.231163, 37.326717, 31.578823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421387, 37.128681, 32.101017>,  <38.801495, 37.768944, 31.910215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421387, 37.128681, 32.101017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.792789, 37.030388, 31.989660>,  <39.015629, 36.971413, 31.922848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.792789, 37.030388, 31.989660>,  <38.421387, 37.128681, 32.101017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792789, 37.030388, 31.989660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064949, -0.630684, 0.773317,
		-0.365601, -0.736108, -0.569632,
		0.928503, -0.245729, -0.278388,
		39.071339, 36.956669, 31.906143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400856, 36.447304, 32.266361>,  <38.421387, 37.128681, 32.101017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400856, 36.447304, 32.266361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.787540, 36.548847, 32.253601>,  <39.019550, 36.609776, 32.245945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.787540, 36.548847, 32.253601>,  <38.400856, 36.447304, 32.266361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787540, 36.548847, 32.253601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189649, -0.627266, 0.755362,
		0.171748, -0.736269, -0.654531,
		0.966714, 0.253864, -0.031901,
		39.077553, 36.625008, 32.244030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713100, 35.805336, 32.119843>,  <38.400856, 36.447304, 32.266361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713100, 35.805336, 32.119843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.999886, 36.031811, 32.282524>,  <39.171955, 36.167694, 32.380131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.999886, 36.031811, 32.282524>,  <38.713100, 35.805336, 32.119843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999886, 36.031811, 32.282524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168928, -0.707121, 0.686617,
		0.676338, -0.423573, -0.602622,
		0.716959, 0.566185, 0.406700,
		39.214973, 36.201668, 32.404533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306034, 35.368073, 32.178150>,  <38.713100, 35.805336, 32.119843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306034, 35.368073, 32.178150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.361980, 35.673870, 32.429859>,  <39.395550, 35.857349, 32.580887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.361980, 35.673870, 32.429859>,  <39.306034, 35.368073, 32.178150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361980, 35.673870, 32.429859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223942, -0.643478, 0.731974,
		0.964514, 0.038540, -0.261205,
		0.139869, 0.764494, 0.629274,
		39.403942, 35.903217, 32.618641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040344, 35.312023, 32.370449>,  <39.306034, 35.368073, 32.178150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040344, 35.312023, 32.370449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.880951, 35.546402, 32.652691>,  <39.785316, 35.687031, 32.822037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.880951, 35.546402, 32.652691>,  <40.040344, 35.312023, 32.370449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880951, 35.546402, 32.652691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150425, -0.717152, 0.680489,
		0.904756, 0.377304, 0.197633,
		-0.398484, 0.585948, 0.705603,
		39.761406, 35.722187, 32.864372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510345, 35.331902, 32.839455>,  <40.040344, 35.312023, 32.370449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510345, 35.331902, 32.839455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.198727, 35.459278, 33.055485>,  <40.011757, 35.535706, 33.185104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.198727, 35.459278, 33.055485>,  <40.510345, 35.331902, 32.839455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198727, 35.459278, 33.055485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136622, -0.754488, 0.641936,
		0.611901, 0.573884, 0.544274,
		-0.779045, 0.318441, 0.540078,
		39.965012, 35.554810, 33.217506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.028027, 40.577049, 26.905376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663300, 40.565159, 27.069187>,  <38.444466, 40.558025, 27.167473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663300, 40.565159, 27.069187>,  <39.028027, 40.577049, 26.905376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663300, 40.565159, 27.069187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399441, -0.295196, 0.867932,
		0.095087, 0.954974, 0.281039,
		-0.911815, -0.029729, 0.409525,
		38.389755, 40.556240, 27.192045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070320, 40.932472, 27.580153>,  <39.028027, 40.577049, 26.905376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070320, 40.932472, 27.580153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769604, 40.668728, 27.577116>,  <38.589176, 40.510483, 27.575294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769604, 40.668728, 27.577116>,  <39.070320, 40.932472, 27.580153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769604, 40.668728, 27.577116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475246, -0.549774, 0.686942,
		-0.457117, 0.512827, 0.726672,
		-0.751788, -0.659361, -0.007591,
		38.544067, 40.470921, 27.574839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714523, 40.862812, 28.248867>,  <39.070320, 40.932472, 27.580153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714523, 40.862812, 28.248867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628822, 40.518417, 28.064346>,  <38.577404, 40.311779, 27.953634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628822, 40.518417, 28.064346>,  <38.714523, 40.862812, 28.248867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628822, 40.518417, 28.064346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301954, -0.507515, 0.807002,
		-0.928935, 0.033609, 0.368714,
		-0.214251, -0.860987, -0.461300,
		38.564548, 40.260120, 27.925957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468105, 40.478664, 28.756147>,  <38.714523, 40.862812, 28.248867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468105, 40.478664, 28.756147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554192, 40.211208, 28.471445>,  <38.605843, 40.050735, 28.300623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554192, 40.211208, 28.471445>,  <38.468105, 40.478664, 28.756147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554192, 40.211208, 28.471445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228168, -0.674235, 0.702387,
		-0.949538, -0.313564, 0.007458,
		0.215215, -0.668644, -0.711756,
		38.618755, 40.010616, 28.257917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993687, 39.917355, 28.734159>,  <38.468105, 40.478664, 28.756147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993687, 39.917355, 28.734159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340763, 39.791119, 28.580528>,  <38.549007, 39.715378, 28.488350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340763, 39.791119, 28.580528>,  <37.993687, 39.917355, 28.734159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340763, 39.791119, 28.580528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004141, -0.777190, 0.629252,
		-0.497085, -0.544407, -0.675669,
		0.867692, -0.315589, -0.384076,
		38.601070, 39.696442, 28.465305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044731, 39.215813, 29.041880>,  <37.993687, 39.917355, 28.734159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044731, 39.215813, 29.041880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398117, 39.248840, 28.857416>,  <38.610149, 39.268658, 28.746738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398117, 39.248840, 28.857416>,  <38.044731, 39.215813, 29.041880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398117, 39.248840, 28.857416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349834, -0.770995, 0.532149,
		-0.311609, -0.631465, -0.710037,
		0.883468, 0.082572, -0.461157,
		38.663158, 39.273613, 28.719069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172287, 38.623230, 28.794029>,  <38.044731, 39.215813, 29.041880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172287, 38.623230, 28.794029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537136, 38.778332, 28.847225>,  <38.756046, 38.871391, 28.879143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537136, 38.778332, 28.847225>,  <38.172287, 38.623230, 28.794029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537136, 38.778332, 28.847225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248553, -0.781126, 0.572768,
		0.325974, -0.489378, -0.808857,
		0.912120, 0.387751, 0.132990,
		38.810772, 38.894657, 28.887123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630821, 38.073261, 28.666439>,  <38.172287, 38.623230, 28.794029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630821, 38.073261, 28.666439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830360, 38.332378, 28.896748>,  <38.950085, 38.487850, 29.034933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830360, 38.332378, 28.896748>,  <38.630821, 38.073261, 28.666439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830360, 38.332378, 28.896748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310018, -0.753753, 0.579435,
		0.809343, -0.110552, -0.576838,
		0.498851, 0.647792, 0.575772,
		38.980015, 38.526714, 29.069479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267853, 37.701801, 28.814951>,  <38.630821, 38.073261, 28.666439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267853, 37.701801, 28.814951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219395, 38.002323, 29.074448>,  <39.190319, 38.182636, 29.230145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219395, 38.002323, 29.074448>,  <39.267853, 37.701801, 28.814951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219395, 38.002323, 29.074448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286747, -0.599203, 0.747484,
		0.950315, 0.276581, -0.142842,
		-0.121149, 0.751305, 0.648740,
		39.183048, 38.227715, 29.269070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876228, 38.031731, 28.417179>,  <39.267853, 37.701801, 28.814951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876228, 38.031731, 28.417179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245899, 37.948666, 28.288950>,  <40.467701, 37.898827, 28.212011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245899, 37.948666, 28.288950>,  <39.876228, 38.031731, 28.417179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245899, 37.948666, 28.288950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091804, 0.693929, -0.714167,
		0.370759, 0.689450, 0.622252,
		0.924181, -0.207658, -0.320574,
		40.523155, 37.886368, 28.192778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174088, 38.718899, 28.308113>,  <39.876228, 38.031731, 28.417179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174088, 38.718899, 28.308113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379715, 38.436161, 28.113754>,  <40.503094, 38.266518, 27.997139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379715, 38.436161, 28.113754>,  <40.174088, 38.718899, 28.308113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379715, 38.436161, 28.113754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121043, 0.501031, -0.856923,
		0.849164, 0.499333, 0.172006,
		0.514070, -0.706848, -0.485898,
		40.533936, 38.224106, 27.967985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688320, 39.086121, 27.965254>,  <40.174088, 38.718899, 28.308113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688320, 39.086121, 27.965254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675362, 38.739948, 27.765261>,  <40.667587, 38.532246, 27.645266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675362, 38.739948, 27.765261>,  <40.688320, 39.086121, 27.965254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675362, 38.739948, 27.765261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086115, 0.495967, -0.864061,
		0.995758, -0.071050, 0.058457,
		-0.032399, -0.865430, -0.499981,
		40.665642, 38.480320, 27.615267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076786, 39.171734, 27.319401>,  <40.688320, 39.086121, 27.965254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076786, 39.171734, 27.319401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905396, 38.834396, 27.189680>,  <40.802559, 38.631992, 27.111847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905396, 38.834396, 27.189680>,  <41.076786, 39.171734, 27.319401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905396, 38.834396, 27.189680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221839, 0.446124, -0.867041,
		0.875895, -0.299568, -0.378243,
		-0.428481, -0.843346, -0.324302,
		40.776852, 38.581394, 27.092390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398880, 38.905766, 26.702684>,  <41.076786, 39.171734, 27.319401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398880, 38.905766, 26.702684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026047, 38.761047, 26.695362>,  <40.802349, 38.674217, 26.690969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026047, 38.761047, 26.695362>,  <41.398880, 38.905766, 26.702684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026047, 38.761047, 26.695362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070169, 0.229886, -0.970685,
		0.355395, -0.903470, -0.239659,
		-0.932078, -0.361794, -0.018305,
		40.746422, 38.652508, 26.689871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409328, 38.619030, 26.106773>,  <41.398880, 38.905766, 26.702684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409328, 38.619030, 26.106773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027405, 38.666248, 26.215876>,  <40.798248, 38.694580, 26.281338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027405, 38.666248, 26.215876>,  <41.409328, 38.619030, 26.106773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027405, 38.666248, 26.215876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228838, 0.293581, -0.928140,
		-0.189644, -0.948617, -0.253300,
		-0.954813, 0.118051, 0.272755,
		40.740959, 38.701664, 26.297703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096748, 38.461063, 25.496714>,  <41.409328, 38.619030, 26.106773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096748, 38.461063, 25.496714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818645, 38.648857, 25.714409>,  <40.651783, 38.761536, 25.845026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818645, 38.648857, 25.714409>,  <41.096748, 38.461063, 25.496714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818645, 38.648857, 25.714409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219911, 0.581933, -0.782939,
		-0.684291, -0.664029, -0.301348,
		-0.695259, 0.469489, 0.544239,
		40.610069, 38.789703, 25.877680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544724, 38.494560, 24.965599>,  <41.096748, 38.461063, 25.496714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544724, 38.494560, 24.965599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506813, 38.753792, 25.267860>,  <40.484066, 38.909332, 25.449217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506813, 38.753792, 25.267860>,  <40.544724, 38.494560, 24.965599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506813, 38.753792, 25.267860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355905, 0.686842, -0.633703,
		-0.929704, -0.329002, 0.165556,
		-0.094779, 0.648079, 0.755653,
		40.478378, 38.948215, 25.494556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916157, 38.873047, 24.866583>,  <40.544724, 38.494560, 24.965599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916157, 38.873047, 24.866583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095776, 39.134174, 25.110611>,  <40.203548, 39.290852, 25.257027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095776, 39.134174, 25.110611>,  <39.916157, 38.873047, 24.866583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095776, 39.134174, 25.110611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282635, 0.751501, -0.596124,
		-0.847627, 0.095263, 0.521971,
		0.449050, 0.652817, 0.610068,
		40.230492, 39.330021, 25.293631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396202, 39.457329, 24.965841>,  <39.916157, 38.873047, 24.866583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396202, 39.457329, 24.965841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775410, 39.564236, 25.034929>,  <40.002934, 39.628380, 25.076382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775410, 39.564236, 25.034929>,  <39.396202, 39.457329, 24.965841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775410, 39.564236, 25.034929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136119, 0.831197, -0.539058,
		-0.287637, 0.487526, 0.824369,
		0.948017, 0.267265, 0.172721,
		40.059814, 39.644417, 25.086746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464104, 40.172211, 25.211695>,  <39.396202, 39.457329, 24.965841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464104, 40.172211, 25.211695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819118, 40.130836, 25.032103>,  <40.032127, 40.106014, 24.924347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819118, 40.130836, 25.032103>,  <39.464104, 40.172211, 25.211695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819118, 40.130836, 25.032103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263665, 0.685118, -0.679039,
		0.377837, 0.721052, 0.580795,
		0.887536, -0.103431, -0.448979,
		40.085381, 40.099808, 24.897409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634327, 40.901478, 25.185896>,  <39.464104, 40.172211, 25.211695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634327, 40.901478, 25.185896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853039, 40.682476, 24.932510>,  <39.984264, 40.551075, 24.780479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853039, 40.682476, 24.932510>,  <39.634327, 40.901478, 25.185896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853039, 40.682476, 24.932510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210599, 0.642317, -0.736937,
		0.810358, 0.536348, 0.235902,
		0.546779, -0.547503, -0.633462,
		40.017071, 40.518227, 24.742472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125660, 41.373127, 24.794655>,  <39.634327, 40.901478, 25.185896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125660, 41.373127, 24.794655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070026, 41.050381, 24.565002>,  <40.036648, 40.856735, 24.427210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070026, 41.050381, 24.565002>,  <40.125660, 41.373127, 24.794655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070026, 41.050381, 24.565002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023234, 0.576950, -0.816449,
		0.990008, -0.126893, -0.061497,
		-0.139082, -0.806862, -0.574133,
		40.028301, 40.808323, 24.392763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571415, 41.573559, 24.217434>,  <40.125660, 41.373127, 24.794655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571415, 41.573559, 24.217434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326412, 41.280434, 24.098898>,  <40.179413, 41.104557, 24.027777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326412, 41.280434, 24.098898>,  <40.571415, 41.573559, 24.217434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326412, 41.280434, 24.098898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231362, 0.524676, -0.819260,
		0.755850, -0.433239, -0.490912,
		-0.612505, -0.732816, -0.296341,
		40.142662, 41.060589, 24.009996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.551367, 38.753223, 25.444168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.815210, 38.993969, 25.624247>,  <31.973516, 39.138416, 25.732294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.815210, 38.993969, 25.624247>,  <31.551367, 38.753223, 25.444168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815210, 38.993969, 25.624247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403148, -0.788836, 0.463907,
		0.634339, -0.124501, -0.762963,
		0.659610, 0.601862, 0.450197,
		32.013092, 39.174526, 25.759306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162460, 38.349487, 25.461306>,  <31.551367, 38.753223, 25.444168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162460, 38.349487, 25.461306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.241253, 38.620811, 25.744455>,  <32.288528, 38.783607, 25.914345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.241253, 38.620811, 25.744455>,  <32.162460, 38.349487, 25.461306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241253, 38.620811, 25.744455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376583, -0.718983, 0.584164,
		0.905198, 0.151504, -0.397069,
		0.196983, 0.678313, 0.707876,
		32.300346, 38.824306, 25.956818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806046, 38.186031, 25.729528>,  <32.162460, 38.349487, 25.461306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806046, 38.186031, 25.729528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.663544, 38.430939, 26.011866>,  <32.578041, 38.577881, 26.181269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.663544, 38.430939, 26.011866>,  <32.806046, 38.186031, 25.729528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663544, 38.430939, 26.011866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378199, -0.596276, 0.708110,
		0.854429, 0.519216, -0.019133,
		-0.356253, 0.612266, 0.705843,
		32.556667, 38.614620, 26.223618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428089, 38.461559, 26.183224>,  <32.806046, 38.186031, 25.729528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428089, 38.461559, 26.183224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.106659, 38.490765, 26.419504>,  <32.913799, 38.508289, 26.561274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.106659, 38.490765, 26.419504>,  <33.428089, 38.461559, 26.183224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106659, 38.490765, 26.419504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382857, -0.696469, 0.606920,
		0.455720, 0.713863, 0.531713,
		-0.803579, 0.073015, 0.590703,
		32.865585, 38.512669, 26.596714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640854, 38.435879, 26.863966>,  <33.428089, 38.461559, 26.183224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640854, 38.435879, 26.863966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.257355, 38.328110, 26.900215>,  <33.027256, 38.263451, 26.921965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.257355, 38.328110, 26.900215>,  <33.640854, 38.435879, 26.863966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257355, 38.328110, 26.900215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258242, -0.692329, 0.673789,
		-0.118791, 0.669397, 0.733346,
		-0.958749, -0.269420, 0.090624,
		32.969730, 38.247284, 26.927402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506695, 38.390785, 27.542543>,  <33.640854, 38.435879, 26.863966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506695, 38.390785, 27.542543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.205647, 38.162842, 27.410589>,  <33.025017, 38.026077, 27.331417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.205647, 38.162842, 27.410589>,  <33.506695, 38.390785, 27.542543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205647, 38.162842, 27.410589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161887, -0.645767, 0.746175,
		-0.638241, 0.508184, 0.578271,
		-0.752622, -0.569854, -0.329887,
		32.979858, 37.991886, 27.311623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221275, 38.238926, 28.197330>,  <33.506695, 38.390785, 27.542543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221275, 38.238926, 28.197330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.106590, 37.985077, 27.910261>,  <33.037781, 37.832767, 27.738020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.106590, 37.985077, 27.910261>,  <33.221275, 38.238926, 28.197330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106590, 37.985077, 27.910261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225291, -0.772778, 0.593346,
		-0.931151, 0.008432, 0.364536,
		-0.286708, -0.634621, -0.717673,
		33.020576, 37.794689, 27.694960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701664, 37.739452, 28.533926>,  <33.221275, 38.238926, 28.197330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701664, 37.739452, 28.533926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.813457, 37.549362, 28.200209>,  <32.880535, 37.435307, 27.999979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.813457, 37.549362, 28.200209>,  <32.701664, 37.739452, 28.533926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813457, 37.549362, 28.200209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262850, -0.797856, 0.542527,
		-0.923471, -0.370922, -0.098074,
		0.279484, -0.475229, -0.834294,
		32.897305, 37.406792, 27.949921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441704, 37.060284, 28.598551>,  <32.701664, 37.739452, 28.533926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441704, 37.060284, 28.598551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.741776, 37.028976, 28.335915>,  <32.921818, 37.010193, 28.178333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.741776, 37.028976, 28.335915>,  <32.441704, 37.060284, 28.598551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741776, 37.028976, 28.335915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352214, -0.793081, 0.496958,
		-0.559627, -0.604066, -0.567381,
		0.750175, -0.078271, -0.656591,
		32.966827, 37.005493, 28.138937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572380, 36.333519, 28.497280>,  <32.441704, 37.060284, 28.598551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572380, 36.333519, 28.497280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.903244, 36.509048, 28.356861>,  <33.101765, 36.614365, 28.272610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.903244, 36.509048, 28.356861>,  <32.572380, 36.333519, 28.497280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903244, 36.509048, 28.356861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559830, -0.697799, 0.446841,
		-0.048878, -0.566138, -0.822860,
		0.827165, 0.438821, -0.351048,
		33.151394, 36.640694, 28.251547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898018, 35.777256, 28.226990>,  <32.572380, 36.333519, 28.497280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898018, 35.777256, 28.226990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.158291, 36.071743, 28.301384>,  <33.314457, 36.248436, 28.346022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.158291, 36.071743, 28.301384>,  <32.898018, 35.777256, 28.226990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158291, 36.071743, 28.301384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517126, -0.608983, 0.601432,
		0.556049, -0.295163, -0.776974,
		0.650685, 0.736219, 0.185988,
		33.353497, 36.292610, 28.357180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425613, 35.427219, 28.153885>,  <32.898018, 35.777256, 28.226990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425613, 35.427219, 28.153885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.524204, 35.742359, 28.379644>,  <33.583359, 35.931442, 28.515100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.524204, 35.742359, 28.379644>,  <33.425613, 35.427219, 28.153885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524204, 35.742359, 28.379644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671971, -0.558574, 0.486262,
		0.698359, 0.259407, -0.667086,
		0.246477, 0.787847, 0.564399,
		33.598148, 35.978714, 28.548964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204430, 35.289337, 28.375809>,  <33.425613, 35.427219, 28.153885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204430, 35.289337, 28.375809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.113647, 35.589748, 28.623825>,  <34.059177, 35.769993, 28.772635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.113647, 35.589748, 28.623825>,  <34.204430, 35.289337, 28.375809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113647, 35.589748, 28.623825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519612, -0.445091, 0.729313,
		0.823708, 0.487703, -0.289226,
		-0.226956, 0.751026, 0.620041,
		34.045559, 35.815056, 28.809837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798756, 35.582462, 28.699978>,  <34.204430, 35.289337, 28.375809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798756, 35.582462, 28.699978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.489471, 35.640675, 28.946869>,  <34.303902, 35.675602, 29.095003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.489471, 35.640675, 28.946869>,  <34.798756, 35.582462, 28.699978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489471, 35.640675, 28.946869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372817, -0.683025, 0.628079,
		0.512989, 0.715749, 0.473863,
		-0.773207, 0.145533, 0.617228,
		34.257511, 35.684334, 29.132038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556587, 35.681252, 28.922876>,  <34.798756, 35.582462, 28.699978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556587, 35.681252, 28.922876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.668201, 35.354309, 28.721256>,  <35.735172, 35.158142, 28.600285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.668201, 35.354309, 28.721256>,  <35.556587, 35.681252, 28.922876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668201, 35.354309, 28.721256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364348, 0.395533, -0.843092,
		0.888475, 0.418905, -0.187433,
		0.279040, -0.817357, -0.504048,
		35.751915, 35.109100, 28.570042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975521, 35.926769, 28.379801>,  <35.556587, 35.681252, 28.922876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975521, 35.926769, 28.379801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.844124, 35.569176, 28.257898>,  <35.765285, 35.354618, 28.184757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.844124, 35.569176, 28.257898>,  <35.975521, 35.926769, 28.379801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844124, 35.569176, 28.257898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110753, 0.356897, -0.927555,
		0.937991, -0.270941, -0.216250,
		-0.328492, -0.893989, -0.304758,
		35.745575, 35.300980, 28.166471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113415, 35.974506, 27.681513>,  <35.975521, 35.926769, 28.379801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113415, 35.974506, 27.681513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.903717, 35.634483, 27.701794>,  <35.777901, 35.430470, 27.713963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.903717, 35.634483, 27.701794>,  <36.113415, 35.974506, 27.681513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903717, 35.634483, 27.701794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373717, 0.176158, -0.910661,
		0.765184, -0.496355, -0.410031,
		-0.524241, -0.850059, 0.050703,
		35.746445, 35.379467, 27.717005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267544, 35.646423, 27.045370>,  <36.113415, 35.974506, 27.681513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267544, 35.646423, 27.045370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.919174, 35.515938, 27.192383>,  <35.710152, 35.437649, 27.280590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.919174, 35.515938, 27.192383>,  <36.267544, 35.646423, 27.045370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919174, 35.515938, 27.192383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443743, 0.200688, -0.873394,
		0.211180, -0.923738, -0.319550,
		-0.870916, -0.326241, 0.367521,
		35.657898, 35.418076, 27.302643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951477, 35.175571, 26.527243>,  <36.267544, 35.646423, 27.045370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951477, 35.175571, 26.527243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.679806, 35.328671, 26.777752>,  <35.516804, 35.420528, 26.928057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.679806, 35.328671, 26.777752>,  <35.951477, 35.175571, 26.527243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679806, 35.328671, 26.777752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398493, 0.524265, -0.752562,
		-0.616372, -0.760692, -0.203550,
		-0.679183, 0.382745, 0.626273,
		35.476051, 35.443493, 26.965633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461273, 34.900169, 26.207237>,  <35.951477, 35.175571, 26.527243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461273, 34.900169, 26.207237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.321640, 35.203796, 26.427036>,  <35.237858, 35.385975, 26.558916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.321640, 35.203796, 26.427036>,  <35.461273, 34.900169, 26.207237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321640, 35.203796, 26.427036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362073, 0.431593, -0.826215,
		-0.864316, -0.487379, 0.124176,
		-0.349086, 0.759071, 0.549499,
		35.216915, 35.431519, 26.591887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976654, 35.179707, 25.800034>,  <35.461273, 34.900169, 26.207237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976654, 35.179707, 25.800034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.013527, 35.483227, 26.057941>,  <35.035652, 35.665337, 26.212687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.013527, 35.483227, 26.057941>,  <34.976654, 35.179707, 25.800034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013527, 35.483227, 26.057941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351902, 0.630566, -0.691774,
		-0.931487, -0.163127, 0.325150,
		0.092182, 0.758799, 0.644769,
		35.041180, 35.710865, 26.251371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382206, 35.553909, 25.732262>,  <34.976654, 35.179707, 25.800034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382206, 35.553909, 25.732262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.611504, 35.828396, 25.911367>,  <34.749084, 35.993088, 26.018831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.611504, 35.828396, 25.911367>,  <34.382206, 35.553909, 25.732262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611504, 35.828396, 25.911367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357828, 0.701259, -0.616600,
		-0.737121, 0.193241, 0.647542,
		0.573247, 0.686217, 0.447765,
		34.783478, 36.034260, 26.045696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977699, 36.173939, 25.836952>,  <34.382206, 35.553909, 25.732262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977699, 36.173939, 25.836952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.342842, 36.331127, 25.881264>,  <34.561928, 36.425442, 25.907850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.342842, 36.331127, 25.881264>,  <33.977699, 36.173939, 25.836952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342842, 36.331127, 25.881264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267447, 0.780541, -0.565003,
		-0.308496, 0.486138, 0.817619,
		0.912854, 0.392971, 0.110777,
		34.616699, 36.449017, 25.914497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953918, 36.939857, 26.101212>,  <33.977699, 36.173939, 25.836952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953918, 36.939857, 26.101212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.317001, 36.885208, 25.942518>,  <34.534851, 36.852421, 25.847301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.317001, 36.885208, 25.942518>,  <33.953918, 36.939857, 26.101212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317001, 36.885208, 25.942518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062352, 0.891091, -0.449520,
		0.414940, 0.432771, 0.800334,
		0.907710, -0.136621, -0.396734,
		34.589314, 36.844223, 25.823498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277355, 37.528042, 26.197462>,  <33.953918, 36.939857, 26.101212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277355, 37.528042, 26.197462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.438366, 37.355450, 25.874525>,  <34.534973, 37.251896, 25.680763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.438366, 37.355450, 25.874525>,  <34.277355, 37.528042, 26.197462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438366, 37.355450, 25.874525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104317, 0.897822, -0.427825,
		0.909446, 0.087991, 0.406406,
		0.402524, -0.431479, -0.807341,
		34.559124, 37.226006, 25.632322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765759, 37.935825, 25.908455>,  <34.277355, 37.528042, 26.197462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765759, 37.935825, 25.908455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.713226, 37.707859, 25.583998>,  <34.681705, 37.571079, 25.389324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.713226, 37.707859, 25.583998>,  <34.765759, 37.935825, 25.908455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713226, 37.707859, 25.583998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108556, 0.805040, -0.583203,
		0.985377, -0.164647, -0.043859,
		-0.131331, -0.569914, -0.811142,
		34.673828, 37.536884, 25.340654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009392, 38.369431, 25.273949>,  <34.765759, 37.935825, 25.908455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009392, 38.369431, 25.273949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.803963, 38.074287, 25.098766>,  <34.680706, 37.897202, 24.993656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.803963, 38.074287, 25.098766>,  <35.009392, 38.369431, 25.273949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803963, 38.074287, 25.098766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228305, 0.609519, -0.759186,
		0.827117, -0.289908, -0.481488,
		-0.513570, -0.737862, -0.437956,
		34.649891, 37.852928, 24.967379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299431, 38.326878, 24.662937>,  <35.009392, 38.369431, 25.273949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299431, 38.326878, 24.662937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.929737, 38.179802, 24.621756>,  <34.707920, 38.091557, 24.597046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.929737, 38.179802, 24.621756>,  <35.299431, 38.326878, 24.662937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929737, 38.179802, 24.621756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184409, 0.665937, -0.722857,
		0.334348, -0.649101, -0.683285,
		-0.924232, -0.367690, -0.102955,
		34.652466, 38.069496, 24.590870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890297, 38.110317, 24.187878>,  <35.299431, 38.326878, 24.662937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890297, 38.110317, 24.187878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.208553, 38.044838, 23.954584>,  <36.399506, 38.005550, 23.814608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.208553, 38.044838, 23.954584>,  <35.890297, 38.110317, 24.187878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208553, 38.044838, 23.954584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365242, -0.638467, 0.677464,
		-0.483275, -0.752039, -0.448200,
		0.795640, -0.163700, -0.583231,
		36.447247, 37.995728, 23.779615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979042, 37.412113, 24.137308>,  <35.890297, 38.110317, 24.187878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979042, 37.412113, 24.137308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.337429, 37.553394, 24.029612>,  <36.552460, 37.638165, 23.964994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.337429, 37.553394, 24.029612>,  <35.979042, 37.412113, 24.137308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337429, 37.553394, 24.029612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443094, -0.669655, 0.596012,
		0.030216, -0.653306, -0.756491,
		0.895966, 0.353206, -0.269242,
		36.606220, 37.659355, 23.948839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389606, 36.790833, 24.105398>,  <35.979042, 37.412113, 24.137308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389606, 36.790833, 24.105398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.650002, 37.091442, 24.148172>,  <36.806236, 37.271809, 24.173836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.650002, 37.091442, 24.148172>,  <36.389606, 36.790833, 24.105398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650002, 37.091442, 24.148172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573036, -0.578915, 0.580075,
		0.497844, -0.316343, -0.807513,
		0.650985, 0.751521, 0.106934,
		36.845299, 37.316898, 24.180252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011330, 36.603909, 24.015579>,  <36.389606, 36.790833, 24.105398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011330, 36.603909, 24.015579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.087620, 36.923004, 24.244396>,  <37.133392, 37.114460, 24.381687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.087620, 36.923004, 24.244396>,  <37.011330, 36.603909, 24.015579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087620, 36.923004, 24.244396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476540, -0.584713, 0.656521,
		0.858215, 0.147386, -0.491675,
		0.190726, 0.797739, 0.572045,
		37.144836, 37.162327, 24.416010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741943, 36.633114, 24.124136>,  <37.011330, 36.603909, 24.015579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741943, 36.633114, 24.124136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.572765, 36.839771, 24.421915>,  <37.471260, 36.963764, 24.600582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.572765, 36.839771, 24.421915>,  <37.741943, 36.633114, 24.124136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572765, 36.839771, 24.421915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496702, -0.554948, 0.667323,
		0.757896, 0.652008, -0.021905,
		-0.422944, 0.516642, 0.744446,
		37.445881, 36.994762, 24.645248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066414, 36.444427, 24.719795>,  <37.741943, 36.633114, 24.124136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066414, 36.444427, 24.719795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.778008, 36.658451, 24.895908>,  <37.604961, 36.786865, 25.001575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.778008, 36.658451, 24.895908>,  <38.066414, 36.444427, 24.719795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778008, 36.658451, 24.895908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161605, -0.488031, 0.857735,
		0.673807, 0.689595, 0.265412,
		-0.721019, 0.535056, 0.440281,
		37.561703, 36.818970, 25.027992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326248, 36.876694, 25.371017>,  <38.066414, 36.444427, 24.719795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326248, 36.876694, 25.371017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930328, 36.826889, 25.398703>,  <37.692776, 36.797009, 25.415314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930328, 36.826889, 25.398703>,  <38.326248, 36.876694, 25.371017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930328, 36.826889, 25.398703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120955, -0.477904, 0.870045,
		-0.075249, 0.869544, 0.488090,
		-0.989802, -0.124507, 0.069214,
		37.633389, 36.789536, 25.419466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115387, 37.068432, 26.056419>,  <38.326248, 36.876694, 25.371017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115387, 37.068432, 26.056419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.839218, 36.820190, 25.907734>,  <37.673519, 36.671246, 25.818523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.839218, 36.820190, 25.907734>,  <38.115387, 37.068432, 26.056419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839218, 36.820190, 25.907734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098247, -0.589516, 0.801759,
		-0.716707, 0.517031, 0.467986,
		-0.690419, -0.620605, -0.371714,
		37.632092, 36.634010, 25.796219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723881, 36.863541, 26.610916>,  <38.115387, 37.068432, 26.056419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723881, 36.863541, 26.610916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.596638, 36.566448, 26.375235>,  <37.520290, 36.388195, 26.233826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.596638, 36.566448, 26.375235>,  <37.723881, 36.863541, 26.610916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596638, 36.566448, 26.375235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074331, -0.600035, 0.796513,
		-0.945136, 0.297174, 0.135669,
		-0.318109, -0.742728, -0.589204,
		37.501205, 36.343628, 26.198473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066639, 36.516518, 26.893353>,  <37.723881, 36.863541, 26.610916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066639, 36.516518, 26.893353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.298000, 36.260208, 26.691420>,  <37.436817, 36.106422, 26.570259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.298000, 36.260208, 26.691420>,  <37.066639, 36.516518, 26.893353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298000, 36.260208, 26.691420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022224, -0.631006, 0.775460,
		-0.815447, -0.437310, -0.379217,
		0.578405, -0.640774, -0.504833,
		37.471523, 36.067978, 26.539970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943577, 35.866047, 27.298918>,  <37.066639, 36.516518, 26.893353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943577, 35.866047, 27.298918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.262009, 35.797775, 27.066668>,  <37.453068, 35.756813, 26.927317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.262009, 35.797775, 27.066668>,  <36.943577, 35.866047, 27.298918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262009, 35.797775, 27.066668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337050, -0.671807, 0.659600,
		-0.502647, -0.720794, -0.477286,
		0.796080, -0.170677, -0.580625,
		37.500832, 35.746571, 26.892481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943314, 35.167690, 27.272758>,  <36.943577, 35.866047, 27.298918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943314, 35.167690, 27.272758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.317348, 35.279976, 27.186214>,  <37.541771, 35.347347, 27.134287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.317348, 35.279976, 27.186214>,  <36.943314, 35.167690, 27.272758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317348, 35.279976, 27.186214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352949, -0.682079, 0.640465,
		0.032209, -0.675256, -0.736880,
		0.935088, 0.280710, -0.216362,
		37.597874, 35.364189, 27.121305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383263, 34.557709, 27.485146>,  <36.943314, 35.167690, 27.272758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383263, 34.557709, 27.485146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.650074, 34.848701, 27.420832>,  <37.810162, 35.023296, 27.382244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.650074, 34.848701, 27.420832>,  <37.383263, 34.557709, 27.485146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650074, 34.848701, 27.420832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672551, -0.495095, 0.550051,
		0.320548, -0.475033, -0.819508,
		0.667027, 0.727478, -0.160782,
		37.850182, 35.066944, 27.372597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954758, 34.276974, 27.255320>,  <37.383263, 34.557709, 27.485146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954758, 34.276974, 27.255320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077785, 34.625881, 27.407394>,  <38.151604, 34.835228, 27.498638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.077785, 34.625881, 27.407394>,  <37.954758, 34.276974, 27.255320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077785, 34.625881, 27.407394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698781, -0.478252, 0.531959,
		0.645838, 0.102052, -0.756623,
		0.307569, 0.872273, 0.380185,
		38.170055, 34.887562, 27.521450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.742107, 41.511139, 23.480705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.398945, 41.310310, 23.524370>,  <40.193047, 41.189812, 23.550570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.398945, 41.310310, 23.524370>,  <40.742107, 41.511139, 23.480705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398945, 41.310310, 23.524370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311931, 0.340120, -0.887140,
		0.408281, -0.795136, -0.448404,
		-0.857908, -0.502073, 0.109163,
		40.141571, 41.159687, 23.557119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667114, 41.094234, 22.828537>,  <40.742107, 41.511139, 23.480705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667114, 41.094234, 22.828537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.311527, 41.152897, 23.002083>,  <40.098175, 41.188095, 23.106211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.311527, 41.152897, 23.002083>,  <40.667114, 41.094234, 22.828537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311527, 41.152897, 23.002083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377374, 0.302189, -0.875369,
		-0.259488, -0.941899, -0.213290,
		-0.888963, 0.146657, 0.433863,
		40.044838, 41.196896, 23.132242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172340, 40.701313, 22.362036>,  <40.667114, 41.094234, 22.828537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172340, 40.701313, 22.362036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.947239, 40.952583, 22.576958>,  <39.812176, 41.103348, 22.705912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.947239, 40.952583, 22.576958>,  <40.172340, 40.701313, 22.362036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947239, 40.952583, 22.576958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577329, 0.166516, -0.799352,
		-0.591606, -0.760043, 0.268958,
		-0.562756, 0.628178, 0.537306,
		39.778412, 41.141037, 22.738150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531410, 40.619698, 22.085146>,  <40.172340, 40.701313, 22.362036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531410, 40.619698, 22.085146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.460625, 40.949234, 22.300539>,  <39.418152, 41.146957, 22.429775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.460625, 40.949234, 22.300539>,  <39.531410, 40.619698, 22.085146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460625, 40.949234, 22.300539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584776, 0.352065, -0.730813,
		-0.791657, -0.444221, 0.419460,
		-0.176965, 0.823843, 0.538484,
		39.407536, 41.196388, 22.462084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756569, 40.746288, 22.273703>,  <39.531410, 40.619698, 22.085146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756569, 40.746288, 22.273703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.929882, 41.104607, 22.313316>,  <39.033871, 41.319599, 22.337084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.929882, 41.104607, 22.313316>,  <38.756569, 40.746288, 22.273703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929882, 41.104607, 22.313316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681552, 0.397573, -0.614347,
		-0.589705, 0.198689, 0.782796,
		0.433283, 0.895800, 0.099034,
		39.059868, 41.373348, 22.343027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115898, 41.219822, 22.302299>,  <38.756569, 40.746288, 22.273703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115898, 41.219822, 22.302299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.439316, 41.430283, 22.196901>,  <38.633366, 41.556557, 22.133663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.439316, 41.430283, 22.196901>,  <38.115898, 41.219822, 22.302299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439316, 41.430283, 22.196901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538933, 0.482352, -0.690570,
		-0.236246, 0.700360, 0.673560,
		0.808541, 0.526148, -0.263494,
		38.681877, 41.588127, 22.117853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859982, 41.921177, 22.260157>,  <38.115898, 41.219822, 22.302299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859982, 41.921177, 22.260157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.210663, 41.926300, 22.067810>,  <38.421070, 41.929375, 21.952402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.210663, 41.926300, 22.067810>,  <37.859982, 41.921177, 22.260157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210663, 41.926300, 22.067810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438913, 0.430384, -0.788749,
		0.196854, 0.902555, 0.382940,
		0.876700, 0.012809, -0.480866,
		38.473675, 41.930141, 21.923550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922157, 42.557056, 22.035204>,  <37.859982, 41.921177, 22.260157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922157, 42.557056, 22.035204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.175125, 42.368408, 21.789400>,  <38.326904, 42.255219, 21.641918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.175125, 42.368408, 21.789400>,  <37.922157, 42.557056, 22.035204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175125, 42.368408, 21.789400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385364, 0.496613, -0.777734,
		0.671968, 0.728663, 0.132322,
		0.632419, -0.471620, -0.614509,
		38.364849, 42.226921, 21.605047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368019, 43.060795, 21.729475>,  <37.922157, 42.557056, 22.035204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368019, 43.060795, 21.729475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.343098, 42.731346, 21.503994>,  <38.328144, 42.533676, 21.368706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.343098, 42.731346, 21.503994>,  <38.368019, 43.060795, 21.729475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343098, 42.731346, 21.503994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418487, 0.534308, -0.734427,
		0.906083, 0.190146, -0.377965,
		-0.062301, -0.823626, -0.563701,
		38.324406, 42.484257, 21.334883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311935, 43.273613, 21.119577>,  <38.368019, 43.060795, 21.729475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311935, 43.273613, 21.119577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.198936, 42.897457, 21.043837>,  <38.131138, 42.671764, 20.998392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.198936, 42.897457, 21.043837>,  <38.311935, 43.273613, 21.119577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198936, 42.897457, 21.043837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666939, 0.334425, -0.665846,
		0.689481, -0.061816, -0.721661,
		-0.282502, -0.940393, -0.189352,
		38.114185, 42.615341, 20.987030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293003, 43.154617, 20.415443>,  <38.311935, 43.273613, 21.119577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293003, 43.154617, 20.415443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.037331, 42.877560, 20.549122>,  <37.883926, 42.711323, 20.629330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.037331, 42.877560, 20.549122>,  <38.293003, 43.154617, 20.415443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037331, 42.877560, 20.549122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607040, 0.187596, -0.772211,
		0.472177, -0.696452, -0.540373,
		-0.639180, -0.692648, 0.334196,
		37.845577, 42.669765, 20.649382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016762, 42.846886, 19.844622>,  <38.293003, 43.154617, 20.415443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016762, 42.846886, 19.844622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.764523, 42.710758, 20.123629>,  <37.613178, 42.629082, 20.291033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.764523, 42.710758, 20.123629>,  <38.016762, 42.846886, 19.844622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764523, 42.710758, 20.123629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766897, 0.135186, -0.627371,
		0.119194, -0.930551, -0.346218,
		-0.630604, -0.340292, 0.697524,
		37.575344, 42.608665, 20.332884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724632, 42.328999, 19.542120>,  <38.016762, 42.846886, 19.844622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724632, 42.328999, 19.542120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.470730, 42.422527, 19.836714>,  <37.318386, 42.478645, 20.013470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.470730, 42.422527, 19.836714>,  <37.724632, 42.328999, 19.542120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470730, 42.422527, 19.836714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770572, -0.120694, -0.625820,
		-0.057438, -0.964761, 0.256783,
		-0.634759, 0.233816, 0.736485,
		37.280304, 42.492672, 20.057659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357323, 41.816486, 19.479538>,  <37.724632, 42.328999, 19.542120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357323, 41.816486, 19.479538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.115196, 42.091503, 19.639980>,  <36.969921, 42.256512, 19.736246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.115196, 42.091503, 19.639980>,  <37.357323, 41.816486, 19.479538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115196, 42.091503, 19.639980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704384, -0.227977, -0.672213,
		-0.370730, -0.689431, 0.622289,
		-0.605312, 0.687539, 0.401106,
		36.933601, 42.297764, 19.760313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719967, 41.651356, 19.997803>,  <37.357323, 41.816486, 19.479538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719967, 41.651356, 19.997803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.386318, 41.494820, 19.842316>,  <36.186131, 41.400898, 19.749023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.386318, 41.494820, 19.842316>,  <36.719967, 41.651356, 19.997803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386318, 41.494820, 19.842316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017293, -0.722931, 0.690703,
		-0.551315, 0.569406, 0.609778,
		-0.834118, -0.391340, -0.388716,
		36.136082, 41.377419, 19.725700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258762, 41.517006, 20.525658>,  <36.719967, 41.651356, 19.997803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258762, 41.517006, 20.525658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.159534, 41.279793, 20.219254>,  <36.099998, 41.137463, 20.035412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.159534, 41.279793, 20.219254>,  <36.258762, 41.517006, 20.525658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159534, 41.279793, 20.219254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002906, -0.790266, 0.612757,
		-0.968738, 0.154231, 0.194316,
		-0.248067, -0.593037, -0.766009,
		36.085114, 41.101883, 19.989450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787212, 41.057610, 20.853176>,  <36.258762, 41.517006, 20.525658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787212, 41.057610, 20.853176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.871502, 40.861263, 20.515030>,  <35.922073, 40.743454, 20.312141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.871502, 40.861263, 20.515030>,  <35.787212, 41.057610, 20.853176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871502, 40.861263, 20.515030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099457, -0.871061, 0.481000,
		-0.972474, -0.017280, -0.232372,
		0.210722, -0.490870, -0.845365,
		35.934719, 40.714001, 20.261421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282082, 40.505711, 20.884756>,  <35.787212, 41.057610, 20.853176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282082, 40.505711, 20.884756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.559227, 40.404610, 20.614630>,  <35.725513, 40.343948, 20.452555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.559227, 40.404610, 20.614630>,  <35.282082, 40.505711, 20.884756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559227, 40.404610, 20.614630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074091, -0.956550, 0.281997,
		-0.717248, -0.145352, -0.681489,
		0.692868, -0.252754, -0.675315,
		35.767086, 40.328785, 20.412035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971848, 40.013554, 20.474003>,  <35.282082, 40.505711, 20.884756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971848, 40.013554, 20.474003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.369053, 39.966980, 20.466362>,  <35.607376, 39.939037, 20.461777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.369053, 39.966980, 20.466362>,  <34.971848, 40.013554, 20.474003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369053, 39.966980, 20.466362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099658, -0.914349, 0.392472,
		-0.063163, -0.387827, -0.919566,
		0.993015, -0.116432, -0.019103,
		35.666958, 39.932049, 20.460630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150558, 39.293228, 20.318335>,  <34.971848, 40.013554, 20.474003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150558, 39.293228, 20.318335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.485638, 39.437237, 20.482599>,  <35.686687, 39.523643, 20.581158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.485638, 39.437237, 20.482599>,  <35.150558, 39.293228, 20.318335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485638, 39.437237, 20.482599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122309, -0.856523, 0.501407,
		0.532259, -0.369801, -0.761543,
		0.837700, 0.360022, 0.410661,
		35.736946, 39.545242, 20.605797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540699, 38.609570, 20.471478>,  <35.150558, 39.293228, 20.318335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540699, 38.609570, 20.471478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.708298, 38.916786, 20.665203>,  <35.808857, 39.101116, 20.781439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.708298, 38.916786, 20.665203>,  <35.540699, 38.609570, 20.471478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708298, 38.916786, 20.665203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283013, -0.617290, 0.734069,
		0.862755, -0.170504, -0.476006,
		0.418995, 0.768038, 0.484315,
		35.833996, 39.147198, 20.810497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165558, 38.365974, 20.610228>,  <35.540699, 38.609570, 20.471478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165558, 38.365974, 20.610228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.095043, 38.664043, 20.867489>,  <36.052734, 38.842884, 21.021845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.095043, 38.664043, 20.867489>,  <36.165558, 38.365974, 20.610228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095043, 38.664043, 20.867489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341704, -0.566426, 0.749933,
		0.923126, 0.351970, -0.154774,
		-0.176286, 0.745170, 0.643152,
		36.042156, 38.887596, 21.060434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729092, 38.343597, 21.043968>,  <36.165558, 38.365974, 20.610228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729092, 38.343597, 21.043968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.470211, 38.547382, 21.270800>,  <36.314884, 38.669655, 21.406898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.470211, 38.547382, 21.270800>,  <36.729092, 38.343597, 21.043968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470211, 38.547382, 21.270800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409248, -0.395401, 0.822298,
		0.643154, 0.764268, 0.047407,
		-0.647201, 0.509463, 0.567079,
		36.276051, 38.700222, 21.440924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132107, 38.582611, 21.587439>,  <36.729092, 38.343597, 21.043968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132107, 38.582611, 21.587439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.752331, 38.565304, 21.711815>,  <36.524464, 38.554920, 21.786442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.752331, 38.565304, 21.711815>,  <37.132107, 38.582611, 21.587439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752331, 38.565304, 21.711815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298056, -0.435276, 0.849528,
		0.098591, 0.899257, 0.426165,
		-0.949443, -0.043265, 0.310943,
		36.467499, 38.552322, 21.805098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192123, 38.915470, 22.274796>,  <37.132107, 38.582611, 21.587439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192123, 38.915470, 22.274796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.827663, 38.750675, 22.271498>,  <36.608986, 38.651798, 22.269520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.827663, 38.750675, 22.271498>,  <37.192123, 38.915470, 22.274796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827663, 38.750675, 22.271498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156224, -0.363877, 0.918253,
		-0.381309, 0.835380, 0.395909,
		-0.911152, -0.411988, -0.008244,
		36.554317, 38.627079, 22.269024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796562, 39.289021, 22.860600>,  <37.192123, 38.915470, 22.274796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796562, 39.289021, 22.860600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.628792, 38.939537, 22.762037>,  <36.528130, 38.729847, 22.702900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.628792, 38.939537, 22.762037>,  <36.796562, 39.289021, 22.860600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628792, 38.939537, 22.762037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096753, -0.312914, 0.944840,
		-0.902618, 0.372452, 0.215779,
		-0.419428, -0.873707, -0.246406,
		36.502964, 38.677425, 22.688116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316498, 39.093273, 23.397087>,  <36.796562, 39.289021, 22.860600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316498, 39.093273, 23.397087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.368835, 38.735062, 23.226954>,  <36.400238, 38.520134, 23.124874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.368835, 38.735062, 23.226954>,  <36.316498, 39.093273, 23.397087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368835, 38.735062, 23.226954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067999, -0.419904, 0.905018,
		-0.989069, -0.147334, 0.005955,
		0.130839, -0.895530, -0.425332,
		36.408089, 38.466404, 23.099354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912346, 38.698666, 23.735868>,  <36.316498, 39.093273, 23.397087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912346, 38.698666, 23.735868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.155216, 38.434498, 23.559151>,  <36.300938, 38.275997, 23.453121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.155216, 38.434498, 23.559151>,  <35.912346, 38.698666, 23.735868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155216, 38.434498, 23.559151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162109, -0.441359, 0.882566,
		-0.777855, -0.607491, -0.160922,
		0.607175, -0.660421, -0.441793,
		36.337368, 38.236370, 23.426613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275490, 38.296299, 23.870964>,  <35.912346, 38.698666, 23.735868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275490, 38.296299, 23.870964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.911446, 38.224716, 24.020456>,  <34.693020, 38.181767, 24.110151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.911446, 38.224716, 24.020456>,  <35.275490, 38.296299, 23.870964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911446, 38.224716, 24.020456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386521, 0.691707, -0.610035,
		-0.149343, -0.699654, -0.698700,
		-0.910109, -0.178958, 0.373732,
		34.638412, 38.171028, 24.132576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893188, 38.209869, 23.344419>,  <35.275490, 38.296299, 23.870964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893188, 38.209869, 23.344419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.620445, 38.313335, 23.618111>,  <34.456799, 38.375416, 23.782326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.620445, 38.313335, 23.618111>,  <34.893188, 38.209869, 23.344419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620445, 38.313335, 23.618111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427423, 0.618208, -0.659642,
		-0.593620, -0.742235, -0.310970,
		-0.681853, 0.258661, 0.684230,
		34.415890, 38.390934, 23.823380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228783, 38.158417, 23.025423>,  <34.893188, 38.209869, 23.344419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228783, 38.158417, 23.025423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.197540, 38.413147, 23.332241>,  <34.178795, 38.565987, 23.516331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.197540, 38.413147, 23.332241>,  <34.228783, 38.158417, 23.025423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197540, 38.413147, 23.332241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371220, 0.695488, -0.615217,
		-0.925254, -0.332793, 0.182081,
		-0.078105, 0.636824, 0.767043,
		34.174110, 38.604195, 23.562353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632454, 38.461246, 22.846430>,  <34.228783, 38.158417, 23.025423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632454, 38.461246, 22.846430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.775921, 38.737949, 23.097136>,  <33.862000, 38.903973, 23.247559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.775921, 38.737949, 23.097136>,  <33.632454, 38.461246, 22.846430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775921, 38.737949, 23.097136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344830, 0.722129, -0.599685,
		-0.867441, -0.001042, 0.497540,
		0.358663, 0.691758, 0.626763,
		33.883518, 38.945477, 23.285164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074032, 38.964787, 22.980850>,  <33.632454, 38.461246, 22.846430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074032, 38.964787, 22.980850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.412128, 39.150578, 23.086557>,  <33.614986, 39.262051, 23.149981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.412128, 39.150578, 23.086557>,  <33.074032, 38.964787, 22.980850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412128, 39.150578, 23.086557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300953, 0.822374, -0.482834,
		-0.441590, 0.328578, 0.834886,
		0.845237, 0.464476, 0.264266,
		33.665699, 39.289921, 23.165836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827026, 39.686287, 23.106392>,  <33.074032, 38.964787, 22.980850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827026, 39.686287, 23.106392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.223766, 39.717243, 23.065908>,  <33.461811, 39.735817, 23.041618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.223766, 39.717243, 23.065908>,  <32.827026, 39.686287, 23.106392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223766, 39.717243, 23.065908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124304, 0.762083, -0.635436,
		0.027949, 0.642838, 0.765492,
		0.991850, 0.077394, -0.101207,
		33.521320, 39.740463, 23.035547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973259, 40.421017, 23.198786>,  <32.827026, 39.686287, 23.106392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973259, 40.421017, 23.198786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271858, 40.248791, 22.995867>,  <33.451019, 40.145454, 22.874115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271858, 40.248791, 22.995867>,  <32.973259, 40.421017, 23.198786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271858, 40.248791, 22.995867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012196, 0.771139, -0.636550,
		0.665273, 0.468998, 0.580907,
		0.746501, -0.430564, -0.507298,
		33.495808, 40.119621, 22.843678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916027, 41.038918, 23.657484>,  <32.973259, 40.421017, 23.198786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916027, 41.038918, 23.657484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.543804, 41.134979, 23.768045>,  <32.320473, 41.192616, 23.834381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.543804, 41.134979, 23.768045>,  <32.916027, 41.038918, 23.657484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543804, 41.134979, 23.768045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101104, -0.556998, 0.824337,
		0.351922, 0.795035, 0.494035,
		-0.930553, 0.240153, 0.276401,
		32.264637, 41.207024, 23.850965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869579, 41.195282, 24.393044>,  <32.916027, 41.038918, 23.657484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869579, 41.195282, 24.393044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.490452, 41.083626, 24.331440>,  <32.262974, 41.016632, 24.294477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.490452, 41.083626, 24.331440>,  <32.869579, 41.195282, 24.393044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490452, 41.083626, 24.331440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052505, -0.613152, 0.788218,
		-0.314455, 0.739002, 0.595813,
		-0.947819, -0.279143, -0.154008,
		32.206104, 40.999882, 24.285238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517235, 41.164288, 25.090631>,  <32.869579, 41.195282, 24.393044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517235, 41.164288, 25.090631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.254585, 40.959362, 24.869223>,  <32.096996, 40.836407, 24.736378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.254585, 40.959362, 24.869223>,  <32.517235, 41.164288, 25.090631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254585, 40.959362, 24.869223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129474, -0.646437, 0.751901,
		-0.743025, 0.565380, 0.358133,
		-0.656620, -0.512313, -0.553521,
		32.057598, 40.805668, 24.703167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108337, 40.969749, 25.620747>,  <32.517235, 41.164288, 25.090631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108337, 40.969749, 25.620747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.967655, 40.737976, 25.326656>,  <31.883245, 40.598911, 25.150202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.967655, 40.737976, 25.326656>,  <32.108337, 40.969749, 25.620747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967655, 40.737976, 25.326656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189674, -0.725005, 0.662111,
		-0.916692, 0.372324, 0.145087,
		-0.351709, -0.579433, -0.735227,
		31.862143, 40.564148, 25.106089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357885, 40.773933, 25.775600>,  <32.108337, 40.969749, 25.620747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357885, 40.773933, 25.775600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.555231, 40.522041, 25.535589>,  <31.673639, 40.370907, 25.391582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.555231, 40.522041, 25.535589>,  <31.357885, 40.773933, 25.775600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555231, 40.522041, 25.535589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123687, -0.733611, 0.668219,
		-0.860983, -0.255461, -0.439828,
		0.493366, -0.629726, -0.600029,
		31.703241, 40.333122, 25.355579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027033, 40.202747, 25.928982>,  <31.357885, 40.773933, 25.775600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027033, 40.202747, 25.928982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.374853, 40.104012, 25.757891>,  <31.583546, 40.044769, 25.655235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.374853, 40.104012, 25.757891>,  <31.027033, 40.202747, 25.928982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374853, 40.104012, 25.757891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118476, -0.736556, 0.665920,
		-0.479421, -0.629727, -0.611229,
		0.869551, -0.246840, -0.427727,
		31.635719, 40.029961, 25.629572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014071, 39.507706, 26.087585>,  <31.027033, 40.202747, 25.928982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014071, 39.507706, 26.087585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.385790, 39.569046, 25.953192>,  <31.608822, 39.605850, 25.872555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.385790, 39.569046, 25.953192>,  <31.014071, 39.507706, 26.087585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385790, 39.569046, 25.953192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339528, -0.712718, 0.613803,
		-0.145336, -0.684483, -0.714395,
		0.929300, 0.153350, -0.335985,
		31.664579, 39.615051, 25.852396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.040653, 43.680748, 21.537615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.196957, 43.469643, 21.235945>,  <35.290737, 43.342979, 21.054943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.196957, 43.469643, 21.235945>,  <35.040653, 43.680748, 21.537615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196957, 43.469643, 21.235945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271438, 0.716818, -0.642256,
		0.879564, 0.455676, 0.136845,
		0.390754, -0.527760, -0.754176,
		35.314182, 43.311314, 21.009691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350998, 43.862370, 22.239969>,  <35.040653, 43.680748, 21.537615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350998, 43.862370, 22.239969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.666927, 43.698776, 22.057140>,  <35.856483, 43.600620, 21.947443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.666927, 43.698776, 22.057140>,  <35.350998, 43.862370, 22.239969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666927, 43.698776, 22.057140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055873, -0.694147, 0.717662,
		-0.610785, -0.592363, -0.525402,
		0.789822, -0.408981, -0.457072,
		35.903873, 43.576080, 21.920019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245071, 43.216290, 22.236313>,  <35.350998, 43.862370, 22.239969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245071, 43.216290, 22.236313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.642502, 43.261562, 22.236595>,  <35.880959, 43.288727, 22.236765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.642502, 43.261562, 22.236595>,  <35.245071, 43.216290, 22.236313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642502, 43.261562, 22.236595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066277, -0.586857, 0.806973,
		0.091745, -0.801741, -0.590587,
		0.993575, 0.113179, 0.000704,
		35.940575, 43.295517, 22.236807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503334, 42.579659, 22.580544>,  <35.245071, 43.216290, 22.236313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503334, 42.579659, 22.580544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.834896, 42.803284, 22.588182>,  <36.033833, 42.937458, 22.592766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.834896, 42.803284, 22.588182>,  <35.503334, 42.579659, 22.580544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834896, 42.803284, 22.588182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359350, -0.558334, 0.747751,
		0.428706, -0.612949, -0.663705,
		0.828902, 0.559067, 0.019098,
		36.083569, 42.971004, 22.593912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171299, 42.076916, 22.573622>,  <35.503334, 42.579659, 22.580544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171299, 42.076916, 22.573622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.243526, 42.437572, 22.730820>,  <36.286865, 42.653965, 22.825138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.243526, 42.437572, 22.730820>,  <36.171299, 42.076916, 22.573622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243526, 42.437572, 22.730820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526624, -0.426092, 0.735604,
		0.830699, 0.074130, -0.551764,
		0.180572, 0.901637, 0.392993,
		36.297699, 42.708065, 22.848717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792698, 42.069729, 22.887957>,  <36.171299, 42.076916, 22.573622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792698, 42.069729, 22.887957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.612164, 42.377800, 23.068237>,  <36.503845, 42.562641, 23.176405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.612164, 42.377800, 23.068237>,  <36.792698, 42.069729, 22.887957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612164, 42.377800, 23.068237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424915, -0.258646, 0.867496,
		0.784695, 0.583037, -0.210524,
		-0.451331, 0.770175, 0.450700,
		36.476765, 42.608852, 23.203447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364712, 42.337307, 23.243372>,  <36.792698, 42.069729, 22.887957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364712, 42.337307, 23.243372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.023876, 42.474400, 23.401600>,  <36.819374, 42.556656, 23.496536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.023876, 42.474400, 23.401600>,  <37.364712, 42.337307, 23.243372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023876, 42.474400, 23.401600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306481, -0.285928, 0.907917,
		0.424278, 0.894863, 0.138596,
		-0.852090, 0.342732, 0.395572,
		36.768250, 42.577221, 23.520271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639130, 42.709385, 23.744633>,  <37.364712, 42.337307, 23.243372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639130, 42.709385, 23.744633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.262192, 42.615116, 23.839672>,  <37.036030, 42.558556, 23.896696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.262192, 42.615116, 23.839672>,  <37.639130, 42.709385, 23.744633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262192, 42.615116, 23.839672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322932, -0.454123, 0.830353,
		-0.087790, 0.859204, 0.504044,
		-0.942342, -0.235668, 0.237597,
		36.979488, 42.544415, 23.910952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689629, 42.826496, 24.474825>,  <37.639130, 42.709385, 23.744633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689629, 42.826496, 24.474825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.358757, 42.607792, 24.422918>,  <37.160236, 42.476570, 24.391775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.358757, 42.607792, 24.422918>,  <37.689629, 42.826496, 24.474825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358757, 42.607792, 24.422918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175721, -0.471010, 0.864449,
		-0.533764, 0.692247, 0.485684,
		-0.827174, -0.546757, -0.129766,
		37.110603, 42.443764, 24.383989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331615, 42.842579, 25.083414>,  <37.689629, 42.826496, 24.474825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331615, 42.842579, 25.083414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.149773, 42.527809, 24.916521>,  <37.040665, 42.338947, 24.816385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.149773, 42.527809, 24.916521>,  <37.331615, 42.842579, 25.083414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149773, 42.527809, 24.916521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267183, -0.567348, 0.778929,
		-0.849673, 0.242631, 0.468174,
		-0.454610, -0.786922, -0.417233,
		37.013390, 42.291733, 24.791351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785255, 42.652920, 25.475067>,  <37.331615, 42.842579, 25.083414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785255, 42.652920, 25.475067> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.886600, 42.321976, 25.274555>,  <36.947407, 42.123409, 25.154249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.886600, 42.321976, 25.274555>,  <36.785255, 42.652920, 25.475067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886600, 42.321976, 25.274555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302820, -0.424310, 0.853382,
		-0.918753, -0.368012, 0.143038,
		0.253363, -0.827362, -0.501278,
		36.962608, 42.073769, 25.124172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412594, 42.139027, 25.776224>,  <36.785255, 42.652920, 25.475067>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412594, 42.139027, 25.776224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.702232, 41.918236, 25.610815>,  <36.876015, 41.785763, 25.511570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.702232, 41.918236, 25.610815>,  <36.412594, 42.139027, 25.776224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702232, 41.918236, 25.610815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098180, -0.510975, 0.853970,
		-0.682672, -0.658959, -0.315804,
		0.724099, -0.551976, -0.413525,
		36.919464, 41.752644, 25.486757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645874, 42.152771, 25.900776>,  <36.412594, 42.139027, 25.776224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645874, 42.152771, 25.900776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.401203, 42.291668, 26.185106>,  <35.254402, 42.375008, 26.355705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.401203, 42.291668, 26.185106>,  <35.645874, 42.152771, 25.900776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401203, 42.291668, 26.185106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471737, 0.561199, -0.680088,
		-0.635071, -0.751317, -0.179464,
		-0.611677, 0.347245, 0.710825,
		35.217701, 42.395840, 26.398354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027668, 42.301254, 25.556843>,  <35.645874, 42.152771, 25.900776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027668, 42.301254, 25.556843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.954365, 42.499519, 25.896429>,  <34.910381, 42.618477, 26.100180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.954365, 42.499519, 25.896429>,  <35.027668, 42.301254, 25.556843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954365, 42.499519, 25.896429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660747, 0.577326, -0.479696,
		-0.727894, -0.648858, 0.221705,
		-0.183258, 0.495659, 0.848963,
		34.899387, 42.648216, 26.151117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263775, 42.325653, 25.671816>,  <35.027668, 42.301254, 25.556843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263775, 42.325653, 25.671816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.440147, 42.629387, 25.863230>,  <34.545971, 42.811626, 25.978077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.440147, 42.629387, 25.863230>,  <34.263775, 42.325653, 25.671816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440147, 42.629387, 25.863230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609135, 0.644741, -0.461805,
		-0.659194, -0.087868, 0.746822,
		0.440928, 0.759334, 0.478533,
		34.572426, 42.857185, 26.006790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663872, 42.776157, 25.786192>,  <34.263775, 42.325653, 25.671816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663872, 42.776157, 25.786192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.971367, 43.015881, 25.875519>,  <34.155865, 43.159714, 25.929115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.971367, 43.015881, 25.875519>,  <33.663872, 42.776157, 25.786192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971367, 43.015881, 25.875519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518822, 0.788538, -0.330198,
		-0.373986, 0.137973, 0.917114,
		0.768738, 0.599309, 0.223319,
		34.201988, 43.195675, 25.942514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361568, 43.321899, 26.066673>,  <33.663872, 42.776157, 25.786192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361568, 43.321899, 26.066673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.724983, 43.457611, 25.969137>,  <33.943031, 43.539040, 25.910616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.724983, 43.457611, 25.969137>,  <33.361568, 43.321899, 26.066673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724983, 43.457611, 25.969137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413247, 0.815751, -0.404694,
		0.061608, 0.468444, 0.881343,
		0.908532, 0.339280, -0.243840,
		33.997543, 43.559395, 25.895985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422752, 44.167259, 26.209263>,  <33.361568, 43.321899, 26.066673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422752, 44.167259, 26.209263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.681232, 44.039917, 25.931824>,  <33.836319, 43.963512, 25.765360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.681232, 44.039917, 25.931824>,  <33.422752, 44.167259, 26.209263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681232, 44.039917, 25.931824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357231, 0.676944, -0.643532,
		0.674396, 0.663625, 0.323716,
		0.646201, -0.318354, -0.693595,
		33.875092, 43.944412, 25.723745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620609, 44.725620, 25.928480>,  <33.422752, 44.167259, 26.209263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620609, 44.725620, 25.928480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.705284, 44.446449, 25.654814>,  <33.756088, 44.278946, 25.490614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.705284, 44.446449, 25.654814>,  <33.620609, 44.725620, 25.928480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705284, 44.446449, 25.654814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194519, 0.655940, -0.729319,
		0.957784, 0.287472, 0.003095,
		0.211689, -0.697928, -0.684167,
		33.768791, 44.237072, 25.449564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839420, 45.172588, 25.389322>,  <33.620609, 44.725620, 25.928480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839420, 45.172588, 25.389322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.796417, 44.819504, 25.206341>,  <33.770615, 44.607655, 25.096552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.796417, 44.819504, 25.206341>,  <33.839420, 45.172588, 25.389322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796417, 44.819504, 25.206341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421616, 0.457177, -0.783090,
		0.900379, 0.108684, -0.421314,
		-0.107506, -0.882710, -0.457455,
		33.764164, 44.554691, 25.069105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985352, 45.403194, 24.698896>,  <33.839420, 45.172588, 25.389322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985352, 45.403194, 24.698896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.758266, 45.073948, 24.704193>,  <33.622017, 44.876400, 24.707371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.758266, 45.073948, 24.704193>,  <33.985352, 45.403194, 24.698896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758266, 45.073948, 24.704193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536788, 0.357937, -0.764029,
		0.624149, -0.440855, -0.645046,
		-0.567712, -0.823121, 0.013240,
		33.587952, 44.827011, 24.708164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847633, 45.174305, 24.032108>,  <33.985352, 45.403194, 24.698896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847633, 45.174305, 24.032108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.560093, 44.950085, 24.196564>,  <33.387569, 44.815552, 24.295237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.560093, 44.950085, 24.196564>,  <33.847633, 45.174305, 24.032108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560093, 44.950085, 24.196564> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602597, 0.207597, -0.770572,
		0.346593, -0.801678, -0.487017,
		-0.718854, -0.560550, 0.411137,
		33.344437, 44.781921, 24.319904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558048, 44.779308, 23.534014>,  <33.847633, 45.174305, 24.032108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558048, 44.779308, 23.534014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.266582, 44.777050, 23.807951>,  <33.091702, 44.775696, 23.972313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.266582, 44.777050, 23.807951>,  <33.558048, 44.779308, 23.534014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266582, 44.777050, 23.807951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673849, 0.184543, -0.715452,
		-0.122347, -0.982808, -0.138273,
		-0.728669, -0.005642, 0.684843,
		33.047981, 44.775356, 24.013403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025101, 44.362759, 23.287815>,  <33.558048, 44.779308, 23.534014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025101, 44.362759, 23.287815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.874039, 44.627209, 23.547132>,  <32.783401, 44.785881, 23.702723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.874039, 44.627209, 23.547132>,  <33.025101, 44.362759, 23.287815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874039, 44.627209, 23.547132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607759, 0.351232, -0.712225,
		-0.698574, -0.662983, 0.269162,
		-0.377654, 0.661128, 0.648296,
		32.760742, 44.825546, 23.741621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293076, 44.176003, 23.177866>,  <33.025101, 44.362759, 23.287815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293076, 44.176003, 23.177866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.308369, 44.532055, 23.359503>,  <32.317543, 44.745686, 23.468485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.308369, 44.532055, 23.359503>,  <32.293076, 44.176003, 23.177866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308369, 44.532055, 23.359503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710232, 0.343865, -0.614271,
		-0.702929, -0.299027, 0.645347,
		0.038229, 0.890135, 0.454091,
		32.319836, 44.799095, 23.495729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688013, 43.660931, 22.949913>,  <32.293076, 44.176003, 23.177866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688013, 43.660931, 22.949913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.075874, 43.640591, 22.854261>,  <32.308590, 43.628387, 22.796869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.075874, 43.640591, 22.854261>,  <31.688013, 43.660931, 22.949913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075874, 43.640591, 22.854261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244329, -0.167314, -0.955149,
		0.008563, 0.984591, -0.174662,
		0.969655, -0.050854, -0.239131,
		32.366772, 43.625336, 22.782522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143959, 44.030609, 22.712368>,  <31.688013, 43.660931, 22.949913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143959, 44.030609, 22.712368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.294760, 43.780323, 22.439207>,  <31.385241, 43.630154, 22.275311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.294760, 43.780323, 22.439207>,  <31.143959, 44.030609, 22.712368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294760, 43.780323, 22.439207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036834, -0.746852, 0.663969,
		-0.925481, -0.225162, -0.304610,
		0.377000, -0.625711, -0.682904,
		31.407860, 43.592609, 22.234337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819046, 43.369179, 22.963598>,  <31.143959, 44.030609, 22.712368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819046, 43.369179, 22.963598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.115433, 43.273781, 22.712492>,  <31.293264, 43.216541, 22.561829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.115433, 43.273781, 22.712492>,  <30.819046, 43.369179, 22.963598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115433, 43.273781, 22.712492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088079, -0.892222, 0.442924,
		-0.665741, -0.383485, -0.640101,
		0.740967, -0.238494, -0.627765,
		31.337723, 43.202232, 22.524162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690828, 42.715508, 22.705542>,  <30.819046, 43.369179, 22.963598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690828, 42.715508, 22.705542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.084600, 42.752735, 22.645903>,  <31.320864, 42.775074, 22.610119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.084600, 42.752735, 22.645903>,  <30.690828, 42.715508, 22.705542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084600, 42.752735, 22.645903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138348, -0.933544, 0.330690,
		-0.108412, -0.346170, -0.931887,
		0.984432, 0.093074, -0.149099,
		31.379930, 42.780659, 22.601173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880507, 42.055317, 22.818699>,  <30.690828, 42.715508, 22.705542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880507, 42.055317, 22.818699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.244675, 42.220390, 22.830166>,  <31.463177, 42.319435, 22.837046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.244675, 42.220390, 22.830166>,  <30.880507, 42.055317, 22.818699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244675, 42.220390, 22.830166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364050, -0.832183, 0.418258,
		0.196467, -0.370355, -0.907876,
		0.910422, 0.412686, 0.028669,
		31.517801, 42.344196, 22.838766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350340, 41.520466, 22.571392>,  <30.880507, 42.055317, 22.818699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350340, 41.520466, 22.571392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.563339, 41.791481, 22.774326>,  <31.691139, 41.954090, 22.896088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.563339, 41.791481, 22.774326>,  <31.350340, 41.520466, 22.571392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563339, 41.791481, 22.774326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445715, -0.734002, 0.512425,
		0.719572, -0.046738, -0.692843,
		0.532498, 0.677537, 0.507336,
		31.723089, 41.994743, 22.926527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025230, 41.400009, 22.495031>,  <31.350340, 41.520466, 22.571392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025230, 41.400009, 22.495031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.003834, 41.596439, 22.842819>,  <31.990997, 41.714298, 23.051493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.003834, 41.596439, 22.842819>,  <32.025230, 41.400009, 22.495031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003834, 41.596439, 22.842819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289052, -0.825826, 0.484211,
		0.955818, 0.277222, -0.097775,
		-0.053489, 0.491079, 0.869471,
		31.987787, 41.743763, 23.103661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601215, 41.217567, 22.930758>,  <32.025230, 41.400009, 22.495031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601215, 41.217567, 22.930758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.335583, 41.346878, 23.200420>,  <32.176205, 41.424465, 23.362219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.335583, 41.346878, 23.200420>,  <32.601215, 41.217567, 22.930758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335583, 41.346878, 23.200420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232876, -0.767401, 0.597382,
		0.710467, 0.553706, 0.434335,
		-0.664083, 0.323274, 0.674157,
		32.136356, 41.443859, 23.402668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312840, 41.046593, 22.892338>,  <32.601215, 41.217567, 22.930758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312840, 41.046593, 22.892338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.459415, 40.735123, 22.688614>,  <33.547359, 40.548241, 22.566380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.459415, 40.735123, 22.688614>,  <33.312840, 41.046593, 22.892338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459415, 40.735123, 22.688614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035151, 0.558578, -0.828707,
		0.929778, 0.285767, 0.232055,
		0.366437, -0.778671, -0.509308,
		33.569347, 40.501522, 22.535822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966698, 41.247993, 22.600262>,  <33.312840, 41.046593, 22.892338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966698, 41.247993, 22.600262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.850731, 40.932575, 22.383320>,  <33.781151, 40.743324, 22.253155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.850731, 40.932575, 22.383320>,  <33.966698, 41.247993, 22.600262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850731, 40.932575, 22.383320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240268, 0.488576, -0.838787,
		0.926401, -0.373491, 0.047814,
		-0.289919, -0.788541, -0.542355,
		33.763756, 40.696014, 22.220613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410500, 41.158543, 22.060638>,  <33.966698, 41.247993, 22.600262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410500, 41.158543, 22.060638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.094761, 40.945461, 21.938553>,  <33.905315, 40.817612, 21.865301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.094761, 40.945461, 21.938553>,  <34.410500, 41.158543, 22.060638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094761, 40.945461, 21.938553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148614, 0.316560, -0.936858,
		0.595688, -0.784866, -0.170709,
		-0.789348, -0.532706, -0.305213,
		33.857956, 40.785648, 21.846989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636974, 40.927967, 21.412416>,  <34.410500, 41.158543, 22.060638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636974, 40.927967, 21.412416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.239090, 40.902073, 21.380501>,  <34.000359, 40.886536, 21.361351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.239090, 40.902073, 21.380501>,  <34.636974, 40.927967, 21.412416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239090, 40.902073, 21.380501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034244, 0.523275, -0.851476,
		0.096872, -0.849702, -0.518289,
		-0.994708, -0.064736, -0.079788,
		33.940678, 40.882652, 21.356564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492577, 40.657074, 20.833290>,  <34.636974, 40.927967, 21.412416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492577, 40.657074, 20.833290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.161606, 40.858440, 20.932838>,  <33.963024, 40.979259, 20.992567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.161606, 40.858440, 20.932838>,  <34.492577, 40.657074, 20.833290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161606, 40.858440, 20.932838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012425, 0.459471, -0.888106,
		-0.561434, -0.731752, -0.386434,
		-0.827428, 0.503414, 0.248871,
		33.913376, 41.009464, 21.007500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276646, 40.843506, 20.234709>,  <34.492577, 40.657074, 20.833290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276646, 40.843506, 20.234709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.006821, 41.032768, 20.461367>,  <33.844925, 41.146324, 20.597361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.006821, 41.032768, 20.461367>,  <34.276646, 40.843506, 20.234709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006821, 41.032768, 20.461367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174310, 0.643794, -0.745081,
		-0.717340, -0.601378, -0.351807,
		-0.674566, 0.473153, 0.566645,
		33.804451, 41.174713, 20.631361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651634, 40.929619, 19.774202>,  <34.276646, 40.843506, 20.234709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651634, 40.929619, 19.774202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.597878, 41.200821, 20.063267>,  <33.565624, 41.363544, 20.236706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.597878, 41.200821, 20.063267>,  <33.651634, 40.929619, 19.774202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597878, 41.200821, 20.063267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055965, 0.722921, -0.688660,
		-0.989346, -0.132996, -0.059212,
		-0.134394, 0.678010, 0.722662,
		33.557560, 41.404224, 20.280066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079857, 41.255192, 19.573568>,  <33.651634, 40.929619, 19.774202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079857, 41.255192, 19.573568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.276375, 41.506557, 19.814808>,  <33.394287, 41.657375, 19.959553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.276375, 41.506557, 19.814808>,  <33.079857, 41.255192, 19.573568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276375, 41.506557, 19.814808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159012, 0.745503, -0.647256,
		-0.856356, 0.222093, 0.466186,
		0.491294, 0.628411, 0.603100,
		33.423763, 41.695080, 19.995737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619255, 41.854904, 19.691799>,  <33.079857, 41.255192, 19.573568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619255, 41.854904, 19.691799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.986012, 41.984329, 19.785280>,  <33.206066, 42.061985, 19.841368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.986012, 41.984329, 19.785280>,  <32.619255, 41.854904, 19.691799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986012, 41.984329, 19.785280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132516, 0.799078, -0.586442,
		-0.376498, 0.506734, 0.775545,
		0.916891, 0.323566, 0.233701,
		33.261078, 42.081398, 19.855391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.732071, 33.107475, 32.747353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.032043, 33.226604, 32.511082>,  <38.212029, 33.298084, 32.369320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.032043, 33.226604, 32.511082>,  <37.732071, 33.107475, 32.747353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032043, 33.226604, 32.511082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624485, 0.613292, -0.483624,
		0.218222, 0.731555, 0.645915,
		0.749932, 0.297826, -0.590679,
		38.257023, 33.315952, 32.333878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643833, 33.797665, 32.608059>,  <37.732071, 33.107475, 32.747353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643833, 33.797665, 32.608059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.866276, 33.647320, 32.311554>,  <37.999741, 33.557114, 32.133652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.866276, 33.647320, 32.311554>,  <37.643833, 33.797665, 32.608059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866276, 33.647320, 32.311554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516319, 0.542667, -0.662516,
		0.651276, 0.751157, 0.107713,
		0.556106, -0.375867, -0.741263,
		38.033108, 33.534561, 32.089176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929974, 34.397884, 32.239693>,  <37.643833, 33.797665, 32.608059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929974, 34.397884, 32.239693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.920559, 34.090290, 31.984159>,  <37.914909, 33.905735, 31.830839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.920559, 34.090290, 31.984159>,  <37.929974, 34.397884, 32.239693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920559, 34.090290, 31.984159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519183, 0.555485, -0.649527,
		0.854339, 0.316383, -0.412318,
		-0.023537, -0.768985, -0.638833,
		37.913498, 33.859596, 31.792509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006840, 34.737286, 31.707685>,  <37.929974, 34.397884, 32.239693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006840, 34.737286, 31.707685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.915718, 34.377888, 31.557587>,  <37.861046, 34.162247, 31.467527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.915718, 34.377888, 31.557587>,  <38.006840, 34.737286, 31.707685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915718, 34.377888, 31.557587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542983, 0.437115, -0.717007,
		0.808255, 0.040418, -0.587444,
		-0.227801, -0.898497, -0.375247,
		37.847378, 34.108337, 31.445013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208664, 34.631413, 30.933346>,  <38.006840, 34.737286, 31.707685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208664, 34.631413, 30.933346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.915718, 34.362720, 30.977917>,  <37.739948, 34.201504, 31.004660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.915718, 34.362720, 30.977917>,  <38.208664, 34.631413, 30.933346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915718, 34.362720, 30.977917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433583, 0.333887, -0.836974,
		0.525018, -0.661284, -0.535779,
		-0.732367, -0.671731, 0.111425,
		37.696007, 34.161201, 31.011345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055809, 34.281292, 30.194109>,  <38.208664, 34.631413, 30.933346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055809, 34.281292, 30.194109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.736389, 34.227863, 30.428879>,  <37.544739, 34.195805, 30.569740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.736389, 34.227863, 30.428879>,  <38.055809, 34.281292, 30.194109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736389, 34.227863, 30.428879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599254, 0.268281, -0.754268,
		-0.056709, -0.954035, -0.294281,
		-0.798548, -0.133576, 0.586923,
		37.496826, 34.187790, 30.604956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640984, 33.935070, 29.737740>,  <38.055809, 34.281292, 30.194109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640984, 33.935070, 29.737740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372910, 34.048744, 30.011992>,  <37.212067, 34.116951, 30.176542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.372910, 34.048744, 30.011992>,  <37.640984, 33.935070, 29.737740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372910, 34.048744, 30.011992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682005, 0.128617, -0.719949,
		-0.292784, -0.950103, 0.107621,
		-0.670184, 0.284188, 0.685632,
		37.171856, 34.133999, 30.217682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093784, 33.589108, 29.536551>,  <37.640984, 33.935070, 29.737740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093784, 33.589108, 29.536551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.932533, 33.875366, 29.764704>,  <36.835785, 34.047123, 29.901596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.932533, 33.875366, 29.764704>,  <37.093784, 33.589108, 29.536551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932533, 33.875366, 29.764704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682701, 0.179888, -0.708209,
		-0.609434, -0.674897, 0.416057,
		-0.403125, 0.715649, 0.570383,
		36.811596, 34.090061, 29.935818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380669, 33.500156, 29.568975>,  <37.093784, 33.589108, 29.536551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380669, 33.500156, 29.568975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469658, 33.883751, 29.639236>,  <36.523052, 34.113907, 29.681393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469658, 33.883751, 29.639236>,  <36.380669, 33.500156, 29.568975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469658, 33.883751, 29.639236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493994, 0.266210, -0.827709,
		-0.840521, 0.097373, 0.532957,
		0.222475, 0.958984, 0.175653,
		36.536400, 34.171448, 29.691933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771797, 33.797066, 29.456242>,  <36.380669, 33.500156, 29.568975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771797, 33.797066, 29.456242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.023293, 34.108089, 29.452612>,  <36.174191, 34.294704, 29.450434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.023293, 34.108089, 29.452612>,  <35.771797, 33.797066, 29.456242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023293, 34.108089, 29.452612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523260, 0.414424, -0.744615,
		-0.575224, 0.472918, 0.667432,
		0.628742, 0.777561, -0.009072,
		36.211914, 34.341358, 29.449890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374722, 34.329800, 29.286770>,  <35.771797, 33.797066, 29.456242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374722, 34.329800, 29.286770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.739208, 34.472706, 29.204760>,  <35.957901, 34.558449, 29.155554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.739208, 34.472706, 29.204760>,  <35.374722, 34.329800, 29.286770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739208, 34.472706, 29.204760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380956, 0.541602, -0.749359,
		-0.156680, 0.760938, 0.629623,
		0.911221, 0.357269, -0.205026,
		36.012573, 34.579887, 29.143251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265739, 35.032211, 29.209553>,  <35.374722, 34.329800, 29.286770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265739, 35.032211, 29.209553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585258, 34.897522, 29.010138>,  <35.776970, 34.816708, 28.890488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.585258, 34.897522, 29.010138>,  <35.265739, 35.032211, 29.209553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585258, 34.897522, 29.010138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391739, 0.337788, -0.855827,
		0.456578, 0.878929, 0.137916,
		0.798797, -0.336725, -0.498537,
		35.824898, 34.796505, 28.860577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116917, 35.698215, 29.618668>,  <35.265739, 35.032211, 29.209553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116917, 35.698215, 29.618668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.717270, 35.686848, 29.630991>,  <34.477482, 35.680027, 29.638386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.717270, 35.686848, 29.630991>,  <35.116917, 35.698215, 29.618668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717270, 35.686848, 29.630991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036008, -0.205748, 0.977942,
		-0.021456, 0.978192, 0.206591,
		-0.999121, -0.028422, 0.030808,
		34.417534, 35.678322, 29.640234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880253, 36.154461, 30.152401>,  <35.116917, 35.698215, 29.618668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880253, 36.154461, 30.152401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.607151, 35.863110, 30.129364>,  <34.443291, 35.688301, 30.115541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.607151, 35.863110, 30.129364>,  <34.880253, 36.154461, 30.152401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607151, 35.863110, 30.129364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072657, -0.146116, 0.986596,
		-0.727028, 0.669417, 0.152682,
		-0.682753, -0.728376, -0.057592,
		34.402325, 35.644596, 30.112087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573994, 36.119461, 30.831861>,  <34.880253, 36.154461, 30.152401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573994, 36.119461, 30.831861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455036, 35.775818, 30.665249>,  <34.383663, 35.569633, 30.565281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455036, 35.775818, 30.665249>,  <34.573994, 36.119461, 30.831861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455036, 35.775818, 30.665249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082911, -0.411382, 0.907684,
		-0.951149, 0.304473, 0.051113,
		-0.297393, -0.859105, -0.416530,
		34.365818, 35.518085, 30.540291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009518, 35.796436, 31.267185>,  <34.573994, 36.119461, 30.831861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009518, 35.796436, 31.267185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.156841, 35.479939, 31.071932>,  <34.245235, 35.290039, 30.954781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.156841, 35.479939, 31.071932>,  <34.009518, 35.796436, 31.267185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156841, 35.479939, 31.071932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026118, -0.516029, 0.856173,
		-0.929336, -0.328086, -0.169393,
		0.368309, -0.791248, -0.488133,
		34.267334, 35.242565, 30.925491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617046, 35.245701, 31.508224>,  <34.009518, 35.796436, 31.267185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617046, 35.245701, 31.508224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.941551, 35.061008, 31.364748>,  <34.136253, 34.950191, 31.278662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.941551, 35.061008, 31.364748>,  <33.617046, 35.245701, 31.508224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941551, 35.061008, 31.364748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071304, -0.530769, 0.844511,
		-0.580324, -0.710693, -0.397667,
		0.811258, -0.461735, -0.358693,
		34.184929, 34.922489, 31.257141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475357, 34.569221, 31.488852>,  <33.617046, 35.245701, 31.508224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475357, 34.569221, 31.488852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874962, 34.584793, 31.497471>,  <34.114723, 34.594135, 31.502642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874962, 34.584793, 31.497471>,  <33.475357, 34.569221, 31.488852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874962, 34.584793, 31.497471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000617, -0.496346, 0.868125,
		0.044492, -0.867252, -0.495878,
		0.999010, 0.038931, 0.021549,
		34.174664, 34.596474, 31.503935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652931, 33.906921, 31.689117>,  <33.475357, 34.569221, 31.488852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652931, 33.906921, 31.689117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.985992, 34.117752, 31.757097>,  <34.185829, 34.244251, 31.797884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.985992, 34.117752, 31.757097>,  <33.652931, 33.906921, 31.689117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985992, 34.117752, 31.757097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193072, -0.563907, 0.802952,
		0.519051, -0.635768, -0.571301,
		0.832652, 0.527075, 0.169948,
		34.235786, 34.275875, 31.808081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147190, 33.412960, 31.779482>,  <33.652931, 33.906921, 31.689117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147190, 33.412960, 31.779482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301727, 33.732952, 31.963118>,  <34.394451, 33.924950, 32.073299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301727, 33.732952, 31.963118>,  <34.147190, 33.412960, 31.779482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301727, 33.732952, 31.963118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439403, -0.597259, 0.670974,
		0.810965, -0.057501, -0.582263,
		0.386344, 0.799985, 0.459090,
		34.417629, 33.972946, 32.100845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871387, 33.203991, 32.061581>,  <34.147190, 33.412960, 31.779482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871387, 33.203991, 32.061581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.775833, 33.536423, 32.262474>,  <34.718502, 33.735882, 32.383011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.775833, 33.536423, 32.262474>,  <34.871387, 33.203991, 32.061581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775833, 33.536423, 32.262474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388740, -0.392106, 0.833747,
		0.889840, 0.394407, -0.229407,
		-0.238884, 0.831081, 0.502234,
		34.704166, 33.785748, 32.413143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276981, 33.236328, 32.630653>,  <34.871387, 33.203991, 32.061581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276981, 33.236328, 32.630653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048737, 33.538956, 32.758408>,  <34.911789, 33.720531, 32.835060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.048737, 33.538956, 32.758408>,  <35.276981, 33.236328, 32.630653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048737, 33.538956, 32.758408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209766, -0.241733, 0.947398,
		0.793976, 0.607595, -0.020766,
		-0.570614, 0.756567, 0.319383,
		34.877552, 33.765926, 32.854221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593803, 33.685543, 32.983345>,  <35.276981, 33.236328, 32.630653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593803, 33.685543, 32.983345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.247894, 33.773838, 33.163769>,  <35.040348, 33.826817, 33.272022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.247894, 33.773838, 33.163769>,  <35.593803, 33.685543, 32.983345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247894, 33.773838, 33.163769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422787, -0.164648, 0.891147,
		0.270974, 0.961336, 0.049058,
		-0.864769, 0.220736, 0.451055,
		34.988464, 33.840057, 33.299084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788010, 34.018742, 33.534988>,  <35.593803, 33.685543, 32.983345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788010, 34.018742, 33.534988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.420559, 33.895645, 33.634125>,  <35.200089, 33.821789, 33.693607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.420559, 33.895645, 33.634125>,  <35.788010, 34.018742, 33.534988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420559, 33.895645, 33.634125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325728, -0.234727, 0.915863,
		-0.223675, 0.922062, 0.315866,
		-0.918624, -0.307742, 0.247839,
		35.144970, 33.803322, 33.708477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554577, 34.382244, 34.116241>,  <35.788010, 34.018742, 33.534988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554577, 34.382244, 34.116241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.334564, 34.048214, 34.120510>,  <35.202557, 33.847797, 34.123070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.334564, 34.048214, 34.120510>,  <35.554577, 34.382244, 34.116241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334564, 34.048214, 34.120510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323117, -0.201011, 0.924765,
		-0.770103, 0.512099, 0.380390,
		-0.550034, -0.835074, 0.010668,
		35.169556, 33.797691, 34.123711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153591, 34.399174, 34.794796>,  <35.554577, 34.382244, 34.116241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153591, 34.399174, 34.794796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144878, 34.017365, 34.675854>,  <35.139648, 33.788280, 34.604488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144878, 34.017365, 34.675854>,  <35.153591, 34.399174, 34.794796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144878, 34.017365, 34.675854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242741, -0.293574, 0.924603,
		-0.969846, -0.052037, 0.238097,
		-0.021785, -0.954519, -0.297353,
		35.138344, 33.731010, 34.586647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298912, 35.140350, 34.684395>,  <35.153591, 34.399174, 34.794796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298912, 35.140350, 34.684395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377674, 35.475323, 34.888332>,  <35.424931, 35.676304, 35.010696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377674, 35.475323, 34.888332>,  <35.298912, 35.140350, 34.684395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377674, 35.475323, 34.888332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953399, -0.284806, 0.099582,
		0.228600, 0.466479, -0.854482,
		0.196909, 0.837426, 0.509847,
		35.436749, 35.726551, 35.041286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816963, 35.570213, 34.306942>,  <35.298912, 35.140350, 34.684395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816963, 35.570213, 34.306942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838463, 35.588356, 34.705952>,  <35.851364, 35.599243, 34.945358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838463, 35.588356, 34.705952>,  <35.816963, 35.570213, 34.306942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838463, 35.588356, 34.705952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905497, -0.423323, -0.029545,
		0.420935, 0.904843, -0.063826,
		0.053753, 0.045358, 0.997524,
		35.854588, 35.601963, 35.005207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546585, 35.556480, 34.363243>,  <35.816963, 35.570213, 34.306942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546585, 35.556480, 34.363243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.898724, 35.651157, 34.198818>,  <37.110008, 35.707962, 34.100163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.898724, 35.651157, 34.198818>,  <36.546585, 35.556480, 34.363243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898724, 35.651157, 34.198818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472732, 0.508941, -0.719377,
		0.038934, 0.827621, 0.559936,
		0.880346, 0.236691, -0.411058,
		37.162827, 35.722164, 34.075500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617325, 36.354416, 34.246693>,  <36.546585, 35.556480, 34.363243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617325, 36.354416, 34.246693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864059, 36.186237, 33.980541>,  <37.012100, 36.085331, 33.820850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.864059, 36.186237, 33.980541>,  <36.617325, 36.354416, 34.246693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864059, 36.186237, 33.980541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382479, 0.578725, -0.720269,
		0.687908, 0.698785, 0.196169,
		0.616841, -0.420448, -0.665380,
		37.049110, 36.060104, 33.780926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761612, 36.908646, 33.800919>,  <36.617325, 36.354416, 34.246693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761612, 36.908646, 33.800919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.883427, 36.570469, 33.625427>,  <36.956516, 36.367561, 33.520134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.883427, 36.570469, 33.625427>,  <36.761612, 36.908646, 33.800919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883427, 36.570469, 33.625427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240136, 0.377577, -0.894299,
		0.921734, 0.377699, -0.088036,
		0.304535, -0.845446, -0.438725,
		36.974789, 36.316833, 33.493809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296440, 37.059486, 33.225288>,  <36.761612, 36.908646, 33.800919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296440, 37.059486, 33.225288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.116329, 36.713573, 33.136383>,  <37.008263, 36.506027, 33.083038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.116329, 36.713573, 33.136383>,  <37.296440, 37.059486, 33.225288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116329, 36.713573, 33.136383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326014, 0.390971, -0.860730,
		0.831243, -0.315106, -0.457977,
		-0.450277, -0.864783, -0.222263,
		36.981247, 36.454140, 33.069706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523544, 36.954315, 32.604191>,  <37.296440, 37.059486, 33.225288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523544, 36.954315, 32.604191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.190388, 36.734982, 32.634182>,  <36.990494, 36.603382, 32.652176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.190388, 36.734982, 32.634182>,  <37.523544, 36.954315, 32.604191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190388, 36.734982, 32.634182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335165, 0.391947, -0.856762,
		0.440406, -0.738719, -0.510232,
		-0.832891, -0.548335, 0.074977,
		36.940521, 36.570480, 32.656673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350006, 36.522133, 31.916538>,  <37.523544, 36.954315, 32.604191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350006, 36.522133, 31.916538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.006237, 36.575947, 32.113834>,  <36.799973, 36.608234, 32.232212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.006237, 36.575947, 32.113834>,  <37.350006, 36.522133, 31.916538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006237, 36.575947, 32.113834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376643, 0.485787, -0.788765,
		-0.345723, -0.863662, -0.366829,
		-0.859427, 0.134531, 0.493240,
		36.748409, 36.616306, 32.261806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729435, 36.338024, 31.539232>,  <37.350006, 36.522133, 31.916538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729435, 36.338024, 31.539232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.594109, 36.612770, 31.796530>,  <36.512913, 36.777618, 31.950909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.594109, 36.612770, 31.796530>,  <36.729435, 36.338024, 31.539232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594109, 36.612770, 31.796530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646849, 0.326722, -0.689086,
		-0.683469, -0.649211, 0.333760,
		-0.338315, 0.686861, 0.643246,
		36.492615, 36.818829, 31.989504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086094, 36.513390, 31.132202>,  <36.729435, 36.338024, 31.539232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086094, 36.513390, 31.132202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094688, 36.772530, 31.436789>,  <36.099846, 36.928013, 31.619541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094688, 36.772530, 31.436789>,  <36.086094, 36.513390, 31.132202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094688, 36.772530, 31.436789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568206, 0.634590, -0.523868,
		-0.822606, -0.421413, 0.381747,
		0.021488, 0.647848, 0.761467,
		36.101135, 36.966885, 31.665228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431747, 36.724739, 31.239199>,  <36.086094, 36.513390, 31.132202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431747, 36.724739, 31.239199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.668076, 36.994793, 31.415890>,  <35.809872, 37.156826, 31.521904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.668076, 36.994793, 31.415890>,  <35.431747, 36.724739, 31.239199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668076, 36.994793, 31.415890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491037, 0.735328, -0.467093,
		-0.640165, 0.059064, 0.765964,
		0.590823, 0.675133, 0.441728,
		35.845322, 37.197334, 31.548409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023880, 37.344940, 31.393953>,  <35.431747, 36.724739, 31.239199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023880, 37.344940, 31.393953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.399632, 37.480171, 31.371092>,  <35.625084, 37.561310, 31.357374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.399632, 37.480171, 31.371092>,  <35.023880, 37.344940, 31.393953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399632, 37.480171, 31.371092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303972, 0.744018, -0.595011,
		-0.158639, 0.576314, 0.801683,
		0.939380, 0.338082, -0.057153,
		35.681446, 37.581596, 31.353947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901955, 38.153805, 31.400780>,  <35.023880, 37.344940, 31.393953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901955, 38.153805, 31.400780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.274303, 38.098049, 31.265694>,  <35.497711, 38.064594, 31.184643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.274303, 38.098049, 31.265694>,  <34.901955, 38.153805, 31.400780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274303, 38.098049, 31.265694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101626, 0.789084, -0.605820,
		0.350931, 0.598260, 0.720369,
		0.930870, -0.139393, -0.337713,
		35.553566, 38.056232, 31.164379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196877, 38.869259, 31.478910>,  <34.901955, 38.153805, 31.400780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196877, 38.869259, 31.478910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369167, 38.641045, 31.199205>,  <35.472542, 38.504116, 31.031384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.369167, 38.641045, 31.199205>,  <35.196877, 38.869259, 31.478910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369167, 38.641045, 31.199205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150850, 0.718405, -0.679073,
		0.889786, 0.397979, 0.223372,
		0.430728, -0.570533, -0.699261,
		35.498386, 38.469883, 30.989428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707642, 39.248150, 31.167654>,  <35.196877, 38.869259, 31.478910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707642, 39.248150, 31.167654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.679882, 38.968323, 30.883179>,  <35.663227, 38.800426, 30.712494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.679882, 38.968323, 30.883179>,  <35.707642, 39.248150, 31.167654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679882, 38.968323, 30.883179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013709, 0.712170, -0.701874,
		0.997495, -0.058457, -0.039831,
		-0.069396, -0.699569, -0.711187,
		35.659061, 38.758453, 30.669823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246510, 39.413303, 30.613228>,  <35.707642, 39.248150, 31.167654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246510, 39.413303, 30.613228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.996044, 39.150097, 30.445923>,  <35.845764, 38.992172, 30.345539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.996044, 39.150097, 30.445923>,  <36.246510, 39.413303, 30.613228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996044, 39.150097, 30.445923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056967, 0.573622, -0.817137,
		0.777612, -0.487830, -0.396663,
		-0.626158, -0.658012, -0.418265,
		35.808197, 38.952694, 30.320444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500786, 39.365715, 29.957735>,  <36.246510, 39.413303, 30.613228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500786, 39.365715, 29.957735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.125954, 39.228382, 29.932421>,  <35.901054, 39.145981, 29.917233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.125954, 39.228382, 29.932421>,  <36.500786, 39.365715, 29.957735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125954, 39.228382, 29.932421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128357, 0.507392, -0.852102,
		0.324666, -0.790363, -0.519536,
		-0.937079, -0.343335, -0.063284,
		35.844830, 39.125381, 29.913435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431644, 39.130791, 29.256561>,  <36.500786, 39.365715, 29.957735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431644, 39.130791, 29.256561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063255, 39.202717, 29.394821>,  <35.842220, 39.245872, 29.477777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063255, 39.202717, 29.394821>,  <36.431644, 39.130791, 29.256561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063255, 39.202717, 29.394821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236152, 0.448001, -0.862280,
		-0.309899, -0.875764, -0.370135,
		-0.920975, 0.179812, 0.345648,
		35.786964, 39.256660, 29.498516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958096, 38.826496, 28.762180>,  <36.431644, 39.130791, 29.256561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958096, 38.826496, 28.762180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.763504, 39.107533, 28.969913>,  <35.646748, 39.276154, 29.094553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.763504, 39.107533, 28.969913>,  <35.958096, 38.826496, 28.762180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763504, 39.107533, 28.969913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292559, 0.429097, -0.854567,
		-0.823253, -0.567666, -0.003200,
		-0.486482, 0.702589, 0.519331,
		35.617561, 39.318310, 29.125713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335506, 38.827808, 28.383785>,  <35.958096, 38.826496, 28.762180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335506, 38.827808, 28.383785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366600, 39.148144, 28.621313>,  <35.385254, 39.340343, 28.763830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.366600, 39.148144, 28.621313>,  <35.335506, 38.827808, 28.383785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366600, 39.148144, 28.621313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194027, 0.596384, -0.778897,
		-0.977912, -0.054671, 0.201742,
		0.077732, 0.800835, 0.593818,
		35.389919, 39.388393, 28.799459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837910, 39.376545, 28.118677>,  <35.335506, 38.827808, 28.383785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837910, 39.376545, 28.118677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.103958, 39.587509, 28.330133>,  <35.263588, 39.714088, 28.457006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.103958, 39.587509, 28.330133>,  <34.837910, 39.376545, 28.118677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103958, 39.587509, 28.330133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089562, 0.759162, -0.644711,
		-0.741348, 0.381463, 0.552168,
		0.665118, 0.527408, 0.528639,
		35.303493, 39.745731, 28.488726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492474, 40.092197, 28.318291>,  <34.837910, 39.376545, 28.118677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492474, 40.092197, 28.318291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.883785, 40.164467, 28.358946>,  <35.118572, 40.207829, 28.383339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.883785, 40.164467, 28.358946>,  <34.492474, 40.092197, 28.318291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883785, 40.164467, 28.358946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107239, 0.860672, -0.497739,
		-0.177404, 0.476028, 0.861351,
		0.978278, 0.180672, 0.101637,
		35.177269, 40.218670, 28.389437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486851, 40.812435, 28.524073>,  <34.492474, 40.092197, 28.318291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486851, 40.812435, 28.524073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850525, 40.708019, 28.394312>,  <35.068729, 40.645370, 28.316456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850525, 40.708019, 28.394312>,  <34.486851, 40.812435, 28.524073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850525, 40.708019, 28.394312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078874, 0.872952, -0.481388,
		0.408846, 0.412086, 0.814267,
		0.909189, -0.261038, -0.324400,
		35.123283, 40.629707, 28.296991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785652, 41.452969, 28.540071>,  <34.486851, 40.812435, 28.524073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785652, 41.452969, 28.540071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050365, 41.264229, 28.307041>,  <35.209194, 41.150986, 28.167223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.050365, 41.264229, 28.307041>,  <34.785652, 41.452969, 28.540071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050365, 41.264229, 28.307041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096875, 0.824395, -0.557663,
		0.743407, 0.312617, 0.591284,
		0.661787, -0.471851, -0.582576,
		35.248901, 41.122673, 28.132269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384663, 41.790924, 28.400949>,  <34.785652, 41.452969, 28.540071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384663, 41.790924, 28.400949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367420, 41.555035, 28.078367>,  <35.357075, 41.413502, 27.884817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.367420, 41.555035, 28.078367>,  <35.384663, 41.790924, 28.400949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367420, 41.555035, 28.078367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033893, 0.807605, -0.588750,
		0.998495, 0.001955, -0.054800,
		-0.043106, -0.589721, -0.806455,
		35.354488, 41.378117, 27.836432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869839, 42.109818, 27.978378>,  <35.384663, 41.790924, 28.400949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869839, 42.109818, 27.978378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.614052, 41.915455, 27.740057>,  <35.460579, 41.798836, 27.597065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.614052, 41.915455, 27.740057>,  <35.869839, 42.109818, 27.978378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614052, 41.915455, 27.740057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044225, 0.796920, -0.602464,
		0.767546, -0.358907, -0.531092,
		-0.639466, -0.485906, -0.595800,
		35.422215, 41.769684, 27.561316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056145, 42.419445, 27.298708>,  <35.869839, 42.109818, 27.978378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056145, 42.419445, 27.298708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.728653, 42.202049, 27.224630>,  <35.532158, 42.071609, 27.180183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.728653, 42.202049, 27.224630>,  <36.056145, 42.419445, 27.298708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728653, 42.202049, 27.224630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318222, 0.697976, -0.641533,
		0.477929, -0.466310, -0.744405,
		-0.818730, -0.543494, -0.185193,
		35.483036, 42.039001, 27.169073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091751, 42.214336, 26.538631>,  <36.056145, 42.419445, 27.298708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091751, 42.214336, 26.538631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.709370, 42.213932, 26.656036>,  <35.479942, 42.213688, 26.726479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.709370, 42.213932, 26.656036>,  <36.091751, 42.214336, 26.538631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709370, 42.213932, 26.656036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215140, 0.682669, -0.698339,
		-0.199663, -0.730727, -0.652819,
		-0.955954, -0.001015, 0.293513,
		35.422585, 42.213627, 26.744091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432713, 41.598854, 26.252592>,  <36.091751, 42.214336, 26.538631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432713, 41.598854, 26.252592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.761795, 41.552338, 26.030014>,  <36.959244, 41.524429, 25.896467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.761795, 41.552338, 26.030014>,  <36.432713, 41.598854, 26.252592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761795, 41.552338, 26.030014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296996, -0.746709, 0.595163,
		-0.484716, -0.654906, -0.579783,
		0.822706, -0.116292, -0.556446,
		37.008606, 41.517448, 25.863081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582176, 40.868290, 26.169228>,  <36.432713, 41.598854, 26.252592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582176, 40.868290, 26.169228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.916176, 41.077633, 26.101250>,  <37.116573, 41.203239, 26.060463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.916176, 41.077633, 26.101250>,  <36.582176, 40.868290, 26.169228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916176, 41.077633, 26.101250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501129, -0.595706, 0.627698,
		0.227272, -0.609289, -0.759680,
		0.834995, 0.523356, -0.169946,
		37.166676, 41.234638, 26.050266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147884, 40.409706, 25.943869>,  <36.582176, 40.868290, 26.169228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147884, 40.409706, 25.943869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.322346, 40.740360, 26.086102>,  <37.427021, 40.938755, 26.171442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.322346, 40.740360, 26.086102>,  <37.147884, 40.409706, 25.943869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322346, 40.740360, 26.086102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537931, -0.556281, 0.633389,
		0.721387, -0.084977, -0.687299,
		0.436155, 0.826638, 0.355583,
		37.453194, 40.988350, 26.192776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755814, 40.171513, 25.998878>,  <37.147884, 40.409706, 25.943869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755814, 40.171513, 25.998878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.763805, 40.498657, 26.228907>,  <37.768600, 40.694942, 26.366922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.763805, 40.498657, 26.228907>,  <37.755814, 40.171513, 25.998878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763805, 40.498657, 26.228907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566082, -0.483359, 0.667769,
		0.824107, 0.312197, -0.472632,
		0.019975, 0.817861, 0.575068,
		37.769798, 40.744015, 26.401426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483837, 40.410942, 26.188864>,  <37.755814, 40.171513, 25.998878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483837, 40.410942, 26.188864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.247162, 40.523834, 26.490923>,  <38.105156, 40.591568, 26.672159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.247162, 40.523834, 26.490923>,  <38.483837, 40.410942, 26.188864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247162, 40.523834, 26.490923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512305, -0.591615, 0.622523,
		0.622453, 0.755207, 0.205464,
		-0.591689, 0.282231, 0.755149,
		38.069656, 40.608505, 26.717468>
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
